uint64_t sub_24F428824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-v10 - 8];
  v12 = sub_24F92B858();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a2;
  v14 = *(a3 + 16);
  *(v13 + 40) = *a3;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a3 + 32);
  *(v13 + 80) = a4;
  *(v13 + 88) = a5;

  sub_24F42A024(a3, v17);

  sub_24EA998B8(0, 0, v11, &unk_24F9F6480, v13);
}

uint64_t sub_24F428974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 192) = v18;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a5;
  *(v8 + 160) = a6;
  *(v8 + 144) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B78);
  *(v8 + 200) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B80);
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 - 8);
  *(v8 + 224) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B88);
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  *(v8 + 256) = v12;
  *(v8 + 264) = *(v12 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  type metadata accessor for GSKShelf();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 96) = *a4;
  v14 = *(a4 + 32);
  *(v8 + 320) = v13;
  *(v8 + 328) = v14;
  *(v8 + 128) = v14;

  return MEMORY[0x2822009F8](sub_24F428BF0, 0, 0);
}

uint64_t sub_24F428BF0()
{
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[18];
  sub_24E8C9414(v0[19], v2 + *(v3 + 20), type metadata accessor for Player);
  *v2 = *v4;
  *(v2 + *(v3 + 24)) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v0[42] = v5;
  sub_24E614DB0((v0 + 12), (v0 + 14));
  sub_24F42A9A0((v0 + 16), (v0 + 17));
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_24F428D10;

  return MEMORY[0x28217F228](v0 + 2, v5, v5);
}

uint64_t sub_24F428D10()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_24F429044;
  }

  else
  {
    v2 = sub_24F428E24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F428E24()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[45] = v3;
  v4 = sub_24F42AA10(&qword_27F21D540, type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);
  v0[46] = v4;
  *v3 = v0;
  v3[1] = sub_24F428F28;
  v5 = v0[40];
  v6 = v0[37];
  v7 = v0[35];
  v8 = v0[20];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F428F28()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_24F4293C4;
  }

  else
  {
    *(v2 + 384) = *(v2 + 104);
    v3 = sub_24F42913C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F429044()
{
  sub_24F42AA58(*(v0 + 296), type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F42913C()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v0[22];
  v8 = v0[18];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_24F42AA58(v3, type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);
  sub_24E8C9414(v2, v1, type metadata accessor for GSKShelf);
  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  sub_24F92B8C8();
  v9 = *(v5 + 8);
  v0[50] = v9;
  v0[51] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v6);
  v0[52] = *(v8 + 16);
  v0[53] = *(v8 + 24);

  return MEMORY[0x2822009F8](sub_24F429274, v7, 0);
}

uint64_t sub_24F429274()
{
  sub_24F5E8450(v0[52], v0[53], v0[23], v0[24]);

  return MEMORY[0x2822009F8](sub_24F4292E8, 0, 0);
}

uint64_t sub_24F4292E8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_24F4294C4;
  v5 = v0[29];
  v6 = v0[25];

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t sub_24F4293C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24F42AA58(*(v0 + 296), type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F4294C4()
{

  return MEMORY[0x2822009F8](sub_24F4295C0, 0, 0);
}

uint64_t sub_24F4295C0()
{
  v1 = *(v0 + 200);
  v2 = type metadata accessor for ChallengeDetail(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 320);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    sub_24F42AA58(v3, type metadata accessor for GSKShelf);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 280);
    v6 = *(v0 + 288);
    v8 = *(v0 + 152);
    v9 = *(v1 + *(v2 + 64));

    sub_24F42AA58(v1, type metadata accessor for ChallengeDetail);
    sub_24E8C9414(v8, v6 + *(v7 + 20), type metadata accessor for Player);
    *v6 = *(v0 + 96);
    *(v6 + *(v7 + 24)) = v9;

    v10 = swift_task_alloc();
    *(v0 + 440) = v10;
    *v10 = v0;
    v10[1] = sub_24F42981C;
    v11 = *(v0 + 336);

    return MEMORY[0x28217F228](v0 + 56, v11, v11);
  }
}

uint64_t sub_24F42981C()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_24F429B0C;
  }

  else
  {
    v2 = sub_24F429930;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F429930()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_24F4299F8;
  v4 = v0[46];
  v5 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[20];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F4299F8()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_24F429DA4;
  }

  else
  {
    v2 = sub_24F429C44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F429B0C()
{
  v1 = v0[40];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  sub_24F42AA58(v0[36], type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24F42AA58(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F429C44()
{
  v1 = v0[50];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v5 = v0[34];
  v6 = v0[32];
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  sub_24F42AA58(v4, type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);
  sub_24E8C9414(v3, v2, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v1(v5, v6);
  sub_24F42AA58(v3, type metadata accessor for GSKShelf);
  v7 = swift_task_alloc();
  v0[54] = v7;
  *v7 = v0;
  v7[1] = sub_24F4294C4;
  v8 = v0[29];
  v9 = v0[25];

  return MEMORY[0x2822003E8](v9, 0, 0, v8);
}

uint64_t sub_24F429DA4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[40];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  sub_24F42AA58(v0[36], type metadata accessor for ChallengeDetailInvitedPlayersShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24F42AA58(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F429EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengeDetailInvitedPlayersShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24F429FBC()
{

  return swift_deallocObject();
}

uint64_t sub_24F42A080()
{
  v1 = type metadata accessor for Player(0);
  v2 = *(*(v1 - 1) + 80);
  v36 = *(*(v1 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v4 = *(v3 - 8);
  v35 = *(v4 + 80);
  swift_unknownObjectRelease();

  v37 = (v2 + 72) & ~v2;
  v5 = v0 + v37;

  v6 = v1[6];
  v7 = sub_24F9289E8();
  v38 = *(v7 - 8);
  v39 = v7;
  v34 = *(v38 + 8);
  v34(v0 + v37 + v6);

  if (*(v0 + v37 + v1[9] + 8) != 1)
  {
  }

  v8 = v5 + v1[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v30 = v4;
    v32 = v3;
    v10 = type metadata accessor for CallProviderConversationHandle();
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v38 + 48))(v8 + v12, 1, v39))
      {
        (v34)(v8 + v12, v39);
      }
    }

    v13 = v8 + *(v9 + 20);
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v38 + 48))(v13 + v14, 1, v39))
      {
        (v34)(v13 + v14, v39);
      }
    }

    v4 = v30;
    v3 = v32;
  }

  if (*(v5 + v1[15] + 8))
  {
  }

  v15 = v5 + v1[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {
    v31 = v4;
    v33 = v3;

    v17 = type metadata accessor for Game();
    (v34)(v15 + v17[18], v39);
    v18 = v17[19];
    if (!(*(v38 + 48))(v15 + v18, 1, v39))
    {
      (v34)(v15 + v18, v39);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v15 + v19, 1, v20))
    {
      (*(v21 + 8))(v15 + v19, v20);
    }

    v4 = v31;
    v3 = v33;
  }

  v22 = v5 + v1[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game();
    (v34)(v22 + v24[18], v39);
    v25 = v24[19];
    if (!(*(v38 + 48))(v22 + v25, 1, v39))
    {
      (v34)(v22 + v25, v39);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }
  }

  (*(v4 + 8))(v0 + ((((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + v35 + 8) & ~v35), v3);

  return swift_deallocObject();
}

uint64_t sub_24F42A7D4(uint64_t a1)
{
  v3 = *(type metadata accessor for Player(0) - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24E614970;

  return sub_24F428974(a1, v10, v11, v1 + 32, v1 + v4, v8, v1 + v7, v9);
}

uint64_t sub_24F42A9A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F42AA10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F42AA58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F42AAB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F42AB18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24E8C720C(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t UpdateNotificationTopicsAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F928AD8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24F42AC54(uint64_t a1)
{
  v2 = sub_24F42AE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42AC90(uint64_t a1)
{
  v2 = sub_24F42AE30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateNotificationTopicsAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243318);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F42AE30();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F42AE30()
{
  result = qword_27F243320;
  if (!qword_27F243320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243320);
  }

  return result;
}

uint64_t UpdateNotificationTopicsAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243328);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  updated = type metadata accessor for UpdateNotificationTopicsAction();
  MEMORY[0x28223BE20](updated - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F42AE30();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F42B13C(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for UpdateNotificationTopicsAction()
{
  result = qword_27F243330;
  if (!qword_27F243330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F42B13C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateNotificationTopicsAction();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_24F42B1B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243318);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F42AE30();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F42B330(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F42B3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F42B434()
{
  result = qword_27F243340;
  if (!qword_27F243340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243340);
  }

  return result;
}

unint64_t sub_24F42B48C()
{
  result = qword_27F243348;
  if (!qword_27F243348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243348);
  }

  return result;
}

unint64_t sub_24F42B4E4()
{
  result = qword_27F243350;
  if (!qword_27F243350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243350);
  }

  return result;
}

uint64_t sub_24F42B554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D614E7465737361 && a2 == 0xE900000000000065)
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

uint64_t sub_24F42B5E4(uint64_t a1)
{
  v2 = sub_24F42C278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42B620(uint64_t a1)
{
  v2 = sub_24F42C278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42B65C()
{
  v1 = *v0;
  v2 = 0x7641646E65697266;
  v3 = 0x6C6F626D7973;
  v4 = 0x747241616964656DLL;
  if (v1 != 3)
  {
    v4 = 0x4164656C646E7562;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6349656D6167;
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

uint64_t sub_24F42B714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F4309C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F42B73C(uint64_t a1)
{
  v2 = sub_24F42C224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42B778(uint64_t a1)
{
  v2 = sub_24F42C224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42B7B4(uint64_t a1)
{
  v2 = sub_24F42C3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42B7F0(uint64_t a1)
{
  v2 = sub_24F42C3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42B830(uint64_t a1)
{
  v2 = sub_24F42C374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42B86C(uint64_t a1)
{
  v2 = sub_24F42C374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42B8A8(uint64_t a1)
{
  v2 = sub_24F42C2CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42B8E4(uint64_t a1)
{
  v2 = sub_24F42C2CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42B920(uint64_t a1)
{
  v2 = sub_24F42C320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42B95C(uint64_t a1)
{
  v2 = sub_24F42C320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverviewTileAccessoryType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243358);
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243360);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v44 - v5;
  v6 = sub_24F9289E8();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243368);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243370);
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243378);
  v57 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for OverviewTileAccessoryType(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243380);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v20 = &v44 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F42C224();
  v62 = v20;
  sub_24F92D128();
  sub_24F43132C(v60, v18, type metadata accessor for OverviewTileAccessoryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v64) = 2;
      sub_24F42C320();
      v37 = v45;
      v27 = v62;
      v26 = v63;
      sub_24F92CC98();
      v38 = v47;
      sub_24F92CD08();

      v39 = v46;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v23 = v50;
        v22 = v51;
        v24 = v48;
        (*(v50 + 32))(v48, v18, v51);
        LOBYTE(v64) = 3;
        sub_24F42C2CC();
        v25 = v49;
        v27 = v62;
        v26 = v63;
        sub_24F92CC98();
        sub_24F4312E4(&qword_27F214060, MEMORY[0x277D21C48]);
        v28 = v54;
        sub_24F92CD48();
        (*(v53 + 8))(v25, v28);
        (*(v23 + 8))(v24, v22);
        return (*(v61 + 8))(v27, v26);
      }

      LOBYTE(v64) = 4;
      sub_24F42C278();
      v37 = v52;
      v27 = v62;
      v26 = v63;
      sub_24F92CC98();
      v38 = v56;
      sub_24F92CD08();

      v39 = v55;
    }

    (*(v39 + 8))(v37, v38);
    return (*(v61 + 8))(v27, v26);
  }

  v29 = v15;
  v30 = v57;
  v31 = v58;
  v32 = v59;
  if (EnumCaseMultiPayload)
  {
    v41 = *v18;
    LOBYTE(v64) = 1;
    sub_24F42C374();
    v43 = v62;
    v42 = v63;
    sub_24F92CC98();
    v64 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538);
    sub_24F42D070(&qword_27F2277B0, &qword_27F214060);
    sub_24F92CD48();
    (*(v31 + 8))(v12, v32);
    (*(v61 + 8))(v43, v42);
  }

  else
  {
    v33 = v13;
    v34 = *v18;
    LOBYTE(v64) = 0;
    sub_24F42C3C8();
    v36 = v62;
    v35 = v63;
    sub_24F92CC98();
    v64 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    sub_24F42D10C(&qword_27F21BC30, &qword_27F213E28);
    sub_24F92CD48();
    (*(v30 + 8))(v29, v33);
    (*(v61 + 8))(v36, v35);
  }
}

unint64_t sub_24F42C224()
{
  result = qword_27F243388;
  if (!qword_27F243388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243388);
  }

  return result;
}

unint64_t sub_24F42C278()
{
  result = qword_27F243390;
  if (!qword_27F243390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243390);
  }

  return result;
}

unint64_t sub_24F42C2CC()
{
  result = qword_27F243398;
  if (!qword_27F243398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243398);
  }

  return result;
}

unint64_t sub_24F42C320()
{
  result = qword_27F2433A0;
  if (!qword_27F2433A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2433A0);
  }

  return result;
}

unint64_t sub_24F42C374()
{
  result = qword_27F2433A8;
  if (!qword_27F2433A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2433A8);
  }

  return result;
}

unint64_t sub_24F42C3C8()
{
  result = qword_27F2433B0;
  if (!qword_27F2433B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2433B0);
  }

  return result;
}

uint64_t OverviewTileAccessoryType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2433B8);
  v85 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v87 = &v70 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2433C0);
  v5 = *(v4 - 8);
  v83 = v4;
  v84 = v5;
  MEMORY[0x28223BE20](v4);
  v86 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2433C8);
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x28223BE20](v7);
  v93 = &v70 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2433D0);
  v79 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v92 = &v70 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2433D8);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v90 = &v70 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2433E0);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v12 = &v70 - v11;
  v88 = type metadata accessor for OverviewTileAccessoryType(0);
  MEMORY[0x28223BE20](v88);
  v75 = (&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v70 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v70 - v27;
  v29 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_24F42C224();
  v30 = v96;
  sub_24F92D108();
  if (!v30)
  {
    v71 = v19;
    v72 = v25;
    v73 = v22;
    v74 = v16;
    v32 = v92;
    v31 = v93;
    v96 = v28;
    v33 = v94;
    v35 = v90;
    v34 = v91;
    v36 = sub_24F92CC78();
    v37 = (2 * *(v36 + 16)) | 1;
    v97 = v36;
    v98 = v36 + 32;
    v99 = 0;
    v100 = v37;
    v38 = sub_24E641498();
    if (v38 != 5 && v99 == v100 >> 1)
    {
      if (v38 <= 1u)
      {
        v48 = v33;
        if (v38)
        {
          LOBYTE(v101) = 1;
          sub_24F42C374();
          sub_24F92CBA8();
          v58 = v89;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538);
          sub_24F42D070(&qword_27F227788, &qword_27F214018);
          v59 = v78;
          sub_24F92CC68();
          (*(v79 + 8))(v32, v59);
          (*(v58 + 8))(v12, v34);
          swift_unknownObjectRelease();
          v51 = v73;
          *v73 = v101;
        }

        else
        {
          LOBYTE(v101) = 0;
          sub_24F42C3C8();
          sub_24F92CBA8();
          v49 = v89;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
          sub_24F42D10C(&qword_27F2196A8, &qword_27F213E38);
          v50 = v77;
          sub_24F92CC68();
          (*(v76 + 8))(v35, v50);
          (*(v49 + 8))(v12, v34);
          swift_unknownObjectRelease();
          v51 = v72;
          *v72 = v101;
        }

        swift_storeEnumTagMultiPayload();
        v68 = v96;
        sub_24F431394(v51, v96, type metadata accessor for OverviewTileAccessoryType);
        v69 = v95;
        goto LABEL_19;
      }

      if (v38 == 2)
      {
        LOBYTE(v101) = 2;
        sub_24F42C320();
        v52 = v31;
        sub_24F92CBA8();
        v53 = v81;
        v54 = sub_24F92CC28();
        v55 = v89;
        v60 = v54;
        v62 = v61;
        (*(v80 + 8))(v52, v53);
        (*(v55 + 8))(v12, v34);
        swift_unknownObjectRelease();
        v63 = v71;
        *v71 = v60;
        v63[1] = v62;
      }

      else
      {
        if (v38 == 3)
        {
          LOBYTE(v101) = 3;
          sub_24F42C2CC();
          v39 = v86;
          sub_24F92CBA8();
          sub_24F9289E8();
          sub_24F4312E4(&qword_27F214018, MEMORY[0x277D21C48]);
          v40 = v74;
          v41 = v83;
          sub_24F92CC68();
          v42 = v89;
          (*(v84 + 8))(v39, v41);
          (*(v42 + 8))(v12, v34);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v64 = v40;
LABEL_17:
          v68 = v96;
          sub_24F431394(v64, v96, type metadata accessor for OverviewTileAccessoryType);
          v69 = v95;
          v48 = v33;
LABEL_19:
          sub_24F431394(v68, v48, type metadata accessor for OverviewTileAccessoryType);
          v46 = v69;
          return __swift_destroy_boxed_opaque_existential_1(v46);
        }

        LOBYTE(v101) = 4;
        sub_24F42C278();
        v56 = v87;
        sub_24F92CBA8();
        v57 = v82;
        v65 = sub_24F92CC28();
        v67 = v66;
        (*(v85 + 8))(v56, v57);
        (*(v89 + 8))(v12, v34);
        swift_unknownObjectRelease();
        v63 = v75;
        *v75 = v65;
        v63[1] = v67;
      }

      swift_storeEnumTagMultiPayload();
      v64 = v63;
      goto LABEL_17;
    }

    v43 = sub_24F92C918();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v45 = v88;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    (*(v89 + 8))(v12, v34);
    swift_unknownObjectRelease();
  }

  v46 = v95;
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_24F42D070(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219538);
    sub_24F4312E4(a2, MEMORY[0x277D21C48]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F42D10C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    sub_24F4312E4(a2, type metadata accessor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F42D1A8(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243558);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243560);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243568);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4313FC();
  sub_24F92D128();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24F431450();
    sub_24F92CC98();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24F4314A4();
    sub_24F92CC98();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

void sub_24F42D494()
{
  sub_24F42D58C(319, &qword_27F21F900, &qword_27F2191B0, type metadata accessor for Player);
  if (v0 <= 0x3F)
  {
    sub_24F42D58C(319, &qword_27F2433F8, &qword_27F2191D8, MEMORY[0x277D21C48]);
    if (v1 <= 0x3F)
    {
      sub_24EAC9FF0();
      if (v2 <= 0x3F)
      {
        sub_24EAC9FA8();
        if (v3 <= 0x3F)
        {
          sub_24F42D630();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F42D58C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_24F42D5DC(0, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24F42D5DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92B6E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F42D630()
{
  result = qword_27F243400;
  if (!qword_27F243400)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F243400);
  }

  return result;
}

unint64_t sub_24F42D6C4()
{
  result = qword_27F243408;
  if (!qword_27F243408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243408);
  }

  return result;
}

unint64_t sub_24F42D71C()
{
  result = qword_27F243410;
  if (!qword_27F243410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243410);
  }

  return result;
}

unint64_t sub_24F42D774()
{
  result = qword_27F243418;
  if (!qword_27F243418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243418);
  }

  return result;
}

unint64_t sub_24F42D7CC()
{
  result = qword_27F243420;
  if (!qword_27F243420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243420);
  }

  return result;
}

unint64_t sub_24F42D824()
{
  result = qword_27F243428;
  if (!qword_27F243428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243428);
  }

  return result;
}

unint64_t sub_24F42D87C()
{
  result = qword_27F243430;
  if (!qword_27F243430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243430);
  }

  return result;
}

unint64_t sub_24F42D8D4()
{
  result = qword_27F243438;
  if (!qword_27F243438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243438);
  }

  return result;
}

unint64_t sub_24F42D92C()
{
  result = qword_27F243440;
  if (!qword_27F243440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243440);
  }

  return result;
}

unint64_t sub_24F42D984()
{
  result = qword_27F243448;
  if (!qword_27F243448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243448);
  }

  return result;
}

unint64_t sub_24F42D9DC()
{
  result = qword_27F243450;
  if (!qword_27F243450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243450);
  }

  return result;
}

unint64_t sub_24F42DA34()
{
  result = qword_27F243458;
  if (!qword_27F243458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243458);
  }

  return result;
}

unint64_t sub_24F42DA8C()
{
  result = qword_27F243460;
  if (!qword_27F243460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243460);
  }

  return result;
}

unint64_t sub_24F42DAE4()
{
  result = qword_27F243468;
  if (!qword_27F243468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243468);
  }

  return result;
}

unint64_t sub_24F42DB3C()
{
  result = qword_27F243470;
  if (!qword_27F243470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243470);
  }

  return result;
}

unint64_t sub_24F42DB94()
{
  result = qword_27F243478;
  if (!qword_27F243478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243478);
  }

  return result;
}

unint64_t sub_24F42DBEC()
{
  result = qword_27F243480;
  if (!qword_27F243480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243480);
  }

  return result;
}

unint64_t sub_24F42DC44()
{
  result = qword_27F243488;
  if (!qword_27F243488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243488);
  }

  return result;
}

unint64_t sub_24F42DC9C()
{
  result = qword_27F243490;
  if (!qword_27F243490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243490);
  }

  return result;
}

uint64_t sub_24F42DCF0()
{
  if (*v0)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x65676F5479616C70;
  }
}

uint64_t sub_24F42DD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676F5479616C70 && a2 == 0xEC00000072656874;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000)
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

