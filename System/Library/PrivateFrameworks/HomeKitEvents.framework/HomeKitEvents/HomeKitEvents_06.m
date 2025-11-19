uint64_t sub_2541B1AC4(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2D0, &qword_254258C40);
  v10 = sub_25414081C(&qword_27F5BA2D8, &qword_27F5BA2D0, &qword_254258C40);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_2541BE964(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_2541B1BA0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_2541BE9F8(result);
    }

    else
    {
      v2 = sub_25424D2B8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_25424D278();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25424D468();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_2541B1C40()
{
  result = qword_27F5BA228;
  if (!qword_27F5BA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA228);
  }

  return result;
}

unint64_t sub_2541B1C98()
{
  result = qword_27F5BA230;
  if (!qword_27F5BA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA230);
  }

  return result;
}

unint64_t sub_2541B1D34()
{
  result = qword_27F5BA248;
  if (!qword_27F5BA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA248);
  }

  return result;
}

uint64_t sub_2541B1D88(uint64_t a1)
{
  result = sub_2541B1F1C(&qword_27F5BA250, type metadata accessor for FakeEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541B1DE0(void *a1)
{
  a1[1] = sub_2541B1F1C(&qword_27F5BA258, type metadata accessor for FakeEvent);
  a1[2] = sub_2541B1F1C(&qword_27F5BA260, type metadata accessor for FakeEvent);
  result = sub_2541B1F1C(&qword_27F5BA268, type metadata accessor for FakeEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541B1F1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2541B1F64(void *a1)
{
  a1[1] = sub_25414AD7C();
  a1[2] = sub_2541B1C40();
  result = sub_2541B1F9C();
  a1[3] = result;
  return result;
}

unint64_t sub_2541B1F9C()
{
  result = qword_27F5BA280;
  if (!qword_27F5BA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA280);
  }

  return result;
}

unint64_t sub_2541B1FF0(uint64_t a1)
{
  result = sub_2541B2018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2541B2018()
{
  result = qword_27F5BA288;
  if (!qword_27F5BA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA288);
  }

  return result;
}

unint64_t sub_2541B206C(uint64_t a1)
{
  result = sub_2541B1D34();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541B20BC()
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541B2140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2A8, &qword_254258C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2541B21A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2541B145C(sub_2541B2210, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

unint64_t sub_2541B2230()
{
  result = qword_27F5BA2B8;
  if (!qword_27F5BA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA2B8);
  }

  return result;
}

uint64_t sub_2541B2284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541B22EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static HMVCommands.createEncryptionKey(homeIdentifier:keyIdentifier:skipZoneCreation:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2541B2370, 0, 0);
}

uint64_t sub_2541B2370()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_2541B244C;

  return sub_25412FDA0();
}

uint64_t sub_2541B244C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_25417EB88;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_25412FA2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2541B2568(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_25424D8E8();
  v9 = sub_25424D8E8();
  v11[4] = sub_2541B2DA0;
  v11[5] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2541ED26C;
  v11[3] = &block_descriptor_17;
  v10 = _Block_copy(v11);

  [a1 hmvutilCreateEncryptionKeyWithHomeIdentifier:v8 keyIdentifier:v9 skipZoneCreation:a5 & 1 reply:v10];
  _Block_release(v10);
}

uint64_t sub_2541B2680(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_254132F4C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254258CA8;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_2541B2DB4;
    v16[6] = 0;

    v12 = &unk_254258CA0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t static HMVCommands.deleteEncryptionKey(homeIdentifier:keyIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2541B2898, 0, 0);
}

uint64_t sub_2541B2898()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2541B2968;

  return sub_25412FDA0(sub_25412FDA0, sub_2541B2B80, v1);
}

uint64_t sub_2541B2968()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2541B2DB8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2541B2DAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2541B2A84(void *a1, uint64_t a2)
{
  v4 = sub_25424D8E8();
  v5 = sub_25424D8E8();
  v7[4] = sub_2541B2D80;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2541ED26C;
  v7[3] = &block_descriptor_4;
  v6 = _Block_copy(v7);

  [a1 hmvutilDeleteEncryptionKeyWithHomeIdentifier:v4 keyIdentifier:v5 reply:v6];
  _Block_release(v6);
}

void sub_2541B2B80(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_2541B2A84(a1, a2);
}

uint64_t sub_2541B2B88(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254258C98;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t EnergyKit.SomeEnergyKitEvent.anyEnergyKitEvent.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541B3030(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
      v9 = sub_2541B5374(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
      v10 = type metadata accessor for EnergyKit.LoadSessionEvent;
    }

    else
    {
      SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
      v9 = sub_2541B5374(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
      v10 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
    }
  }

  else
  {
    SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
    v9 = sub_2541B5374(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
    v10 = type metadata accessor for EnergyKit.LoadEvent;
  }

  v11 = v10;
  v20 = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_2541B52C4(v7, boxed_opaque_existential_1, v11);
  sub_25412DC4C(&v18, v21);
  v13 = v22;
  v14 = v23;
  v15 = __swift_project_boxed_opaque_existential_1(v21, v22);
  a1[3] = v13;
  a1[4] = *(v14 + 8);
  v16 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t type metadata accessor for EnergyKit.SomeEnergyKitEvent()
{
  result = qword_27F5BA380;
  if (!qword_27F5BA380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2541B3030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541B3098()
{
  v1 = 0x7373655364616F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6C69614464616F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684107116;
  }
}

uint64_t sub_2541B3100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2541B58A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2541B3128(uint64_t a1)
{
  v2 = sub_2541B5174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541B3164(uint64_t a1)
{
  v2 = sub_2541B5174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541B31A0(uint64_t a1)
{
  v2 = sub_2541B5270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541B31DC(uint64_t a1)
{
  v2 = sub_2541B5270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541B3218(uint64_t a1)
{
  v2 = sub_2541B51C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541B3254(uint64_t a1)
{
  v2 = sub_2541B51C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541B3290(uint64_t a1)
{
  v2 = sub_2541B521C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541B32CC(uint64_t a1)
{
  v2 = sub_2541B521C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.SomeEnergyKitEvent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2E8, &qword_254258CB0);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v2);
  v49 = &Event - v4;
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  v5 = *(*(DailyDigestEvent - 8) + 64);
  MEMORY[0x28223BE20](DailyDigestEvent);
  v48 = &Event - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2F0, &qword_254258CB8);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &Event - v9;
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  v10 = *(*(SessionEvent - 8) + 64);
  MEMORY[0x28223BE20](SessionEvent);
  v43 = &Event - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2F8, &qword_254258CC0);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &Event - v14;
  Event = type metadata accessor for EnergyKit.LoadEvent(0);
  v16 = *(*(Event - 8) + 64);
  MEMORY[0x28223BE20](Event);
  v18 = &Event - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &Event - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA300, &qword_254258CC8);
  v23 = *(v53 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v53);
  v26 = &Event - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541B5174();
  sub_25424EC78();
  sub_2541B3030(v52, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = (v23 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = type metadata accessor for EnergyKit.LoadSessionEvent;
      v31 = v43;
      sub_2541B52C4(v22, v43, type metadata accessor for EnergyKit.LoadSessionEvent);
      v55 = 1;
      sub_2541B521C();
      v32 = v44;
      v33 = v53;
      sub_25424E9A8();
      sub_2541B5374(&qword_27F5BA328, type metadata accessor for EnergyKit.LoadSessionEvent);
      v34 = v46;
      sub_25424EA18();
      v35 = v45;
    }

    else
    {
      v30 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
      v31 = v48;
      sub_2541B52C4(v22, v48, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
      v56 = 2;
      sub_2541B51C8();
      v32 = v49;
      v33 = v53;
      sub_25424E9A8();
      sub_2541B5374(&qword_27F5BA318, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
      v34 = v51;
      sub_25424EA18();
      v35 = v50;
    }

    (*(v35 + 8))(v32, v34);
    sub_2541B5A30(v31, v30);
    return (*v29)(v26, v33);
  }

  else
  {
    sub_2541B52C4(v22, v18, type metadata accessor for EnergyKit.LoadEvent);
    v54 = 0;
    sub_2541B5270();
    v36 = v53;
    sub_25424E9A8();
    sub_2541B5374(&qword_27F5B8B50, type metadata accessor for EnergyKit.LoadEvent);
    v37 = v41;
    sub_25424EA18();
    (*(v40 + 8))(v15, v37);
    sub_2541B5A30(v18, type metadata accessor for EnergyKit.LoadEvent);
    return (*v29)(v26, v36);
  }
}

uint64_t EnergyKit.SomeEnergyKitEvent.hash(into:)(uint64_t a1)
{
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  v4 = *(*(DailyDigestEvent - 8) + 64);
  MEMORY[0x28223BE20](DailyDigestEvent - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  v8 = *(*(SessionEvent - 8) + 64);
  MEMORY[0x28223BE20](SessionEvent - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Event = type metadata accessor for EnergyKit.LoadEvent(0);
  v12 = *(*(Event - 8) + 64);
  MEMORY[0x28223BE20](Event);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541B3030(v1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = type metadata accessor for EnergyKit.LoadSessionEvent;
      sub_2541B52C4(v18, v10, type metadata accessor for EnergyKit.LoadSessionEvent);
      MEMORY[0x259C06AA0](1);
      EnergyKit.LoadSessionEvent.hash(into:)(a1);
      v21 = v10;
    }

    else
    {
      v20 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
      sub_2541B52C4(v18, v6, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
      MEMORY[0x259C06AA0](2);
      EnergyKit.LoadDailyDigestEvent.hash(into:)(a1);
      v21 = v6;
    }

    v33 = v20;
  }

  else
  {
    sub_2541B52C4(v18, v14, type metadata accessor for EnergyKit.LoadEvent);
    MEMORY[0x259C06AA0](0);
    sub_25424D8B8();
    sub_2541B5374(&qword_27F5B89C0, MEMORY[0x277CC9578]);
    sub_25424DC28();
    v22 = type metadata accessor for EventBase(0);
    v23 = *(v22 + 20);
    sub_25424D948();
    sub_2541B5374(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
    sub_25424DC28();
    MEMORY[0x259C06AA0](qword_254259280[v14[*(v22 + 24)]]);
    v24 = type metadata accessor for EnergyKit.EventBase();
    v25 = &v14[v24[5]];
    sub_25424DC28();
    v26 = &v14[v24[6]];
    v27 = *v26;
    v28 = *(v26 + 1);
    sub_25424DD88();
    v29 = &v14[v24[7]];
    v30 = *v29;
    v31 = *(v29 + 1);
    sub_25424DD88();
    v32 = &v14[*(Event + 20)];
    EnergyKit.LoadEvent.State.hash(into:)();
    v21 = v14;
    v33 = type metadata accessor for EnergyKit.LoadEvent;
  }

  return sub_2541B5A30(v21, v33);
}

uint64_t EnergyKit.SomeEnergyKitEvent.hashValue.getter()
{
  sub_25424EBD8();
  EnergyKit.SomeEnergyKitEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t EnergyKit.SomeEnergyKitEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA338, &qword_254258CD0);
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA340, &qword_254258CD8);
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v73 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA348, &qword_254258CE0);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v72 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA350, &unk_254258CE8);
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = *(v76 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  v18 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v61 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v61 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v61 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_2541B5174();
  v33 = v78;
  sub_25424EC68();
  if (!v33)
  {
    v62 = v25;
    v63 = v28;
    v64 = v22;
    v35 = v72;
    v34 = v73;
    v78 = 0;
    v65 = v18;
    v37 = v74;
    v36 = v75;
    v38 = v77;
    v39 = sub_25424E988();
    v40 = (2 * *(v39 + 16)) | 1;
    v80 = v39;
    v81 = v39 + 32;
    v82 = 0;
    v83 = v40;
    v41 = sub_254140884();
    if (v41 == 3 || v82 != v83 >> 1)
    {
      v45 = sub_25424E6F8();
      swift_allocError();
      v47 = v46;
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
      *v47 = v65;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
      swift_willThrow();
    }

    else
    {
      if (v41)
      {
        if (v41 == 1)
        {
          v84 = 1;
          sub_2541B521C();
          v42 = v78;
          sub_25424E8F8();
          v43 = v36;
          v44 = v76;
          if (v42)
          {
            goto LABEL_9;
          }

          v78 = v30;
          type metadata accessor for EnergyKit.LoadSessionEvent(0);
          sub_2541B5374(&qword_27F5BA360, type metadata accessor for EnergyKit.LoadSessionEvent);
          v58 = v62;
          v59 = v68;
          sub_25424E978();
          (*(v69 + 8))(v34, v59);
          (*(v44 + 8))(v17, v77);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v58;
        }

        else
        {
          v84 = 2;
          sub_2541B51C8();
          v53 = v37;
          v54 = v78;
          sub_25424E8F8();
          v55 = v76;
          if (v54)
          {
            goto LABEL_9;
          }

          v43 = v36;
          v78 = v30;
          type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
          sub_2541B5374(&qword_27F5BA358, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
          v56 = v64;
          v57 = v70;
          sub_25424E978();
          (*(v71 + 8))(v53, v57);
          (*(v55 + 8))(v17, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v56;
        }

LABEL_17:
        v60 = v78;
        sub_2541B52C4(v51, v78, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_2541B52C4(v60, v43, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        return __swift_destroy_boxed_opaque_existential_1(v79);
      }

      v84 = 0;
      sub_2541B5270();
      v50 = v78;
      sub_25424E8F8();
      if (!v50)
      {
        v78 = v30;
        type metadata accessor for EnergyKit.LoadEvent(0);
        sub_2541B5374(&qword_27F5B8B48, type metadata accessor for EnergyKit.LoadEvent);
        v51 = v63;
        v52 = v67;
        sub_25424E978();
        (*(v66 + 8))(v35, v52);
        (*(v76 + 8))(v17, v38);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v43 = v36;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v76 + 8))(v17, v38);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_2541B4610()
{
  sub_25424EBD8();
  EnergyKit.SomeEnergyKitEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541B4654()
{
  sub_25424EBD8();
  EnergyKit.SomeEnergyKitEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t EnergyKit.SomeEnergyKitEvent.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  v4 = *(*(DailyDigestEvent - 8) + 64);
  MEMORY[0x28223BE20](DailyDigestEvent);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  v8 = *(*(SessionEvent - 8) + 64);
  MEMORY[0x28223BE20](SessionEvent);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Event = type metadata accessor for EnergyKit.LoadEvent(0);
  v12 = *(*(Event - 8) + 64);
  MEMORY[0x28223BE20](Event);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA368, &qword_254258CF8);
  if (swift_dynamicCast())
  {
    sub_2541B52C4(v14, v18, type metadata accessor for EnergyKit.LoadEvent);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_2541B52C4(v18, v22, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (swift_dynamicCast())
  {
    sub_2541B52C4(v10, v18, type metadata accessor for EnergyKit.LoadSessionEvent);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_2541B52C4(v6, v18, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
    goto LABEL_7;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_25424E688();
  MEMORY[0x259C05CA0](0xD000000000000019, 0x8000000254250CF0);
  v23 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA370, &qword_254258D00);
  v20 = sub_25424DD08();
  MEMORY[0x259C05CA0](v20);

  MEMORY[0x259C05CA0](8250, 0xE200000000000000);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EA98();
  result = sub_25424E858();
  __break(1u);
  return result;
}

uint64_t _s13HomeKitEvents06EnergyB0O04SomedB5EventO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  v4 = *(*(DailyDigestEvent - 8) + 64);
  MEMORY[0x28223BE20](DailyDigestEvent);
  v80 = &SessionEvent - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  v6 = *(*(SessionEvent - 8) + 64);
  MEMORY[0x28223BE20](SessionEvent);
  v79 = &SessionEvent - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Event = type metadata accessor for EnergyKit.LoadEvent(0);
  v9 = *(*(Event - 8) + 64);
  MEMORY[0x28223BE20](Event);
  v11 = &SessionEvent - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &SessionEvent - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &SessionEvent - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &SessionEvent - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA3F0, &unk_254259270);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &SessionEvent - v25;
  v27 = *(v24 + 56);
  sub_2541B3030(a1, &SessionEvent - v25);
  sub_2541B3030(a2, &v26[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2541B3030(v26, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v79;
        sub_2541B52C4(&v26[v27], v79, type metadata accessor for EnergyKit.LoadSessionEvent);
        if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
        {
          v30 = type metadata accessor for EventBase(0);
          v31 = *(v30 + 20);
          if ((sub_25424D8F8() & 1) != 0 && qword_254259280[v19[*(v30 + 24)]] == qword_254259280[*(v29 + *(v30 + 24))])
          {
            v32 = type metadata accessor for EnergyKit.EventBase();
            v33 = v32[5];
            if (sub_25424D8F8())
            {
              if (v34 = v32[6], v35 = *&v19[v34], v36 = *&v19[v34 + 8], v37 = (v29 + v34), v35 == *v37) && v36 == v37[1] || (sub_25424EAB8())
              {
                if (v38 = v32[7], v39 = *&v19[v38], v40 = *&v19[v38 + 8], v41 = (v29 + v38), v39 == *v41) && v40 == v41[1] || (sub_25424EAB8())
                {
                  if (sub_254204A80(&v19[*(SessionEvent + 20)], v29 + *(SessionEvent + 20)))
                  {
                    v42 = type metadata accessor for EnergyKit.LoadSessionEvent;
                    sub_2541B5A30(v29, type metadata accessor for EnergyKit.LoadSessionEvent);
                    v43 = v19;
LABEL_48:
                    v60 = v42;
                    goto LABEL_49;
                  }
                }
              }
            }
          }
        }

        v61 = type metadata accessor for EnergyKit.LoadSessionEvent;
        sub_2541B5A30(v29, type metadata accessor for EnergyKit.LoadSessionEvent);
        v62 = v19;
LABEL_51:
        v63 = v61;
LABEL_52:
        sub_2541B5A30(v62, v63);
        sub_2541B5A30(v26, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        return 0;
      }

      v44 = type metadata accessor for EnergyKit.LoadSessionEvent;
      v45 = v19;
    }

    else
    {
      sub_2541B3030(v26, v16);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v46 = &v26[v27];
        v47 = v80;
        sub_2541B52C4(v46, v80, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
        if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
        {
          v48 = type metadata accessor for EventBase(0);
          v49 = *(v48 + 20);
          if ((sub_25424D8F8() & 1) != 0 && qword_254259280[v16[*(v48 + 24)]] == qword_254259280[*(v47 + *(v48 + 24))])
          {
            v50 = type metadata accessor for EnergyKit.EventBase();
            v51 = v50[5];
            if (sub_25424D8F8())
            {
              if (v52 = v50[6], v53 = *&v16[v52], v54 = *&v16[v52 + 8], v55 = (v47 + v52), v53 == *v55) && v54 == v55[1] || (sub_25424EAB8())
              {
                if (v56 = v50[7], v57 = *&v16[v56], v58 = *&v16[v56 + 8], v59 = (v47 + v56), v57 == *v59) && v58 == v59[1] || (sub_25424EAB8())
                {
                  if (sub_254229D50(&v16[*(DailyDigestEvent + 20)], v47 + *(DailyDigestEvent + 20)))
                  {
                    sub_2541B5A30(v47, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
                    v43 = v16;
                    v60 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
LABEL_49:
                    sub_2541B5A30(v43, v60);
                    sub_2541B5A30(v26, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
                    return 1;
                  }
                }
              }
            }
          }
        }

        sub_2541B5A30(v47, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
        v62 = v16;
        v63 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
        goto LABEL_52;
      }

      v44 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
      v45 = v16;
    }
  }

  else
  {
    sub_2541B3030(v26, v21);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2541B52C4(&v26[v27], v11, type metadata accessor for EnergyKit.LoadEvent);
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        v64 = type metadata accessor for EventBase(0);
        v65 = *(v64 + 20);
        if ((sub_25424D8F8() & 1) != 0 && qword_254259280[v21[*(v64 + 24)]] == qword_254259280[v11[*(v64 + 24)]])
        {
          v66 = type metadata accessor for EnergyKit.EventBase();
          v67 = v66[5];
          if (sub_25424D8F8())
          {
            if (v68 = v66[6], v69 = *&v21[v68], v70 = *&v21[v68 + 8], v71 = &v11[v68], v69 == *v71) && v70 == *(v71 + 1) || (sub_25424EAB8())
            {
              if (v72 = v66[7], v73 = *&v21[v72], v74 = *&v21[v72 + 8], v75 = &v11[v72], v73 == *v75) && v74 == *(v75 + 1) || (sub_25424EAB8())
              {
                if (_s13HomeKitEvents06EnergyB0O9LoadEventV5StateV2eeoiySbAG_AGtFZ_0(&v21[*(Event + 20)], &v11[*(Event + 20)]))
                {
                  v42 = type metadata accessor for EnergyKit.LoadEvent;
                  sub_2541B5A30(v11, type metadata accessor for EnergyKit.LoadEvent);
                  v43 = v21;
                  goto LABEL_48;
                }
              }
            }
          }
        }
      }

      v61 = type metadata accessor for EnergyKit.LoadEvent;
      sub_2541B5A30(v11, type metadata accessor for EnergyKit.LoadEvent);
      v62 = v21;
      goto LABEL_51;
    }

    v44 = type metadata accessor for EnergyKit.LoadEvent;
    v45 = v21;
  }

  sub_2541B5A30(v45, v44);
  sub_2541B59C8(v26);
  return 0;
}

unint64_t sub_2541B5174()
{
  result = qword_27F5BA308;
  if (!qword_27F5BA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA308);
  }

  return result;
}

unint64_t sub_2541B51C8()
{
  result = qword_27F5BA310;
  if (!qword_27F5BA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA310);
  }

  return result;
}

unint64_t sub_2541B521C()
{
  result = qword_27F5BA320;
  if (!qword_27F5BA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA320);
  }

  return result;
}

unint64_t sub_2541B5270()
{
  result = qword_27F5BA330;
  if (!qword_27F5BA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA330);
  }

  return result;
}

uint64_t sub_2541B52C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541B5374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2541B53BC()
{
  result = type metadata accessor for EnergyKit.LoadEvent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EnergyKit.LoadSessionEvent(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for EnergyKit.LoadDailyDigestEvent(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2541B5488()
{
  result = qword_27F5BA390;
  if (!qword_27F5BA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA390);
  }

  return result;
}

unint64_t sub_2541B54E0()
{
  result = qword_27F5BA398;
  if (!qword_27F5BA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA398);
  }

  return result;
}

unint64_t sub_2541B5538()
{
  result = qword_27F5BA3A0;
  if (!qword_27F5BA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3A0);
  }

  return result;
}

unint64_t sub_2541B5590()
{
  result = qword_27F5BA3A8;
  if (!qword_27F5BA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3A8);
  }

  return result;
}

unint64_t sub_2541B55E8()
{
  result = qword_27F5BA3B0;
  if (!qword_27F5BA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3B0);
  }

  return result;
}

unint64_t sub_2541B5640()
{
  result = qword_27F5BA3B8;
  if (!qword_27F5BA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3B8);
  }

  return result;
}

unint64_t sub_2541B5698()
{
  result = qword_27F5BA3C0;
  if (!qword_27F5BA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3C0);
  }

  return result;
}

unint64_t sub_2541B56F0()
{
  result = qword_27F5BA3C8;
  if (!qword_27F5BA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3C8);
  }

  return result;
}

unint64_t sub_2541B5748()
{
  result = qword_27F5BA3D0;
  if (!qword_27F5BA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3D0);
  }

  return result;
}

unint64_t sub_2541B57A0()
{
  result = qword_27F5BA3D8;
  if (!qword_27F5BA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3D8);
  }

  return result;
}

unint64_t sub_2541B57F8()
{
  result = qword_27F5BA3E0;
  if (!qword_27F5BA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3E0);
  }

  return result;
}

unint64_t sub_2541B5850()
{
  result = qword_27F5BA3E8;
  if (!qword_27F5BA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3E8);
  }

  return result;
}

uint64_t sub_2541B58A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684107116 && a2 == 0xE400000000000000;
  if (v3 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373655364616F6CLL && a2 == 0xEB000000006E6F69 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69614464616F6CLL && a2 == 0xEF74736567694479)
  {

    return 2;
  }

  else
  {
    v6 = sub_25424EAB8();

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

uint64_t sub_2541B59C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA3F0, &unk_254259270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2541B5A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2541B5A90()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t DigestRecord.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DigestRecord.tags.getter()
{
  v1 = *(v0 + *(type metadata accessor for DigestRecord(0) + 20));
}

uint64_t DigestRecord.home.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DigestRecord(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DigestRecord.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DigestRecord(0) + 28);
  v4 = *(type metadata accessor for DigestRecord.Metadata(0) + 20);
  v5 = sub_25424D8B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t DigestRecord.end.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DigestRecord(0) + 28);
  v4 = *(type metadata accessor for DigestRecord.Metadata(0) + 24);
  v5 = sub_25424D8B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t DigestRecord.categories.getter()
{
  v1 = v0 + *(type metadata accessor for DigestRecord(0) + 28);
  v2 = *(v1 + *(type metadata accessor for DigestRecord.Metadata(0) + 28));
}

uint64_t DigestRecord.events.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for DigestRecord(0) + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92D0, &qword_2542546F0);
  a1[3] = v3;
  a1[4] = sub_25414081C(&qword_27F5B92D8, &qword_27F5B92D0, &qword_2542546F0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_25424D3D8();
  *(boxed_opaque_existential_1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92E0, &qword_2542546F8) + 36)) = 0x4000;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B92E8, &unk_254254700);
  *(boxed_opaque_existential_1 + *(result + 36)) = 1;
  *(boxed_opaque_existential_1 + *(v3 + 36)) = 0;
  return result;
}

uint64_t DigestRecord.Encoding.hashValue.getter()
{
  sub_25424EBD8();
  MEMORY[0x259C06AA0](0);
  return sub_25424EC28();
}

uint64_t DigestRecord.Metadata.init(home:start:end:categories:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_25424D948();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for DigestRecord.Metadata(0);
  v14 = v13[5];
  v15 = sub_25424D8B8();
  v16 = *(*(v15 - 8) + 32);
  v16(a6 + v14, a2, v15);
  result = (v16)(a6 + v13[6], a3, v15);
  *(a6 + v13[7]) = a4;
  *(a6 + v13[8]) = a5;
  return result;
}

uint64_t static DigestRecord.recordIdentifier(homeIdentifier:date:categories:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2542542D0;
  if (qword_27F5B8408 != -1)
  {
    swift_once();
  }

  v5 = sub_25424D948();
  __swift_project_value_buffer(v5, qword_27F5BA3F8);
  v17[0] = sub_25424D928();
  v17[1] = v6;
  sub_25424D928();
  *(inited + 32) = sub_2541BAC60(v17, 16);
  *(inited + 40) = v7;
  sub_25424D578();
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v8 >= 9.22337204e18)
  {
    goto LABEL_12;
  }

  v16 = bswap64(v8 / 604800);
  sub_25419CB50(&v16, v17, v17);
  *(inited + 48) = *v17;
  if (a1 && *(a1 + 16))
  {

    v16 = bswap64(sub_2541BAA5C(v9));
    sub_25419CB50(&v16, v17, v17);
    v10 = *v17;
    inited = sub_2541B09E0(1, 3, 1, inited);
    *(inited + 16) = 3;
    *(inited + 64) = v10;
  }

  v17[0] = sub_25424D928();
  v17[1] = v11;
  sub_25424D928();
  v12 = sub_2541BAC60(v17, 16);
  result = sub_25420B638(v12, v13, inited, a2);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static DigestRecord.encode<A>(events:to:encoding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a1;
  v5[6] = a2;
  v7 = sub_25424E7E8();
  v5[9] = v7;
  v5[10] = swift_getWitnessTable();
  DigestEventSequence = type metadata accessor for AsyncCreateDigestEventSequence();
  v5[11] = DigestEventSequence;
  v5[12] = swift_getWitnessTable();
  v9 = type metadata accessor for AsyncCompressionStream.AsyncIterator();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();
  v12 = type metadata accessor for AsyncCompressionStream();
  v5[16] = v12;
  v13 = *(v12 - 8);
  v5[17] = v13;
  v14 = *(v13 + 64) + 15;
  v5[18] = swift_task_alloc();
  v15 = sub_25424D418();
  v5[19] = v15;
  v16 = *(v15 - 8);
  v5[20] = v16;
  v17 = *(v16 + 64) + 15;
  v5[21] = swift_task_alloc();
  v18 = *(DigestEventSequence - 8);
  v5[22] = v18;
  v19 = *(v18 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v20 = *(a4 - 8);
  v5[25] = v20;
  v21 = *(v20 + 64) + 15;
  v5[26] = swift_task_alloc();
  v22 = *(v7 - 8);
  v5[27] = v22;
  v23 = *(v22 + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541B6614, 0, 0);
}

uint64_t sub_2541B6614()
{
  v1 = v0[6];
  v2 = sub_25424D3B8();
  if (v2)
  {
    v9 = v0[28];
    v8 = v0[29];
    v10 = v0[27];
    v11 = v0[22];
    v12 = v0[20];
    v25 = v0[24];
    v26 = v0[21];
    v29 = v0[23];
    v30 = v0[18];
    v32 = v0[15];
    v33 = v0[16];
    v31 = v0[12];
    v27 = v0[19];
    v28 = v0[11];
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    v24 = v0[6];
    (*(v0[25] + 16))(v0[26], v0[5], v0[7]);
    sub_25424E218();
    (*(v10 + 16))(v9, v8, v14);
    sub_2541D2914(v9, v14, v25);
    (*(v12 + 16))(v26, v24, v27);
    v16 = type metadata accessor for AsyncFileOutputStream(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v0[30] = AsyncFileOutputStream.init(url:)(v26);
    (*(v11 + 16))(v29, v25, v28);
    sub_2541ED664(v29, 0x8000, v28, v30);
    sub_2541ED6F8(v33, v32);
    v19 = v0[13];
    v20 = *(MEMORY[0x277D856F8] + 4);
    v21 = swift_task_alloc();
    v0[31] = v21;
    WitnessTable = swift_getWitnessTable();
    *v21 = v0;
    v21[1] = sub_2541B6858;
    v22 = v0[15];
    v5 = v0[13];
    v2 = (v0 + 2);
    v7 = v0 + 4;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200320](v2, v3, v4, v5, WitnessTable, v7);
}

uint64_t sub_2541B6858()
{
  v2 = *(*v1 + 248);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2541B72D4;
  }

  else
  {
    v3 = sub_2541B6968;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541B6968()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[32] = v1;
  v0[33] = v2;
  v3 = v0[30];
  if (v2 >> 60 == 15)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
    sub_25424E158();
    v4 = *(v3 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_task);
    v5 = *(MEMORY[0x277D857E0] + 4);
    v6 = swift_task_alloc();
    v0[37] = v6;
    *v6 = v0;
    v6[1] = sub_2541B6E58;

    return MEMORY[0x282200460]();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[34] = v7;
    v7[2] = v3;
    v7[3] = v1;
    v7[4] = v2;
    v8 = *(MEMORY[0x277D85A40] + 4);
    v9 = swift_task_alloc();
    v0[35] = v9;
    *v9 = v0;
    v9[1] = sub_2541B6B40;
    v10 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v9, 0, 0, 0x7973416574697277, 0xEE00293A5F28636ELL, sub_2541BAD10, v7, v10);
  }
}

uint64_t sub_2541B6B40()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_2541B6D34;
  }

  else
  {
    v5 = *(v2 + 272);

    v4 = sub_2541B6C5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2541B6C5C()
{
  sub_254134CF0(v0[32], v0[33]);
  v1 = v0[13];
  v2 = *(MEMORY[0x277D856F8] + 4);
  v3 = swift_task_alloc();
  v0[31] = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v0;
  v3[1] = sub_2541B6858;
  v5 = v0[15];
  v6 = v0[13];

  return MEMORY[0x282200320](v0 + 2, 0, 0, v6, WitnessTable, v0 + 4);
}

uint64_t sub_2541B6D34()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  sub_254134CF0(v3, v2);
  (*(v5 + 8))(v4, v6);
  v0[38] = v0[36];
  v7 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v8 = *(v7 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_task);
  v9 = *(MEMORY[0x277D857E0] + 4);
  v10 = swift_task_alloc();
  v0[39] = v10;
  *v10 = v0;
  v10[1] = sub_2541B708C;

  return MEMORY[0x282200460]();
}

