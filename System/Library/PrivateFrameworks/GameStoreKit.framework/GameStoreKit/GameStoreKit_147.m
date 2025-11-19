uint64_t sub_24F52C324(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F52C380()
{
  result = qword_27F247388;
  if (!qword_27F247388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247348);
    sub_24F52C438();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247388);
  }

  return result;
}

unint64_t sub_24F52C438()
{
  result = qword_27F247390;
  if (!qword_27F247390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247320);
    sub_24F52C4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247390);
  }

  return result;
}

unint64_t sub_24F52C4C4()
{
  result = qword_27F247398;
  if (!qword_27F247398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247318);
    sub_24F52C550();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247398);
  }

  return result;
}

unint64_t sub_24F52C550()
{
  result = qword_27F2473A0;
  if (!qword_27F2473A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247340);
    sub_24E602068(&qword_27F2473A8, &qword_27F247338);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2473A0);
  }

  return result;
}

unint64_t sub_24F52C60C()
{
  result = qword_27F2473B0;
  if (!qword_27F2473B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2473B0);
  }

  return result;
}

unint64_t sub_24F52C664()
{
  result = qword_27F2473B8;
  if (!qword_27F2473B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2473B8);
  }

  return result;
}

unint64_t sub_24F52C6BC()
{
  result = qword_27F2473C0;
  if (!qword_27F2473C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2473C0);
  }

  return result;
}

uint64_t FriendCountFieldsProvider.init(player:buckets:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E70D960(a1, a4);
  v14 = type metadata accessor for FriendCountFieldsProvider(0);
  *(a4 + v14[5]) = a3;
  sub_24E70D960(a1, v13);
  type metadata accessor for FriendCountFieldsProvider.FriendListObserver(0);
  v15 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v15 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_friends) = 0;
  sub_24E70D960(v13, v15 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_player);
  *(v15 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_objectGraph) = a3;
  v16 = sub_24F92B858();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;

  sub_24F1D3DA4(0, 0, v10, &unk_24FA061F0, v17);

  sub_24EBA228C(v13, type metadata accessor for Player);
  result = sub_24EBA228C(a1, type metadata accessor for Player);
  *(a4 + v14[6]) = v15;
  *(a4 + v14[7]) = a2;
  return result;
}

uint64_t FriendCountFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_24F928418();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F52CA28, 0, 0);
}

uint64_t sub_24F52CA28()
{
  *(v0 + 168) = type metadata accessor for FriendCountFieldsProvider(0);
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_24F52CACC;

  return sub_24F52E040();
}

uint64_t sub_24F52CACC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_24F52D01C;
  }

  else
  {
    v4 = sub_24F52CBE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F52CBE0()
{
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[21];
    v3 = v0[19];
    v4 = *(v1 + 16);

    v5 = *(v3 + *(v2 + 28));
    v6 = sub_24F1A78D8(v4, v5);
    if (v7)
    {
      if (qword_27F210580 != -1)
      {
        swift_once();
      }

      v8 = sub_24F92AAE8();
      __swift_project_value_buffer(v8, qword_27F39C3E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      v0[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050);
      v0[6] = v5;

      sub_24F9283D8();
      sub_24E857CC8((v0 + 6));
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A5A8();
    }

    else
    {
      v9 = v0[24];
      v10 = v0[18];
      v0[13] = MEMORY[0x277D83B88];
      v0[10] = v6;
      __swift_mutable_project_boxed_opaque_existential_1(v10, *(v10 + 24));
      sub_24F929A28();
      __swift_destroy_boxed_opaque_existential_1((v0 + 10));
      if (v9)
      {
        if (qword_27F210580 != -1)
        {
          swift_once();
        }

        v11 = sub_24F92AAE8();
        __swift_project_value_buffer(v11, qword_27F39C3E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F928408();
        sub_24F9283F8();
        swift_getErrorValue();
        v12 = v0[14];
        v13 = v0[15];
        v0[5] = v13;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
        (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v12, v13);
        sub_24F9283D8();
        sub_24E857CC8((v0 + 2));
        sub_24F9283F8();
        sub_24F928428();
        sub_24F92A5A8();
      }
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_24F52D01C()
{
  v1 = v0[24];
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  swift_getErrorValue();
  v3 = v0[14];
  v4 = v0[15];
  v0[5] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v3, v4);
  sub_24F9283D8();
  sub_24E857CC8((v0 + 2));
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  v6 = v0[1];

  return v6();
}

uint64_t sub_24F52D244(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return FriendCountFieldsProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t sub_24F52D2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[11] = type metadata accessor for FriendsDataIntent();
  v4[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_24F91F6B8();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F52D498, 0, 0);
}

uint64_t sub_24F52D498()
{
  sub_24F91F6A8();
  *(v0 + 176) = sub_24E802CE0(&unk_2861C23B0);
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = qword_27F252DD0;
  *(v0 + 184) = qword_27F252DD0;
  *(v0 + 272) = 1;

  return MEMORY[0x2822009F8](sub_24F52D550, v1, 0);
}

uint64_t sub_24F52D550()
{
  sub_24F83EC44(*(v0 + 176), *(v0 + 168), (v0 + 272));

  return MEMORY[0x2822009F8](sub_24F52D5D0, 0, 0);
}

uint64_t sub_24F52D5D0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_player;
  v0[24] = OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_objectGraph;
  v0[25] = v4;
  v0[26] = OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_friends;
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_24F52D6CC;
  v6 = v0[16];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v6);
}

uint64_t sub_24F52D6CC()
{

  return MEMORY[0x2822009F8](sub_24F52D7C8, 0, 0);
}

uint64_t sub_24F52D7C8()
{
  if (v0[8])
  {
    v1 = v0[10];

    return MEMORY[0x2822009F8](sub_24F52D8E4, v1, 0);
  }

  else
  {
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[19];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v3 + 8))(v2, v4);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24F52D8E4()
{
  v0[28] = *(v0[10] + v0[24]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_24F52D9AC;

  return MEMORY[0x28217F228](v0 + 2, v1, v1);
}

uint64_t sub_24F52D9AC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_24F52DCE4;
  }

  else
  {
    v4 = sub_24F52DAD8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24F52DAD8()
{
  sub_24E70D960(v0[10] + v0[25], v0[12]);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[31] = v3;
  v4 = sub_24F408D14();
  *v3 = v0;
  v3[1] = sub_24F52DBB8;
  v5 = v0[28];
  v7 = v0[11];
  v6 = v0[12];

  return MEMORY[0x28217F4B0](v0 + 9, v6, v5, v7, v4, v1, v2);
}

uint64_t sub_24F52DBB8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_24F52DDF4;
  }

  else
  {
    v4 = sub_24F52DD08;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24F52DD08()
{
  v1 = v0[26];
  v2 = v0[10];
  sub_24EBA228C(v0[12], type metadata accessor for FriendsDataIntent);
  v3 = v0[9];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  *(v2 + v1) = v3;

  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_24F52D6CC;
  v5 = v0[16];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v5);
}

uint64_t sub_24F52DDF4()
{
  sub_24EBA228C(v0[12], type metadata accessor for FriendsDataIntent);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v0[33] = v0[32];

  return MEMORY[0x2822009F8](sub_24F52DE80, 0, 0);
}

uint64_t sub_24F52DE80()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F52DF4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F52DF8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F52D2D8(a1, v4, v5, v6);
}

uint64_t sub_24F52E060()
{
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v3 = OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_friends;
  v0[3] = OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_friends;
  v4 = *(v1 + v3);
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  if (v4)
  {

    sub_24F9283A8();
    sub_24F92A588();

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    sub_24F9283A8();
    sub_24F92A588();

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_24F1A8714;

    return sub_24F52E574();
  }
}

uint64_t sub_24F52E338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F52E408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24F52E4C0()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FriendCountFieldsProvider.FriendListObserver(319);
      if (v2 <= 0x3F)
      {
        sub_24ECD93D0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F52E574()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for FriendsDataIntent();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F52E608, v0, 0);
}

uint64_t sub_24F52E608()
{
  v0[11] = *(v0[8] + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_objectGraph);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_24F52E6D4;

  return MEMORY[0x28217F228](v0 + 2, v1, v1);
}

uint64_t sub_24F52E6D4()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_24F1A9060;
  }

  else
  {
    v4 = sub_24F52E800;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24F52E800()
{
  sub_24E70D960(v0[8] + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_player, v0[10]);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_24F408D14();
  *v3 = v0;
  v3[1] = sub_24F52E8E4;
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];

  return MEMORY[0x28217F4B0](v0 + 7, v5, v6, v7, v4, v1, v2);
}

uint64_t sub_24F52E8E4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_24F52EAA4;
  }

  else
  {
    v4 = sub_24F52EA10;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24F52EA10()
{
  sub_24EBA228C(v0[10], type metadata accessor for FriendsDataIntent);
  v1 = v0[7];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24F52EAA4()
{
  sub_24EBA228C(*(v0 + 80), type metadata accessor for FriendsDataIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F52EB2C()
{
  sub_24EBA228C(v0 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_player, type metadata accessor for Player);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_24F52EBA8()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F52EC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v29 = a3;
  v5 = sub_24F925218();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  (*(v6 + 104))(&v28 - v17, *MEMORY[0x277CE0558], v5);
  (*(v6 + 56))(v18, 0, 1, v5);
  v19 = *(v10 + 56);
  v28 = a1;
  sub_24EDEBCCC(a1, v12);
  sub_24EDEBCCC(v18, &v12[v19]);
  v20 = *(v6 + 48);
  if (v20(v12, 1, v5) != 1)
  {
    sub_24EDEBCCC(v12, v16);
    if (v20(&v12[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v12[v19], v5);
      sub_24EDEBD3C();
      v21 = sub_24F92AFF8();
      v22 = *(v6 + 8);
      v22(v8, v5);
      sub_24E601704(v18, &qword_27F215598);
      v22(v16, v5);
      sub_24E601704(v12, &qword_27F215598);
      if ((v21 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_24E601704(v18, &qword_27F215598);
    (*(v6 + 8))(v16, v5);
LABEL_6:
    sub_24E601704(v12, &unk_27F254F20);
    goto LABEL_9;
  }

  sub_24E601704(v18, &qword_27F215598);
  if (v20(&v12[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v12, &qword_27F215598);
LABEL_8:
  if ((_s12GameStoreKit15PageEnvironmentV4isAXSbvg_0() & 1) == 0)
  {
    v27 = sub_24F923E98();
    (*(*(v27 - 8) + 8))(a2, v27);
    result = sub_24E601704(v28, &qword_27F215598);
    v26 = 2;
    goto LABEL_10;
  }

LABEL_9:
  v23 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v24 = sub_24F923E98();
  (*(*(v24 - 8) + 8))(a2, v24);
  result = sub_24E601704(v28, &qword_27F215598);
  v26 = v23 & 1;
LABEL_10:
  *v29 = v26;
  return result;
}

uint64_t CustomViewLayout.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F52F138()
{
  result = qword_27F247400;
  if (!qword_27F247400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247400);
  }

  return result;
}

unint64_t InternalSettingsArcadeEntitlementPageIntent.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() valueWithNewObjectInContext_];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_24F52F23C(uint64_t a1)
{
  v2 = sub_24F52F3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F52F278(uint64_t a1)
{
  v2 = sub_24F52F3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalSettingsArcadeEntitlementPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247408);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F52F3C8();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F52F3C8()
{
  result = qword_27F247410;
  if (!qword_27F247410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247410);
  }

  return result;
}

uint64_t sub_24F52F464(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247408);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F52F3C8();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F52F578@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() valueWithNewObjectInContext_];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_24F52F608(unsigned __int8 *a1)
{
  v2 = *a1;
  result = sub_24F0CCA98(*(v1 + 24), *a1);
  if (result)
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F531234(&qword_27F247498, type metadata accessor for InternalSettingsArcadeEntitlementModel);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F52F71C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24F531234(&qword_27F247498, type metadata accessor for InternalSettingsArcadeEntitlementModel);
  sub_24F91FD88();

  *a1 = *(v1 + 24);
  return result;
}

uint64_t sub_24F52F7C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F531234(&qword_27F247498, type metadata accessor for InternalSettingsArcadeEntitlementModel);
  sub_24F91FD88();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_24F52F86C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_24F531234(&qword_27F21FE50, type metadata accessor for ArcadeSubscription);
  sub_24F91FD88();

  v3 = *(v2 + 16);
  result = sub_24F0CCA98(*(v1 + 24), v3);
  if (result)
  {
    *(v1 + 24) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F531234(&qword_27F247498, type metadata accessor for InternalSettingsArcadeEntitlementModel);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F52F9F4()
{
  swift_getKeyPath();
  sub_24F531234(&qword_27F21FE50, type metadata accessor for ArcadeSubscription);
  sub_24F91FD88();
}

uint64_t sub_24F52FA90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_24F92B858();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24F92B7F8();

  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_24EA998B8(0, 0, v4, &unk_24FA06720, v7);
}

uint64_t sub_24F52FBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24F92B7F8();
  *(v4 + 24) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F52FC4C, v6, v5);
}

uint64_t sub_24F52FC4C()
{

  sub_24F52F86C();
  sub_24F91FD68();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F52FCF0()
{

  v1 = OBJC_IVAR____TtC12GameStoreKitP33_82CBCFFA1301A47C3728014E077C3DF538InternalSettingsArcadeEntitlementModel___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F52FDBC()
{
  result = sub_24F91FDC8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F52FE88()
{
  result = qword_27F247430;
  if (!qword_27F247430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247430);
  }

  return result;
}

unint64_t sub_24F52FEE0()
{
  result = qword_27F247438;
  if (!qword_27F247438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247438);
  }

  return result;
}

uint64_t sub_24F52FF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24F91F6A8();
  v8 = type metadata accessor for InternalSettingsEntitlementEntry(0);
  v9 = (a4 + *(v8 + 20));
  *v9 = a1;
  v9[1] = a2;
  sub_24F53276C(a3, &v16);
  if (v17)
  {
    sub_24E612C80(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v10 = sub_24F92CD88();
    v12 = v11;
    sub_24E601704(a3, &qword_27F2474D0);
    v13 = (a4 + *(v8 + 24));
    *v13 = v10;
    v13[1] = v12;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_24E601704(&v16, &qword_27F2474D0);
    result = sub_24E601704(a3, &qword_27F2474D0);
    v15 = (a4 + *(v8 + 24));
    *v15 = 0;
    v15[1] = 0xE000000000000000;
  }

  return result;
}

uint64_t sub_24F530068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = sub_24F923C68();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9248F8();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247440);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247448);
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247450);
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x28223BE20](v15);
  v51 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247458);
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x28223BE20](v17);
  v52 = &v48 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247460);
  MEMORY[0x28223BE20](v48);
  v20 = &v48 - v19;
  v64 = a1;
  v66 = a1;
  v67 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247468);
  sub_24F530DCC();
  sub_24F925A98();
  swift_getKeyPath();
  v68 = a2;
  sub_24F531234(&qword_27F247498, type metadata accessor for InternalSettingsArcadeEntitlementModel);
  sub_24F91FD88();

  v65 = a2;
  v21 = *(a2 + 24);
  if (v21 <= 2)
  {
    v28 = 0xE500000000000000;
    v29 = 0x6C61697274;
    if (v21 != 1)
    {
      v29 = 0x6973616863727570;
      v28 = 0xEA0000000000676ELL;
    }

    v30 = v21 == 0;
    if (*(a2 + 24))
    {
      v26 = v29;
    }

    else
    {
      v26 = 0x6269726373627573;
    }

    if (v30)
    {
      v27 = 0xEA00000000006465;
    }

    else
    {
      v27 = v28;
    }
  }

  else
  {
    v22 = 0xED000064656E696DLL;
    v23 = 0x7265746544746F6ELL;
    if (v21 != 5)
    {
      v23 = 0xD000000000000011;
      v22 = 0x800000024FA42890;
    }

    v24 = 0x800000024FA42840;
    v25 = 0xD00000000000001FLL;
    if (v21 == 3)
    {
      v25 = 0xD00000000000001CLL;
    }

    else
    {
      v24 = 0x800000024FA42860;
    }

    if (*(a2 + 24) <= 4u)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    if (*(a2 + 24) <= 4u)
    {
      v27 = v24;
    }

    else
    {
      v27 = v22;
    }
  }

  v68 = v26;
  v69 = v27;
  v31 = sub_24E602068(&qword_27F2474A0, &qword_27F247440);
  v32 = sub_24E600AEC();
  v33 = MEMORY[0x277D837D0];
  sub_24F926458();

  (*(v10 + 8))(v12, v9);
  v35 = v58;
  v34 = v59;
  v36 = v49;
  (*(v58 + 104))(v49, *MEMORY[0x277CDDDC0], v59);
  v68 = v9;
  v69 = v33;
  v70 = v31;
  v71 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v51;
  v39 = v53;
  sub_24F926868();
  (*(v35 + 8))(v36, v34);
  (*(v50 + 8))(v14, v39);
  v40 = v60;
  sub_24F923C58();
  v68 = v39;
  v69 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v41 = v52;
  v42 = v55;
  v43 = v62;
  sub_24F926B98();
  (*(v61 + 8))(v40, v43);
  (*(v54 + 8))(v38, v42);
  v44 = &v20[*(v48 + 36)];
  sub_24F923AD8();
  sub_24F92B808();
  v45 = swift_allocObject();
  v46 = v65;
  *(v45 + 16) = v64;
  *(v45 + 24) = v46;
  *v44 = &unk_24FA06708;
  *(v44 + 1) = v45;
  (*(v56 + 32))(v20, v41, v57);
  sub_24F531078(v20, v63);
}

uint64_t sub_24F530828()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247480);
  sub_24F530E64();
  return sub_24F927298();
}

uint64_t sub_24F5308C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  swift_getKeyPath();
  sub_24F531234(&qword_27F21FE50, type metadata accessor for ArcadeSubscription);
  sub_24F91FD88();

  v3 = *(v2 + 24);
  v4 = v3;
  sub_24F531514(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2474A8);
  sub_24F91F6B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247490);
  sub_24E602068(&qword_27F2474B0, &qword_27F2474A8);
  sub_24F530EE8();
  sub_24F531234(&qword_27F2474B8, type metadata accessor for InternalSettingsEntitlementEntry);
  return sub_24F927238();
}

uint64_t sub_24F530A78()
{
  type metadata accessor for InternalSettingsEntitlementEntry(0);
  sub_24E600AEC();

  return sub_24F923B98();
}