uint64_t sub_24F42DE14(uint64_t a1)
{
  v2 = sub_24F4313FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42DE50(uint64_t a1)
{
  v2 = sub_24F4313FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42DE8C(uint64_t a1)
{
  v2 = sub_24F4314A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42DEC8(uint64_t a1)
{
  v2 = sub_24F4314A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42DF04(uint64_t a1)
{
  v2 = sub_24F431450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F42DF40(uint64_t a1)
{
  v2 = sub_24F431450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42DF7C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F430504(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_24F42DFC8@<X0>(uint64_t a1@<X8>)
{
  v205 = a1;
  v183 = sub_24F926E08();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = &v171 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434B0);
  MEMORY[0x28223BE20](v223);
  v185 = &v171 - v2;
  v221 = sub_24F9289E8();
  v184 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v209 = &v171 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434B8);
  MEMORY[0x28223BE20](v208);
  v220 = &v171 - v4;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434C0);
  MEMORY[0x28223BE20](v200);
  v222 = &v171 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410);
  MEMORY[0x28223BE20](v6 - 8);
  v180 = &v171 - v7;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434C8);
  v175 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v174 = &v171 - v8;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434D0);
  v176 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v186 = &v171 - v9;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434D8);
  MEMORY[0x28223BE20](v203);
  v202 = &v171 - v10;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434E0);
  MEMORY[0x28223BE20](v197);
  v199 = &v171 - v11;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434E8);
  MEMORY[0x28223BE20](v190);
  v191 = &v171 - v12;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434F0);
  MEMORY[0x28223BE20](v198);
  v192 = &v171 - v13;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2434F8);
  MEMORY[0x28223BE20](v204);
  v201 = &v171 - v14;
  v189 = sub_24F929888();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v173 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v187 = &v171 - v17;
  MEMORY[0x28223BE20](v18);
  v179 = &v171 - v19;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v219);
  v195 = &v171 - v20;
  v218 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v194 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v207 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v22 - 8);
  v217 = &v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v216 = &v171 - v25;
  v215 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v215);
  v214 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for PlayerAvatarView(0);
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v211 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v210 = &v171 - v29;
  v196 = type metadata accessor for OverlappingPlayerAvatarsView();
  MEMORY[0x28223BE20](v196);
  v31 = &v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2344F8);
  v177 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v171 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234508);
  v178 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v171 - v36;
  v38 = type metadata accessor for Player(0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v171 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v171 - v43;
  v45 = type metadata accessor for OverviewTileAccessoryType(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v171 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F43132C(v206, v47, type metadata accessor for OverviewTileAccessoryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24F926E48();
      v96 = v202;
      v97 = v180;
      sub_24F924CF8();
      v98 = sub_24F924D08();
      (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
      v99 = sub_24F926E58();

      sub_24E601704(v97, &qword_27F214410);
      v100 = sub_24F925988();
      KeyPath = swift_getKeyPath();
      sub_24F927638();
      sub_24F9238C8();
      *&v228 = v99;
      *(&v228 + 1) = KeyPath;
      *&v229 = v100;
      v102 = v231;
      v103 = v220;
      *(v220 + 32) = v230;
      *(v103 + 48) = v102;
      *(v103 + 64) = v232;
      v104 = v229;
      *v103 = v228;
      *(v103 + 16) = v104;
      swift_storeEnumTagMultiPayload();
      sub_24E60169C(&v228, &v225, &qword_27F2128C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128C8);
      sub_24F431258(&qword_27F2278E0, &qword_27F2128C8, &unk_24F939720, sub_24E60156C);
      sub_24F4311CC();
      v105 = v222;
      sub_24F924E28();
      sub_24E60169C(v105, v199, &qword_27F2434C0);
      swift_storeEnumTagMultiPayload();
      sub_24F430ED8();
      sub_24F431114();
      v106 = v201;
      sub_24F924E28();
      sub_24E601704(v105, &qword_27F2434C0);
      sub_24E60169C(v106, v96, &qword_27F2434F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20);
      sub_24F430E4C();
      sub_24F431258(&qword_27F235A18, &qword_27F235A20, &unk_24F9B9160, sub_24E6E97A8);
      sub_24F924E28();
      sub_24E601704(&v228, &qword_27F2128C8);
      return sub_24E601704(v106, &qword_27F2434F8);
    }

    else
    {
      v49 = v202;
      if (EnumCaseMultiPayload == 3)
      {
        v50 = v184;
        v51 = v209;
        v52 = v221;
        (*(v184 + 32))(v209, v47, v221);
        sub_24F927638();
        sub_24F9238C8();
        v53 = v185;
        (*(v50 + 16))(v185, v51, v52);
        v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AC8) + 36));
        v55 = v229;
        *v54 = v228;
        v54[1] = v55;
        v54[2] = v230;
        sub_24F926C88();
        v56 = sub_24F926D08();

        v57 = v53 + *(v223 + 9);
        *v57 = v56;
        *(v57 + 8) = xmmword_24F9F6660;
        *(v57 + 24) = 0x4024000000000000;
        sub_24E60169C(v53, v220, &qword_27F2434B0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128C8);
        sub_24F431258(&qword_27F2278E0, &qword_27F2128C8, &unk_24F939720, sub_24E60156C);
        sub_24F4311CC();
        v58 = v222;
        sub_24F924E28();
        sub_24E60169C(v58, v199, &qword_27F2434C0);
        swift_storeEnumTagMultiPayload();
        sub_24F430ED8();
        sub_24F431114();
        v59 = v201;
        sub_24F924E28();
        sub_24E601704(v58, &qword_27F2434C0);
        sub_24E60169C(v59, v49, &qword_27F2434F8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20);
        sub_24F430E4C();
        sub_24F431258(&qword_27F235A18, &qword_27F235A20, &unk_24F9B9160, sub_24E6E97A8);
        sub_24F924E28();
        sub_24E601704(v59, &qword_27F2434F8);
        sub_24E601704(v53, &qword_27F2434B0);
        return (*(v50 + 8))(v209, v221);
      }

      else
      {
        sub_24F926E98();
        v107 = v182;
        v108 = v181;
        v109 = v183;
        (*(v182 + 104))(v181, *MEMORY[0x277CE0FE0], v183);
        v110 = sub_24F926E88();

        (*(v107 + 8))(v108, v109);
        type metadata accessor for OverviewTileAccessory(0);
        sub_24F927638();
        sub_24F9238C8();
        *&v233[6] = v228;
        *&v233[22] = v229;
        *&v233[38] = v230;
        v111 = *&v233[16];
        *(v49 + 18) = *v233;
        LOBYTE(v225) = 1;
        *v49 = v110;
        *(v49 + 8) = 0;
        *(v49 + 16) = 1;
        *(v49 + 34) = v111;
        *(v49 + 50) = *&v233[32];
        *(v49 + 64) = *&v233[46];
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20);
        sub_24F430E4C();
        sub_24F431258(&qword_27F235A18, &qword_27F235A20, &unk_24F9B9160, sub_24E6E97A8);
        return sub_24F924E28();
      }
    }
  }

  v61 = v224;
  v223 = v44;
  v182 = v39;
  v181 = v31;
  v180 = v41;
  v183 = v34;
  v172 = v37;
  v184 = v32;
  v185 = v35;
  if (EnumCaseMultiPayload)
  {
    v112 = *v47;
    v113 = type metadata accessor for OverviewTileAccessory(0);
    v114 = 48.0;
    if (*(v206 + *(v113 + 24)))
    {
      v114 = 24.0;
    }

    v115 = -16.0;
    if (*(v206 + *(v113 + 24)))
    {
      v115 = -8.0;
    }

    v116 = 4.0;
    if (*(v206 + *(v113 + 24)))
    {
      v116 = 2.0;
    }

    v117 = 0.174532925;
    if (*(v206 + *(v113 + 24)))
    {
      v117 = -0.174532925;
    }

    *&v228 = v112;
    *(&v228 + 1) = v114;
    *&v229 = v114;
    *(&v229 + 1) = v115;
    *&v230 = v116;
    *(&v230 + 1) = v117;
    v118 = *MEMORY[0x277CDFA10];
    v119 = sub_24F923E98();
    v120 = v195;
    (*(*(v119 - 8) + 104))(v195, v118, v119);
    sub_24F4312E4(&qword_27F22DF90, MEMORY[0x277CDFA28]);
    result = sub_24F92AFF8();
    if (result)
    {
      v121 = v61;
      v122 = sub_24F4310C0();
      v123 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
      v124 = v174;
      v125 = v219;
      sub_24F9263F8();
      sub_24E601704(v120, &qword_27F21CCC8);

      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v225 = 0u;
      v126 = v173;
      sub_24F929828();
      sub_24E601704(&v225, &qword_27F2129B0);
      sub_24E601704(&v228, &qword_27F2129B0);
      *&v228 = &type metadata for StackedGameIconsView;
      *(&v228 + 1) = v125;
      *&v229 = v122;
      *(&v229 + 1) = v123;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v128 = v186;
      sub_24F925EE8();
      (*(v188 + 8))(v126, v189);
      (*(v175 + 8))(v124, v121);
      v129 = v176;
      v130 = v193;
      (*(v176 + 16))(v191, v128, v193);
      swift_storeEnumTagMultiPayload();
      v131 = sub_24F4312E4(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView);
      *&v228 = v196;
      *(&v228 + 1) = v125;
      *&v229 = v131;
      *(&v229 + 1) = v123;
      v132 = swift_getOpaqueTypeConformance2();
      *&v228 = v184;
      *(&v228 + 1) = v132;
      swift_getOpaqueTypeConformance2();
      *&v228 = v121;
      *(&v228 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v133 = v192;
      sub_24F924E28();
      sub_24E60169C(v133, v199, &qword_27F2434F0);
      swift_storeEnumTagMultiPayload();
      sub_24F430ED8();
      sub_24F431114();
      v134 = v201;
      sub_24F924E28();
      sub_24E601704(v133, &qword_27F2434F0);
      sub_24E60169C(v134, v202, &qword_27F2434F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20);
      sub_24F430E4C();
      sub_24F431258(&qword_27F235A18, &qword_27F235A20, &unk_24F9B9160, sub_24E6E97A8);
      sub_24F924E28();
      sub_24E601704(v134, &qword_27F2434F8);
      return (*(v129 + 8))(v186, v130);
    }

    __break(1u);
    goto LABEL_45;
  }

  v62 = *v47;
  v63 = *(*v47 + 16);
  v186 = *v47;
  v176 = v63;
  if (v63)
  {
    v64 = v62 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
    v209 = *(v182 + 72);
    v208 = (v194 + 56);
    v65 = MEMORY[0x277D84F90];
    v66 = v63;
    v67 = v223;
    do
    {
      v220 = v66;
      v222 = v65;
      v221 = v64;
      sub_24F43132C(v64, v67, type metadata accessor for Player);
      v68 = *(v67 + 16);
      v69 = *(v67 + 24);
      v70 = type metadata accessor for PlayerAvatar.Overlay(0);
      v71 = *(v70 - 8);
      v72 = *(v71 + 56);
      v73 = v216;
      v72(v216, 1, 1, v70);
      *&v230 = 0;
      v228 = 0u;
      v229 = 0u;
      v74 = v215;
      v75 = *(v215 + 20);
      v76 = v214;
      v72(&v214[v75], 1, 1, v70);
      v77 = v76 + *(v74 + 24);
      v227 = 0;
      v226 = 0u;
      v225 = 0u;
      *v77 = 0u;
      *(v77 + 16) = 0u;
      *(v77 + 32) = 0;

      sub_24E61DA68(&v225, v77, qword_27F21B590);
      *v76 = v68;
      v76[1] = v69;

      sub_24E61DA68(v73, v76 + v75, &qword_27F22DF80);
      sub_24E61DA68(&v228, v77, qword_27F21B590);
      v78 = v211;
      sub_24F928948();
      sub_24EF3F088(v223, type metadata accessor for Player);
      type metadata accessor for PlayerAvatarView.AvatarType(0);
      swift_storeEnumTagMultiPayload();
      v79 = v217;
      sub_24E60169C(v76 + v75, v217, &qword_27F22DF80);
      v80 = v213;
      v81 = *(v213 + 20);
      if ((*(v71 + 48))(v79, 1, v70) == 1)
      {
        sub_24E601704(v79, &qword_27F22DF80);
        v82 = 1;
        v83 = v218;
      }

      else
      {
        v84 = v207;
        sub_24F431394(v79, v207, type metadata accessor for PlayerAvatar.Overlay);
        v83 = v218;
        v85 = v84 + *(v218 + 20);
        *v85 = 0;
        *(v85 + 8) = 1;
        v86 = (v84 + *(v83 + 24));
        *v86 = 0;
        v86[1] = 0;
        sub_24F431394(v84, v78 + v81, type metadata accessor for PlayerAvatarView.Overlay);
        v82 = 0;
      }

      (*v208)(v78 + v81, v82, 1, v83);
      v87 = v78 + *(v80 + 24);
      sub_24E60169C(v77, &v228, qword_27F24EC90);
      sub_24EF3F088(v76, type metadata accessor for PlayerAvatar);
      v88 = v229;
      *v87 = v228;
      *(v87 + 16) = v88;
      *(v87 + 32) = v230;
      *(v78 + *(v80 + 28)) = 7;
      v89 = v210;
      sub_24F431394(v78, v210, type metadata accessor for PlayerAvatarView);
      v65 = v222;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v224;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v65 = sub_24E619074(0, *(v65 + 2) + 1, 1, v65);
      }

      v92 = v212;
      v94 = *(v65 + 2);
      v93 = *(v65 + 3);
      if (v94 >= v93 >> 1)
      {
        v65 = sub_24E619074(v93 > 1, v94 + 1, 1, v65);
      }

      v95 = v220;
      *(v65 + 2) = v94 + 1;
      sub_24F431394(v89, &v65[((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v94], type metadata accessor for PlayerAvatarView);
      v64 = &v209[v221];
      v66 = v95 - 1;
      v67 = v223;
    }

    while (v66);
  }

  else
  {
    v91 = v224;
    v65 = MEMORY[0x277D84F90];
  }

  if (*(v206 + *(type metadata accessor for OverviewTileAccessory(0) + 24)))
  {
    v135 = 2;
  }

  else
  {
    v135 = 4;
  }

  *&v228 = 0x4010000000000000;
  sub_24E66ED98();
  v136 = v181;
  sub_24F9237C8();
  v137 = v196;
  *(v136 + *(v196 + 20)) = v65;
  v138 = v136 + *(v137 + 24);
  *v138 = 3;
  *(v138 + 8) = 0;
  *(v136 + *(v137 + 28)) = v135;
  v139 = *MEMORY[0x277CDFA10];
  v140 = sub_24F923E98();
  v141 = v195;
  (*(*(v140 - 8) + 104))(v195, v139, v140);
  sub_24F4312E4(&qword_27F22DF90, MEMORY[0x277CDFA28]);
  result = sub_24F92AFF8();
  if ((result & 1) == 0)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v142 = sub_24F4312E4(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView);
  v223 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
  sub_24F9263F8();
  sub_24E601704(v141, &qword_27F21CCC8);
  sub_24EF3F088(v136, type metadata accessor for OverlappingPlayerAvatarsView);
  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v225 = 0u;
  sub_24F929828();
  sub_24E601704(&v225, &qword_27F2129B0);
  sub_24E601704(&v228, &qword_27F2129B0);
  v143 = v180;
  v144 = v176;
  if (v176)
  {
    v145 = &v186[(*(v182 + 80) + 32) & ~*(v182 + 80)];
    v146 = *(v182 + 72);
    v147 = MEMORY[0x277D84F90];
    do
    {
      sub_24F43132C(v145, v143, type metadata accessor for Player);
      v149 = *v143;
      v148 = v143[1];

      sub_24EF3F088(v143, type metadata accessor for Player);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v147 = sub_24E615CF4(0, *(v147 + 2) + 1, 1, v147);
      }

      v151 = *(v147 + 2);
      v150 = *(v147 + 3);
      if (v151 >= v150 >> 1)
      {
        v147 = sub_24E615CF4((v150 > 1), v151 + 1, 1, v147);
      }

      *(v147 + 2) = v151 + 1;
      v152 = &v147[16 * v151];
      *(v152 + 4) = v149;
      *(v152 + 5) = v148;
      v145 += v146;
      --v144;
      v91 = v224;
    }

    while (v144);
  }

  else
  {
    v147 = MEMORY[0x277D84F90];
  }

  *&v228 = v147;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E602068(&qword_27F23E240, &unk_27F2285F0);
  v153 = sub_24F92AF68();
  v155 = v154;

  *(&v229 + 1) = MEMORY[0x277D837D0];
  *&v228 = v153;
  *(&v228 + 1) = v155;
  v156 = v179;
  v157 = v187;
  sub_24F929868();
  v158 = *(v188 + 8);
  v159 = v189;
  v158(v157, v189);
  sub_24E601704(&v228, &qword_27F2129B0);
  *&v228 = v196;
  *(&v228 + 1) = v219;
  *&v229 = v142;
  v160 = v223;
  *(&v229 + 1) = v223;
  v224 = MEMORY[0x277CE0D08];
  v161 = swift_getOpaqueTypeConformance2();
  v162 = v172;
  v163 = v184;
  v164 = v183;
  sub_24F925EE8();
  v158(v156, v159);
  (*(v177 + 8))(v164, v163);
  v165 = v178;
  v166 = v185;
  (*(v178 + 16))(v191, v162, v185);
  swift_storeEnumTagMultiPayload();
  *&v228 = v163;
  *(&v228 + 1) = v161;
  swift_getOpaqueTypeConformance2();
  v167 = sub_24F4310C0();
  *&v228 = &type metadata for StackedGameIconsView;
  *(&v228 + 1) = v219;
  *&v229 = v167;
  *(&v229 + 1) = v160;
  v168 = swift_getOpaqueTypeConformance2();
  *&v228 = v91;
  *(&v228 + 1) = v168;
  swift_getOpaqueTypeConformance2();
  v169 = v192;
  sub_24F924E28();
  sub_24E60169C(v169, v199, &qword_27F2434F0);
  swift_storeEnumTagMultiPayload();
  sub_24F430ED8();
  sub_24F431114();
  v170 = v201;
  sub_24F924E28();
  sub_24E601704(v169, &qword_27F2434F0);
  sub_24E60169C(v170, v202, &qword_27F2434F8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20);
  sub_24F430E4C();
  sub_24F431258(&qword_27F235A18, &qword_27F235A20, &unk_24F9B9160, sub_24E6E97A8);
  sub_24F924E28();
  sub_24E601704(v170, &qword_27F2434F8);
  return (*(v165 + 8))(v172, v166);
}

uint64_t sub_24F430504(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243528);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243530);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243538);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4313FC();
  v11 = v26;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24F92CC78();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24E643430();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24F92C918();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v19 = &type metadata for OverviewTileAccessory.Context;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24F431450();
    sub_24F92CBA8();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24F4314A4();
    sub_24F92CBA8();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

uint64_t sub_24F4309C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7641646E65697266 && a2 == 0xED00007372617461;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE900000000000073 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747241616964656DLL && a2 == 0xEC0000006B726F77 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4164656C646E7562 && a2 == 0xEC00000074657373)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24F430B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OverviewTileAccessoryType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F430C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OverviewTileAccessoryType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_24F430D3C()
{
  type metadata accessor for OverviewTileAccessoryType(319);
  if (v0 <= 0x3F)
  {
    sub_24EB5FE28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F430DDC()
{
  result = qword_27F2434A8;
  if (!qword_27F2434A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2434A8);
  }

  return result;
}

unint64_t sub_24F430E4C()
{
  result = qword_27F243500;
  if (!qword_27F243500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2434F8);
    sub_24F430ED8();
    sub_24F431114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243500);
  }

  return result;
}

unint64_t sub_24F430ED8()
{
  result = qword_27F243508;
  if (!qword_27F243508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2434F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2344F8);
    type metadata accessor for OverlappingPlayerAvatarsView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8);
    sub_24F4312E4(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView);
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2434C8);
    sub_24F4310C0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243508);
  }

  return result;
}

unint64_t sub_24F4310C0()
{
  result = qword_27F243510;
  if (!qword_27F243510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243510);
  }

  return result;
}

unint64_t sub_24F431114()
{
  result = qword_27F243518;
  if (!qword_27F243518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2434C0);
    sub_24F431258(&qword_27F2278E0, &qword_27F2128C8, &unk_24F939720, sub_24E60156C);
    sub_24F4311CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243518);
  }

  return result;
}

unint64_t sub_24F4311CC()
{
  result = qword_27F243520;
  if (!qword_27F243520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2434B0);
    sub_24E6E94A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243520);
  }

  return result;
}

uint64_t sub_24F431258(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F4312E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F43132C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F431394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F4313FC()
{
  result = qword_27F243540;
  if (!qword_27F243540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243540);
  }

  return result;
}

unint64_t sub_24F431450()
{
  result = qword_27F243548;
  if (!qword_27F243548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243548);
  }

  return result;
}

unint64_t sub_24F4314A4()
{
  result = qword_27F243550;
  if (!qword_27F243550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243550);
  }

  return result;
}

unint64_t sub_24F43152C()
{
  result = qword_27F243570;
  if (!qword_27F243570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243578);
    sub_24F430E4C();
    sub_24F431258(&qword_27F235A18, &qword_27F235A20, &unk_24F9B9160, sub_24E6E97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243570);
  }

  return result;
}

unint64_t sub_24F4315E8()
{
  result = qword_27F243580;
  if (!qword_27F243580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243580);
  }

  return result;
}

unint64_t sub_24F431640()
{
  result = qword_27F243588;
  if (!qword_27F243588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243588);
  }

  return result;
}

unint64_t sub_24F431698()
{
  result = qword_27F243590;
  if (!qword_27F243590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243590);
  }

  return result;
}

unint64_t sub_24F4316F0()
{
  result = qword_27F243598;
  if (!qword_27F243598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243598);
  }

  return result;
}

unint64_t sub_24F431748()
{
  result = qword_27F2435A0;
  if (!qword_27F2435A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2435A0);
  }

  return result;
}

unint64_t sub_24F4317A0()
{
  result = qword_27F2435A8;
  if (!qword_27F2435A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2435A8);
  }

  return result;
}

unint64_t sub_24F4317F8()
{
  result = qword_27F2435B0;
  if (!qword_27F2435B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2435B0);
  }

  return result;
}

uint64_t sub_24F431850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  updated = type metadata accessor for ChallengesUpdateNotifier();
  v7 = swift_task_alloc();
  v3[13] = v7;
  *v7 = v3;
  v7[1] = sub_24F4319E4;

  return MEMORY[0x28217F228](v3 + 2, updated, updated);
}

uint64_t sub_24F4319E4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E7CC784;
  }

  else
  {
    v2 = sub_24F431AF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F431AF8()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v13 = v0[6];
  v14 = v0[11];
  v7 = v0[4];
  v15 = v0[3];
  v8 = v0[2];
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;
  type metadata accessor for GSKShelf();
  (*(v4 + 104))(v5, *MEMORY[0x277D85778], v13);
  sub_24F92B928();

  (*(v2 + 16))(v14, v1, v3);
  sub_24E613678();
  sub_24F9280F8();

  (*(v2 + 8))(v1, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v10 - 8) + 56))(v15, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F431CD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v55 = a3;
  v61 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v63 = *(v5 - 8);
  v64 = v5;
  v60 = *(v63 + 64);
  MEMORY[0x28223BE20](v5);
  v62 = &v48 - v6;
  v7 = type metadata accessor for ChallengesInvitesShelfIntent();
  v8 = v7 - 8;
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = v9;
  v58 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v48 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243600);
  v12 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F0);
  v52 = *(v15 - 8);
  v53 = v15;
  MEMORY[0x28223BE20](v15);
  v51 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F8);
  v49 = *(v17 - 8);
  v50 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v48 - v21);
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_24F92C888();
  v24 = *a2;
  v23 = a2[1];

  v67 = v24;
  v68 = v23;
  MEMORY[0x253050C20](0xD000000000000018, 0x800000024FA75350);
  v25 = v67;
  v48 = v68;
  v26 = a2[4];
  v27 = *(v8 + 40);
  v59 = a2;
  sub_24E736938(a2 + v27, v22);
  v28 = type metadata accessor for Game();
  if ((*(*(v28 - 8) + 48))(v22, 1, v28) == 1)
  {

    sub_24E7D0014(v22);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v29 = *v22;
    v30 = v22[1];

    sub_24F436418(v22, type metadata accessor for Game);
  }

  type metadata accessor for InvitesShelfUpdater();
  v31 = swift_allocObject();
  v32 = v55;
  v31[2] = v26;
  v31[3] = v32;
  v33 = v48;
  v31[4] = v25;
  v31[5] = v33;
  v31[6] = v29;
  v31[7] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D770);
  v34 = v54;
  (*(v12 + 104))(v14, *MEMORY[0x277D85778], v54);

  v35 = v51;
  sub_24F92B868();
  (*(v12 + 8))(v14, v34);
  (*(v49 + 32))(v31 + OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesStream, v19, v50);
  (*(v52 + 32))(v31 + OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesContinuation, v35, v53);
  sub_24F433A50();

  v36 = v64;
  v37 = v61;
  sub_24F92B898();
  v38 = sub_24F92B858();
  (*(*(v38 - 8) + 56))(v66, 1, 1, v38);
  v39 = v58;
  sub_24F4363B0(v59, v58, type metadata accessor for ChallengesInvitesShelfIntent);
  v41 = v62;
  v40 = v63;
  (*(v63 + 16))(v62, v37, v36);
  v42 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v43 = (v56 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v40 + 80) + v43 + 8) & ~*(v40 + 80);
  v45 = (v60 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  sub_24F43615C(v39, v46 + v42);
  *(v46 + v43) = v65;
  (*(v40 + 32))(v46 + v44, v41, v36);
  *(v46 + v45) = v31;

  sub_24F1D3DA4(0, 0, v66, &unk_24F9F7408, v46);
}

uint64_t sub_24F4323BC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_24F92B858();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_24EA998B8(0, 0, v5, &unk_24F9F7420, v7);
}

uint64_t sub_24F4324C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243608);
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = type metadata accessor for ChallengesInvitesShelfConstructionIntent();
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F432680, 0, 0);
}

uint64_t sub_24F432680()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 104);
  v4 = v3[4];
  v5 = v3[2];
  *(v0 + 232) = v5;
  v6 = v3[3];
  *(v0 + 240) = v6;
  v7 = *v3;
  *(v0 + 248) = *v3;
  v8 = v3[1];
  *(v0 + 256) = v8;
  v15 = *(v3 + 40);
  v9 = type metadata accessor for ChallengesInvitesShelfIntent();
  v10 = *(v9 + 32);
  *(v0 + 376) = v10;
  v11 = *(v3 + *(v9 + 36));
  *(v0 + 380) = v11;
  sub_24E736938(v3 + v10, v1 + *(v2 + 32));
  *v1 = v4;
  *(v1 + 8) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 40) = v15;
  *(v1 + *(v2 + 36)) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  *(v0 + 264) = v12;

  v13 = swift_task_alloc();
  *(v0 + 272) = v13;
  *v13 = v0;
  v13[1] = sub_24F4327FC;

  return MEMORY[0x28217F228](v0 + 16, v12, v12);
}

uint64_t sub_24F4327FC()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_24F432B28;
  }

  else
  {
    v2 = sub_24F432910;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F432910()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[36] = v3;
  v4 = sub_24F436368(&qword_27F21D558, type metadata accessor for ChallengesInvitesShelfConstructionIntent);
  v0[37] = v4;
  *v3 = v0;
  v3[1] = sub_24F432A14;
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[23];
  v8 = v0[14];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F432A14()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_24F432D94;
  }

  else
  {
    v2 = sub_24F432C00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F432B28()
{
  sub_24F436418(*(v0 + 200), type metadata accessor for ChallengesInvitesShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F432C00()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_24F436418(v3, type metadata accessor for ChallengesInvitesShelfConstructionIntent);
  sub_24F4363B0(v2, v1, type metadata accessor for GSKShelf);
  v0[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  sub_24F92B8C8();
  v7 = *(v5 + 8);
  v0[40] = v7;
  v0[41] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F8);
  sub_24F92B8F8();
  v8 = swift_task_alloc();
  v0[42] = v8;
  *v8 = v0;
  v8[1] = sub_24F432E74;
  v9 = v0[17];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v9);
}

uint64_t sub_24F432D94()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24F436418(*(v0 + 200), type metadata accessor for ChallengesInvitesShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F432E74()
{

  return MEMORY[0x2822009F8](sub_24F432F70, 0, 0);
}

uint64_t sub_24F432F70()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 380);
    v4 = *(v0 + 248);
    v3 = *(v0 + 256);
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    v8 = *(v0 + 184);
    v7 = *(v0 + 192);
    v9 = *(v0 + 104);
    v10 = *(v9 + 40);
    sub_24E736938(v9 + *(v0 + 376), v7 + *(v8 + 32));
    *v7 = v1;
    *(v7 + 8) = v6;
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    *(v7 + 32) = v3;
    *(v7 + 40) = v10;
    *(v7 + *(v8 + 36)) = v2;

    v11 = swift_task_alloc();
    *(v0 + 344) = v11;
    *v11 = v0;
    v11[1] = sub_24F433158;
    v12 = *(v0 + 264);

    return MEMORY[0x28217F228](v0 + 56, v12, v12);
  }

  else
  {
    v13 = *(v0 + 224);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    sub_24F436418(v13, type metadata accessor for GSKShelf);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_24F433158()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_24F433448;
  }

  else
  {
    v2 = sub_24F43326C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F43326C()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[45] = v3;
  *v3 = v0;
  v3[1] = sub_24F433334;
  v4 = v0[37];
  v5 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[14];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F433334()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_24F4336C0;
  }

  else
  {
    v2 = sub_24F433560;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F433448()
{
  v1 = v0[28];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  sub_24F436418(v0[24], type metadata accessor for ChallengesInvitesShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24F436418(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F433560()
{
  v1 = v0[40];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[20];
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  sub_24F436418(v4, type metadata accessor for ChallengesInvitesShelfConstructionIntent);
  sub_24F4363B0(v3, v2, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v1(v5, v6);
  sub_24F436418(v3, type metadata accessor for GSKShelf);
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_24F432E74;
  v8 = v0[17];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v8);
}

uint64_t sub_24F4336C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[28];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  sub_24F436418(v0[24], type metadata accessor for ChallengesInvitesShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24F436418(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F4337E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24F431850(a1, a2, a3);
}

uint64_t sub_24F4338B0()
{
  v1 = v0[2];
  v2 = v1[3];
  v0[3] = v2;
  v0[4] = v1[4];
  v0[5] = v1[5];
  return MEMORY[0x2822009F8](sub_24F4338E4, v2, 0);
}

uint64_t sub_24F4338E4()
{
  sub_24F5E9198(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2822009F8](sub_24F433950, 0, 0);
}

uint64_t sub_24F433950()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[6] = *(v2 + 48);
  v0[7] = *(v2 + 56);
  return MEMORY[0x2822009F8](sub_24F43397C, v1, 0);
}

uint64_t sub_24F43397C()
{
  v1 = v0[3];
  sub_24F5EA3E0(v0[4], v0[5], v0[6], v0[7]);

  return MEMORY[0x2822009F8](sub_24F4339EC, v1, 0);
}

uint64_t sub_24F4339EC()
{
  sub_24F5E9878(v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24F433A50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_24F92B858();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_24EA998B8(0, 0, v3, &unk_24F9F7320, v6);

  v5(v3, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;

  sub_24EA998B8(0, 0, v3, &unk_24F9F7330, v7);

  v5(v3, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;

  sub_24EA998B8(0, 0, v3, &unk_24F9F7340, v8);
}

uint64_t sub_24F433C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435E8);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E8);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F0);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F433DE0, 0, 0);
}

uint64_t sub_24F433DE0()
{
  v1 = v0[11];
  v2 = v1[3];
  v0[21] = v2;
  v0[22] = v1[4];
  v0[23] = v1[5];
  return MEMORY[0x2822009F8](sub_24F433E14, v2, 0);
}

uint64_t sub_24F433E14()
{
  sub_24F5E8D7C(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](sub_24F433E84, 0, 0);
}

uint64_t sub_24F433E84()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v0[24] = OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesContinuation;
  swift_beginAccess();
  v0[25] = 0;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_24F433F88;
  v5 = v0[18];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v5);
}