uint64_t sub_2541B6E58()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2541B6F54, 0, 0);
}

uint64_t sub_2541B6F54()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v13 = v0[28];
  v14 = v0[26];
  v4 = v0[24];
  v5 = v0[22];
  v15 = v0[23];
  v16 = v0[21];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  v17 = v0[15];
  v9 = v0[11];
  v10 = v0[9];

  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v4, v9);
  (*(v3 + 8))(v2, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2541B708C()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2541B7188, 0, 0);
}

uint64_t sub_2541B7188()
{
  v1 = v0[38];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v15 = v0[28];
  v16 = v0[26];
  v5 = v0[22];
  v17 = v0[23];
  v18 = v0[21];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  v19 = v0[15];
  v9 = v0[11];
  v13 = v0[9];
  v14 = v0[24];
  swift_willThrow();

  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v14, v9);
  (*(v4 + 8))(v3, v13);

  v10 = v0[1];
  v11 = v0[38];

  return v10();
}

uint64_t sub_2541B72D4()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v0[38] = v0[4];
  v1 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v2 = *(v1 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_task);
  v3 = *(MEMORY[0x277D857E0] + 4);
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_2541B708C;

  return MEMORY[0x282200460]();
}

uint64_t sub_2541B73C8(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for EventRecord.DecodedEvent(0);
  v2[8] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541B745C, 0, 0);
}