uint64_t sub_24F530B18(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = sub_24F92B7F8();
  v2[4] = sub_24F92B7E8();

  return MEMORY[0x2822009F8](sub_24F530B94, 0, 0);
}

uint64_t sub_24F530B94()
{
  sub_24F91FD68();
  sub_24F52F86C();
  *(v0 + 48) = 1;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_24F530C80;

  return ArcadeSubscription.updateStateFromEntitlements(policy:)((v0 + 48));
}

uint64_t sub_24F530C80()
{

  v1 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EA9C5F8, v1, v0);
}

unint64_t sub_24F530DCC()
{
  result = qword_27F247470;
  if (!qword_27F247470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247468);
    sub_24F530E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247470);
  }

  return result;
}

unint64_t sub_24F530E64()
{
  result = qword_27F247478;
  if (!qword_27F247478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247480);
    sub_24F530EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247478);
  }

  return result;
}

unint64_t sub_24F530EE8()
{
  result = qword_27F247488;
  if (!qword_27F247488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247488);
  }

  return result;
}

uint64_t sub_24F530FA0()
{

  return swift_deallocObject();
}

uint64_t sub_24F530FE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E6541E4;

  return sub_24F530B18(v2, v3);
}

uint64_t sub_24F531078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F531138()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F531178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F52FBB4(a1, v4, v5, v6);
}

uint64_t sub_24F531234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F53128C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = sub_24F92A498();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_24F928F28();

  if (qword_27F211898 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v10 = v17[0];
  v11 = v17[1];
  v12 = [objc_opt_self() sharedInstance];
  type metadata accessor for ArcadeSubscription();
  v13 = swift_allocObject();
  v14 = sub_24F70AA88(v10, v11, v12, v13);
  type metadata accessor for InternalSettingsArcadeEntitlementModel(0);
  v15 = swift_allocObject();
  *(v15 + 24) = 5;
  sub_24F91FDB8();
  *(v15 + 16) = v14;
  return a1;
}

uint64_t sub_24F531514(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v137 - v7;
  MEMORY[0x28223BE20](v9);
  v12 = &v137 - v11;
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v144 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2474C0);
  v13 = *(type metadata accessor for InternalSettingsEntitlementEntry(0) - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24FA063A0;
  v145 = v16;
  v17 = v16 + v15;
  v18 = a1;
  v19 = [v18 expiryDate];
  if (v19)
  {
    v20 = v19;
    sub_24F91F608();

    v21 = sub_24F91F648();
    (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
  }

  else
  {
    v21 = sub_24F91F648();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  sub_24E6C4F90(v8, v12);
  sub_24F91F648();
  v23 = *(v21 - 8);
  v139 = *(v23 + 48);
  v140 = v23 + 48;
  v24 = v139(v12, 1, v21);
  v142 = v21;
  v143 = v4;
  v141 = v23;
  if (v24 == 1)
  {
    sub_24E601704(v12, &unk_27F22EC30);
    v147 = 0u;
    v148 = 0u;
    v149 = 0;
  }

  else
  {
    *(&v148 + 1) = v21;
    v149 = sub_24F531234(&qword_27F229EE8, MEMORY[0x277CC9578]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v147);
    (*(v23 + 32))(boxed_opaque_existential_1, v12, v21);
  }

  sub_24F52FF50(0x6144797269707865, 0xEA00000000006574, &v147, v17);
  v26 = [v18 offerID];
  v27 = sub_24F92B0D8();
  v29 = v28;

  *(&v148 + 1) = MEMORY[0x277D837D0];
  v149 = MEMORY[0x277D83838];
  *&v147 = v27;
  *(&v147 + 1) = v29;
  sub_24F52FF50(0x4449726566666FLL, 0xE700000000000000, &v147, v17 + v14);
  v30 = [v18 appAdamID];
  v31 = sub_24E9421D0();
  *(&v148 + 1) = v31;
  v32 = sub_24F531234(&qword_27F2474C8, sub_24E9421D0);
  v149 = v32;
  *&v147 = v30;
  sub_24F52FF50(0x496D616441707061, 0xE900000000000044, &v147, v17 + 2 * v14);
  v33 = [v18 appVersion];
  *(&v148 + 1) = v31;
  v149 = v32;
  *&v147 = v33;
  sub_24F52FF50(0x6973726556707061, 0xEA00000000006E6FLL, &v147, v17 + 3 * v14);
  v34 = [v18 autoRenewEnabled];
  *(&v148 + 1) = MEMORY[0x277D839B0];
  v149 = MEMORY[0x277D839D8];
  LOBYTE(v147) = v34;
  sub_24F52FF50(0xD000000000000010, 0x800000024FA763B0, &v147, v17 + 4 * v14);
  v35 = [v18 chargeCurrencyCode];
  v36 = sub_24F92B0D8();
  v38 = v37;

  *(&v148 + 1) = MEMORY[0x277D837D0];
  v149 = MEMORY[0x277D83838];
  *&v147 = v36;
  *(&v147 + 1) = v38;
  sub_24F52FF50(0xD000000000000012, 0x800000024FA763D0, &v147, v17 + 5 * v14);
  v39 = [v18 chargeCountryCode];
  v40 = sub_24F92B0D8();
  v42 = v41;

  *(&v148 + 1) = MEMORY[0x277D837D0];
  v149 = MEMORY[0x277D83838];
  *&v147 = v40;
  *(&v147 + 1) = v42;
  v146 = 0xD000000000000011;
  sub_24F52FF50(0xD000000000000011, 0x800000024FA763F0, &v147, v17 + 6 * v14);
  v138 = v17 - v14;
  v43 = [v18 chargeStoreFrontID];
  *(&v148 + 1) = v31;
  v149 = v32;
  *&v147 = v43;
  sub_24F52FF50(0xD000000000000012, 0x800000024FA76410, &v147, v17 - v14 + 8 * v14);
  v44 = [v18 entitlementOriginType];
  if (v44)
  {
    v45 = v44;
    v46 = sub_24F92B0D8();
    v48 = v47;

    v49 = MEMORY[0x277D83838];
    v50 = MEMORY[0x277D837D0];
  }

  else
  {
    v46 = 0;
    v48 = 0;
    v50 = 0;
    v49 = 0;
    *&v148 = 0;
  }

  *&v147 = v46;
  *(&v147 + 1) = v48;
  *(&v148 + 1) = v50;
  v149 = v49;
  sub_24F52FF50(0xD000000000000015, 0x800000024FA76430, &v147, v17 + 8 * v14);
  v51 = [v18 entitlementSourceAdamID];
  v52 = v31;
  v53 = v32;
  v54 = MEMORY[0x277D839B0];
  if (!v51)
  {
    v52 = 0;
    v53 = 0;
    *(&v147 + 1) = 0;
    *&v148 = 0;
  }

  *&v147 = v51;
  *(&v148 + 1) = v52;
  v149 = v53;
  sub_24F52FF50(0xD000000000000017, 0x800000024FA76450, &v147, v17 + 9 * v14);
  v55 = [v18 externalSubscriptionID];
  if (v55)
  {
    v56 = v55;
    v57 = sub_24F92B0D8();
    v59 = v58;

    v60 = MEMORY[0x277D83838];
    v61 = MEMORY[0x277D837D0];
  }

  else
  {
    v57 = 0;
    v59 = 0;
    v61 = 0;
    v60 = 0;
    *&v148 = 0;
  }

  *&v147 = v57;
  *(&v147 + 1) = v59;
  *(&v148 + 1) = v61;
  v149 = v60;
  sub_24F52FF50(0xD000000000000016, 0x800000024FA76470, &v147, v17 + 10 * v14);
  v62 = [v18 familyID];
  *(&v148 + 1) = v31;
  v149 = v32;
  *&v147 = v62;
  sub_24F52FF50(0x4449796C696D6166, 0xE800000000000000, &v147, v17 + 11 * v14);
  v63 = [v18 familyRank];
  v64 = v31;
  v65 = v32;
  if (!v63)
  {
    v64 = 0;
    v65 = 0;
    *(&v147 + 1) = 0;
    *&v148 = 0;
  }

  *&v147 = v63;
  *(&v148 + 1) = v64;
  v149 = v65;
  sub_24F52FF50(0x6152796C696D6166, 0xEA00000000006B6ELL, &v147, v17 + 12 * v14);
  v66 = [v18 featureAccessTypeID];
  v67 = v31;
  v68 = v32;
  v69 = v146;
  if (!v66)
  {
    v67 = 0;
    v68 = 0;
    *(&v147 + 1) = 0;
    *&v148 = 0;
  }

  *&v147 = v66;
  *(&v148 + 1) = v67;
  v149 = v68;
  sub_24F52FF50(0xD000000000000013, 0x800000024FA76490, &v147, v17 + 13 * v14);
  v70 = [v18 freeTrialPeriodID];
  v71 = v31;
  v72 = v32;
  v73 = MEMORY[0x277D839D8];
  if (!v70)
  {
    v71 = 0;
    v72 = 0;
    *(&v147 + 1) = 0;
    *&v148 = 0;
  }

  *&v147 = v70;
  *(&v148 + 1) = v71;
  v149 = v72;
  sub_24F52FF50(v69, 0x800000024FA764B0, &v147, v17 + 14 * v14);
  v74 = [v18 hasFamily];
  *(&v148 + 1) = v54;
  v149 = v73;
  LOBYTE(v147) = v74;
  sub_24F52FF50(0x6C696D6146736168, 0xE900000000000079, &v147, v17 + 15 * v14);
  v75 = [v18 inAppAdamID];
  *(&v148 + 1) = v31;
  v149 = v32;
  *&v147 = v75;
  sub_24F52FF50(0x6164417070416E69, 0xEB0000000044496DLL, &v147, v17 + 16 * v14);
  v76 = [v18 inAppVersion];
  v77 = sub_24F92B0D8();
  v79 = v78;

  *(&v148 + 1) = MEMORY[0x277D837D0];
  v149 = MEMORY[0x277D83838];
  *&v147 = v77;
  *(&v147 + 1) = v79;
  sub_24F52FF50(0x7265567070416E69, 0xEC0000006E6F6973, &v147, v17 + 17 * v14);
  v80 = [v18 initialPurchaseTimestamp];
  v81 = v31;
  v82 = v32;
  if (!v80)
  {
    v81 = 0;
    v82 = 0;
    *(&v147 + 1) = 0;
    *&v148 = 0;
  }

  *&v147 = v80;
  *(&v148 + 1) = v81;
  v149 = v82;
  sub_24F52FF50(0xD000000000000018, 0x800000024FA764D0, &v147, v17 + 18 * v14);
  v83 = [v18 isInGracePeriod];
  *(&v148 + 1) = v54;
  v84 = MEMORY[0x277D839D8];
  v149 = MEMORY[0x277D839D8];
  LOBYTE(v147) = v83;
  sub_24F52FF50(0x636172476E497369, 0xEF646F6972655065, &v147, v17 + 19 * v14);
  v85 = [v18 isNewsAppPurchase];
  *(&v148 + 1) = v54;
  v149 = v84;
  LOBYTE(v147) = v85;
  sub_24F52FF50(v146, 0x800000024FA764F0, &v147, v17 + 20 * v14);
  v86 = [v18 isOfferPeriod];
  *(&v148 + 1) = v54;
  v149 = v84;
  LOBYTE(v147) = v86;
  sub_24F52FF50(0x50726566664F7369, 0xED0000646F697265, &v147, v17 + 21 * v14);
  v87 = [v18 isPurchaser];
  *(&v148 + 1) = v54;
  v149 = v84;
  LOBYTE(v147) = v87;
  sub_24F52FF50(0x6168637275507369, 0xEB00000000726573, &v147, v17 + 22 * v14);
  v88 = [v18 isTrialPeriod];
  *(&v148 + 1) = v54;
  v149 = v84;
  LOBYTE(v147) = v88;
  sub_24F52FF50(0x506C616972547369, 0xED0000646F697265, &v147, v17 + 23 * v14);
  v89 = [v18 originalPurchaseDownloadID];
  *(&v148 + 1) = v31;
  v149 = v32;
  *&v147 = v89;
  sub_24F52FF50(0xD00000000000001ALL, 0x800000024FA76510, &v147, v17 + 24 * v14);
  v90 = [v18 poolType];
  v91 = v142;
  if (v90)
  {
    v92 = v90;
    v93 = sub_24F92B0D8();
    v95 = v94;

    v96 = MEMORY[0x277D83838];
    v97 = MEMORY[0x277D837D0];
  }

  else
  {
    v93 = 0;
    v95 = 0;
    v97 = 0;
    v96 = 0;
    *&v148 = 0;
  }

  *&v147 = v93;
  *(&v147 + 1) = v95;
  *(&v148 + 1) = v97;
  v149 = v96;
  sub_24F52FF50(0x657079546C6F6F70, 0xE800000000000000, &v147, v17 + 25 * v14);
  v98 = [v18 productCode];
  if (v98)
  {
    v99 = v98;
    v100 = sub_24F92B0D8();
    v102 = v101;

    v103 = MEMORY[0x277D83838];
    v104 = MEMORY[0x277D837D0];
  }

  else
  {
    v100 = 0;
    v102 = 0;
    v104 = 0;
    v103 = 0;
    *&v148 = 0;
  }

  *&v147 = v100;
  *(&v147 + 1) = v102;
  *(&v148 + 1) = v104;
  v149 = v103;
  sub_24F52FF50(0x43746375646F7270, 0xEB0000000065646FLL, &v147, v17 + 26 * v14);
  v105 = [v18 promoScenarioID];
  v106 = v31;
  v107 = v32;
  if (!v105)
  {
    v106 = 0;
    v107 = 0;
    *(&v147 + 1) = 0;
    *&v148 = 0;
  }

  *&v147 = v105;
  *(&v148 + 1) = v106;
  v149 = v107;
  sub_24F52FF50(0x6563536F6D6F7270, 0xEF44496F6972616ELL, &v147, v17 + 27 * v14);
  v108 = [v18 purchasabilityType];
  *(&v148 + 1) = v31;
  v149 = v32;
  *&v147 = v108;
  sub_24F52FF50(0xD000000000000012, 0x800000024FA76530, &v147, v17 + 28 * v14);
  v109 = [v18 purchaseDownloadID];
  *(&v148 + 1) = v31;
  v149 = v32;
  *&v147 = v109;
  sub_24F52FF50(0xD000000000000012, 0x800000024FA76550, &v147, v17 + 29 * v14);
  v110 = [v18 quantity];
  *(&v148 + 1) = v31;
  v149 = v32;
  *&v147 = v110;
  sub_24F52FF50(0x797469746E617571, 0xE800000000000000, &v147, v17 + 30 * v14);
  v111 = v138 + 32 * v14;
  v112 = [v18 segment];
  *(&v148 + 1) = MEMORY[0x277D83E88];
  v149 = MEMORY[0x277D83EC8];
  *&v147 = v112;
  sub_24F52FF50(0x746E656D676573, 0xE700000000000000, &v147, v111);
  v113 = [v18 serviceBeginsTimestamp];
  v114 = v31;
  v115 = v32;
  v116 = v141;
  if (!v113)
  {
    v114 = 0;
    v115 = 0;
    *(&v147 + 1) = 0;
    *&v148 = 0;
  }

  *&v147 = v113;
  *(&v148 + 1) = v114;
  v149 = v115;
  sub_24F52FF50(0xD000000000000016, 0x800000024FA76570, &v147, v17 + 32 * v14);
  v117 = [v18 startDate];
  v118 = v143;
  if (v117)
  {
    v119 = v117;
    sub_24F91F608();

    v120 = 0;
  }

  else
  {
    v120 = 1;
  }

  (*(v116 + 56))(v118, v120, 1, v91);
  v121 = v144;
  sub_24E6C4F90(v118, v144);
  if (v139(v121, 1, v91) == 1)
  {
    sub_24E601704(v121, &unk_27F22EC30);
    v147 = 0u;
    v148 = 0u;
    v149 = 0;
  }

  else
  {
    *(&v148 + 1) = v91;
    v149 = sub_24F531234(&qword_27F229EE8, MEMORY[0x277CC9578]);
    v122 = __swift_allocate_boxed_opaque_existential_1(&v147);
    (*(v116 + 32))(v122, v121, v91);
  }

  sub_24F52FF50(0x7461447472617473, 0xE900000000000065, &v147, v17 + 33 * v14);
  v123 = [v18 subscriptionBundleID];
  *(&v148 + 1) = v31;
  v149 = v32;
  *&v147 = v123;
  sub_24F52FF50(0xD000000000000014, 0x800000024FA76590, &v147, v17 + 34 * v14);
  v124 = [v18 vendorAdHocOfferID];
  if (v124)
  {
    v125 = v124;
    v126 = sub_24F92B0D8();
    v128 = v127;

    v129 = MEMORY[0x277D83838];
    v130 = MEMORY[0x277D837D0];
  }

  else
  {
    v126 = 0;
    v128 = 0;
    v130 = 0;
    v129 = 0;
    *&v148 = 0;
  }

  v131 = MEMORY[0x277D837D0];
  *&v147 = v126;
  *(&v147 + 1) = v128;
  *(&v148 + 1) = v130;
  v149 = v129;
  sub_24F52FF50(0xD000000000000012, 0x800000024FA765B0, &v147, v17 + 35 * v14);
  v132 = v17 + 36 * v14;
  v133 = [v18 vendorID];
  v134 = sub_24F92B0D8();
  v136 = v135;

  *(&v148 + 1) = v131;
  v149 = MEMORY[0x277D83838];
  *&v147 = v134;
  *(&v147 + 1) = v136;
  sub_24F52FF50(0x4449726F646E6576, 0xE800000000000000, &v147, v132);

  return v145;
}

uint64_t sub_24F532710@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = (v3 + *(type metadata accessor for InternalSettingsEntitlementEntry(0) + 24));
  v5 = v4[1];
  *a1 = *v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_24F53276C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2474D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5327F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F5328C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F6B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_24F532984()
{
  result = qword_27F2474E8;
  if (!qword_27F2474E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247450);
    sub_24F923C68();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247440);
    sub_24E602068(&qword_27F2474A0, &qword_27F247440);
    sub_24E600AEC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24F531234(&qword_27F211A48, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2474E8);
  }

  return result;
}