uint64_t sub_24F433F88()
{

  return MEMORY[0x2822009F8](sub_24F434084, 0, 0);
}

uint64_t sub_24F434084()
{
  v2 = v0[8];
  v1 = v0[9];
  if (v1)
  {
    v3 = v0[25];
    v4 = v0[11];
    v5 = v4[2];
    v4 += 2;
    v6 = *(v5 + 16);
    swift_beginAccess();

    v7 = sub_24F435A10(v4, v2, v1);

    v12 = *v4;
    v13 = *(*v4 + 16);
    if (v13 < v7)
    {
      __break(1u);
    }

    else if ((v7 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v13, v7 - v13))
      {
        v34 = v7 - v13;
        v14 = v0[11];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v14 + 16) = v12;
        v35 = v3;
        if (!isUniquelyReferenced_nonNull_native || v7 > v12[3] >> 1)
        {
          v16 = v0[11];
          if (v13 <= v7)
          {
            v17 = v7;
          }

          else
          {
            v17 = v13;
          }

          v12 = sub_24E61A494(isUniquelyReferenced_nonNull_native, v17, 1, v12);
          *(v16 + 16) = v12;
        }

        v18 = *(type metadata accessor for ChallengeInvite() - 8);
        v19 = v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v20 = *(v18 + 72);
        v21 = v20 * v7;
        v8 = swift_arrayDestroy();
        if (v13 == v7)
        {
          goto LABEL_25;
        }

        v9 = &v19[v20 * v13];
        v10 = v12[2] - v13;
        if (v21 < v20 * v13 || &v19[v20 * v7] >= &v9[v10 * v20])
        {
          v8 = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 != v20 * v13)
        {
          v8 = swift_arrayInitWithTakeBackToFront();
        }

        v25 = v12[2];
        v26 = __OFADD__(v25, v34);
        v27 = v25 + v34;
        if (!v26)
        {
          v12[2] = v27;
LABEL_25:
          v28 = v0[11];
          *(v28 + 16) = v12;
          swift_endAccess();

          v29 = *(v28 + 16);
          if (v6 != *(v29 + 16))
          {
            v30 = v0[13];
            v31 = v0[14];
            v32 = v0[12];
            v0[10] = v29;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F0);
            sub_24F92B8C8();
            (*(v30 + 8))(v31, v32);
          }

          v0[25] = v35;
          v33 = swift_task_alloc();
          v0[26] = v33;
          *v33 = v0;
          v33[1] = sub_24F433F88;
          v11 = v0[18];
          v8 = (v0 + 8);
          v9 = 0;
          v10 = 0;

          return MEMORY[0x2822003E8](v8, v9, v10, v11);
        }

LABEL_33:
        __break(1u);
        return MEMORY[0x2822003E8](v8, v9, v10, v11);
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_32;
  }

  (*(v0[19] + 8))(v0[20], v0[18]);

  v23 = v0[1];

  return v23();
}

uint64_t sub_24F434400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435E8);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(type metadata accessor for ChallengeInvite() - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213780);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213788);
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F434600, 0, 0);
}

uint64_t sub_24F434600()
{
  v1 = v0[11];
  v2 = v1[3];
  v0[24] = v2;
  v0[25] = v1[4];
  v0[26] = v1[5];
  v0[27] = v1[6];
  v0[28] = v1[7];
  return MEMORY[0x2822009F8](sub_24F434644, v2, 0);
}

uint64_t sub_24F434644()
{
  sub_24F5E9B3C(v0[25], v0[26], v0[27], v0[28], v0[20]);

  return MEMORY[0x2822009F8](sub_24F4346B8, 0, 0);
}

uint64_t sub_24F4346B8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v0[29] = OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesContinuation;
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_24F4347B8;
  v5 = v0[21];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_24F4347B8()
{

  return MEMORY[0x2822009F8](sub_24F4348B4, 0, 0);
}

uint64_t sub_24F4348B4()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v2)
  {
    v3 = v0[3];
    v4 = v0[5];
    v5 = v0[11];
    v6 = *(v5 + 16);
    v7 = *(v4 + 16);
    if (v7 == *(v6 + 16))
    {
      if (v7 && v6 != v4)
      {
        v30 = v0[3];
        v31 = v0[2];
        v32 = v0[4];
        v8 = *(v0[15] + 80);
        v9 = (v8 + 32) & ~v8;
        v33 = v6 + v9;
        v34 = v4 + v9;

        v14 = 0;
        while (v14 < *(v4 + 16))
        {
          v15 = *(v0[15] + 72) * v14;
          v10 = sub_24F4363B0(v34 + v15, v0[17], type metadata accessor for ChallengeInvite);
          if (v14 >= *(v6 + 16))
          {
            goto LABEL_27;
          }

          v17 = v0[16];
          v16 = v0[17];
          sub_24F4363B0(v33 + v15, v17, type metadata accessor for ChallengeInvite);
          v18 = *v17;
          v19 = v17[1];
          v21 = v0[16];
          v20 = v0[17];
          if (*v16 == v18 && v16[1] == v19)
          {
            sub_24F436418(v0[16], type metadata accessor for ChallengeInvite);
            v10 = sub_24F436418(v20, type metadata accessor for ChallengeInvite);
          }

          else
          {
            v23 = sub_24F92CE08();
            sub_24F436418(v21, type metadata accessor for ChallengeInvite);
            v10 = sub_24F436418(v20, type metadata accessor for ChallengeInvite);
            if ((v23 & 1) == 0)
            {

              v5 = v0[11];
              goto LABEL_20;
            }
          }

          if (v7 == ++v14)
          {

            v3 = v30;
            v1 = v31;
            v2 = v32;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
        return MEMORY[0x2822003E8](v10, v11, v12, v13);
      }

LABEL_22:
      sub_24E614F20(v1, v3, v2);
    }

    else
    {
      v30 = v0[3];
      v31 = v0[2];
      v32 = v0[4];
LABEL_20:
      v27 = v0[13];
      v26 = v0[14];
      v28 = v0[12];
      *(v5 + 16) = v4;

      sub_24E614F20(v31, v30, v32);
      v0[10] = *(v5 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F0);
      sub_24F92B8C8();
      (*(v27 + 8))(v26, v28);
    }

    v29 = swift_task_alloc();
    v0[30] = v29;
    *v29 = v0;
    v29[1] = sub_24F4347B8;
    v13 = v0[21];
    v10 = (v0 + 2);
    v11 = 0;
    v12 = 0;

    return MEMORY[0x2822003E8](v10, v11, v12, v13);
  }

  (*(v0[22] + 8))(v0[23], v0[21]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_24F434C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435E8);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E8);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F0);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F434DD0, 0, 0);
}

uint64_t sub_24F434DD0()
{
  v1 = v0[11];
  v2 = v1[3];
  v0[21] = v2;
  v0[22] = v1[4];
  v0[23] = v1[5];
  return MEMORY[0x2822009F8](sub_24F434E04, v2, 0);
}

uint64_t sub_24F434E04()
{
  sub_24F5E945C(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](sub_24F434E74, 0, 0);
}

uint64_t sub_24F434E74()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v0[24] = OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesContinuation;
  swift_beginAccess();
  v0[25] = 0;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_24F434F78;
  v5 = v0[18];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v5);
}

uint64_t sub_24F434F78()
{

  return MEMORY[0x2822009F8](sub_24F435074, 0, 0);
}

uint64_t sub_24F435074()
{
  v2 = v0[8];
  v1 = v0[9];
  if (v1)
  {
    v3 = v0[25];
    v4 = v0[11];
    v5 = v4[2];
    v4 += 2;
    v6 = *(v5 + 16);
    swift_beginAccess();

    v7 = sub_24F435A10(v4, v2, v1);

    v12 = *v4;
    v13 = *(*v4 + 16);
    if (v13 < v7)
    {
      __break(1u);
    }

    else if ((v7 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v13, v7 - v13))
      {
        v34 = v7 - v13;
        v14 = v0[11];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v14 + 16) = v12;
        v35 = v3;
        if (!isUniquelyReferenced_nonNull_native || v7 > v12[3] >> 1)
        {
          v16 = v0[11];
          if (v13 <= v7)
          {
            v17 = v7;
          }

          else
          {
            v17 = v13;
          }

          v12 = sub_24E61A494(isUniquelyReferenced_nonNull_native, v17, 1, v12);
          *(v16 + 16) = v12;
        }

        v18 = *(type metadata accessor for ChallengeInvite() - 8);
        v19 = v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v20 = *(v18 + 72);
        v21 = v20 * v7;
        v8 = swift_arrayDestroy();
        if (v13 == v7)
        {
          goto LABEL_25;
        }

        v9 = &v19[v20 * v13];
        v10 = v12[2] - v13;
        if (v21 < v20 * v13 || &v19[v20 * v7] >= &v9[v10 * v20])
        {
          v8 = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 != v20 * v13)
        {
          v8 = swift_arrayInitWithTakeBackToFront();
        }

        v25 = v12[2];
        v26 = __OFADD__(v25, v34);
        v27 = v25 + v34;
        if (!v26)
        {
          v12[2] = v27;
LABEL_25:
          v28 = v0[11];
          *(v28 + 16) = v12;
          swift_endAccess();

          v29 = *(v28 + 16);
          if (v6 != *(v29 + 16))
          {
            v30 = v0[13];
            v31 = v0[14];
            v32 = v0[12];
            v0[10] = v29;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F0);
            sub_24F92B8C8();
            (*(v30 + 8))(v31, v32);
          }

          v0[25] = v35;
          v33 = swift_task_alloc();
          v0[26] = v33;
          *v33 = v0;
          v33[1] = sub_24F434F78;
          v11 = v0[18];
          v8 = (v0 + 8);
          v9 = 0;
          v10 = 0;

          return MEMORY[0x2822003E8](v8, v9, v10, v11);
        }

LABEL_33:
        __break(1u);
        return MEMORY[0x2822003E8](v8, v9, v10, v11);
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_32;
  }

  (*(v0[19] + 8))(v0[20], v0[18]);

  v23 = v0[1];

  return v23();
}