uint64_t sub_2541B745C()
{
  v1 = v0[9];
  v2 = v0[6];
  sub_2541BB7B4(v0[7], v1, type metadata accessor for SomeEvent);
  swift_storeEnumTagMultiPayload();
  static EventRecord.encodeEvent(_:)(v1, v2);
  sub_2541BB81C(v0[9], type metadata accessor for EventRecord.DecodedEvent);

  v3 = v0[1];

  return v3();
}

uint64_t DigestRecord.init(identifier:fileURL:metadata:encoding:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = sub_25424D3B8();
  if (result)
  {
    v11 = sub_25424D948();
    (*(*(v11 - 8) + 32))(a5, a1, v11);
    v12 = type metadata accessor for DigestRecord(0);
    *(a5 + v12[5]) = a4;
    sub_2541BAD1C(a3, a5 + v12[7]);
    v13 = v12[8];
    v14 = sub_25424D418();
    v15 = *(*(v14 - 8) + 32);

    return v15(a5 + v13, a2, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

CKRecord __swiftcall DigestRecord.toCKRecord(zoneID:)(CKRecordZoneID zoneID)
{
  v2 = v1;
  sub_254148D7C(0, &qword_27F5BA418, 0x277CBC5D0);
  sub_25424D8D8();
  v4 = zoneID.super.isa;
  v5 = sub_25424E3C8();
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  v22 = v5;
  v6 = sub_25424E548();
  v7 = sub_25424D8B8();
  v24 = v7;
  v25 = MEMORY[0x277CBBBE8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v9 = type metadata accessor for DigestRecord(0);
  v10 = v2 + v9[7];
  v11 = type metadata accessor for DigestRecord.Metadata(0);
  v12 = *(*(v7 - 8) + 16);
  v12(boxed_opaque_existential_1, v10 + *(v11 + 20), v7);
  sub_25424E528();
  v24 = v7;
  v25 = MEMORY[0x277CBBBE8];
  v13 = __swift_allocate_boxed_opaque_existential_1(v23);
  v12(v13, v10 + *(v11 + 24), v7);
  sub_25424E528();
  v14 = *(v2 + v9[5]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9248, &qword_2542545B0);
  v25 = sub_2541BAD80();
  v23[0] = v14;

  sub_25424E528();
  v15 = v9[8];
  v16 = objc_allocWithZone(MEMORY[0x277CBC190]);
  v17 = sub_25424D3E8();
  [v16 initWithFileURL_];

  sub_25424E578();
  v18 = [v6 encryptedValues];
  swift_getObjectType();
  v24 = MEMORY[0x277D84A28];
  v25 = MEMORY[0x277CBBEF0];
  v23[0] = 1;
  sub_25424E528();
  v19 = sub_2541BADFC(v10);
  v24 = MEMORY[0x277CC9318];
  v25 = MEMORY[0x277CBBBE0];
  v23[0] = v19;
  v23[1] = v20;
  sub_25424E528();

  swift_unknownObjectRelease();
  return v6;
}

uint64_t static DigestRecord.encodeUncompressed<A>(events:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_25424E7C8();
  v4[9] = v5;
  v4[10] = swift_getWitnessTable();
  v6 = type metadata accessor for AsyncSequenceAdapter();
  v4[11] = v6;
  v4[12] = swift_getWitnessTable();
  DigestEvent = type metadata accessor for AsyncCreateDigestEventSequence.AsyncIterator();
  v4[13] = DigestEvent;
  v8 = *(DigestEvent - 8);
  v4[14] = v8;
  v9 = *(v8 + 64) + 15;
  v4[15] = swift_task_alloc();
  v10 = sub_25424D418();
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v12 = *(v11 + 64) + 15;
  v4[18] = swift_task_alloc();
  DigestEventSequence = type metadata accessor for AsyncCreateDigestEventSequence();
  v4[19] = DigestEventSequence;
  v14 = *(DigestEventSequence - 8);
  v4[20] = v14;
  v15 = *(v14 + 64) + 15;
  v4[21] = swift_task_alloc();
  v16 = *(v6 - 8);
  v4[22] = v16;
  v17 = *(v16 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v18 = sub_25424E6A8();
  v4[25] = v18;
  v19 = *(v18 - 8);
  v4[26] = v19;
  v20 = *(v19 + 64) + 15;
  v4[27] = swift_task_alloc();
  v21 = *(v5 - 8);
  v4[28] = v21;
  v22 = *(v21 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541B7D30, 0, 0);
}

uint64_t sub_2541B7D30()
{
  v1 = v0[6];
  v2 = sub_25424D3B8();
  if (v2)
  {
    v8 = v0[30];
    v9 = v0[27];
    v10 = v0[28];
    v11 = v0[25];
    v12 = v0[26];
    v26 = v0[29];
    v27 = v0[24];
    v29 = v0[23];
    v13 = v0[22];
    v32 = v0[21];
    v36 = v0[19];
    v14 = v0[17];
    v33 = v0[18];
    v34 = v0[16];
    v35 = v0[15];
    v28 = v0[11];
    v15 = v0[9];
    v25 = v0[10];
    v16 = v0[5];
    v30 = v0[12];
    v31 = v0[6];
    MEMORY[0x259C05D80](v0[7], v0[8]);
    swift_getWitnessTable();
    sub_25424E8D8();
    (*(v12 + 8))(v9, v11);
    (*(v10 + 16))(v26, v8, v15);
    sub_2541D2914(v26, v15, v27);
    (*(v13 + 16))(v29, v27, v28);
    sub_2541D2914(v29, v28, v32);
    (*(v14 + 16))(v33, v31, v34);
    v17 = type metadata accessor for AsyncFileOutputStream(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v0[31] = AsyncFileOutputStream.init(url:)(v33);
    sub_2541EA418(v36, v35);
    v20 = v0[13];
    v21 = *(MEMORY[0x277D856F8] + 4);
    v22 = swift_task_alloc();
    v0[32] = v22;
    WitnessTable = swift_getWitnessTable();
    *v22 = v0;
    v22[1] = sub_2541B7FB4;
    v23 = v0[15];
    v5 = v0[13];
    v2 = (v0 + 2);
    v7 = v0 + 4;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200320](v2, v3, v4, v5, WitnessTable, v7);
}

uint64_t sub_2541B7FB4()
{
  v2 = *(*v1 + 256);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2541B8A38;
  }

  else
  {
    v3 = sub_2541B80C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541B80C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[33] = v1;
  v0[34] = v2;
  v3 = v0[31];
  if (v2 >> 60 == 15)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
    sub_25424E158();
    v4 = *(v3 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_task);
    v5 = *(MEMORY[0x277D857E0] + 4);
    v6 = swift_task_alloc();
    v0[38] = v6;
    *v6 = v0;
    v6[1] = sub_2541B85B4;

    return MEMORY[0x282200460]();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[35] = v7;
    v7[2] = v3;
    v7[3] = v1;
    v7[4] = v2;
    v8 = *(MEMORY[0x277D85A40] + 4);
    v9 = swift_task_alloc();
    v0[36] = v9;
    *v9 = v0;
    v9[1] = sub_2541B829C;
    v10 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v9, 0, 0, 0x7973416574697277, 0xEE00293A5F28636ELL, sub_2541BB958, v7, v10);
  }
}

uint64_t sub_2541B829C()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_2541B8490;
  }

  else
  {
    v5 = *(v2 + 280);

    v4 = sub_2541B83B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2541B83B8()
{
  sub_254134CF0(v0[33], v0[34]);
  v1 = v0[13];
  v2 = *(MEMORY[0x277D856F8] + 4);
  v3 = swift_task_alloc();
  v0[32] = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v0;
  v3[1] = sub_2541B7FB4;
  v5 = v0[15];
  v6 = v0[13];

  return MEMORY[0x282200320](v0 + 2, 0, 0, v6, WitnessTable, v0 + 4);
}

uint64_t sub_2541B8490()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  sub_254134CF0(v3, v2);
  (*(v5 + 8))(v4, v6);
  v0[39] = v0[37];
  v7 = v0[31];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v8 = *(v7 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_task);
  v9 = *(MEMORY[0x277D857E0] + 4);
  v10 = swift_task_alloc();
  v0[40] = v10;
  *v10 = v0;
  v10[1] = sub_2541B87EC;

  return MEMORY[0x282200460]();
}

uint64_t sub_2541B85B4()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2541B86B0, 0, 0);
}

uint64_t sub_2541B86B0()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v13 = v0[29];
  v14 = v0[27];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v15 = v0[23];
  v16 = v0[18];
  v17 = v0[15];
  v9 = v0[11];
  v10 = v0[9];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v4, v9);
  (*(v3 + 8))(v2, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2541B87EC()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2541B88E8, 0, 0);
}

uint64_t sub_2541B88E8()
{
  v1 = v0[39];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v15 = v0[29];
  v16 = v0[27];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v17 = v0[23];
  v18 = v0[18];
  v19 = v0[15];
  v9 = v0[11];
  v13 = v0[9];
  v14 = v0[24];
  swift_willThrow();

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v14, v9);
  (*(v4 + 8))(v3, v13);

  v10 = v0[1];
  v11 = v0[39];

  return v10();
}

uint64_t sub_2541B8A38()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v0[39] = v0[4];
  v1 = v0[31];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v2 = *(v1 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_task);
  v3 = *(MEMORY[0x277D857E0] + 4);
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_2541B87EC;

  return MEMORY[0x282200460]();
}

uint64_t sub_2541B8B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EventRecord.DecodedEvent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541BB7B4(a1, v7, type metadata accessor for SomeEvent);
  swift_storeEnumTagMultiPayload();
  static EventRecord.encodeEvent(_:)(v7, a2);
  return sub_2541BB81C(v7, type metadata accessor for EventRecord.DecodedEvent);
}

uint64_t sub_2541B8C9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_25424D948();
  __swift_allocate_value_buffer(v4, qword_27F5BA3F8);
  v5 = __swift_project_value_buffer(v4, qword_27F5BA3F8);
  sub_25424D8C8();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2541B8E18()
{
  *v0;
  *v0;
  *v0;
  sub_25424DD88();
}

uint64_t sub_2541B8EEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2541BB68C();
  *a2 = result;
  return result;
}

void sub_2541B8F1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x73746E657665;
  v5 = 0xE500000000000000;
  v6 = 0x7472617473;
  v7 = 0xE300000000000000;
  v8 = 6581861;
  if (v2 != 4)
  {
    v8 = 1936154996;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x617461646174656DLL;
  if (v2 != 1)
  {
    v10 = 1701869940;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
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

void sub_2541B8FB8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25424D418();
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = *(v85 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v83 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA4C8, "pV");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = &v76 - v11;
  v12 = type metadata accessor for DigestRecord.Metadata(0);
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = *(v87 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v76 - v18;
  v91 = sub_25424D948();
  v20 = *(v91 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v91);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25424E558() == 0x694473746E657645 && v24 == 0xEC00000074736567)
  {
  }

  else
  {
    v25 = sub_25424EAB8();

    if ((v25 & 1) == 0)
    {
      v43 = type metadata accessor for DigestRecord(0);
      *&v92 = 0;
      *(&v92 + 1) = 0xE000000000000000;
      sub_25424E688();

      *&v92 = 0xD00000000000001FLL;
      *(&v92 + 1) = 0x8000000254250D10;
      v44 = sub_25424E558();
      MEMORY[0x259C05CA0](v44);

      v45 = v92;
      sub_2541BB760();
      swift_allocError();
      *v46 = v43;
      *(v46 + 8) = v45;
      swift_willThrow();

      return;
    }
  }

  v81 = a2;
  v82 = v15;
  v26 = [a1 recordID];
  v27 = [v26 recordName];
  sub_25424DCB8();

  sub_25424D8C8();

  v28 = v20;
  v29 = *(v20 + 48);
  v30 = v91;
  if (v29(v19, 1, v91) == 1)
  {
    sub_254132E5C(v19, &unk_27F5B8E50, &qword_254254390);
    v31 = type metadata accessor for DigestRecord(0);
    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    sub_25424E688();

    *&v92 = 0xD00000000000002FLL;
    *(&v92 + 1) = 0x8000000254250D30;
    v32 = a1;
    v33 = [a1 recordID];
    v34 = [v33 recordName];

    v35 = sub_25424DCB8();
    v37 = v36;

    MEMORY[0x259C05CA0](v35, v37);

    v38 = v92;
    sub_2541BB760();
    swift_allocError();
    *v39 = v31 | 0x8000000000000000;
    *(v39 + 8) = v38;
    swift_willThrow();

    return;
  }

  (*(v28 + 32))(v23, v19, v30);
  v40 = [a1 encryptedValues];
  v41 = v90;
  v42 = sub_25422FEFC(2u, v40);
  if (v41)
  {
    swift_unknownObjectRelease();

LABEL_13:
    (*(v28 + 8))(v23, v30);
    return;
  }

  v90 = a1;
  v47 = v26;
  if (v42 != 1)
  {
    v48 = v42;
    v49 = type metadata accessor for DigestRecord(0);
    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0x6E6F2065756C6156, 0xEF20646C65696620);
    LOBYTE(v93) = 2;
    sub_25424E7D8();
    MEMORY[0x259C05CA0](0x6E6B6E7520736920, 0xED0000203A6E776FLL);
    v93 = v48;
    v50 = sub_25424EA58();
    MEMORY[0x259C05CA0](v50);

    v51 = v92;
    sub_2541BB760();
    swift_allocError();
    *v52 = v49 | 0x2000000000000000;
    *(v52 + 8) = v51;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  swift_unknownObjectRetain();
  sub_254230304(1u, v40, &v92);
  swift_unknownObjectRelease();
  v80 = *(&v92 + 1);
  v53 = v92;
  v54 = sub_25424D168();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v79 = v40;
  sub_25424D158();
  sub_2541BB03C(&qword_27F5BA4D8, type metadata accessor for DigestRecord.Metadata);
  v58 = v88;
  v57 = v89;
  v78 = v53;
  sub_25424D138();
  v77 = v47;

  (*(v87 + 56))(v57, 0, 1, v58);
  sub_2541BAD1C(v57, v82);
  v59 = v90;
  v60 = sub_25423072C(0, v59);

  v61 = [v60 fileURL];
  if (v61)
  {
    v62 = v83;
    v63 = v61;
    sub_25424D3F8();

    v65 = v84;
    v64 = v85;
    v66 = *(v85 + 32);
    v89 = v60;
    v67 = v86;
    v66(v84, v62, v86);
    v68 = *(v28 + 16);
    v69 = v81;
    v90 = v23;
    v68(v81, v23, v91);
    v70 = type metadata accessor for DigestRecord(0);
    (*(v64 + 16))(v69 + *(v70 + 32), v65, v67);
    v88 = v70;
    v71 = v69 + *(v70 + 28);
    v72 = v82;
    sub_2541BB7B4(v82, v71, type metadata accessor for DigestRecord.Metadata);
    LOBYTE(v62) = sub_25424D3B8();

    sub_254134D04(v78, v80);
    swift_unknownObjectRelease();

    (*(v64 + 8))(v65, v67);
    sub_2541BB81C(v72, type metadata accessor for DigestRecord.Metadata);
    (*(v28 + 8))(v90, v91);
    if (v62)
    {
      *(v69 + *(v88 + 20)) = MEMORY[0x277D84F90];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v73 = type metadata accessor for DigestRecord(0);
    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0x6E6F2065756C6156, 0xEF20646C65696620);
    LOBYTE(v93) = 0;
    sub_25424E7D8();
    MEMORY[0x259C05CA0](0x206F6E2073616820, 0xEF4C5255656C6966);
    v74 = v92;
    sub_2541BB760();
    swift_allocError();
    *v75 = v73 | 0x8000000000000000;
    *(v75 + 8) = v74;
    swift_willThrow();

    sub_254134D04(v78, v80);
    swift_unknownObjectRelease();

    sub_2541BB81C(v82, type metadata accessor for DigestRecord.Metadata);
    (*(v28 + 8))(v23, v91);
  }
}

uint64_t sub_2541B9BFC()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541B9CCC()
{
  *v0;
  *v0;
  *v0;
  sub_25424DD88();
}

uint64_t sub_2541B9D88()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541B9E54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2541BB6D8();
  *a2 = result;
  return result;
}