uint64_t ArcadeSubscriptionState.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6C61697274;
    if (v1 != 1)
    {
      v5 = 0x6973616863727570;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6269726373627573;
    }
  }

  else
  {
    v2 = 0x7265746544746F6ELL;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD00000000000001FLL;
    if (v1 == 3)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

void ArcadeSubscriptionState.init(arcadeEntitlement:consumedIntroOfferFamilyIds:arcadeSubscriptionFamilyId:)(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X8>)
{
  if (a1)
  {

    v9 = [a1 isTrialPeriod];
  }

  else if (a2 && a4)
  {
    if (a2 >> 62)
    {
LABEL_27:
      v20 = sub_24F92C738();
    }

    else
    {
      v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    while (1)
    {
      if (v20 == v11)
      {

        v9 = 4;
        goto LABEL_24;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x253052270](v11, a2);
      }

      else
      {
        if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v12 = *(a2 + 8 * v11 + 32);
      }

      v13 = v12;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v14 = [v12 stringValue];
      v15 = sub_24F92B0D8();
      v17 = v16;

      if (v15 == a3 && v17 == a4)
      {
        break;
      }

      v19 = sub_24F92CE08();

      ++v11;
      if (v19)
      {

        goto LABEL_23;
      }
    }

LABEL_23:

    v9 = 3;
  }

  else
  {

    v9 = 4;
  }

LABEL_24:
  *a5 = v9;
}

GameStoreKit::ArcadeSubscriptionState_optional __swiftcall ArcadeSubscriptionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_24F532EE4()
{
  result = qword_27F2474F0;
  if (!qword_27F2474F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2474F0);
  }

  return result;
}

uint64_t sub_24F532F44()
{
  sub_24F92B218();
}

void sub_24F533078(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEA00000000006465;
    v9 = 0xE500000000000000;
    v10 = 0x6C61697274;
    if (v2 != 1)
    {
      v10 = 0x6973616863727570;
      v9 = 0xEA0000000000676ELL;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x6269726373627573;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xED000064656E696DLL;
    v4 = 0x7265746544746F6ELL;
    if (v2 != 5)
    {
      v4 = 0xD000000000000011;
      v3 = 0x800000024FA42890;
    }

    v5 = 0x800000024FA42840;
    v6 = 0xD00000000000001FLL;
    if (v2 == 3)
    {
      v6 = 0xD00000000000001CLL;
    }

    else
    {
      v5 = 0x800000024FA42860;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t FriendSuggestion.id.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ActivityFriendSuggestion(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FriendSuggestion(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F5333C4(v1, v10, type metadata accessor for FriendSuggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24F5369E4(v10, v7, type metadata accessor for ActivityFriendSuggestion);
    sub_24F5333C4(v7, v4, type metadata accessor for Player);
    sub_24F53342C(v7, type metadata accessor for ActivityFriendSuggestion);
    v11 = *v4;

    sub_24F53342C(v4, type metadata accessor for Player);
  }

  else
  {
    v11 = *v10;
  }

  return v11;
}

uint64_t sub_24F5333C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F53342C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ContactFriendSuggestion.contactID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactFriendSuggestion.contactAssociationID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ContactFriendSuggestion.fullName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ContactFriendSuggestion.contactAvatarTemplate.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ContactFriendSuggestion.handle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

unint64_t ContactFriendSuggestion.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v15 = v1[5];
  v16 = v1[4];
  v17 = v1[7];
  v18 = v1[6];
  v19 = v1[9];
  v20 = v1[8];
  v21 = *(v1 + 80);
  v22 = *(v1 + 81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9AF330;
  *(inited + 32) = 0x49746361746E6F63;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 40) = 0xE900000000000044;
  *(inited + 48) = v3;
  *(inited + 56) = v2;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x800000024FA56F30;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v9 = sub_24E605DB4();
  *(inited + 104) = v4;
  *(inited + 112) = v5;
  *(inited + 136) = v9;
  *(inited + 144) = 0x656D614E6C6C7566;
  *(inited + 184) = v7;
  *(inited + 192) = v8;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 160) = v16;
  *(inited + 168) = v15;
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x800000024FA765D0;
  *(inited + 240) = v7;
  *(inited + 248) = v8;
  *(inited + 216) = v18;
  *(inited + 224) = v17;
  *(inited + 256) = 0x656C646E6168;
  *(inited + 264) = 0xE600000000000000;
  *(inited + 296) = v7;
  *(inited + 304) = v8;
  *(inited + 272) = v20;
  *(inited + 280) = v19;
  *(inited + 312) = 0xD000000000000018;
  *(inited + 320) = 0x800000024FA56F50;
  v10 = MEMORY[0x277D839B0];
  v11 = MEMORY[0x277D22598];
  *(inited + 352) = MEMORY[0x277D839B0];
  *(inited + 360) = v11;
  *(inited + 328) = v21;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x800000024FA765F0;
  *(inited + 408) = v10;
  *(inited + 416) = v11;
  *(inited + 384) = v22;

  v12 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_24F53380C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000014;
    if (v1 != 1)
    {
      v5 = 0x656D614E6C6C7566;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x49746361746E6F63;
    }
  }

  else
  {
    v2 = 0xD000000000000018;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0x656C646E6168;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F5338FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5378F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F533924(uint64_t a1)
{
  v2 = sub_24F53684C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F533960(uint64_t a1)
{
  v2 = sub_24F53684C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactFriendSuggestion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2474F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v7;
  v8 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = v8;
  v9 = *(v1 + 48);
  v16 = *(v1 + 56);
  v17 = v9;
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v15 = v10;
  LODWORD(v10) = *(v1 + 80);
  v13[0] = *(v1 + 81);
  v13[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F53684C();
  sub_24F92D128();
  v29 = 0;
  v11 = v22;
  sub_24F92CD08();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v28 = 1;
  sub_24F92CCA8();
  v27 = 2;
  sub_24F92CD08();
  v26 = 3;
  sub_24F92CD08();
  v25 = 4;
  sub_24F92CD08();
  v24 = 5;
  sub_24F92CD18();
  v23 = 6;
  sub_24F92CD18();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ContactFriendSuggestion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247508);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F53684C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39[0]) = 0;
  v9 = sub_24F92CC28();
  v32 = v10;
  LOBYTE(v39[0]) = 1;
  *&v31 = sub_24F92CBC8();
  *(&v31 + 1) = v11;
  LOBYTE(v39[0]) = 2;
  v29 = sub_24F92CC28();
  v13 = v12;
  LOBYTE(v39[0]) = 3;
  v14 = sub_24F92CC28();
  v30 = v15;
  v26 = v14;
  LOBYTE(v39[0]) = 4;
  v28 = 0;
  v25 = sub_24F92CC28();
  v27 = v16;
  LOBYTE(v39[0]) = 5;
  v42 = sub_24F92CC38();
  v43 = 6;
  v17 = sub_24F92CC38();
  LODWORD(v28) = v42 & 1;
  (*(v6 + 8))(v8, v5);
  v42 = v17 & 1;
  *&v33 = v9;
  v18 = v32;
  *(&v33 + 1) = v32;
  v34 = v31;
  v19 = *(&v31 + 1);
  *&v35 = v29;
  *(&v35 + 1) = v13;
  *&v36 = v26;
  v20 = v30;
  *(&v36 + 1) = v30;
  *&v37 = v25;
  v21 = v27;
  *(&v37 + 1) = v27;
  LOBYTE(v38) = v28;
  HIBYTE(v38) = v42;
  v22 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v22;
  *(a2 + 64) = v37;
  *(a2 + 80) = v38;
  v23 = v34;
  *a2 = v33;
  *(a2 + 16) = v23;
  sub_24E7FA89C(&v33, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v9;
  v39[1] = v18;
  v39[2] = v31;
  v39[3] = v19;
  v39[4] = v29;
  v39[5] = v13;
  v39[6] = v26;
  v39[7] = v20;
  v39[8] = v25;
  v39[9] = v21;
  v40 = v28;
  v41 = v42;
  return sub_24E7FA8F8(v39);
}

void ActivityFriendSuggestion.Source.jsRepresentation(in:)(uint64_t *a1@<X8>)
{
  v2 = *v1 == 0;
  v3 = 0x616C7069746C756DLL;
  if (*v1)
  {
    v3 = 0x676E656C6C616863;
  }

  v4 = 0xEB00000000726579;
  v5 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v5;
  if (!v2)
  {
    v4 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v4;
}

uint64_t ActivityFriendSuggestion.Source.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E656C6C616863;
  }

  else
  {
    return 0x616C7069746C756DLL;
  }
}

GameStoreKit::ActivityFriendSuggestion::Source_optional __swiftcall ActivityFriendSuggestion.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t sub_24F534238(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E656C6C616863;
  }

  else
  {
    v3 = 0x616C7069746C756DLL;
  }

  if (v2)
  {
    v4 = 0xEB00000000726579;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x676E656C6C616863;
  }

  else
  {
    v5 = 0x616C7069746C756DLL;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xEB00000000726579;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F5342EC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F53437C()
{
  sub_24F92B218();
}

uint64_t sub_24F5343F8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F534484@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24F5344E4(uint64_t *a1@<X8>)
{
  v2 = 0x616C7069746C756DLL;
  if (*v1)
  {
    v2 = 0x676E656C6C616863;
  }

  v3 = 0xEB00000000726579;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_24F5345E0(uint64_t *a1@<X8>)
{
  v2 = *v1 == 0;
  v3 = 0x616C7069746C756DLL;
  if (*v1)
  {
    v3 = 0x676E656C6C616863;
  }

  v4 = 0xEB00000000726579;
  v5 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v5;
  if (!v2)
  {
    v4 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v4;
}

uint64_t ActivityFriendSuggestion.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityFriendSuggestion(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ActivityFriendSuggestion.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityFriendSuggestion(0) + 28);
  v4 = sub_24F91F648();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t ActivityFriendSuggestion.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24F5368F4(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F5333C4(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 0x656372756F73;
  *(inited + 96) = 0xE600000000000000;
  v6 = type metadata accessor for ActivityFriendSuggestion(0);
  v7 = *(v2 + v6[5]);
  *(inited + 128) = &type metadata for ActivityFriendSuggestion.Source;
  v8 = sub_24F5368A0();
  *(inited + 104) = v7;
  *(inited + 136) = v8;
  *(inited + 144) = 1701667175;
  *(inited + 152) = 0xE400000000000000;
  v9 = v6[6];
  *(inited + 184) = type metadata accessor for Game();
  *(inited + 192) = sub_24F5368F4(&qword_27F217960, type metadata accessor for Game);
  v10 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F5333C4(v2 + v9, v10, type metadata accessor for Game);
  *(inited + 200) = 1702125924;
  *(inited + 208) = 0xE400000000000000;
  v11 = v6[7];
  v12 = sub_24F91F648();
  v13 = MEMORY[0x277D21908];
  *(inited + 240) = v12;
  *(inited + 248) = v13;
  v14 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  (*(*(v12 - 8) + 16))(v14, v2 + v11, v12);
  v15 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v16 = sub_24E80FFAC(v15);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v16;
  return result;
}

uint64_t sub_24F534A04()
{
  v1 = 0x726579616C70;
  v2 = 1701667175;
  if (*v0 != 2)
  {
    v2 = 1702125924;
  }

  if (*v0)
  {
    v1 = 0x656372756F73;
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

uint64_t sub_24F534A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F537B44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F534A90(uint64_t a1)
{
  v2 = sub_24F53693C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F534ACC(uint64_t a1)
{
  v2 = sub_24F53693C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFriendSuggestion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247518);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F53693C();
  sub_24F92D128();
  v10[15] = 0;
  type metadata accessor for Player(0);
  sub_24F5368F4(&qword_27F213E28, type metadata accessor for Player);
  sub_24F92CD48();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for ActivityFriendSuggestion(0) + 20));
    v10[13] = 1;
    sub_24F536990();
    sub_24F92CD48();
    v10[12] = 2;
    type metadata accessor for Game();
    sub_24F5368F4(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CD48();
    v10[11] = 3;
    sub_24F91F648();
    sub_24F5368F4(&qword_27F21BB08, MEMORY[0x277CC9578]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ActivityFriendSuggestion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_24F91F648();
  v25 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v7);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247530);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for ActivityFriendSuggestion(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24F53693C();
  v30 = v11;
  v16 = v33;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v17 = v6;
  v18 = v14;
  v19 = v29;
  v39 = 0;
  sub_24F5368F4(&qword_27F213E38, type metadata accessor for Player);
  v20 = v28;
  sub_24F92CC68();
  v21 = v20;
  v22 = v18;
  sub_24F5369E4(v21, v18, type metadata accessor for Player);
  v37 = 1;
  sub_24F536A4C();
  sub_24F92CC68();
  *(v18 + v12[5]) = v38;
  v36 = 2;
  sub_24F5368F4(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC68();
  sub_24F5369E4(v17, v18 + v12[6], type metadata accessor for Game);
  v35 = 3;
  sub_24F5368F4(&qword_27F21B778, MEMORY[0x277CC9578]);
  v24 = v27;
  sub_24F92CC68();
  (*(v31 + 8))(v30, v32);
  (*(v25 + 32))(v22 + v12[7], v24, v19);
  sub_24F5333C4(v22, v26, type metadata accessor for ActivityFriendSuggestion);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_24F53342C(v22, type metadata accessor for ActivityFriendSuggestion);
}

unint64_t FriendSuggestion.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for ActivityFriendSuggestion(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for FriendSuggestion(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F5333C4(v1, v7, type metadata accessor for FriendSuggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24F5369E4(v7, v4, type metadata accessor for ActivityFriendSuggestion);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x646E696B24;
    v9 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v9;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0x7974697669746361;
    *(inited + 56) = 0xE800000000000000;
    *(inited + 88) = 0x7974697669746361;
    *(inited + 96) = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247540);
    v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213278) - 8);
    v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_24F93DE60;
    v13 = (v12 + v11);
    v14 = v10[14];
    *v13 = 0x6974736567677573;
    v13[1] = 0xEA00000000006E6FLL;
    sub_24F5333C4(v4, v13 + v14, type metadata accessor for ActivityFriendSuggestion);
    v15 = sub_24E612130(v12);
    swift_setDeallocating();
    sub_24E601704(v13, &qword_27F213278);
    swift_deallocClassInstance();
    *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247548);
    *(inited + 136) = sub_24F536AA0();
    *(inited + 104) = v15;
    v16 = sub_24E607D0C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
    swift_arrayDestroy();
    v17 = sub_24E80FFAC(v16);

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
    v19 = sub_24E6060B8();
    result = sub_24F53342C(v4, type metadata accessor for ActivityFriendSuggestion);
  }

  else
  {
    v21 = *(v7 + 3);
    v35 = *(v7 + 2);
    v36 = v21;
    v37 = *(v7 + 4);
    v38 = *(v7 + 40);
    v22 = *(v7 + 1);
    v33 = *v7;
    v34 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_24F93A400;
    *(v23 + 32) = 0x646E696B24;
    v24 = MEMORY[0x277D22580];
    *(v23 + 72) = MEMORY[0x277D837D0];
    *(v23 + 80) = v24;
    *(v23 + 40) = 0xE500000000000000;
    *(v23 + 48) = 0x746361746E6F63;
    *(v23 + 56) = 0xE700000000000000;
    *(v23 + 88) = 0x746361746E6F63;
    *(v23 + 96) = 0xE700000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247560);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_24F93DE60;
    *(v25 + 32) = 0x6974736567677573;
    v26 = v25 + 32;
    *(v25 + 40) = 0xEA00000000006E6FLL;
    v27 = v36;
    *(v25 + 80) = v35;
    *(v25 + 96) = v27;
    *(v25 + 112) = v37;
    *(v25 + 128) = v38;
    v28 = v34;
    *(v25 + 48) = v33;
    *(v25 + 64) = v28;
    v29 = sub_24E611F70(v25);
    swift_setDeallocating();
    sub_24E601704(v26, &qword_27F213270);
    *(v23 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247568);
    *(v23 + 136) = sub_24F536B54();
    *(v23 + 104) = v29;
    v30 = sub_24E607D0C(v23);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
    swift_arrayDestroy();
    v17 = sub_24E80FFAC(v30);

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
    result = sub_24E6060B8();
    v19 = result;
  }

  v31 = v39;
  v39[3] = v18;
  v31[4] = v19;
  *v31 = v17;
  return result;
}

uint64_t sub_24F5358FC(uint64_t a1)
{
  v2 = sub_24F536C80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F535938(uint64_t a1)
{
  v2 = sub_24F536C80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F535974()
{
  if (*v0)
  {
    return 0x7974697669746361;
  }

  else
  {
    return 0x746361746E6F63;
  }
}

uint64_t sub_24F5359B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F535A8C(uint64_t a1)
{
  v2 = sub_24F536C2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F535AC8(uint64_t a1)
{
  v2 = sub_24F536C2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F535B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F535B98(uint64_t a1)
{
  v2 = sub_24F536CD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F535BD4(uint64_t a1)
{
  v2 = sub_24F536CD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FriendSuggestion.encode(to:)(void *a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247580);
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = &v21 - v2;
  v23 = type metadata accessor for ActivityFriendSuggestion(0);
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247588);
  v21 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v21 - v5;
  v7 = type metadata accessor for FriendSuggestion(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247590);
  v10 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v12 = &v21 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F536C2C();
  sub_24F92D128();
  sub_24F5333C4(v27, v9, type metadata accessor for FriendSuggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24F5369E4(v9, v4, type metadata accessor for ActivityFriendSuggestion);
    LOBYTE(v35) = 1;
    sub_24F536C80();
    v13 = v24;
    v14 = v28;
    sub_24F92CC98();
    sub_24F5368F4(&qword_27F2475A8, type metadata accessor for ActivityFriendSuggestion);
    v15 = v26;
    sub_24F92CD48();
    (*(v25 + 8))(v13, v15);
    sub_24F53342C(v4, type metadata accessor for ActivityFriendSuggestion);
    return (*(v10 + 8))(v12, v14);
  }

  else
  {
    v17 = *(v9 + 3);
    v37 = *(v9 + 2);
    v38 = v17;
    v39 = *(v9 + 4);
    v40 = *(v9 + 40);
    v18 = *(v9 + 1);
    v35 = *v9;
    v36 = v18;
    LOBYTE(v29) = 0;
    sub_24F536CD4();
    v19 = v28;
    sub_24F92CC98();
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v36;
    sub_24F536D28();
    v20 = v22;
    sub_24F92CD48();
    (*(v21 + 8))(v6, v20);
    (*(v10 + 8))(v12, v19);
    return sub_24E7FA8F8(&v35);
  }
}

uint64_t FriendSuggestion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2475C0);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x28223BE20](v3);
  v51 = &v41 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2475C8);
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v50 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2475D0);
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for FriendSuggestion(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F536C2C();
  v20 = v52;
  sub_24F92D108();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v42 = v15;
  v52 = v12;
  v22 = v50;
  v21 = v51;
  v43 = v18;
  v23 = v49;
  v24 = sub_24F92CC78();
  v25 = (2 * *(v24 + 16)) | 1;
  v59 = v24;
  v60 = v24 + 32;
  v61 = 0;
  v62 = v25;
  v26 = sub_24E643430();
  v27 = v9;
  if (v26 == 2 || v61 != v62 >> 1)
  {
    v29 = sub_24F92C918();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v31 = v10;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    (*(v23 + 8))(v9, v7);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  if (v26)
  {
    LOBYTE(v53) = 1;
    sub_24F536C80();
    v28 = v21;
    sub_24F92CBA8();
    type metadata accessor for ActivityFriendSuggestion(0);
    sub_24F5368F4(&qword_27F2475D8, type metadata accessor for ActivityFriendSuggestion);
    v34 = v52;
    v35 = v47;
    sub_24F92CC68();
    (*(v48 + 8))(v28, v35);
    (*(v23 + 8))(v27, v7);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v39 = v34;
  }

  else
  {
    LOBYTE(v53) = 0;
    sub_24F536CD4();
    sub_24F92CBA8();
    sub_24F536D7C();
    v33 = v46;
    sub_24F92CC68();
    (*(v45 + 8))(v22, v33);
    (*(v23 + 8))(v9, v7);
    swift_unknownObjectRelease();
    v36 = v56;
    v37 = v42;
    *(v42 + 2) = v55;
    *(v37 + 48) = v36;
    *(v37 + 64) = v57;
    *(v37 + 80) = v58;
    v38 = v54;
    *v37 = v53;
    *(v37 + 16) = v38;
    swift_storeEnumTagMultiPayload();
    v39 = v37;
  }

  v40 = v43;
  sub_24F5369E4(v39, v43, type metadata accessor for FriendSuggestion);
  sub_24F5369E4(v40, v44, type metadata accessor for FriendSuggestion);
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_24F536824@<X0>(uint64_t *a1@<X8>)
{
  result = FriendSuggestion.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_24F53684C()
{
  result = qword_27F247500;
  if (!qword_27F247500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247500);
  }

  return result;
}

unint64_t sub_24F5368A0()
{
  result = qword_27F247510;
  if (!qword_27F247510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247510);
  }

  return result;
}

uint64_t sub_24F5368F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F53693C()
{
  result = qword_27F247520;
  if (!qword_27F247520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247520);
  }

  return result;
}

unint64_t sub_24F536990()
{
  result = qword_27F247528;
  if (!qword_27F247528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247528);
  }

  return result;
}

uint64_t sub_24F5369E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F536A4C()
{
  result = qword_27F247538;
  if (!qword_27F247538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247538);
  }

  return result;
}

unint64_t sub_24F536AA0()
{
  result = qword_27F247550;
  if (!qword_27F247550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247548);
    sub_24F5368F4(&qword_27F247558, type metadata accessor for ActivityFriendSuggestion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247550);
  }

  return result;
}

unint64_t sub_24F536B54()
{
  result = qword_27F247570;
  if (!qword_27F247570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247568);
    sub_24F536BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247570);
  }

  return result;
}