uint64_t sub_24F4353F0()
{

  v1 = OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_438C401EB715D0215265CDAF694309D319InvitesShelfUpdater_invitesStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2435F8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InvitesShelfUpdater()
{
  result = qword_27F2435C8;
  if (!qword_27F2435C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F435558()
{
  sub_24F435688(319, &qword_27F2435D8, MEMORY[0x277D85788]);
  if (v0 <= 0x3F)
  {
    sub_24F435688(319, &qword_27F2435E0, MEMORY[0x277D857B8]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24F435688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D770);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24F4356F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F433C44(a1, v4, v5, v6);
}

uint64_t sub_24F4357AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F434400(a1, v4, v5, v6);
}

uint64_t sub_24F435860(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F434C34(a1, v4, v5, v6);
}

uint64_t sub_24F435914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for ChallengeInvite() - 8);
  v9 = *(v8 + 72);
  v10 = (((*(v8 + 80) + 32) & ~*(v8 + 80)) + a1 + 8);
  while (1)
  {
    v11 = *(v10 - 1) == a2 && *v10 == a3;
    if (v11 || (sub_24F92CE08() & 1) != 0)
    {
      break;
    }

    ++v7;
    v10 = (v10 + v9);
    if (v3 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_24F435A10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ChallengeInvite();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = (&v34 - v15);
  v17 = *a1;
  result = sub_24F435914(*a1, a2, a3);
  if (v3)
  {
    return result;
  }

  v42 = a2;
  v36 = 0;
  if (v19)
  {
    return *(v17 + 16);
  }

  v37 = v10;
  v38 = v13;
  v35 = a1;
  v40 = result;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v22 = (v17 + 16);
  v21 = *(v17 + 16);
  if (v20 == v21)
  {
    return v40;
  }

  v39 = a3;
  v41 = v8;
  while (v20 < v21)
  {
    v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v24 = v17;
    v25 = v17 + v23;
    v26 = *(v8 + 72);
    v27 = v26 * v20;
    sub_24F4363B0(v25 + v26 * v20, v16, type metadata accessor for ChallengeInvite);
    if (*v16 == v42 && v16[1] == a3)
    {
      result = sub_24F436418(v16, type metadata accessor for ChallengeInvite);
LABEL_10:
      v8 = v41;
      v17 = v24;
      goto LABEL_11;
    }

    v29 = sub_24F92CE08();
    result = sub_24F436418(v16, type metadata accessor for ChallengeInvite);
    if (v29)
    {
      a3 = v39;
      goto LABEL_10;
    }

    v30 = v40;
    if (v20 == v40)
    {
      a3 = v39;
      v8 = v41;
      v17 = v24;
    }

    else
    {
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v31 = *v22;
      if (v40 >= *v22)
      {
        goto LABEL_31;
      }

      v32 = v26 * v40;
      result = sub_24F4363B0(v25 + v26 * v40, v38, type metadata accessor for ChallengeInvite);
      if (v20 >= v31)
      {
        goto LABEL_32;
      }

      sub_24F4363B0(v25 + v27, v37, type metadata accessor for ChallengeInvite);
      v17 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_24ECDE36C(v24);
      }

      a3 = v39;
      v8 = v41;
      v33 = v17 + v23;
      result = sub_24F435D44(v37, v33 + v32);
      if (v20 >= *(v17 + 16))
      {
        goto LABEL_33;
      }

      result = sub_24F435D44(v38, v33 + v27);
      *v35 = v17;
      v30 = v40;
    }

    v40 = v30 + 1;
LABEL_11:
    ++v20;
    v22 = (v17 + 16);
    v21 = *(v17 + 16);
    if (v20 == v21)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_24F435D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeInvite();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F435E14()
{
  v1 = v0;
  v2 = (type metadata accessor for ChallengesInvitesShelfIntent() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v25 = *(*v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  swift_unknownObjectRelease();

  v8 = v1 + v4 + v2[10];
  v9 = type metadata accessor for Game();
  v10 = (*(*(v9 - 1) + 48))(v8, 1, v9);
  v11 = v25;
  if (!v10)
  {
    v22 = v1;
    v23 = v6;
    v24 = v5;

    v12 = v9[18];
    v13 = sub_24F9289E8();
    v14 = *(v13 - 8);
    v15 = *(v14 + 8);
    v15(v8 + v12, v13);
    v16 = v9[19];
    if (!(*(v14 + 48))(v8 + v16, 1, v13))
    {
      v15(v8 + v16, v13);
    }

    v17 = v9[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v8 + v17, 1, v18))
    {
      (*(v19 + 8))(v8 + v17, v18);
    }

    v4 = (v3 + 32) & ~v3;
    v5 = v24;
    v11 = v25;
    v6 = v23;
    v1 = v22;
  }

  v20 = (((v11 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;

  (*(v6 + 8))(v1 + v20, v5);

  return swift_deallocObject();
}

uint64_t sub_24F43615C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesInvitesShelfIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4361C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ChallengesInvitesShelfIntent() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E614970;

  return sub_24F4324C8(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_24F436368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4363B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F436418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F436478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F433890(a1, v4, v5, v6);
}

uint64_t type metadata accessor for GameAchievementsListPageIntent()
{
  result = qword_27F243628;
  if (!qword_27F243628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameAchievementsListPageIntent.selectedAchievementID.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameAchievementsListPageIntent() + 24));

  return v1;
}

uint64_t GameAchievementsListPageIntent.init(gameSource:player:selectedAchievementID:background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_24F437584(a1, a6, type metadata accessor for GameSource);
  v12 = type metadata accessor for GameAchievementsListPageIntent();
  sub_24E60169C(a2, a6 + v12[5], &unk_27F23E1F0);
  v13 = (a6 + v12[6]);
  *v13 = a3;
  v13[1] = a4;
  sub_24E60169C(a5, a6 + v12[7], &qword_27F21D8F8);
  v17 = &_s14descr2861AC041O5GamesON;
  v18 = sub_24EDA569C();
  v16[0] = 0;
  v14 = sub_24F91FE68();
  sub_24E601704(a5, &qword_27F21D8F8);
  sub_24E601704(a2, &unk_27F23E1F0);
  sub_24E7A1744(a1, type metadata accessor for GameSource);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  *(a6 + v12[8]) = v14 & 1;
  return result;
}

unint64_t GameAchievementsListPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x72756F53656D6167;
  *(inited + 40) = 0xEA00000000006563;
  *(inited + 72) = type metadata accessor for GameSource();
  *(inited + 80) = sub_24E92E1C8(&qword_27F221F68, type metadata accessor for GameSource);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F437584(v1, boxed_opaque_existential_1, type metadata accessor for GameSource);
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v5 = type metadata accessor for GameAchievementsListPageIntent();
  v6 = v5[5];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 136) = sub_24E7EDBB4();
  v7 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E60169C(v1 + v6, v7, &unk_27F23E1F0);
  *(inited + 144) = 0xD000000000000015;
  *(inited + 152) = 0x800000024FA75370;
  v8 = (v1 + v5[6]);
  v10 = *v8;
  v9 = v8[1];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v11 = sub_24E605DB4();
  *(inited + 160) = v10;
  *(inited + 168) = v9;
  *(inited + 192) = v11;
  *(inited + 200) = 0x756F72676B636162;
  *(inited + 208) = 0xEA0000000000646ELL;
  v12 = v5[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  *(inited + 248) = sub_24E7D17FC();
  v13 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v2 + v12, v13, &qword_27F21D8F8);
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v14 = *(v2 + v5[8]);
  v15 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v15;
  *(inited + 272) = v14;

  v16 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v16;
  return result;
}

unint64_t sub_24F436AB4()
{
  v1 = *v0;
  v2 = 0x72756F53656D6167;
  v3 = 0xD000000000000015;
  v4 = 0x756F72676B636162;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726579616C70;
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

uint64_t sub_24F436B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F437B4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F436B88(uint64_t a1)
{
  v2 = sub_24F437530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F436BC4(uint64_t a1)
{
  v2 = sub_24F437530();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameAchievementsListPageIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243610);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F437530();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for GameSource();
  sub_24E92E1C8(&qword_27F221F60, type metadata accessor for GameSource);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for GameAchievementsListPageIntent();
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E92E1C8(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CCF8();
    v8[13] = 2;
    sub_24F92CCA8();
    v8[12] = 3;
    type metadata accessor for Page.Background(0);
    sub_24E92E1C8(&qword_27F21D920, type metadata accessor for Page.Background);
    sub_24F92CCF8();
    v8[11] = 4;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GameAchievementsListPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for GameSource();
  MEMORY[0x28223BE20](v8);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243620);
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for GameAchievementsListPageIntent();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F437530();
  v33 = v12;
  v16 = v36;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v7;
  v41 = 0;
  sub_24E92E1C8(&qword_27F221F50, type metadata accessor for GameSource);
  v19 = v32;
  v18 = v33;
  sub_24F92CC68();
  v20 = v19;
  v21 = v15;
  sub_24F063FF0(v20, v15);
  type metadata accessor for Player(0);
  v40 = 1;
  sub_24E92E1C8(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC18();
  sub_24E6009C8(v17, &v15[v13[5]], &unk_27F23E1F0);
  v39 = 2;
  v22 = sub_24F92CBC8();
  v23 = a1;
  v24 = v34;
  v25 = (v21 + v13[6]);
  *v25 = v22;
  v25[1] = v26;
  type metadata accessor for Page.Background(0);
  v38 = 3;
  sub_24E92E1C8(&qword_27F21D930, type metadata accessor for Page.Background);
  v27 = v31;
  sub_24F92CC18();
  sub_24E6009C8(v27, v21 + v13[7], &qword_27F21D8F8);
  v37 = 4;
  LOBYTE(v27) = sub_24F92CC38();
  (*(v24 + 8))(v18, v35);
  *(v21 + v13[8]) = v27 & 1;
  sub_24F437584(v21, v30, type metadata accessor for GameAchievementsListPageIntent);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_24E7A1744(v21, type metadata accessor for GameAchievementsListPageIntent);
}

unint64_t sub_24F437530()
{
  result = qword_27F243618;
  if (!qword_27F243618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243618);
  }

  return result;
}

uint64_t sub_24F437584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F437600(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GameSource();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24F4377B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for GameSource();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_24F437940()
{
  type metadata accessor for GameSource();
  if (v0 <= 0x3F)
  {
    sub_24EE0050C(319, &qword_27F214988, type metadata accessor for Player);
    if (v1 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v2 <= 0x3F)
      {
        sub_24EE0050C(319, &qword_27F21D948, type metadata accessor for Page.Background);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F437A48()
{
  result = qword_27F243638;
  if (!qword_27F243638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243638);
  }

  return result;
}

unint64_t sub_24F437AA0()
{
  result = qword_27F243640;
  if (!qword_27F243640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243640);
  }

  return result;
}

unint64_t sub_24F437AF8()
{
  result = qword_27F243648;
  if (!qword_27F243648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243648);
  }

  return result;
}

uint64_t sub_24F437B4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72756F53656D6167 && a2 == 0xEA00000000006563 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA75370 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24F437D14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C61436F69647561;
  if (v2 != 1)
  {
    v3 = 0x6C61436F65646976;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6567617373656DLL;
  }

  if (v2)
  {
    v5 = 0xE90000000000006CLL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x6C61436F69647561;
  if (*a2 != 1)
  {
    v6 = 0x6C61436F65646976;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6567617373656DLL;
  }

  if (*a2)
  {
    v8 = 0xE90000000000006CLL;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  return v9 & 1;
}

uint64_t sub_24F437E08()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F437EB4()
{
  sub_24F92B218();
}

uint64_t sub_24F437F4C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F437FF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F43C5C0();
  *a1 = result;
  return result;
}

void sub_24F438024(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C61436F69647561;
  if (v2 != 1)
  {
    v4 = 0x6C61436F65646976;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6567617373656DLL;
  }

  if (!v5)
  {
    v3 = 0xE90000000000006CLL;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_24F4380EC()
{
  sub_24F43C27C(v0, v4);
  if (v5[40])
  {
    v1 = v4[0];
    v2 = v4[1];

    MEMORY[0x253050C20](v1, v2);

    sub_24E601704(v5, &qword_27F2169E8);
    return 0x5F6D6F74737563;
  }

  else
  {

    return sub_24F92B0D8();
  }
}

uint64_t sub_24F4381B4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2437F8);
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v4 = v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243800);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243808);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v34 - v10;
  v12 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24F43C028();
  v13 = v39;
  sub_24F92D108();
  if (!v13)
  {
    v14 = v4;
    v15 = v38;
    v39 = v9;
    v16 = sub_24F92CC78();
    v17 = (2 * *(v16 + 16)) | 1;
    v49 = v16;
    v50 = v16 + 32;
    v51 = 0;
    v52 = v17;
    v18 = sub_24E643430();
    if (v18 == 2 || v51 != v52 >> 1)
    {
      v19 = sub_24F92C918();
      swift_allocError();
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v21 = &type metadata for ProfileHeroQuickAction;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
      swift_willThrow();
      (*(v39 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v18)
      {
        LOBYTE(v42) = 1;
        sub_24F43C07C();
        sub_24F92CBA8();
        v41 = 0;
        v42 = sub_24F92CC28();
        v37 = v24;
        v43 = v24;
        v41 = 1;
        v44 = sub_24F92CC28();
        *&v45 = v26;
        v34[1] = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
        v41 = 2;
        sub_24EE076B8();
        sub_24F92CC68();
        (*(v36 + 8))(v14, v15);
        (*(v39 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v28 = 1;
        v48 = 1;
        v29 = v42;
        v56[0] = *(&v42 + 1);
        *(v56 + 3) = HIDWORD(v42);
        v30 = v43;
        v31 = v44;
        v53 = v45;
        v54 = v46;
        v55 = v47;
      }

      else
      {
        LOBYTE(v42) = 0;
        sub_24F43C0D0();
        v23 = v7;
        sub_24F92CBA8();
        v40 = 0;
        sub_24F43C124();
        sub_24F92CC68();
        v25 = v11;
        v29 = v41;
        v40 = 1;
        v30 = sub_24F92CC28();
        v31 = v27;
        (*(v37 + 8))(v23, v5);
        (*(v39 + 8))(v25, v8);
        swift_unknownObjectRelease();
        v28 = 0;
        LOBYTE(v42) = 0;
      }

      v32 = v35;
      *v35 = v29;
      *(v32 + 1) = v56[0];
      *(v32 + 1) = *(v56 + 3);
      *(v32 + 1) = v30;
      *(v32 + 2) = v31;
      *(v32 + 24) = v53;
      v33 = v55;
      *(v32 + 40) = v54;
      *(v32 + 56) = v33;
      v32[72] = v28;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_24F438964()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x73746361746E6F63;
  }
}

uint64_t sub_24F43899C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
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

uint64_t sub_24F438A74(uint64_t a1)
{
  v2 = sub_24F43C028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F438AB0(uint64_t a1)
{
  v2 = sub_24F43C028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F438AEC()
{
  if (*v0)
  {
    return 0x6D496D6574737973;
  }

  else
  {
    return 0x79546E6F69746361;
  }
}

uint64_t sub_24F438B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761)
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

uint64_t sub_24F438C24(uint64_t a1)
{
  v2 = sub_24F43C0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F438C60(uint64_t a1)
{
  v2 = sub_24F43C0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F438C9C()
{
  v1 = 0x6D496D6574737973;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24F438CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F43C60C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F438D24(uint64_t a1)
{
  v2 = sub_24F43C07C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F438D60(uint64_t a1)
{
  v2 = sub_24F43C07C();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_24F438DB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9BA030;
  v1 = *MEMORY[0x277CBD028];
  v2 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v3 = v1;
  v4 = [v2 initWithString_];

  *(v0 + 32) = v4;
  v5 = *MEMORY[0x277CBD020];
  v6 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v7 = v5;
  v8 = [v6 initWithString_];

  *(v0 + 40) = v8;
  v9 = *MEMORY[0x277CBD158];
  v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v11 = v9;
  v12 = [v10 initWithString_];

  *(v0 + 48) = v12;
  result = [objc_opt_self() descriptorForRequiredKeys];
  *(v0 + 56) = result;
  qword_27F243650 = v0;
  return result;
}

id sub_24F438EF8()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = (v0 + *(type metadata accessor for ProfileHeroQuickActionsView(0) + 28));
  v4 = v3[1];
  *(v2 + 32) = *v3;
  *(v2 + 40) = v4;

  v5 = sub_24F92B588();

  v6 = [v1 predicateForContactsMatchingHandleStrings_];

  v7 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  if (qword_27F211280 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0);
  v8 = sub_24F92B588();
  v18[0] = 0;
  v9 = [v7 unifiedContactsMatchingPredicate:v6 keysToFetch:v8 error:v18];

  v10 = v18[0];
  if (!v9)
  {
    v15 = v18[0];
    v16 = sub_24F91F278();

    swift_willThrow();
LABEL_13:
    v14 = [objc_allocWithZone(MEMORY[0x277CBDA58]) init];

    return v14;
  }

  sub_24E69A5C4(0, &qword_27F223450);
  v11 = sub_24F92B5A8();
  v12 = v10;

  if (v11 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_6:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x253052270](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v13 = *(v11 + 32);
  }

  v14 = v13;

  return v14;
}

__n128 sub_24F439194@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2438D8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v18 - v5;
  v7 = sub_24F438EF8();
  v8 = type metadata accessor for ProfileHeroQuickActionsView(0);
  v9 = *(v1 + *(v8 + 32));
  v10 = *(v1 + *(v8 + 36));

  sub_24F7695C8((v6 + 24));
  v11 = type metadata accessor for CNContactQuickActionsView(0);
  sub_24F76973C(&v6[*(v11 + 32)]);
  *v6 = v7;
  *(v6 + 1) = v9;
  v6[16] = v10;
  sub_24F927618();
  sub_24F9238C8();
  v12 = &v6[*(v4 + 44)];
  v13 = v18[1];
  *v12 = v18[0];
  *(v12 + 1) = v13;
  *(v12 + 2) = v18[2];
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, a1, &qword_27F2438D8);
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2438E0) + 36);
  v15 = v18[8];
  *(v14 + 64) = v18[7];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[9];
  v16 = v18[4];
  *v14 = v18[3];
  *(v14 + 16) = v16;
  result = v18[6];
  *(v14 + 32) = v18[5];
  *(v14 + 48) = result;
  return result;
}

void sub_24F4393E8()
{
  v1 = sub_24F921B58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v37 = *v0;
  LODWORD(v38) = *(v0 + 16);
  sub_24E60169C((v0 + 3), v46, &unk_27F212740);
  v6 = type metadata accessor for CNContactQuickActionsView(0);
  v7 = *(v2 + 16);
  v7(v4, v0 + *(v6 + 32), v1);
  v8 = type metadata accessor for CNContactQuickActionsViewController(0);
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_performAction];
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  *&v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller] = 0;
  *&v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC] = 0;
  v11 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_stack;
  *&v9[v11] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *&v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_lastTimestamp] = 0;
  *&v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_quickActions] = v5;
  v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_direction] = v38;
  swift_beginAccess();

  sub_24F43D514(v46, v10);
  swift_endAccess();
  v38 = v4;
  v7(&v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_metricsFieldsContext], v4, v1);
  v45.receiver = v9;
  v45.super_class = v8;
  v12 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
  v13 = v12;
  v14 = *(v5 + 16);
  if (v14)
  {
    v35 = v2;
    v36 = v1;
    v44 = MEMORY[0x277D84F90];
    v34 = v12;
    v15 = v12;
    sub_24F4578E0(0, v14, 0);
    v16 = v5 + 32;
    v17 = v44;
    do
    {
      sub_24F43C27C(v16, v43);
      sub_24F43C27C(v43, v41);
      if (v42[40])
      {
        v18 = v41[0];
        v19 = v41[1];

        v39 = 0x5F6D6F74737563;
        v40 = 0xE700000000000000;
        MEMORY[0x253050C20](v18, v19);

        v20 = v39;
        v21 = v40;
        sub_24E601704(v42, &qword_27F2169E8);
      }

      else
      {

        v20 = sub_24F92B0D8();
        v21 = v22;
      }

      sub_24F43C24C(v43);
      v44 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_24F4578E0((v23 > 1), v24 + 1, 1);
        v17 = v44;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v21;
      v16 += 80;
      --v14;
    }

    while (v14);
    v1 = v36;
    v2 = v35;
    v13 = v34;
  }

  else
  {
    v26 = v12;
  }

  v27 = objc_allocWithZone(MEMORY[0x277CBDC20]);
  v28 = v13;
  v29 = sub_24F92B588();

  v30 = [v27 initWithActionTypes:v29 contactQuickActionViewContainer:v28];

  v31 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller;
  v32 = *&v28[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller];
  *&v28[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller] = v30;

  if (v30)
  {
    [v30 setContact_];
    v33 = *&v28[v31];
    if (v33)
    {
      [v33 setDelegate_];

      (*(v2 + 8))(v38, v1);
      sub_24E601704(v46, &unk_27F212740);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_24F43989C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F921B58();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  result = *(a1 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller);
  if (result)
  {
    [result setContact_];
    *(a1 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_quickActions) = *(v2 + 8);

    sub_24F439BF0(*(v2 + 16));
    sub_24E60169C(v2 + 24, v14, &unk_27F212740);
    v10 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_performAction;
    swift_beginAccess();
    sub_24F43D4A4(v14, a1 + v10);
    swift_endAccess();
    v11 = type metadata accessor for CNContactQuickActionsView(0);
    (*(v5 + 16))(v8, v2 + *(v11 + 32), v4);
    v12 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_metricsFieldsContext;
    swift_beginAccess();
    (*(v5 + 40))(a1 + v12, v8, v4);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F439A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F43D414(&qword_27F243928, type metadata accessor for CNContactQuickActionsView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24F439B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F43D414(&qword_27F243928, type metadata accessor for CNContactQuickActionsView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24F439B98()
{
  sub_24F43D414(&qword_27F243928, type metadata accessor for CNContactQuickActionsView);
  sub_24F925628();
  __break(1u);
}

void sub_24F439BF0(char a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_direction;
  v3 = v1[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_direction];
  v1[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_direction] = a1 & 1;
  if (v3 != (a1 & 1))
  {
    v4 = [*&v1[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_stack] trailingAnchor];
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 trailingAnchor];

      v8 = [v4 constraintEqualToAnchor_];
      [v8 setActive_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24F439D38()
{
  v1 = v0;
  v42.receiver = v0;
  v42.super_class = type metadata accessor for CNContactQuickActionsViewController(0);
  objc_msgSendSuper2(&v42, sel_viewDidLoad);
  v2 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_stack;
  [*&v0[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_stack] setDistribution_];
  [*&v0[v2] setSpacing_];
  v3 = [*&v0[v2] arrangedSubviews];
  sub_24E69A5C4(0, &qword_27F220378);
  v4 = sub_24F92B5A8();

  if (v4 >> 62)
  {
    v5 = sub_24F92C738();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x253052270](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [*&v1[v2] removeArrangedSubview_];
  }

LABEL_10:

  v9 = *&v1[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_quickActions];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;

    do
    {
      sub_24F43C27C(v11, v41);
      v12 = sub_24F4380EC();
      v14 = v13;
      sub_24F43C24C(v41);
      v15 = sub_24F43A49C(v12, v14);

      [*&v1[v2] addArrangedSubview_];

      v11 += 80;
      --v10;
    }

    while (v10);
  }

  [*&v1[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v1 view];
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  [v16 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24F96E2B0;
  v19 = [*&v1[v2] leadingAnchor];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v18 + 32) = v23;
  v24 = [*&v1[v2] topAnchor];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = [v24 constraintEqualToAnchor_];
  *(v18 + 40) = v28;
  v29 = [*&v1[v2] bottomAnchor];
  v30 = [v1 view];
  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 bottomAnchor];

  v34 = [v29 constraintEqualToAnchor_];
  *(v18 + 48) = v34;
  sub_24E69A5C4(0, &unk_27F243860);
  v35 = sub_24F92B588();

  [v32 activateConstraints_];

  v36 = [*&v1[v2] trailingAnchor];
  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 trailingAnchor];

    v40 = [v36 constraintEqualToAnchor_];
    [v40 setActive_];

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_24F43A26C(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CNContactQuickActionsViewController(0);
  objc_msgSendSuper2(&v8, sel_viewWillDisappear_, a1 & 1);
  v3 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC;
  v4 = *&v1[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC];
  if (v4)
  {
    v5 = v4;
    if ([v5 isBeingPresented])
    {
      [v5 dismissViewControllerAnimated:a1 & 1 completion:0];
      v6 = *&v1[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      [v7 disambiguationViewControllerDismissedExternally_];

      v5 = *&v1[v3];
      *&v1[v3] = 0;
    }
  }
}

uint64_t sub_24F43A49C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_quickActions);
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    v9 = v5 + 32;
    while (v8 < *(v5 + 16))
    {
      sub_24F43C27C(v9, v38);
      sub_24F43C27C(v38, v41);
      if (v43[24])
      {
        v10 = v41[0];

        v31 = 0x5F6D6F74737563;
        v32 = 0xE700000000000000;
        MEMORY[0x253050C20](v10, *(&v10 + 1));

        v11 = 0xE700000000000000;
        sub_24E601704(&v42, &qword_27F2169E8);
        v12 = 0x5F6D6F74737563;
      }

      else
      {

        v12 = sub_24F92B0D8();
        v11 = v13;
      }

      if (v12 == a1 && v11 == a2)
      {
        goto LABEL_14;
      }

      v15 = sub_24F92CE08();

      if (v15)
      {
        goto LABEL_15;
      }

      ++v8;
      result = sub_24F43C24C(v38);
      v9 += 80;
      if (v6 == v8)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_13:

  __break(1u);
LABEL_14:

LABEL_15:

  v42 = v39;
  *v43 = *v40;
  *&v43[9] = *&v40[9];
  v41[0] = v38[0];
  v41[1] = v38[1];
  sub_24F43C27C(v41, v38);
  if (v40[24])
  {
    v17 = *(&v38[0] + 1);
    v16 = *&v38[0];

    sub_24E601704(&v39, &qword_27F2169E8);
  }

  else
  {
    result = sub_24F43C24C(v38);
    v18 = *&v30[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller];
    if (!v18)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19 = v18;
    sub_24F4380EC();
    v20 = sub_24F92B098();

    v21 = [v19 defaultTitleForActionType_];

    v16 = sub_24F92B0D8();
    v17 = v22;
  }

  sub_24F43C27C(v41, v38);
  v36 = v16;
  v37 = v17;
  sub_24E600AEC();
  v23 = sub_24F92C558();
  v25 = v24;

  sub_24F43C27C(v41, &v31);
  if (v35[40])
  {

    v26 = v33;
    v27 = v34;
    sub_24E601704(v35, &qword_27F2169E8);
  }

  else
  {
    v26 = v32;
    v27 = v33;
  }

  sub_24F43C2B4(v30, v38, v23, v25, v26, v27, 1);
  v29 = v28;
  sub_24F43C24C(v41);
  return v29;
}

void sub_24F43A838(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F921B58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_lastTimestamp;
  v13 = *(v2 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_lastTimestamp);
  sub_24F91F638();
  sub_24F91F5E8();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  *(v2 + v12) = v15;
  if (v15 - v13 > 0.5)
  {
    sub_24F43C27C(a1, v26);
    if (v30)
    {

      v24[0] = v27;
      v24[1] = v28;
      v25 = v29;
      v16 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_performAction;
      swift_beginAccess();
      sub_24E60169C(v2 + v16, v23, &unk_27F212740);
      if (v23[3])
      {
        sub_24E615E00(v23, v22);
        sub_24E601704(v23, &unk_27F212740);
        __swift_project_boxed_opaque_existential_1(v22, v22[3]);
        v17 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_metricsFieldsContext;
        swift_beginAccess();
        (*(v5 + 16))(v7, v2 + v17, v4);
        sub_24F9218A8();
        (*(v5 + 8))(v7, v4);
        sub_24E601704(v24, &qword_27F2169E8);
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        sub_24E601704(v24, &qword_27F2169E8);
        sub_24E601704(v23, &unk_27F212740);
      }
    }

    else
    {
      v18 = *(v2 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller);
      if (v18)
      {
        v19 = v26[0];
        v20 = v18;

        [v20 executeTapBehaviorForActionType_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_24F43AB8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_lastTimestamp;
  v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_lastTimestamp);
  sub_24F91F638();
  sub_24F91F5E8();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *(v2 + v8) = v11;
  if (v11 - v9 > 0.5)
  {
    sub_24F43C27C(a1, v15);
    if (v16[40])
    {

      sub_24E601704(v16, &qword_27F2169E8);
    }

    else
    {
      v12 = *(v2 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller);
      if (v12)
      {
        v13 = v15[0];
        v14 = v12;

        [v14 executeLongPressBehaviorForActionType_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void *sub_24F43AD24(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_stack) arrangedSubviews];
  sub_24E69A5C4(0, &qword_27F220378);
  v6 = sub_24F92B5A8();

  v7 = sub_24E9E25A8(v6);

  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
    {
      v10 = 0;
      v11 = v7 & 0xC000000000000001;
      v29 = v7 & 0xC000000000000001;
      while (1)
      {
        if (v11)
        {
          v12 = MEMORY[0x253052270](v10, v7);
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            goto LABEL_23;
          }

          v12 = *(v7 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        sub_24F43C27C(v12 + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_action, v31);
        v30 = v13;
        if (v32[40])
        {
          v15 = v7;
          v16 = a1;
          v17 = a2;
          v18 = i;
          v19 = v8;
          v21 = v31[0];
          v20 = v31[1];

          v22 = v21;
          v8 = v19;
          i = v18;
          a2 = v17;
          a1 = v16;
          v7 = v15;
          v11 = v29;
          MEMORY[0x253050C20](v22, v20);

          v23 = 0xE700000000000000;
          sub_24E601704(v32, &qword_27F2169E8);
          v24 = 0x5F6D6F74737563;
        }

        else
        {

          v24 = sub_24F92B0D8();
          v23 = v25;
        }

        if (v24 == a1 && v23 == a2)
        {

LABEL_21:

          return v30;
        }

        v27 = sub_24F92CE08();

        if (v27)
        {
          goto LABEL_21;
        }

        ++v10;
        if (v14 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
  }

  return 0;
}

uint64_t sub_24F43B0D8()
{
  result = sub_24F921B58();
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

void sub_24F43B34C()
{
  v1 = sub_24F91F6B8();
  v75 = *(v1 - 8);
  v76 = v1;
  MEMORY[0x28223BE20](v1);
  v74 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v73 - v4;
  v6 = sub_24F928AD8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - v11;
  *&v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_24F928A98();
  v13 = swift_allocObject();
  v77 = v0;
  *(v13 + 16) = v0;
  v14 = type metadata accessor for LocalAction();
  v15 = swift_allocObject();
  v16 = (v15 + OBJC_IVAR____TtC12GameStoreKit11LocalAction_handler);
  *v16 = sub_24F43C1B0;
  v16[1] = v13;
  sub_24E60169C(&v82, v81, &qword_27F235830);
  v17 = *(v7 + 16);
  v78 = v9;
  v17(v9, v12, v6);
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v79 = v5;
  v19(v5, 1, 1, v18);
  v80 = v15;
  v20 = (v15 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  sub_24E60169C(v81, &v95, &qword_27F235830);
  if (*(&v96 + 1))
  {
    v105 = v95;
    v106 = v96;
    *&v107 = v97;
    v21 = v77;
    v22 = v77;
  }

  else
  {
    v21 = v77;
    v23 = v77;
    v24 = v74;
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v75 + 8))(v24, v76);
    v103 = v25;
    v104 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v95, &qword_27F235830);
  }

  sub_24E601704(v81, &qword_27F235830);
  (*(v7 + 8))(v12, v6);
  sub_24E601704(&v82, &qword_27F235830);
  v28 = v79;
  v29 = v80;
  v30 = v80 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v31 = v106;
  *v30 = v105;
  *(v30 + 16) = v31;
  *(v30 + 32) = v107;
  sub_24E6009C8(v28, v29 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  (*(v7 + 32))(v29 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v78, v6);
  *(&v96 + 1) = v14;
  v32 = sub_24F43D414(&qword_27F23A788, type metadata accessor for LocalAction);
  *&v95 = v29;
  v33 = *&v21[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_title];
  v34 = *&v21[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_title + 8];
  v35 = *&v21[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_systemImageName];
  v36 = *&v21[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_systemImageName + 8];
  v97 = v32;
  v98 = v33;
  v99 = v34;
  v100 = v35;
  v101 = v36;
  v102 = 1;

  sub_24F927618();
  sub_24F9242E8();
  sub_24F2AC180(&v95, v81);
  v81[5] = v105;
  v81[6] = v106;
  v81[9] = v109;
  v81[10] = v110;
  v81[7] = v107;
  v81[8] = v108;
  v86 = v81[4];
  v87 = v105;
  v88 = v106;
  v89 = v107;
  v92 = v110;
  v93 = v111;
  v90 = v108;
  v91 = v109;
  v84 = v81[2];
  v85 = v81[3];
  v83 = v81[1];
  v81[11] = v111;
  v82 = v81[0];
  v94 = 0;
  v37 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F243850));
  v38 = sub_24F924D28();
  v39 = OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_rootView;
  [*&v21[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_rootView] removeFromSuperview];
  v40 = v38;
  v41 = [v40 view];
  v42 = *&v21[v39];
  *&v21[v39] = v41;

  v43 = [v40 view];
  if (!v43)
  {
    __break(1u);
    goto LABEL_13;
  }

  v44 = v43;
  v45 = v21;
  v46 = [objc_opt_self() clearColor];
  [v44 setBackgroundColor_];

  v47 = [v40 view];
  if (!v47)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v48 = v47;
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];

  v49 = [v40 view];
  if (!v49)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v50 = v49;
  [v21 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_24F9BA030;
  v52 = [v40 view];
  if (!v52)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v53 = v52;
  v54 = [v52 topAnchor];

  v55 = [v45 topAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v51 + 32) = v56;
  v57 = [v40 view];
  if (!v57)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v58 = v57;
  v59 = [v57 bottomAnchor];

  v60 = [v45 bottomAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v51 + 40) = v61;
  v62 = [v40 view];
  if (!v62)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v63 = v62;
  v64 = [v62 leadingAnchor];

  v65 = [v45 leadingAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(v51 + 48) = v66;
  v67 = [v40 view];

  if (v67)
  {
    v68 = objc_opt_self();
    v69 = [v67 trailingAnchor];

    v70 = [v45 trailingAnchor];
    v71 = [v69 constraintEqualToAnchor_];

    *(v51 + 56) = v71;
    sub_24E69A5C4(0, &unk_27F243860);
    v72 = sub_24F92B588();

    [v68 activateConstraints_];

    sub_24F43C1F8(&v95);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_24F43BD3C(void *a1, uint64_t a2, void *a3, void (*a4)(char *))
{
  v8 = a3;
  v6 = a1;
  if ([v8 state] == 3)
  {
    __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller], *&v6[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller + 24]);
    a4(&v6[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_action]);
    v7 = v6;
  }

  else
  {
    v7 = v8;
    v8 = v6;
  }
}

id sub_24F43BE74(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24F43BF60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F43BF9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_24F43BFEC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

unint64_t sub_24F43C028()
{
  result = qword_27F243810;
  if (!qword_27F243810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243810);
  }

  return result;
}

unint64_t sub_24F43C07C()
{
  result = qword_27F243820;
  if (!qword_27F243820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243820);
  }

  return result;
}

unint64_t sub_24F43C0D0()
{
  result = qword_27F243838;
  if (!qword_27F243838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243838);
  }

  return result;
}

unint64_t sub_24F43C124()
{
  result = qword_27F243840;
  if (!qword_27F243840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243840);
  }

  return result;
}

uint64_t sub_24F43C178()
{

  return swift_deallocObject();
}

void sub_24F43C1B0()
{
  v1 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller), *(v1 + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller + 24));
  sub_24F43A838(v1 + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_action);
}

void sub_24F43C2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  HIDWORD(v35) = a7;
  v13 = type metadata accessor for CNContactQuickActionsViewController(0);
  v38[3] = v13;
  v38[4] = &off_2862215D8;
  v38[0] = a1;
  v14 = type metadata accessor for QuickActionButtonView();
  v15 = objc_allocWithZone(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v38, v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v37[3] = v13;
  v37[4] = &off_2862215D8;
  v22 = a2;
  v37[0] = v21;
  *&v15[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_rootView] = 0;
  sub_24E615E00(v37, &v15[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller]);
  sub_24F43C27C(a2, &v15[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_action]);
  v23 = &v15[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_title];
  *v23 = a3;
  v23[1] = a4;
  v24 = &v15[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_systemImageName];
  *v24 = a5;
  v24[1] = a6;
  v15[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_enabled] = BYTE4(v35);
  v36.receiver = v15;
  v36.super_class = v14;
  v25 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24F43B34C();
  v26 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v25 action:sel_tappedWithSender_];
  v27 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v25 action:sel_longPressedWithSender_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9C29E0;
  *(inited + 32) = v26;
  *(inited + 40) = v27;
  v29 = v26;
  v30 = v27;
  if ((inited & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x253052270](0, inited);
  }

  else
  {
    v31 = v29;
  }

  v32 = v31;
  [v25 addGestureRecognizer_];

  if ((inited & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x253052270](1, inited);
LABEL_7:
    v34 = v33;

    [v25 addGestureRecognizer_];

    sub_24F43C24C(v22);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v33 = *(inited + 40);
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_24F43C5C0()
{
  v0 = sub_24F92CB88();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24F43C60C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

void sub_24F43C724()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_performAction;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC) = 0;
  v2 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_stack;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *(v0 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_lastTimestamp) = 0;
  sub_24F92CA88();
  __break(1u);
}

void sub_24F43C7E4(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = sub_24F43AD24(a2, a3);
  v5 = [a1 popoverPresentationController];
  if (v5)
  {
    v6 = v5;
    [v5 setSourceView_];
  }

  v7 = [a1 popoverPresentationController];
  if (v7)
  {
    v8 = v7;
    if (v15)
    {
      [v15 bounds];
    }

    else
    {
      v9 = 0.0;
      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
    }

    [v8 setSourceRect_];
  }

  v13 = *&v3[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC];
  *&v3[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC] = a1;
  v14 = a1;

  [v3 presentViewController:v14 animated:1 completion:0];
}

unint64_t sub_24F43C940()
{
  result = qword_27F243870;
  if (!qword_27F243870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243870);
  }

  return result;
}

unint64_t sub_24F43C998()
{
  result = qword_27F243878;
  if (!qword_27F243878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243878);
  }

  return result;
}

unint64_t sub_24F43C9F0()
{
  result = qword_27F243880;
  if (!qword_27F243880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243880);
  }

  return result;
}

unint64_t sub_24F43CA48()
{
  result = qword_27F243888;
  if (!qword_27F243888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243888);
  }

  return result;
}

unint64_t sub_24F43CAA0()
{
  result = qword_27F243890;
  if (!qword_27F243890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243890);
  }

  return result;
}

unint64_t sub_24F43CAF8()
{
  result = qword_27F243898;
  if (!qword_27F243898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243898);
  }

  return result;
}

unint64_t sub_24F43CB50()
{
  result = qword_27F2438A0;
  if (!qword_27F2438A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2438A0);
  }

  return result;
}

unint64_t sub_24F43CBA8()
{
  result = qword_27F2438A8;
  if (!qword_27F2438A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2438A8);
  }

  return result;
}

unint64_t sub_24F43CC00()
{
  result = qword_27F2438B0;
  if (!qword_27F2438B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2438B0);
  }

  return result;
}

unint64_t sub_24F43CC58()
{
  result = qword_27F2438B8;
  if (!qword_27F2438B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2438B8);
  }

  return result;
}

unint64_t sub_24F43CCAC()
{
  result = qword_27F2438C0;
  if (!qword_27F2438C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2438C0);
  }

  return result;
}

uint64_t sub_24F43CD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
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
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24F43CDF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
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
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24F43CEE4()
{
  sub_24EC3FF44(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E6D74E4();
    if (v1 <= 0x3F)
    {
      sub_24F43CFCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F43CFCC()
{
  if (!qword_27F21D020)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21D020);
    }
  }
}

uint64_t sub_24F43D06C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F921B58();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_24F43D12C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F921B58();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F43D1D0()
{
  sub_24E69A5C4(319, &qword_27F223450);
  if (v0 <= 0x3F)
  {
    sub_24F43CFCC();
    if (v1 <= 0x3F)
    {
      sub_24EC3FF44(319, &qword_27F2438F8, &unk_27F243900, &unk_24F9F7D10, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24F921B58();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F43D2CC()
{
  result = qword_27F243910;
  if (!qword_27F243910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2438E0);
    sub_24F43D358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243910);
  }

  return result;
}

unint64_t sub_24F43D358()
{
  result = qword_27F243918;
  if (!qword_27F243918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2438D8);
    sub_24F43D414(&qword_27F243920, type metadata accessor for CNContactQuickActionsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243918);
  }

  return result;
}

uint64_t sub_24F43D414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F43D4A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212740);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F43D514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212740);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_24F43D594(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243968);
  sub_24E602068(&qword_27F243970, &qword_27F243968);
  sub_24F922CB8();
  *(v2 + *((*v5 & *v2) + 0x78)) = 0;
  v6 = v2 + *((*v5 & *v2) + 0x80);
  *v6 = 0;
  v6[8] = 1;
  *(v2 + *((*v5 & *v2) + 0x88)) = 0;
  *(v2 + *((*v5 & *v2) + 0xA0)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243978);
  v7 = swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243980);
  sub_24E602068(&qword_27F243988, &qword_27F243980);
  sub_24F922CB8();
  *(v7 + 16) = a1;
  *(v2 + *((*v5 & *v2) + 0x70)) = v7;
  *(v2 + *((*v5 & *v2) + 0x60)) = MEMORY[0x277D84F90];
  v8 = v2 + *((*v5 & *v2) + 0x90);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  *(v8 + 2) = *(a2 + 32);
  v8[48] = *(a2 + 48);
  *(v2 + *((*v5 & *v2) + 0x98)) = *a2;
  *(v2 + *((*v5 & *v2) + 0xA8)) = 1;
  sub_24F43FD7C(a2, v26);
  v25.receiver = v2;
  v25.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243960);
  v10 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 displayLinkWithTarget:v12 selector:sel_animateScrollWithDisplayLink_];
  v14 = *((*v5 & *v12) + 0x78);
  v15 = *(v12 + v14);
  *(v12 + v14) = v13;

  if (v13)
  {
    [v13 setPreferredFramesPerSecond_];
    sub_24F43DDE4();
    v16 = *(v12 + v14);
    if (v16)
    {
      v17 = v16;
      sub_24F43FDD8(a2);
      v18 = [objc_opt_self() mainRunLoop];
      [v17 addToRunLoop:v18 forMode:*MEMORY[0x277CBE738]];

      v19 = v12;
      [v19 setClipsToBounds_];
      v20 = objc_opt_self();
      v21 = [v20 defaultCenter];
      [v21 addObserver:v19 selector:sel_lowMemoryWarning_ name:*MEMORY[0x277D76670] object:0];

      v22 = [v20 defaultCenter];
      [v22 addObserver:v19 selector:sel_reduceMotionStatusDidChange_ name:*MEMORY[0x277D764C0] object:0];

      v23 = [v20 defaultCenter];
      [v23 addObserver:v19 selector:sel_willEnterForeground_ name:*MEMORY[0x277D76758] object:0];

      v24 = [v20 defaultCenter];
      [v24 addObserver:v19 selector:sel_didEnterBackground_ name:*MEMORY[0x277D76660] object:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24F43DACC()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & v2) + 0xA8);
  swift_beginAccess();
  if (*(v1 + v4) == 1)
  {
    v5 = [v1 window];
    if (v5)
    {

      if (([v1 isHidden] & 1) == 0 && !UIAccessibilityIsReduceMotionEnabled())
      {
        return sub_24F43E3EC();
      }
    }
  }

  v6 = *((*v3 & *v1) + 0x78);
  result = *(v1 + v6);
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  result = [result isPaused];
  if (result)
  {
    return result;
  }

  result = *(v1 + v6);
  if (!result)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  [result setPaused_];
  [v1 bounds];
  Width = CGRectGetWidth(v28);
  v9 = *((*v3 & *v1) + 0x60);
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 >> 62)
  {
    goto LABEL_24;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v12 = *v3;
  v26 = *((*v3 & *v1) + 0x88);
  v3 = *((*v3 & *v1) + 0x90);
  v13 = *((v12 & *v1) + 0xA0);

  v25 = v13;
  swift_beginAccess();
  if (v11)
  {
    v14 = 0;
    v22 = v3 + v1;
    v23 = v10 & 0xFFFFFFFFFFFFFF8;
    v24 = v10 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v3 = MEMORY[0x253052270](v14, v10);
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_19:
          __break(1u);
        }
      }

      else
      {
        if (v14 >= *(v23 + 16))
        {
          __break(1u);
LABEL_24:
          v11 = sub_24F92C738();
          goto LABEL_10;
        }

        v3 = *(v10 + 8 * v14 + 32);

        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_19;
        }
      }

      v16 = *(v1 + v26);
      v17 = v10;
      v18 = v22[48];
      v27 = *(v1 + v25);
      v19 = [v1 traitCollection];
      v20 = [v19 layoutDirection];

      v21 = ((v14 & 1) == 0) & v18;
      v10 = v17;
      sub_24F43ED68(v1, v21, 1, 1, v27, v20, v16, Width);

      ++v14;
    }

    while (v15 != v11);
  }
}