void sub_2541B9E84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701670760;
  v5 = 0xE300000000000000;
  v6 = 6581861;
  v7 = 0xEA00000000007365;
  v8 = 0x69726F6765746163;
  if (v2 != 3)
  {
    v8 = 0x746E756F63;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7472617473;
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

uint64_t sub_2541B9F10()
{
  v1 = *v0;
  v2 = 1701670760;
  v3 = 6581861;
  v4 = 0x69726F6765746163;
  if (v1 != 3)
  {
    v4 = 0x746E756F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7472617473;
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

uint64_t sub_2541B9F98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2541BB6D8();
  *a1 = result;
  return result;
}

uint64_t sub_2541B9FC0(uint64_t a1)
{
  v2 = sub_2541BAFE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541B9FFC(uint64_t a1)
{
  v2 = sub_2541BAFE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigestRecord.Metadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA428, &unk_2542592E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541BAFE8();
  sub_25424EC78();
  v21 = 0;
  sub_25424D948();
  sub_2541BB03C(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
  sub_25424EA18();
  if (!v2)
  {
    v11 = type metadata accessor for DigestRecord.Metadata(0);
    v12 = v11[5];
    v20 = 1;
    sub_25424D8B8();
    sub_2541BB03C(&qword_27F5B8C78, MEMORY[0x277CC9578]);
    sub_25424EA18();
    v13 = v11[6];
    v19 = 2;
    sub_25424EA18();
    v16[1] = *(v3 + v11[7]);
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9060, &qword_254254410);
    sub_2541BB084(&qword_27F5BA438, sub_2541406B4);
    sub_25424EA18();
    v14 = *(v3 + v11[8]);
    v17 = 4;
    sub_25424EA08();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DigestRecord.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_25424D8B8();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v38 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - v8;
  v10 = sub_25424D948();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v42 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA440, &qword_2542592F8);
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = *(v43 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - v15;
  v17 = type metadata accessor for DigestRecord.Metadata(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541BAFE8();
  v45 = v16;
  v22 = v46;
  sub_25424EC68();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v17;
  v46 = a1;
  v52 = 0;
  sub_2541BB03C(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  v23 = v42;
  sub_25424E978();
  (*(v41 + 32))(v20, v23, v10);
  v51 = 1;
  sub_2541BB03C(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
  v24 = v39;
  sub_25424E978();
  v35[1] = v10;
  v25 = *(v36 + 20);
  v26 = v9;
  v27 = v24;
  v28 = *(v40 + 32);
  v42 = v20;
  v28(&v20[v25], v26, v24);
  v50 = 2;
  v29 = v38;
  sub_25424E978();
  v30 = v46;
  v31 = v36;
  v28(&v42[*(v36 + 24)], v29, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9060, &qword_254254410);
  v49 = 3;
  sub_2541BB084(&qword_27F5BA448, sub_2541407C8);
  sub_25424E978();
  v32 = v42;
  *&v42[*(v31 + 28)] = v47;
  v48 = 4;
  v33 = sub_25424E968();
  (*(v43 + 8))(v45, v44);
  *(v32 + *(v31 + 32)) = v33;
  sub_2541BB7B4(v32, v37, type metadata accessor for DigestRecord.Metadata);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_2541BB81C(v32, type metadata accessor for DigestRecord.Metadata);
}

uint64_t sub_2541BAA1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2541BB728(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2541BAA5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9060, &qword_254254410);
  v25[3] = v2;
  v25[4] = sub_25414081C(&qword_27F5BA4E8, &qword_27F5B9060, &qword_254254410);
  v25[0] = a1;
  v3 = __swift_project_boxed_opaque_existential_1(v25, v2);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-v5];
  (*(v7 + 16))(&v20[-v5]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  v9 = 0;
  v10 = -1 << *(*v6 + 32);
  v11 = ~v10;
  v12 = (*v6 + 56);
  v13 = *v12;
  v14 = -v10;
  v15 = v14 < 64;
  v16 = -1 << v14;
  if (v15)
  {
    v17 = ~v16;
  }

  else
  {
    v17 = -1;
  }

  *boxed_opaque_existential_1 = *v6;
  boxed_opaque_existential_1[1] = v12;
  boxed_opaque_existential_1[2] = v11;
  boxed_opaque_existential_1[3] = 0;
  boxed_opaque_existential_1[4] = v17 & v13;
  while (1)
  {
    do
    {
      __swift_mutable_project_boxed_opaque_existential_1(v22, AssociatedTypeWitness);
      sub_25424E5C8();
    }

    while (v21 < 5u || v21 == 6);
    if (v21 != 5)
    {
      break;
    }

    if ((v9 & 1) == 0)
    {
      v9 = 1;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v9;
}

uint64_t sub_2541BAC60(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2541BEA18(a1, &a1[a2]);
  }

  v3 = sub_25424D2B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_25424D258();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_25424D468();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2541BAD1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigestRecord.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2541BAD80()
{
  result = qword_27F5BA420;
  if (!qword_27F5BA420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B9248, &qword_2542545B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA420);
  }

  return result;
}

uint64_t sub_2541BADFC(uint64_t a1)
{
  v2 = sub_25424D188();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v11 = type metadata accessor for DigestRecord.Metadata(0);
  v12 = sub_2541BB03C(&qword_27F5BA4E0, type metadata accessor for DigestRecord.Metadata);
  v4 = __swift_allocate_boxed_opaque_existential_1(&v10);
  sub_2541BB7B4(a1, v4, type metadata accessor for DigestRecord.Metadata);
  v5 = sub_25424D1C8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_25424D1B8();
  sub_25424D178();
  sub_25424D198();
  __swift_project_boxed_opaque_existential_1(&v10, v11);
  v8 = sub_25424D1A8();

  __swift_destroy_boxed_opaque_existential_1(&v10);
  return v8;
}

unint64_t sub_2541BAFE8()
{
  result = qword_27F5BA430;
  if (!qword_27F5BA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA430);
  }

  return result;
}

uint64_t sub_2541BB03C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2541BB084(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B9060, &qword_254254410);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2541BB100()
{
  result = qword_27F5BA450;
  if (!qword_27F5BA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA450);
  }

  return result;
}

void sub_2541BB17C()
{
  sub_25424D948();
  if (v0 <= 0x3F)
  {
    sub_2541BB238();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DigestRecord.Metadata(319);
      if (v2 <= 0x3F)
      {
        sub_25424D418();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2541BB238()
{
  if (!qword_27F5BA468)
  {
    v0 = sub_25424E048();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5BA468);
    }
  }
}

void sub_2541BB2C0()
{
  sub_25424D948();
  if (v0 <= 0x3F)
  {
    sub_25424D8B8();
    if (v1 <= 0x3F)
    {
      sub_2541BB364();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2541BB364()
{
  if (!qword_27F5BA480)
  {
    sub_2541BB3C0();
    v0 = sub_25424E2F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5BA480);
    }
  }
}

unint64_t sub_2541BB3C0()
{
  result = qword_27F5BA488;
  if (!qword_27F5BA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA488);
  }

  return result;
}

unint64_t sub_2541BB428()
{
  result = qword_27F5BA490;
  if (!qword_27F5BA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA490);
  }

  return result;
}

unint64_t sub_2541BB480()
{
  result = qword_27F5BA498;
  if (!qword_27F5BA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA498);
  }

  return result;
}

unint64_t sub_2541BB4D8()
{
  result = qword_27F5BA4A0;
  if (!qword_27F5BA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4A0);
  }

  return result;
}

unint64_t sub_2541BB530()
{
  result = qword_27F5BA4A8;
  if (!qword_27F5BA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4A8);
  }

  return result;
}

unint64_t sub_2541BB588()
{
  result = qword_27F5BA4B0;
  if (!qword_27F5BA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4B0);
  }

  return result;
}

unint64_t sub_2541BB5E0()
{
  result = qword_27F5BA4B8;
  if (!qword_27F5BA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4B8);
  }

  return result;
}

unint64_t sub_2541BB638()
{
  result = qword_27F5BA4C0;
  if (!qword_27F5BA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4C0);
  }

  return result;
}

uint64_t sub_2541BB68C()
{
  v0 = sub_25424E8E8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2541BB6D8()
{
  v0 = sub_25424E8E8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2541BB728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_2541BB760()
{
  result = qword_27F5BA4D0;
  if (!qword_27F5BA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4D0);
  }

  return result;
}

uint64_t sub_2541BB7B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541BB81C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

unint64_t sub_2541BB904()
{
  result = qword_27F5BA4F0;
  if (!qword_27F5BA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4F0);
  }

  return result;
}

HomeKitEvents::QueryScope_optional __swiftcall QueryScope.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t QueryScope.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_2541BB99C()
{
  result = qword_27F5BA4F8;
  if (!qword_27F5BA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4F8);
  }

  return result;
}

unint64_t sub_2541BB9F4()
{
  result = qword_27F5BA500;
  if (!qword_27F5BA500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BA508, &qword_254259870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA500);
  }

  return result;
}

uint64_t sub_2541BBB04()
{
  v0 = sub_25424DA78();
  __swift_allocate_value_buffer(v0, qword_27F5BA510);
  __swift_project_value_buffer(v0, qword_27F5BA510);
  return sub_25424DA58();
}

uint64_t sub_2541BBB50()
{
  v0 = sub_25424DA78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F5B8410 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F5BA510);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_25424DA68();
  result = (*(v1 + 8))(v4, v0);
  qword_27F5BC830 = v6 / 8;
  return result;
}

uint64_t LubyRackoffEncryptionKey.init()()
{
  v0 = sub_25424DA78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F5B8410 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F5BA510);
  (*(v1 + 16))(v4, v5, v0);
  return sub_25424DA28();
}

uint64_t LubyRackoffEncryptionKey.init(data:)(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v3 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_16;
  }

  v3 = HIDWORD(result) - result;
LABEL_11:
  if (qword_27F5B8418 != -1)
  {
    v6 = result;
    swift_once();
    result = v6;
  }

  if (v3 == qword_27F5BC830)
  {
    return sub_25424DA18();
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

BOOL static LubyRackoffEncryptionKey.isValidInputData(_:)(_BOOL8 result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v3 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    __break(1u);
    return result;
  }

  v3 = HIDWORD(result) - result;
LABEL_11:
  if (qword_27F5B8418 != -1)
  {
    swift_once();
  }

  return v3 == qword_27F5BC830;
}

BOOL sub_2541BBF5C(_BOOL8 result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v3 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    __break(1u);
    return result;
  }

  v3 = HIDWORD(result) - result;
LABEL_11:
  if (qword_27F5B8418 != -1)
  {
    swift_once();
  }

  return v3 == qword_27F5BC830;
}

uint64_t sub_2541BC060(uint64_t a1)
{
  *(a1 + 8) = sub_2541BC114(&qword_27F5BA528);
  result = sub_2541BC114(&qword_27F5BA530);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for LubyRackoffEncryptionKey()
{
  result = qword_27F5BA538;
  if (!qword_27F5BA538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2541BC114(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LubyRackoffEncryptionKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2541BC184()
{
  result = sub_25424DA48();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static Configuration.zoneName(forHomeIdentifier:target:)(uint64_t a1, _BYTE *a2)
{
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  if (*a2)
  {
    static Configuration.energyKitZoneUUID(forHomeIdentifier:)(a1, v9);
  }

  else
  {
    static Configuration.zoneUUID(forHomeIdentifier:)(a1, v9);
  }

  (*(v5 + 32))(v11, v9, v4);
  v17 = sub_25424D8D8();
  v18 = v12;
  v15 = 0x2D73746E657665;
  v16 = 0xE700000000000000;
  v15 = sub_25424DE78();
  v16 = v13;
  sub_25424DDD8();
  (*(v5 + 8))(v11, v4);

  return v15;
}

int8x8_t static Configuration.defaultFeaturesDataSource.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2541BE050();
  *a1 = v2 & 1;
  v3 = vdupq_n_s64(v2);
  *v3.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v3, xmmword_2542588C0), vshlq_u64(v3, xmmword_2542588B0))), 0x1000100010001);
  result = vuzp1_s8(*v3.i8, *v3.i8);
  *(a1 + 1) = result.i32[0];
  return result;
}

id static Configuration.containerID.getter()
{
  v0 = sub_2541BC5E0();
  v1 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v2 = sub_25424DCA8();
  v3 = [v1 initWithContainerIdentifier:v2 environment:v0];

  return v3;
}

uint64_t sub_2541BC5E0()
{
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281407080 != -1)
  {
    swift_once();
  }

  if (byte_281407088 != 1)
  {
    return 1;
  }

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = sub_25424DCA8();
  v9 = [v7 objectForKey_];

  if (v9)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
    sub_254132E5C(v27, &qword_27F5BA568, &qword_254259B88);
    v10 = [v6 standardUserDefaults];
    v11 = sub_25424DCA8();
    v12 = [v10 BOOLForKey_];

    if (v12)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    static LoggedObject.logger.getter(v0, &protocol witness table for Configuration, v5);
    v14 = sub_25424DA88();
    v15 = sub_25424E448();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v27[0] = v26;
      *v16 = 136315650;
      *(v16 + 4) = sub_2542203C4(0xD000000000000020, 0x8000000254250FC0, v27);
      *(v16 + 12) = 1024;
      *(v16 + 14) = v12;
      *(v16 + 18) = 2080;
      v17 = CKContainerEnvironmentString();
      v18 = sub_25424DCB8();
      v19 = v2;
      v21 = v20;

      v22 = sub_2542203C4(v18, v21, v27);

      *(v16 + 20) = v22;
      _os_log_impl(&dword_254124000, v14, v15, "Detected preference '%s' = %{BOOL}d, using environment: %s", v16, 0x1Cu);
      v23 = v26;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v23, -1, -1);
      MEMORY[0x259C07330](v16, -1, -1);

      (*(v19 + 8))(v5, v1);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
    }
  }

  else
  {
    memset(v27, 0, sizeof(v27));
    sub_254132E5C(v27, &qword_27F5BA568, &qword_254259B88);
    return 1;
  }

  return v13;
}