unint64_t sub_24F536BD8()
{
  result = qword_27F247578;
  if (!qword_27F247578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247578);
  }

  return result;
}

unint64_t sub_24F536C2C()
{
  result = qword_27F247598;
  if (!qword_27F247598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247598);
  }

  return result;
}

unint64_t sub_24F536C80()
{
  result = qword_27F2475A0;
  if (!qword_27F2475A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2475A0);
  }

  return result;
}

unint64_t sub_24F536CD4()
{
  result = qword_27F2475B0;
  if (!qword_27F2475B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2475B0);
  }

  return result;
}

unint64_t sub_24F536D28()
{
  result = qword_27F2475B8;
  if (!qword_27F2475B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2475B8);
  }

  return result;
}

unint64_t sub_24F536D7C()
{
  result = qword_27F2475E0;
  if (!qword_27F2475E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2475E0);
  }

  return result;
}

unint64_t sub_24F536DD4()
{
  result = qword_27F2475E8;
  if (!qword_27F2475E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2475E8);
  }

  return result;
}

uint64_t sub_24F536E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_24F536E70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F536EEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for Game();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = sub_24F91F648();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_24F53706C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = type metadata accessor for Game();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_24F91F648();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24F5371DC()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Game();
    if (v2 <= 0x3F)
    {
      result = sub_24F91F648();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_24F537290()
{
  sub_24F537304();
  if (v0 <= 0x3F)
  {
    sub_24F537334();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

ValueMetadata *sub_24F537304()
{
  result = qword_27F247610;
  if (!qword_27F247610)
  {
    result = &type metadata for ContactFriendSuggestion;
    atomic_store(&type metadata for ContactFriendSuggestion, &qword_27F247610);
  }

  return result;
}

void sub_24F537334()
{
  if (!qword_27F247618)
  {
    v0 = type metadata accessor for ActivityFriendSuggestion(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27F247618);
    }
  }
}

unint64_t sub_24F5373D0()
{
  result = qword_27F247620;
  if (!qword_27F247620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247620);
  }

  return result;
}

unint64_t sub_24F537428()
{
  result = qword_27F247628;
  if (!qword_27F247628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247628);
  }

  return result;
}

unint64_t sub_24F537480()
{
  result = qword_27F247630;
  if (!qword_27F247630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247630);
  }

  return result;
}

unint64_t sub_24F5374D8()
{
  result = qword_27F247638;
  if (!qword_27F247638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247638);
  }

  return result;
}

unint64_t sub_24F537530()
{
  result = qword_27F247640;
  if (!qword_27F247640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247640);
  }

  return result;
}

unint64_t sub_24F537588()
{
  result = qword_27F247648;
  if (!qword_27F247648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247648);
  }

  return result;
}

unint64_t sub_24F5375E0()
{
  result = qword_27F247650;
  if (!qword_27F247650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247650);
  }

  return result;
}

unint64_t sub_24F537638()
{
  result = qword_27F247658;
  if (!qword_27F247658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247658);
  }

  return result;
}

unint64_t sub_24F537690()
{
  result = qword_27F247660;
  if (!qword_27F247660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247660);
  }

  return result;
}

unint64_t sub_24F5376E8()
{
  result = qword_27F247668;
  if (!qword_27F247668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247668);
  }

  return result;
}

unint64_t sub_24F537740()
{
  result = qword_27F247670;
  if (!qword_27F247670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247670);
  }

  return result;
}

unint64_t sub_24F537798()
{
  result = qword_27F247678;
  if (!qword_27F247678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247678);
  }

  return result;
}

unint64_t sub_24F5377F0()
{
  result = qword_27F247680;
  if (!qword_27F247680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247680);
  }

  return result;
}

unint64_t sub_24F537848()
{
  result = qword_27F247688;
  if (!qword_27F247688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247688);
  }

  return result;
}

unint64_t sub_24F5378A0()
{
  result = qword_27F247690;
  if (!qword_27F247690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247690);
  }

  return result;
}

uint64_t sub_24F5378F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA56F30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA765D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA56F50 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA765F0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F537B44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24F537CA0()
{
  result = qword_27F247698;
  if (!qword_27F247698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247698);
  }

  return result;
}