uint64_t sub_24F43DDE4()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & v2) + 0x60);
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  if (v6 >> 62)
  {
    goto LABEL_14;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = v7 - 2;
  v8 = v7 == 2;
  if (v7 > 2)
  {
    while (1)
    {
      swift_beginAccess();
      v3 = *(v1 + v4);
      if (v3 >> 62)
      {
        if (!sub_24F92C738())
        {
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }
      }

      else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v1 + v4) = v3;
      if (v3 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v3 = sub_24ECDE964(v3);
      }

      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11 - 1;
        *(v1 + v4) = v3;
        swift_endAccess();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243950);
        sub_24F922CA8();
        swift_endAccess();

        if (!--v9)
        {
          return result;
        }
      }

      else
      {
LABEL_13:
        __break(1u);
LABEL_14:
        result = sub_24F92C738();
        v7 = result;
        v9 = result - 2;
        v8 = result == 2;
        if (result <= 2)
        {
          break;
        }
      }
    }
  }

  if (!v8)
  {
    v12 = (v1 + *((*v3 & *v1) + 0x98));
    result = swift_beginAccess();
    v13 = (v1 + *((*v3 & *v1) + 0x90));
    v14 = (v12[1] + v13[2]) * v7;
    while (1)
    {
      v15 = *(*(v13 + 5) + 16);
      if (!v15)
      {
        break;
      }

      if (v7 % v15 < 0)
      {
        goto LABEL_25;
      }

      MEMORY[0x28223BE20](result);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243950);
      sub_24F922C98();
      swift_endAccess();
      swift_beginAccess();

      MEMORY[0x253050F00](v16);
      if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      ++v7;
      sub_24F92B638();
      swift_endAccess();

      v14 = v14 + v12[1] + v13[2];
      if (v7 == 2)
      {
        return result;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24F43E188()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243950);
  sub_24F922C88();
  swift_endAccess();
  v3 = *((*v2 & *v0) + 0x60);
  swift_beginAccess();
  v4 = *(v3 + v0);
  v18 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {

    v6 = MEMORY[0x277D84F90];
    v17 = v3;
    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x253052270](v7, v4);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v6 = v18;
            break;
          }
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v8 = *(v4 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_12;
          }
        }

        swift_beginAccess();
        v10 = *(v8 + 72);

        sub_24EA0C2F8(v10);
        ++v7;
        if (v9 == i)
        {
          goto LABEL_13;
        }
      }
    }

    v11 = *(v6 + 16);
    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = (v6 + 40);
    v3 = &selRef_systemBackgroundColor;
    while (v12 < *(v6 + 16))
    {
      ++v12;
      v14 = *v13;
      v13 += 2;
      v4 = v14;
      v15 = [v4 layer];
      [v15 removeAllAnimations];

      [v4 removeFromSuperview];
      if (v11 == v12)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_18:

  *(v17 + v1) = MEMORY[0x277D84F90];

  return sub_24F43DDE4();
}

id sub_24F43E3EC()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  result = *(v0 + v2);
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  result = [result isPaused];
  if (!result)
  {
    return result;
  }

  v4 = CACurrentMediaTime();
  v5 = (v25 + *((*v1 & *v25) + 0x80));
  if ((v5[1] & 1) == 0 && v4 - *v5 > 0.015)
  {
    *v5 = v4;
    *(v5 + 8) = 0;
  }

  [v25 bounds];
  Width = CGRectGetWidth(v27);
  v7 = *((*v1 & *v25) + 0x60);
  swift_beginAccess();
  v8 = *(v25 + v7);
  if (v8 >> 62)
  {
LABEL_22:
    v9 = sub_24F92C738();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = *((*v1 & *v25) + 0x88);
  v10 = *((*v1 & *v25) + 0x90);
  v11 = *((*v1 & *v25) + 0xA0);

  v23 = v11;
  swift_beginAccess();
  if (v9)
  {
    v1 = 0;
    v21 = v8 & 0xFFFFFFFFFFFFFF8;
    v22 = v8 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        MEMORY[0x253052270](v1, v8);
        v12 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v1 >= *(v21 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v12 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_17;
        }
      }

      v13 = *(v25 + v24);
      v14 = v9;
      v15 = v8;
      v16 = *(v25 + v10 + 48);
      v26 = *(v25 + v23);
      v17 = [v25 traitCollection];
      v18 = [v17 layoutDirection];

      v19 = ((v1 & 1) == 0) & v16;
      v8 = v15;
      v9 = v14;
      sub_24F43ED68(v25, v19, 1, 1, v26, v18, v13, Width);

      v1 = (v1 + 1);
    }

    while (v12 != v14);
  }

  result = *(v25 + v20);
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  return [result setPaused_];
}

uint64_t sub_24F43E6F0(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = MEMORY[0x277D85000];
  v7 = (a1 + *((*MEMORY[0x277D85000] & *a1) + 0x98));
  swift_beginAccess();
  if (v4 != *v7 || v5 != v7[1])
  {
    *v7 = v4;
    v7[1] = v5;
    v8 = *(*(a1 + *((*v6 & *a1) + 0x70)) + 16);
    swift_beginAccess();
    *(v8 + 32) = v4;
    *(v8 + 40) = v5;
    sub_24F43E188();
  }

  v9 = *(a1 + *((*v6 & *a1) + 0x70));
  v10 = *(v9 + 16);
  v17 = *(v2 + 16);
  *(v10 + 24) = v17;

  sub_24E60169C(&v17, v15, &qword_27F243938);

  v11 = *(v9 + 16);
  v16 = *(v2 + 24);
  *(v11 + 48) = v16;

  sub_24E60169C(&v16, v15, &qword_27F243940);

  v12 = *(v2 + 32);
  v13 = *((*v6 & *a1) + 0xA8);
  swift_beginAccess();
  *(a1 + v13) = v12;
  return sub_24F43DACC();
}

void sub_24F43E8BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  type metadata accessor for ArcadeFooterRiverViewDataSource();
  v5 = swift_allocObject();
  v5[4] = v1;
  v5[5] = v2;
  v5[2] = 2;
  v5[3] = v3;
  v5[6] = v4;
  v11[0] = v1;
  v11[1] = v2;
  __asm { FMOV            V0.2D, #10.0 }

  v12 = _Q0;
  v13 = 0x4014000000000000;
  v14 = &unk_2861C12B8;
  v15 = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243960));

  sub_24F43D594(v5, v11);
}

id sub_24F43E980(void *a1)
{
  result = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x78));
  if (result)
  {
    return [result invalidate];
  }

  __break(1u);
  return result;
}

uint64_t sub_24F43E9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F43FE2C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24F43EA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F43FE2C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24F43EA88()
{
  sub_24F43FE2C();
  sub_24F924DC8();
  __break(1u);
}

unint64_t sub_24F43EAB4()
{
  result = qword_27F243930;
  if (!qword_27F243930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243930);
  }

  return result;
}

void sub_24F43EB08(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  v3 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  v4 = v2[v3];
  v2[v3] = 1;
  v8 = v4;
  sub_24F359430(&v8);
  if (qword_27F210430 != -1)
  {
    swift_once();
  }

  v5 = qword_27F22BEB0;
  v6 = *&v2[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor];
  *&v2[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor] = qword_27F22BEB0;
  sub_24E77ACC8();
  v7 = v5;
  if ((sub_24F92C408() & 1) == 0)
  {
    sub_24F357100();
  }

  *a1 = v2;
}

void *sub_24F43EC30@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v7 = MEMORY[0x277D85000];
  v8 = a2 - a3;
  if (__OFSUB__(a2, a3))
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = *(result + *((*MEMORY[0x277D85000] & *result) + 0x70));
    v13 = (result + *((*MEMORY[0x277D85000] & *result) + 0x98));
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v11 + *((*v7 & *v11) + 0x90) + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243958);
    v17 = swift_allocObject();
    *(v17 + 72) = sub_24E611C38(MEMORY[0x277D84F90]);
    *(v17 + 56) = a5;
    *(v17 + 64) = a6;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    *(v17 + 48) = v16;
    *(v17 + 16) = v12;
    *(v17 + 24) = v8;
    *a4 = v17;
  }

  return result;
}

void sub_24F43ED68(void *a1, int a2, int a3, int a4, int a5, uint64_t a6, double a7, double a8)
{
  v9 = v8;
  v128 = a6;
  LODWORD(v10) = a5;
  LODWORD(v11) = a4;
  v110 = a3;
  LODWORD(v133) = a2;
  v111 = a1;
  v127 = sub_24F92CDB8();
  v14 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_24F927D88();
  isUniquelyReferenced_nonNull_native = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_24F927DC8();
  v18 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v9 + 16);
  v21 = *(v20[2] + 24);
  if (v21 >> 62)
  {
    goto LABEL_116;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v23 = i < 1 || a8 <= COERCE_DOUBLE(1);
    v132 = v20;
    if (!v23)
    {
      break;
    }

    v14 = 1;
    swift_beginAccess();
    v24 = v20;
    v25 = *(v9 + 72);
    v27 = *(v25 + 64);
    v20 = (v25 + 64);
    v26 = v27;
    v28 = 1 << *(*(v9 + 72) + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v10 = v29 & v26;
    v30 = *(*v24 + 104);
    v31 = (v28 + 63) >> 6;
    v133 = *(v9 + 72);

    isUniquelyReferenced_nonNull_native = 0;
    while (v10)
    {
      v32 = isUniquelyReferenced_nonNull_native;
LABEL_16:
      v33 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v11 = v132;
      *&v137[0] = *(*(v133 + 56) + ((v32 << 9) | (8 * v33)));
      v34 = *&v137[0];
      swift_beginAccess();
      v18 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243948);
      v14 = v11 + v30;
      sub_24F922CA8();
      swift_endAccess();
    }

    while (1)
    {
      v32 = isUniquelyReferenced_nonNull_native + 1;
      if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
      {
        break;
      }

      if (v32 >= v31)
      {

        *(v9 + 72) = MEMORY[0x277D84F98];

        return;
      }

      v10 = v20[v32];
      ++isUniquelyReferenced_nonNull_native;
      if (v10)
      {
        isUniquelyReferenced_nonNull_native = v32;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    ;
  }

  v35 = *(v9 + 24);
  v36 = (i >> 1) * v35;
  if (((i >> 1) * v35) >> 64 != v36 >> 63)
  {
    __break(1u);
    goto LABEL_118;
  }

  v37 = *(v9 + 32) + *(v9 + 48);
  v38 = a7 - *(v9 + 56);
  v39 = v38 / v37;
  if (COERCE__INT64(fabs(v38 / v37)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v107 = v10;
  v108 = v11;
  v120 = i;
  v124 = v36 % i;
  v40 = v39;
  v41 = fmod(v38, v37);
  v42 = *v20;
  v114 = (isUniquelyReferenced_nonNull_native + 8);
  v115 = v136;
  v113 = (v18 + 8);
  v123 = (v14 + 104);
  v125 = *(v42 + 104);
  v122 = (v14 + 8);
  v43 = v41 + a8;
  isUniquelyReferenced_nonNull_native = 0x27F23F000;
  v44 = -v41;
  if (v133)
  {
    v45 = -v37;
  }

  else
  {
    v45 = v37;
  }

  if (v133)
  {
    v46 = -v37;
  }

  else
  {
    v46 = v37 + a8;
  }

  if (v133)
  {
    a7 = v43;
  }

  else
  {
    a7 = v44;
  }

  v121 = *MEMORY[0x277D84688];
  v112 = 1107296256;
  v109 = v40;
  while (1)
  {
    v49 = a7 <= v46;
    if (v133)
    {
      v49 = v46 <= a7;
    }

    if (!v49)
    {
      break;
    }

    swift_beginAccess();
    v50 = *(v9 + 72);
    if (!*(v50 + 16) || (v51 = sub_24E7728CC(v40), (v52 & 1) == 0))
    {
      swift_endAccess();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243948);
      sub_24F922C98();
      swift_endAccess();
      v18 = v139[0];
      v20 = v20[2];
      v55 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_setImageDisablesAnimations;
      swift_beginAccess();
      if (*(v18 + v55) == 1)
      {
        v56 = *(v18 + *(isUniquelyReferenced_nonNull_native + 4040));
        v57 = v18;

        v58 = [v56 layer];
        [v58 removeAllAnimations];
      }

      else
      {
        v59 = v18;
      }

      v60 = *(v18 + *(isUniquelyReferenced_nonNull_native + 4040));
      [v60 setImage_];
      [v60 setHidden_];
      sub_24F357100();
      v61 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
      swift_beginAccess();
      if (((*(v18 + v61) - 2) & 0xFD) == 0)
      {
        if (sub_24F3595CC())
        {
          if (qword_27F211130 != -1)
          {
            swift_once();
          }

          v71 = qword_27F23FFB8;
          v11 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
          swift_beginAccess();
          v10 = *(v18 + v11);
          *(v18 + v11) = v71;
          v72 = v71;

          sub_24E9F322C();
          v62 = v20[6];
          if (!v62)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v73 = [objc_opt_self() clearColor];
          v74 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
          swift_beginAccess();
          v10 = *(v18 + v74);
          *(v18 + v74) = v73;
          v11 = v73;

          sub_24E9F322C();
          v62 = v20[6];
          if (!v62)
          {
            goto LABEL_56;
          }
        }

LABEL_48:

        v135[0] = sub_24F92AFE8();
        sub_24F92C7F8();
        v130 = *(v62 + 32);
        sub_24E65864C(v139, v137);
        v63 = swift_allocObject();
        v64 = v137[1];
        *(v63 + 24) = v137[0];
        *(v63 + 16) = v62;
        *(v63 + 40) = v64;
        *(v63 + 56) = v138;
        *(v63 + 64) = 1;
        v136[2] = sub_24EAFE234;
        v136[3] = v63;
        v135[0] = MEMORY[0x277D85DD0];
        v135[1] = v112;
        v136[0] = sub_24EAF8248;
        v136[1] = &block_descriptor_152;
        v65 = _Block_copy(v135);
        v129 = v20;
        v20 = v65;

        v131 = v40;
        v66 = v116;
        sub_24F927DA8();
        v134 = MEMORY[0x277D84F90];
        LODWORD(v10) = sub_24E858250();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
        sub_24E602068(&qword_27F222940, &qword_27F222310);
        v67 = v118;
        v11 = v9;
        v68 = v119;
        sub_24F92C6A8();
        MEMORY[0x2530518B0](0, v66, v67, v20);
        _Block_release(v20);

        v69 = v68;
        v9 = v11;
        (*v114)(v67, v69);
        v70 = v66;
        v40 = v131;
        (*v113)(v70, v117);
        sub_24E6585F8(v139);

        goto LABEL_56;
      }

      v62 = v20[6];
      if (v62)
      {
        goto LABEL_48;
      }

LABEL_56:

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139[0] = *(v9 + 72);
      v14 = v139[0];
      *(v9 + 72) = 0x8000000000000000;
      v75 = sub_24E7728CC(v40);
      v77 = *(v14 + 16);
      v78 = (v76 & 1) == 0;
      v48 = __OFADD__(v77, v78);
      v79 = v77 + v78;
      if (v48)
      {
        goto LABEL_110;
      }

      LODWORD(v11) = v76;
      if (*(v14 + 24) >= v79)
      {
        v20 = v132;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_61;
        }

        v10 = v75;
        sub_24E8B796C();
        v75 = v10;
        v14 = v139[0];
        if ((v11 & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_62:
        v81 = *(v14 + 56);
        v82 = *(v81 + 8 * v75);
        *(v81 + 8 * v75) = v18;
      }

      else
      {
        sub_24E8AAB08(v79, isUniquelyReferenced_nonNull_native);
        v75 = sub_24E7728CC(v40);
        v20 = v132;
        if ((v11 & 1) != (v80 & 1))
        {
          goto LABEL_122;
        }

LABEL_61:
        v14 = v139[0];
        if (v11)
        {
          goto LABEL_62;
        }

LABEL_64:
        *(v14 + 8 * (v75 >> 6) + 64) |= 1 << v75;
        *(*(v14 + 48) + 8 * v75) = v40;
        *(*(v14 + 56) + 8 * v75) = v18;
        v83 = *(v14 + 16);
        v48 = __OFADD__(v83, 1);
        v84 = v83 + 1;
        if (v48)
        {
          goto LABEL_113;
        }

        *(v14 + 16) = v84;
      }

      *(v9 + 72) = v14;
      swift_endAccess();
      v11 = &v40[v124];
      if (__OFADD__(v124, v40))
      {
        goto LABEL_111;
      }

      v14 = v20[2];
      v85 = *(v14 + 24);
      if (v85 >> 62)
      {
        v86 = sub_24F92C738();
      }

      else
      {
        v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      isUniquelyReferenced_nonNull_native = v11 % v120;
      if (v11 % v120 < v86)
      {
        v11 = *(v14 + 24);
        if ((v11 & 0xC000000000000001) != 0)
        {

          v87 = MEMORY[0x253052270](isUniquelyReferenced_nonNull_native, v11);
        }

        else
        {
          if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
          {
            goto LABEL_114;
          }

          if (isUniquelyReferenced_nonNull_native >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_115;
          }

          v87 = *(v11 + 8 * isUniquelyReferenced_nonNull_native + 32);
        }

        v88 = *(v87 + 16);

        v11 = v20[2];
        swift_beginAccess();
        v89 = *(v11 + 32);
        v90 = *(v11 + 40);

        v91 = Artwork.config(_:mode:prefersLayeredImage:)([v18 contentMode], 0, v89, v90);
        sub_24F859894(v88, v91);
        v14 = *(v11 + 48);
        if (v14)
        {

          LODWORD(v10) = 1;
          sub_24F73FB34(v91, 1);

LABEL_78:
          isUniquelyReferenced_nonNull_native = &qword_27F23F000;
          goto LABEL_79;
        }
      }

      LODWORD(v10) = 1;
      goto LABEL_78;
    }

    v14 = *(*(v50 + 56) + 8 * v51);
    swift_endAccess();
    v53 = v14;
    v18 = v53;
    if ((v110 & 1) != 0 || (v11 = [v53 layer], v54 = sub_24F92B098(), v14 = objc_msgSend(v11, sel_animationForKey_, v54), v11, v54, !v14))
    {
      LODWORD(v10) = 1;
    }

    else
    {

      LODWORD(v10) = 0;
    }

LABEL_79:
    v92 = [v18 superview];
    if (v92)
    {

      if ((v10 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      [v111 addSubview_];
    }

    v47 = *(v9 + 64);
    v11 = v126;
    v14 = v127;
    (*v123)(v126, v121, v127);
    CGPoint.rounded(_:)(v11, a7, v47);
    (*v122)(v11, v14);
    sub_24F92C1E8();
    [v18 setFrame_];
LABEL_34:

    a7 = v45 + a7;
    v48 = __OFADD__(v40++, 1);
    if (v48)
    {
      goto LABEL_109;
    }
  }

  if ((v107 & 1) == 0)
  {
    if (v40 >= v109)
    {
      swift_beginAccess();
      v93 = *(v9 + 72);
      v94 = *(v93 + 64);
      v129 = (v93 + 64);
      v95 = 1 << *(v93 + 32);
      v96 = -1;
      if (v95 < 64)
      {
        v96 = ~(-1 << v95);
      }

      isUniquelyReferenced_nonNull_native = v96 & v94;
      v130 = *(*v132 + 104);
      v10 = (v95 + 63) >> 6;
      v133 = v93;

      v97 = 0;
      v20 = v130;
      while (isUniquelyReferenced_nonNull_native)
      {
LABEL_97:
        v99 = __clz(__rbit64(isUniquelyReferenced_nonNull_native));
        isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
        v100 = (v97 << 9) | (8 * v99);
        v18 = *(*(v133 + 48) + v100);
        v11 = *(*(v133 + 56) + v100);
        if (v18 >= v109 && v18 < v40)
        {
          if (v108)
          {
            v14 = [v11 layer];
            [v14 removeAllAnimations];
          }
        }

        else
        {
          *&v137[0] = *(*(v133 + 56) + v100);
          swift_beginAccess();
          v131 = v11;
          v102 = v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243948);
          sub_24F922CA8();
          swift_endAccess();
          swift_beginAccess();
          v14 = *(v9 + 72);
          v103 = sub_24E7728CC(v18);
          if (v104)
          {
            v18 = v103;
            v105 = swift_isUniquelyReferenced_nonNull_native();
            v14 = *(v9 + 72);
            *&v137[0] = v14;
            *(v9 + 72) = 0x8000000000000000;
            if (!v105)
            {
              sub_24E8B796C();
              v14 = *&v137[0];
            }

            sub_24EB55CC8(v18, v14);
            *(v9 + 72) = v14;
          }

          swift_endAccess();
          LODWORD(v11) = v131;
        }
      }

      while (1)
      {
        v98 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_112;
        }

        if (v98 >= v10)
        {

          return;
        }

        isUniquelyReferenced_nonNull_native = v129[v98];
        ++v97;
        if (isUniquelyReferenced_nonNull_native)
        {
          v97 = v98;
          goto LABEL_97;
        }
      }
    }

LABEL_121:
    __break(1u);
LABEL_122:
    sub_24F92CF88();
    __break(1u);
  }
}

uint64_t sub_24F43FD14()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t block_copy_helper_152(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F43FE2C()
{
  result = qword_27F243990;
  if (!qword_27F243990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243990);
  }

  return result;
}

uint64_t LeaderboardSource.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LeaderboardSource();
  MEMORY[0x28223BE20](v5);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F44118C(v1, v7, type metadata accessor for LeaderboardSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = v7[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x646E696B24;
    v11 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v11;
    *(inited + 40) = 0xE500000000000000;
    strcpy((inited + 48), "leaderboardID");
    *(inited + 62) = -4864;
    strcpy((inited + 88), "leaderboardID");
    *(inited + 102) = -4864;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_24F93DE60;
    *(v12 + 32) = 25705;
    v13 = v12 + 32;
    *(v12 + 40) = 0xE200000000000000;
    *(v12 + 48) = v8;
    *(v12 + 56) = v9;
    v14 = sub_24E6086DC(v12);
    swift_setDeallocating();
    sub_24E601704(v13, &qword_27F219F90);
    *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
    *(inited + 136) = sub_24EC73450(&qword_27F21BD70, &qword_27F227A20);
    *(inited + 104) = v14;
    v15 = sub_24E607E40(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
    swift_arrayDestroy();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
    result = sub_24EC73450(&qword_27F212F28, &qword_27F212F20);
    v18 = result;
  }

  else
  {
    sub_24F4412F0(v7, v4, type metadata accessor for Leaderboard);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
    v19 = swift_initStackObject();
    *(v19 + 32) = 0x646E696B24;
    v20 = MEMORY[0x277D837D0];
    *(v19 + 16) = xmmword_24F93A400;
    v21 = MEMORY[0x277D22580];
    *(v19 + 72) = v20;
    *(v19 + 80) = v21;
    *(v19 + 40) = 0xE500000000000000;
    *(v19 + 48) = 0x6F6272656461656CLL;
    *(v19 + 56) = 0xEB00000000647261;
    *(v19 + 88) = 0x6F6272656461656CLL;
    *(v19 + 96) = 0xEB00000000647261;
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_24F93DE60;
    *(v22 + 32) = 0x6461654C74616877;
    *(v22 + 40) = 0xEF6472616F627265;
    *(v22 + 72) = v2;
    *(v22 + 80) = sub_24E75033C(&qword_27F21B450);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 48));
    sub_24F44118C(v4, boxed_opaque_existential_1, type metadata accessor for Leaderboard);
    v24 = sub_24E607E40(v22);
    swift_setDeallocating();
    sub_24E601704(v22 + 32, &qword_27F212FB0);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
    *(v19 + 128) = v16;
    v18 = sub_24EC73450(&qword_27F212F28, &qword_27F212F20);
    *(v19 + 136) = v18;
    *(v19 + 104) = v24;
    v15 = sub_24E607E40(v19);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
    swift_arrayDestroy();
    result = sub_24F3A3AEC(v4);
  }

  v25 = v27;
  v27[3] = v16;
  v25[4] = v18;
  *v25 = v15;
  return result;
}

uint64_t type metadata accessor for LeaderboardSource()
{
  result = qword_27F2439E0;
  if (!qword_27F2439E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F4403C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xED00004449647261)
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

uint64_t sub_24F4404A0(uint64_t a1)
{
  v2 = sub_24F4411F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4404DC(uint64_t a1)
{
  v2 = sub_24F4411F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F44053C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6461654C74616877 && a2 == 0xEF6472616F627265)
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

uint64_t sub_24F4405CC(uint64_t a1)
{
  v2 = sub_24F44129C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F440608(uint64_t a1)
{
  v2 = sub_24F44129C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F440644(uint64_t a1)
{
  v2 = sub_24F441248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F440680(uint64_t a1)
{
  v2 = sub_24F441248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaderboardSource.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243998);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2439A0);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - v5;
  v21 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LeaderboardSource();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2439A8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4411F4();
  sub_24F92D128();
  sub_24F44118C(v28, v10, type metadata accessor for LeaderboardSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = 1;
    sub_24F441248();
    v15 = v23;
    sub_24F92CC98();
    v16 = v27;
    sub_24F92CD08();

    (*(v26 + 8))(v15, v16);
  }

  else
  {
    sub_24F4412F0(v10, v7, type metadata accessor for Leaderboard);
    v29 = 0;
    sub_24F44129C();
    v17 = v22;
    sub_24F92CC98();
    sub_24E75033C(&qword_27F21B470);
    v18 = v25;
    sub_24F92CD48();
    (*(v24 + 8))(v17, v18);
    sub_24F3A3AEC(v7);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t LeaderboardSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2439C8);
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v55 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2439D0);
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  MEMORY[0x28223BE20](v4);
  v54 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2439D8);
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for LeaderboardSource();
  MEMORY[0x28223BE20](v10);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F4411F4();
  v20 = v58;
  sub_24F92D108();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v47 = v12;
  v48 = v15;
  v22 = v54;
  v21 = v55;
  v58 = 0;
  v49 = v18;
  v23 = v10;
  v24 = v57;
  v25 = sub_24F92CC78();
  v26 = (2 * *(v25 + 16)) | 1;
  v60 = v25;
  v61 = v25 + 32;
  v62 = 0;
  v63 = v26;
  v27 = sub_24E643430();
  v28 = v7;
  v29 = v9;
  if (v27 == 2 || v62 != v63 >> 1)
  {
    v34 = sub_24F92C918();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v36 = v23;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v27 & 1) == 0)
  {
    v64 = 0;
    sub_24F44129C();
    v38 = v22;
    v39 = v58;
    sub_24F92CBA8();
    v45 = v49;
    if (!v39)
    {
      type metadata accessor for Leaderboard(0);
      sub_24E75033C(&qword_27F21B488);
      v40 = v51;
      sub_24F92CC68();
      v58 = 0;
      (*(v52 + 8))(v38, v40);
      (*(v56 + 8))(v9, v28);
      v43 = v48;
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v44 = v57;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v64 = 1;
  sub_24F441248();
  v30 = v58;
  sub_24F92CBA8();
  if (v30)
  {
LABEL_8:
    (*(v56 + 8))(v9, v28);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v31 = v50;
  v32 = sub_24F92CC28();
  v33 = v56;
  v58 = 0;
  v42 = v41;
  (*(v53 + 8))(v21, v31);
  (*(v33 + 8))(v29, v7);
  swift_unknownObjectRelease();
  v43 = v47;
  *v47 = v32;
  *(v43 + 8) = v42;
  swift_storeEnumTagMultiPayload();
  v44 = v24;
  v45 = v49;
LABEL_12:
  sub_24F4412F0(v43, v45, type metadata accessor for LeaderboardSource);
  sub_24F4412F0(v45, v44, type metadata accessor for LeaderboardSource);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_24F44118C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F4411F4()
{
  result = qword_27F2439B0;
  if (!qword_27F2439B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2439B0);
  }

  return result;
}

unint64_t sub_24F441248()
{
  result = qword_27F2439B8;
  if (!qword_27F2439B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2439B8);
  }

  return result;
}

unint64_t sub_24F44129C()
{
  result = qword_27F2439C0;
  if (!qword_27F2439C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2439C0);
  }

  return result;
}

uint64_t sub_24F4412F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24F441358()
{
  sub_24F4413CC();
  if (v0 <= 0x3F)
  {
    sub_24F41EC20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24F4413CC()
{
  if (!qword_27F2439F0)
  {
    v0 = type metadata accessor for Leaderboard(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27F2439F0);
    }
  }
}

unint64_t sub_24F441448()
{
  result = qword_27F2439F8;
  if (!qword_27F2439F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2439F8);
  }

  return result;
}

unint64_t sub_24F4414A0()
{
  result = qword_27F243A00;
  if (!qword_27F243A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A00);
  }

  return result;
}

unint64_t sub_24F4414F8()
{
  result = qword_27F243A08;
  if (!qword_27F243A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A08);
  }

  return result;
}

unint64_t sub_24F441550()
{
  result = qword_27F243A10;
  if (!qword_27F243A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A10);
  }

  return result;
}

unint64_t sub_24F4415A8()
{
  result = qword_27F243A18;
  if (!qword_27F243A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A18);
  }

  return result;
}