id sub_2541BC988(uint64_t a1, unint64_t a2, id a3, uint64_t (*a4)(id), uint64_t a5)
{
  v11 = sub_25424DAA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v39 - v18;
  if (qword_281407080 != -1)
  {
    v37 = a1;
    v38 = v17;
    swift_once();
    v17 = v38;
    a1 = v37;
  }

  if (byte_281407088 == 1)
  {
    v39[1] = a5;
    v40 = a4;
    v42 = v17;
    v43 = a3;
    v41 = v12;
    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    v22 = sub_25424DCA8();
    v23 = a1;
    v24 = [v21 objectForKey_];

    if (v24)
    {
      v25 = v5;
      sub_25424E5D8();
      swift_unknownObjectRelease();
      sub_254132E5C(v44, &qword_27F5BA568, &qword_254259B88);
      v26 = [v20 standardUserDefaults];
      v39[0] = v23;
      v27 = sub_25424DCA8();
      a3 = [v26 integerForKey_];

      if (v40(a3))
      {
        static LoggedObject.logger.getter(v25, &protocol witness table for Configuration, v19);

        v28 = sub_25424DA88();
        v29 = sub_25424E448();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *&v44[0] = v31;
          *v30 = 136315394;
          *(v30 + 4) = sub_2542203C4(v39[0], a2, v44);
          *(v30 + 12) = 2048;
          *(v30 + 14) = a3;
          _os_log_impl(&dword_254124000, v28, v29, "Detected preference '%s' = %ld", v30, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x259C07330](v31, -1, -1);
          MEMORY[0x259C07330](v30, -1, -1);
        }

        (*(v41 + 8))(v19, v42);
        return a3;
      }

      static LoggedObject.logger.getter(v25, &protocol witness table for Configuration, v16);

      v32 = sub_25424DA88();
      v33 = sub_25424E428();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v44[0] = v35;
        *v34 = 136315394;
        *(v34 + 4) = sub_2542203C4(v39[0], a2, v44);
        *(v34 + 12) = 2048;
        *(v34 + 14) = a3;
        _os_log_impl(&dword_254124000, v32, v33, "Ignoring invalid preference '%s' = %ld", v34, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x259C07330](v35, -1, -1);
        MEMORY[0x259C07330](v34, -1, -1);
      }

      (*(v41 + 8))(v16, v42);
    }

    else
    {
      memset(v44, 0, sizeof(v44));
      sub_254132E5C(v44, &qword_27F5BA568, &qword_254259B88);
    }

    return v43;
  }

  return a3;
}

id sub_2541BCDF8()
{
  result = sub_2541BCE18();
  qword_27F5BA548 = result;
  return result;
}

id sub_2541BCE18()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
  [v0 setUseZoneWidePCS_];
  type metadata accessor for Configuration();
  v1 = sub_2541BC5E0();
  v2 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v3 = sub_25424DCA8();
  v4 = [v2 initWithContainerIdentifier:v3 environment:v1];

  v5 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v4 options:v0];
  return v5;
}

id static Configuration.cloudKitContainer.getter()
{
  if (qword_27F5B8420 != -1)
  {
    swift_once();
  }

  v1 = qword_27F5BA548;

  return v1;
}

uint64_t static Configuration.zoneUUID(forHomeIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25[8] = *MEMORY[0x277D85DE8];
  v24 = sub_25424DCF8();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25424D948();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v25[0] = sub_25424D928();
  v25[1] = v12;
  sub_25424D928();
  v13 = sub_2541BAC60(v25, 16);
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254254360;
  sub_25424DCE8();
  v17 = sub_25424DCC8();
  v19 = v18;
  (*(v3 + 8))(v6, v24);
  if (v19 >> 60 == 15)
  {
    __break(1u);
  }

  *(inited + 32) = v17;
  *(inited + 40) = v19;
  sub_25420B638(v13, v15, inited, v23);
  result = (*(v8 + 8))(v11, v7);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static Configuration.energyKitZoneUUID(forHomeIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25[8] = *MEMORY[0x277D85DE8];
  v24 = sub_25424DCF8();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25424D948();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v25[0] = sub_25424D928();
  v25[1] = v12;
  sub_25424D928();
  v13 = sub_2541BAC60(v25, 16);
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254254360;
  sub_25424DCE8();
  v17 = sub_25424DCC8();
  v19 = v18;
  (*(v3 + 8))(v6, v24);
  if (v19 >> 60 == 15)
  {
    __break(1u);
  }

  *(inited + 32) = v17;
  *(inited + 40) = v19;
  sub_25420B638(v13, v15, inited, v23);
  result = (*(v8 + 8))(v11, v7);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static Configuration.zoneName(forZoneUUID:)()
{
  sub_25424D8D8();
  v1 = sub_25424DE78();
  sub_25424DDD8();

  return v1;
}

uint64_t static Configuration.reset(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_25424E128();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;

  sub_25419CC1C(0, 0, v8, &unk_2542599E8, v10);
}

uint64_t sub_2541BD878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_25424DAA8();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541BD948, 0, 0);
}

uint64_t sub_2541BD948()
{
  static LoggedObject.logger.getter(v0[4], &protocol witness table for Configuration, v0[8]);
  v1 = sub_25424DA88();
  v2 = sub_25424E448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_254124000, v1, v2, "Resetting configuration", v3, 2u);
    MEMORY[0x259C07330](v3, -1, -1);
  }

  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];

  v7 = *(v6 + 8);
  v0[9] = v7;
  v7(v4, v5);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_2541BDABC;

  return (sub_2542199F4)();
}

uint64_t sub_2541BDABC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2541BDC48;
  }

  else
  {
    v3 = sub_2541BDBD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541BDBD0()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2541BDC48()
{
  v1 = v0[11];
  static LoggedObject.logger.getter(v0[4], &protocol witness table for Configuration, v0[7]);
  v2 = v1;
  v3 = sub_25424DA88();
  v4 = sub_25424E428();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_254124000, v3, v4, "Failed to reset configuration: %{public}@", v6, 0xCu);
    sub_254132E5C(v7, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v7, -1, -1);
    MEMORY[0x259C07330](v6, -1, -1);
  }

  v10 = v0[11];
  v11 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];
  v16 = v0[2];
  v15 = v0[3];

  v11(v12, v14);
  v17 = v10;
  v16(v10);

  v19 = v0[7];
  v18 = v0[8];

  v20 = v0[1];

  return v20();
}

void sub_2541BDEA0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_25424D398();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

HomeKitEvents::Configuration::TargetCloudKitZone_optional __swiftcall Configuration.TargetCloudKitZone.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_2541BDF70@<X0>(void *result@<X0>, char *a2@<X8>)
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

id Configuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Configuration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2541BDFD8()
{
  if (qword_281407080 != -1)
  {
    swift_once();
  }

  return byte_281407088;
}

unint64_t sub_2541BE050()
{
  v12 = &type metadata for FeatureFlags;
  v0 = sub_2541BE404();
  v13 = v0;
  LOBYTE(v11[0]) = 1;
  v1 = sub_25424D9B8();
  __swift_destroy_boxed_opaque_existential_1(v11);
  v12 = &type metadata for FeatureFlags;
  v13 = v0;
  LOBYTE(v11[0]) = 3;
  v2 = sub_25424D9B8();
  __swift_destroy_boxed_opaque_existential_1(v11);
  v12 = &type metadata for FeatureFlags;
  v13 = v0;
  LOBYTE(v11[0]) = 4;
  v3 = sub_25424D9B8();
  __swift_destroy_boxed_opaque_existential_1(v11);
  v12 = &type metadata for FeatureFlags;
  v13 = v0;
  LOBYTE(v11[0]) = 5;
  v4 = sub_25424D9B8();
  __swift_destroy_boxed_opaque_existential_1(v11);
  if (v1)
  {
    v12 = &type metadata for FeatureFlags;
    v13 = v0;
    LOBYTE(v11[0]) = 2;
    v5 = sub_25424D9B8();
    __swift_destroy_boxed_opaque_existential_1(v11);
    v6 = 256;
    if ((v5 & 1) == 0)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x100000000;
  if ((v4 & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if ((v3 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = 0x10000;
  if ((v2 & 1) == 0)
  {
    v9 = 0;
  }

  return v9 & 0xFFFFFFFFFFFFFFFELL | v1 & 1 | v8 | v7 | v6;
}

uint64_t sub_2541BE184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F724;

  return sub_2541BD878(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_2541BE274()
{
  result = qword_27F5BA550;
  if (!qword_27F5BA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA550);
  }

  return result;
}

unint64_t sub_2541BE2CC()
{
  result = qword_27F5BA558;
  if (!qword_27F5BA558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BA560, &qword_254259A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA558);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Configuration.DefaultFeaturesDataSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.DefaultFeaturesDataSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2541BE404()
{
  result = qword_27F5BA570;
  if (!qword_27F5BA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA570);
  }

  return result;
}

uint64_t sub_2541BE458()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424EBF8();
  return sub_25424EC28();
}

uint64_t sub_2541BE4CC()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424EBF8();
  return sub_25424EC28();
}

_BYTE *sub_2541BE510@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
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

uint64_t sub_2541BE53C(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 >= 4)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 4)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = 0xD00000000000001CLL;
      a3[1] = 0x8000000254251080;
LABEL_32:
      sub_254182650();
      swift_willThrowTypedImpl();
      sub_254134D04(v4, a2);
      return v4;
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 4uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v13 = *(result + 16);
    v12 = *(result + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      v10 = a3;
LABEL_17:
      result = sub_254140660(result, a2);
      if (v11 >= 4)
      {
        goto LABEL_18;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v5 == 1)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v10 = a3;
      v11 = HIDWORD(result) - result;
      goto LABEL_17;
    }

    goto LABEL_36;
  }

  v10 = a3;
  LODWORD(v11) = BYTE6(a2);
  if (BYTE6(a2) < 4uLL)
  {
    goto LABEL_25;
  }

LABEL_18:
  LODWORD(v11) = sub_2542435B8(v4, a2);
  result = sub_254134D04(v4, a2);
  if (v11 >> 29)
  {
    v15 = 0x8000000254251020;
    v16 = 0xD000000000000022;
LABEL_31:
    *v10 = v16;
    v10[1] = v15;
    goto LABEL_32;
  }

  if (v5 != 2)
  {
    if (v5 != 1)
    {
      v14 = BYTE6(a2);
      goto LABEL_29;
    }

    LODWORD(v14) = HIDWORD(v4) - v4;
    if (!__OFSUB__(HIDWORD(v4), v4))
    {
      v14 = v14;
LABEL_29:
      if (v14 == (v11 & 0xFFFFFFF) + 4)
      {
        return v4;
      }

      v15 = 0x8000000254251050;
      v16 = 0xD000000000000025;
      goto LABEL_31;
    }

    goto LABEL_38;
  }

LABEL_26:
  v18 = *(v4 + 16);
  v17 = *(v4 + 24);
  v8 = __OFSUB__(v17, v18);
  v14 = v17 - v18;
  if (!v8)
  {
    goto LABEL_29;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2541BE760(unsigned int a1)
{
  v26[5] = *MEMORY[0x277D85DE8];
  LODWORD(v26[0]) = bswap32(a1);
  v1 = sub_2541AF8F4(v26, v26 + 4);
  v26[3] = MEMORY[0x277CC9318];
  v26[4] = MEMORY[0x277CC9300];
  v26[0] = v1;
  v26[1] = v2;
  v3 = __swift_project_boxed_opaque_existential_1(v26, MEMORY[0x277CC9318]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v24, 0, 14);
      v8 = v24;
      v7 = v24;
      goto LABEL_23;
    }

    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
    v11 = sub_25424D268();
    if (v11)
    {
      v12 = sub_25424D298();
      v4 = v9 - v12;
      if (__OFSUB__(v9, v12))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 += v4;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v24[0] = *v3;
    LOWORD(v24[1]) = v5;
    BYTE2(v24[1]) = BYTE2(v5);
    BYTE3(v24[1]) = BYTE3(v5);
    BYTE4(v24[1]) = BYTE4(v5);
    BYTE5(v24[1]) = BYTE5(v5);
    v7 = v24 + BYTE6(v5);
    v8 = v24;
    goto LABEL_23;
  }

  v15 = v4;
  v16 = v4 >> 32;
  v14 = v16 - v15;
  if (v16 < v15)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = sub_25424D268();
  if (v11)
  {
    v17 = sub_25424D298();
    if (!__OFSUB__(v15, v17))
    {
      v11 += v15 - v17;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v18 = sub_25424D288();
  if (v18 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v19 + v11);
  if (v11)
  {
    v7 = v20;
  }

  else
  {
    v7 = 0;
  }

  v8 = v11;
LABEL_23:
  sub_2541BE964(v8, v7, &v25);
  v21 = v25;
  __swift_destroy_boxed_opaque_existential_1(v26);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

_BYTE *sub_2541BE964@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2541BEA18(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2541BEAD0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2541BEB4C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_2541BE9F8(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2541BEA18(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2541BEAD0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25424D2B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25424D258();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25424D468();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2541BEB4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25424D2B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25424D258();
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

uint64_t sub_2541BEC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 24))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 16) & 0x1000000000000000) != 0)) | ((*(a1 + 16) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2541BEC6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

unint64_t sub_2541BED08()
{
  result = qword_27F5BA578;
  if (!qword_27F5BA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA578);
  }

  return result;
}

uint64_t sub_2541BED64(unint64_t a1, char a2)
{
  v3 = v2;
  if (*(v2 + 120) == 1)
  {
    *(v2 + 120) = 0;
    v6 = *(v2 + 112);
    v7 = *(v3 + 112);
    swift_getObjectType();
    sub_25424E508();
  }

  swift_beginAccess();
  v8 = *(v3 + 128);
  *(v3 + 128) = MEMORY[0x277D84F98];

  v9 = a1;
  v39 = a2;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_26:
    if (*(*(v3 + 128) + 16))
    {
      if (v39)
      {
        return sub_2541BF428();
      }
    }

    return result;
  }

LABEL_5:
  if (result >= 1)
  {
    v11 = 0;
    v41 = v9;
    v42 = v9 & 0xC000000000000001;
    v40 = result;
    while (1)
    {
      if (v42)
      {
        v14 = MEMORY[0x259C06580](v11);
      }

      else
      {
        v14 = *(v9 + 8 * v11 + 32);
      }

      v44 = v14;
      v15 = [v14 zoneID];
      v16 = [v15 zoneName];
      v17 = sub_25424DCB8();
      v19 = v18;

      v43 = v15;
      v20 = [v15 ownerName];
      v21 = sub_25424DCB8();
      a1 = v22;

      swift_beginAccess();
      v23 = *(v3 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(v3 + 128);
      v26 = v3;
      *(v3 + 128) = 0x8000000000000000;
      v28 = sub_25422095C(v17, v19);
      v29 = v25[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        result = sub_25424E868();
        v9 = a1;
        if (!result)
        {
          goto LABEL_26;
        }

        goto LABEL_5;
      }

      v3 = v27;
      if (v25[3] >= v31)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v27)
          {
            goto LABEL_7;
          }
        }

        else
        {
          sub_254222B4C();
          if (v3)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        sub_25422121C(v31, isUniquelyReferenced_nonNull_native);
        v32 = sub_25422095C(v17, v19);
        if ((v3 & 1) != (v33 & 1))
        {
          goto LABEL_31;
        }

        v28 = v32;
        if (v3)
        {
LABEL_7:
          v12 = (v25[7] + 16 * v28);
          v13 = v12[1];
          *v12 = v21;
          v12[1] = a1;

          goto LABEL_8;
        }
      }

      v25[(v28 >> 6) + 8] |= 1 << v28;
      v34 = (v25[6] + 16 * v28);
      *v34 = v17;
      v34[1] = v19;
      v35 = (v25[7] + 16 * v28);
      *v35 = v21;
      v35[1] = a1;
      v36 = v25[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_24;
      }

      v25[2] = v38;
LABEL_8:
      ++v11;
      v3 = v26;
      *(v26 + 128) = v25;
      swift_endAccess();

      result = v40;
      v9 = v41;
      if (v40 == v11)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_31:
  result = sub_25424EB38();
  __break(1u);
  return result;
}

uint64_t sub_2541BF078()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2541BF0DC()
{
  v1 = v0;
  v20 = sub_25424DAC8();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25424E4D8();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v19[1] = sub_254148D7C(0, &qword_27F5BA5A8, 0x277D85CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA5B0, &qword_254259FB0);
  v12 = *(v7 + 72);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2542542D0;
  sub_25424E4B8();
  sub_25424E4C8();
  v21 = v14;
  sub_2541BFA20(&qword_27F5BA5B8, MEMORY[0x277D85298]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA5C0, &qword_254259FB8);
  sub_2541BFA68(&qword_27F5BA5C8, &qword_27F5BA5C0, &qword_254259FB8);
  sub_25424E5F8();
  sub_254148D7C(0, &unk_27F5BA5D0, 0x277D85C78);
  v15 = v20;
  (*(v2 + 104))(v5, *MEMORY[0x277D851D0], v20);
  v16 = sub_25424E4A8();
  (*(v2 + 8))(v5, v15);
  v17 = sub_25424E4E8();

  (*(v8 + 8))(v11, v6);
  *(v1 + 112) = v17;
  *(v1 + 120) = 0;
  *(v1 + 128) = MEMORY[0x277D84F98];
  return v1;
}

uint64_t sub_2541BF3EC()
{
  type metadata accessor for SharedZoneOwnerNameCache();
  v0 = swift_allocObject();
  result = sub_2541BF0DC();
  qword_27F5BC838 = v0;
  return result;
}

uint64_t sub_2541BF428()
{
  v1 = sub_25424DAB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25424DAE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 120) & 1) == 0)
  {
    *(v0 + 120) = 1;
    v12 = *(v0 + 112);
    swift_getObjectType();
    v13 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2541BF94C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2541FA910;
    aBlock[3] = &block_descriptor_5;
    v14 = _Block_copy(aBlock);

    sub_25424DAD8();
    sub_2541BF874();
    sub_25424E4F8();
    _Block_release(v14);
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v11, v6);

    return sub_25424E518();
  }

  return result;
}