uint64_t sub_24F537D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Page(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F537DDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Page(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DefaultPageShelvesContentView()
{
  result = qword_27F2476A0;
  if (!qword_27F2476A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F537EE0()
{
  result = type metadata accessor for Page(319);
  if (v1 <= 0x3F)
  {
    result = sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F537FB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED68);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - v3;
  *&v26[0] = *(v0 + *(type metadata accessor for Page(0) + 48));

  sub_24EA0B788(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70);
  sub_24E602068(&qword_27F21ED78, &qword_27F21ED70);
  sub_24F921BA8();
  sub_24E602068(&qword_27F22C7A8, &qword_27F21ED68);
  v6 = sub_24F92BBC8();
  if (!v6)
  {
    (*(v2 + 8))(v4, v1);
    return MEMORY[0x277D84F90];
  }

  v7 = v6;
  v28 = MEMORY[0x277D84F90];
  sub_24F458880(0, v6 & ~(v6 >> 63), 0);
  v8 = v28;
  result = sub_24F92BB88();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v22[0] = v2;
    do
    {
      v10 = sub_24F92BC88();
      v23 = *v11;
      sub_24E615E00((v11 + 1), v24);
      v10(v25, 0);
      v12 = v23;
      sub_24E615E00(v24, v26);
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      swift_getDynamicType();
      v25[0] = sub_24F92D1E8();
      v25[1] = v13;
      v22[1] = v12;
      v14 = sub_24F92CD88();
      MEMORY[0x253050C20](v14);

      sub_24F92C7F8();
      v27 = v12;
      __swift_destroy_boxed_opaque_existential_1(v24);
      v28 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24F458880((v15 > 1), v16 + 1, 1);
        v8 = v28;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 88 * v16;
      v18 = v26[1];
      *(v17 + 32) = v26[0];
      *(v17 + 48) = v18;
      v19 = v26[2];
      v20 = v26[3];
      v21 = v26[4];
      *(v17 + 112) = v27;
      *(v17 + 80) = v20;
      *(v17 + 96) = v21;
      *(v17 + 64) = v19;
      sub_24F92BC18();
      --v7;
    }

    while (v7);
    (*(v22[0] + 8))(v4, v1);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F53835C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29[1] = a4;
  v32 = type metadata accessor for PaginatedShelfIntentView(0);
  MEMORY[0x28223BE20](v32);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C770);
  MEMORY[0x28223BE20](v31);
  v10 = v29 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC0);
  MEMORY[0x28223BE20](v30);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229248);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  sub_24E615E00(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213818);
  if (swift_dynamicCast())
  {
    v38[0] = v34;
    v38[1] = v35;
    v39 = v36;
    sub_24EB3BA60(v38, v37);
    v14 = *(a3 + *(type metadata accessor for Page(0) + 84));
    v15 = *(a3 + *(type metadata accessor for DefaultPageShelvesContentView() + 20));
    sub_24EB3BA60(v37, v8);
    v8[40] = v14;
    *(v8 + 6) = a2;
    *(v8 + 7) = sub_24EC7017C;
    *(v8 + 8) = v15;
    v8[72] = 0;
    sub_24EB3BA60(v37, &v34);
    type metadata accessor for GSKShelf();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
    sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
    sub_24E7C5EC0();
    sub_24F9217C8();
    sub_24F926F28();
    sub_24EB3BE00(v37);
    sub_24F53A884(v8, v10, type metadata accessor for PaginatedShelfIntentView);
    swift_storeEnumTagMultiPayload();
    sub_24F53A7B4();
    sub_24E602068(&qword_27F229270, &qword_27F229248);
    sub_24F924E28();
    sub_24EC70254(v8);
    return sub_24EB3BE00(v38);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_24E601704(&v34, &qword_27F229260);
    sub_24E615E00(a1, v38);
    v17 = *(a3 + *(type metadata accessor for Page(0) + 84));
    type metadata accessor for DefaultPageShelvesContentView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);
    sub_24F928F28();
    sub_24E615E00(v38, &v34);
    sub_24E615E00(v37, v33);
    v18 = v11[17];
    *&v13[v18] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD8);
    swift_storeEnumTagMultiPayload();
    v13[v11[13]] = v17;
    v19 = __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
    v20 = MEMORY[0x28223BE20](v19);
    (*(v22 + 16))(v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
    sub_24F928D38();
    v23 = &v13[v11[14]];
    *v23 = a2;
    v23[8] = 0;
    sub_24E615E00(v33, &v13[v11[15]]);
    v24 = &v13[v11[16]];
    *v24 = sub_24F78343C;
    v24[1] = 0;
    v25 = __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
    v26 = MEMORY[0x28223BE20](v25);
    (*(v28 + 16))(v29 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    type metadata accessor for GSKShelf();
    sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
    sub_24F9217C8();
    sub_24F926F28();
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(&v34);
    sub_24F53A814(v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_24F53A7B4();
    sub_24E602068(&qword_27F229270, &qword_27F229248);
    sub_24F924E28();
    return sub_24E601704(v13, &qword_27F229248);
  }
}

uint64_t sub_24F538A9C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v8[1] = sub_24F537FB4();
  swift_getKeyPath();
  sub_24F53A884(v1, v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DefaultPageShelvesContentView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_24F53A650(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24F53A6B4;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C750);
  sub_24E602068(&qword_27F22C768, &qword_27F22C760);
  sub_24EC6FFC0();
  return sub_24F927228();
}

uint64_t sub_24F538C84()
{
  v1 = *(*(type metadata accessor for DefaultPageShelvesContentView() - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  v3 = sub_24F92A708();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for Page(0);

  v5 = v4[6];
  v6 = sub_24F928818();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v2 + v4[20];
  v8 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    goto LABEL_55;
  }

  v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v10 = *(*(v9 - 1) + 48);
  if (!v10(v7, 1, v9))
  {

    v11 = v7 + v9[5];
    v12 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v85 = sub_24F9289E8();
          (*(*(v85 - 8) + 8))(v11, v85);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v13 = v7 + v9[7];
          v14 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v16 = sub_24F928388();
              (*(*(v16 - 8) + 8))(v13, v16);
            }
          }

          v17 = v7 + v9[10];
          if (*(v17 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v17);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v73 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v74 = type metadata accessor for JSColor();
        if (!(*(*(v74 - 8) + 48))(v73, 1, v74))
        {
          v75 = sub_24F928388();
          (*(*(v75 - 8) + 8))(v73, v75);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v82 = sub_24F9289E8();
        v83 = *(v82 - 8);
        if (!(*(v83 + 48))(v11, 1, v82))
        {
          (*(v83 + 8))(v11, v82);
        }

        if (*(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v18 = v7 + v8[5];
  if (v10(v18, 1, v9))
  {
    goto LABEL_32;
  }

  v19 = v18 + v9[5];
  v20 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    goto LABEL_17;
  }

  v23 = swift_getEnumCaseMultiPayload();
  if (v23 <= 2)
  {
    if (!v23)
    {

      v76 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v77 = type metadata accessor for JSColor();
      if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
      {
        v78 = sub_24F928388();
        (*(*(v78 - 8) + 8))(v76, v78);
      }

      goto LABEL_17;
    }

    if (v23 == 1)
    {
      v84 = sub_24F9289E8();
      v104 = *(v84 - 8);
      if (!(*(v104 + 48))(v19, 1, v84))
      {
        (*(v104 + 8))(v19, v84);
      }

      if (*(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v23 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v23)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v87 = sub_24F9289E8();
      (*(*(v87 - 8) + 8))(v19, v87);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v21 = v18 + v9[7];
  v22 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v24 = sub_24F928388();
      (*(*(v24 - 8) + 8))(v21, v24);
    }
  }

  v25 = v18 + v9[10];
  if (*(v25 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

LABEL_32:
  v26 = v7 + v8[6];
  if (v10(v26, 1, v9))
  {
    goto LABEL_49;
  }

  v27 = v26 + v9[5];
  v28 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    goto LABEL_34;
  }

  v31 = swift_getEnumCaseMultiPayload();
  if (v31 <= 2)
  {
    if (!v31)
    {

      v79 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v80 = type metadata accessor for JSColor();
      if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        v81 = sub_24F928388();
        (*(*(v81 - 8) + 8))(v79, v81);
      }

      goto LABEL_34;
    }

    if (v31 == 1)
    {
      v86 = sub_24F9289E8();
      v105 = *(v86 - 8);
      if (!(*(v105 + 48))(v27, 1, v86))
      {
        (*(v105 + 8))(v27, v86);
      }

      if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v31 != 2)
    {
      goto LABEL_34;
    }

LABEL_103:

    goto LABEL_34;
  }

  switch(v31)
  {
    case 3:
      goto LABEL_103;
    case 4:
      v88 = sub_24F9289E8();
      (*(*(v88 - 8) + 8))(v27, v88);
      break;
    case 5:
      goto LABEL_103;
  }

LABEL_34:
  v29 = v26 + v9[7];
  v30 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v32 = sub_24F928388();
      (*(*(v32 - 8) + 8))(v29, v32);
    }
  }

  v33 = v26 + v9[10];
  if (*(v33 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

LABEL_49:
  v34 = v7 + v8[7];
  if (*(v34 + 56) == 1)
  {
  }

  else if (!*(v34 + 56))
  {

    if (*(v34 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v34 + 16);
    }
  }

  v35 = v7 + v8[8];
  v36 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v50 = swift_getEnumCaseMultiPayload();
    if (v50 == 2)
    {
      goto LABEL_149;
    }

    if (v50 != 1)
    {
      if (v50)
      {
        goto LABEL_55;
      }

      v51 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v51 - 8) + 48))(v35, 1, v51))
      {
        goto LABEL_55;
      }

      v52 = swift_getEnumCaseMultiPayload();
      if (v52 > 2)
      {
        if (v52 != 3)
        {
          if (v52 == 4)
          {
            v103 = sub_24F9289E8();
            (*(*(v103 - 8) + 8))(v35, v103);
            goto LABEL_55;
          }

          if (v52 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_149;
      }

      if (v52)
      {
        if (v52 == 1)
        {
          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v35, 1, v101))
          {
            (*(v102 + 8))(v35, v101);
          }

          if (!*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v52 != 2)
        {
          goto LABEL_55;
        }

LABEL_149:

        goto LABEL_55;
      }

      v68 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v69 = type metadata accessor for JSColor();
      if ((*(*(v69 - 8) + 48))(v68, 1, v69))
      {
        goto LABEL_55;
      }

LABEL_99:
      v70 = sub_24F928388();
      (*(*(v70 - 8) + 8))(v68, v70);

      goto LABEL_55;
    }

    v64 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v65 = *(*(v64 - 8) + 48);
    if (v65(v35, 1, v64))
    {
LABEL_97:
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v67 = v35 + *(v66 + 48);
      if (v65(v67, 1, v64))
      {
        goto LABEL_98;
      }

      v72 = swift_getEnumCaseMultiPayload();
      if (v72 <= 2)
      {
        if (v72)
        {
          if (v72 != 1)
          {
            if (v72 != 2)
            {
              goto LABEL_98;
            }

LABEL_145:

            goto LABEL_98;
          }

          v97 = sub_24F9289E8();
          v98 = *(v97 - 8);
          if (!(*(v98 + 48))(v67, 1, v97))
          {
            (*(v98 + 8))(v67, v97);
          }

          if (*(v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v92 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v93 = type metadata accessor for JSColor();
          if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
          {
            v94 = sub_24F928388();
            (*(*(v94 - 8) + 8))(v92, v94);
          }
        }

LABEL_98:
        v68 = v35 + *(v66 + 80);
        v69 = type metadata accessor for JSColor();
        if ((*(*(v69 - 8) + 48))(v68, 1, v69))
        {
          goto LABEL_55;
        }

        goto LABEL_99;
      }

      if (v72 != 3)
      {
        if (v72 == 4)
        {
          v100 = sub_24F9289E8();
          (*(*(v100 - 8) + 8))(v67, v100);
          goto LABEL_98;
        }

        if (v72 != 5)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_145;
    }

    v71 = swift_getEnumCaseMultiPayload();
    if (v71 > 2)
    {
      if (v71 != 3)
      {
        if (v71 == 4)
        {
          v99 = sub_24F9289E8();
          (*(*(v99 - 8) + 8))(v35, v99);
          goto LABEL_97;
        }

        if (v71 != 5)
        {
          goto LABEL_97;
        }
      }
    }

    else
    {
      if (!v71)
      {

        v89 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v90 = type metadata accessor for JSColor();
        if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
        {
          v91 = sub_24F928388();
          (*(*(v91 - 8) + 8))(v89, v91);
        }

        goto LABEL_97;
      }

      if (v71 == 1)
      {
        v95 = sub_24F9289E8();
        v96 = *(v95 - 8);
        if (!(*(v96 + 48))(v35, 1, v95))
        {
          (*(v96 + 8))(v35, v95);
        }

        if (*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_97;
      }

      if (v71 != 2)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_97;
  }

LABEL_55:
  if (*(v2 + v4[23]))
  {
  }

  v37 = v2 + v4[24];
  v38 = type metadata accessor for Page.Background(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 <= 1)
    {
      if (v44)
      {
        if (v44 == 1)
        {
          v46 = sub_24F9289E8();
          (*(*(v46 - 8) + 8))(v37, v46);
          v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v48 = sub_24F922348();
          v49 = *(v48 - 8);
          if (!(*(v49 + 48))(v37 + v47, 1, v48))
          {
            (*(v49 + 8))(v37 + v47, v48);
          }
        }
      }

      else
      {
        v63 = sub_24F9289E8();
        (*(*(v63 - 8) + 8))(v37, v63);
      }
    }

    else if (v44 == 2)
    {
      v53 = sub_24F9289E8();
      v54 = *(v53 - 8);
      if (!(*(v54 + 48))(v37, 1, v53))
      {
        (*(v54 + 8))(v37, v53);
      }

      v55 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v56 = type metadata accessor for GSKVideo();
      if (!(*(*(v56 - 1) + 48))(v55, 1, v56))
      {
        v57 = sub_24F91F4A8();
        (*(*(v57 - 8) + 8))(v55, v57);
        (*(v54 + 8))(v55 + v56[5], v53);
        v58 = v56[9];
        v59 = sub_24F928698();
        v60 = *(v59 - 8);
        v61 = *(v60 + 48);
        if (!v61(v55 + v58, 1, v59))
        {
          (*(v60 + 8))(v55 + v58, v59);
        }

        v62 = v56[10];
        if (!v61(v55 + v62, 1, v59))
        {
          (*(v60 + 8))(v55 + v62, v59);
        }
      }
    }

    else if (v44 == 3 || v44 == 4)
    {
      v45 = sub_24F928388();
      (*(*(v45 - 8) + 8))(v37, v45);
    }
  }

  v39 = v2 + v4[27];
  if (*(v39 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = v2 + v4[28];
  if (*(v40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v2 + v4[29];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = v2 + v4[30];
  if (*(v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return swift_deallocObject();
}

uint64_t sub_24F53A650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultPageShelvesContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F53A6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for DefaultPageShelvesContentView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_24F53835C(a1, a2, v8, a3);
}

uint64_t sub_24F53A74C()
{

  return swift_deallocObject();
}

unint64_t sub_24F53A7B4()
{
  result = qword_27F22C758;
  if (!qword_27F22C758)
  {
    type metadata accessor for PaginatedShelfIntentView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C758);
  }

  return result;
}

uint64_t sub_24F53A814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F53A884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_24F53A8F0()
{
  sub_24F540334();
  if (v0 <= 0x3F)
  {
    sub_24F92C4A8();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_24F53A9E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v54 = *(a1 - 1);
  v70 = *(v54 + 64);
  MEMORY[0x28223BE20](a1);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2477C8);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2477D0);
  v58 = v7;
  v63 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = &v47 - v8;
  v9 = a1[2];
  v10 = sub_24E602068(&qword_27F2477D8, &qword_27F2477D0);
  v11 = a1[4];
  v74 = v7;
  v75 = v9;
  v76 = v10;
  v77 = v11;
  v59 = v10;
  v60 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v61 = OpaqueTypeMetadata2;
  v62 = v13;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v55 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v47 - v16;
  v48 = a1;
  v17 = a1[3];
  v65 = v9;
  type metadata accessor for ShelvesPaginationController();
  swift_getWitnessTable();
  sub_24F923638();
  v71 = v9;
  v72 = v17;
  v73 = v11;
  v18 = v11;
  swift_getKeyPath();
  sub_24F923C38();

  v19 = v54;
  v20 = *(v54 + 16);
  v66 = v54 + 16;
  v68 = v20;
  v21 = v53;
  v50 = v2;
  v22 = v48;
  v20(v53, v2, v48);
  v67 = *(v19 + 80);
  v23 = (v67 + 40) & ~v67;
  v24 = swift_allocObject();
  v49 = v24;
  v25 = v65;
  v24[2] = v65;
  v24[3] = v17;
  v26 = v17;
  v52 = v17;
  v27 = v18;
  v51 = v18;
  v24[4] = v18;
  v28 = *(v19 + 32);
  v28(v24 + v23, v21, v22);
  v68(v21, v2, v22);
  v29 = swift_allocObject();
  v29[2] = v25;
  v29[3] = v26;
  v29[4] = v27;
  v30 = v29 + v23;
  v31 = v23;
  v32 = v21;
  v33 = v22;
  v28(v30, v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E8);
  v54 = sub_24F921BC8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2477E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199B0);
  sub_24F541298(&qword_27F2477E8, MEMORY[0x277D7EC50]);
  sub_24F54099C();
  sub_24E714410();
  v34 = v56;
  sub_24F921918();
  v68(v32, v50, v22);
  v35 = swift_allocObject();
  v36 = v65;
  v37 = v52;
  *(v35 + 2) = v65;
  *(v35 + 3) = v37;
  v38 = v51;
  *(v35 + 4) = v51;
  v28(&v35[v31], v32, v33);
  v39 = v55;
  v40 = v58;
  v41 = v59;
  sub_24F926AB8();

  (*(v63 + 8))(v34, v40);
  v74 = v40;
  v75 = v36;
  v76 = v41;
  v77 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v57;
  v44 = v61;
  sub_24E7896B8(v39, v61, OpaqueTypeConformance2);
  v45 = *(v62 + 8);
  v45(v39, v44);
  sub_24E7896B8(v43, v44, OpaqueTypeConformance2);
  return (v45)(v43, v44);
}

uint64_t sub_24F53B0F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();
}

uint64_t sub_24F53B1CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A78);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_24F53B2A0(v5);
}

uint64_t sub_24F53B2A0(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v13 = v3[10];
  v8 = v13;
  v14 = v3[11];
  v9 = v14;
  v15 = v3[12];
  v10 = v15;
  swift_getKeyPath();
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  swift_getKeyPath();
  (*(v5 + 16))(v7, a1, v4);

  sub_24F9230A8();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_24F53B438@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v21 = a2;
  v26 = a6;
  v8 = type metadata accessor for PaginatedShelvesIntentView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292B8);
  MEMORY[0x28223BE20](v25);
  v13 = *a1;
  v27 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E8);
  sub_24E602068(&qword_27F2292C0, &qword_27F2165E8);
  sub_24F921BA8();
  KeyPath = swift_getKeyPath();
  (*(v9 + 16))(v12, v21, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  v17 = v22;
  v16 = v23;
  *(v15 + 2) = a3;
  *(v15 + 3) = v17;
  *(v15 + 4) = v16;
  (*(v9 + 32))(&v15[v14], v12, v8);
  *&v15[(v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8] = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24F54117C;
  *(v18 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292B0);
  sub_24E602068(&qword_27F2292C8, &qword_27F2292B8);
  sub_24F541298(&qword_27F21BCA0, MEMORY[0x277D224C0]);
  sub_24E602068(&qword_27F2292A8, &qword_27F2292B0);
  return sub_24F927228();
}

uint64_t sub_24F53B784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v38 = a6;
  v39 = a7;
  v37 = a5;
  v40 = a4;
  v43 = a1;
  v11 = type metadata accessor for PaginatedShelvesIntentView();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for GSKShelf();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v41 = &v37 - v20;
  v42 = *(a3 + *(v11 + 44));
  sub_24E614E60(a2, &v37 - v20);
  sub_24E614E60(a2, v18);
  (*(v12 + 16))(v14, a3, v11);
  v21 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v12 + 80) + v22 + 8) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v38;
  *(v24 + 2) = v37;
  *(v24 + 3) = v25;
  *(v24 + 4) = v39;
  sub_24E67C3EC(v18, &v24[v21]);
  *&v24[v22] = v40;
  (*(v12 + 32))(&v24[v23], v14, v11);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292B0);
  v27 = &a8[v26[14]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &a8[v26[15]];
  v44 = 0;

  sub_24F926F28();
  v29 = v46;
  *v28 = v45;
  *(v28 + 1) = v29;
  v30 = v26[16];
  *&a8[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58);
  swift_storeEnumTagMultiPayload();
  *a8 = v42;
  v31 = v41;
  sub_24E64346C(&a8[v26[9]]);
  result = sub_24E614EC4(v31);
  v33 = &a8[v26[10]];
  *v33 = v43;
  v33[8] = 0;
  v34 = &a8[v26[11]];
  *v34 = CGSizeMake;
  v34[1] = 0;
  v35 = &a8[v26[12]];
  *v35 = sub_24F542848;
  v35[1] = v24;
  v36 = &a8[v26[13]];
  *v36 = 0;
  v36[1] = 0;
  return result;
}

uint64_t sub_24F53BADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a3;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v8 = type metadata accessor for PaginatedShelvesIntentView();
  v57 = *(v8 - 8);
  v58 = v8;
  v55 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v56 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v51 - v11;
  v12 = sub_24F92AA48();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v52 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2477F8);
  MEMORY[0x28223BE20](v62);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247800);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v51 - v24;
  v26 = *(v13 + 16);
  v26(&v51 - v24, a1, v12, v23);
  v64 = v13;
  v27 = *(v13 + 56);
  v28 = 1;
  v27(v25, 0, 1, v12);
  v29 = *(a2 + 16);
  if (v29)
  {
    v30 = v29 - 1;
    v31 = *(type metadata accessor for GSKShelf() - 8);
    (v26)(v21, a2 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, v12);
    v28 = 0;
  }

  v27(v21, v28, 1, v12);
  v32 = *(v62 + 48);
  sub_24E60169C(v25, v16, &qword_27F247800);
  sub_24E60169C(v21, &v16[v32], &qword_27F247800);
  v33 = v64;
  v34 = *(v64 + 48);
  v35 = v34(v16, 1, v12);
  v36 = v63;
  if (v35 != 1)
  {
    sub_24E60169C(v16, v63, &qword_27F247800);
    if (v34(&v16[v32], 1, v12) != 1)
    {
      v38 = v52;
      (*(v33 + 32))(v52, &v16[v32], v12);
      sub_24F541298(&qword_27F21BCA8, MEMORY[0x277D224C0]);
      v39 = sub_24F92AFF8();
      v40 = *(v33 + 8);
      v40(v38, v12);
      sub_24E601704(v21, &qword_27F247800);
      sub_24E601704(v25, &qword_27F247800);
      v40(v36, v12);
      result = sub_24E601704(v16, &qword_27F247800);
      if ((v39 & 1) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

    sub_24E601704(v21, &qword_27F247800);
    sub_24E601704(v25, &qword_27F247800);
    (*(v33 + 8))(v36, v12);
    return sub_24E601704(v16, &qword_27F2477F8);
  }

  sub_24E601704(v21, &qword_27F247800);
  sub_24E601704(v25, &qword_27F247800);
  if (v34(&v16[v32], 1, v12) != 1)
  {
    return sub_24E601704(v16, &qword_27F2477F8);
  }

  sub_24E601704(v16, &qword_27F247800);
LABEL_10:
  v41 = sub_24F92B858();
  v42 = v53;
  (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
  v44 = v56;
  v43 = v57;
  v45 = v58;
  (*(v57 + 16))(v56, v54, v58);
  sub_24F92B7F8();
  v46 = sub_24F92B7E8();
  v47 = (*(v43 + 80) + 56) & ~*(v43 + 80);
  v48 = swift_allocObject();
  v49 = MEMORY[0x277D85700];
  *(v48 + 2) = v46;
  *(v48 + 3) = v49;
  v50 = v60;
  *(v48 + 4) = v59;
  *(v48 + 5) = v50;
  *(v48 + 6) = v61;
  (*(v43 + 32))(&v48[v47], v44, v45);
  sub_24EA998B8(0, 0, v42, &unk_24FA07668, v48);
}

uint64_t sub_24F53C1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_24F92B7F8();
  v7[6] = sub_24F92B7E8();
  v9 = sub_24F92B778();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x2822009F8](sub_24F53C250, v9, v8);
}

uint64_t sub_24F53C250()
{
  type metadata accessor for PaginatedShelvesIntentView();
  type metadata accessor for ShelvesPaginationController();
  swift_getWitnessTable();
  *(v0 + 72) = sub_24F923628();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_24F53C36C;

  return sub_24F53C4B0();
}

uint64_t sub_24F53C36C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24F542C30, v3, v2);
}

uint64_t sub_24F53C4B0()
{
  v1[24] = v0;
  v2 = *(*v0 + 80);
  v1[25] = v2;
  v3 = sub_24F92C4A8();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  sub_24F92B7F8();
  v1[32] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v1[33] = v5;
  v1[34] = v4;

  return MEMORY[0x2822009F8](sub_24F53C61C, v5, v4);
}

uint64_t sub_24F53C61C()
{
  v1 = *(v0 + 192);
  v2 = *(*v1 + 136);
  if (*(v1 + v2))
  {

LABEL_5:

    v12 = *(v0 + 8);

    return v12();
  }

  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 200);
  v8 = *(*v1 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v3, v1 + v8, v5);
  if ((*(v4 + 48))(v3, 1, v7) == 1)
  {
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 208);

    (*(v10 + 8))(v9, v11);
    goto LABEL_5;
  }

  v14 = *(v0 + 192);
  (*(*(v0 + 232) + 32))(*(v0 + 248), *(v0 + 224), *(v0 + 200));
  v15 = v14 + *(*v14 + 128);
  swift_beginAccess();
  if (*(v15 + 24))
  {
    sub_24E615E00(v15, v0 + 56);
  }

  else
  {
    v16 = *v15;
    v17 = *(v15 + 16);
    *(v0 + 88) = *(v15 + 32);
    *(v0 + 72) = v17;
    *(v0 + 56) = v16;
  }

  v18 = *(v0 + 232);
  v19 = *(v0 + 200);
  if (!*(v0 + 80))
  {
    (*(v18 + 8))(*(v0 + 248), *(v0 + 200));

    if (*(v0 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    }

    goto LABEL_5;
  }

  v21 = *(v0 + 240);
  v20 = *(v0 + 248);
  sub_24E612C80((v0 + 56), v0 + 16);
  *(v1 + v2) = 1;
  (*(v18 + 16))(v21, v20, v19);
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v22 = sub_24F9220D8();
  *(v0 + 280) = __swift_project_value_buffer(v22, qword_27F39E850);
  v23 = sub_24F9220B8();
  v24 = sub_24F92BD98();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_24E5DD000, v23, v24, "Fetching more paginated shelves", v25, 2u);
    MEMORY[0x2530542D0](v25, -1, -1);
  }

  v26 = *(v0 + 192);

  *(v0 + 288) = *(v26 + qword_27F2476B8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v28 = swift_task_alloc();
  *(v0 + 296) = v28;
  *v28 = v0;
  v28[1] = sub_24F53C9E0;

  return MEMORY[0x28217F228](v0 + 96, v27, v27);
}

uint64_t sub_24F53C9E0()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_24F53CE44;
  }

  else
  {
    v5 = sub_24F53CB1C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F53CB1C()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = v0[5];
  v4 = v0[6];
  v5 = __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_24F53CC04;
  v7 = v0[36];

  return MEMORY[0x28217F4B0](v0 + 23, v5, v7, v3, v4, v1, v2);
}

uint64_t sub_24F53CC04()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_24F53D020;
  }

  else
  {
    v5 = sub_24F53CD40;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F53CD40()
{
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[25];

  sub_24F53F6E4(v0[23], v2);

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  *(v0[24] + *(*v0[24] + 136)) = 0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_24F53CE44()
{

  v1 = v0[38];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  v9 = v0[25];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Shelves pagination fetch failed: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  v14 = *(v8 + 8);
  v14(v7, v9);
  v14(v6, v9);
  *(v0[24] + *(*v0[24] + 136)) = 0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v15 = v0[1];

  return v15();
}

uint64_t sub_24F53D020()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  v1 = v0[40];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  v9 = v0[25];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Shelves pagination fetch failed: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  v14 = *(v8 + 8);
  v14(v7, v9);
  v14(v6, v9);
  *(v0[24] + *(*v0[24] + 136)) = 0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v15 = v0[1];

  return v15();
}

__n128 sub_24F53D204@<Q0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v33 = a5;
  v32 = a4;
  v31 = a3;
  v35 = a1;
  v39 = a6;
  v38 = sub_24F921CB8();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PaginatedShelvesIntentView();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DE8);
  v34 = *(v37 - 8);
  v17 = MEMORY[0x28223BE20](v37);
  v19 = &v31 - v18;
  (*(v10 + 16))(v12, a2, v9, v17);
  v20 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v22 = v32;
  *(v21 + 2) = v31;
  *(v21 + 3) = v22;
  *(v21 + 4) = v33;
  (*(v10 + 32))(&v21[v20], v12, v9);
  v23 = v35;
  sub_24F921A18();
  v24 = v36;
  v25 = v38;
  (*(v36 + 104))(v8, *MEMORY[0x277D7ECB0], v38);
  sub_24E602068(&qword_27F219DD0, &qword_27F219DC8);
  sub_24F925E38();
  (*(v24 + 8))(v8, v25);
  (*(v14 + 8))(v16, v13);
  sub_24F927618();
  sub_24F9242E8();
  v26 = v39;
  (*(v34 + 32))(v39, v19, v37);
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199B0) + 36);
  v28 = v45;
  *(v27 + 64) = v44;
  *(v27 + 80) = v28;
  *(v27 + 96) = v46;
  v29 = v41;
  *v27 = v40;
  *(v27 + 16) = v29;
  result = v43;
  *(v27 + 32) = v42;
  *(v27 + 48) = result;
  return result;
}