unint64_t sub_24F441600()
{
  result = qword_27F243A20;
  if (!qword_27F243A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A20);
  }

  return result;
}

unint64_t sub_24F441658()
{
  result = qword_27F243A28;
  if (!qword_27F243A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A28);
  }

  return result;
}

unint64_t sub_24F4416B0()
{
  result = qword_27F243A30;
  if (!qword_27F243A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A30);
  }

  return result;
}

unint64_t sub_24F441708()
{
  result = qword_27F243A38;
  if (!qword_27F243A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A38);
  }

  return result;
}

uint64_t sub_24F441780(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ActivityInviteCard();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24F441918(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ActivityInviteCard();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for MultiplayerInviteLockup()
{
  result = qword_27F243A40;
  if (!qword_27F243A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F441AE8()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivityInviteCard();
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
        if (v3 <= 0x3F)
        {
          sub_24E61C938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F441BE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v30 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v32);
  v6 = &v30 - v5;
  v7 = type metadata accessor for ActivityInviteCard();
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243A68);
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for MultiplayerInviteLockup();
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 24)];
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_24E61DA68(&v40, v17, qword_27F21B590);
  v18 = v13[7];
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v38 = v18;
  v39 = v15;
  v20(&v15[v18], 1, 1, v19);
  v21 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F4427F8();
  v35 = v12;
  v22 = v36;
  sub_24F92D108();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    v23 = v39;
    sub_24E601704(v17, qword_27F24EC90);
    return sub_24E601704(v23 + v38, &qword_27F215440);
  }

  else
  {
    v36 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v43 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v24 = v41;
    v25 = v39;
    *v39 = v40;
    v25[1] = v24;
    *(v25 + 4) = v42;
    LOBYTE(v40) = 1;
    sub_24F4428B0(&qword_27F2390D8, type metadata accessor for ActivityInviteCard);
    sub_24F92CC68();
    sub_24F44284C(v9, v25 + v13[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v43 = 2;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v40, v17, qword_27F24EC90);
    LOBYTE(v40) = 3;
    sub_24E65CAA0();
    v26 = v36;
    sub_24F92CC68();
    v27 = v39;
    sub_24E61DA68(v26, v39 + v38, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v40) = 4;
    sub_24F4428B0(&qword_27F213F48, MEMORY[0x277D21F70]);
    v28 = v31;
    sub_24F92CC18();
    (*(v33 + 8))(v35, v34);
    sub_24E6009C8(v28, v27 + v13[8], &qword_27F213E68);
    sub_24F4428F8(v27, v30, type metadata accessor for MultiplayerInviteLockup);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return sub_24F442960(v27, type metadata accessor for MultiplayerInviteLockup);
  }
}

uint64_t sub_24F442294()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  v4 = 0x4D747865746E6F63;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6143657469766E69;
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

uint64_t sub_24F442330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F442ADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F442358(uint64_t a1)
{
  v2 = sub_24F4427F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F442394(uint64_t a1)
{
  v2 = sub_24F4427F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4423D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 28), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

unint64_t sub_24F4424F8()
{
  result = qword_27F243A50;
  if (!qword_27F243A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A50);
  }

  return result;
}

uint64_t sub_24F44254C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for MultiplayerInviteLockup() + 20);
  *(a2 + 40) = type metadata accessor for ActivityInviteCard();
  *(a2 + 48) = sub_24F4428B0(&qword_27F21AA78, type metadata accessor for ActivityInviteCard);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 16));
  sub_24F4428F8(a1 + v4, boxed_opaque_existential_1, type metadata accessor for ActivityInviteCard);
  type metadata accessor for GSKComponentContentBuilder();
  sub_24F4428B0(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  *a2 = sub_24F923598();
  *(a2 + 8) = v6 & 1;
  result = swift_getKeyPath();
  *(a2 + 56) = result;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_24F442660()
{
  sub_24F4424F8();

  return sub_24F9218E8();
}

unint64_t sub_24F4426F0()
{
  result = qword_27F243A60;
  if (!qword_27F243A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A60);
  }

  return result;
}

unint64_t sub_24F4427F8()
{
  result = qword_27F243A70;
  if (!qword_27F243A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A70);
  }

  return result;
}

uint64_t sub_24F44284C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityInviteCard();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4428B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4428F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F442960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F4429D8()
{
  result = qword_27F243A78;
  if (!qword_27F243A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A78);
  }

  return result;
}

unint64_t sub_24F442A30()
{
  result = qword_27F243A80;
  if (!qword_27F243A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A80);
  }

  return result;
}

unint64_t sub_24F442A88()
{
  result = qword_27F243A88;
  if (!qword_27F243A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A88);
  }

  return result;
}

uint64_t sub_24F442ADC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6143657469766E69 && a2 == 0xEA00000000006472 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24F442CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_24F924958();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243A90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  sub_24F925418();
  v19 = a1;
  sub_24F925428();
  sub_24EA1F004(&qword_27F243A98, MEMORY[0x277CDE2B0]);
  v11 = v18;
  sub_24F9270D8();
  sub_24F924948();
  sub_24E602068(&qword_27F243AA0, &qword_27F243A90);
  sub_24EA1F004(&qword_27F243AA8, MEMORY[0x277CDDDF0]);
  sub_24F926238();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  if (qword_27F211278 != -1)
  {
    swift_once();
  }

  v12 = qword_27F2431D0;
  KeyPath = swift_getKeyPath();
  v20 = v12;

  v14 = sub_24F9238D8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AB0);
  v16 = (v11 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  return result;
}

unint64_t sub_24F443014()
{
  result = qword_27F243AB8;
  if (!qword_27F243AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243AB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243A90);
    sub_24F924958();
    sub_24E602068(&qword_27F243AA0, &qword_27F243A90);
    sub_24EA1F004(&qword_27F243AA8, MEMORY[0x277CDDDF0]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F236270, &qword_27F219DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243AB8);
  }

  return result;
}

uint64_t sub_24F443204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_24E60169C(a1, &v11 - v8, &qword_27F215598);
  return a5(v9);
}

uint64_t sub_24F4432D8(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F924598();
}

uint64_t sub_24F4433A4(uint64_t a1)
{
  result = MEMORY[0x253051460](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

    sub_24ED7C5F0(&v13, v11, v12);
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

uint64_t sub_24F4434C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24EA90A64();
  result = MEMORY[0x253051460](v2, &type metadata for PersonalizationStyle, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_24ED7CC74(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F4435B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24E69103C();
  result = MEMORY[0x253051460](v2, &type metadata for AdamId, v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];

    sub_24ED7E42C(&v15, v13, v14);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v16;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t FlowDestination.callAsFunction(asPartOf:)@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v729 = a1;
  v733 = a2;
  v709 = type metadata accessor for InviteFriendsPageView(0);
  MEMORY[0x28223BE20](v709);
  v596 = &v554 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v710 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AC0);
  v599 = *(v710 - 1);
  MEMORY[0x28223BE20](v710);
  v658 = &v554 - v5;
  v6 = type metadata accessor for InviteFriendsPageIntent();
  MEMORY[0x28223BE20](v6 - 8);
  v656 = &v554 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v604 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D98);
  MEMORY[0x28223BE20](v604);
  v554 = &v554 - v8;
  v608 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AC8);
  v556 = *(v608 - 8);
  MEMORY[0x28223BE20](v608);
  v555 = &v554 - v9;
  v601 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AD0);
  MEMORY[0x28223BE20](v601);
  v603 = &v554 - v10;
  v691 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D68);
  MEMORY[0x28223BE20](v691);
  v605 = &v554 - v11;
  v602 = type metadata accessor for AchievementDetailsPageView();
  MEMORY[0x28223BE20](v602);
  v594 = &v554 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v663 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AD8);
  v660 = *(v663 - 8);
  MEMORY[0x28223BE20](v663);
  v659 = &v554 - v13;
  v14 = type metadata accessor for AchievementDetails();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v590 = &v554 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v655 = &v554 - v17;
  v651 = type metadata accessor for PlayTogetherWelcomePageView(0);
  MEMORY[0x28223BE20](v651);
  v589 = &v554 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AE0);
  v649 = *(v671 - 8);
  MEMORY[0x28223BE20](v671);
  v644 = &v554 - v19;
  v20 = type metadata accessor for PlayTogetherWelcomePage(0);
  MEMORY[0x28223BE20](v20 - 8);
  v643 = &v554 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AE8);
  MEMORY[0x28223BE20](v705);
  v707 = &v554 - v22;
  v688 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AF0);
  MEMORY[0x28223BE20](v688);
  v690 = &v554 - v23;
  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AF8);
  MEMORY[0x28223BE20](v636);
  v638 = &v554 - v24;
  v689 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D28);
  MEMORY[0x28223BE20](v689);
  v646 = &v554 - v25;
  v706 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D18);
  MEMORY[0x28223BE20](v706);
  v692 = &v554 - v26;
  v732 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D08);
  MEMORY[0x28223BE20](v732);
  v708 = (&v554 - v27);
  v634 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D38);
  MEMORY[0x28223BE20](v634);
  v591 = &v554 - v28;
  v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219CD0);
  MEMORY[0x28223BE20](v633);
  v587 = &v554 - v29;
  v627 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B00);
  MEMORY[0x28223BE20](v627);
  v631 = &v554 - v30;
  v704 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219CB8);
  MEMORY[0x28223BE20](v704);
  v635 = &v554 - v31;
  v32 = sub_24F924AD8();
  v577 = *(v32 - 8);
  v578 = v32;
  v33 = MEMORY[0x28223BE20](v32);
  v576 = &v554 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v575 = &v554 - v35;
  v626 = type metadata accessor for RecordingFullScreenView();
  MEMORY[0x28223BE20](v626);
  v586 = &v554 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for RecordingAssociation();
  MEMORY[0x28223BE20](v37 - 8);
  v585 = &v554 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v641 = type metadata accessor for MultiplayerActivityReviewView(0);
  MEMORY[0x28223BE20](v641);
  v579 = (&v554 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v642 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219CA0);
  v584 = *(v642 - 8);
  MEMORY[0x28223BE20](v642);
  v582 = &v554 - v40;
  v650 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C98);
  v583 = *(v650 - 8);
  MEMORY[0x28223BE20](v650);
  v581 = &v554 - v41;
  v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B08);
  v588 = *(v661 - 8);
  MEMORY[0x28223BE20](v661);
  v630 = &v554 - v42;
  v571 = type metadata accessor for MultiplayerActivityReviewBaseInfo(0);
  v43 = MEMORY[0x28223BE20](v571);
  v570 = &v554 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v667 = &v554 - v45;
  v699 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B10);
  MEMORY[0x28223BE20](v699);
  v701 = &v554 - v46;
  v632 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B18);
  MEMORY[0x28223BE20](v632);
  v639 = &v554 - v47;
  v700 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C80);
  MEMORY[0x28223BE20](v700);
  v648 = &v554 - v48;
  v722 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C70);
  MEMORY[0x28223BE20](v722);
  v703 = &v554 - v49;
  v625 = type metadata accessor for ChallengesReviewView(0);
  MEMORY[0x28223BE20](v625);
  v569 = &v554 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C88);
  v573 = *(v628 - 8);
  MEMORY[0x28223BE20](v628);
  v572 = &v554 - v51;
  v647 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B20);
  v580 = *(v647 - 8);
  MEMORY[0x28223BE20](v647);
  v623 = &v554 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B28);
  v54 = MEMORY[0x28223BE20](v53 - 8);
  v568 = &v554 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v622 = &v554 - v56;
  v567 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v57 = MEMORY[0x28223BE20](v567);
  v566 = &v554 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v666 = &v554 - v59;
  v678 = sub_24F929888();
  v677 = *(v678 - 8);
  MEMORY[0x28223BE20](v678);
  v676 = &v554 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8);
  MEMORY[0x28223BE20](v61 - 8);
  v674 = &v554 - v62;
  v702 = sub_24F929158();
  v675 = *(v702 - 8);
  MEMORY[0x28223BE20](v702);
  v673 = &v554 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v64 - 8);
  v672 = &v554 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  v67 = MEMORY[0x28223BE20](v66 - 8);
  v629 = &v554 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v574 = &v554 - v69;
  v70 = type metadata accessor for Player(0);
  v71 = MEMORY[0x28223BE20](v70 - 8);
  v621 = &v554 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v607 = &v554 - v74;
  MEMORY[0x28223BE20](v73);
  v668 = &v554 - v75;
  v664 = type metadata accessor for ChallengesPlayerPickerView(0);
  v76 = MEMORY[0x28223BE20](v664);
  v606 = (&v554 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v76);
  v592 = &v554 - v78;
  v657 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C58);
  v595 = *(v657 - 8);
  MEMORY[0x28223BE20](v657);
  v593 = &v554 - v79;
  v662 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B30);
  v598 = *(v662 - 8);
  MEMORY[0x28223BE20](v662);
  v597 = &v554 - v80;
  v717 = sub_24F928818();
  v723 = *(v717 - 8);
  v81 = MEMORY[0x28223BE20](v717);
  v693 = &v554 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v670 = &v554 - v83;
  v564 = type metadata accessor for ChallengesPlayerPickerMode(0);
  v84 = MEMORY[0x28223BE20](v564);
  v565 = &v554 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = MEMORY[0x28223BE20](v84);
  v624 = &v554 - v87;
  MEMORY[0x28223BE20](v86);
  v654 = &v554 - v88;
  v711 = sub_24F92A708();
  v653 = *(v711 - 8);
  MEMORY[0x28223BE20](v711);
  v669 = &v554 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v637 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B38);
  MEMORY[0x28223BE20](v637);
  v645 = &v554 - v90;
  v698 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C48);
  MEMORY[0x28223BE20](v698);
  v652 = &v554 - v91;
  v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219978);
  MEMORY[0x28223BE20](v560);
  v559 = &v554 - v92;
  v640 = type metadata accessor for PickActivityTransitionView();
  MEMORY[0x28223BE20](v640);
  v724 = &v554 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v615 = type metadata accessor for ReportPlayerProblemView();
  MEMORY[0x28223BE20](v615);
  v558 = (&v554 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  v620 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B40);
  v563 = *(v620 - 8);
  MEMORY[0x28223BE20](v620);
  v562 = &v554 - v95;
  v718 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B48);
  MEMORY[0x28223BE20](v718);
  *&v720 = &v554 - v96;
  v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B50);
  MEMORY[0x28223BE20](v694);
  v696 = &v554 - v97;
  v611 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B58);
  MEMORY[0x28223BE20](v611);
  v612 = (&v554 - v98);
  v695 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C30);
  MEMORY[0x28223BE20](v695);
  v614 = &v554 - v99;
  v719 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C20);
  MEMORY[0x28223BE20](v719);
  v697 = &v554 - v100;
  v728 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C10);
  MEMORY[0x28223BE20](v728);
  v721 = &v554 - v101;
  v613 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B60);
  MEMORY[0x28223BE20](v613);
  v617 = (&v554 - v102);
  v686 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219BF0);
  MEMORY[0x28223BE20](v686);
  v618 = &v554 - v103;
  v619 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B68);
  v561 = *(v619 - 8);
  MEMORY[0x28223BE20](v619);
  v616 = &v554 - v104;
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B70);
  MEMORY[0x28223BE20](v683);
  v685 = &v554 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B78);
  MEMORY[0x28223BE20](v106);
  v108 = &v554 - v107;
  v684 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219BC8);
  MEMORY[0x28223BE20](v684);
  v600 = &v554 - v109;
  v715 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219BB8);
  MEMORY[0x28223BE20](v715);
  v687 = &v554 - v110;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219BD8);
  MEMORY[0x28223BE20](v111);
  v557 = &v554 - v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B80);
  MEMORY[0x28223BE20](v113);
  v115 = &v554 - v114;
  v682 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A10);
  MEMORY[0x28223BE20](v682);
  v610 = &v554 - v116;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A18);
  MEMORY[0x28223BE20](v117);
  v119 = &v554 - v118;
  v665 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B88);
  v609 = *(v665 - 8);
  MEMORY[0x28223BE20](v665);
  v121 = &v554 - v120;
  v730 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B90);
  MEMORY[0x28223BE20](v730);
  v731 = &v554 - v122;
  v725 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B98);
  MEMORY[0x28223BE20](v725);
  v727 = &v554 - v123;
  v712 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BA0);
  MEMORY[0x28223BE20](v712);
  v714 = &v554 - v124;
  v679 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BA8);
  MEMORY[0x28223BE20](v679);
  v680 = (&v554 - v125);
  v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199E8);
  MEMORY[0x28223BE20](v713);
  v681 = &v554 - v126;
  v726 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199D8);
  MEMORY[0x28223BE20](v726);
  v716 = &v554 - v127;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199C8);
  v129 = MEMORY[0x28223BE20](v128);
  v131 = &v554 - v130;
  v132 = *v3;
  switch((v132 >> 59) & 0x1E | (v132 >> 2) & 1)
  {
    case 1uLL:
      v724 = v129;
      v710 = &v554 - v130;
      sub_24E60169C((v132 & 0xFFFFFFFFFFFFFFBLL) + 16, v763, &qword_27F215768);
      sub_24F44C2A8(v763, v729, v119);
      v349 = type metadata accessor for FlowAction();
      v350 = sub_24E712330();
      v351 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction);
      v352 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction);
      sub_24F925E78();
      sub_24E601704(v119, &qword_27F219A18);
      (*(v609 + 16))(v115, v121, v665);
      swift_storeEnumTagMultiPayload();
      *&v756 = v117;
      *(&v756 + 1) = v349;
      *&v757 = v350;
      *(&v757 + 1) = v351;
      *&v758 = v352;
      swift_getOpaqueTypeConformance2();
      sub_24E712FF8();
      v353 = v610;
      v354 = v665;
      sub_24F924E28();
      sub_24E60169C(v353, v680, &qword_27F219A10);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199F8);
      sub_24E712100();
      sub_24E7121E0();
      v355 = v681;
      sub_24F924E28();
      sub_24E601704(v353, &qword_27F219A10);
      sub_24E60169C(v355, v714, &qword_27F2199E8);
      swift_storeEnumTagMultiPayload();
      sub_24E712074();
      sub_24E71304C();
      v356 = v716;
      sub_24F924E28();
      sub_24E601704(v355, &qword_27F2199E8);
      sub_24E60169C(v356, v727, &qword_27F2199D8);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v357 = v710;
      sub_24F924E28();
      sub_24E601704(v356, &qword_27F2199D8);
      sub_24E60169C(v357, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v357, &qword_27F2199C8);
      (*(v609 + 8))(v121, v354);
      return sub_24E601704(v763, &qword_27F215768);
    case 2uLL:
      v724 = v129;
      v299 = (v132 & 0xFFFFFFFFFFFFFFBLL) + 16;
      v300 = &v554 - v130;
      sub_24E60169C(v299, &v756, &qword_27F243BF8);
      sub_24E615E00(&v756, v763);
      *(&v763[2] + 1) = v729;
      sub_24F45E564(v763, v115);
      swift_storeEnumTagMultiPayload();
      v301 = type metadata accessor for FlowAction();
      v302 = sub_24E712330();
      v303 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction);
      v304 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction);

      *&v740 = v117;
      *(&v740 + 1) = v301;
      *&v741 = v302;
      *(&v741 + 1) = v303;
      *&v742 = v304;
      swift_getOpaqueTypeConformance2();
      sub_24E712FF8();
      v305 = v610;
      sub_24F924E28();
      sub_24E60169C(v305, v680, &qword_27F219A10);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199F8);
      sub_24E712100();
      sub_24E7121E0();
      v306 = v681;
      sub_24F924E28();
      sub_24E601704(v305, &qword_27F219A10);
      sub_24E60169C(v306, v714, &qword_27F2199E8);
      swift_storeEnumTagMultiPayload();
      sub_24E712074();
      sub_24E71304C();
      v307 = v716;
      sub_24F924E28();
      sub_24E601704(v306, &qword_27F2199E8);
      sub_24E60169C(v307, v727, &qword_27F2199D8);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      sub_24F924E28();
      sub_24E601704(v307, &qword_27F2199D8);
      sub_24E60169C(v300, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v300, &qword_27F2199C8);
      sub_24F45E5C0(v763);
      return sub_24E601704(&v756, &qword_27F243BF8);
    case 3uLL:
      v326 = &v554 - v130;
      sub_24E60169C((v132 & 0xFFFFFFFFFFFFFFBLL) + 16, v763, &qword_27F227178);
      sub_24E615E00(v763, &v756);
      v327 = v729;

      v328 = v557;
      sub_24E65E804(&v756, v327, v557);
      sub_24E60169C(v328, v108, &qword_27F219BD8);
      swift_storeEnumTagMultiPayload();
      sub_24E713164();
      v329 = v600;
      sub_24F924E28();
      sub_24E60169C(v329, v685, &qword_27F219BC8);
      swift_storeEnumTagMultiPayload();
      sub_24E7130D8();
      sub_24E713220();
      v330 = v687;
      sub_24F924E28();
      sub_24E601704(v329, &qword_27F219BC8);
      sub_24E60169C(v330, v714, &qword_27F219BB8);
      swift_storeEnumTagMultiPayload();
      sub_24E712074();
      sub_24E71304C();
      v331 = v716;
      sub_24F924E28();
      sub_24E601704(v330, &qword_27F219BB8);
      sub_24E60169C(v331, v727, &qword_27F2199D8);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      sub_24F924E28();
      sub_24E601704(v331, &qword_27F2199D8);
      sub_24E60169C(v326, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v326, &qword_27F2199C8);
      sub_24E601704(v328, &qword_27F219BD8);
      return sub_24E601704(v763, &qword_27F227178);
    case 4uLL:
      v710 = &v554 - v130;
      v724 = v129;
      v234 = *((v132 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_24E60169C((v132 & 0xFFFFFFFFFFFFFFBLL) + 24, v763, &qword_27F213EA8);
      sub_24E60169C((v132 & 0xFFFFFFFFFFFFFFBLL) + 64, &v756, &qword_27F213EA8);
      sub_24E60169C(v763, &v740, qword_27F21B590);
      sub_24E60169C(&v756, &v734, qword_27F21B590);
      v235 = type metadata accessor for FriendRequestComposeViewController();
      v236 = objc_allocWithZone(v235);
      sub_24E60169C(&v740, &v236[OBJC_IVAR____TtC12GameStoreKit34FriendRequestComposeViewController_successAction], qword_27F21B590);
      sub_24E60169C(&v734, &v236[OBJC_IVAR____TtC12GameStoreKit34FriendRequestComposeViewController_failureAction], qword_27F21B590);
      *&v236[OBJC_IVAR____TtC12GameStoreKit34FriendRequestComposeViewController_objectGraph] = v729;
      v747.receiver = v236;
      v747.super_class = v235;
      swift_retain_n();

      v237 = objc_msgSendSuper2(&v747, sel_initWithNibName_bundle_, 0, 0);
      if (v234)
      {
        v238 = sub_24F92B588();
      }

      else
      {
        v238 = 0;
      }

      [v237 setRecipients_];

      v483 = sub_24E753A54();
      v484 = sub_24F92B098();
      [v237 setMessage:v483 withExtensionBundleIdentifier:v484];

      [v237 setMessageComposeDelegate_];
      sub_24E601704(&v734, qword_27F21B590);
      sub_24E601704(&v740, qword_27F21B590);

      *&v740 = v237;
      v485 = sub_24E632AD0();
      v486 = v616;
      sub_24F925F48();

      v487 = v561;
      v488 = v486;
      v489 = v619;
      (*(v561 + 16))(v617, v488, v619);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C00);
      *&v740 = &type metadata for ViewControllerAdaptor;
      *(&v740 + 1) = v485;
      swift_getOpaqueTypeConformance2();
      sub_24E7132D8();
      v490 = v618;
      sub_24F924E28();
      sub_24E60169C(v490, v685, &qword_27F219BF0);
      swift_storeEnumTagMultiPayload();
      sub_24E7130D8();
      sub_24E713220();
      v491 = v687;
      sub_24F924E28();
      sub_24E601704(v490, &qword_27F219BF0);
      sub_24E60169C(v491, v714, &qword_27F219BB8);
      swift_storeEnumTagMultiPayload();
      sub_24E712074();
      sub_24E71304C();
      v492 = v716;
      sub_24F924E28();
      sub_24E601704(v491, &qword_27F219BB8);
      sub_24E60169C(v492, v727, &qword_27F2199D8);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v493 = v710;
      sub_24F924E28();
      sub_24E601704(v492, &qword_27F2199D8);
      sub_24E60169C(v493, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v493, &qword_27F2199C8);
      (*(v487 + 8))(v616, v489);
      goto LABEL_44;
    case 5uLL:
      v379 = &v554 - v130;
      v380 = objc_allocWithZone(type metadata accessor for ChallengesInviteComposeViewController());

      v382 = sub_24E806C68(v381);
      *v612 = v382;
      swift_storeEnumTagMultiPayload();
      sub_24E632AD0();
      v383 = sub_24F457898(&qword_27F219C38, type metadata accessor for ReportPlayerProblemView);
      v384 = v382;
      *&v763[0] = v615;
      *(&v763[0] + 1) = v383;
      swift_getOpaqueTypeConformance2();
      v385 = v614;
      sub_24F924E28();
      sub_24E60169C(v385, v696, &qword_27F219C30);
      swift_storeEnumTagMultiPayload();
      sub_24E713474();
      sub_24E713568();
      v386 = v697;
      sub_24F924E28();
      sub_24E601704(v385, &qword_27F219C30);
      sub_24E60169C(v386, v720, &qword_27F219C20);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v387 = v721;
      sub_24F924E28();
      sub_24E601704(v386, &qword_27F219C20);
      v388 = &qword_27F219C10;
      sub_24E60169C(v387, v727, &qword_27F219C10);
      goto LABEL_28;
    case 6uLL:
      v379 = &v554 - v130;
      v408 = type metadata accessor for TextMessageComposerViewController();
      v409 = 0;
      if ([swift_getObjCClassFromMetadata() canSendText])
      {
        v748.receiver = objc_allocWithZone(v408);
        v748.super_class = v408;
        v409 = objc_msgSendSuper2(&v748, sel_initWithNibName_bundle_, 0, 0);
        v410 = sub_24F92B588();
        [v409 setRecipients_];

        [v409 setMessageComposeDelegate_];
      }

      *v617 = v409;
      swift_storeEnumTagMultiPayload();
      v384 = v409;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C00);
      v411 = sub_24E632AD0();
      *&v763[0] = &type metadata for ViewControllerAdaptor;
      *(&v763[0] + 1) = v411;
      swift_getOpaqueTypeConformance2();
      sub_24E7132D8();
      v412 = v618;
      sub_24F924E28();
      sub_24E60169C(v412, v685, &qword_27F219BF0);
      swift_storeEnumTagMultiPayload();
      sub_24E7130D8();
      sub_24E713220();
      v413 = v687;
      sub_24F924E28();
      sub_24E601704(v412, &qword_27F219BF0);
      sub_24E60169C(v413, v714, &qword_27F219BB8);
      swift_storeEnumTagMultiPayload();
      sub_24E712074();
      sub_24E71304C();
      v387 = v716;
      sub_24F924E28();
      sub_24E601704(v413, &qword_27F219BB8);
      v388 = &qword_27F2199D8;
      sub_24E60169C(v387, v727, &qword_27F2199D8);