uint64_t sub_2541BF68C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_25424E128();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_25419CC1C(0, 0, v3, &unk_254259FA8, v7);
  }

  return result;
}

uint64_t sub_2541BF7CC()
{
  v1 = *(v0 + 40);
  if (*(v1 + 120) == 1)
  {
    *(v1 + 120) = 0;
    v2 = *(v1 + 112);
    swift_getObjectType();
    sub_25424E508();
    v1 = *(v0 + 40);
  }

  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = MEMORY[0x277D84F98];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2541BF874()
{
  sub_25424DAB8();
  sub_2541BFA20(&qword_27F5BA588, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA590, &unk_254259F90);
  sub_2541BFA68(&unk_27F5BA598, &qword_27F5BA590, &unk_254259F90);
  return sub_25424E5F8();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2541BF96C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25412F724;

  return sub_2541BF7AC(a1, v4, v5, v6);
}

uint64_t sub_2541BFA20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2541BFA68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t ThermostatReducedEnergyAutomationEvent.State.result.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ThermostatReducedEnergyAutomationEvent.State.init(trigger:result:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_2541C62C8(a1, a3, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  result = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

unint64_t sub_2541BFBB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA20, &qword_25425B718);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA28, &unk_25425B720);
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_254254360;
  if (qword_27F5B8440 != -1)
  {
    swift_once();
  }

  v8 = off_27F5BA5F8;
  v9 = *(off_27F5BA5F8 + 2);
  if (v9)
  {

    result = sub_25418E184(v9);
    if ((result & 0x8000000000000000) != 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v11 = result;
    if (result >= v8[2])
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v12 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
    v13 = *(v12 - 8);
    sub_2541C6938(v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11, v3, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);

    (*(v13 + 56))(v3, 0, 1, v12);
  }

  else
  {
    v12 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  }

  type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  result = (*(*(v12 - 8) + 48))(v3, 1, v12);
  if (result != 1)
  {
    if (qword_27F5B8448 != -1)
    {
      result = swift_once();
    }

    v14 = off_27F5BA600;
    v15 = *(off_27F5BA600 + 2);
    if (!v15)
    {
      goto LABEL_20;
    }

    result = sub_25418E184(v15);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v14 + 2))
    {
      v16 = v14[result + 16];

      result = sub_2541C62C8(v3, v7 + v6, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
      *(v7 + v6 + *(v4 + 20)) = v16;
      qword_27F5BA5E0 = v7;
      return result;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2541BFF48(uint64_t a1)
{
  v2 = sub_2541C6BE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541BFF84(uint64_t a1)
{
  v2 = sub_2541C6BE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.init(endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.random.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25424D8B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  result = sub_25424D8A8();
  if (qword_27F5B8438 != -1)
  {
    result = swift_once();
  }

  if (COERCE__INT64(fabs(*(&xmmword_27F5BA5E8 + 1) - *&xmmword_27F5BA5E8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_2541B1390(0x20000000000001uLL);
    sub_25424D7D8();
    (*(v3 + 8))(v7, v2);
    return (*(v3 + 32))(a1, v9, v2);
  }

  return result;
}

double sub_2541C01F4()
{
  result = 7200.0;
  xmmword_27F5BA5E8 = xmmword_254259FC0;
  return result;
}

uint64_t sub_2541C0228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25424EAB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2541C02B0(uint64_t a1)
{
  v2 = sub_2541C620C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C02EC(uint64_t a1)
{
  v2 = sub_2541C620C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA608, &qword_254259FD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C620C();
  sub_25424EC78();
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B8C78, MEMORY[0x277CC9578]);
  sub_25424EA18();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.hash(into:)()
{
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578]);

  return sub_25424DC28();
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.hashValue.getter()
{
  sub_25424EBD8();
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  return sub_25424EC28();
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_25424D8B8();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA618, &qword_254259FD8);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C620C();
  sub_25424EC68();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_2541C6260(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
    sub_25424E978();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_2541C62C8(v14, v17, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2541C0860(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA608, &qword_254259FD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C620C();
  sub_25424EC78();
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B8C78, MEMORY[0x277CC9578]);
  sub_25424EA18();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2541C09D8()
{
  sub_25424EBD8();
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  return sub_25424EC28();
}

uint64_t sub_2541C0A60()
{
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578]);

  return sub_25424DC28();
}

uint64_t sub_2541C0AE4()
{
  sub_25424EBD8();
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  return sub_25424EC28();
}

uint64_t sub_2541C0B6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA18, &qword_25425B710);
  v0 = *(type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_254254360;
  result = static ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.random.getter(v3 + v2);
  off_27F5BA5F8 = v3;
  return result;
}

uint64_t static ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA620, &qword_254259FE0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v18 - v14;
  v16 = *(v13 + 56);
  sub_2541C6938(a1, &v18 - v14, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C6938(a2, &v15[v16], type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v15, v10, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  sub_2541C62C8(&v15[v16], v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  LOBYTE(a2) = _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0();
  sub_2541C69A0(v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  sub_2541C69A0(v10, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  return a2 & 1;
}

uint64_t sub_2541C0E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000254251120 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_25424EAB8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2541C0E94(uint64_t a1)
{
  v2 = sub_2541C6330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C0ED0(uint64_t a1)
{
  v2 = sub_2541C6330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C0F0C(uint64_t a1)
{
  v2 = sub_2541C6384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C0F48(uint64_t a1)
{
  v2 = sub_2541C6384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.encode(to:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA628, &qword_254259FE8);
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - v4;
  v6 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA630, &qword_254259FF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6330();
  sub_25424EC78();
  sub_2541C6938(v18, v9, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C6384();
  sub_25424E9A8();
  type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  sub_2541C6260(&qword_27F5BA648, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  v16 = v19;
  sub_25424EA18();
  sub_2541C69A0(v9, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  (*(v2 + 8))(v5, v16);
  return (*(v11 + 8))(v14, v10);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.hash(into:)()
{
  v1 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541C6938(v0, v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v8, v4, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  return sub_2541C69A0(v4, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.hashValue.getter()
{
  v1 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424EBD8();
  sub_2541C6938(v0, v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v8, v4, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  sub_2541C69A0(v4, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  return sub_25424EC28();
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v27 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  v3 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA650, &qword_254259FF8);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA658, &unk_25425A000);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6330();
  v15 = v35;
  sub_25424EC68();
  if (v15)
  {
    goto LABEL_10;
  }

  v35 = a1;
  v17 = v28;
  v16 = v29;
  v18 = sub_25424E988();
  v19 = (2 * *(v18 + 16)) | 1;
  v31 = v18;
  v32 = v18 + 32;
  v33 = 0;
  v34 = v19;
  v20 = v13;
  if ((sub_25414087C() & 1) != 0 || v33 != v34 >> 1)
  {
    v22 = sub_25424E6F8();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
    *v24 = v27;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v30 + 8))(v20, v10);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_10:
    v21 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  sub_2541C6384();
  sub_25424E8F8();
  type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  sub_2541C6260(&qword_27F5BA660, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  v27 = v13;
  sub_25424E978();
  (*(v17 + 8))(v9, v6);
  (*(v30 + 8))(v27, v10);
  swift_unknownObjectRelease();
  sub_2541C62C8(v5, v16, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  v21 = v35;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_2541C1980(uint64_t a1)
{
  v3 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424EBD8();
  sub_2541C6938(v1, v10, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v10, v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  sub_2541C69A0(v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  return sub_25424EC28();
}

uint64_t sub_2541C1B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541C6938(v2, v11, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v11, v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  return sub_2541C69A0(v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
}

uint64_t sub_2541C1C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424EBD8();
  sub_2541C6938(v2, v11, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v11, v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  sub_2541C69A0(v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  return sub_25424EC28();
}

uint64_t sub_2541C1E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA620, &qword_254259FE0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v18 - v14;
  v16 = *(v13 + 56);
  sub_2541C6938(a1, &v18 - v14, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C6938(a2, &v15[v16], type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v15, v10, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  sub_2541C62C8(&v15[v16], v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  LOBYTE(a2) = _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0();
  sub_2541C69A0(v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  sub_2541C69A0(v10, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  return a2 & 1;
}

uint64_t sub_2541C1FE0(uint64_t a1)
{
  v2 = sub_2541C6480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C201C(uint64_t a1)
{
  v2 = sub_2541C6480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C2058(uint64_t a1)
{
  v2 = sub_2541C642C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C2094(uint64_t a1)
{
  v2 = sub_2541C642C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2541C20D0()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0x4572656E61656C63;
  }

  *v0;
  return result;
}

uint64_t sub_2541C211C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4572656E61656C63 && a2 == 0xED0000796772656ELL;
  if (v6 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000254251140 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_2541C2208(uint64_t a1)
{
  v2 = sub_2541C63D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C2244(uint64_t a1)
{
  v2 = sub_2541C63D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.EndCondition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA668, &qword_25425A010);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA670, &qword_25425A018);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA678, &qword_25425A020);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C63D8();
  sub_25424EC78();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_2541C642C();
    v18 = v22;
    sub_25424E9A8();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_2541C6480();
    sub_25424E9A8();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.EndCondition.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA698, &qword_25425A028);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6A0, &qword_25425A030);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6A8, &qword_25425A038);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C63D8();
  v16 = v36;
  sub_25424EC68();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_25424E988();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_254140878();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_25424E6F8();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
      *v26 = &type metadata for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.EndCondition;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_2541C642C();
        sub_25424E8F8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_2541C6480();
        sub_25424E8F8();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t static ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.random.getter@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25418E184(2uLL);
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    v3 = byte_286633708[result + 32];
    result = sub_25418E184(2uLL);
    if (result <= 1)
    {
      v4 = byte_286633730[result + 32];
      *a1 = v3;
      a1[1] = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2541C2B20()
{
  if (*v0)
  {
    result = 0x69646E6F43646E65;
  }

  else
  {
    result = 0x53676E696E6E7572;
  }

  *v0;
  return result;
}

uint64_t sub_2541C2B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x53676E696E6E7572 && a2 == 0xEC00000065746174;
  if (v6 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69646E6F43646E65 && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_2541C2C50(uint64_t a1)
{
  v2 = sub_2541C64D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C2C8C(uint64_t a1)
{
  v2 = sub_2541C64D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6B0, &qword_25425A040);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C64D4();
  sub_25424EC78();
  v17 = v9;
  v16 = 0;
  sub_2541C6528();
  sub_25424EA18();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_2541C657C();
    sub_25424EA18();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x259C06AA0](*v0);
  return MEMORY[0x259C06AA0](v1);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6D0, &qword_25425A048);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C64D4();
  sub_25424EC68();
  if (!v2)
  {
    v17 = 0;
    sub_2541C65D0();
    sub_25424E978();
    v11 = v18;
    v15 = 1;
    sub_2541C6624();
    sub_25424E978();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2541C3108()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t sub_2541C3168()
{
  v1 = v0[1];
  MEMORY[0x259C06AA0](*v0);
  return MEMORY[0x259C06AA0](v1);
}

uint64_t sub_2541C31A8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

unint64_t sub_2541C322C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA10, &qword_25425B708);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2542542D0;
  *(v0 + 32) = 2;
  result = static ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.random.getter(v3);
  if (v3[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 34) = v2 | v3[0];
  off_27F5BA600 = v0;
  return result;
}

uint64_t sub_2541C32D8()
{
  if (*v0)
  {
    return 1952540008;
  }

  else
  {
    return 1819242339;
  }
}

uint64_t sub_2541C32FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1819242339 && a2 == 0xE400000000000000;
  if (v5 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1952540008 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_2541C33D8(uint64_t a1)
{
  v2 = sub_2541C6678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C3414(uint64_t a1)
{
  v2 = sub_2541C6678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C3450(uint64_t a1)
{
  v2 = sub_2541C6720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C348C(uint64_t a1)
{
  v2 = sub_2541C6720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C34C8(uint64_t a1)
{
  v2 = sub_2541C66CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C3504(uint64_t a1)
{
  v2 = sub_2541C66CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PausedRunningState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6E8, &qword_25425A050);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6F0, &qword_25425A058);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6F8, &qword_25425A060);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6678();
  sub_25424EC78();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_2541C66CC();
    v18 = v22;
    sub_25424E9A8();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_2541C6720();
    sub_25424E9A8();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PausedRunningState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA718, &qword_25425A068);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA720, &qword_25425A070);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA728, &qword_25425A078);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6678();
  v16 = v36;
  sub_25424EC68();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_25424E988();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_254140878();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_25424E6F8();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
      *v26 = &type metadata for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PausedRunningState;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_2541C66CC();
        sub_25424E8F8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_2541C6720();
        sub_25424E8F8();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

BOOL static ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.== infix(_:_:)(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    return v2 == 2;
  }

  if (v2 == 2)
  {
    return 0;
  }

  return ((*a2 ^ *a1) & 0x101) == 0;
}

uint64_t sub_2541C3D38()
{
  if (*v0)
  {
    result = 0x646573756170;
  }

  else
  {
    result = 1701736302;
  }

  *v0;
  return result;
}

uint64_t sub_2541C3D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_2541C3E40(uint64_t a1)
{
  v2 = sub_2541C6774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C3E7C(uint64_t a1)
{
  v2 = sub_2541C6774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C3EB8(uint64_t a1)
{
  v2 = sub_2541C6870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C3EF4(uint64_t a1)
{
  v2 = sub_2541C6870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C3F30(uint64_t a1)
{
  v2 = sub_2541C67C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C3F6C(uint64_t a1)
{
  v2 = sub_2541C67C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA730, &qword_25425A080);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA738, &qword_25425A088);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA740, &qword_25425A090);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6774();
  sub_25424EC78();
  if (v15 == 2)
  {
    v25 = 0;
    sub_2541C6870();
    sub_25424E9A8();
    (*(v20 + 8))(v9, v21);
  }

  else
  {
    v27 = 1;
    sub_2541C67C8();
    v18 = v22;
    sub_25424E9A8();
    v26 = v15 & 0x101;
    sub_2541C681C();
    v19 = v24;
    sub_25424EA18();
    (*(v23 + 8))(v18, v19);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v1 & 1);
    v2 = (v1 >> 8) & 1;
  }

  return MEMORY[0x259C06AA0](v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.hashValue.getter()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v1 & 1);
    v2 = (v1 >> 8) & 1;
  }

  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.init(from:)@<X0>(uint64_t *a1@<X0>, __int16 *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA768, &qword_25425A098);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA770, &qword_25425A0A0);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA778, &unk_25425A0A8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2541C6774();
  v19 = v44;
  sub_25424EC68();
  if (!v19)
  {
    v44 = v13;
    v21 = v42;
    v20 = v43;
    v22 = sub_25424E988();
    v23 = (2 * *(v22 + 16)) | 1;
    v46 = v22;
    v47 = v22 + 32;
    v48 = 0;
    v49 = v23;
    v24 = sub_254140878();
    if (v24 == 2 || v48 != v49 >> 1)
    {
      v28 = sub_25424E6F8();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
      *v30 = &type metadata for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v44 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v24)
      {
        v50 = 1;
        sub_2541C67C8();
        v25 = v16;
        v26 = v7;
        sub_25424E8F8();
        v27 = v44;
        v35 = v20;
        sub_2541C68C4();
        v36 = v26;
        v37 = v40;
        sub_25424E978();
        (*(v41 + 8))(v36, v37);
        (*(v27 + 8))(v25, v12);
        swift_unknownObjectRelease();
        if (v51)
        {
          v38 = 256;
        }

        else
        {
          v38 = 0;
        }

        v39 = v38 | v50;
      }

      else
      {
        v50 = 0;
        sub_2541C6870();
        v33 = v11;
        sub_25424E8F8();
        v34 = v44;
        v35 = v20;
        (*(v21 + 8))(v33, v8);
        (*(v34 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v39 = 2;
      }

      *v35 = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_2541C48A4()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v1 & 1);
    v2 = (v1 >> 8) & 1;
  }

  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t sub_2541C4914()
{
  v1 = *v0;
  if (*v0 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v1 & 1);
    v2 = (v1 >> 8) & 1;
  }

  return MEMORY[0x259C06AA0](v2);
}

uint64_t sub_2541C4968()
{
  v1 = *v0;
  sub_25424EBD8();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v1 & 1);
    v2 = (v1 >> 8) & 1;
  }

  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

BOOL sub_2541C49FC(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    return v2 == 2;
  }

  if (v2 == 2)
  {
    return 0;
  }

  return ((*a2 ^ *a1) & 0x101) == 0;
}

uint64_t ThermostatReducedEnergyAutomationEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ThermostatReducedEnergyAutomationEvent.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ThermostatReducedEnergyAutomationEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThermostatReducedEnergyAutomationEvent.accessoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ThermostatReducedEnergyAutomationEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

uint64_t ThermostatReducedEnergyAutomationEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = type metadata accessor for AccessoryEventBase(0);
  v17 = v16[9];
  v18 = sub_25424D948();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  v20 = sub_25424D8B8();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for EventBase(0);
  v22 = *(v19 + 32);
  v22(a9 + v21[5], a2, v18);
  *(a9 + v21[6]) = 3;
  v23 = (a9 + v21[7]);
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 15;
  v22(a9 + v16[5], a3, v18);
  v24 = (a9 + v16[6]);
  *v24 = a4;
  v24[1] = a5;
  v22(a9 + v16[7], a6, v18);
  v25 = (a9 + v16[8]);
  *v25 = a7;
  v25[1] = a8;
  v26 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  return sub_2541C62C8(a10, a9 + *(v26 + 20), type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
}

uint64_t ThermostatReducedEnergyAutomationEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8F00, &unk_25425B800);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v25);
  sub_254232240(v25, v16);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v5;
  v24 = v12;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25412F1C4();
  sub_25424EC68();
  LOBYTE(v25[0]) = 0;
  sub_2541C6260(&qword_27F5BA788, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
  v18 = v24;
  sub_25424E978();
  (*(v23 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v26;
  sub_2541C62C8(v16, v26, type metadata accessor for AccessoryEventBase);
  v20 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  return sub_2541C62C8(v18, v19 + *(v20 + 20), type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
}

uint64_t ThermostatReducedEnergyAutomationEvent.encode(to:)(void *a1)
{
  v38 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - v5;
  v6 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25424D8B8();
  (*(*(v11 - 8) + 16))(v10, v2, v11);
  v12 = type metadata accessor for EventBase(0);
  v13 = *(v12 + 20);
  v14 = v7[7];
  v15 = sub_25424D948();
  v16 = *(*(v15 - 8) + 16);
  v16(&v10[v14], v2 + v13, v15);
  v40 = *(v2 + *(v12 + 24));
  v17 = type metadata accessor for AccessoryEventBase(0);
  v16(&v10[v7[9]], v2 + v17[5], v15);
  v18 = (v2 + v17[6]);
  v20 = *v18;
  v19 = v18[1];
  v16(&v10[v7[11]], v2 + v17[7], v15);
  v21 = v38;
  v22 = v17[9];
  v23 = (v2 + v17[8]);
  v24 = *v23;
  v25 = v23[1];
  sub_254149770(v2 + v22, &v10[v7[13]]);
  v10[v7[8]] = v40;
  v26 = &v10[v7[10]];
  *v26 = v20;
  *(v26 + 1) = v19;
  v27 = &v10[v7[12]];
  *v27 = v24;
  *(v27 + 1) = v25;

  v28 = v39;
  sub_25423298C(v21);
  result = sub_2541C69A0(v10, type metadata accessor for AccessoryEventBase.DocumentLayout);
  if (!v28)
  {
    v30 = *(type metadata accessor for ThermostatReducedEnergyAutomationEvent(0) + 20);
    v31 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_25412F1C4();
    v32 = v35;
    sub_25424EC78();
    v41 = 0;
    type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
    sub_2541C6260(&qword_27F5BA790, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
    v33 = v37;
    sub_25424EA18();
    return (*(v36 + 8))(v32, v33);
  }

  return result;
}

uint64_t static ThermostatReducedEnergyAutomationEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for ThermostatReducedEnergyAutomationEvent(0) + 20);

  return _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV5StateV2eeoiySbAE_AEtFZ_0(a1 + v4, a2 + v4);
}

uint64_t ThermostatReducedEnergyAutomationEvent.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25424D948();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v36 - v16;
  v18 = sub_25424D8B8();
  v36[1] = sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  v36[2] = v18;
  sub_25424DC28();
  v19 = type metadata accessor for EventBase(0);
  v20 = *(v19 + 20);
  sub_2541C6260(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425B730[*(v1 + *(v19 + 24))]);
  v21 = type metadata accessor for AccessoryEventBase(0);
  v22 = v1 + v21[5];
  sub_25424DC28();
  v23 = (v1 + v21[6]);
  v24 = *v23;
  v25 = v23[1];
  sub_25424DD88();
  v26 = v1 + v21[7];
  sub_25424DC28();
  v27 = (v1 + v21[8]);
  v28 = *v27;
  v29 = v27[1];
  sub_25424DD88();
  sub_254149770(v1 + v21[9], v17);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v10 + 8))(v13, v9);
  }

  v30 = v1 + *(type metadata accessor for ThermostatReducedEnergyAutomationEvent(0) + 20);
  v31 = v37;
  sub_2541C6938(v30, v37, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v31, v5, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424DC28();
  sub_2541C69A0(v5, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  v32 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  v33 = 0;
  v34 = *(v30 + *(v32 + 20));
  if (*(v30 + *(v32 + 20)) != 2)
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v34 & 1);
    v33 = (v34 >> 8) & 1;
  }

  return MEMORY[0x259C06AA0](v33);
}

uint64_t sub_2541C595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((j___s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV5StateV2eeoiySbAE_AEtFZ_0(a1 + v6, a2 + v6);
}

uint64_t ThermostatReducedEnergyAutomationEvent.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA798, &qword_25425A0B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6BE8();
  sub_25424EC78();
  v14 = 0;
  type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  sub_2541C6260(&qword_27F5BA7A8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_25424EA18();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0) + 20));
    v12[11] = 1;
    sub_2541C6C3C();
    sub_25424EA18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ThermostatReducedEnergyAutomationEvent.State.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541C6938(v1, v9, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v9, v5, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  sub_2541C69A0(v5, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  v10 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  v11 = 0;
  v12 = *(v1 + *(v10 + 20));
  if (v12 != 2)
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v12 & 1);
    v11 = (v12 >> 8) & 1;
  }

  return MEMORY[0x259C06AA0](v11);
}

uint64_t sub_2541C5DAC(void (*a1)(_BYTE *))
{
  sub_25424EBD8();
  a1(v3);
  return sub_25424EC28();
}

uint64_t ThermostatReducedEnergyAutomationEvent.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA7B8, &qword_25425A0C0);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6BE8();
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v21;
  v17 = v14;
  v26 = 0;
  sub_2541C6260(&qword_27F5BA7C0, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  v18 = v22;
  sub_25424E978();
  sub_2541C62C8(v23, v17, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  v25 = 1;
  sub_2541C6C90();
  sub_25424E978();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v24;
  sub_2541C6938(v17, v20, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2541C69A0(v17, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
}

uint64_t sub_2541C6160(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_25424EBD8();
  a3(v5);
  return sub_25424EC28();
}

uint64_t sub_2541C61C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_25424EBD8();
  a4(v6);
  return sub_25424EC28();
}

unint64_t sub_2541C620C()
{
  result = qword_27F5BA610;
  if (!qword_27F5BA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA610);
  }

  return result;
}

uint64_t sub_2541C6260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2541C62C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2541C6330()
{
  result = qword_27F5BA638;
  if (!qword_27F5BA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA638);
  }

  return result;
}

unint64_t sub_2541C6384()
{
  result = qword_27F5BA640;
  if (!qword_27F5BA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA640);
  }

  return result;
}

unint64_t sub_2541C63D8()
{
  result = qword_27F5BA680;
  if (!qword_27F5BA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA680);
  }

  return result;
}

unint64_t sub_2541C642C()
{
  result = qword_27F5BA688;
  if (!qword_27F5BA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA688);
  }

  return result;
}

unint64_t sub_2541C6480()
{
  result = qword_27F5BA690;
  if (!qword_27F5BA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA690);
  }

  return result;
}

unint64_t sub_2541C64D4()
{
  result = qword_27F5BA6B8;
  if (!qword_27F5BA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA6B8);
  }

  return result;
}

unint64_t sub_2541C6528()
{
  result = qword_27F5BA6C0;
  if (!qword_27F5BA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA6C0);
  }

  return result;
}

unint64_t sub_2541C657C()
{
  result = qword_27F5BA6C8;
  if (!qword_27F5BA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA6C8);
  }

  return result;
}

unint64_t sub_2541C65D0()
{
  result = qword_27F5BA6D8;
  if (!qword_27F5BA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA6D8);
  }

  return result;
}

unint64_t sub_2541C6624()
{
  result = qword_27F5BA6E0;
  if (!qword_27F5BA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA6E0);
  }

  return result;
}

unint64_t sub_2541C6678()
{
  result = qword_27F5BA700;
  if (!qword_27F5BA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA700);
  }

  return result;
}

unint64_t sub_2541C66CC()
{
  result = qword_27F5BA708;
  if (!qword_27F5BA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA708);
  }

  return result;
}

unint64_t sub_2541C6720()
{
  result = qword_27F5BA710;
  if (!qword_27F5BA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA710);
  }

  return result;
}

unint64_t sub_2541C6774()
{
  result = qword_27F5BA748;
  if (!qword_27F5BA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA748);
  }

  return result;
}

unint64_t sub_2541C67C8()
{
  result = qword_27F5BA750;
  if (!qword_27F5BA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA750);
  }

  return result;
}

unint64_t sub_2541C681C()
{
  result = qword_27F5BA758;
  if (!qword_27F5BA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA758);
  }

  return result;
}

unint64_t sub_2541C6870()
{
  result = qword_27F5BA760;
  if (!qword_27F5BA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA760);
  }

  return result;
}

unint64_t sub_2541C68C4()
{
  result = qword_27F5BA780;
  if (!qword_27F5BA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA780);
  }

  return result;
}

uint64_t sub_2541C6938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541C69A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA620, &qword_254259FE0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v23 - v14;
  v16 = *(v13 + 56);
  sub_2541C6938(a1, &v23 - v14, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C6938(a2, v15 + v16, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v15, v10, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  sub_2541C62C8(v15 + v16, v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  LOBYTE(v15) = _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0();
  sub_2541C69A0(v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  sub_2541C69A0(v10, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  if (v15)
  {
    v17 = *(type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0) + 20);
    v18 = *(a1 + v17);
    v19 = *(a2 + v17);
    if (v18 == 2)
    {
      if (v19 == 2)
      {
        return 1;
      }
    }

    else
    {
      v21 = (v19 ^ v18) & 0x1010101;
      if (v19 != 2 && v21 == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_2541C6BE8()
{
  result = qword_27F5BA7A0;
  if (!qword_27F5BA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA7A0);
  }

  return result;
}

unint64_t sub_2541C6C3C()
{
  result = qword_27F5BA7B0;
  if (!qword_27F5BA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA7B0);
  }

  return result;
}

unint64_t sub_2541C6C90()
{
  result = qword_27F5BA7C8;
  if (!qword_27F5BA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA7C8);
  }

  return result;
}

unint64_t sub_2541C6DD8()
{
  result = qword_27F5BA800;
  if (!qword_27F5BA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA800);
  }

  return result;
}

unint64_t sub_2541C6E60()
{
  result = qword_27F5BA818;
  if (!qword_27F5BA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA818);
  }

  return result;
}

unint64_t sub_2541C6EB8()
{
  result = qword_27F5BA820;
  if (!qword_27F5BA820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA820);
  }

  return result;
}

unint64_t sub_2541C6F40()
{
  result = qword_27F5BA838;
  if (!qword_27F5BA838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA838);
  }

  return result;
}

uint64_t sub_2541C6FC4(void *a1)
{
  a1[1] = sub_2541C6260(&qword_27F5BA858, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
  a1[2] = sub_2541C6260(&qword_27F5BA860, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
  result = sub_2541C6260(&qword_27F5BA868, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541C70B8(void *a1)
{
  a1[1] = sub_2541C6260(&qword_27F5BA878, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
  a1[2] = sub_2541C6260(&qword_27F5BA880, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
  result = sub_2541C6260(&qword_27F5BA888, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541C71F4(void *a1)
{
  a1[1] = sub_2541C6260(&qword_27F5BA788, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
  a1[2] = sub_2541C6260(&qword_27F5BA790, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
  result = sub_2541C6260(&qword_27F5BA898, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
  a1[3] = result;
  return result;
}

uint64_t sub_2541C72E8(uint64_t a1)
{
  result = sub_2541C6260(&qword_27F5BA890, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541C7368()
{
  result = type metadata accessor for AccessoryEventBase(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2541C7414()
{
  result = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541C7488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_29Tm);
}

uint64_t sub_2541C74E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_30Tm);
}

uint64_t sub_2541C7548(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = sub_25424D8B8();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_29Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2541C7704()
{
  result = sub_25424D8B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2541C78D4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_WORD *sub_2541C78E8(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_2541C7B74()
{
  result = qword_27F5BA8E8;
  if (!qword_27F5BA8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA8E8);
  }

  return result;
}

unint64_t sub_2541C7BCC()
{
  result = qword_27F5BA8F0;
  if (!qword_27F5BA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA8F0);
  }

  return result;
}

unint64_t sub_2541C7C24()
{
  result = qword_27F5BA8F8;
  if (!qword_27F5BA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA8F8);
  }

  return result;
}

unint64_t sub_2541C7C7C()
{
  result = qword_27F5BA900;
  if (!qword_27F5BA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA900);
  }

  return result;
}

unint64_t sub_2541C7CD4()
{
  result = qword_27F5BA908;
  if (!qword_27F5BA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA908);
  }

  return result;
}

unint64_t sub_2541C7D2C()
{
  result = qword_27F5BA910;
  if (!qword_27F5BA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA910);
  }

  return result;
}

unint64_t sub_2541C7D84()
{
  result = qword_27F5BA918;
  if (!qword_27F5BA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA918);
  }

  return result;
}

unint64_t sub_2541C7DDC()
{
  result = qword_27F5BA920;
  if (!qword_27F5BA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA920);
  }

  return result;
}

unint64_t sub_2541C7E34()
{
  result = qword_27F5BA928;
  if (!qword_27F5BA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA928);
  }

  return result;
}

unint64_t sub_2541C7E8C()
{
  result = qword_27F5BA930;
  if (!qword_27F5BA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA930);
  }

  return result;
}

unint64_t sub_2541C7EE4()
{
  result = qword_27F5BA938;
  if (!qword_27F5BA938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA938);
  }

  return result;
}

unint64_t sub_2541C7F3C()
{
  result = qword_27F5BA940;
  if (!qword_27F5BA940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA940);
  }

  return result;
}

unint64_t sub_2541C7F94()
{
  result = qword_27F5BA948;
  if (!qword_27F5BA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA948);
  }

  return result;
}

unint64_t sub_2541C7FEC()
{
  result = qword_27F5BA950;
  if (!qword_27F5BA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA950);
  }

  return result;
}

unint64_t sub_2541C8044()
{
  result = qword_27F5BA958;
  if (!qword_27F5BA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA958);
  }

  return result;
}

unint64_t sub_2541C809C()
{
  result = qword_27F5BA960;
  if (!qword_27F5BA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA960);
  }

  return result;
}

unint64_t sub_2541C80F4()
{
  result = qword_27F5BA968;
  if (!qword_27F5BA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA968);
  }

  return result;
}

unint64_t sub_2541C814C()
{
  result = qword_27F5BA970;
  if (!qword_27F5BA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA970);
  }

  return result;
}

unint64_t sub_2541C81A4()
{
  result = qword_27F5BA978;
  if (!qword_27F5BA978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA978);
  }

  return result;
}