uint64_t sub_24F53D67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PaginatedShelvesIntentView();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  sub_24F92B7F8();
  v16 = sub_24F92B7E8();
  v17 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  *(v18 + 6) = a4;
  (*(v9 + 32))(&v18[v17], v11, v8);
  sub_24EA998B8(0, 0, v14, &unk_24FA075A0, v18);
}

uint64_t sub_24F53D884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_24F92B7F8();
  v7[6] = sub_24F92B7E8();
  v9 = sub_24F92B778();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x2822009F8](sub_24F53D920, v9, v8);
}

uint64_t sub_24F53D920()
{
  type metadata accessor for PaginatedShelvesIntentView();
  type metadata accessor for ShelvesPaginationController();
  swift_getWitnessTable();
  v0[9] = sub_24F923628();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_24F53DA44;
  v2 = v0[2];

  return sub_24F53DB88(v2);
}

uint64_t sub_24F53DA44()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24E828C30, v3, v2);
}

uint64_t sub_24F53DB88(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *v1;
  v2[19] = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A78);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v5 = *(v3 + 80);
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v6 = sub_24F92C4A8();
  v2[27] = v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v2[28] = TupleTypeMetadata2;
  v2[29] = *(TupleTypeMetadata2 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = *(v6 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  sub_24F92B7F8();
  v2[38] = sub_24F92B7E8();
  v9 = sub_24F92B778();
  v2[39] = v9;
  v2[40] = v8;

  return MEMORY[0x2822009F8](sub_24F53DE40, v9, v8);
}

uint64_t sub_24F53DE40()
{
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[17];
  v9 = v0[18];
  v10 = v7[2];
  v0[41] = v10;
  v0[42] = (v7 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59 = v4;
  v58 = v10;
  v10(v1, v8, v6);
  v11 = v7[7];
  v0[43] = v11;
  v0[44] = (v7 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v57 = v11;
  v11(v1, 0, 1, v6);
  v12 = *(*v9 + 120);
  v0[45] = v12;
  swift_beginAccess();
  v13 = *(v5 + 48);
  v14 = *(v3 + 16);
  v0[46] = v14;
  v0[47] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v2, v1, v59);
  v61 = v13;
  v15 = v2 + v13;
  v16 = v2;
  v14(v15, v9 + v12, v59);
  v17 = v7[6];
  v0[48] = v17;
  v0[49] = (v7 + 6) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v17(v16, 1, v6) == 1)
  {
    v18 = v0[24];
    v19 = *(v0[32] + 8);
    v19(v0[37], v0[27]);
    if (v17(v16 + v61, 1, v18) == 1)
    {
      v19(v0[31], v0[27]);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v20 = v0[24];
  v14(v0[36], v0[31], v0[27]);
  v21 = v17(v16 + v61, 1, v20);
  v22 = v0[36];
  v23 = v0[32];
  if (v21 == 1)
  {
    v24 = v0[24];
    v25 = v0[25];
    v19 = *(v23 + 8);
    v19(v0[37], v0[27]);
    (*(v25 + 8))(v22, v24);
LABEL_6:
    (*(v0[29] + 8))(v0[31], v0[28]);
LABEL_10:
    v0[50] = v19;
    v35 = v0[35];
    v36 = v0[32];
    v37 = v0[27];
    v38 = v0[24];
    v39 = v0[22];
    v40 = v0[18];
    v58(v35, v0[17], v38);
    v57(v35, 0, 1, v38);
    swift_beginAccess();
    (*(v36 + 40))(v9 + v12, v35, v37);
    swift_endAccess();
    v0[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E8);
    sub_24F921808();
    sub_24F53B2A0(v39);
    v41 = v40 + *(*v40 + 128);
    swift_beginAccess();
    if (*(v41 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    *(v41 + 32) = 0;
    *v41 = 0u;
    *(v41 + 16) = 0u;
    swift_endAccess();
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v42 = sub_24F9220D8();
    __swift_project_value_buffer(v42, qword_27F39E850);
    v43 = sub_24F9220B8();
    v44 = sub_24F92BD98();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_24E5DD000, v43, v44, "Fetching initial shelf", v45, 2u);
      MEMORY[0x2530542D0](v45, -1, -1);
    }

    v46 = v0[18];

    *(v46 + *(*v46 + 136)) = 1;
    v0[52] = *(v46 + qword_27F2476B8);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
    v48 = swift_task_alloc();
    v0[53] = v48;
    *v48 = v0;
    v48[1] = sub_24F53E57C;

    return MEMORY[0x28217F228](v0 + 2, v47, v47);
  }

  v60 = v0[31];
  v26 = v0[26];
  v55 = v0[37];
  v56 = v0[27];
  v28 = v0[24];
  v27 = v0[25];
  (*(v27 + 32))(v26, v16 + v61, v28);
  v29 = sub_24F92AFF8();
  v30 = *(v27 + 8);
  v30(v26, v28);
  v19 = *(v23 + 8);
  v19(v55, v56);
  v30(v22, v28);
  v19(v60, v56);
  if ((v29 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v31 = v0[23];
  v32 = v0[20];
  v33 = v0[21];
  sub_24F53B0F4();
  v34 = sub_24F921818();
  (*(v33 + 8))(v31, v32);
  if (v34)
  {

    goto LABEL_10;
  }

  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v49 = sub_24F9220D8();
  __swift_project_value_buffer(v49, qword_27F39E850);
  v50 = sub_24F9220B8();
  v51 = sub_24F92BDA8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_24E5DD000, v50, v51, "Discard the same intent re-fetching", v52, 2u);
    MEMORY[0x2530542D0](v52, -1, -1);
  }

  v53 = v0[1];

  return v53();
}

uint64_t sub_24F53E57C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_24F53E9E8;
  }

  else
  {
    v5 = sub_24F53E6B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F53E6B8()
{
  v1 = v0[19];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[55] = v4;
  v5 = *(v1 + 88);
  *v4 = v0;
  v4[1] = sub_24F53E788;
  v6 = v0[52];
  v7 = v0[24];
  v8 = v0[17];

  return MEMORY[0x28217F4B0](v0 + 16, v8, v6, v7, v5, v2, v3);
}

uint64_t sub_24F53E788()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_24F53ED6C;
  }

  else
  {
    v5 = sub_24F53E8C4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F53E8C4()
{
  v1 = v0[17];

  sub_24F53F6E4(v0[16], v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  *(v0[18] + *(*v0[18] + 136)) = 0;

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F53E9E8()
{

  v35 = *(v0 + 432);
  v1 = *(v0 + 368);
  v30 = *(v0 + 360);
  v32 = *(v0 + 384);
  v2 = *(v0 + 344);
  v3 = *(v0 + 272);
  v4 = *(v0 + 240);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 192);
  v29 = *(v0 + 144);
  (*(v0 + 328))(v3, *(v0 + 136), v7);
  v2(v3, 0, 1, v7);
  v8 = *(v5 + 48);
  v1(v4, v3, v6);
  v1(v4 + v8, v29 + v30, v6);
  v9 = v32(v4, 1, v7);
  v10 = *(v0 + 192);
  if (v9 == 1)
  {
    v11 = *(v0 + 384);
    (*(v0 + 400))(*(v0 + 272), *(v0 + 216));
    if (v11(v4 + v8, 1, v10) == 1)
    {
      (*(v0 + 400))(*(v0 + 240), *(v0 + 216));
      goto LABEL_9;
    }

LABEL_7:
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    goto LABEL_12;
  }

  v12 = *(v0 + 384);
  (*(v0 + 368))(*(v0 + 264), *(v0 + 240), *(v0 + 216));
  v13 = v12(v4 + v8, 1, v10);
  v14 = *(v0 + 400);
  v15 = *(v0 + 264);
  v16 = *(v0 + 272);
  if (v13 == 1)
  {
    v17 = *(v0 + 216);
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);

    v14(v16, v17);
    (*(v18 + 8))(v15, v19);
    goto LABEL_7;
  }

  v33 = *(v0 + 216);
  v34 = *(v0 + 240);
  v31 = *(v0 + 272);
  v20 = *(v0 + 200);
  v21 = *(v0 + 208);
  v22 = *(v0 + 192);
  (*(v20 + 32))(v21, v4 + v8, v22);
  v23 = sub_24F92AFF8();
  v24 = *(v20 + 8);
  v24(v21, v22);
  v14(v31, v33);
  v24(v15, v22);
  v14(v34, v33);
  if ((v23 & 1) == 0)
  {
    v26 = v35;
    goto LABEL_11;
  }

LABEL_9:
  v25 = *(v0 + 176);
  sub_24F921828();
  sub_24F53B2A0(v25);
  v26 = v35;
LABEL_11:

LABEL_12:
  *(*(v0 + 144) + *(**(v0 + 144) + 136)) = 0;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24F53ED6C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v35 = *(v0 + 448);
  v1 = *(v0 + 368);
  v30 = *(v0 + 360);
  v32 = *(v0 + 384);
  v2 = *(v0 + 344);
  v3 = *(v0 + 272);
  v4 = *(v0 + 240);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 192);
  v29 = *(v0 + 144);
  (*(v0 + 328))(v3, *(v0 + 136), v7);
  v2(v3, 0, 1, v7);
  v8 = *(v5 + 48);
  v1(v4, v3, v6);
  v1(v4 + v8, v29 + v30, v6);
  v9 = v32(v4, 1, v7);
  v10 = *(v0 + 192);
  if (v9 == 1)
  {
    v11 = *(v0 + 384);
    (*(v0 + 400))(*(v0 + 272), *(v0 + 216));
    if (v11(v4 + v8, 1, v10) == 1)
    {
      (*(v0 + 400))(*(v0 + 240), *(v0 + 216));
      goto LABEL_9;
    }

LABEL_7:
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    goto LABEL_12;
  }

  v12 = *(v0 + 384);
  (*(v0 + 368))(*(v0 + 264), *(v0 + 240), *(v0 + 216));
  v13 = v12(v4 + v8, 1, v10);
  v14 = *(v0 + 400);
  v15 = *(v0 + 264);
  v16 = *(v0 + 272);
  if (v13 == 1)
  {
    v17 = *(v0 + 216);
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);

    v14(v16, v17);
    (*(v18 + 8))(v15, v19);
    goto LABEL_7;
  }

  v33 = *(v0 + 216);
  v34 = *(v0 + 240);
  v31 = *(v0 + 272);
  v20 = *(v0 + 200);
  v21 = *(v0 + 208);
  v22 = *(v0 + 192);
  (*(v20 + 32))(v21, v4 + v8, v22);
  v23 = sub_24F92AFF8();
  v24 = *(v20 + 8);
  v24(v21, v22);
  v14(v31, v33);
  v24(v15, v22);
  v14(v34, v33);
  if ((v23 & 1) == 0)
  {
    v26 = v35;
    goto LABEL_11;
  }

LABEL_9:
  v25 = *(v0 + 176);
  sub_24F921828();
  sub_24F53B2A0(v25);
  v26 = v35;
LABEL_11:

LABEL_12:
  *(*(v0 + 144) + *(**(v0 + 144) + 136)) = 0;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24F53F0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v28 = a2;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PaginatedShelvesIntentView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v18 = sub_24F92B858();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a3, v10);
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28, a4);
  sub_24F92B7F8();
  v19 = sub_24F92B7E8();
  v20 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v21 = (v12 + *(v8 + 80) + v20) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 2) = v19;
  *(v22 + 3) = v23;
  v25 = v29;
  v24 = v30;
  *(v22 + 4) = a4;
  *(v22 + 5) = v25;
  *(v22 + 6) = v24;
  (*(v11 + 32))(&v22[v20], v14, v10);
  (*(v8 + 32))(&v22[v21], v27, a4);
  sub_24EA998B8(0, 0, v17, &unk_24FA07560, v22);
}

uint64_t sub_24F53F3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_24F92B7F8();
  v8[7] = sub_24F92B7E8();
  v10 = sub_24F92B778();
  v8[8] = v10;
  v8[9] = v9;

  return MEMORY[0x2822009F8](sub_24F53F474, v10, v9);
}

uint64_t sub_24F53F474()
{
  type metadata accessor for PaginatedShelvesIntentView();
  type metadata accessor for ShelvesPaginationController();
  swift_getWitnessTable();
  v0[10] = sub_24F923628();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_24F53F59C;
  v2 = v0[3];

  return sub_24F53DB88(v2);
}

uint64_t sub_24F53F59C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_24E7AFF18, v3, v2);
}

void sub_24F53F6E4(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v53 = *v2;
  v4 = v53;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A78);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - v7;
  v8 = *(v4 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = &v51 - v11;
  v12 = sub_24F92C4A8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v51 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x28223BE20](v17);
  v62 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v51 - v21;
  v64 = v9;
  (*(v9 + 16))(&v51 - v21, a2, v8, v20);
  (*(v9 + 56))(v22, 0, 1, v8);
  v23 = *(*v2 + 120);
  swift_beginAccess();
  v61 = TupleTypeMetadata2;
  v24 = *(TupleTypeMetadata2 + 48);
  v25 = *(v16 + 16);
  v25(v15, v22, v12);
  v59 = v2;
  v25(&v15[v24], v2 + v23, v12);
  v26 = *(v64 + 48);
  v63 = v8;
  if (v26(v15, 1, v8) == 1)
  {
    v27 = *(v16 + 8);
    v27(v22, v12);
    if (v26(&v15[v24], 1, v63) == 1)
    {
      v27(v15, v12);
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v28 = v12;
  v25(v62, v15, v12);
  v29 = v63;
  if (v26(&v15[v24], 1, v63) == 1)
  {
    (*(v16 + 8))(v22, v12);
    (*(v64 + 8))(v62, v29);
LABEL_6:
    (*(v60 + 8))(v15, v61);
    goto LABEL_7;
  }

  v34 = v64;
  v35 = &v15[v24];
  v36 = v52;
  (*(v64 + 32))(v52, v35, v29);
  v37 = v62;
  v61 = v15;
  v38 = sub_24F92AFF8();
  v39 = *(v34 + 8);
  v39(v36, v29);
  v40 = *(v16 + 8);
  v40(v22, v28);
  v39(v37, v29);
  v40(v61, v28);
  if (v38)
  {
LABEL_13:
    v41 = v54;
    v42 = v59;
    sub_24F53B0F4();
    v43 = v56;
    sub_24F9217F8();
    (*(v55 + 8))(v41, v43);
    v44 = v65;
    if (!v65)
    {
      v44 = MEMORY[0x277D84F90];
    }

    v68 = v44;
    v45 = v58;

    sub_24F53FE64(v46);

    *&v65 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E8);
    v47 = v57;
    sub_24F921838();

    sub_24F53B2A0(v47);
    swift_beginAccess();
    sub_24E60169C(v45 + 24, &v65, &qword_27F2165E0);
    v48 = v42 + *(*v42 + 128);
    swift_beginAccess();
    v49 = *(&v66 + 1);
    if (*(v48 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v48);
      if (v49)
      {
LABEL_17:
        sub_24E612C80(&v65, v48);
LABEL_20:
        swift_endAccess();
        return;
      }
    }

    else if (*(&v66 + 1))
    {
      goto LABEL_17;
    }

    v50 = v66;
    *v48 = v65;
    *(v48 + 16) = v50;
    *(v48 + 32) = v67;
    goto LABEL_20;
  }

LABEL_7:
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v30 = sub_24F9220D8();
  __swift_project_value_buffer(v30, qword_27F39E850);
  v31 = sub_24F9220B8();
  v32 = sub_24F92BDA8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_24E5DD000, v31, v32, "Shelves pagination discards content for old session", v33, 2u);
    MEMORY[0x2530542D0](v33, -1, -1);
  }
}

uint64_t sub_24F53FE64(uint64_t a1)
{
  v3 = type metadata accessor for GSKShelf();
  v26 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v25 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92AA48();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_18;
  }

  for (i = *(v9 + 2); i; i = *(v9 + 2))
  {
    v24 = v3;
    v27 = a1;
    v11 = 0;
    v12 = 0;
    v3 = (v6 + 2);
    ++v6;
    v23 = v3;
    v21 = v1;
    v22 = v6;
    do
    {
      if (v12 >= *(v27 + 16))
      {
        break;
      }

      if (v11 < i)
      {
        while (v11 < *(v9 + 2))
        {
          a1 = *(v26 + 72);
          (*v3)(v8, &v9[((*(v26 + 80) + 32) & ~*(v26 + 80)) + a1 * v11], v5);
          sub_24F541298(&qword_27F21BCA8, MEMORY[0x277D224C0]);
          v1 = sub_24F92AFF8();
          (*v6)(v8, v5);
          if (v1)
          {
            goto LABEL_10;
          }

          if (i == ++v11)
          {
            v11 = i;
LABEL_10:
            i = *(v9 + 2);
            goto LABEL_11;
          }
        }

        goto LABEL_16;
      }

LABEL_11:
      if (v11 == i)
      {
        break;
      }

      v3 = v25;
      v1 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      a1 = *(v26 + 72);
      sub_24E614E60(v27 + v1 + a1 * v12, v25);
      v6 = v12;
      v13 = v24;
      v14 = *&v3[*(v24 + 15)];

      sub_24E614EC4(v3);
      if (v11 >= *(v9 + 2))
      {
        goto LABEL_17;
      }

      v1 += &v9[a1 * v11 + *(v13 + 15)];
      sub_24EA0AEC0(v14);
      ++v11;
      v12 = v6 + 1;
      i = *(v9 + 2);
      v6 = v22;
      v3 = v23;
    }

    while (v11 < i);
    v1 = v21;
    *v21 = v9;
    a1 = v27;
    v15 = *(v27 + 16);
    if (v15 >= v12)
    {
      goto LABEL_20;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v9 = sub_24ECDE3F8(v9);
  }

  v12 = 0;
  *v1 = v9;
  v15 = *(a1 + 16);
LABEL_20:
  v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v17 = (2 * v15) | 1;

  return sub_24EA0C72C(v18, a1 + v16, v12, v17);
}

uint64_t sub_24F5401BC()
{
  v1 = qword_27F2476B0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 120);
  v4 = sub_24F92C4A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = v0 + *(*v0 + 128);
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v0;
}