LABEL_28:
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      sub_24F924E28();
      sub_24E601704(v387, v388);
      sub_24E60169C(v379, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();

      return sub_24E601704(v379, &qword_27F2199C8);
    case 7uLL:
      v332 = v132 & 0xFFFFFFFFFFFFFFBLL;
      v334 = *((v132 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v333 = *(v332 + 24);
      v724 = v129;
      v710 = v131;
      KeyPath = swift_getKeyPath();
      v336 = v558;
      *v558 = KeyPath;
      *(v336 + 40) = 0;
      v337 = v615;
      v338 = *(v615 + 20);
      *(v336 + v338) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
      swift_storeEnumTagMultiPayload();
      v339 = *(v337 + 24);
      *&v756 = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218418);
      sub_24F926F28();
      *(v336 + v339) = v763[0];
      v340 = (v336 + *(v337 + 28));
      *v340 = v334;
      v340[1] = v333;
      v341 = sub_24F457898(&qword_27F219C38, type metadata accessor for ReportPlayerProblemView);
      v342 = v562;
      sub_24F925F48();
      sub_24F461E40(v336, type metadata accessor for ReportPlayerProblemView);
      v343 = v563;
      v344 = v620;
      (*(v563 + 16))(v612, v342, v620);
      swift_storeEnumTagMultiPayload();
      sub_24E632AD0();
      *&v763[0] = v337;
      *(&v763[0] + 1) = v341;
      swift_getOpaqueTypeConformance2();
      v345 = v614;
      sub_24F924E28();
      sub_24E60169C(v345, v696, &qword_27F219C30);
      swift_storeEnumTagMultiPayload();
      sub_24E713474();
      sub_24E713568();
      v346 = v697;
      sub_24F924E28();
      sub_24E601704(v345, &qword_27F219C30);
      sub_24E60169C(v346, v720, &qword_27F219C20);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v347 = v721;
      sub_24F924E28();
      sub_24E601704(v346, &qword_27F219C20);
      sub_24E60169C(v347, v727, &qword_27F219C10);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v348 = v710;
      sub_24F924E28();
      sub_24E601704(v347, &qword_27F219C10);
      sub_24E60169C(v348, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v348, &qword_27F2199C8);
      return (*(v343 + 8))(v342, v344);
    case 8uLL:
      v456 = &v554 - v130;
      sub_24E60169C((v132 & 0xFFFFFFFFFFFFFFBLL) + 16, v763, &qword_27F243BF0);
      sub_24E615E00(v763, &v756);
      v457 = __swift_project_boxed_opaque_existential_1(&v756, *(&v757 + 1));
      MEMORY[0x28223BE20](v457);
      (*(v459 + 16))(&v554 - ((v458 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_24F9217D8();
      v460 = v724;
      sub_24F926F28();
      v461 = v640;
      sub_24E615E00(&v756, v460 + *(v640 + 20));
      *(v460 + *(v461 + 24)) = v729;

      __swift_destroy_boxed_opaque_existential_1(&v756);
      sub_24F461DD8(v460, v645, type metadata accessor for PickActivityTransitionView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219C50, type metadata accessor for PickActivityTransitionView);
      v462 = sub_24F457898(&qword_27F219C60, type metadata accessor for ChallengesPlayerPickerView);
      *&v756 = v664;
      *(&v756 + 1) = v462;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v756 = v657;
      *(&v756 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v464 = v652;
      sub_24F924E28();
      sub_24E60169C(v464, v696, &qword_27F219C48);
      swift_storeEnumTagMultiPayload();
      sub_24E713474();
      sub_24E713568();
      v465 = v697;
      sub_24F924E28();
      sub_24E601704(v464, &qword_27F219C48);
      sub_24E60169C(v465, v720, &qword_27F219C20);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v466 = v721;
      sub_24F924E28();
      sub_24E601704(v465, &qword_27F219C20);
      sub_24E60169C(v466, v727, &qword_27F219C10);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      sub_24F924E28();
      sub_24E601704(v466, &qword_27F219C10);
      sub_24E60169C(v456, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v456, &qword_27F2199C8);
      sub_24F461E40(v460, type metadata accessor for PickActivityTransitionView);
      return sub_24E601704(v763, &qword_27F243BF0);
    case 9uLL:
      v710 = &v554 - v130;
      v724 = v129;
      v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB68);
      v266 = swift_projectBox();
      v267 = v266[1];
      v712 = *v266;
      v709 = v267;
      v268 = *(v266 + v265[16]);
      v269 = v265[20];
      v270 = v265[24];
      v271 = v265[28];
      v272 = v265[32];
      (*(v653 + 16))(v669, v266 + v265[12], v711);
      v708 = type metadata accessor for ChallengesPlayerPickerMode;
      v273 = v654;
      sub_24F461DD8(v266 + v269, v654, type metadata accessor for ChallengesPlayerPickerMode);
      sub_24E60169C(v266 + v270, v763, &qword_27F2169E8);
      sub_24E60169C(v266 + v271, &v756, &qword_27F2169E8);
      v274 = *(v723 + 16);
      v716 = (v723 + 16);
      v715 = v274;
      v274(v670, v266 + v272, v717);
      type metadata accessor for LocalPlayerProvider();

      v714 = v268;

      sub_24F928F28();
      v275 = v740;
      swift_getKeyPath();
      *&v740 = v275;
      sub_24F457898(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
      sub_24F91FD88();

      v276 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
      swift_beginAccess();
      v277 = v668;
      sub_24F461DD8(v275 + v276, v668, type metadata accessor for Player);

      v278 = v624;
      v279 = v708;
      sub_24F461DD8(v273, v624, v708);
      sub_24E615E00(v763, &v740);
      sub_24E615E00(&v756, &v734);
      v713 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
      v280 = swift_getKeyPath();
      v281 = v606;
      *v606 = v280;
      *(v281 + 40) = 0;
      v282 = v664;
      v283 = *(v664 + 20);
      *(v281 + v283) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
      swift_storeEnumTagMultiPayload();
      v284 = v282[6];
      *(v281 + v284) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
      swift_storeEnumTagMultiPayload();
      v285 = v282[7];
      *(v281 + v285) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v286 = v281 + v282[17];
      LOBYTE(v749) = 1;
      sub_24F926F28();
      v287 = v754;
      *v286 = v753;
      *(v286 + 8) = v287;
      sub_24F461DD8(v277, v281 + v282[8], type metadata accessor for Player);
      v288 = (v281 + v282[11]);
      v289 = v709;
      *v288 = v712;
      v288[1] = v289;
      type metadata accessor for GameActivityDraftBuilder();
      sub_24F928F28();
      v290 = v749;
      swift_beginAccess();
      v291 = *(v290 + 16);

      type metadata accessor for GameActivityPlayersDraft();
      swift_allocObject();

      v293 = sub_24F4A51AC(v292);

      *(v281 + v282[9]) = v293;
      v294 = v565;
      sub_24F461DD8(v278, v565, v279);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254CC0);
        v296 = v574;
        sub_24F461D70(v294 + *(v295 + 64), v574, type metadata accessor for GameActivityDraftGameInfo);
        v297 = type metadata accessor for GameActivityDraftGameInfo(0);
        (*(*(v297 - 8) + 56))(v296, 0, 1, v297);
        sub_24E6009C8(v296, v281 + v282[15], &qword_27F212B28);
        v298 = v607;
        if (!v291)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v467 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB70) + 48);
        v468 = sub_24F928AD8();
        (*(*(v468 - 8) + 8))(v294 + v467, v468);
        sub_24E601704(v294, &qword_27F2169E8);
        v298 = v607;
        if (!v291)
        {
          v522 = type metadata accessor for GameActivityDraftGameInfo(0);
          v523 = v574;
          (*(*(v522 - 8) + 56))(v574, 1, 1, v522);
          sub_24E6009C8(v523, v281 + v282[15], &qword_27F212B28);
LABEL_53:
          sub_24F461DD8(v668, v298, type metadata accessor for Player);
          v476 = MEMORY[0x277D84F90];
          v712 = MEMORY[0x277D84FA0];
          v709 = MEMORY[0x277D84FA0];
          goto LABEL_54;
        }

        swift_getKeyPath();
        v749 = v291;
        sub_24F457898(&qword_27F212898, type metadata accessor for GameActivityDraft);

        sub_24F91FD88();

        v469 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
        swift_beginAccess();
        v470 = v291 + v469;
        v471 = v574;
        sub_24E60169C(v470, v574, &qword_27F212B28);

        sub_24E6009C8(v471, v281 + v282[15], &qword_27F212B28);
      }

      swift_getKeyPath();
      v751 = v291;
      sub_24F457898(&qword_27F212898, type metadata accessor for GameActivityDraft);

      sub_24F91FD88();

      v712 = sub_24F4433A4(v472);

      swift_getKeyPath();
      v751 = v291;

      sub_24F91FD88();

      v709 = sub_24F4433A4(v473);

      sub_24F461DD8(v668, v298, type metadata accessor for Player);
      swift_getKeyPath();
      v751 = v291;

      sub_24F91FD88();

      v474 = *(v291 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite);

      v475 = *(v474 + 16);
      if (v475)
      {
        v751 = MEMORY[0x277D84F90];
        sub_24F4578E0(0, v475, 0);
        v476 = v751;
        v708 = v474;
        v477 = (v474 + 40);
        do
        {
          v479 = *(v477 - 1);
          v478 = *v477;
          v751 = v476;
          v481 = *(v476 + 16);
          v480 = *(v476 + 24);

          if (v481 >= v480 >> 1)
          {
            sub_24F4578E0((v480 > 1), v481 + 1, 1);
            v476 = v751;
          }

          *(v476 + 16) = v481 + 1;
          v482 = v476 + 16 * v481;
          *(v482 + 32) = v479;
          *(v482 + 40) = v478;
          v477 += 9;
          --v475;
        }

        while (v475);

        v282 = v664;
        v281 = v606;
      }

      else
      {

        v476 = MEMORY[0x277D84F90];
      }

      v298 = v607;
LABEL_54:
      v708 = sub_24F45D828(v476);

      v524 = v282;
      sub_24E60169C(v281 + v282[15], v629, &qword_27F212B28);
      type metadata accessor for GameActivityPlayerPickerDataSource(0);
      v525 = swift_allocObject();
      v526 = MEMORY[0x277D84F90];
      v525[2] = MEMORY[0x277D84F90];
      v525[3] = v526;
      v525[4] = v526;
      v525[5] = v526;
      *(v525 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__friendsThatPlayInfo) = MEMORY[0x277D84F98];
      v527 = (v525 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText);
      *v527 = 0;
      v527[1] = 0xE000000000000000;
      *(v525 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__allPickerRows) = v526;
      v528 = v713;
      sub_24F91FDB8();
      sub_24F461DD8(v298, v525 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_initiator, type metadata accessor for Player);
      v529 = sub_24F45D828(v714);

      sub_24F461E40(v298, type metadata accessor for Player);
      *(v525 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_playerIDsToExclude) = v529;
      v530 = (v525 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_preselectedInfo);
      v531 = v708;
      *v530 = v712;
      v530[1] = v531;
      v530[2] = v709;
      v532 = v729;
      *(v525 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_objectGraph) = v729;
      *(v525 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_contactStore) = v528;
      *(v525 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_shouldIncludeContact) = 1;
      *(v525 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__hasAnyFriendSuggestions) = 1;
      sub_24E6009C8(v629, v525 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_gameInfo, &qword_27F212B28);
      v533 = (v281 + v282[10]);
      v750 = v525;

      sub_24F926F28();

      sub_24F461E40(v668, type metadata accessor for Player);
      v534 = v752;
      *v533 = v751;
      v533[1] = v534;
      sub_24F461D70(v624, v281 + v282[12], type metadata accessor for ChallengesPlayerPickerMode);
      sub_24E612C80(&v740, v281 + v282[13]);
      sub_24E612C80(&v734, v281 + v282[14]);
      *(v281 + v282[16]) = v532;
      v535 = v592;
      sub_24F461D70(v281, v592, type metadata accessor for ChallengesPlayerPickerView);
      v536 = v672;
      v537 = v717;
      v715(v672, v670, v717);
      (*(v723 + 56))(v536, 0, 1, v537);

      v538 = v673;
      v539 = v702;
      sub_24F928F28();
      v540 = sub_24F921B48();
      v541 = v674;
      (*(*(v540 - 8) + 56))(v674, 1, 1, v540);
      v542 = sub_24F457898(&qword_27F219C60, type metadata accessor for ChallengesPlayerPickerView);
      v543 = v593;
      sub_24F925E58();
      sub_24E601704(v541, &qword_27F2157E8);
      (*(v675 + 8))(v538, v539);
      sub_24E601704(v536, &qword_27F2157F0);
      sub_24F461E40(v535, type metadata accessor for ChallengesPlayerPickerView);
      *&v740 = 0;
      *(&v740 + 1) = 0xE000000000000000;
      sub_24F92CA38();
      v741 = 0u;
      v740 = 0u;
      v544 = v676;
      sub_24F929838();

      sub_24E601704(&v740, &qword_27F2129B0);
      *&v740 = v524;
      *(&v740 + 1) = v542;
      v545 = swift_getOpaqueTypeConformance2();
      v546 = v597;
      v547 = v657;
      sub_24F925EE8();
      (*(v677 + 8))(v544, v678);
      (*(v595 + 8))(v543, v547);
      v548 = v598;
      v549 = v662;
      (*(v598 + 16))(v645, v546, v662);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219C50, type metadata accessor for PickActivityTransitionView);
      *&v740 = v547;
      *(&v740 + 1) = v545;
      swift_getOpaqueTypeConformance2();
      v550 = v652;
      sub_24F924E28();
      sub_24E60169C(v550, v696, &qword_27F219C48);
      swift_storeEnumTagMultiPayload();
      sub_24E713474();
      sub_24E713568();
      v551 = v697;
      sub_24F924E28();
      sub_24E601704(v550, &qword_27F219C48);
      sub_24E60169C(v551, v720, &qword_27F219C20);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v552 = v721;
      sub_24F924E28();
      sub_24E601704(v551, &qword_27F219C20);
      sub_24E60169C(v552, v727, &qword_27F219C10);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v553 = v710;
      sub_24F924E28();
      sub_24E601704(v552, &qword_27F219C10);
      sub_24E60169C(v553, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v553, &qword_27F2199C8);
      (*(v548 + 8))(v546, v549);
      (*(v723 + 8))(v670, v717);
      sub_24E601704(&v756, &qword_27F2169E8);
      sub_24E601704(v763, &qword_27F2169E8);
      sub_24F461E40(v654, type metadata accessor for ChallengesPlayerPickerMode);
      return (*(v653 + 8))(v669, v711);
    case 0xAuLL:
      v724 = v129;
      v710 = &v554 - v130;
      v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BE8);
      v419 = swift_projectBox();
      v420 = *(v418 + 48);
      v421 = v666;
      sub_24F461DD8(v419, v666, type metadata accessor for ChallengesReviewBaseInfo);
      v422 = v622;
      sub_24E60169C(v419 + v420, v622, &qword_27F243B28);
      type metadata accessor for LocalPlayerProvider();
      v423 = v729;
      sub_24F928F28();
      v424 = *&v763[0];
      swift_getKeyPath();
      *&v763[0] = v424;
      sub_24F457898(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
      sub_24F91FD88();

      v425 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
      swift_beginAccess();
      v426 = v621;
      sub_24F461DD8(v424 + v425, v621, type metadata accessor for Player);

      v427 = v421;
      v428 = v421;
      v429 = v566;
      sub_24F461DD8(v428, v566, type metadata accessor for ChallengesReviewBaseInfo);
      v430 = v568;
      sub_24E60169C(v422, v568, &qword_27F243B28);

      v431 = v569;
      sub_24F6C5B30(v426, v429, v423, v430, v569);
      v432 = v723;
      v433 = v672;
      v434 = v717;
      (*(v723 + 16))(v672, v427 + *(v567 + 44), v717);
      (*(v432 + 56))(v433, 0, 1, v434);
      v435 = v673;
      v436 = v702;
      sub_24F928F28();
      v437 = sub_24F921B48();
      v438 = v674;
      (*(*(v437 - 8) + 56))(v674, 1, 1, v437);
      v439 = sub_24F457898(&qword_27F219C90, type metadata accessor for ChallengesReviewView);
      v440 = v572;
      v441 = v625;
      sub_24F925E58();
      sub_24E601704(v438, &qword_27F2157E8);
      (*(v675 + 8))(v435, v436);
      sub_24E601704(v433, &qword_27F2157F0);
      sub_24F461E40(v431, type metadata accessor for ChallengesReviewView);
      *&v763[0] = 0;
      *(&v763[0] + 1) = 0xE000000000000000;
      sub_24F92CA38();
      memset(v763, 0, 32);
      v442 = v676;
      sub_24F929838();

      sub_24E601704(v763, &qword_27F2129B0);
      *&v763[0] = v441;
      *(&v763[0] + 1) = v439;
      v443 = swift_getOpaqueTypeConformance2();
      v444 = v623;
      v445 = v628;
      sub_24F925EE8();
      (*(v677 + 8))(v442, v678);
      (*(v573 + 8))(v440, v445);
      v446 = v580;
      v447 = v444;
      v448 = v647;
      (*(v580 + 16))(v639, v447, v647);
      swift_storeEnumTagMultiPayload();
      *&v763[0] = v445;
      *(&v763[0] + 1) = v443;
      swift_getOpaqueTypeConformance2();
      v449 = sub_24F457898(&qword_27F219CA8, type metadata accessor for MultiplayerActivityReviewView);
      *&v763[0] = v641;
      *(&v763[0] + 1) = v449;
      v450 = swift_getOpaqueTypeConformance2();
      *&v763[0] = v642;
      *(&v763[0] + 1) = v450;
      v451 = swift_getOpaqueTypeConformance2();
      *&v763[0] = v650;
      *(&v763[0] + 1) = v451;
      swift_getOpaqueTypeConformance2();
      v452 = v648;
      sub_24F924E28();
      sub_24E60169C(v452, v701, &qword_27F219C80);
      swift_storeEnumTagMultiPayload();
      sub_24E713754();
      sub_24E713954();
      v453 = v703;
      sub_24F924E28();
      sub_24E601704(v452, &qword_27F219C80);
      sub_24E60169C(v453, v720, &qword_27F219C70);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v454 = v721;
      sub_24F924E28();
      sub_24E601704(v453, &qword_27F219C70);
      sub_24E60169C(v454, v727, &qword_27F219C10);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v455 = v710;
      sub_24F924E28();
      sub_24E601704(v454, &qword_27F219C10);
      sub_24E60169C(v455, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v455, &qword_27F2199C8);
      (*(v446 + 8))(v623, v448);
      sub_24E601704(v622, &qword_27F243B28);
      return sub_24F461E40(v666, type metadata accessor for ChallengesReviewBaseInfo);
    case 0xBuLL:
      v724 = v129;
      v710 = &v554 - v130;
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BE0);
      v197 = swift_projectBox();
      v198 = (v197 + *(v196 + 48));
      v200 = *v198;
      v199 = v198[1];
      v201 = v198[3];
      v763[2] = v198[2];
      v763[3] = v201;
      v763[0] = v200;
      v763[1] = v199;
      v202 = v667;
      sub_24F461DD8(v197, v667, type metadata accessor for MultiplayerActivityReviewBaseInfo);
      type metadata accessor for LocalPlayerProvider();
      sub_24F352A58(v763, &v756);
      v203 = v729;
      sub_24F928F28();
      v204 = v756;
      swift_getKeyPath();
      *&v756 = v204;
      sub_24F457898(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
      sub_24F91FD88();

      v205 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
      swift_beginAccess();
      v206 = v621;
      sub_24F461DD8(v204 + v205, v621, type metadata accessor for Player);

      v756 = v763[0];
      v757 = v763[1];
      v758 = v763[2];
      v759 = v763[3];
      v207 = v570;
      sub_24F461DD8(v202, v570, type metadata accessor for MultiplayerActivityReviewBaseInfo);

      v208 = v579;
      sub_24E9A35B8(v206, &v756, v207, v203, v579);
      v209 = v723;
      v210 = v672;
      v211 = v717;
      (*(v723 + 16))(v672, v202 + *(v571 + 20), v717);
      (*(v209 + 56))(v210, 0, 1, v211);
      v212 = v673;
      v213 = v702;
      sub_24F928F28();
      v214 = sub_24F921B48();
      v215 = v674;
      (*(*(v214 - 8) + 56))(v674, 1, 1, v214);
      v216 = sub_24F457898(&qword_27F219CA8, type metadata accessor for MultiplayerActivityReviewView);
      v217 = v582;
      v218 = v641;
      sub_24F925E58();
      sub_24E601704(v215, &qword_27F2157E8);
      (*(v675 + 8))(v212, v213);
      sub_24E601704(v210, &qword_27F2157F0);
      sub_24F461E40(v208, type metadata accessor for MultiplayerActivityReviewView);
      *&v756 = 0;
      *(&v756 + 1) = 0xE000000000000000;
      sub_24F92CA38();
      v756 = 0u;
      v757 = 0u;
      v219 = v676;
      sub_24F929838();

      sub_24E601704(&v756, &qword_27F2129B0);
      *&v756 = v218;
      *(&v756 + 1) = v216;
      v220 = swift_getOpaqueTypeConformance2();
      v221 = v581;
      v222 = v642;
      sub_24F925EE8();
      (*(v677 + 8))(v219, v678);
      (*(v584 + 8))(v217, v222);
      *&v756 = v222;
      *(&v756 + 1) = v220;
      v223 = swift_getOpaqueTypeConformance2();
      v224 = v630;
      v225 = v650;
      sub_24F925F48();
      (*(v583 + 8))(v221, v225);
      v226 = v588;
      v227 = v661;
      (*(v588 + 16))(v639, v224, v661);
      swift_storeEnumTagMultiPayload();
      v228 = sub_24F457898(&qword_27F219C90, type metadata accessor for ChallengesReviewView);
      *&v756 = v625;
      *(&v756 + 1) = v228;
      v229 = swift_getOpaqueTypeConformance2();
      *&v756 = v628;
      *(&v756 + 1) = v229;
      swift_getOpaqueTypeConformance2();
      *&v756 = v225;
      *(&v756 + 1) = v223;
      swift_getOpaqueTypeConformance2();
      v230 = v648;
      sub_24F924E28();
      sub_24E60169C(v230, v701, &qword_27F219C80);
      swift_storeEnumTagMultiPayload();
      sub_24E713754();
      sub_24E713954();
      v231 = v703;
      sub_24F924E28();
      sub_24E601704(v230, &qword_27F219C80);
      sub_24E60169C(v231, v720, &qword_27F219C70);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v232 = v721;
      sub_24F924E28();
      sub_24E601704(v231, &qword_27F219C70);
      sub_24E60169C(v232, v727, &qword_27F219C10);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v233 = v710;
      sub_24F924E28();
      sub_24E601704(v232, &qword_27F219C10);
      sub_24E60169C(v233, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v233, &qword_27F2199C8);
      (*(v226 + 8))(v630, v227);
      return sub_24F461E40(v667, type metadata accessor for MultiplayerActivityReviewBaseInfo);
    case 0xCuLL:
      v724 = v129;
      v239 = &v554 - v130;
      v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BD8);
      v241 = swift_projectBox();
      v242 = (v241 + *(v240 + 48));
      v244 = *v242;
      v243 = v242[1];
      v246 = v242[2];
      v245 = v242[3];
      v247 = v585;
      sub_24F461DD8(v241, v585, type metadata accessor for RecordingAssociation);
      v248 = v586;
      sub_24F461DD8(v247, v586, type metadata accessor for RecordingAssociation);

      v249 = v575;
      sub_24F924AC8();
      v250 = v626;
      v251 = (v248 + *(v626 + 20));
      *v251 = v244;
      v251[1] = v243;
      v251[2] = v246;
      v251[3] = v245;
      *(v248 + v250[6]) = v729;
      v252 = v248 + v250[7];
      *v252 = swift_getKeyPath();
      *(v252 + 40) = 0;
      v253 = v250[8];
      *(v248 + v253) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
      swift_storeEnumTagMultiPayload();
      v254 = v248 + v250[9];
      LOBYTE(v756) = 0;

      sub_24F926F28();
      v255 = *(&v763[0] + 1);
      *v254 = v763[0];
      *(v254 + 8) = v255;
      v256 = v577;
      v257 = v578;
      (*(v577 + 16))(v576, v249, v578);
      sub_24F926F28();
      (*(v256 + 8))(v249, v257);
      v258 = (v248 + v250[11]);
      *&v756 = 0x3FF0000000000000;
      sub_24F926F28();
      v259 = *(&v763[0] + 1);
      *v258 = *&v763[0];
      v258[1] = v259;
      v260 = (v248 + v250[12]);
      *&v756 = 0;
      sub_24F926F28();
      v261 = *(&v763[0] + 1);
      *v260 = *&v763[0];
      v260[1] = v261;
      sub_24F461DD8(v248, v631, type metadata accessor for RecordingFullScreenView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219CC0, type metadata accessor for RecordingFullScreenView);
      sub_24E713A10();
      v262 = v635;
      sub_24F924E28();
      sub_24E60169C(v262, v701, &qword_27F219CB8);
      swift_storeEnumTagMultiPayload();
      sub_24E713754();
      sub_24E713954();
      v263 = v703;
      sub_24F924E28();
      sub_24E601704(v262, &qword_27F219CB8);
      sub_24E60169C(v263, v720, &qword_27F219C70);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v264 = v721;
      sub_24F924E28();
      sub_24E601704(v263, &qword_27F219C70);
      sub_24E60169C(v264, v727, &qword_27F219C10);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      sub_24F924E28();
      sub_24E601704(v264, &qword_27F219C10);
      sub_24E60169C(v239, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v239, &qword_27F2199C8);
      sub_24F461E40(v248, type metadata accessor for RecordingFullScreenView);
      return sub_24F461E40(v247, type metadata accessor for RecordingAssociation);
    case 0xDuLL:
      v724 = v129;
      v710 = &v554 - v130;
      v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BD0);
      v390 = swift_projectBox();
      v392 = *v390;
      v391 = v390[1];
      v393 = *(v389 + 80);
      sub_24E60169C((v390 + 2), v763, &qword_27F213EA8);
      sub_24E60169C((v390 + 7), &v756, &qword_27F213EA8);
      v394 = *(v723 + 16);
      v395 = v693;
      v396 = v717;
      v394(v693, v390 + v393, v717);
      v397 = v587;
      sub_24E60169C(v763, (v587 + 16), qword_27F21B590);
      sub_24E60169C(&v756, (v397 + 56), qword_27F21B590);
      v398 = type metadata accessor for ActivitySharingPromptView();
      v394(&v397[v398[8]], v395, v396);
      *v397 = v392;
      *(v397 + 1) = v391;
      *(v397 + 12) = v729;
      v399 = v398[9];
      *&v397[v399] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
      swift_storeEnumTagMultiPayload();
      v400 = v398[10];
      *&v397[v400] = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v401 = v398[11];
      *&v397[v401] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v402 = &v397[v398[12]];
      *v402 = swift_getKeyPath();
      v402[40] = 0;
      v403 = v398[13];
      *&v397[v403] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
      swift_storeEnumTagMultiPayload();
      sub_24E60169C(v397, v631, &qword_27F219CD0);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219CC0, type metadata accessor for RecordingFullScreenView);
      sub_24E713A10();

      v404 = v635;
      sub_24F924E28();
      sub_24E60169C(v404, v701, &qword_27F219CB8);
      swift_storeEnumTagMultiPayload();
      sub_24E713754();
      sub_24E713954();
      v405 = v703;
      sub_24F924E28();
      sub_24E601704(v404, &qword_27F219CB8);
      sub_24E60169C(v405, v720, &qword_27F219C70);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v406 = v721;
      sub_24F924E28();
      sub_24E601704(v405, &qword_27F219C70);
      sub_24E60169C(v406, v727, &qword_27F219C10);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v407 = v710;
      sub_24F924E28();
      sub_24E601704(v406, &qword_27F219C10);
      sub_24E60169C(v407, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v407, &qword_27F2199C8);
      sub_24E601704(v397, &qword_27F219CD0);
      (*(v723 + 8))(v693, v396);
      goto LABEL_44;
    case 0xEuLL:
      v724 = v129;
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BC8);
      v176 = swift_projectBox();
      v177 = *(v175 + 64);
      sub_24E60169C(v176, v763, &qword_27F213EA8);
      sub_24E60169C(v176 + 40, &v756, &qword_27F213EA8);
      v178 = *(v723 + 16);
      v179 = v693;
      v180 = v717;
      v178(v693, v176 + v177, v717);
      v181 = v591;
      sub_24E60169C(v763, v591, qword_27F21B590);
      sub_24E60169C(&v756, v181 + 40, qword_27F21B590);
      v182 = type metadata accessor for ContactsIntegrationPromptView();
      v178((v181 + v182[7]), v179, v180);
      *(v181 + 80) = v729;
      v183 = v182[8];
      *(v181 + v183) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
      swift_storeEnumTagMultiPayload();
      v184 = v182[9];
      *(v181 + v184) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v185 = v182[10];
      *(v181 + v185) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v186 = v181 + v182[11];
      *v186 = swift_getKeyPath();
      *(v186 + 40) = 0;
      v187 = v182[12];
      *(v181 + v187) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
      swift_storeEnumTagMultiPayload();
      sub_24E60169C(v181, v638, &qword_27F219D38);
      swift_storeEnumTagMultiPayload();
      sub_24E713EFC();
      v188 = sub_24F457898(&qword_27F219D58, type metadata accessor for PlayTogetherWelcomePageView);

      *&v740 = v651;
      *(&v740 + 1) = v188;
      swift_getOpaqueTypeConformance2();
      v189 = v646;
      sub_24F924E28();
      sub_24E60169C(v189, v690, &qword_27F219D28);
      swift_storeEnumTagMultiPayload();
      sub_24E713E08();
      sub_24E714044();
      v190 = v692;
      sub_24F924E28();
      sub_24E601704(v189, &qword_27F219D28);
      sub_24E60169C(v190, v707, &qword_27F219D18);
      swift_storeEnumTagMultiPayload();
      sub_24E713D7C();
      v191 = type metadata accessor for FlowAction();
      v192 = sub_24F457898(&qword_27F219DB8, type metadata accessor for InviteFriendsPageView);
      v193 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction);
      v194 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction);
      *&v740 = v709;
      *(&v740 + 1) = v191;
      *&v741 = v192;
      *(&v741 + 1) = v193;
      *&v742 = v194;
      swift_getOpaqueTypeConformance2();
      v195 = v708;
      sub_24F924E28();
      sub_24E601704(v190, &qword_27F219D18);
      sub_24E60169C(v195, v731, &qword_27F219D08);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v195, &qword_27F219D08);
      sub_24E601704(v181, &qword_27F219D38);
      (*(v723 + 8))(v693, v717);