unint64_t sub_2541C81FC()
{
  result = qword_27F5BA980;
  if (!qword_27F5BA980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA980);
  }

  return result;
}

unint64_t sub_2541C8254()
{
  result = qword_27F5BA988;
  if (!qword_27F5BA988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA988);
  }

  return result;
}

unint64_t sub_2541C82AC()
{
  result = qword_27F5BA990;
  if (!qword_27F5BA990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA990);
  }

  return result;
}

unint64_t sub_2541C8304()
{
  result = qword_27F5BA998;
  if (!qword_27F5BA998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA998);
  }

  return result;
}

unint64_t sub_2541C835C()
{
  result = qword_27F5BA9A0;
  if (!qword_27F5BA9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9A0);
  }

  return result;
}

unint64_t sub_2541C83B4()
{
  result = qword_27F5BA9A8;
  if (!qword_27F5BA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9A8);
  }

  return result;
}

unint64_t sub_2541C840C()
{
  result = qword_27F5BA9B0;
  if (!qword_27F5BA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9B0);
  }

  return result;
}

unint64_t sub_2541C8464()
{
  result = qword_27F5BA9B8;
  if (!qword_27F5BA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9B8);
  }

  return result;
}

unint64_t sub_2541C84BC()
{
  result = qword_27F5BA9C0;
  if (!qword_27F5BA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9C0);
  }

  return result;
}