uint64_t sub_24F5402C8()
{
  sub_24F5401BC();

  return swift_deallocClassInstance();
}

void sub_24F540334()
{
  if (!qword_27F247740[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245A78);
    v0 = sub_24F9230B8();
    if (!v1)
    {
      atomic_store(v0, qword_27F247740);
    }
  }
}

uint64_t sub_24F540398()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ShelvesPaginationController();
    swift_getWitnessTable();
    result = sub_24F923648();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F540460(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 25;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_24F5405A4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        v18 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 24) = 0;
          *(v18 + 8) = a2 - 255;
          *(v18 + 16) = 0;
        }

        else
        {
          *(v18 + 24) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (v9 & 0xFFFFFFFFFFFFFFF8) + 25);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

__n128 sub_24F54081C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_24F540834@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_24F53B438(a1, v9, v5, v6, v7, a2);
}

double sub_24F5408DC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  *&result = sub_24F53D204(a1, v9, v5, v6, v7, a2).n128_u64[0];
  return result;
}

unint64_t sub_24F54099C()
{
  result = qword_27F2477F0;
  if (!qword_27F2477F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2477E0);
    sub_24E602068(&qword_27F2292A8, &qword_27F2292B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2477F0);
  }

  return result;
}

uint64_t sub_24F540A4C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_24F53F0F8(a1, a2, v9, v5, v6, v7);
}

uint64_t sub_24F540AF4()
{
  v1 = *(v0 + 32);
  v2 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  v6 = *(v4 + 8);
  v6(v0 + v3, v1);
  sub_24E683950();
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_24F540C54(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v8 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = (v9 + *(v8 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24E6541E4;

  return sub_24F53F3D4(a1, v11, v12, v1 + v9, v1 + v10, v6, v5, v7);
}

uint64_t objectdestroyTm_73()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)), v1);
  sub_24E683950();

  return swift_deallocObject();
}

uint64_t sub_24F540EC8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  v5 = v0 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_24F53D67C(v5, v1, v2, v3);
}

uint64_t sub_24F540F5C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24F53D884(a1, v9, v10, v1 + v8, v4, v5, v6);
}

uint64_t sub_24F541074()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)), v1);
  sub_24E683950();

  return swift_deallocObject();
}

uint64_t sub_24F54117C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  v11 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = *(v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F53B784(a1, a2, v3 + v11, v12, v7, v8, v9, a3);
}

uint64_t sub_24F541260()
{

  return swift_deallocObject();
}

uint64_t sub_24F541298(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F5412E0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = type metadata accessor for GSKShelf();
  v95 = *(*(v3 - 1) + 80);
  v93 = *(*(v3 - 1) + 64);
  v96 = v2;
  v92 = *(*(type metadata accessor for PaginatedShelvesIntentView() - 8) + 80);
  v94 = (v95 + 40) & ~v95;
  v4 = v0 + v94;
  v5 = sub_24F92AA48();
  (*(*(v5 - 8) + 8))(v0 + v94, v5);
  v6 = v3[5];
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = v4 + v3[6];
  v10 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v11 = *(*(v10 - 1) + 48);
  if (!v11(v9, 1, v10))
  {

    v12 = v9 + v10[5];
    v13 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      goto LABEL_5;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v66 = sub_24F9289E8();
          (*(*(v66 - 8) + 8))(v12, v66);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_5:
          v14 = v9 + v10[7];
          v15 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v17 = sub_24F928388();
              (*(*(v17 - 8) + 8))(v14, v17);
            }
          }

          v18 = v9 + v10[10];
          if (*(v18 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v18);
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v53 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v54 = type metadata accessor for JSColor();
        if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
        {
          v55 = sub_24F928388();
          (*(*(v55 - 8) + 8))(v53, v55);
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v62 = sub_24F9289E8();
        v63 = *(v62 - 8);
        if (!(*(v63 + 48))(v12, 1, v62))
        {
          (*(v63 + 8))(v12, v62);
        }

        if (*(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  v19 = type metadata accessor for HeaderPresentation(0);
  v20 = v9 + v19[5];
  if (v11(v20, 1, v10))
  {
    goto LABEL_33;
  }

  v91 = v1;

  v21 = v20 + v10[5];
  v22 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    goto LABEL_18;
  }

  v25 = swift_getEnumCaseMultiPayload();
  if (v25 <= 2)
  {
    if (!v25)
    {

      v56 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v57 = type metadata accessor for JSColor();
      if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
      {
        v58 = sub_24F928388();
        (*(*(v58 - 8) + 8))(v56, v58);
      }

      goto LABEL_18;
    }

    if (v25 == 1)
    {
      v64 = sub_24F9289E8();
      v65 = *(v64 - 8);
      v90 = v64;
      if (!(*(v65 + 48))(v21, 1))
      {
        (*(v65 + 8))(v21, v90);
      }

      if (*(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_18;
    }

    if (v25 != 2)
    {
      goto LABEL_18;
    }

LABEL_46:

    goto LABEL_18;
  }

  switch(v25)
  {
    case 3:
      goto LABEL_46;
    case 4:
      v69 = sub_24F9289E8();
      (*(*(v69 - 8) + 8))(v21, v69);
      break;
    case 5:
      goto LABEL_46;
  }

LABEL_18:
  v23 = v20 + v10[7];
  v24 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v26 = sub_24F928388();
      (*(*(v26 - 8) + 8))(v23, v26);
    }
  }

  v27 = v20 + v10[10];
  v1 = v91;
  if (*(v27 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

LABEL_33:
  v28 = v9 + v19[6];
  if (v11(v28, 1, v10))
  {
    goto LABEL_50;
  }

  v29 = v1;

  v30 = v28 + v10[5];
  v31 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    goto LABEL_35;
  }

  v34 = swift_getEnumCaseMultiPayload();
  if (v34 <= 2)
  {
    if (!v34)
    {

      v59 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v60 = type metadata accessor for JSColor();
      if (!(*(*(v60 - 8) + 48))(v59, 1, v60))
      {
        v61 = sub_24F928388();
        (*(*(v61 - 8) + 8))(v59, v61);
      }

      goto LABEL_35;
    }

    if (v34 == 1)
    {
      v67 = sub_24F9289E8();
      v68 = *(v67 - 8);
      if (!(*(v68 + 48))(v30, 1, v67))
      {
        (*(v68 + 8))(v30, v67);
      }

      if (*(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_35;
    }

    if (v34 != 2)
    {
      goto LABEL_35;
    }

LABEL_84:

    goto LABEL_35;
  }

  switch(v34)
  {
    case 3:
      goto LABEL_84;
    case 4:
      v70 = sub_24F9289E8();
      (*(*(v70 - 8) + 8))(v30, v70);
      break;
    case 5:
      goto LABEL_84;
  }

LABEL_35:
  v32 = v28 + v10[7];
  v33 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v35 = sub_24F928388();
      (*(*(v35 - 8) + 8))(v32, v35);
    }
  }

  v36 = v28 + v10[10];
  v1 = v29;
  if (*(v36 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

LABEL_50:
  v37 = v9 + v19[7];
  if (*(v37 + 56) == 1)
  {
  }

  else if (!*(v37 + 56))
  {

    if (*(v37 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v37 + 16);
    }
  }

  v38 = v9 + v19[8];
  v39 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 == 2)
    {
      goto LABEL_125;
    }

    if (v44 != 1)
    {
      if (v44)
      {
        goto LABEL_56;
      }

      v45 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v45 - 8) + 48))(v38, 1, v45))
      {
        goto LABEL_56;
      }

      v46 = swift_getEnumCaseMultiPayload();
      if (v46 > 2)
      {
        if (v46 != 3)
        {
          if (v46 == 4)
          {
            v89 = sub_24F9289E8();
            (*(*(v89 - 8) + 8))(v38, v89);
            goto LABEL_56;
          }

          if (v46 != 5)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_125;
      }

      if (v46)
      {
        if (v46 == 1)
        {
          v87 = sub_24F9289E8();
          v88 = *(v87 - 8);
          if (!(*(v88 + 48))(v38, 1, v87))
          {
            (*(v88 + 8))(v38, v87);
          }

          if (!*(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_56;
          }
        }

        else if (v46 != 2)
        {
          goto LABEL_56;
        }

LABEL_125:

        goto LABEL_56;
      }

      v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_144:
      v83 = v38 + v77;
      v84 = type metadata accessor for JSColor();
      if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
      {
        v85 = sub_24F928388();
        (*(*(v85 - 8) + 8))(v83, v85);
      }

      goto LABEL_56;
    }

    v47 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v48 = *(*(v47 - 8) + 48);
    if (v48(v38, 1, v47))
    {
LABEL_75:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v50 = v38 + *(v49 + 48);
      if (!v48(v50, 1, v47))
      {
        v51 = swift_getEnumCaseMultiPayload();
        if (v51 <= 2)
        {
          switch(v51)
          {
            case 0:

              v71 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v72 = type metadata accessor for JSColor();
              if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
              {
                v73 = sub_24F928388();
                (*(*(v73 - 8) + 8))(v71, v73);
              }

              goto LABEL_143;
            case 1:
              v78 = sub_24F9289E8();
              v79 = *(v78 - 8);
              if (!(*(v79 + 48))(v50, 1, v78))
              {
                (*(v79 + 8))(v50, v78);
              }

              if (!*(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_143;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_143;
          }

LABEL_137:

          goto LABEL_143;
        }

        switch(v51)
        {
          case 3:
            goto LABEL_137;
          case 4:
            v82 = sub_24F9289E8();
            (*(*(v82 - 8) + 8))(v50, v82);
            break;
          case 5:
            goto LABEL_137;
        }
      }

LABEL_143:
      v77 = *(v49 + 80);
      goto LABEL_144;
    }

    v52 = swift_getEnumCaseMultiPayload();
    if (v52 > 2)
    {
      if (v52 != 3)
      {
        if (v52 == 4)
        {
          v86 = sub_24F9289E8();
          (*(*(v86 - 8) + 8))(v38, v86);
          goto LABEL_75;
        }

        if (v52 != 5)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
      if (!v52)
      {

        v74 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v75 = type metadata accessor for JSColor();
        if (!(*(*(v75 - 8) + 48))(v74, 1, v75))
        {
          v76 = sub_24F928388();
          (*(*(v76 - 8) + 8))(v74, v76);
        }

        goto LABEL_75;
      }

      if (v52 == 1)
      {
        v80 = sub_24F9289E8();
        v81 = *(v80 - 8);
        if (!(*(v81 + 48))(v38, 1, v80))
        {
          (*(v81 + 8))(v38, v80);
        }

        if (*(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_75;
      }

      if (v52 != 2)
      {
        goto LABEL_75;
      }
    }

    goto LABEL_75;
  }

LABEL_56:
  v40 = v4 + v3[13];
  if (*(v40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v4 + v3[14];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = v4 + v3[16];
  if (*(v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  (*(*(v96 - 8) + 8))(v1 + ((((v93 + v94 + 7) & 0xFFFFFFFFFFFFFFF8) + v92 + 8) & ~v92));
  sub_24E683950();

  return swift_deallocObject();
}

uint64_t sub_24F542848()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for GSKShelf() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  v8 = *(v0 + v6);
  v9 = v0 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_24F53BADC(v0 + v5, v8, v9, v1, v2, v3);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 32);
  v2 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  sub_24E683950();

  return swift_deallocObject();
}

uint64_t sub_24F542A5C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *(type metadata accessor for PaginatedShelvesIntentView() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24F53C1B4(a1, v9, v10, v1 + v8, v4, v5, v6);
}

uint64_t sub_24F542B74()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2477D0);
  sub_24E602068(&qword_27F2477D8, &qword_27F2477D0);
  return swift_getOpaqueTypeConformance2();
}

GameStoreKit::GSKAutoPlayVideoSettingsManager::AutoPlayVideoSetting_optional __swiftcall GSKAutoPlayVideoSettingsManager.AutoPlayVideoSetting.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GSKAutoPlayVideoSettingsManager.AutoPlayVideoSetting.rawValue.getter()
{
  v1 = 0x796C6E4F69666977;
  if (*v0 != 1)
  {
    v1 = 6710895;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_24F542CD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x796C6E4F69666977;
  if (v2 != 1)
  {
    v4 = 6710895;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 28271;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x796C6E4F69666977;
  if (*a2 != 1)
  {
    v8 = 6710895;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 28271;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F542DC4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F542E54()
{
  sub_24F92B218();
}

uint64_t sub_24F542ED0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F542F68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x796C6E4F69666977;
  if (v2 != 1)
  {
    v5 = 6710895;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 28271;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t GSKAutoPlayVideoSettingsManager.defaultAutoPlayVideoSetting.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_24F542FF8(_BYTE *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  LOBYTE(a1) = *a1;
  v7 = *a2;
  swift_beginAccess();
  *(v7 + 16) = a1;
  v8 = sub_24F92B858();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;

  sub_24EA998B8(0, 0, v6, &unk_24FA07820, v9);
}

uint64_t GSKAutoPlayVideoSettingsManager.defaultAutoPlayVideoSetting.setter(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  LOBYTE(a1) = *a1;
  swift_beginAccess();
  *(v1 + 16) = a1;
  v6 = sub_24F92B858();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;

  sub_24EA998B8(0, 0, v5, &unk_24FA07680, v7);
}

uint64_t sub_24F543278()
{
  sub_24F92B7F8();
  *(v0 + 48) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F54330C, v2, v1);
}

uint64_t sub_24F54330C()
{
  v6 = v0;
  v1 = *(v0 + 40);

  swift_beginAccess();
  v5 = *(v1 + 16);
  sub_24F546A04(&v5);
  v2 = sub_24F546750();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 56) = v2 & 1;

  sub_24F9230A8();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F5433F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F543258(a1, v4, v5, v6);
}

void (*GSKAutoPlayVideoSettingsManager.defaultAutoPlayVideoSetting.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return sub_24F54356C;
}

void sub_24F54356C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = sub_24F92B858();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;

    sub_24EA998B8(0, 0, v4, &unk_24FA07688, v7);
  }

  free(v4);

  free(v3);
}

uint64_t GSKAutoPlayVideoSettingsManager.isAutoPlayEnabled.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F5436D0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24F543754()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t GSKAutoPlayVideoSettingsManager.$isAutoPlayEnabled.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24F543840()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24F5438B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F458);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  sub_24F923078();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

void sub_24F543A3C(char *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 stringForKey_];

  if (v4)
  {
    sub_24F92B0D8();

    v5 = sub_24F92CB88();

    v6 = v5 == 1;
    if (v5 == 2)
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

uint64_t sub_24F543B28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v52 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  *(v1 + 16) = 3;
  v14 = OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager__isAutoPlayEnabled;
  v67 = 0;
  sub_24F923058();
  (*(v11 + 32))(v1 + v14, v13, v10);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager_isNetworkConstrained) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager_isNetworkUseCellular) = 0;
  v15 = OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager_notificationsTasks;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager_notificationsTasks) = MEMORY[0x277D84F90];
  v16 = sub_24F92B858();
  v17 = *(v16 - 8);
  v18 = v17[7];
  v59 = v17 + 7;
  v58 = v18;
  v18(v9, 1, 1, v16);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v1;

  v20 = sub_24EA998B8(0, 0, v9, &unk_24FA07830, v19);
  swift_beginAccess();
  v21 = *(v1 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v15) = v21;
  v52 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_24E61A664((v23 > 1), v24 + 1, 1, v21);
    }

    v21[2] = v24 + 1;
    v21[v24 + 4] = v20;
    *(v1 + v15) = v21;
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v26 = *MEMORY[0x277CCA5E8];
    *(inited + 32) = *MEMORY[0x277CCA5E8];
    v66 = inited;
    v21 = swift_initStackObject();
    *(v21 + 1) = xmmword_24F93A400;
    v27 = *MEMORY[0x277D76648];
    v28 = *MEMORY[0x277D765E0];
    v21[4] = *MEMORY[0x277D76648];
    v21[5] = v28;
    v29 = v26;
    v30 = v27;
    v31 = v28;
    v20 = &v66;
    sub_24EA0AFE0(v21);
    v60 = v66;
    v57 = *(v66 + 16);
    if (!v57)
    {
      break;
    }

    v32 = 0;
    v55 = v60 + 32;
    v54 = (v17 + 6);
    v53 = (v17 + 1);
    v56 = v4;
    while (v32 < *(v60 + 16))
    {
      v33 = *(v55 + 8 * v32);
      v34 = v61;
      v58(v61, 1, 1, v16);
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v35[4] = v33;
      v35[5] = v1;
      sub_24E60169C(v34, v4, &unk_27F21B570);
      LODWORD(v34) = (*v54)(v4, 1, v16);
      v36 = v33;

      v37 = v36;

      if (v34 == 1)
      {
        sub_24E601704(v4, &unk_27F21B570);
      }

      else
      {
        sub_24F92B848();
        (*v53)(v4, v16);
      }

      v38 = v16;
      v39 = v35[2];
      swift_unknownObjectRetain();

      if (v39)
      {
        swift_getObjectType();
        v40 = sub_24F92B778();
        v42 = v41;
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0;
        v42 = 0;
      }

      sub_24E601704(v61, &unk_27F21B570);
      v43 = swift_allocObject();
      *(v43 + 16) = &unk_24FA07848;
      *(v43 + 24) = v35;
      if (v42 | v40)
      {
        v62 = 0;
        v63 = 0;
        v64 = v40;
        v65 = v42;
      }

      v16 = v38;
      v20 = swift_task_create();
      swift_beginAccess();
      v17 = *(v1 + v15);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v15) = v17;
      if ((v44 & 1) == 0)
      {
        v17 = sub_24E61A664(0, v17[2] + 1, 1, v17);
        *(v1 + v15) = v17;
      }

      v46 = v17[2];
      v45 = v17[3];
      v21 = (v46 + 1);
      if (v46 >= v45 >> 1)
      {
        v17 = sub_24E61A664((v45 > 1), v46 + 1, 1, v17);
      }

      ++v32;
      v17[2] = v21;
      v17[v46 + 4] = v20;
      *(v1 + v15) = v17;
      swift_endAccess();

      v4 = v56;
      if (v57 == v32)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    v21 = sub_24E61A664(0, v21[2] + 1, 1, v21);
    *(v1 + v15) = v21;
  }

LABEL_20:

  v47 = v52;
  v58(v52, 1, 1, v16);
  sub_24F92B7F8();

  v48 = sub_24F92B7E8();
  v49 = swift_allocObject();
  v50 = MEMORY[0x277D85700];
  v49[2] = v48;
  v49[3] = v50;
  v49[4] = v1;
  sub_24EA998B8(0, 0, v47, &unk_24FA07860, v49);

  return v1;
}

uint64_t sub_24F5442A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = sub_24F923168();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = sub_24F923228();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F4C8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F4D0);
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F544474, 0, 0);
}