LABEL_44:
      sub_24E601704(&v756, &qword_27F213EA8);
      return sub_24E601704(v763, &qword_27F213EA8);
    case 0xFuLL:
      v724 = v129;
      v308 = swift_projectBox();
      v309 = v643;
      sub_24F461DD8(v308, v643, type metadata accessor for PlayTogetherWelcomePage);
      v310 = v589;
      sub_24F461DD8(v309, v589, type metadata accessor for PlayTogetherWelcomePage);
      v311 = v651;
      v312 = *(v651 + 24);
      *(v310 + v312) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
      swift_storeEnumTagMultiPayload();
      v313 = v311[7];
      *(v310 + v313) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v314 = v311[8];
      *(v310 + v314) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v315 = v310 + v311[9];
      *v315 = swift_getKeyPath();
      *(v315 + 40) = 0;
      v316 = v311[10];
      *(v310 + v316) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
      swift_storeEnumTagMultiPayload();
      *(v310 + v311[5]) = v729;
      v317 = sub_24F457898(&qword_27F219D58, type metadata accessor for PlayTogetherWelcomePageView);

      v318 = v644;
      sub_24F925F48();
      sub_24F461E40(v310, type metadata accessor for PlayTogetherWelcomePageView);
      (*(v649 + 16))(v638, v318, v671);
      swift_storeEnumTagMultiPayload();
      sub_24E713EFC();
      *&v763[0] = v311;
      *(&v763[0] + 1) = v317;
      swift_getOpaqueTypeConformance2();
      v319 = v646;
      sub_24F924E28();
      sub_24E60169C(v319, v690, &qword_27F219D28);
      swift_storeEnumTagMultiPayload();
      sub_24E713E08();
      sub_24E714044();
      v320 = v692;
      sub_24F924E28();
      sub_24E601704(v319, &qword_27F219D28);
      sub_24E60169C(v320, v707, &qword_27F219D18);
      swift_storeEnumTagMultiPayload();
      sub_24E713D7C();
      v321 = type metadata accessor for FlowAction();
      v322 = sub_24F457898(&qword_27F219DB8, type metadata accessor for InviteFriendsPageView);
      v323 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction);
      v324 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction);
      *&v763[0] = v709;
      *(&v763[0] + 1) = v321;
      *&v763[1] = v322;
      *(&v763[1] + 1) = v323;
      *&v763[2] = v324;
      swift_getOpaqueTypeConformance2();
      v325 = v708;
      sub_24F924E28();
      sub_24E601704(v320, &qword_27F219D18);
      sub_24E60169C(v325, v731, &qword_27F219D08);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v325, &qword_27F219D08);
      (*(v649 + 8))(v644, v671);
      return sub_24F461E40(v643, type metadata accessor for PlayTogetherWelcomePage);
    case 0x10uLL:
      v724 = v129;
      v150 = swift_projectBox();
      v151 = v655;
      sub_24F461DD8(v150, v655, type metadata accessor for AchievementDetails);
      v152 = v590;
      sub_24F461DD8(v151, v590, type metadata accessor for AchievementDetails);
      v153 = v602;
      v154 = v594;
      v155 = &v594[*(v602 + 24)];
      if (qword_27F210E90 != -1)
      {
        swift_once();
      }

      memcpy(v763, &xmmword_27F237800, 0x178uLL);
      memcpy(v155, &xmmword_27F237800, 0x178uLL);
      v156 = (v154 + *(v153 + 28));
      sub_24F929EB8();
      sub_24E76A93C(v763, &v756);
      *&v740 = sub_24F929EA8();
      sub_24F926F28();
      v157 = *(&v756 + 1);
      *v156 = v756;
      v156[1] = v157;
      sub_24F461DD8(v152, v154, type metadata accessor for AchievementDetails);
      v158 = v729;
      *(v154 + *(v153 + 20)) = v729;

      sub_24F928F28();
      v728 = type metadata accessor for AchievementDetails;
      v159 = sub_24F461E40(v152, type metadata accessor for AchievementDetails);
      MEMORY[0x28223BE20](v159);
      *(&v554 - 2) = v151;
      *(&v554 - 1) = v158;
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D70);
      v161 = sub_24F457898(&qword_27F219D78, type metadata accessor for AchievementDetailsPageView);
      v162 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D80);
      v163 = sub_24E7141DC();
      *&v756 = v162;
      *(&v756 + 1) = v163;
      v164 = swift_getOpaqueTypeConformance2();
      v165 = v659;
      sub_24F926A58();
      sub_24F461E40(v154, type metadata accessor for AchievementDetailsPageView);
      (*(v660 + 16))(v603, v165, v663);
      swift_storeEnumTagMultiPayload();
      *&v756 = v153;
      *(&v756 + 1) = v160;
      *&v757 = v161;
      *(&v757 + 1) = v164;
      swift_getOpaqueTypeConformance2();
      v166 = sub_24E7142E0();
      *&v756 = v604;
      *(&v756 + 1) = v166;
      swift_getOpaqueTypeConformance2();
      v167 = v605;
      sub_24F924E28();
      sub_24E60169C(v167, v690, &qword_27F219D68);
      swift_storeEnumTagMultiPayload();
      sub_24E713E08();
      sub_24E714044();
      v168 = v692;
      sub_24F924E28();
      sub_24E601704(v167, &qword_27F219D68);
      sub_24E60169C(v168, v707, &qword_27F219D18);
      swift_storeEnumTagMultiPayload();
      sub_24E713D7C();
      v169 = type metadata accessor for FlowAction();
      v170 = sub_24F457898(&qword_27F219DB8, type metadata accessor for InviteFriendsPageView);
      v171 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction);
      v172 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction);
      *&v756 = v709;
      *(&v756 + 1) = v169;
      *&v757 = v170;
      *(&v757 + 1) = v171;
      *&v758 = v172;
      swift_getOpaqueTypeConformance2();
      v173 = v708;
      sub_24F924E28();
      sub_24E601704(v168, &qword_27F219D18);
      sub_24E60169C(v173, v731, &qword_27F219D08);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v173, &qword_27F219D08);
      (*(v660 + 8))(v659, v663);
      return sub_24F461E40(v655, v728);
    case 0x11uLL:
      v724 = v129;
      v358 = swift_projectBox();
      v359 = v656;
      sub_24F461DD8(v358, v656, type metadata accessor for InviteFriendsPageIntent);
      v360 = v596;
      sub_24F461DD8(v359, v596, type metadata accessor for InviteFriendsPageIntent);
      v361 = v709;
      *(v360 + *(v709 + 20)) = v729;
      v362 = (v360 + v361[6]);
      type metadata accessor for InviteFriendsSearchPagePresenter(0);
      swift_allocObject();

      *&v756 = sub_24EE48948();
      sub_24F926F28();
      v363 = *(&v763[0] + 1);
      *v362 = *&v763[0];
      v362[1] = v363;
      v364 = v360 + v361[7];
      *v364 = sub_24F923398() & 1;
      *(v364 + 8) = v365;
      *(v364 + 16) = v366 & 1;
      v367 = v360 + v361[8];
      *v367 = swift_getKeyPath();
      *(v367 + 8) = 0;
      v368 = v361[9];
      *(v360 + v368) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231510);
      swift_storeEnumTagMultiPayload();
      *(v360 + v361[10]) = 1;
      v369 = v361[11];
      *(v360 + v369) = sub_24F9258F8();
      v370 = type metadata accessor for FlowAction();
      v371 = sub_24F457898(&qword_27F219DB8, type metadata accessor for InviteFriendsPageView);
      v372 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction);
      v373 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction);
      v374 = v658;
      sub_24F925E78();
      sub_24F461E40(v360, type metadata accessor for InviteFriendsPageView);
      v375 = v599;
      v376 = v374;
      v377 = v710;
      (*(v599 + 16))(v707, v376, v710);
      swift_storeEnumTagMultiPayload();
      sub_24E713D7C();
      *&v763[0] = v361;
      *(&v763[0] + 1) = v370;
      *&v763[1] = v371;
      *(&v763[1] + 1) = v372;
      *&v763[2] = v373;
      swift_getOpaqueTypeConformance2();
      v378 = v708;
      sub_24F924E28();
      sub_24E60169C(v378, v731, &qword_27F219D08);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v378, &qword_27F219D08);
      (*(v375 + 8))(v658, v377);
      return sub_24F461E40(v656, type metadata accessor for InviteFriendsPageIntent);
    case 0x12uLL:
      if (v132 == 0x9000000000000000)
      {
        v494 = &v554 - v130;
        sub_24EE76C58(v763);
        v745 = v763[5];
        v746[0] = v763[6];
        *(v746 + 9) = *(&v763[6] + 9);
        v740 = v763[0];
        v741 = v763[1];
        v742 = v763[2];
        v743 = v763[3];
        v744 = v763[4];
        sub_24E71218C();
        sub_24F924E28();
        v495 = v761;
        v496 = v680;
        v680[4] = v760;
        v496[5] = v495;
        v496[6] = v762[0];
        *(v496 + 105) = *(v762 + 9);
        v497 = v757;
        *v496 = v756;
        v496[1] = v497;
        v498 = v759;
        v496[2] = v758;
        v496[3] = v498;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199F8);
        sub_24E712100();
        sub_24E7121E0();
        v499 = v681;
        sub_24F924E28();
        sub_24E60169C(v499, v714, &qword_27F2199E8);
        swift_storeEnumTagMultiPayload();
        sub_24E712074();
        sub_24E71304C();
        v500 = v716;
        sub_24F924E28();
        sub_24E601704(v499, &qword_27F2199E8);
        sub_24E60169C(v500, v727, &qword_27F2199D8);
        swift_storeEnumTagMultiPayload();
        sub_24E711FE8();
        sub_24E71335C();
        sub_24F924E28();
        sub_24E601704(v500, &qword_27F2199D8);
        sub_24E60169C(v494, v731, &qword_27F2199C8);
        swift_storeEnumTagMultiPayload();
        sub_24E711F5C();
        sub_24E713C00();
        sub_24F924E28();
        v149 = v494;
        return sub_24E601704(v149, &qword_27F2199C8);
      }

      v724 = v129;
      if (v132 == 0x9000000000000008)
      {
        *v108 = xmmword_24F9F8720;
        v108[16] = 0;
        *(v108 + 3) = MEMORY[0x277D84F90];
        v414 = &v554 - v130;
        swift_storeEnumTagMultiPayload();
        sub_24E713164();
        v415 = v600;
        sub_24F924E28();
        sub_24E60169C(v415, v685, &qword_27F219BC8);
        swift_storeEnumTagMultiPayload();
        sub_24E7130D8();
        sub_24E713220();
        v416 = v687;
        sub_24F924E28();
        sub_24E601704(v415, &qword_27F219BC8);
        sub_24E60169C(v416, v714, &qword_27F219BB8);
        swift_storeEnumTagMultiPayload();
        sub_24E712074();
        sub_24E71304C();
        v417 = v716;
        sub_24F924E28();
        sub_24E601704(v416, &qword_27F219BB8);
        sub_24E60169C(v417, v727, &qword_27F2199D8);
        swift_storeEnumTagMultiPayload();
        sub_24E711FE8();
        sub_24E71335C();
        sub_24F924E28();
        sub_24E601704(v417, &qword_27F2199D8);
        sub_24E60169C(v414, v731, &qword_27F2199C8);
        swift_storeEnumTagMultiPayload();
        sub_24E711F5C();
        sub_24E713C00();
        sub_24F924E28();
        v149 = v414;
        return sub_24E601704(v149, &qword_27F2199C8);
      }

      type metadata accessor for LocalPlayerProvider();
      sub_24F928F28();
      v501 = *&v763[0];
      type metadata accessor for ASKBagContract();
      sub_24F928F28();
      v502 = v554;
      sub_24EC87690(v501, v756, v554);
      if (qword_27F211278 != -1)
      {
        swift_once();
      }

      v503 = qword_27F2431D0;
      v504 = swift_getKeyPath();
      *&v763[0] = v503;

      v505 = sub_24F9238D8();
      v506 = v604;
      v507 = (v502 + *(v604 + 36));
      *v507 = v504;
      v507[1] = v505;
      v508 = sub_24E7142E0();
      v509 = v555;
      sub_24F925F48();
      sub_24E601704(v502, &qword_27F219D98);
      (*(v556 + 16))(v603, v509, v608);
      swift_storeEnumTagMultiPayload();
      v510 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D70);
      v511 = sub_24F457898(&qword_27F219D78, type metadata accessor for AchievementDetailsPageView);
      v512 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D80);
      v513 = sub_24E7141DC();
      *&v763[0] = v512;
      *(&v763[0] + 1) = v513;
      v514 = swift_getOpaqueTypeConformance2();
      *&v763[0] = v602;
      *(&v763[0] + 1) = v510;
      *&v763[1] = v511;
      *(&v763[1] + 1) = v514;
      swift_getOpaqueTypeConformance2();
      *&v763[0] = v506;
      *(&v763[0] + 1) = v508;
      swift_getOpaqueTypeConformance2();
      v515 = v605;
      sub_24F924E28();
      sub_24E60169C(v515, v690, &qword_27F219D68);
      swift_storeEnumTagMultiPayload();
      sub_24E713E08();
      sub_24E714044();
      v516 = v692;
      sub_24F924E28();
      sub_24E601704(v515, &qword_27F219D68);
      sub_24E60169C(v516, v707, &qword_27F219D18);
      swift_storeEnumTagMultiPayload();
      sub_24E713D7C();
      v517 = type metadata accessor for FlowAction();
      v518 = sub_24F457898(&qword_27F219DB8, type metadata accessor for InviteFriendsPageView);
      v519 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction);
      v520 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction);
      *&v763[0] = v709;
      *(&v763[0] + 1) = v517;
      *&v763[1] = v518;
      *(&v763[1] + 1) = v519;
      *&v763[2] = v520;
      swift_getOpaqueTypeConformance2();
      v521 = v708;
      sub_24F924E28();
      sub_24E601704(v516, &qword_27F219D18);
      sub_24E60169C(v521, v731, &qword_27F219D08);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v521, &qword_27F219D08);
      return (*(v556 + 8))(v555, v608);
    default:
      v710 = &v554 - v130;
      v724 = v129;
      v133 = *(v132 + 24);
      v723 = *(v132 + 16);
      v134 = *(v132 + 32);
      type metadata accessor for ASKBagContract();
      v135 = v133;

      v722 = v134;

      v136 = v729;
      sub_24F928F28();
      v137 = v740;
      type metadata accessor for LocalPlayerProvider();
      sub_24F928F28();
      v138 = v734;
      type metadata accessor for ArcadeSubscription();
      sub_24F928F28();
      v139 = v755;
      if (qword_27F20FF08 != -1)
      {
        swift_once();
      }

      v756 = xmmword_27F39ACF8;
      v757 = xmmword_27F39AD08;
      LOBYTE(v758) = byte_27F39AD18;

      sub_24F926F28();
      v720 = v763[0];
      v718 = *(&v763[1] + 1);
      v719 = *&v763[1];
      LODWORD(v717) = LOBYTE(v763[2]);
      v721 = *(&v763[2] + 1);
      swift_retain_n();

      v140 = v722;

      v141 = v723;
      *&v756 = sub_24F35D2AC(v136, v139, v723, v135, v140);
      type metadata accessor for GenericPageViewModel();

      sub_24F926F28();

      *&v734 = v136;
      *(&v734 + 1) = v137;
      *&v735 = v138;
      *(&v735 + 1) = v139;
      *&v736 = v141;
      *(&v736 + 1) = v135;
      *v737 = v140;
      *&v737[8] = v763[0];
      *&v737[24] = v720;
      *&v737[40] = v719;
      *&v738 = v718;
      BYTE8(v738) = v717;
      HIDWORD(v738) = *(v763 + 3);
      *(&v738 + 9) = v763[0];
      v739 = v721;
      *&v763[7] = v721;
      v763[5] = *&v737[32];
      v763[6] = v738;
      v763[3] = *v737;
      v763[4] = *&v737[16];
      v763[1] = v735;
      v763[2] = v736;
      v763[0] = v734;
      sub_24EE76BCC(v763);
      v745 = v763[5];
      v746[0] = v763[6];
      *(v746 + 9) = *(&v763[6] + 9);
      v740 = v763[0];
      v741 = v763[1];
      v742 = v763[2];
      v743 = v763[3];
      v744 = v763[4];
      sub_24F35C490(&v734, &v756);
      sub_24E71218C();
      sub_24F924E28();
      v142 = v761;
      v143 = v680;
      v680[4] = v760;
      v143[5] = v142;
      v143[6] = v762[0];
      *(v143 + 105) = *(v762 + 9);
      v144 = v757;
      *v143 = v756;
      v143[1] = v144;
      v145 = v759;
      v143[2] = v758;
      v143[3] = v145;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199F8);
      sub_24E712100();
      sub_24E7121E0();
      v146 = v681;
      sub_24F924E28();
      sub_24E60169C(v146, v714, &qword_27F2199E8);
      swift_storeEnumTagMultiPayload();
      sub_24E712074();
      sub_24E71304C();
      v147 = v716;
      sub_24F924E28();
      sub_24E601704(v146, &qword_27F2199E8);
      sub_24E60169C(v147, v727, &qword_27F2199D8);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v148 = v710;
      sub_24F924E28();
      sub_24E601704(v147, &qword_27F2199D8);
      sub_24E60169C(v148, v731, &qword_27F2199C8);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24F45E614(&v734);
      v149 = v148;
      return sub_24E601704(v149, &qword_27F2199C8);
  }
}