unint64_t sub_2541C8514()
{
  result = qword_27F5BA9C8;
  if (!qword_27F5BA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9C8);
  }

  return result;
}

unint64_t sub_2541C856C()
{
  result = qword_27F5BA9D0;
  if (!qword_27F5BA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9D0);
  }

  return result;
}

unint64_t sub_2541C85C4()
{
  result = qword_27F5BA9D8;
  if (!qword_27F5BA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9D8);
  }

  return result;
}

unint64_t sub_2541C861C()
{
  result = qword_27F5BA9E0;
  if (!qword_27F5BA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9E0);
  }

  return result;
}

unint64_t sub_2541C8674()
{
  result = qword_27F5BA9E8;
  if (!qword_27F5BA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9E8);
  }

  return result;
}

unint64_t sub_2541C86CC()
{
  result = qword_27F5BA9F0;
  if (!qword_27F5BA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9F0);
  }

  return result;
}

unint64_t sub_2541C8724()
{
  result = qword_27F5BA9F8;
  if (!qword_27F5BA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9F8);
  }

  return result;
}

unint64_t sub_2541C877C()
{
  result = qword_27F5BAA00;
  if (!qword_27F5BAA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA00);
  }

  return result;
}

unint64_t sub_2541C87D4()
{
  result = qword_27F5BAA08;
  if (!qword_27F5BAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA08);
  }

  return result;
}

unint64_t sub_2541C8854()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BACA8, &unk_25425C548);
  result = swift_allocObject();
  v1 = result;
  *(result + 16) = xmmword_254254360;
  if (qword_27F5B8458 != -1)
  {
    result = swift_once();
  }

  v2 = off_27F5BAA38;
  v3 = *(off_27F5BAA38 + 2);
  if (!v3)
  {
    v4 = 4;
    goto LABEL_8;
  }

  result = sub_25418E184(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v2 + 2))
  {
    v4 = v2[result + 32];

LABEL_8:
    *(v1 + 32) = v4;
    qword_27F5BAA30 = v1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2541C896C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25424EAB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2541C89F0(uint64_t a1)
{
  v2 = sub_2541CBC64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C8A2C(uint64_t a1)
{
  v2 = sub_2541CBC64();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2541C8A8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BACA0, &qword_25425C540);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_254254360;
  result = sub_25418E184(4uLL);
  if (result > 3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = byte_2866337F8[result + 32];
    off_27F5BAA38 = v0;
  }

  return result;
}

BOOL static ThermostatAutomationFailureEvent.ThermostatAutomationFailureReason.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_2541C8B74(uint64_t a1)
{
  v2 = sub_2541C96D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C8BB0(uint64_t a1)
{
  v2 = sub_2541C96D8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2541C8BEC()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x6E776F6E6B6E75;
  }

  *v0;
  return result;
}

uint64_t sub_2541C8C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v6 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000254251160 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_2541C8D10(uint64_t a1)
{
  v2 = sub_2541C9684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C8D4C(uint64_t a1)
{
  v2 = sub_2541C9684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C8D88(uint64_t a1)
{
  v2 = sub_2541C9780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C8DC4(uint64_t a1)
{
  v2 = sub_2541C9780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationFailureEvent.ThermostatAutomationFailureReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA40, &qword_25425B770);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA48, &qword_25425B778);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA50, &qword_25425B780);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C9684();
  sub_25424EC78();
  if (v15 == 4)
  {
    v25 = 0;
    sub_2541C9780();
    sub_25424E9A8();
    (*(v20 + 8))(v9, v21);
  }

  else
  {
    v27 = 1;
    sub_2541C96D8();
    v18 = v22;
    sub_25424E9A8();
    v26 = v15;
    sub_2541C972C();
    v19 = v24;
    sub_25424EA18();
    (*(v23 + 8))(v18, v19);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t ThermostatAutomationFailureEvent.ThermostatAutomationFailureReason.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA78, &qword_25425B788);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA80, &qword_25425B790);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA88, &unk_25425B798);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2541C9684();
  v19 = v41;
  sub_25424EC68();
  if (!v19)
  {
    v41 = v13;
    v21 = v39;
    v20 = v40;
    v22 = sub_25424E988();
    v23 = (2 * *(v22 + 16)) | 1;
    v43 = v22;
    v44 = v22 + 32;
    v45 = 0;
    v46 = v23;
    v24 = sub_254140878();
    if (v24 == 2 || v45 != v46 >> 1)
    {
      v28 = sub_25424E6F8();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
      *v30 = &type metadata for ThermostatAutomationFailureEvent.ThermostatAutomationFailureReason;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v41 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v24)
      {
        v47 = 1;
        sub_2541C96D8();
        v25 = v16;
        v26 = v7;
        sub_25424E8F8();
        v27 = v41;
        sub_2541CA620();
        v34 = v26;
        v35 = v37;
        sub_25424E978();
        (*(v38 + 8))(v34, v35);
        (*(v27 + 8))(v25, v12);
        swift_unknownObjectRelease();
        v36 = v47;
      }

      else
      {
        v47 = 0;
        sub_2541C9780();
        sub_25424E8F8();
        v33 = v41;
        (*(v21 + 8))(v11, v8);
        (*(v33 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v36 = 4;
      }

      *v20 = v36;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

BOOL sub_2541C9634(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_2541C9684()
{
  result = qword_27F5BAA58;
  if (!qword_27F5BAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA58);
  }

  return result;
}

unint64_t sub_2541C96D8()
{
  result = qword_27F5BAA60;
  if (!qword_27F5BAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA60);
  }

  return result;
}

unint64_t sub_2541C972C()
{
  result = qword_27F5BAA68;
  if (!qword_27F5BAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA68);
  }

  return result;
}

unint64_t sub_2541C9780()
{
  result = qword_27F5BAA70;
  if (!qword_27F5BAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA70);
  }

  return result;
}

unint64_t sub_2541C97D4()
{
  v1 = 0x48676E696F676E6FLL;
  v2 = 0x696E696665646E69;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_2541C9868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2541CCD38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2541C9890(uint64_t a1)
{
  v2 = sub_2541CA674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C98CC(uint64_t a1)
{
  v2 = sub_2541CA674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C9908(uint64_t a1)
{
  v2 = sub_2541CA7C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C9944(uint64_t a1)
{
  v2 = sub_2541CA7C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C9980(uint64_t a1)
{
  v2 = sub_2541CA71C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C99BC(uint64_t a1)
{
  v2 = sub_2541CA71C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C99F8(uint64_t a1)
{
  v2 = sub_2541CA770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C9A34(uint64_t a1)
{
  v2 = sub_2541CA770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C9A70(uint64_t a1)
{
  v2 = sub_2541CA6C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C9AAC(uint64_t a1)
{
  v2 = sub_2541CA6C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationFailureEvent.AccessoryRestrictionDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA98, &qword_25425B7A8);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAA0, &qword_25425B7B0);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAA8, &qword_25425B7B8);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAB0, &qword_25425B7C0);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAB8, &qword_25425B7C8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541CA674();
  sub_25424EC78();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_2541CA71C();
      v24 = v33;
      sub_25424E9A8();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_2541CA6C8();
      v24 = v36;
      sub_25424E9A8();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_2541CA770();
    v24 = v30;
    sub_25424E9A8();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_2541CA7C4();
  sub_25424E9A8();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t ThermostatAutomationFailureEvent.AccessoryRestrictionDetails.hashValue.getter()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

uint64_t ThermostatAutomationFailureEvent.AccessoryRestrictionDetails.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAE8, &qword_25425B7D0);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAF0, &qword_25425B7D8);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAF8, &qword_25425B7E0);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAB00, &qword_25425B7E8);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAB08, &unk_25425B7F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2541CA674();
  v21 = v53;
  sub_25424EC68();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_25424E988();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_254140880();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_25424E6F8();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
      *v34 = &type metadata for ThermostatAutomationFailureEvent.AccessoryRestrictionDetails;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_2541CA770();
        v39 = v42;
        sub_25424E8F8();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_2541CA7C4();
        v31 = v42;
        sub_25424E8F8();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_2541CA71C();
      v38 = v42;
      sub_25424E8F8();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_2541CA6C8();
      v40 = v42;
      sub_25424E8F8();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

unint64_t sub_2541CA620()
{
  result = qword_27F5BAA90;
  if (!qword_27F5BAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA90);
  }

  return result;
}

unint64_t sub_2541CA674()
{
  result = qword_27F5BAAC0;
  if (!qword_27F5BAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAAC0);
  }

  return result;
}

unint64_t sub_2541CA6C8()
{
  result = qword_27F5BAAC8;
  if (!qword_27F5BAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAAC8);
  }

  return result;
}

unint64_t sub_2541CA71C()
{
  result = qword_27F5BAAD0;
  if (!qword_27F5BAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAAD0);
  }

  return result;
}

unint64_t sub_2541CA770()
{
  result = qword_27F5BAAD8;
  if (!qword_27F5BAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAAD8);
  }

  return result;
}

unint64_t sub_2541CA7C4()
{
  result = qword_27F5BAAE0;
  if (!qword_27F5BAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAAE0);
  }

  return result;
}

uint64_t ThermostatAutomationFailureEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ThermostatAutomationFailureEvent();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for ThermostatAutomationFailureEvent()
{
  result = qword_27F5BABE0;
  if (!qword_27F5BABE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ThermostatAutomationFailureEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ThermostatAutomationFailureEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ThermostatAutomationFailureEvent.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ThermostatAutomationFailureEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThermostatAutomationFailureEvent.accessoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ThermostatAutomationFailureEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

uint64_t ThermostatAutomationFailureEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v28 = *a10;
  v16 = type metadata accessor for AccessoryEventBase(0);
  v17 = v16[9];
  v18 = sub_25424D948();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  v20 = sub_25424D8B8();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for EventBase(0);
  v22 = *(v19 + 32);
  v22(a9 + v21[5], a2, v18);
  *(a9 + v21[6]) = 3;
  v23 = (a9 + v21[7]);
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 15;
  v22(a9 + v16[5], a3, v18);
  v24 = (a9 + v16[6]);
  *v24 = a4;
  v24[1] = a5;
  v22(a9 + v16[7], a6, v18);
  v25 = (a9 + v16[8]);
  *v25 = a7;
  v25[1] = a8;
  result = type metadata accessor for ThermostatAutomationFailureEvent();
  *(a9 + *(result + 20)) = v28;
  return result;
}

uint64_t ThermostatAutomationFailureEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8F00, &unk_25425B800);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-1] - v8;
  v10 = type metadata accessor for AccessoryEventBase(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v19);
  sub_254232240(v19, v13);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a2;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25412F1C4();
  sub_25424EC68();
  v20 = 0;
  sub_2541CAEA4();
  sub_25424E978();
  (*(v6 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v15 = v19[0];
  v16 = v18;
  sub_2541CAEF8(v13, v18);
  result = type metadata accessor for ThermostatAutomationFailureEvent();
  *(v16 + *(result + 20)) = v15;
  return result;
}

unint64_t sub_2541CAEA4()
{
  result = qword_27F5BAB10;
  if (!qword_27F5BAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB10);
  }

  return result;
}

uint64_t sub_2541CAEF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryEventBase(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ThermostatAutomationFailureEvent.encode(to:)(void *a1)
{
  v37 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - v5;
  v6 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25424D8B8();
  (*(*(v11 - 8) + 16))(v10, v2, v11);
  v12 = type metadata accessor for EventBase(0);
  v13 = *(v12 + 20);
  v14 = v7[7];
  v15 = sub_25424D948();
  v16 = *(*(v15 - 8) + 16);
  v16(&v10[v14], v2 + v13, v15);
  v39 = *(v2 + *(v12 + 24));
  v17 = type metadata accessor for AccessoryEventBase(0);
  v16(&v10[v7[9]], v2 + v17[5], v15);
  v18 = (v2 + v17[6]);
  v19 = *v18;
  v20 = v18[1];
  v16(&v10[v7[11]], v2 + v17[7], v15);
  v21 = v17[9];
  v22 = (v2 + v17[8]);
  v23 = *v22;
  v24 = v22[1];
  sub_254149770(v2 + v21, &v10[v7[13]]);
  v10[v7[8]] = v39;
  v25 = &v10[v7[10]];
  *v25 = v19;
  *(v25 + 1) = v20;
  v26 = v37;
  v27 = &v10[v7[12]];
  *v27 = v23;
  *(v27 + 1) = v24;

  v28 = v38;
  sub_25423298C(v26);
  result = sub_2541CBBB0(v10, type metadata accessor for AccessoryEventBase.DocumentLayout);
  if (!v28)
  {
    v41 = *(v2 + *(type metadata accessor for ThermostatAutomationFailureEvent() + 20));
    v30 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_25412F1C4();
    v31 = v34;
    sub_25424EC78();
    v40 = 0;
    sub_2541CBC10();
    v32 = v36;
    sub_25424EA18();
    return (*(v35 + 8))(v31, v32);
  }

  return result;
}

uint64_t static ThermostatAutomationFailureEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    v4 = *(type metadata accessor for ThermostatAutomationFailureEvent() + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5 == 4)
    {
      if (v6 == 4)
      {
        return 1;
      }
    }

    else if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ThermostatAutomationFailureEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  sub_25424D8B8();
  sub_2541CC040(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  sub_2541CC040(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425C558[*(v1 + *(v11 + 24))]);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = v1 + v13[5];
  sub_25424DC28();
  v15 = (v1 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_25424DD88();
  v18 = v1 + v13[7];
  sub_25424DC28();
  v19 = (v1 + v13[8]);
  v20 = *v19;
  v21 = v19[1];
  sub_25424DD88();
  sub_254149770(v1 + v13[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v6, v2);
  }

  v22 = type metadata accessor for ThermostatAutomationFailureEvent();
  v23 = 0;
  v24 = *(v1 + *(v22 + 20));
  if (v24 != 4)
  {
    MEMORY[0x259C06AA0](1);
    v23 = v24;
  }

  return MEMORY[0x259C06AA0](v23);
}