uint64_t sub_24F544474()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  sub_24F9231C8();
  swift_allocObject();
  *(v0 + 96) = sub_24F9231B8();
  sub_24F546BB4(&qword_27F21F4D8, MEMORY[0x277CD8E78]);
  sub_24F546BB4(&qword_27F21F4E0, MEMORY[0x277CD8F90]);
  sub_24F92B9C8();

  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  *(v0 + 240) = v6;
  *(v0 + 248) = v7;
  *(v0 + 104) = v5;
  sub_24F92B9B8();
  v8 = *(v2 + 40);
  *(v0 + 376) = v8;
  v9 = *(v4 + 56);
  *(v0 + 256) = v9;
  *(v0 + 264) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1 + v8, 1, 1, v3);
  v10 = (v1 + *(v2 + 36));
  *v10 = v6;
  v10[1] = v7;
  v11 = OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager_isNetworkConstrained;
  *(v0 + 272) = OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager_isNetworkUseCellular;
  *(v0 + 280) = v11;
  swift_beginAccess();
  *(v0 + 380) = *MEMORY[0x277CD8CB8];

  return MEMORY[0x2822009F8](sub_24F544658, 0, 0);
}

uint64_t sub_24F544658()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  sub_24E60169C(*(v0 + 232) + *(v0 + 376), v1, &qword_27F21F4C8);
  v4 = *(v3 + 48);
  *(v0 + 288) = v4;
  *(v0 + 296) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 208);
  if (v5 == 1)
  {
    sub_24E601704(*(v0 + 208), &qword_27F21F4C8);
    v7 = sub_24F9231A8();
    v8 = sub_24F546BB4(&qword_27F21F4E8, MEMORY[0x277CD8E68]);
    v9 = swift_task_alloc();
    *(v0 + 320) = v9;
    *v9 = v0;
    v9[1] = sub_24F544880;
    v10 = *(v0 + 200);
  }

  else
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v13 + 32);
    *(v0 + 304) = v14;
    *(v0 + 312) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v14(v11, v6, v12);
    v7 = sub_24F9231A8();
    v8 = sub_24F546BB4(&qword_27F21F4E8, MEMORY[0x277CD8E68]);
    v15 = swift_task_alloc();
    *(v0 + 336) = v15;
    *v15 = v0;
    v15[1] = sub_24F544994;
    v10 = *(v0 + 192);
  }

  return MEMORY[0x282200308](v10, v7, v8);
}

uint64_t sub_24F544880()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_24F5452FC;
  }

  else
  {
    v2 = sub_24F545260;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F544994()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_24F544C74;
  }

  else
  {
    v2 = sub_24F544AA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F544AA8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  if ((*(v0 + 288))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 216);
    (*(*(v0 + 160) + 8))(*(v0 + 184), v2);
    sub_24E601704(v1, &qword_27F21F4C8);
    v3(v4, 1, 1, v2);

    return MEMORY[0x2822009F8](sub_24F545010, 0, 0);
  }

  else
  {
    v5 = *(v0 + 240);
    (*(v0 + 304))(*(v0 + 176), v1, v2);
    v10 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 352) = v6;
    *v6 = v0;
    v6[1] = sub_24F544CF4;
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);

    return v10(v8, v7);
  }
}

uint64_t sub_24F544C74()
{
  (*(v0[20] + 8))(v0[23], v0[19]);
  v0[45] = v0[43];

  return MEMORY[0x2822009F8](sub_24F5451D4, 0, 0);
}

uint64_t sub_24F544CF4(char a1)
{
  *(*v1 + 385) = a1;

  return MEMORY[0x2822009F8](sub_24F544DF4, 0, 0);
}

uint64_t sub_24F544DF4()
{
  if (*(v0 + 385) == 1)
  {
    (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
    v1 = sub_24F9231A8();
    v2 = sub_24F546BB4(&qword_27F21F4E8, MEMORY[0x277CD8E68]);
    v3 = swift_task_alloc();
    *(v0 + 336) = v3;
    *v3 = v0;
    v3[1] = sub_24F544994;
    v4 = *(v0 + 192);

    return MEMORY[0x282200308](v4, v1, v2);
  }

  else
  {
    v5 = *(v0 + 304);
    v6 = *(v0 + 256);
    v7 = *(v0 + 376);
    v8 = *(v0 + 232);
    v9 = *(v0 + 216);
    v10 = *(v0 + 176);
    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    (*(v12 + 8))(*(v0 + 184), v11);
    sub_24E601704(v8 + v7, &qword_27F21F4C8);
    (*(v12 + 16))(v8 + v7, v10, v11);
    v6(v8 + v7, 0, 1, v11);
    v5(v9, v10, v11);
    v6(v9, 0, 1, v11);

    return MEMORY[0x2822009F8](sub_24F545010, 0, 0);
  }
}

uint64_t sub_24F54502C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  if ((*(v0 + 288))(v1, 1, v2) == 1)
  {
    sub_24E601704(*(v0 + 232), &qword_27F21F4D0);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    (*(*(v0 + 160) + 32))(*(v0 + 168), v1, v2);
    sub_24F92B7F8();
    *(v0 + 368) = sub_24F92B7E8();
    v6 = sub_24F92B778();

    return MEMORY[0x2822009F8](sub_24F545320, v6, v5);
  }
}

uint64_t sub_24F5451D4()
{
  *(v0 + 112) = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_24F545260()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_24F546BFC(*(v0 + 200), v2 + v1);
  sub_24E60169C(v2 + v1, v3, &qword_27F21F4C8);

  return MEMORY[0x2822009F8](sub_24F545010, 0, 0);
}

uint64_t sub_24F545320()
{
  v1 = *(v0 + 380);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);

  (*(v5 + 104))(v4, v1, v6);
  LOBYTE(v1) = sub_24F9231E8();
  (*(v5 + 8))(v4, v6);
  *(v7 + v3) = v1 & 1;
  *(v7 + v2) = sub_24F9231D8() & 1;
  v8 = *(v7 + 16);
  v9 = objc_opt_self();
  v10 = [v9 standardUserDefaults];
  v11 = sub_24F92B098();
  v12 = [v10 objectForKey_];

  if (v12)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
    sub_24E601704(v0 + 16, &qword_27F2129B0);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_24E601704(v0 + 16, &qword_27F2129B0);
    if (v8 != 3)
    {
      v13 = [v9 standardUserDefaults];
      v14 = sub_24F92B098();

      v15 = sub_24F92B098();
      [v13 setObject:v14 forKey:v15];
    }
  }

  if (*(*(v0 + 120) + *(v0 + 280)))
  {
    goto LABEL_11;
  }

  v16 = [objc_opt_self() processInfo];
  v17 = [v16 isLowPowerModeEnabled];

  if (v17 || !UIAccessibilityIsVideoAutoplayEnabled())
  {
    goto LABEL_11;
  }

  v18 = [v9 standardUserDefaults];
  v19 = sub_24F92B098();
  v20 = [v18 stringForKey_];

  if (!v20)
  {
    goto LABEL_15;
  }

  sub_24F92B0D8();

  v21 = sub_24F92CB88();

  if (v21 != 1)
  {
    if (v21 == 2)
    {
LABEL_11:
      v22 = 0;
      goto LABEL_12;
    }

LABEL_15:
    v22 = 1;
    goto LABEL_12;
  }

  v22 = *(*(v0 + 120) + *(v0 + 272)) ^ 1;
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 384) = v22 & 1;

  sub_24F9230A8();

  return MEMORY[0x2822009F8](sub_24F5456DC, 0, 0);
}

uint64_t sub_24F5456DC()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  return MEMORY[0x2822009F8](sub_24F544658, 0, 0);
}

uint64_t sub_24F545754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247840);
  v5[12] = swift_task_alloc();
  v6 = sub_24F92C098();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F54584C, 0, 0);
}

uint64_t sub_24F54584C()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_24F92C0A8();

  sub_24F92C088();
  v2 = OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager_isNetworkUseCellular;
  v0[16] = OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager_isNetworkConstrained;
  v0[17] = v2;
  swift_beginAccess();
  v3 = sub_24F546BB4(qword_27F247848, MEMORY[0x277CC9D68]);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_24F5459A0;
  v5 = v0[12];
  v6 = v0[13];

  return MEMORY[0x282200308](v5, v6, v3);
}

uint64_t sub_24F5459A0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24F545C08;
  }

  else
  {
    v2 = sub_24F545AB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F545AD0()
{
  v1 = v0[12];
  v2 = sub_24F91EB58();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_24F92B7F8();
    v0[20] = sub_24F92B7E8();
    v6 = sub_24F92B778();

    return MEMORY[0x2822009F8](sub_24F545C94, v6, v5);
  }
}

uint64_t sub_24F545C08()
{
  *(v0 + 72) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_24F545C94()
{
  v1 = *(v0 + 88);

  v2 = *(v1 + 16);
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = sub_24F92B098();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
    sub_24E601704(v0 + 16, &qword_27F2129B0);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_24E601704(v0 + 16, &qword_27F2129B0);
    if (v2 != 3)
    {
      v7 = [v3 standardUserDefaults];
      v8 = sub_24F92B098();

      v9 = sub_24F92B098();
      [v7 setObject:v8 forKey:v9];
    }
  }

  if (*(*(v0 + 88) + *(v0 + 128)))
  {
    goto LABEL_11;
  }

  v10 = [objc_opt_self() processInfo];
  v11 = [v10 isLowPowerModeEnabled];

  if (v11 || !UIAccessibilityIsVideoAutoplayEnabled())
  {
    goto LABEL_11;
  }

  v12 = [v3 standardUserDefaults];
  v13 = sub_24F92B098();
  v14 = [v12 stringForKey_];

  if (!v14)
  {
    goto LABEL_15;
  }

  sub_24F92B0D8();

  v15 = sub_24F92CB88();

  if (v15 != 1)
  {
    if (v15 == 2)
    {
LABEL_11:
      v16 = 0;
      goto LABEL_12;
    }

LABEL_15:
    v16 = 1;
    goto LABEL_12;
  }

  v16 = *(*(v0 + 88) + *(v0 + 136)) ^ 1;
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = v16 & 1;

  sub_24F9230A8();

  return MEMORY[0x2822009F8](sub_24F545FE4, 0, 0);
}

uint64_t sub_24F545FE4()
{
  sub_24E601704(v0[12], &qword_27F247840);
  v1 = sub_24F546BB4(qword_27F247848, MEMORY[0x277CC9D68]);
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_24F5459A0;
  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_24F5460D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_24F92B7F8();
  *(v4 + 48) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F546C7C, v6, v5);
}

uint64_t GSKAutoPlayVideoSettingsManager.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager_notificationsTasks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    while (v5 < *(v2 + 16))
    {
      v6 = v5 + 1;

      sub_24F92B958();

      v5 = v6;
      if (v3 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v7 = OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager__isAutoPlayEnabled;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
    (*(*(v8 - 8) + 8))(v0 + v7, v8);

    return v0;
  }

  return result;
}

uint64_t GSKAutoPlayVideoSettingsManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager_notificationsTasks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    while (v5 < *(v2 + 16))
    {
      v6 = v5 + 1;

      sub_24F92B958();

      v5 = v6;
      if (v3 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v7 = OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager__isAutoPlayEnabled;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
    (*(*(v8 - 8) + 8))(v0 + v7, v8);

    return swift_deallocClassInstance();
  }

  return result;
}

unint64_t sub_24F546410()
{
  result = qword_27F247818;
  if (!qword_27F247818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247818);
  }

  return result;
}

uint64_t sub_24F546464@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t type metadata accessor for GSKAutoPlayVideoSettingsManager()
{
  result = qword_27F247830;
  if (!qword_27F247830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F54650C()
{
  sub_24EA22D84();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F5465E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F543258(a1, v4, v5, v6);
}

uint64_t sub_24F54669C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F5442A8(a1, v4, v5, v6);
}

uint64_t sub_24F546750()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager_isNetworkConstrained) & 1) != 0 || (v1 = [objc_opt_self() processInfo], v2 = objc_msgSend(v1, sel_isLowPowerModeEnabled), v1, (v2) || !UIAccessibilityIsVideoAutoplayEnabled() || (sub_24F543A3C(&v5), v5 > 1u))
  {
    v3 = 0;
  }

  else if (v5)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit31GSKAutoPlayVideoSettingsManager_isNetworkUseCellular) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_24F546810()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F546858(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F545754(a1, v4, v5, v7, v6);
}

uint64_t sub_24F546918()
{

  return swift_deallocObject();
}

uint64_t sub_24F546950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F5460D4(a1, v4, v5, v6);
}

void sub_24F546A04(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = sub_24F92B098();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
    sub_24E601704(v9, &qword_27F2129B0);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    sub_24E601704(v9, &qword_27F2129B0);
    if (v1 != 3)
    {
      v6 = [v2 standardUserDefaults];
      v7 = sub_24F92B098();

      v8 = sub_24F92B098();
      [v6 setObject:v7 forKey:v8];
    }
  }
}

uint64_t sub_24F546BB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F546BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F4C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F546C9C()
{
  result = qword_27F216398;
  if (!qword_27F216398)
  {
    type metadata accessor for SetProfilePrivacyAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216398);
  }

  return result;
}

uint64_t sub_24F546CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SetProfilePrivacyAction();
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F546D94, 0, 0);
}

uint64_t sub_24F546D94()
{
  v20 = v0;
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = sub_24F9220D8();
  v0[7] = __swift_project_value_buffer(v3, qword_27F39E8E0);
  sub_24F547770(v2, v1);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDA8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = 0xEB00000000796C6ELL;
    v11 = 0x4F73646E65697266;
    if (*v7 != 1)
    {
      v11 = 0x796C6E4F656DLL;
      v10 = 0xE600000000000000;
    }

    if (*v7)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x656E6F7972657665;
    }

    if (*v7)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    v14 = v9;
    sub_24F365AA4(v0[6]);
    v15 = sub_24E7620D4(v12, v13, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Setting profile privacy to %s...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {

    sub_24F365AA4(v7);
  }

  v16 = *v0[3];
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_24F546FE4;

  return sub_24F547A40(v16);
}

uint64_t sub_24F546FE4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24F547138, 0, 0);
  }
}

uint64_t sub_24F547138()
{
  v19 = v0;
  sub_24F547770(v0[3], v0[5]);
  v1 = sub_24F9220B8();
  v2 = sub_24F92BDA8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[5];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    v7 = 0xEB00000000796C6ELL;
    v8 = 0x4F73646E65697266;
    if (*v4 != 1)
    {
      v8 = 0x796C6E4F656DLL;
      v7 = 0xE600000000000000;
    }

    if (*v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x656E6F7972657665;
    }

    if (*v4)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    v11 = v6;
    sub_24F365AA4(v0[5]);
    v12 = sub_24E7620D4(v9, v10, &v18);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_24E5DD000, v1, v2, "Profile privacy has been set to %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {

    sub_24F365AA4(v4);
  }

  v13 = v0[2];
  v14 = *MEMORY[0x277D21CA8];
  v15 = sub_24F928AE8();
  (*(*(v15 - 8) + 104))(v13, v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_24F547354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForLocalPlayer];
  v9 = [v8 profileServicePrivate];

  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_24E69640C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9FABA0;
  aBlock[3] = &block_descriptor_158;
  v12 = _Block_copy(aBlock);

  [v9 setProfilePrivacy:a2 handler:v12];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_24F547558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for SetProfilePrivacyAction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_24F547770(a1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_24F5478B0(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v12 = sub_24F92A9E8();
  v13 = sub_24F92B858();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24FA07918;
  v14[5] = v11;
  v14[6] = v12;

  sub_24E6959D8(0, 0, v6, &unk_24F94D7B0, v14);

  return v12;
}

uint64_t sub_24F547770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetProfilePrivacyAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5477D4()
{
  v1 = type metadata accessor for SetProfilePrivacyAction();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = v0 + *(v1 + 20);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_24F5478B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetProfilePrivacyAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F547914(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for SetProfilePrivacyAction() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F546CF4(a1, v1 + v6, v4);
}

uint64_t sub_24F5479F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F547A60()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_24F547B54;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000015, 0x800000024FA766F0, sub_24F547CD4, v2, v4);
}

uint64_t sub_24F547B54()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_24F547C70;
  }

  else
  {

    v2 = sub_24F49CA20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F547C70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F547CDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t block_copy_helper_158(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t PlayerWithTimeStamp.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F5487A8(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 0x6D617473656D6974;
  *(inited + 96) = 0xE900000000000070;
  v6 = (v2 + *(type metadata accessor for PlayerWithTimeStamp() + 20));
  v8 = *v6;
  v7 = v6[1];
  v9 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v9;
  *(inited + 104) = v8;
  *(inited + 112) = v7;

  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t type metadata accessor for PlayerWithTimeStamp()
{
  result = qword_27F2478E8;
  if (!qword_27F2478E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F547F60()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24F547F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F54807C(uint64_t a1)
{
  v2 = sub_24F548754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5480B8(uint64_t a1)
{
  v2 = sub_24F548754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerWithTimeStamp.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2478D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F548754();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for PlayerWithTimeStamp();
    v8[14] = 1;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlayerWithTimeStamp.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2478E0);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PlayerWithTimeStamp();
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F548754();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v22;
  v26 = 0;
  sub_24E61C064(&qword_27F213E38);
  v14 = v23;
  sub_24F92CC68();
  v15 = v12;
  sub_24E61C0A8(v24, v12);
  v25 = 1;
  v16 = sub_24F92CC28();
  v18 = v17;
  (*(v13 + 8))(v8, v14);
  v19 = (v15 + *(v9 + 20));
  *v19 = v16;
  v19[1] = v18;
  sub_24F5487A8(v15, v21, type metadata accessor for PlayerWithTimeStamp);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F548810(v15, type metadata accessor for PlayerWithTimeStamp);
}

unint64_t sub_24F5485CC@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F5487A8(v4, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 0x6D617473656D6974;
  *(inited + 96) = 0xE900000000000070;
  v8 = (v4 + *(a1 + 20));
  v10 = *v8;
  v9 = v8[1];
  v11 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v11;
  *(inited + 104) = v10;
  *(inited + 112) = v9;

  v12 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v12;
  return result;
}