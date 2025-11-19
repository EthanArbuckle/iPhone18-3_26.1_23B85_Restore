uint64_t sub_1E61480DC()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[2];

  v0[16] = sub_1E65E5938();

  return MEMORY[0x1EEE6DFA0](sub_1E6148168, v5, 0);
}

uint64_t sub_1E6148168()
{
  v1 = v0[14];
  v2 = v0[2];

  v0[17] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61481FC, v4, v3);
}

uint64_t sub_1E61481FC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[2];

  sub_1E65E5928();

  return MEMORY[0x1EEE6DFA0](sub_1E614828C, v3, 0);
}

uint64_t sub_1E614828C()
{
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v19 = v0[4];
  v7 = v0[2];
  ObjectType = swift_getObjectType();
  sub_1E6148FC8(v4, v2, type metadata accessor for AppComposer);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v0[18] = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v1;
  sub_1E5E1E048(v2, v10 + v9, type metadata accessor for AppComposer);
  v11 = *(v19 + 24);

  v12 = v1;
  v18 = (v11 + *v11);
  v13 = v11[1];
  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = sub_1E6148460;
  v16 = v0[3];
  v15 = v0[4];

  return v18(sub_1E6149144, v10, ObjectType, v15);
}

uint64_t sub_1E6148460()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E614858C, v3, 0);
}

uint64_t sub_1E614858C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E6148604(uint64_t a1)
{
  v2 = type metadata accessor for NotificationsConsentDetour.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = type metadata accessor for RouteDestination();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v27 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  v20 = OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_state;
  swift_beginAccess();
  sub_1E6148FC8(a1 + v20, v8, type metadata accessor for NotificationsConsentDetour.State);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v8, 1, v21) == 1)
  {
    return sub_1E61491B8(v8, type metadata accessor for NotificationsConsentDetour.State);
  }

  v27 = v13;
  v24 = *(v21 + 48);
  (*(v16 + 32))(v19, v8, v15);
  v25 = &v8[v24];
  v26 = v28;
  sub_1E5E1E048(v25, v28, type metadata accessor for RouteDestination);
  (*(v22 + 56))(v6, 1, 1, v21);
  swift_beginAccess();
  sub_1E6148F64(v6, a1 + v20);
  swift_endAccess();
  sub_1E6148FC8(v26, v27, type metadata accessor for RouteDestination);
  sub_1E65E5FF8();
  sub_1E61491B8(v26, type metadata accessor for RouteDestination);
  return (*(v16 + 8))(v19, v15);
}

id sub_1E6148958(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + *(type metadata accessor for AppComposer() + 20) + 8);
  if (v7 < 2)
  {
    v8 = sel_presentViewController_animated_completion_;
    v9 = a1;
    v10 = a3;
    v11 = 1;
    v6 = 0;

    return [v9 v8];
  }

  if (v7 == 3)
  {
    v8 = sel_pushViewController_animated_;
    v9 = a1;
    v10 = a3;
    v11 = 0;

    return [v9 v8];
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E6148A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1E64B80F8(0, 0, v5, &unk_1E65F32D8, v7);
}

uint64_t sub_1E6148B8C()
{
  v1 = *(v0 + 16);
  sub_1E65E6018();
  sub_1E6148F0C(&qword_1ED071E30, MEMORY[0x1E69E8550]);
  *(v0 + 24) = swift_allocError();
  sub_1E65E5AE8();

  return MEMORY[0x1EEE6DFA0](sub_1E6148C50, v1, 0);
}

uint64_t sub_1E6148C50()
{
  v1 = *(v0 + 24);
  sub_1E614639C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6148CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E5DFA78C;

  return sub_1E6146850(a1, a2, a3, a4, a5);
}

uint64_t sub_1E6148D88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E61479D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E6148E58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6148B6C(a1, v4, v5, v6);
}

uint64_t sub_1E6148F0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6148F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsConsentDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6148FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6149030(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFA78C;

  return sub_1E6147EC0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

id sub_1E6149144(void *a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1E6148958(a1, v4, v5, v6);
}

uint64_t sub_1E61491B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6149220(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_1E614EA14, v5);
}

void sub_1E61492B4(uint64_t a1, uint64_t a2)
{
  sub_1E5DEF738(0, &qword_1ED073D28, 0x1E69DCC78);
  v3 = sub_1E65E5EF8();
  (*(a2 + 16))(a2, v3);
}

void AppCoordinator.configureMenuBarBuilder(_:)(void *a1)
{
  v2 = v1;
  v45 = type metadata accessor for AppEnvironment();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v47 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v14 = sub_1E65E3B68();
  __swift_project_value_buffer(v14, qword_1EE2EA2A0);
  sub_1E65E3B38();
  [a1 removeMenuForIdentifier_];
  [a1 removeMenuForIdentifier_];
  v15 = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_composer;
  v16 = v2 + *(type metadata accessor for AppComposer() + 20) + v15;
  v48 = [a1 menuForIdentifier_];
  [a1 removeMenuForIdentifier_];
  v46 = (v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver);
  sub_1E60190C0(v16, v13);
  v17 = *(v4 + 80);
  v18 = v13;
  v43 = v13;
  v19 = (v17 + 16) & ~v17;
  v20 = swift_allocObject();
  sub_1E5DFAB18(v18, v20 + v19, type metadata accessor for AppEnvironment);
  v21 = v47;
  sub_1E60190C0(v16, v47);
  v22 = swift_allocObject();
  sub_1E5DFAB18(v21, v22 + v19, type metadata accessor for AppEnvironment);
  sub_1E60190C0(v16, v9);
  v23 = swift_allocObject();
  v49 = a1;
  v24 = v23;
  sub_1E5DFAB18(v9, v23 + v19, type metadata accessor for AppEnvironment);
  v25 = v44;
  sub_1E60190C0(v16, v44);
  v26 = swift_allocObject();
  sub_1E5DFAB18(v25, v26 + v19, type metadata accessor for AppEnvironment);
  v27 = __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v28 = sub_1E614B9A8(v48, *v27, &unk_1E65F3328, v20, &unk_1E65F3338, v22, &unk_1E65F3348, v24, &unk_1E65F3358, v26);

  [v49 insertSiblingMenu:v28 afterMenuForIdentifier:*MEMORY[0x1E69DE0C0]];

  v29 = (v16 + *(v45 + 136));
  v30 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  LOBYTE(v20) = sub_1E65DB448();
  v31 = v43;
  sub_1E60190C0(v16, v43);
  v32 = swift_allocObject();
  sub_1E5DFAB18(v31, v32 + v19, type metadata accessor for AppEnvironment);
  v33 = v47;
  sub_1E60190C0(v16, v47);
  v34 = swift_allocObject();
  sub_1E5DFAB18(v33, v34 + v19, type metadata accessor for AppEnvironment);
  v35 = v46;
  v36 = __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v37 = sub_1E614D598(*v36, v20 & 1, &unk_1E65F3368, v32, &unk_1E65F3378, v34);
  v38 = v49;

  [v38 insertSiblingMenu:v37 afterMenuForIdentifier:*MEMORY[0x1E69DE0F8]];

  sub_1E60190C0(v16, v31);
  v39 = swift_allocObject();
  sub_1E5DFAB18(v31, v39 + v19, type metadata accessor for AppEnvironment);
  v40 = __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v41 = sub_1E614E30C(*v40, &unk_1E65F3388, v39);

  if (qword_1ED071920 != -1)
  {
    swift_once();
  }

  [v38 insertSiblingMenu:v41 afterMenuForIdentifier:qword_1ED096290];
}

uint64_t sub_1E6149930(uint64_t a1)
{
  v1[2] = a1;
  sub_1E65E6058();
  v1[3] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E61499C8, v3, v2);
}

uint64_t sub_1E61499C8()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 132);
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  v0[6] = v4;
  v8 = (Queue + *Queue);
  v5 = Queue[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E6149ACC;

  return v8();
}

uint64_t sub_1E6149ACC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = v4[5];
    v9 = sub_1E614EB4C;
  }

  else
  {
    v4[9] = a1;
    v7 = v4[4];
    v8 = v4[5];
    v9 = sub_1E6149BF4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E6149BF4()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];

  v4 = *(v1 + 16);

  if (!v4)
  {
    v6 = sub_1E65D8B78();
    sub_1E614EA64();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69CB8D0], v6);
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6149CFC()
{
  v2 = *(type metadata accessor for AppEnvironment() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6149930(v0 + v3);
}

uint64_t sub_1E6149DC8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65D8E88();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_1E65E6058();
  v1[6] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E6149EBC, v6, v5);
}

uint64_t sub_1E6149EBC()
{
  v1 = *(v0 + 16);
  *(v0 + 136) = *(type metadata accessor for AppEnvironment() + 132);
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  *(v0 + 72) = v3;
  v7 = (Queue + *Queue);
  v4 = Queue[1];
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1E6149FC4;

  return v7();
}

uint64_t sub_1E6149FC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v7 = *(v3 + 64);
  v8 = *(v3 + 56);
  if (v1)
  {
    v9 = sub_1E614A4A4;
  }

  else
  {
    v9 = sub_1E614A108;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E614A108()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 136);
  v4 = *(v0 + 16);

  Queue = UpNextQueueService.processUpNextQueueUpdates.getter();
  v6 = Queue;
  *(v0 + 104) = v7;
  v8 = *(v1 + 16);
  v9 = *(v0 + 88);
  if (v8)
  {
    v25 = Queue;
    v10 = *(v0 + 32);
    v28 = MEMORY[0x1E69E7CC0];
    sub_1E601C9B8(0, v8, 0);
    v11 = v28;
    v26 = sub_1E65D8948();
    v12 = *(v26 - 8);
    v13 = *(v12 + 16);
    v14 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v12 + 72);
    do
    {
      v16 = *(v0 + 24);
      v13(*(v0 + 40), v14, v26);
      swift_storeEnumTagMultiPayload();
      v18 = *(v28 + 16);
      v17 = *(v28 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1E601C9B8(v17 > 1, v18 + 1, 1);
      }

      v19 = *(v0 + 40);
      *(v28 + 16) = v18 + 1;
      sub_1E5DFAB18(v19, v28 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, MEMORY[0x1E69CBBF0]);
      v14 += v15;
      --v8;
    }

    while (v8);
    v20 = *(v0 + 88);

    v6 = v25;
  }

  else
  {
    v21 = *(v0 + 88);

    v11 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 112) = v11;
  v27 = (v6 + *v6);
  v22 = v6[1];
  v23 = swift_task_alloc();
  *(v0 + 120) = v23;
  *v23 = v0;
  v23[1] = sub_1E614A380;

  return v27(v11);
}

uint64_t sub_1E614A380()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1E614A518;
  }

  else
  {
    v7 = v2[13];
    v8 = v2[14];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1E5F9D9C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E614A4A4()
{
  v1 = v0[9];

  v2 = v0[12];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E614A518()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[16];
  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E614A594()
{
  v2 = *(type metadata accessor for AppEnvironment() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6149DC8(v0 + v3);
}

uint64_t sub_1E614A660(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65D7EB8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_1E65E6058();
  v1[6] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E614A754, v6, v5);
}

uint64_t sub_1E614A754()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 144);
  active = WorkoutPlanService.queryActiveWorkoutPlan.getter();
  v0[9] = v4;
  v9 = (active + *active);
  v5 = active[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1E614A860;
  v7 = v0[5];

  return v9(v7);
}

uint64_t sub_1E614A860()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  v2[11] = v0;

  v5 = v2[9];
  if (v0)
  {

    v6 = v2[7];
    v7 = v2[8];
    v8 = sub_1E614A9B8;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v6 = v2[7];
    v7 = v2[8];
    v8 = sub_1E614EB20;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1E614A9B8()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1E614AA24()
{
  v2 = *(type metadata accessor for AppEnvironment() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E614A660(v0 + v3);
}

uint64_t sub_1E614AAF0(uint64_t a1)
{
  v1[2] = a1;
  sub_1E65E6058();
  v1[3] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E614AB88, v3, v2);
}

uint64_t sub_1E614AB88()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 144);
  v3 = WorkoutPlanService.endWorkoutPlan.getter();
  v0[6] = v4;
  v8 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E614AC8C;

  return v8();
}

uint64_t sub_1E614AC8C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1E614AE38;
  }

  else
  {
    v7 = sub_1E614ADC8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E614ADC8()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E614AE38()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1E614AEA8()
{
  v2 = *(type metadata accessor for AppEnvironment() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E614AAF0(v0 + v3);
}

uint64_t sub_1E614AF74(uint64_t a1)
{
  v1[2] = a1;
  sub_1E65E6058();
  v1[3] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E614B00C, v3, v2);
}

uint64_t sub_1E614B00C()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 132);
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  v0[6] = v4;
  v8 = (Queue + *Queue);
  v5 = Queue[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E614B110;

  return v8();
}

uint64_t sub_1E614B110(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = v4[5];
    v9 = sub_1E614B33C;
  }

  else
  {
    v10 = v4[6];

    v4[9] = a1;
    v7 = v4[4];
    v8 = v4[5];
    v9 = sub_1E614B240;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E614B240()
{
  v1 = v0[9];
  v2 = v0[3];

  v3 = *(v1 + 16);

  if (!v3)
  {
    v5 = sub_1E65D8B78();
    sub_1E614EA64();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E69CB8D0], v5);
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E614B33C()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[8];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E614B3AC(uint64_t a1)
{
  v1[2] = a1;
  sub_1E65E6058();
  v1[3] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E614B444, v3, v2);
}

uint64_t sub_1E614B444()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 48);
  v3 = CatalogService.queryAllCatalogModalityReferences.getter();
  v0[6] = v4;
  v8 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E614B548;

  return v8();
}

uint64_t sub_1E614B548(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = v4[5];
    v9 = sub_1E614AE38;
  }

  else
  {
    v4[9] = a1;
    v7 = v4[4];
    v8 = v4[5];
    v9 = sub_1E614B670;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E614B670()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[9];

  return v3(v4);
}

uint64_t sub_1E614B6E4(uint64_t a1)
{
  v1[2] = a1;
  sub_1E65E6058();
  v1[3] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E614B77C, v3, v2);
}

uint64_t sub_1E614B77C()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 24);
  v3 = AccountService.fetchCurrentAccount.getter();
  v0[6] = v4;
  v8 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E614B880;

  return v8();
}

uint64_t sub_1E614B880(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = v4[5];
    v9 = sub_1E614EB54;
  }

  else
  {
    v4[9] = a1;
    v7 = v4[4];
    v8 = v4[5];
    v9 = sub_1E614EB50;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E614B9A8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = sub_1E65D7848();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1E65E5C28();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v110[3] = &type metadata for AppURLResolver;
  v110[4] = &off_1F5FAB4F8;
  v110[0] = a2;
  v102 = sub_1E5DEF738(0, &qword_1ED073D30, 0x1E69DCC60);

  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  p_aBlock = &_OBJC_LABEL_PROTOCOL___AMSBagProtocol;
  v18 = [v16 bundleForClass_];
  sub_1E65D77A8();
  v91 = sub_1E65E5D48();
  v90 = v19;
  v20 = qword_1ED0719B8;
  v89 = *MEMORY[0x1E69DE100];
  if (v20 != -1)
  {
LABEL_44:
    swift_once();
  }

  v21 = qword_1ED096328;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E65EA660;
  sub_1E5DEF738(0, &qword_1ED075C70, 0x1E69DC8B0);
  v23 = v21;
  sub_1E65E5BA8();
  v24 = [v16 p_aBlock[32]];
  v103 = v16;
  sub_1E65D77A8();
  sub_1E65E5D48();
  v25 = sub_1E65E5C48();
  v100 = objc_opt_self();
  v26 = [v100 systemImageNamed_];

  if (qword_1ED071980 != -1)
  {
    swift_once();
  }

  v106 = 0u;
  aBlock = 0u;
  *(v22 + 32) = sub_1E65E6628();
  v109[0] = sub_1E65E64E8();
  sub_1E65E5BA8();
  v27 = [v16 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  if (qword_1ED071998 != -1)
  {
    swift_once();
  }

  v28 = qword_1ED096308;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1E65F32F0;
  v30 = v28;
  sub_1E65E5BA8();
  v31 = [v16 &selRef:ObjCClassFromMetadata alertControllerWithTitle:? message:? preferredStyle:? + 3];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v32 = sub_1E65E5C48();
  v33 = [v100 systemImageNamed_];

  if (qword_1ED071938 != -1)
  {
    swift_once();
  }

  v106 = 0u;
  aBlock = 0u;
  *(v29 + 32) = sub_1E65E6628();
  sub_1E65E5BA8();
  v34 = [v16 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v35 = sub_1E65E5C48();
  v36 = [v100 systemImageNamed_];

  if (qword_1ED071968 != -1)
  {
    swift_once();
  }

  v106 = 0u;
  aBlock = 0u;
  *(v29 + 40) = sub_1E65E6628();
  sub_1E65E5BA8();
  v37 = [v16 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v38 = sub_1E65E5C48();
  v39 = [v100 smm:v38 systemImageNamed:?];

  if (qword_1ED071940 != -1)
  {
    swift_once();
  }

  v106 = 0u;
  aBlock = 0u;
  *(v29 + 48) = sub_1E65E6628();
  v109[1] = sub_1E65E64E8();
  sub_1E65E5BA8();
  v40 = [v16 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  if (qword_1ED0719A0 != -1)
  {
    swift_once();
  }

  v41 = qword_1ED096310;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1E65EFF30;
  v42 = v41;
  sub_1E65E5BA8();
  v43 = [v16 &selRef:ObjCClassFromMetadata alertControllerWithTitle:? message:? preferredStyle:? + 3];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v101 = ObjCClassFromMetadata;
  v44 = sub_1E65E5C48();
  v45 = [v100 smm:v44 systemImageNamed:?];

  if (qword_1ED071948 != -1)
  {
    swift_once();
  }

  v106 = 0u;
  aBlock = 0u;
  *(v99 + 32) = sub_1E65E6628();
  sub_1E65E5BA8();
  v46 = [v16 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v47 = sub_1E65E5C48();
  v48 = [v100 smm:v47 systemImageNamed:?];

  if (qword_1ED071950 != -1)
  {
    swift_once();
  }

  v106 = 0u;
  aBlock = 0u;
  *(v99 + 40) = sub_1E65E6628();
  sub_1E65E5BA8();
  v49 = [v16 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v50 = sub_1E65E5C48();
  v51 = [v100 smm:v50 systemImageNamed:?];

  if (qword_1ED071958 != -1)
  {
    swift_once();
  }

  v106 = 0u;
  aBlock = 0u;
  *(v99 + 48) = sub_1E65E6628();
  v52 = objc_opt_self();
  v53 = swift_allocObject();
  v53[2] = a5;
  v53[3] = a6;
  v53[4] = a3;
  v53[5] = a4;
  v107 = sub_1E614EABC;
  v108 = v53;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v106 = sub_1E6149220;
  *(&v106 + 1) = &block_descriptor_76;
  v54 = _Block_copy(&aBlock);

  a4 = v52;
  v55 = [v52 elementWithUncachedProvider_];
  _Block_release(v54);
  *(v99 + 56) = v55;
  v109[2] = sub_1E65E64E8();
  sub_1E65E5BA8();
  v56 = [v16 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  a6 = v57;
  if (qword_1ED0719A8 != -1)
  {
    swift_once();
  }

  a5 = a10;
  v58 = qword_1ED096318;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1E65F32F0;
  sub_1E5DF650C(v110, v104);
  v60 = swift_allocObject();
  sub_1E5DF599C(v104, v60 + 16);
  *(v60 + 56) = a7;
  *(v60 + 64) = a8;
  v107 = sub_1E614EAC8;
  v108 = v60;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v106 = sub_1E6149220;
  *(&v106 + 1) = &block_descriptor_82;
  v61 = _Block_copy(&aBlock);
  a3 = v58;
  v62 = v58;

  v63 = [v52 elementWithUncachedProvider_];
  _Block_release(v61);
  *(v59 + 32) = v63;
  sub_1E65E5BA8();
  v64 = [v16 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v65 = sub_1E65E5C48();
  v66 = [v100 systemImageNamed_];

  if (qword_1ED071970 != -1)
  {
    swift_once();
  }

  v106 = 0u;
  aBlock = 0u;
  *(v59 + 40) = sub_1E65E6628();
  v67 = swift_allocObject();
  v67[2] = a9;
  v67[3] = a10;
  v67[4] = a7;
  v67[5] = a8;
  v107 = sub_1E614EB14;
  v108 = v67;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v106 = sub_1E6149220;
  *(&v106 + 1) = &block_descriptor_88;
  v68 = _Block_copy(&aBlock);

  v69 = [v52 elementWithUncachedProvider_];
  _Block_release(v68);
  *(v59 + 48) = v69;
  v109[3] = sub_1E65E64E8();
  if (qword_1ED0719B0 != -1)
  {
    swift_once();
  }

  v70 = qword_1ED096320;
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1E65F32F0;
  v72 = v70;
  sub_1E65E5BA8();
  v73 = [v103 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v74 = sub_1E65E5C48();
  v75 = [v100 smm:v74 systemImageNamed:?];

  if (qword_1ED071978 != -1)
  {
    swift_once();
  }

  v106 = 0u;
  aBlock = 0u;
  *(v71 + 32) = sub_1E65E6628();
  sub_1E65E5BA8();
  v76 = [v103 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v77 = sub_1E65E5C48();
  v78 = [v100 systemImageNamed_];

  if (qword_1ED071988 != -1)
  {
    swift_once();
  }

  v106 = 0u;
  aBlock = 0u;
  *(v71 + 40) = sub_1E65E6628();
  sub_1E65E5BA8();
  v79 = [v103 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  ObjCClassFromMetadata = sub_1E65E5C48();
  v80 = [v100 systemImageNamed_];

  if (qword_1ED071990 != -1)
  {
    swift_once();
  }

  v106 = 0u;
  aBlock = 0u;
  v81 = MEMORY[0x1E69E7CC0];
  *(v71 + 48) = sub_1E65E6628();
  p_aBlock = v102;
  v109[4] = sub_1E65E64E8();
  v109[5] = a1;
  *&aBlock = v81;
  v82 = a1;
  v83 = 0;
  v16 = 6;
LABEL_33:
  if (v83 <= 6)
  {
    v84 = 6;
  }

  else
  {
    v84 = v83;
  }

  while (v83 != 6)
  {
    if (v84 == v83)
    {
      __break(1u);
      goto LABEL_44;
    }

    v85 = v109[v83++];
    if (v85)
    {
      v86 = v85;
      p_aBlock = &aBlock;
      MEMORY[0x1E694D8F0]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        ObjCClassFromMetadata = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1E65E5F68();
      }

      sub_1E65E5FA8();
      goto LABEL_33;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075C80, &qword_1E65F3390);
  swift_arrayDestroy();
  v87 = sub_1E65E64E8();
  __swift_destroy_boxed_opaque_existential_1(v110);
  return v87;
}

uint64_t sub_1E614D400()
{
  v2 = *(type metadata accessor for AppEnvironment() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E614AF74(v0 + v3);
}

uint64_t sub_1E614D4CC()
{
  v2 = *(type metadata accessor for AppEnvironment() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E614B3AC(v0 + v3);
}

uint64_t sub_1E614D598(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1E65D7848();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1E65E5C28();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = sub_1E5DEF738(0, &qword_1ED073D30, 0x1E69DCC60);
  v64[3] = &type metadata for AppURLResolver;
  v64[4] = &off_1F5FAB4F8;
  v64[0] = a1;

  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = [v12 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  if (qword_1ED071920 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED096290;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E65F3300;
  v16 = v15;
  v57 = v15;
  sub_1E5DEF738(0, &qword_1ED073D38, 0x1E69DC628);
  v14;
  sub_1E65E5BA8();
  v17 = [v12 bundleForClass_];
  v58 = ObjCClassFromMetadata;
  sub_1E65D77A8();
  sub_1E65E5D48();
  v18 = sub_1E65E5C48();
  v19 = objc_opt_self();
  v20 = [v19 systemImageNamed_];

  sub_1E5DF650C(v64, &aBlock);
  v21 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v21 + 16);
  *(v16 + 32) = sub_1E65E65C8();
  sub_1E65E5BA8();
  v22 = [v12 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v23 = sub_1E65E5C48();
  v24 = [v19 systemImageNamed_];

  sub_1E5DF650C(v64, &aBlock);
  v25 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v25 + 16);
  v57[5] = sub_1E65E65C8();
  sub_1E65E5BA8();
  v26 = [v12 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v27 = sub_1E65E5C48();
  v28 = [v19 systemImageNamed_];

  sub_1E5DF650C(v64, &aBlock);
  v29 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v29 + 16);
  v57[6] = sub_1E65E65C8();
  sub_1E65E5BA8();
  v30 = [v12 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v31 = sub_1E65E5C48();
  v32 = [v19 systemImageNamed_];

  sub_1E5DF650C(v64, &aBlock);
  v33 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v33 + 16);
  v57[7] = sub_1E65E65C8();
  sub_1E65E5BA8();
  v34 = [v12 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v35 = sub_1E65E5C48();
  v36 = [v19 systemImageNamed_];

  sub_1E5DF650C(v64, &aBlock);
  v37 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v37 + 16);
  v57[8] = sub_1E65E65C8();
  v38 = objc_opt_self();
  sub_1E5DF650C(v64, v63);
  v39 = swift_allocObject();
  *(v39 + 16) = a3;
  *(v39 + 24) = a4;
  sub_1E5DF599C(v63, v39 + 32);
  v61 = sub_1E614EA44;
  v62 = v39;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_1E6149220;
  *(&v60 + 1) = &block_descriptor_60;
  v40 = _Block_copy(&aBlock);

  v41 = [v38 elementWithUncachedProvider_];
  _Block_release(v40);
  v57[9] = v41;
  sub_1E5DF650C(v64, v63);
  v42 = swift_allocObject();
  *(v42 + 16) = a5;
  *(v42 + 24) = a6;
  *(v42 + 32) = v55;
  *(v42 + 40) = a2 & 1;
  sub_1E5DF599C(v63, v42 + 48);
  v61 = sub_1E614EA50;
  v62 = v42;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_1E6149220;
  *(&v60 + 1) = &block_descriptor_66;
  v43 = _Block_copy(&aBlock);

  v44 = [v38 elementWithProvider_];
  _Block_release(v43);

  v57[10] = v44;
  if (qword_1ED071928 != -1)
  {
    swift_once();
  }

  v45 = qword_1ED096298;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1E65EA660;
  sub_1E5DEF738(0, &qword_1ED075C70, 0x1E69DC8B0);
  v47 = v45;
  sub_1E65E5BA8();
  v48 = [v12 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  if (qword_1EE2D7178 != -1)
  {
    swift_once();
  }

  aBlock = 0u;
  v60 = 0u;
  *(v46 + 32) = sub_1E65E6628();
  v57[11] = sub_1E65E64E8();
  v49 = sub_1E65E64E8();
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v49;
}

uint64_t sub_1E614E240()
{
  v2 = *(type metadata accessor for AppEnvironment() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E614B6E4(v0 + v3);
}

uint64_t sub_1E614E30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E65D7848();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1E65E5C28();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45[3] = &type metadata for AppURLResolver;
  v45[4] = &off_1F5FAB4F8;
  v45[0] = a1;
  sub_1E5DEF738(0, &qword_1ED073D30, 0x1E69DCC60);

  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  if (qword_1ED0719C8 != -1)
  {
    swift_once();
  }

  v38 = v11;
  v39 = ObjCClassFromMetadata;
  v13 = qword_1ED096330;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E65F3310;
  v16 = qword_1ED0719D0;
  v13;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED096338;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E65F3310;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v43 = sub_1E614E9FC;
  v44 = v20;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v41 = sub_1E6149220;
  v42 = &block_descriptor_4;
  v21 = _Block_copy(&aBlock);
  v22 = v17;

  v23 = [v19 elementWithUncachedProvider_];
  _Block_release(v21);
  *(v18 + 32) = v23;
  sub_1E5DEF738(0, &qword_1ED073D38, 0x1E69DC628);
  sub_1E65E5BA8();
  v24 = [v38 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v25 = sub_1E65E5C48();
  v26 = objc_opt_self();
  v27 = [v26 systemImageNamed_];

  sub_1E5DF650C(v45, &aBlock);
  v28 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v28 + 16);
  *(v18 + 40) = sub_1E65E65C8();
  *(v15 + 32) = sub_1E65E64E8();
  if (qword_1ED0719D8 != -1)
  {
    swift_once();
  }

  v29 = qword_1ED096340;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E65EA660;
  v31 = v29;
  sub_1E65E5BA8();
  v32 = [v38 bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v33 = sub_1E65E5C48();
  v34 = [v26 smm:v33 systemImageNamed:?];

  sub_1E5DF650C(v45, &aBlock);
  v35 = swift_allocObject();
  sub_1E5DF599C(&aBlock, v35 + 16);
  *(v30 + 32) = sub_1E65E65C8();
  *(v15 + 40) = sub_1E65E64E8();
  v36 = sub_1E65E64E8();
  __swift_destroy_boxed_opaque_existential_1(v45);
  return v36;
}

unint64_t sub_1E614EA64()
{
  result = qword_1ED075C78;
  if (!qword_1ED075C78)
  {
    sub_1E65D8B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075C78);
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t static AppEnvironment.simulator(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E5C48();
  v5 = sub_1E65E5C48();
  v6 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];

  v7 = sub_1E65DAE28();
  v8 = type metadata accessor for AppEnvironment();
  static AccountService.simulator()((a2 + v8[6]));
  static AppStateService.simulator()((a2 + v8[7]));
  static ArchivedSessionService.simulator()((a2 + v8[8]));
  static AssetService.simulator()((a2 + v8[9]));
  static AwardsService.simulator()((a2 + v8[10]));
  static BookmarkService.simulator()((a2 + v8[11]));
  static CatalogService.simulator()((a2 + v8[12]));
  static ConfigurationService.simulator()((a2 + v8[13]));
  static ContentAvailabilityService.simulator()((a2 + v8[14]));
  static EngagementService.simulator()((a2 + v8[15]));
  static HealthDataService.simulator()((a2 + v8[16]));
  static InteropService.default(with:)(a1, (a2 + v8[17]));
  static LocalizationService.simulator()((a2 + v8[18]));
  static MarketingService.simulator()((a2 + v8[19]));
  static MetricService.simulator()((a2 + v8[20]));
  static PersonalizationService.simulator()((a2 + v8[21]));
  static PlayerService.default(with:)(a1, (a2 + v8[22]));
  static PrivacyPreferenceService.simulator()((a2 + v8[23]));
  static RecommendationService.simulator()((a2 + v8[24]));
  static RemoteBrowsingService.simulator()((a2 + v8[25]));
  static SearchService.simulator()((a2 + v8[26]));
  static ServiceSubscriptionService.simulator()((a2 + v8[27]));
  static SessionService.simulator()((a2 + v8[28]));
  static SharePlayService.simulator()((a2 + v8[29]));
  static SiriService.simulator()((a2 + v8[30]));
  static SyncService.simulator()((a2 + v8[31]));
  type metadata accessor for SimulatorToastService();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  *(v9 + 112) = sub_1E65E17A8();
  v10 = v8[33];
  swift_retain_n();
  static UpNextQueueService.simulator()((a2 + v10));
  v11 = v8[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077620, &qword_1E65F3398);
  sub_1E65D7F18();
  v12 = type metadata accessor for WindowSceneObserver();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = WindowSceneObserver.init()();
  result = static WorkoutPlanService.simulator()((a2 + v8[36]));
  *a2 = v6;
  *(a2 + 8) = v7;
  v17 = (a2 + v8[32]);
  *v17 = &unk_1E6601060;
  v17[1] = v9;
  v17[2] = &unk_1E6601070;
  v17[3] = v9;
  v17[4] = &unk_1E6601080;
  v17[5] = v9;
  *(a2 + v8[35]) = v15;
  return result;
}

uint64_t sub_1E614EE6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E3DE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  MEMORY[0x1E694C310](v10, a1, &type metadata for SidebarPillForceEnabled, a2);
  v13 = sub_1E614F070();
  v16[0] = a2;
  v16[1] = v13;
  swift_getWitnessTable();
  sub_1E5FEE4C8(v9);
  v14 = *(v5 + 8);
  v14(v9, v4);
  sub_1E5FEE4C8(v12);
  return (v14)(v12, v4);
}

uint64_t sub_1E614EFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075C88, &qword_1E65F3408);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_1E614F070()
{
  result = qword_1EE2D87A8;
  if (!qword_1EE2D87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D87A8);
  }

  return result;
}

unint64_t sub_1E614F0C4()
{
  result = qword_1ED075C90;
  if (!qword_1ED075C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075C88, &qword_1E65F3408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075C90);
  }

  return result;
}

uint64_t AppComposer.forYouSummaryViewBuilder(currentRoutingContext:navigateToFitnessPlusTab:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v29 = a2;
  v30 = a3;
  v31 = a5;
  v9 = sub_1E65D76F8();
  v25 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppComposer();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AppComposer;
  sub_1E5E1D554(v6, v15, type metadata accessor for AppComposer);
  sub_1E5DF650C(a1, v32);
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v10 + 80) + v18 + 40) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_1E5E1E048(v15, v20 + v16, type metadata accessor for AppComposer);
  v21 = (v20 + v17);
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;
  sub_1E5DF599C(v32, v20 + v18);
  (*(v10 + 32))(v20 + v19, v26, v25);
  sub_1E5E1D554(v28, v15, v27);
  v23 = swift_allocObject();
  sub_1E5E1E048(v15, v23 + v16, type metadata accessor for AppComposer);
  type metadata accessor for ArtworkDescriptor();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  sub_1E6162498(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E5FEB2FC();
  sub_1E6160F48();
  return sub_1E65DC518();
}

uint64_t sub_1E614F458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v105 = a5;
  v96 = a3;
  v97 = a4;
  v95 = a2;
  v6 = sub_1E65D76F8();
  v102 = *(v6 - 8);
  v103 = v6;
  v104 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CB0, &qword_1E65F3418);
  v107 = *(v8 - 8);
  v108 = v8;
  v9 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v79 - v10;
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v90 = &v79 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v88 = &v79 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v85 = &v79 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v84 = &v79 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v82 = &v79 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v80 = &v79 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v81 = &v79 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v79 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v79 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v79 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v79 - v38;
  v40 = sub_1E65DC658();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v93 = &v79 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CB8, &qword_1E65F3420);
  v44 = *(v43 - 8);
  v99 = v43;
  v100 = v44;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v109 = v39;
  v110 = &v79 - v46;
  v98 = *a1;
  sub_1E5E1D554(a1, v39, type metadata accessor for AppComposer);
  v94 = *(v12 + 80);
  v47 = (v94 + 16) & ~v94;
  v91 = swift_allocObject();
  sub_1E5E1E048(v39, v91 + v47, type metadata accessor for AppComposer);
  sub_1E5E1D554(a1, v37, type metadata accessor for AppComposer);
  v89 = swift_allocObject();
  sub_1E5E1E048(v37, v89 + v47, type metadata accessor for AppComposer);
  sub_1E5E1D554(a1, v34, type metadata accessor for AppComposer);
  v87 = swift_allocObject();
  sub_1E5E1E048(v34, v87 + v47, type metadata accessor for AppComposer);
  sub_1E5E1D554(a1, v31, type metadata accessor for AppComposer);
  v86 = swift_allocObject();
  sub_1E5E1E048(v31, v86 + v47, type metadata accessor for AppComposer);
  v48 = v81;
  sub_1E5E1D554(a1, v81, type metadata accessor for AppComposer);
  v83 = swift_allocObject();
  sub_1E5E1E048(v48, v83 + v47, type metadata accessor for AppComposer);
  v49 = v80;
  sub_1E5E1D554(a1, v80, type metadata accessor for AppComposer);
  v81 = swift_allocObject();
  sub_1E5E1E048(v49, v81 + v47, type metadata accessor for AppComposer);
  v50 = v82;
  sub_1E5E1D554(a1, v82, type metadata accessor for AppComposer);
  v80 = swift_allocObject();
  sub_1E5E1E048(v50, v80 + v47, type metadata accessor for AppComposer);
  v51 = v84;
  sub_1E5E1D554(a1, v84, type metadata accessor for AppComposer);
  v82 = swift_allocObject();
  sub_1E5E1E048(v51, v82 + v47, type metadata accessor for AppComposer);
  v52 = v85;
  sub_1E5E1D554(a1, v85, type metadata accessor for AppComposer);
  v84 = swift_allocObject();
  sub_1E5E1E048(v52, v84 + v47, type metadata accessor for AppComposer);
  v53 = v88;
  sub_1E5E1D554(a1, v88, type metadata accessor for AppComposer);
  v85 = swift_allocObject();
  sub_1E5E1E048(v53, v85 + v47, type metadata accessor for AppComposer);
  v79 = a1;
  v54 = v90;
  sub_1E5E1D554(a1, v90, type metadata accessor for AppComposer);
  v88 = swift_allocObject();
  sub_1E5E1E048(v54, v88 + v47, type metadata accessor for AppComposer);
  v55 = v92;
  sub_1E5E1D554(a1, v92, type metadata accessor for AppComposer);
  v56 = swift_allocObject();
  sub_1E5E1E048(v55, v56 + v47, type metadata accessor for AppComposer);
  v57 = swift_allocObject();
  v59 = v95;
  v58 = v96;
  *(v57 + 16) = v95;
  *(v57 + 24) = v58;
  sub_1E5DF650C(v97, &v111);
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = v58;
  sub_1E5DF599C(&v111, v60 + 32);
  swift_retain_n();
  sub_1E65DC648();
  v61 = v79;
  v62 = v109;
  sub_1E5E1D554(v79, v109, type metadata accessor for AppComposer);
  v63 = swift_allocObject();
  sub_1E5E1E048(v62, v63 + v47, type metadata accessor for AppComposer);
  type metadata accessor for ArtworkDescriptor();
  sub_1E6162498(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E6160F48();
  sub_1E65DC588();
  sub_1E65E4CC8();
  v65 = v101;
  v64 = v102;
  v66 = v103;
  (*(v102 + 16))(v101, v105, v103);
  v67 = v61;
  v68 = v109;
  sub_1E5E1D554(v67, v109, type metadata accessor for AppComposer);
  v69 = v64;
  v70 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v71 = (v104 + v94 + v70) & ~v94;
  v72 = swift_allocObject();
  (*(v69 + 32))(v72 + v70, v65, v66);
  sub_1E5E1E048(v68, v72 + v71, type metadata accessor for AppComposer);
  type metadata accessor for AppFeature();
  sub_1E6162498(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&qword_1ED075CC0, &qword_1ED075CB8, &qword_1E65F3420);
  v73 = v106;
  v74 = v99;
  sub_1E65E4DE8();
  v75 = v110;
  v76 = v74;
  v77 = sub_1E65E4F08();
  (*(v107 + 8))(v73, v108);
  (*(v100 + 8))(v75, v76);
  return v77;
}

uint64_t sub_1E6150078()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1E65D76F8() - 8);
  v6 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v8 = v0 + ((v4 + *(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1E614F458((v0 + v2), v6, v7, v0 + v4, v8);
}

uint64_t sub_1E6150164(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 6040) = a3;
  *(v3 + 10792) = a2;
  *(v3 + 5992) = a1;
  v4 = sub_1E65DC898();
  *(v3 + 6088) = v4;
  v5 = *(v4 - 8);
  *(v3 + 6136) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 6184) = swift_task_alloc();
  v7 = sub_1E65D9E18();
  *(v3 + 6232) = v7;
  v8 = *(v7 - 8);
  *(v3 + 6280) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 6328) = swift_task_alloc();
  v10 = sub_1E65DA708();
  *(v3 + 6376) = v10;
  v11 = *(v10 - 8);
  *(v3 + 6424) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 6472) = swift_task_alloc();
  v13 = sub_1E65DC988();
  *(v3 + 6520) = v13;
  v14 = *(v13 - 8);
  *(v3 + 6568) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 6616) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728C0, &qword_1E65EBF58) - 8) + 64) + 15;
  *(v3 + 6664) = swift_task_alloc();
  v17 = sub_1E65D7848();
  *(v3 + 6712) = v17;
  v18 = *(v17 - 8);
  *(v3 + 6760) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 6808) = swift_task_alloc();
  v20 = *(*(type metadata accessor for AppEnvironment() - 8) + 64) + 15;
  *(v3 + 6856) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728C8, &qword_1E65EBF60) - 8) + 64) + 15;
  *(v3 + 6904) = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728D0, &qword_1E65EBF68) - 8) + 64) + 15;
  *(v3 + 6952) = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728D8, &qword_1E65EBF70);
  *(v3 + 7000) = v23;
  v24 = *(v23 - 8);
  *(v3 + 7048) = v24;
  v25 = *(v24 + 64) + 15;
  *(v3 + 7096) = swift_task_alloc();
  v26 = sub_1E65D82F8();
  *(v3 + 7144) = v26;
  v27 = *(v26 - 8);
  *(v3 + 7192) = v27;
  v28 = *(v27 + 64) + 15;
  *(v3 + 7240) = swift_task_alloc();
  *(v3 + 7288) = swift_task_alloc();
  v29 = type metadata accessor for AppComposer();
  *(v3 + 7336) = v29;
  v30 = *(v29 - 8);
  *(v3 + 7384) = v30;
  *(v3 + 7432) = *(v30 + 64);
  *(v3 + 7480) = swift_task_alloc();
  *(v3 + 7528) = swift_task_alloc();
  *(v3 + 7576) = swift_task_alloc();
  *(v3 + 7624) = swift_task_alloc();
  *(v3 + 7672) = swift_task_alloc();
  *(v3 + 7720) = swift_task_alloc();
  *(v3 + 7768) = swift_task_alloc();
  *(v3 + 7816) = swift_task_alloc();
  v31 = sub_1E65DA948();
  *(v3 + 7864) = v31;
  v32 = *(v31 - 8);
  *(v3 + 7912) = v32;
  v33 = *(v32 + 64) + 15;
  *(v3 + 7960) = swift_task_alloc();
  *(v3 + 8008) = swift_task_alloc();
  *(v3 + 8056) = swift_task_alloc();
  *(v3 + 8104) = swift_task_alloc();
  *(v3 + 8152) = swift_task_alloc();
  *(v3 + 8200) = swift_task_alloc();
  v34 = sub_1E65E3B68();
  *(v3 + 8248) = v34;
  v35 = *(v34 - 8);
  *(v3 + 8296) = v35;
  v36 = *(v35 + 64) + 15;
  *(v3 + 8344) = swift_task_alloc();
  *(v3 + 8392) = swift_task_alloc();
  *(v3 + 8440) = swift_task_alloc();
  v37 = sub_1E65D76F8();
  *(v3 + 8488) = v37;
  v38 = *(v37 - 8);
  *(v3 + 8536) = v38;
  *(v3 + 8584) = *(v38 + 64);
  *(v3 + 8632) = swift_task_alloc();
  *(v3 + 8680) = swift_task_alloc();
  *(v3 + 8728) = swift_task_alloc();
  *(v3 + 8776) = swift_task_alloc();
  *(v3 + 8824) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615079C, 0, 0);
}

uint64_t sub_1E615079C()
{
  v61 = v0;
  v1 = *(v0 + 8824);
  v2 = *(v0 + 8776);
  v3 = *(v0 + 8536);
  v4 = *(v0 + 8488);
  v5 = *(v0 + 8440);
  sub_1E65D76E8();
  sub_1E65DE318();
  v6 = *(v3 + 16);
  *(v0 + 8872) = v6;
  *(v0 + 8920) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v53 = v6;
  v6(v2, v1, v4);
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 8776);
  v11 = *(v0 + 8536);
  v12 = *(v0 + 8488);
  v13 = *(v0 + 8440);
  v14 = *(v0 + 8296);
  v15 = *(v0 + 8248);
  if (v9)
  {
    v58 = *(v0 + 8248);
    v16 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v60 = v56;
    *v16 = 136315138;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v51 = v8;
    v17 = sub_1E65E6BC8();
    v54 = v13;
    v19 = v18;
    (*(v11 + 8))(v10, v12);
    v20 = sub_1E5DFD4B0(v17, v19, &v60);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1E5DE9000, v7, v51, "forYouRequest begin — correlationKey=%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x1E694F1C0](v56, -1, -1);
    MEMORY[0x1E694F1C0](v16, -1, -1);

    (*(v14 + 8))(v54, v58);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    (*(v14 + 8))(v13, v15);
  }

  v21 = *(v0 + 8824);
  v22 = *(v0 + 8728);
  v23 = *(v0 + 8584);
  v24 = *(v0 + 8536);
  v25 = *(v0 + 8488);
  v44 = *(v0 + 7864);
  v45 = *(v0 + 8200);
  v26 = *(v0 + 7816);
  v46 = *(v0 + 7768);
  v49 = *(v0 + 7720);
  v50 = *(v0 + 7672);
  v52 = *(v0 + 7624);
  v55 = *(v0 + 7576);
  v57 = *(v0 + 7528);
  v59 = *(v0 + 7480);
  v27 = *(v0 + 7432);
  v28 = *(v0 + 7384);
  v47 = *(v0 + 7144);
  v48 = *(v0 + 7288);
  v42 = *(v0 + 10792);
  v43 = *(v0 + 6040);
  sub_1E5E1D554(v43, v26, type metadata accessor for AppComposer);
  v53(v22, v21, v25);
  v29 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v30 = (v29 + v27 + *(v24 + 80)) & ~*(v24 + 80);
  v31 = v30 + v23;
  v32 = swift_allocObject();
  *(v0 + 8968) = v32;
  sub_1E5E1E048(v26, v32 + v29, type metadata accessor for AppComposer);
  (*(v24 + 32))(v32 + v30, v22, v25);
  *(v32 + v31) = v42;
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v46, type metadata accessor for AppComposer);
  v33 = swift_allocObject();
  *(v0 + 9016) = v33;
  sub_1E5E1E048(v46, v33 + v29, type metadata accessor for AppComposer);
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v49, type metadata accessor for AppComposer);
  v34 = swift_allocObject();
  *(v0 + 9064) = v34;
  sub_1E5E1E048(v49, v34 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728E0, &qword_1E65EBFA8);
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v50, type metadata accessor for AppComposer);
  v35 = swift_allocObject();
  *(v0 + 9112) = v35;
  sub_1E5E1E048(v50, v35 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728E8, &qword_1E660EFE0);
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v52, type metadata accessor for AppComposer);
  v36 = swift_allocObject();
  *(v0 + 9160) = v36;
  sub_1E5E1E048(v52, v36 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728F0, &qword_1E660EFB0);
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v55, type metadata accessor for AppComposer);
  v37 = swift_allocObject();
  *(v0 + 9208) = v37;
  sub_1E5E1E048(v55, v37 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728F8, &qword_1E65EBFE0);
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v57, type metadata accessor for AppComposer);
  v38 = swift_allocObject();
  *(v0 + 9256) = v38;
  sub_1E5E1E048(v57, v38 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072900, &qword_1E660EF80);
  swift_asyncLet_begin();
  sub_1E5E1D554(v43, v59, type metadata accessor for AppComposer);
  v39 = swift_allocObject();
  *(v0 + 9304) = v39;
  sub_1E5E1E048(v59, v39 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072908, &qword_1E660F010);
  swift_asyncLet_begin();
  v40 = *(v0 + 8200);

  return MEMORY[0x1EEE6DEC0](v0 + 1296, v40, sub_1E6150F00, v0 + 5520);
}

uint64_t sub_1E6150F00()
{
  *(v1 + 9352) = v0;
  if (v0)
  {
    v2 = sub_1E6154294;
  }

  else
  {
    v2 = sub_1E6150F34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6150F34()
{
  v1 = v0[1025];
  v2 = v0[1019];
  v3 = v0[989];
  v4 = v0[983];
  v5 = v0[881];
  v6 = v0[875];
  v7 = v0[869];
  v8 = *(v3 + 16);
  v0[1175] = v8;
  v0[1181] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v1, v4);
  sub_1E65DA938();
  v9 = *(v3 + 8);
  v0[1187] = v9;
  v0[1193] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  if ((*(v5 + 48))(v7, 1, v6) == 1)
  {
    sub_1E5DFE50C(v0[869], &qword_1ED0728D0, &qword_1E65EBF68);
    v10 = v0[1025];

    return MEMORY[0x1EEE6DEC0](v0 + 162, v10, sub_1E6151314, v0 + 792);
  }

  v11 = v0[875];
  v12 = v0[863];
  sub_1E5FAB460(v0[869], v0[887], &qword_1ED0728D8, &qword_1E65EBF70);
  sub_1E65D7FB8();
  v13 = sub_1E65D9E28();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_9;
  }

  if ((*(v14 + 88))(v0[863], v13) != *MEMORY[0x1E69CC988])
  {
    (*(v14 + 8))(v0[863], v13);
LABEL_9:
    v15 = 1488;
    v20 = v0[887];
    v21 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    v0[1211] = swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E699E138], v21);
    swift_willThrow();
    sub_1E5DFE50C(v20, &qword_1ED0728D8, &qword_1E65EBF70);
    v19 = sub_1E6151CE4;
    goto LABEL_10;
  }

  v15 = 756;
  v16 = v0[887];
  v17 = sub_1E65DC678();
  sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
  v0[1205] = swift_allocError();
  (*(*(v17 - 8) + 104))(v18, *MEMORY[0x1E699E130], v17);
  swift_willThrow();
  sub_1E5DFE50C(v16, &qword_1ED0728D8, &qword_1E65EBF70);
  v19 = sub_1E6151360;
LABEL_10:

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 725, v19, &v0[v15]);
}

uint64_t sub_1E6151314()
{
  *(v1 + 9592) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 2576, v1 + 5800, sub_1E6154C40, v1 + 6384);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E6152668, 0, 0);
  }
}

uint64_t sub_1E6151554()
{
  v102 = v0;
  v1 = v0[1205];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E6151ED8()
{
  v102 = v0;
  v1 = v0[1211];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E6152668()
{
  v1 = *(v0 + 9448);
  v2 = *(v0 + 7336);
  v3 = *(v0 + 6856);
  v4 = *(v0 + 6808);
  v5 = *(v0 + 6040);
  (*(v0 + 9400))(*(v0 + 8104), *(v0 + 8200), *(v0 + 7864));
  sub_1E5E1D554(v5 + *(v2 + 20), v3, type metadata accessor for AppEnvironment);
  v6 = *v5;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v7 = *(v0 + 7288);

  return MEMORY[0x1EEE6DEC0](v0 + 656, v7, sub_1E6152750, v0 + 6768);
}

uint64_t sub_1E6152750()
{
  v1[1217] = v0;
  if (v0)
  {
    v2 = v1[1193];
    v3 = v1[1187];
    v4 = v1[1013];
    v5 = v1[983];
    v6 = v1[857];
    (*(v1[845] + 8))(v1[851], v1[839]);
    sub_1E61624E0(v6, type metadata accessor for AppEnvironment);
    v3(v4, v5);

    return MEMORY[0x1EEE6DFA0](sub_1E61555C4, 0, 0);
  }

  else
  {
    (*(v1[899] + 16))(v1[905], v1[911], v1[893]);

    return MEMORY[0x1EEE6DEC0](v1 + 242, v1 + 731, sub_1E615288C, v1 + 900);
  }
}

uint64_t sub_1E615288C()
{
  v1[1223] = v0;
  if (v0)
  {
    v2 = v1[1193];
    v3 = v1[1187];
    v4 = v1[1013];
    v5 = v1[983];
    v6 = v1[857];
    v7 = v1[851];
    v8 = v1[845];
    v9 = v1[839];
    (*(v1[899] + 8))(v1[905], v1[893]);
    (*(v8 + 8))(v7, v9);
    sub_1E61624E0(v6, type metadata accessor for AppEnvironment);
    v3(v4, v5);

    return MEMORY[0x1EEE6DFA0](sub_1E6155F70, 0, 0);
  }

  else
  {
    v1[1229] = v1[731];

    return MEMORY[0x1EEE6DEC0](v1 + 402, v1 + 719, sub_1E61529E4, v1 + 954);
  }
}

uint64_t sub_1E61529E4()
{
  v1[1235] = v0;
  if (v0)
  {
    v2 = v1[1229];
    v13 = v1[1187];
    v14 = v1[1193];
    v3 = v1[1013];
    v4 = v1[983];
    v5 = v1[905];
    v6 = v1[899];
    v7 = v1[893];
    v8 = v1[857];
    v9 = v1[851];
    v10 = v1[845];
    v11 = v1[839];

    (*(v6 + 8))(v5, v7);
    (*(v10 + 8))(v9, v11);
    sub_1E61624E0(v8, type metadata accessor for AppEnvironment);
    v13(v3, v4);

    return MEMORY[0x1EEE6DFA0](sub_1E615691C, 0, 0);
  }

  else
  {
    v1[1241] = v1[719];

    return MEMORY[0x1EEE6DEC0](v1 + 562, v1 + 689, sub_1E6152B64, v1 + 1008);
  }
}

uint64_t sub_1E6152B64()
{
  v1[1247] = v0;
  if (v0)
  {
    v2 = v1[1241];
    v3 = v1[1229];
    v14 = v1[1187];
    v15 = v1[1193];
    v13 = v1[1013];
    v4 = v1[983];
    v5 = v1[905];
    v6 = v1[899];
    v7 = v1[893];
    v8 = v1[857];
    v9 = v1[851];
    v10 = v1[845];
    v11 = v1[839];

    (*(v6 + 8))(v5, v7);
    (*(v10 + 8))(v9, v11);
    sub_1E61624E0(v8, type metadata accessor for AppEnvironment);
    v14(v13, v4);

    return MEMORY[0x1EEE6DFA0](sub_1E61572C8, 0, 0);
  }

  else
  {
    v1[1253] = v1[689];

    return MEMORY[0x1EEE6DEC0](v1 + 2, v1 + 743, sub_1E6152CF0, v1 + 1062);
  }
}

uint64_t sub_1E6152CF0()
{
  v1[1259] = v0;
  if (v0)
  {
    v2 = v1[1253];
    v3 = v1[1241];
    v4 = v1[1229];
    v15 = v1[1187];
    v16 = v1[1193];
    v13 = v1[983];
    v14 = v1[1013];
    v5 = v1[905];
    v6 = v1[899];
    v7 = v1[893];
    v8 = v1[857];
    v9 = v1[851];
    v10 = v1[845];
    v11 = v1[839];

    (*(v6 + 8))(v5, v7);
    (*(v10 + 8))(v9, v11);
    sub_1E61624E0(v8, type metadata accessor for AppEnvironment);
    v15(v14, v13);

    return MEMORY[0x1EEE6DFA0](sub_1E6157C74, 0, 0);
  }

  else
  {
    v1[1265] = v1[743];

    return MEMORY[0x1EEE6DEC0](v1 + 482, v1 + 737, sub_1E6152E84, v1 + 1116);
  }
}

uint64_t sub_1E6152E84()
{
  v1[1271] = v0;
  if (v0)
  {
    v2 = v1[1265];
    v3 = v1[1253];
    v4 = v1[1241];
    v5 = v1[1229];
    v16 = v1[1187];
    v17 = v1[1193];
    v14 = v1[983];
    v15 = v1[1013];
    v6 = v1[905];
    v7 = v1[899];
    v8 = v1[893];
    v13 = v1[857];
    v9 = v1[851];
    v10 = v1[845];
    v11 = v1[839];

    (*(v7 + 8))(v6, v8);
    (*(v10 + 8))(v9, v11);
    sub_1E61624E0(v13, type metadata accessor for AppEnvironment);
    v16(v15, v14);

    return MEMORY[0x1EEE6DFA0](sub_1E6158620, 0, 0);
  }

  else
  {
    v1[1277] = v1[737];

    return MEMORY[0x1EEE6DEC0](v1 + 322, v1 + 725, sub_1E6153028, v1 + 1170);
  }
}

uint64_t sub_1E6153028()
{
  v1[1283] = v0;
  if (v0)
  {
    v2 = v1[1277];
    v3 = v1[1265];
    v4 = v1[1253];
    v5 = v1[1241];
    v6 = v1[1229];
    v18 = v1[1187];
    v19 = v1[1193];
    v16 = v1[983];
    v17 = v1[1013];
    v7 = v1[905];
    v8 = v1[899];
    v9 = v1[893];
    v14 = v1[851];
    v15 = v1[857];
    v10 = v1[845];
    v11 = v1[839];

    (*(v8 + 8))(v7, v9);
    (*(v10 + 8))(v14, v11);
    sub_1E61624E0(v15, type metadata accessor for AppEnvironment);
    v18(v17, v16);
    v12 = sub_1E6158FCC;
  }

  else
  {
    v12 = sub_1E6153188;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1E6153188()
{
  v1 = v0[1277];
  v2 = v0[1265];
  v3 = v0[1253];
  v13 = v0[1229];
  v14 = v0[1241];
  v21 = v0[1193];
  v4 = v0[1013];
  v19 = v0[983];
  v20 = v0[1187];
  v5 = v0[905];
  v6 = v0[857];
  v17 = v0[893];
  v7 = v0[851];
  v15 = v0[899];
  v16 = v0[845];
  v18 = v0[839];
  v8 = v0[755];
  v9 = v0[725];

  v12 = sub_1E6482BC0() & 1;
  v0[1289] = PersonalizationInferenceResponse.makeSectionDescriptors(environment:locale:configuration:bodyFocuses:themes:musicGenres:skillLevels:trainers:modalities:isPlanCreationSupported:)(v6, v7, v5, v13, v14, v3, v2, v1, v9, v12);

  (*(v15 + 8))(v5, v17);
  (*(v16 + 8))(v7, v18);
  sub_1E61624E0(v6, type metadata accessor for AppEnvironment);
  v20(v4, v19);
  v10 = v0[1025];

  return MEMORY[0x1EEE6DEC0](v0 + 162, v10, sub_1E6153354, v0 + 1224);
}

uint64_t sub_1E6153354()
{
  *(v1 + 10360) = v0;
  if (v0)
  {
    v2 = sub_1E6159978;
  }

  else
  {
    v2 = sub_1E6153388;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6153388()
{
  v1 = *(v0 + 9544);
  v2 = *(v0 + 9496);
  v3 = *(v0 + 9448);
  v4 = *(v0 + 8056);
  v5 = *(v0 + 7864);
  (*(v0 + 9400))(v4, *(v0 + 8200), v5);
  v6 = sub_1E65DA8E8();
  v2(v4, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v0 + 6568);
    v9 = *(v0 + 6424);
    v10 = *(v0 + 6280);
    v11 = *(v0 + 6136);
    v56 = MEMORY[0x1E69E7CC0];
    v12 = sub_1E601BF64(0, v7, 0);
    v16 = v56;
    v46 = v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v44 = v10;
    v54 = (v10 + 8);
    v17 = 0;
    v47 = v9;
    v48 = v8;
    v45 = (v9 + 8);
    v49 = v7;
    v50 = v6;
    while (v17 < *(v6 + 16))
    {
      v51 = v16;
      v52 = v17;
      (*(v47 + 16))(*(v0 + 6472), v46 + *(v47 + 72) * v17, *(v0 + 6376));
      v18 = sub_1E65DA6D8();
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v18 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v21 = *(v44 + 72);
        v55 = *(v44 + 16);
        v22 = MEMORY[0x1E69E7CC0];
        v53 = v21;
        v55(*(v0 + 6328), v20, *(v0 + 6232));
        while (1)
        {
          v23 = sub_1E65D9DD8();
          v25 = v24;
          v27 = v26;
          v28 = sub_1E6413384();
          sub_1E5F87058(v23, v25, v27 & 1);
          v29 = *(v0 + 6328);
          v30 = *(v0 + 6232);
          if (v28 == 9)
          {
            (*v54)(*(v0 + 6328), *(v0 + 6232));
          }

          else
          {
            v31 = *(v0 + 6184);
            sub_1E65D9DA8();
            sub_1E65D9DF8();
            sub_1E65DC858();
            (*v54)(v29, v30);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_1E64F615C(0, v22[2] + 1, 1, v22);
            }

            v33 = v22[2];
            v32 = v22[3];
            v21 = v53;
            if (v33 >= v32 >> 1)
            {
              v22 = sub_1E64F615C(v32 > 1, v33 + 1, 1, v22);
            }

            v34 = *(v0 + 6184);
            v35 = *(v0 + 6088);
            v22[2] = v33 + 1;
            (*(v11 + 32))(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, v34, v35);
          }

          v20 += v21;
          if (!--v19)
          {
            break;
          }

          v55(*(v0 + 6328), v20, *(v0 + 6232));
        }
      }

      v36 = *(v0 + 6616);
      v37 = *(v0 + 6472);
      v38 = *(v0 + 6376);
      sub_1E65DA6E8();
      sub_1E65DA6F8();
      sub_1E65DC948();
      (*v45)(v37, v38);
      v16 = v51;
      v40 = *(v51 + 16);
      v39 = *(v51 + 24);
      v6 = v50;
      if (v40 >= v39 >> 1)
      {
        sub_1E601BF64(v39 > 1, v40 + 1, 1);
        v16 = v51;
      }

      v17 = v52 + 1;
      v41 = *(v0 + 6616);
      v42 = *(v0 + 6520);
      *(v16 + 16) = v40 + 1;
      v12 = (*(v48 + 32))(v16 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v40, v41, v42);
      if (v52 + 1 == v49)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
LABEL_20:
    *(v0 + 10408) = v16;
    v14 = sub_1E61537E8;
    v13 = *(v0 + 8200);
    v12 = v0 + 1296;
    v15 = v0 + 10224;
  }

  return MEMORY[0x1EEE6DEC0](v12, v13, v14, v15);
}

uint64_t sub_1E61537E8()
{
  v1[1307] = v0;
  if (v0)
  {
    v2 = v1[1301];
    v3 = v1[1289];

    v4 = sub_1E615A370;
  }

  else
  {
    v4 = sub_1E6153874;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6153874()
{
  v1 = *(v0 + 9544);
  v2 = *(v0 + 9496);
  v3 = *(v0 + 9448);
  v4 = *(v0 + 8008);
  v5 = *(v0 + 7864);
  v6 = *(v0 + 6664);
  (*(v0 + 9400))(v4, *(v0 + 8200), v5);
  sub_1E65DA908();
  v2(v4, v5);
  v7 = sub_1E65D99B8();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = *(v0 + 6664);
  if (v9 == 1)
  {
    sub_1E5DFE50C(*(v0 + 6664), &qword_1ED0728C0, &qword_1E65EBF58);
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v13 = *(v0 + 6664);
    v11 = sub_1E65D99A8();
    v12 = v14;
    (*(v8 + 8))(v10, v7);
  }

  *(v0 + 10552) = v12;
  *(v0 + 10504) = v11;
  v15 = *(v0 + 8200);

  return MEMORY[0x1EEE6DEC0](v0 + 1296, v15, sub_1E61539E0, v0 + 10656);
}

uint64_t sub_1E61539E0()
{
  *(v1 + 10600) = v0;
  if (v0)
  {
    v2 = sub_1E615AD1C;
  }

  else
  {
    v2 = sub_1E6153A14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6153A14()
{
  v1 = *(v0 + 9544);
  v2 = *(v0 + 9496);
  v3 = *(v0 + 9448);
  v4 = *(v0 + 7960);
  v5 = *(v0 + 7864);
  (*(v0 + 9400))(v4, *(v0 + 8200), v5);
  sub_1E65DA8F8();
  *(v0 + 10648) = v6;
  v2(v4, v5);
  v7 = *(v0 + 8200);

  return MEMORY[0x1EEE6DEC0](v0 + 1296, v7, sub_1E6153AC8, v0 + 11088);
}

uint64_t sub_1E6153AC8()
{
  *(v1 + 10696) = v0;
  if (v0)
  {
    v2 = sub_1E615B734;
  }

  else
  {
    v2 = sub_1E6153AFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6153AFC()
{
  v41 = v0;
  v1 = *(v0 + 9544);
  v2 = *(v0 + 9496);
  v3 = *(v0 + 9448);
  v38 = *(v0 + 8920);
  v4 = *(v0 + 8872);
  v5 = *(v0 + 8824);
  v6 = *(v0 + 8680);
  v7 = *(v0 + 8488);
  v8 = *(v0 + 8392);
  v9 = *(v0 + 7960);
  v10 = *(v0 + 7864);
  (*(v0 + 9400))(v9, *(v0 + 8200), v10);
  sub_1E65DA8D8();
  v2(v9, v10);
  sub_1E65DE318();
  v4(v6, v5, v7);
  v11 = sub_1E65E3B48();
  v12 = sub_1E65E6338();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 8680);
  v15 = *(v0 + 8536);
  v16 = *(v0 + 8488);
  v17 = *(v0 + 8392);
  v18 = *(v0 + 8296);
  v19 = *(v0 + 8248);
  if (v13)
  {
    v39 = *(v0 + 8248);
    v20 = swift_slowAlloc();
    v36 = v12;
    v21 = swift_slowAlloc();
    v40 = v21;
    *v20 = 136315138;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v22 = sub_1E65E6BC8();
    v37 = v17;
    v24 = v23;
    v26 = *(v15 + 8);
    v25 = v15 + 8;
    v26(v14, v16);
    v27 = sub_1E5DFD4B0(v22, v24, &v40);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_1E5DE9000, v11, v36, "forYouRequest end — correlationKey=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1E694F1C0](v21, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v18 + 8))(v37, v39);
  }

  else
  {

    v28 = *(v15 + 8);
    v25 = v15 + 8;
    v28(v14, v16);
    (*(v18 + 8))(v17, v19);
  }

  *(v0 + 10744) = v25;
  v29 = *(v0 + 10648);
  v30 = *(v0 + 10552);
  v31 = *(v0 + 10504);
  v32 = *(v0 + 10408);
  v33 = *(v0 + 10312);
  v34 = *(v0 + 5992);
  sub_1E65DC838();

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 5800, sub_1E6153DB4, v0 + 11520);
}

uint64_t sub_1E6153FA8()
{
  v1 = v0[1343];
  v2 = v0[1157];
  v3 = v0[1151];
  v4 = v0[1145];
  v5 = v0[1139];
  v6 = v0[1133];
  v7 = v0[1127];
  v8 = v0[1121];
  v9 = v0[1097];
  v12 = v0[1163];
  v13 = v0[1091];
  v14 = v0[1085];
  v15 = v0[1079];
  v16 = v0[1055];
  v17 = v0[1049];
  v18 = v0[1043];
  v19 = v0[1025];
  v20 = v0[1019];
  v21 = v0[1013];
  v22 = v0[1007];
  v23 = v0[1001];
  v24 = v0[995];
  v26 = v0[977];
  v28 = v0[971];
  v30 = v0[965];
  v32 = v0[959];
  v34 = v0[953];
  v25 = v0[947];
  v27 = v0[941];
  v29 = v0[935];
  v31 = v0[911];
  v33 = v0[905];
  v35 = v0[887];
  v36 = v0[869];
  v37 = v0[863];
  v38 = v0[857];
  v39 = v0[851];
  v40 = v0[833];
  v41 = v0[827];
  v42 = v0[809];
  v43 = v0[791];
  v44 = v0[773];
  (*(v0[1067] + 8))(v0[1103], v0[1061]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E61544B0()
{
  v102 = v0;
  v1 = v0[1169];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E6154E34()
{
  v102 = v0;
  v1 = v0[1199];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E61557E0()
{
  v102 = v0;
  v1 = v0[1217];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E615618C()
{
  v102 = v0;
  v1 = v0[1223];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E6156B38()
{
  v102 = v0;
  v1 = v0[1235];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E61574E4()
{
  v102 = v0;
  v1 = v0[1247];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E6157E90()
{
  v102 = v0;
  v1 = v0[1259];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E615883C()
{
  v102 = v0;
  v1 = v0[1271];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E61591E8()
{
  v102 = v0;
  v1 = v0[1283];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E6159978()
{
  v1 = *(v0 + 10312);

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 5800, sub_1E61599EC, v0 + 9840);
}

uint64_t sub_1E6159BE0()
{
  v102 = v0;
  v1 = v0[1295];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E615A58C()
{
  v102 = v0;
  v1 = v0[1307];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E615AD1C()
{
  v1 = v0[1319];
  v2 = v0[1301];
  v3 = v0[1289];

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 725, sub_1E615ADB0, v0 + 1338);
}

uint64_t sub_1E615AFA4()
{
  v102 = v0;
  v1 = v0[1325];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E615B734()
{
  v1 = v0[1319];
  v2 = v0[1301];
  v3 = v0[1289];

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 725, sub_1E615B7C8, v0 + 1392);
}

uint64_t sub_1E615B9BC()
{
  v102 = v0;
  v1 = v0[1337];
  v2 = v0[1115];
  v3 = v0[1109];
  v4 = v0[1103];
  v5 = v0[1079];
  v6 = v0[1061];
  v7 = v0[1043];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1079];
    v12 = v0[1067];
    v100 = v1;
    v13 = v0[1061];
    v93 = v0[1037];
    v95 = v0[1031];
    v97 = v0[1043];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v101[0] = v15;
    *v14 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v100;
    v99 = *(v12 + 8);
    v99(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v101);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v101);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v93 + 8))(v97, v95);
  }

  else
  {
    v27 = v0[1079];
    v28 = v0[1067];
    v29 = v0[1061];
    v30 = v0[1043];
    v31 = v0[1037];
    v32 = v0[1031];

    v99 = *(v28 + 8);
    v99(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1157];
  v53 = v0[1151];
  v54 = v0[1145];
  v55 = v0[1139];
  v56 = v0[1133];
  v57 = v0[1127];
  v58 = v0[1121];
  v59 = v0[1097];
  v63 = v0[1163];
  v64 = v0[1091];
  v65 = v0[1085];
  v66 = v0[1079];
  v67 = v0[1055];
  v68 = v0[1049];
  v69 = v0[1043];
  v70 = v0[1025];
  v71 = v0[1019];
  v72 = v0[1013];
  v73 = v0[1007];
  v74 = v0[1001];
  v75 = v0[995];
  v76 = v0[977];
  v77 = v0[971];
  v78 = v0[965];
  v84 = v0[947];
  v86 = v0[941];
  v60 = v0[1067] + 8;
  v79 = v0[935];
  v80 = v0[959];
  v81 = v0[911];
  v82 = v0[953];
  v83 = v0[905];
  v85 = v0[887];
  v87 = v0[869];
  v88 = v0[863];
  v89 = v0[857];
  v90 = v0[851];
  v91 = v0[833];
  v92 = v0[827];
  v94 = v0[809];
  v96 = v0[791];
  v98 = v0[773];
  v99(v0[1103], v0[1061]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E615C14C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E615C16C, 0, 0);
}

uint64_t sub_1E615C16C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 52);
  v4 = ConfigurationService.queryConfiguration.getter();
  v0[4] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FACF3C;
  v8 = v0[2];

  return v10(v8);
}

uint64_t sub_1E615C288(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728B0, &qword_1E65EBF38);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615C328, 0, 0);
}

uint64_t sub_1E615C328()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 40);
  v4 = AwardsService.makeAchievementEnvironmentCacheUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E615C444;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E615C444()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E615C55C, 0, 0);
}

uint64_t sub_1E615C55C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728B8, &qword_1E65EBF48);
  v3[4] = sub_1E5FED46C(&qword_1EE2D4490, &qword_1ED0728B8, &qword_1E65EBF48);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E65DC9A8();
  sub_1E5FED46C(&qword_1EE2D4780, &qword_1ED0728B0, &qword_1E65EBF38);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E615C69C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615C73C, 0, 0);
}

uint64_t sub_1E615C73C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 144);
  active = WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter();
  v0[6] = v5;
  v10 = (active + *active);
  v6 = active[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E615C858;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E615C858()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E615C970, 0, 0);
}

uint64_t sub_1E615C970()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728A8, &qword_1E65EBF30);
  v3[4] = sub_1E5FED46C(&qword_1EE2D4468, &qword_1ED0728A8, &qword_1E65EBF30);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E615CAAC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C0, &qword_1E65EBA50);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615CB4C, 0, 0);
}

uint64_t sub_1E615CB4C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 56);
  v4 = ContentAvailabilityService.makeAllowedContentRatingsUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E615CC68;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E615CC68()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E615CD80, 0, 0);
}

uint64_t sub_1E615CD80()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728A0, &qword_1E65EBF20);
  v3[4] = sub_1E5FED46C(&qword_1EE2D4470, &qword_1ED0728A0, &qword_1E65EBF20);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D4748, &qword_1ED0726C0, &qword_1E65EBA50);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E615CEBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E615CEDC, 0, 0);
}

uint64_t sub_1E615CEDC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 28);
  active = AppStateService.makeAppDidBecomeActiveStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (active + *active);
  v8 = active[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FE47FC;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E615D064(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072878, &qword_1E65EBED8);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615D104, 0, 0);
}

uint64_t sub_1E615D104()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 56);
  v4 = ContentAvailabilityService.makeNetworkConditionsUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E615D220;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E615D220()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E615D338, 0, 0);
}

uint64_t sub_1E615D338()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072880, &qword_1E65EBEE8);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44D8, &qword_1ED072880, &qword_1E65EBEE8);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D47B8, &qword_1ED072878, &qword_1E65EBED8);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E615D470(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072868, &qword_1E65EBEC0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615D510, 0, 0);
}

uint64_t sub_1E615D510()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 96);
  v4 = RecommendationService.makeOnboardingSurveyResultsUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E615D62C;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E615D62C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E615D744, 0, 0);
}

uint64_t sub_1E615D744()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072870, &qword_1E65EBED0);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44A0, &qword_1ED072870, &qword_1E65EBED0);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D4788, &qword_1ED072868, &qword_1E65EBEC0);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E615D87C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072858, &qword_1E65EBEA8);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615D91C, 0, 0);
}

uint64_t sub_1E615D91C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 92);
  v4 = PrivacyPreferenceService.makePersonalizationPrivacyPreferenceUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E615DA38;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E615DA38()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1E5FE45F0;
  }

  else
  {
    v4 = sub_1E615DB68;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E615DB68()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072860, &qword_1E65EBEB8);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44B0, &qword_1ED072860, &qword_1E65EBEB8);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D4798, &qword_1ED072858, &qword_1E65EBEA8);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E615DCA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E615DCC4, 0, 0);
}

uint64_t sub_1E615DCC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 28);
  v5 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FEE4C4;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E615DE4C(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return v5();
}

uint64_t sub_1E615DF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for RouteDestination();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_1E65DC508();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_1E65DC818();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615E0E8, 0, 0);
}

uint64_t sub_1E615E0E8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[2], v3);
  if ((*(v2 + 88))(v1, v3) != *MEMORY[0x1E699E0A0])
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    goto LABEL_5;
  }

  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[6];
  (*(v0[11] + 96))(v7, v0[10]);
  (*(v5 + 32))(v4, v7, v6);
  sub_1E6409F80(v10);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[6];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_1E5DFE50C(v11, &unk_1ED072040, &qword_1E65F0860);
LABEL_5:
    v12 = v0[15];
    v13 = v0[12];
    v14 = v0[9];
    v15 = v0[6];

    v16 = v0[1];

    return v16();
  }

  v18 = v0[3];
  sub_1E5E1E048(v0[6], v0[9], type metadata accessor for RouteDestination);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[16] = v20;
  *v20 = v0;
  v20[1] = sub_1E615E38C;
  v21 = v0[4];

  return v22();
}

uint64_t sub_1E615E38C()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E615E488, 0, 0);
}

uint64_t sub_1E615E488()
{
  v1 = *(v0 + 40);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  sub_1E600F5B0((v0 + 152));
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1E615E55C;
  v5 = *(v0 + 72);

  return RoutingContext.appendDestination(_:priority:)(v5, (v0 + 152), v3, v2);
}

uint64_t sub_1E615E55C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1E615E73C;
  }

  else
  {
    v3 = sub_1E615E670;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E615E670()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_1E61624E0(v0[9], type metadata accessor for RouteDestination);
  (*(v2 + 8))(v1, v3);
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E615E73C()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[6];
  sub_1E61624E0(v0[9], type metadata accessor for RouteDestination);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t sub_1E615E80C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v2 = sub_1E65D74E8();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615E900, 0, 0);
}

id sub_1E615E900()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1E65D74C8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[2], &qword_1ED072340, &qword_1E65EA410);
  }

  else
  {
    (*(v0[4] + 32))(v0[5], v0[2], v0[3]);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    v9 = sub_1E65D7448();
    sub_1E6215168(MEMORY[0x1E69E7CC0]);
    v10 = sub_1E65E5AF8();

    [v5 openSensitiveURL:v9 withOptions:v10];

    (*(v7 + 8))(v6, v8);
  }

  v11 = v0[5];
  v12 = v0[2];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E615EAB8(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072088, &qword_1E65EA770);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v2[17] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v2[20] = v8;
  v9 = *(v8 - 8);
  v2[21] = v9;
  v10 = *(v9 + 64) + 15;
  v2[22] = swift_task_alloc();
  v11 = sub_1E65D9CC8();
  v2[23] = v11;
  v12 = *(v11 - 8);
  v2[24] = v12;
  v13 = *(v12 + 64) + 15;
  v2[25] = swift_task_alloc();
  v14 = sub_1E65DC508();
  v2[26] = v14;
  v15 = *(v14 - 8);
  v2[27] = v15;
  v16 = *(v15 + 64) + 15;
  v2[28] = swift_task_alloc();
  v17 = sub_1E65DC818();
  v2[29] = v17;
  v18 = *(v17 - 8);
  v2[30] = v18;
  v19 = *(v18 + 64) + 15;
  v2[31] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CD0, &qword_1E65F3528);
  v2[32] = v20;
  v21 = *(v20 - 8);
  v2[33] = v21;
  v22 = *(v21 + 64) + 15;
  v2[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615EDB0, 0, 0);
}

uint64_t sub_1E615EDB0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 96);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(*(v0 + 96) + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v105 = (v2 + 88);
  v102 = (*(v0 + 264) + 8);
  v103 = *(v0 + 264);
  v104 = *MEMORY[0x1E699E0A0];
  v101 = (v2 + 8);
  v99 = (v1 + 32);
  v100 = (v2 + 96);
  v97 = (v1 + 8);
  v98 = *(v0 + 192);
  v108 = *(v0 + 96);

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v13 = v11;
    *(v0 + 280) = v12;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v14 = *(v0 + 224);
    v15 = *(v0 + 208);
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v103 + 16))(*(v0 + 272), *(v108 + 48) + *(v103 + 72) * (v16 | (v11 << 6)), *(v0 + 256));
    sub_1E65E04E8();
    v17 = (*v105)(v14, v15);
    v18 = *(v0 + 224);
    v19 = *(v0 + 208);
    if (v17 == v104)
    {
      v20 = *(v0 + 248);
      v21 = *(v0 + 232);
      (*v100)(*(v0 + 224), *(v0 + 208));
      (*v99)(v20, v18, v21);
      v22 = sub_1E65DC7B8();
      sub_1E65DC7E8();
      v23 = sub_1E65DC7D8();
      if (v23 <= 2 && v23 != 1 && v23 != 2)
      {
        sub_1E65E68A8();
        *(v0 + 16) = 0;
        *(v0 + 24) = 0xE000000000000000;
        MEMORY[0x1E694D7C0](0xD000000000000018, 0x80000001E6610E60);
        *(v0 + 352) = 0;
        sub_1E65E69B8();
        MEMORY[0x1E694D7C0](0xD000000000000018, 0x80000001E6610E80);
        v92 = *(v0 + 16);
        v93 = *(v0 + 24);
        return sub_1E65E69D8();
      }

      v24 = *(v0 + 248);
      v25 = *(v0 + 200);
      sub_1E65DC7F8();
      sub_1E65D9C88();
      v26 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = sub_1E6417228(v22);
      v29 = v12[2];
      v30 = (v28 & 1) == 0;
      result = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        return result;
      }

      v32 = v28;
      if (v12[3] >= result)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          result = sub_1E64237D0();
          v26 = v12;
          if (v32)
          {
            goto LABEL_21;
          }

          goto LABEL_19;
        }
      }

      else
      {
        sub_1E6419E14(result, isUniquelyReferenced_nonNull_native);
        v26 = v12;
        result = sub_1E6417228(v22);
        v96 = result;
        if ((v32 & 1) != (v33 & 1))
        {
LABEL_49:

          return sub_1E65E6C68();
        }
      }

      if (v32)
      {
        goto LABEL_21;
      }

LABEL_19:
      v26[(v96 >> 6) + 8] |= 1 << v96;
      *(v26[6] + v96) = v22;
      *(v26[7] + 8 * v96) = MEMORY[0x1E69E7CC0];
      v34 = v26[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_54;
      }

      v26[2] = v36;
LABEL_21:
      v37 = v26[7];
      v38 = *(v37 + 8 * v96);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 8 * v96) = v38;
      if ((v39 & 1) == 0)
      {
        v38 = sub_1E64F610C(0, v38[2] + 1, 1, v38);
        *(v37 + 8 * v96) = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        *(v37 + 8 * v96) = sub_1E64F610C(v40 > 1, v41 + 1, 1, v38);
      }

      v42 = *(v0 + 272);
      v43 = *(v0 + 256);
      v94 = *(v0 + 184);
      v95 = *(v0 + 200);
      (*v97)(*(v0 + 248), *(v0 + 232));
      (*v102)(v42, v43);
      v44 = *(v37 + 8 * v96);
      *(v44 + 16) = v41 + 1;
      (*(v98 + 32))(v44 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v41, v95, v94);
      v12 = v26;
    }

    else
    {
      (*v102)(*(v0 + 272), *(v0 + 256));
      (*v101)(v18, v19);
    }
  }

  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v11);
    ++v13;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v45 = *(v0 + 96);

  v46 = sub_1E6427ACC(MEMORY[0x1E69E7CC0]);
  *(v0 + 64) = v46;
  v47 = *(v12 + 32);
  *(v0 + 353) = v47;
  v48 = -1;
  v49 = -1 << v47;
  v50 = v12[8];
  if (-v49 < 64)
  {
    v48 = ~(-1 << -v49);
  }

  *(v0 + 288) = v46;
  v51 = v48 & v50;
  if (!v51)
  {
    v54 = 0;
    v55 = ((63 - v49) >> 6) - 1;
    v53 = *(v0 + 280);
    while (v55 != v54)
    {
      v52 = v54 + 1;
      v51 = *(v53 + 8 * v54++ + 72);
      if (v51)
      {
        goto LABEL_35;
      }
    }

    v68 = *(v0 + 168);
    v67 = *(v0 + 176);
    v70 = *(v0 + 152);
    v69 = *(v0 + 160);
    v72 = *(v0 + 136);
    v71 = *(v0 + 144);
    v73 = *(v0 + 104);

    v74 = *v73;
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    (*(v68 + 8))(v67, v69);
    sub_1E5FAB460(v70, v71, &qword_1ED072910, &qword_1E65EC030);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v78 = **(v0 + 144);
        goto LABEL_45;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v76 = *(v0 + 144);
        v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
        v78 = *v76;
        v79 = sub_1E65D76A8();
        (*(*(v79 - 8) + 8))(&v76[v77], v79);
LABEL_45:
        v80 = *(v0 + 272);
        v81 = *(v0 + 248);
        v82 = *(v0 + 224);
        v83 = *(v0 + 200);
        v84 = *(v0 + 176);
        v106 = *(v0 + 152);
        v107 = *(v0 + 144);
        v110 = *(v0 + 128);
        v85 = *(v0 + 96);
        v86 = *(v0 + 104);
        v87 = swift_task_alloc();
        v87[2] = v0 + 64;
        v87[3] = v78;
        v87[4] = v86;
        v88 = sub_1E6404FF0(sub_1E6161D08, v87, v85);

        v89 = sub_1E600C24C(v88);

        v90 = *(v0 + 64);

        v91 = *(v0 + 8);

        return v91(v89);
      }

      sub_1E5DFE50C(*(v0 + 144), &qword_1ED072910, &qword_1E65EC030);
    }

    v78 = 0;
    goto LABEL_45;
  }

  v52 = 0;
  v53 = *(v0 + 280);
LABEL_35:
  *(v0 + 296) = v51;
  *(v0 + 304) = v52;
  v56 = __clz(__rbit64(v51)) | (v52 << 6);
  v57 = *(*(v53 + 48) + v56);
  v58 = *(v0 + 104);
  *(v0 + 354) = v57;
  v59 = *(*(v53 + 56) + 8 * v56);
  *(v0 + 312) = v59;
  v60 = v58 + *(type metadata accessor for AppComposer() + 20);
  v61 = *(type metadata accessor for AppEnvironment() + 48);

  v62 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 320) = v63;
  v109 = (v62 + *v62);
  v64 = v62[1];
  v65 = swift_task_alloc();
  *(v0 + 328) = v65;
  *v65 = v0;
  v65[1] = sub_1E615F79C;
  v66 = byte_1E65F364A[v57];

  return v109(v66, v59);
}

uint64_t sub_1E615F79C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v7 = *(v3 + 320);
  v8 = *(v3 + 312);

  if (v1)
  {
    v9 = sub_1E61600DC;
  }

  else
  {
    v9 = sub_1E615F8F4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

unint64_t sub_1E615F8F4()
{
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v0 + 72) = MEMORY[0x1E69E7CC0];
    sub_1E601BF24(0, v2, 0);
    v3 = *(v0 + 72);
    v93 = sub_1E65D8258();
    v4 = *(v93 - 8);
    v91 = *(v4 + 16);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v90 = *(v4 + 72);
    do
    {
      v97 = v2;
      v6 = *(v0 + 128);
      v7 = *(v0 + 354);
      v91(&v6[*(*(v0 + 112) + 48)], v5, v93);
      v95 = sub_1E65DC748();
      v9 = v8;
      v10 = sub_1E65D8078();
      v12 = v11;
      v13 = sub_1E65D81B8();
      v15 = v3;
      if (v14)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      *(v0 + 32) = v10;
      *(v0 + 40) = v12;

      v18 = v16;
      v3 = v15;
      MEMORY[0x1E694D7C0](v18, v17);

      v19 = *(v0 + 40);
      *(v0 + 48) = *(v0 + 32);
      *(v0 + 56) = v19;

      MEMORY[0x1E694D7C0](v95, v9);

      v20 = *(v0 + 56);
      *v6 = *(v0 + 48);
      *(v6 + 1) = v20;
      *(v0 + 72) = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1E601BF24(v21 > 1, v22 + 1, 1);
        v3 = *(v0 + 72);
      }

      v24 = *(v0 + 120);
      v23 = *(v0 + 128);
      *(v3 + 16) = v22 + 1;
      sub_1E5FAB460(v23, v3 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, &qword_1ED072088, &qword_1E65EA770);
      v5 += v90;
      v2 = v97 - 1;
    }

    while (v97 != 1);
    v25 = *(v0 + 336);

    if (*(v3 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v27 = *(v0 + 336);

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072928, &qword_1E65EC048);
      v26 = sub_1E65E6A28();
      goto LABEL_16;
    }
  }

  v26 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v28 = *(v0 + 344);
  *(v0 + 80) = v26;

  sub_1E64346A8(v29, 1, (v0 + 80));
  if (v28)
  {

    return swift_unexpectedError();
  }

  v31 = *(v0 + 354);

  v32 = *(v0 + 80);
  v33 = *(v0 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 88) = v33;
  result = sub_1E6417228(v31);
  v36 = *(v33 + 16);
  v37 = (v35 & 1) == 0;
  v38 = __OFADD__(v36, v37);
  v39 = v36 + v37;
  if (v38)
  {
    __break(1u);
    goto LABEL_30;
  }

  LOBYTE(v31) = v35;
  if (*(v33 + 24) >= v39)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

LABEL_30:
    v46 = result;
    sub_1E6423794();
    result = v46;
    v43 = *(v0 + 88);
    if (v31)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v40 = *(v0 + 354);
  sub_1E6419DC4(v39, isUniquelyReferenced_nonNull_native);
  v41 = *(v0 + 88);
  result = sub_1E6417228(v40);
  if ((v31 & 1) != (v42 & 1))
  {

    return sub_1E65E6C68();
  }

LABEL_27:
  v43 = *(v0 + 88);
  if (v31)
  {
LABEL_28:
    v44 = v43[7];
    v45 = *(v44 + 8 * result);
    *(v44 + 8 * result) = v32;

    goto LABEL_33;
  }

LABEL_31:
  v47 = *(v0 + 354);
  v43[(result >> 6) + 8] |= 1 << result;
  *(v43[6] + result) = v47;
  *(v43[7] + 8 * result) = v32;
  v48 = v43[2];
  v38 = __OFADD__(v48, 1);
  v49 = v48 + 1;
  if (v38)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v43[2] = v49;
LABEL_33:
  *(v0 + 64) = v43;
  v51 = *(v0 + 296);
  v50 = *(v0 + 304);
  *(v0 + 288) = v43;
  v52 = (v51 - 1) & v51;
  if (!v52)
  {
    while (1)
    {
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      result = *(v0 + 280);
      if (v53 >= (((1 << *(v0 + 353)) + 63) >> 6))
      {
        break;
      }

      v52 = *(result + 8 * v53 + 64);
      ++v50;
      if (v52)
      {
        v50 = v53;
        goto LABEL_39;
      }
    }

    v66 = *(v0 + 168);
    v65 = *(v0 + 176);
    v68 = *(v0 + 152);
    v67 = *(v0 + 160);
    v70 = *(v0 + 136);
    v69 = *(v0 + 144);
    v71 = *(v0 + 104);

    v72 = *v71;
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    (*(v66 + 8))(v65, v67);
    sub_1E5FAB460(v68, v69, &qword_1ED072910, &qword_1E65EC030);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v99 = v0 + 64;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v99 = v0 + 64;
        v76 = **(v0 + 144);
        goto LABEL_50;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v99 = v0 + 64;
        v74 = *(v0 + 144);
        v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
        v76 = *v74;
        v77 = sub_1E65D76A8();
        (*(*(v77 - 8) + 8))(&v74[v75], v77);
LABEL_50:
        v78 = *(v0 + 272);
        v79 = *(v0 + 248);
        v80 = *(v0 + 224);
        v81 = *(v0 + 200);
        v82 = *(v0 + 176);
        v92 = *(v0 + 152);
        v94 = *(v0 + 144);
        v96 = *(v0 + 128);
        v83 = *(v0 + 96);
        v84 = *(v0 + 104);
        v85 = swift_task_alloc();
        v85[2] = v99;
        v85[3] = v76;
        v85[4] = v84;
        v86 = sub_1E6404FF0(sub_1E6161D08, v85, v83);

        v87 = sub_1E600C24C(v86);

        v88 = *(v0 + 64);

        v89 = *(v0 + 8);

        return v89(v87);
      }

      v99 = v0 + 64;
      sub_1E5DFE50C(*(v0 + 144), &qword_1ED072910, &qword_1E65EC030);
    }

    v76 = 0;
    goto LABEL_50;
  }

  result = *(v0 + 280);
LABEL_39:
  *(v0 + 296) = v52;
  *(v0 + 304) = v50;
  v54 = __clz(__rbit64(v52)) | (v50 << 6);
  v55 = *(*(result + 48) + v54);
  v56 = *(v0 + 104);
  *(v0 + 354) = v55;
  v57 = *(*(result + 56) + 8 * v54);
  *(v0 + 312) = v57;
  v58 = v56 + *(type metadata accessor for AppComposer() + 20);
  v59 = *(type metadata accessor for AppEnvironment() + 48);

  v60 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 320) = v61;
  v98 = (v60 + *v60);
  v62 = v60[1];
  v63 = swift_task_alloc();
  *(v0 + 328) = v63;
  *v63 = v0;
  v63[1] = sub_1E615F79C;
  v64 = byte_1E65F364A[v55];

  return v98(v64, v57);
}

uint64_t sub_1E61600DC()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[22];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[16];

  v11 = v0[1];
  v12 = v0[43];

  return v11();
}

uint64_t sub_1E61601C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a5;
  v63 = a4;
  v70 = a3;
  v69 = sub_1E65D7848();
  v67 = *(v69 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v61 - v11;
  v12 = sub_1E65D8258();
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = *(v72 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v61 - v17;
  v18 = sub_1E65DC508();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E65DC818();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CD0, &qword_1E65F3528);
  v68 = a1;
  sub_1E65E04E8();
  if ((*(v19 + 88))(v22, v18) != *MEMORY[0x1E699E0A0])
  {
    (*(v19 + 8))(v22, v18);
LABEL_14:
    v58 = 1;
    v56 = v74;
    goto LABEL_15;
  }

  (*(v19 + 96))(v22, v18);
  (*(v24 + 32))(v27, v22, v23);
  v28 = sub_1E65DC7B8();
  v29 = *a2;
  if (!*(*a2 + 16) || (v30 = sub_1E6417228(v28), (v31 & 1) == 0))
  {
LABEL_13:
    (*(v24 + 8))(v27, v23);
    goto LABEL_14;
  }

  v32 = *(*(v29 + 56) + 8 * v30);

  v33 = sub_1E65DC798();
  if (!*(v32 + 16))
  {

    goto LABEL_12;
  }

  v35 = sub_1E6215038(v33, v34);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v38 = v72;
  v39 = *(v32 + 56) + *(v72 + 72) * v35;
  v40 = v73;
  (*(v72 + 16))(v16, v39, v73);

  v41 = *(v38 + 32);
  v42 = v71;
  v41(v71, v16, v40);
  v43 = v70;
  if (v70)
  {
    v44 = sub_1E65D80B8();
    v46 = v45;
    v75 = v44;
    v76 = v45;
    v48 = v47 & 1;
    v77 = v47 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
    sub_1E65D7FB8();
    sub_1E5F87058(v44, v46, v48);
    if (v78 != 3 && (sub_1E637CE70(v78, v43) & 1) == 0)
    {
      (*(v72 + 8))(v42, v73);
      goto LABEL_13;
    }
  }

  v49 = v63;
  v50 = *v63;
  swift_getKeyPath();
  v51 = v62;
  sub_1E65E4EC8();

  v52 = v49 + *(type metadata accessor for AppComposer() + 20);
  v53 = v52[8];
  swift_getKeyPath();
  v54 = v66;
  sub_1E65E4EC8();

  v55 = &v52[*(type metadata accessor for AppEnvironment() + 136)];
  v56 = v74;
  v57 = v71;
  sub_1E64107B4(v68, v53, v54, v55, v74);
  (*(v67 + 8))(v54, v69);
  (*(v64 + 8))(v51, v65);
  (*(v72 + 8))(v57, v73);
  (*(v24 + 8))(v27, v23);
  v58 = 0;
LABEL_15:
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CA0, &unk_1E65EC630);
  return (*(*(v59 - 8) + 56))(v56, v58, 1, v59);
}

id sub_1E6160810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a2;
  v49 = a3;
  v56 = a1;
  v47[1] = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v4 = *(*(v51 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v51);
  v53 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v50 = v47 - v7;
  v8 = sub_1E65DC778();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1E65DC578();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65D76F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v55 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v47 - v23;
  v25 = sub_1E65D7848();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AppState();
  v31 = v30[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v24);
  sub_1E5DFE50C(v20, &qword_1ED071F78, &unk_1E65EA3F0);
  v32 = *(v26 + 48);
  v33 = v32(v24, 1, v25);
  v52 = v29;
  if (v33 == 1)
  {
    sub_1E65D77C8();
    if (v32(v24, 1, v25) != 1)
    {
      sub_1E5DFE50C(v24, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v26 + 32))(v29, v24, v25);
  }

  (*(v14 + 16))(v55, v48, v13);
  v34 = *(v49 + *(type metadata accessor for AppComposer() + 20) + 8);
  sub_1E65DAE08();
  sub_1E65DC768();
  sub_1E65DC568();
  v35 = v30[50];
  sub_1E6161CF4(*(v56 + v30[35]), *(v56 + v30[35] + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v36 = v50;
  sub_1E65E4C98();
  v37 = v36;
  v38 = v53;
  sub_1E5FAB460(v37, v53, &qword_1ED072808, &qword_1E65EBE00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072820, &qword_1E65EBE18) + 48);
        v41 = *v38;
        v42 = sub_1E65D76A8();
        (*(*(v42 - 8) + 8))(&v38[v40], v42);
      }

      else
      {
        sub_1E5DFE50C(v38, &qword_1ED072808, &qword_1E65EBE00);
      }
    }

    else
    {
      v43 = *v38;
    }
  }

  v44 = v30[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v46 = result;
    MobileGestalt_get_wapiCapability();

    type metadata accessor for ArtworkDescriptor();
    sub_1E6162498(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    sub_1E6160F48();
    return sub_1E65DC538();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6160E58(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CC8, &qword_1E65F3520);
  v2 = sub_1E65DC528();
  v4 = v3;
  v5 = a1 + *(type metadata accessor for AppState() + 140);
  result = sub_1E60DB538(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v4;
  return result;
}

uint64_t sub_1E6160EC8@<X0>(void (*a1)(unint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E607F810(a1, v6, a2);
}

unint64_t sub_1E6160F48()
{
  result = qword_1ED075C98;
  if (!qword_1ED075C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075C98);
  }

  return result;
}

uint64_t sub_1E6160F9C(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6150164(a1, a2, v2 + v7);
}

uint64_t sub_1E6161080(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615C288(a1, v1 + v5);
}

uint64_t sub_1E616115C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615C69C(a1, v1 + v5);
}

uint64_t sub_1E6161238(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615CAAC(a1, v1 + v5);
}

uint64_t sub_1E6161314(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615CEBC(a1, v1 + v5);
}

uint64_t sub_1E61613F0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE3504(a1, v1 + v5);
}

uint64_t sub_1E61614CC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE37C0(a1, v1 + v5);
}

uint64_t sub_1E61615A8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615D064(a1, v1 + v5);
}

uint64_t sub_1E6161684(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E615D470(a1, v1 + v5);
}

uint64_t sub_1E6161760(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615D87C(a1, v1 + v5);
}

uint64_t sub_1E616183C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615DCA4(a1, v1 + v5);
}

uint64_t sub_1E6161918(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE4D1C(a1, v1 + v5);
}

uint64_t sub_1E61619F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E615DE4C(v2);
}

uint64_t sub_1E6161A8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615DF34(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6161B38(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FE99E8;

  return sub_1E615EAB8(a1, v1 + v5);
}

id sub_1E6161C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E65D76F8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1E6160810(a1, v2 + v6, v9, a2);
}

uint64_t sub_1E6161CF4(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_1E6161D28(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D76F8() - 8);
  v9 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));
  v10 = *(v9 + *(v8 + 64));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E5FE09EC(a1, v1 + v6, v9, v10);
}

uint64_t sub_1E6161E94(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E615C14C(a1, v1 + v5);
}

uint64_t sub_1E6161F70(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1144(a1, v1 + v5);
}

uint64_t sub_1E616204C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE13A8(a1, v1 + v5);
}

uint64_t sub_1E6162128(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE14DC(a1, v1 + v5);
}

uint64_t sub_1E6162204(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1764(a1, v1 + v5);
}

uint64_t sub_1E61622E0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1898(a1, v1 + v5);
}

uint64_t sub_1E61623BC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE19CC(a1, v1 + v5);
}

uint64_t sub_1E6162498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E61624E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6162540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v67 = a4;
  v68 = a3;
  v11 = type metadata accessor for RouteSource(0);
  v64 = *(v11 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E65D74E8();
  v13 = *(v65 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v17 = sub_1E65E3B68();
  __swift_project_value_buffer(v17, qword_1EE2EA2A0);
  sub_1E65E3B18();
  if (v16 < 4)
  {
    *a6 = a1;
    a6[1] = a2;
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for RouteDestination();
    sub_1E5DFA978(v67, a6 + *(v24 + 20), type metadata accessor for RouteSource);
    *(a6 + *(v24 + 24)) = a5;

    v25 = sub_1E64A37AC();
    if (*(v25 + 16) && (v26 = sub_1E6215038(1953460082, 0xE400000000000000), (v27 & 1) != 0))
    {
      v28 = (*(v25 + 56) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];

      RootItem.init(rawValue:)(v29, v30, &v69);
      v31 = *(&v69 + 1);
      if (*(&v69 + 1) != 6)
      {
        v32 = v69;
LABEL_15:
        v33 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
        v35 = (a6 + *(v34 + 48));
        v36 = *(v34 + 64);
        *v35 = v32;
        v35[1] = v31;
        *(a6 + v36) = 1;
        type metadata accessor for ResolvedURLRoute.Action(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for ResolvedURLRoute(0);
        *v33 = 0;
        v33[1] = 0;
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {

      v69 = xmmword_1E65EAE00;
    }

    swift_beginAccess();
    v32 = qword_1ED075958;
    v31 = qword_1ED075960;
    sub_1E5E05374(qword_1ED075958, qword_1ED075960);
    goto LABEL_15;
  }

  v18 = sub_1E64A37AC();
  v19 = *(v18 + 16);
  v63 = a5;
  if (!v19 || (v20 = sub_1E6215038(1953460082, 0xE400000000000000), (v21 & 1) == 0))
  {

    v69 = xmmword_1E65EAE00;
    goto LABEL_17;
  }

  v22 = (*(v18 + 56) + 16 * v20);
  v23 = v22[1];
  v62 = *v22;

  RootItem.init(rawValue:)(v62, v23, &v69);
  if (*(&v69 + 1) == 6)
  {
LABEL_17:
    swift_beginAccess();
    v61 = qword_1ED075960;
    v62 = qword_1ED075958;
    sub_1E5E05374(qword_1ED075958, qword_1ED075960);
    goto LABEL_18;
  }

  v61 = *(&v69 + 1);
  v62 = v69;
LABEL_18:
  v60 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
  v39 = (a6 + *(v38 + 48));
  v57 = *(v38 + 64);
  v58 = a2;
  v59 = a1;
  *a6 = a1;
  a6[1] = a2;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v40 = type metadata accessor for RouteDestination();
  v41 = v67;
  sub_1E5DFA978(v67, a6 + *(v40 + 20), type metadata accessor for RouteSource);
  *(a6 + *(v40 + 24)) = v63;
  v42 = v61;
  *v39 = v62;
  v39[1] = v42;
  *(a6 + v57) = 1;
  type metadata accessor for ResolvedURLRoute.Action(0);
  swift_storeEnumTagMultiPayload();
  v43 = v65;
  (*(v13 + 16))(&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v68, v65);
  v44 = v41;
  v45 = v66;
  sub_1E5DFA978(v44, v66, type metadata accessor for RouteSource);
  v46 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v47 = (v14 + *(v64 + 80) + v46) & ~*(v64 + 80);
  v48 = (v12 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v15;
  v51 = v58;
  *(v49 + 16) = v59;
  *(v49 + 24) = v51;
  (*(v13 + 32))(v49 + v46, v50, v43);
  sub_1E613DB80(v45, v49 + v47);
  v52 = v62;
  *(v49 + v48) = v63;
  v53 = (v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8));
  v54 = v61;
  *v53 = v52;
  v53[1] = v54;
  v55 = v60;
  *v60 = &unk_1E65F3670;
  v55[1] = v49;
  type metadata accessor for ResolvedURLRoute(0);
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_1E5E05374(v52, v54);
}

uint64_t sub_1E6162BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[112] = a8;
  v8[111] = a7;
  v8[110] = a6;
  v8[109] = a5;
  v8[108] = a4;
  v8[107] = a3;
  v8[106] = a2;
  v8[105] = a1;
  v9 = type metadata accessor for ResolvedURLRoute.Action(0);
  v8[113] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[114] = swift_task_alloc();
  v11 = type metadata accessor for RouteDestination();
  v8[115] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[116] = swift_task_alloc();
  v13 = sub_1E65D8668();
  v8[117] = v13;
  v14 = *(v13 - 8);
  v8[118] = v14;
  v15 = *(v14 + 64) + 15;
  v8[119] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CD8, &qword_1E65F3678);
  v8[120] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v8[121] = swift_task_alloc();
  v8[122] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6162D30, 0, 0);
}

uint64_t sub_1E6162D30()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 960);
  v3 = *(v0 + 864);
  v4 = *(v0 + 856);
  v5 = *(v0 + 848);
  sub_1E5DF650C(*(v0 + 840), v0 + 696);
  v6 = swift_allocObject();
  *(v0 + 984) = v6;
  sub_1E5DF599C((v0 + 696), v6 + 16);
  *(v6 + 56) = v5;
  *(v6 + 64) = v4;

  swift_asyncLet_begin();
  *(v0 + 992) = sub_1E65D7418();
  if (v7)
  {
    v8 = *(v0 + 976);

    return MEMORY[0x1EEE6DEB0](v0 + 16, v8, sub_1E6163574, v0 + 656);
  }

  else
  {
    v9 = *(v0 + 976);

    return MEMORY[0x1EEE6DEB8](v0 + 16, v9, sub_1E6162E74, v0 + 736);
  }
}

uint64_t sub_1E6162E90()
{
  v1 = *(v0 + 968);
  sub_1E5DFD1CC(*(v0 + 976), v1, &qword_1ED075CD8, &qword_1E65F3678);
  v2 = sub_1E65D9658();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1E5DFE50C(*(v0 + 968), &qword_1ED075CD8, &qword_1E65F3678);
LABEL_4:
    v13 = *(v0 + 976);

    return MEMORY[0x1EEE6DEB0](v0 + 16, v13, sub_1E6163574, v0 + 656);
  }

  v4 = *(v0 + 968);
  v5 = *(v0 + 952);
  v6 = *(v0 + 944);
  v7 = *(v0 + 936);
  sub_1E65D9618();
  (*(v3 + 8))(v4, v2);
  v8 = sub_1E65D8658();
  v10 = v9;
  LOBYTE(v4) = v11;
  (*(v6 + 8))(v5, v7);
  *(v0 + 776) = v8;
  *(v0 + 784) = v10;
  *(v0 + 792) = v4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
  sub_1E65D7FB8();
  sub_1E5F87058(v8, v10, v4 & 1);
  v12 = *(v0 + 793);
  if (v12 == 4)
  {
    goto LABEL_4;
  }

  v14 = *(v0 + 992);
  v15 = *(v0 + 928);
  v16 = *(v0 + 912);
  v35 = *(v0 + 896);
  v36 = *(v0 + 904);
  v17 = *(v0 + 880);
  v32 = *(v0 + 920);
  v33 = *(v0 + 872);
  v18 = *(v0 + 856);
  v34 = *(v0 + 888);
  v19 = *(v0 + 848);
  v20 = *(v0 + 840);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = v19;
  *(v15 + 24) = v18;
  *(v15 + 32) = v14;
  *(v15 + 40) = v12;
  v22 = sub_1E65D96F8();
  (*(*(v22 - 8) + 56))(v15 + v21, 1, 1, v22);
  *(v15 + 48) = 0;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5DFA978(v33, v15 + *(v32 + 20), type metadata accessor for RouteSource);
  *(v15 + *(v32 + 24)) = v17;
  v23 = __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
  v25 = v16 + v24[12];
  v26 = (v16 + v24[16]);
  v27 = v24[20];
  sub_1E5DFA978(v15, v16, type metadata accessor for RouteDestination);
  *v26 = v34;
  v26[1] = v35;
  *(v16 + v27) = 1;
  *v25 = 0;
  *(v25 + 8) = -64;
  swift_storeEnumTagMultiPayload();
  v28 = *v23;

  sub_1E5E05374(v34, v35);
  v29 = swift_task_alloc();
  *(v0 + 1000) = v29;
  *v29 = v0;
  v29[1] = sub_1E6163264;
  v30 = *(v0 + 912);

  return sub_1E5FFA73C(v30, v28);
}

uint64_t sub_1E6163264()
{
  v2 = *(*v1 + 1000);
  v3 = *(*v1 + 912);
  v6 = *v1;
  *(*v1 + 1008) = v0;

  sub_1E5E09E10(v3, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {
    v4 = sub_1E6163428;
  }

  else
  {
    v4 = sub_1E61633A8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E61633A8()
{
  sub_1E5E09E10(*(v0 + 928), type metadata accessor for RouteDestination);
  v1 = *(v0 + 976);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v1, sub_1E6163574, v0 + 656);
}

uint64_t sub_1E6163428()
{
  sub_1E5E09E10(*(v0 + 928), type metadata accessor for RouteDestination);
  v1 = *(v0 + 976);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v1, sub_1E61634A8, v0 + 800);
}

uint64_t sub_1E61634C4()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[119];
  v5 = v0[116];
  v6 = v0[114];

  v7 = v0[1];
  v8 = v0[126];

  return v7();
}

uint64_t sub_1E6163590()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[119];
  v5 = v0[116];
  v6 = v0[114];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6163640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for CatalogService();
  v4[6] = v5;
  Description = v5[-1].Description;
  v4[7] = Description;
  v7 = Description[8] + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6163704, 0, 0);
}

uint64_t sub_1E6163704()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v5 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v6 = v5 + *(type metadata accessor for AppComposer() + 20);
  v7 = type metadata accessor for AppEnvironment();
  (*(v2 + 16))(v1, v4 + v6 + *(v7 + 48), v3);
  v8 = CatalogService.fetchRemoteCatalogWorkoutDetail.getter();
  *(v0 + 72) = v9;
  (*(v2 + 8))(v1, v3);
  v16 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1E6163894;
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  v14 = *(v0 + 16);

  return v16(v14, v12, v13);
}

uint64_t sub_1E6163894()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  v5 = *(v2 + 72);
  if (v0)
  {

    v6 = sub_1E6163A88;
  }

  else
  {

    v6 = sub_1E61639DC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E61639DC()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = sub_1E65D9658();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6163A88()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = sub_1E65D9658();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6163B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = type metadata accessor for ResolvedURLRoute.Action(0);
  v3[18] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v6 = sub_1E65DB848();
  v3[20] = v6;
  v7 = *(v6 - 8);
  v3[21] = v7;
  v8 = *(v7 + 64) + 15;
  v3[22] = swift_task_alloc();
  v9 = type metadata accessor for AppEnvironment();
  v3[23] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v11 = type metadata accessor for RouteDestination();
  v3[25] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v14 = sub_1E65DB438();
  v3[28] = v14;
  v15 = *(v14 - 8);
  v3[29] = v15;
  v16 = *(v15 + 64) + 15;
  v3[30] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v20 = sub_1E65D7A38();
  v3[34] = v20;
  v21 = *(v20 - 8);
  v3[35] = v21;
  v22 = *(v21 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v24 = *(*(sub_1E65E5CC8() - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v25 = sub_1E65D74E8();
  v3[41] = v25;
  v26 = *(v25 - 8);
  v3[42] = v26;
  v27 = *(v26 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6163F04, 0, 0);
}

uint64_t sub_1E6163F04()
{
  v1 = v0[16];
  v2 = sub_1E64A37AC();
  if (!*(v2 + 16) || (v3 = sub_1E6215038(0x556465646F636E65, 0xEA00000000004C52), (v4 & 1) == 0))
  {

    goto LABEL_8;
  }

  v5 = (*(v2 + 56) + 16 * v3);
  v6 = *v5;
  v7 = v5[1];

  v8 = sub_1E65D74F8();
  v10 = v9;

  if (v10 >> 60 == 15)
  {
LABEL_8:
    sub_1E5FAA54C();
    swift_allocError();
    *v16 = 4;
    swift_willThrow();
    v18 = v0[43];
    v17 = v0[44];
    v20 = v0[39];
    v19 = v0[40];
    v22 = v0[37];
    v21 = v0[38];
    v23 = v0[36];
    v25 = v0[32];
    v24 = v0[33];
    v26 = v0[31];
    v57 = v0[30];
    v59 = v0[27];
    v61 = v0[26];
    v63 = v0[24];
    v65 = v0[22];
    v67 = v0[19];

    v27 = v0[1];

    return v27();
  }

  v11 = v0[40];
  sub_1E65E5CB8();
  sub_1E65E5C88();
  if (!v12)
  {
    sub_1E61681A0(v8, v10);
    goto LABEL_8;
  }

  v13 = v0[41];
  v14 = v0[42];
  v15 = v0[39];
  sub_1E65D74C8();
  sub_1E61681A0(v8, v10);

  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_1E5DFE50C(v0[39], &qword_1ED072340, &qword_1E65EA410);
    goto LABEL_8;
  }

  v30 = v0[43];
  v29 = v0[44];
  v31 = v0[41];
  v32 = v0[42];
  v33 = v0[38];
  v34 = v0[35];
  v60 = v0[36];
  v62 = v0[34];
  v35 = v0[33];
  v54 = v0[32];
  v36 = v0[31];
  v55 = v36;
  v56 = v0[37];
  v58 = v0[27];
  v68 = v0[24];
  v69 = v0[23];
  v64 = v0[30];
  v66 = v0[15];
  v37 = *(v32 + 32);
  v37(v30, v0[39], v31);
  v37(v29, v30, v31);
  v38 = *MEMORY[0x1E69CBDD8];
  v39 = sub_1E65D8F38();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v35, v38, v39);
  (*(v40 + 56))(v35, 0, 1, v39);
  v41 = *(v32 + 16);
  v0[45] = v41;
  v0[46] = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v33, v29, v31);
  (*(v32 + 56))(v33, 0, 1, v31);
  v42 = sub_1E65D9908();
  (*(*(v42 - 8) + 56))(v54, 1, 1, v42);
  v43 = sub_1E65D9F88();
  (*(*(v43 - 8) + 56))(v55, 1, 1, v43);
  sub_1E65D7A28();
  (*(v34 + 16))(v60, v56, v62);
  sub_1E65D8CA8();
  v44 = sub_1E65D8CB8();
  (*(*(v44 - 8) + 56))(v58, 0, 1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072368, &qword_1E65EAB98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = 0x79546C6C65737075;
  *(inited + 40) = 0xEA00000000006570;
  v0[13] = 0x636972656E6567;
  v0[14] = 0xE700000000000000;
  sub_1E65E6848();
  sub_1E642764C(inited);
  swift_setDeallocating();
  sub_1E5DFE50C(inited + 32, &unk_1ED072390, &qword_1E65EABB8);
  sub_1E5FB8458(MEMORY[0x1E69E7CC0]);
  sub_1E65DB428();
  v46 = *__swift_project_boxed_opaque_existential_1(v66, v66[3]);
  v47 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v48 = v46 + v47 + *(type metadata accessor for AppComposer() + 20);
  sub_1E5DFA978(v48, v68, type metadata accessor for AppEnvironment);
  v49 = v68 + *(v69 + 24);
  v50 = AccountService.fetchCurrentAccount.getter();
  v0[47] = v51;
  v70 = (v50 + *v50);
  v52 = v50[1];
  v53 = swift_task_alloc();
  v0[48] = v53;
  *v53 = v0;
  v53[1] = sub_1E61645F4;

  return v70();
}

uint64_t sub_1E61645F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v7 = sub_1E6164840;
  }

  else
  {
    v8 = *(v4 + 376);

    *(v4 + 400) = a1;
    v7 = sub_1E6164724;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6164724()
{
  v1 = v0[50];
  v0[51] = v1;
  v2 = v0[24];
  v3 = *(v0[23] + 76);
  v4 = v1;
  v5 = MarketingService.makeMarketingMetricConfiguration.getter();
  v0[52] = v6;
  v12 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[53] = v8;
  *v8 = v0;
  v8[1] = sub_1E6164AA4;
  v9 = v0[30];
  v10 = v0[22];

  return (v12)(v10, v9, 0);
}

uint64_t sub_1E6164840()
{
  v1 = v0[47];

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[49];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[49];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to fetch current account with error: %{public}@", v9, 0xCu);
    sub_1E5DFE50C(v10, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  v0[51] = 0;
  v13 = v0[24] + *(v0[23] + 76);
  v14 = MarketingService.makeMarketingMetricConfiguration.getter();
  v0[52] = v15;
  v21 = (v14 + *v14);
  v16 = v14[1];
  v17 = swift_task_alloc();
  v0[53] = v17;
  *v17 = v0;
  v17[1] = sub_1E6164AA4;
  v18 = v0[30];
  v19 = v0[22];

  return (v21)(v19, v18, 0);
}

uint64_t sub_1E6164AA4()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6164BBC, 0, 0);
}

uint64_t sub_1E6164BBC()
{
  v1 = v0[51];
  v21 = v0[45];
  v22 = v0[46];
  v2 = v0[44];
  v3 = v0[41];
  v4 = v0[26];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v26 = v0[24];
  v27 = v0[18];
  v23 = v0[25];
  v24 = v0[17];
  v25 = v0[15];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  *v4 = v1;
  (*(v5 + 16))(&v4[v10], v6, v8);
  v21(&v4[v11], v2, v3);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5DFA978(v24, &v4[*(v23 + 20)], type metadata accessor for RouteSource);

  (*(v5 + 8))(v6, v8);
  sub_1E5E09E10(v26, type metadata accessor for AppEnvironment);
  *&v4[*(v23 + 24)] = MEMORY[0x1E69E7CD0];
  v12 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
  v14 = v7 + v13[12];
  v15 = v13[16];
  v16 = v13[20];
  sub_1E5DFA978(v4, v7, type metadata accessor for RouteDestination);
  *(v7 + v16) = 1;
  *v14 = 0;
  *(v14 + 8) = -64;
  *(v7 + v15) = xmmword_1E65EC1C0;
  swift_storeEnumTagMultiPayload();
  v17 = *v12;
  v18 = swift_task_alloc();
  v0[54] = v18;
  *v18 = v0;
  v18[1] = sub_1E6164E0C;
  v19 = v0[19];

  return sub_1E5FFA73C(v19, v17);
}

uint64_t sub_1E6164E0C()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  sub_1E5E09E10(*(v2 + 152), type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {
    v5 = sub_1E6165100;
  }

  else
  {
    v5 = sub_1E6164F54;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6164F54()
{
  v1 = v0[44];
  v3 = v0[41];
  v2 = v0[42];
  v12 = v0[43];
  v13 = v0[40];
  v4 = v0[37];
  v14 = v0[39];
  v15 = v0[38];
  v5 = v0[35];
  v6 = v0[34];
  v16 = v0[36];
  v17 = v0[33];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[28];
  v19 = v0[31];
  v20 = v0[27];
  v18 = v0[32];
  v21 = v0[24];
  v22 = v0[22];
  v23 = v0[19];
  sub_1E5E09E10(v0[26], type metadata accessor for RouteDestination);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6165100()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  sub_1E5E09E10(v0[26], type metadata accessor for RouteDestination);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v28 = v0[55];
  v11 = v0[43];
  v10 = v0[44];
  v13 = v0[39];
  v12 = v0[40];
  v15 = v0[37];
  v14 = v0[38];
  v16 = v0[36];
  v18 = v0[32];
  v17 = v0[33];
  v19 = v0[31];
  v22 = v0[30];
  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[24];
  v26 = v0[22];
  v27 = v0[19];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1E61652B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for ResolvedURLRoute.Action(0);
  v4[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6165348, 0, 0);
}

uint64_t sub_1E6165348()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  v4 = *v3;
  sub_1E5E05374(v1, v2);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1E6165414;

  return sub_1E5FF8FEC((v0 + 16), 0, v4);
}

uint64_t sub_1E6165414()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v4 = *v0;

  sub_1E5FFF3B4(*(v1 + 16), *(v1 + 24));

  return MEMORY[0x1EEE6DFA0](sub_1E6165540, 0, 0);
}

uint64_t sub_1E6165540()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *__swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1E61655FC;

  return sub_1E5FF075C((v0 + 32), v3);
}

uint64_t sub_1E61655FC()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61656F8, 0, 0);
}

uint64_t sub_1E61656F8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F0, &qword_1E65EC238) + 48);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for RouteDestination();
  sub_1E5DFA978(v3, v2 + *(v6 + 20), type metadata accessor for RouteSource);
  *(v2 + *(v6 + 24)) = MEMORY[0x1E69E7CD0];
  *(v2 + v5) = 0;
  swift_storeEnumTagMultiPayload();
  v7 = *v4;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_1E6165840;
  v9 = *(v0 + 88);

  return sub_1E5FFA73C(v9, v7);
}

uint64_t sub_1E6165840()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 88);
  v4 = *v1;
  v4[15] = v0;

  sub_1E5E09E10(v3, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E61659B8, 0, 0);
  }

  else
  {
    v5 = v4[11];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1E61659B8()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1E6165A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for SearchService();
  v3[9] = v4;
  Description = v4[-1].Description;
  v3[10] = Description;
  v6 = Description[8] + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6165AE0, 0, 0);
}

uint64_t sub_1E6165AE0()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  *(v0 + 16) = xmmword_1E65EADD0;
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1E6165B98;

  return sub_1E5FF8FEC((v0 + 16), 0, v2);
}

uint64_t sub_1E6165B98()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6165C94, 0, 0);
}

uint64_t sub_1E6165C94()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  *(v0 + 32) = xmmword_1E65EADD0;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1E6165D48;

  return sub_1E5FF075C((v0 + 32), v1);
}

uint64_t sub_1E6165D48()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6165E44, 0, 0);
}

uint64_t sub_1E6165E44()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *__swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  v5 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v6 = v5 + *(type metadata accessor for AppComposer() + 20);
  v7 = type metadata accessor for AppEnvironment();
  (*(v2 + 16))(v1, v4 + v6 + *(v7 + 104), v3);
  v8 = SearchService.publishSearchIntent.getter();
  *(v0 + 112) = v9;
  (*(v2 + 8))(v1, v3);
  v15 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_1E6165FD0;
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);

  return v15(v13, v12);
}

uint64_t sub_1E6165FD0()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61660E8, 0, 0);
}

uint64_t sub_1E61660E8()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E616614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for ResolvedURLRoute.Action(0);
  v4[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61661E4, 0, 0);
}

uint64_t sub_1E61661E4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
  v8 = (v1 + *(v7 + 48));
  v9 = *(v7 + 64);
  *v1 = v5;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for RouteDestination();
  sub_1E5DFA978(v4, v1 + *(v10 + 20), type metadata accessor for RouteSource);
  *(v1 + *(v10 + 24)) = v3;
  swift_beginAccess();
  v12 = qword_1ED075958;
  v11 = qword_1ED075960;
  *v8 = qword_1ED075958;
  v8[1] = v11;
  *(v1 + v9) = 1;
  swift_storeEnumTagMultiPayload();
  v13 = *v6;

  sub_1E5E05374(v12, v11);
  v14 = swift_task_alloc();
  *(v0 + 88) = v14;
  *v14 = v0;
  v14[1] = sub_1E6166374;
  v15 = *(v0 + 80);

  return sub_1E5FFA73C(v15, v13);
}

uint64_t sub_1E6166374()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  v4[12] = v0;

  sub_1E5E09E10(v3, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60E2174, 0, 0);
  }

  else
  {
    v5 = v4[10];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1E61664EC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for ResolvedURLRoute.Action(0);
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6166628, 0, 0);
}

uint64_t sub_1E6166628()
{
  v1 = *(v0 + 56);
  v29 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v22 = v4;
  v23 = v2;
  v28 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
  v25 = v1 + v5[12];
  v26 = v5[20];
  v27 = v5[16];
  v6 = sub_1E65D76F8();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = sub_1E65E2CF8();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = sub_1E65E1FC8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_1E601100C(MEMORY[0x1E69E7CC0]);
  v24 = type metadata accessor for RouteDestination();
  v10 = *(v24 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
  v12 = (v1 + v11[12]);
  v13 = v11[16];
  v14 = v11[20];
  v15 = v11[24];
  v16 = v11[28];
  v17 = v1 + v11[32];
  sub_1E5DFD1CC(v3, v1, &unk_1ED077760, &unk_1E66011D0);
  *v12 = 0;
  v12[1] = 0;
  sub_1E5DFD1CC(v23, v1 + v13, &qword_1ED072B60, &unk_1E65FA490);
  *(v1 + v14) = v9;
  sub_1E5DFD1CC(v22, v1 + v15, &unk_1ED077750, &unk_1E66011C0);
  *(v1 + v16) = 0;
  *v17 = 0;
  *(v17 + 8) = 1;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5DFE50C(v22, &unk_1ED077750, &unk_1E66011C0);
  sub_1E5DFE50C(v23, &qword_1ED072B60, &unk_1E65FA490);
  sub_1E5DFE50C(v3, &unk_1ED077760, &unk_1E66011D0);
  *(v1 + *(v24 + 24)) = MEMORY[0x1E69E7CD0];
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v1 + v27) = xmmword_1E65EC1C0;
  *(v1 + v26) = 1;
  swift_storeEnumTagMultiPayload();
  v18 = *v28;
  v19 = swift_task_alloc();
  *(v0 + 64) = v19;
  *v19 = v0;
  v19[1] = sub_1E6166978;
  v20 = *(v0 + 56);

  return sub_1E5FFA73C(v20, v18);
}

uint64_t sub_1E6166978()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  sub_1E5E09E10(v3, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6166B14, 0, 0);
  }

  else
  {
    v5 = v4[7];
    v7 = v4[4];
    v6 = v4[5];
    v8 = v4[3];

    v9 = v4[1];

    return v9();
  }
}

uint64_t sub_1E6166B14()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  v5 = v0[1];
  v6 = v0[9];

  return v5();
}

uint64_t sub_1E6166BA0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for RouteSource(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for ResolvedURLRoute.Action(0);
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6166C70, 0, 0);
}

uint64_t sub_1E6166C70()
{
  v1 = v0[2];
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v4 = *(v2 + v3 + *(type metadata accessor for AppComposer() + 20) + 8);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      return sub_1E65E69D8();
    }

    goto LABEL_6;
  }

  if (!v4)
  {
LABEL_6:
    v19 = v0[7];
    v21 = v0[4];
    v20 = v0[5];
    v22 = v0[3];
    v23 = __swift_project_boxed_opaque_existential_1(v0[2], v1[3]);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
    v25 = v19 + v24[12];
    v26 = v24[16];
    v27 = v24[20];
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    v28 = type metadata accessor for RouteDestination();
    sub_1E613DB80(v21, v19 + *(v28 + 20));
    *(v19 + *(v28 + 24)) = MEMORY[0x1E69E7CD0];
    *v25 = 0;
    *(v25 + 8) = -64;
    *(v19 + v26) = xmmword_1E65EC1C0;
    *(v19 + v27) = 1;
    swift_storeEnumTagMultiPayload();
    v15 = *v23;
    v29 = swift_task_alloc();
    v0[8] = v29;
    *v29 = v0;
    v29[1] = sub_1E616703C;
    v17 = v0[7];
    goto LABEL_7;
  }

  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = __swift_project_boxed_opaque_existential_1(v0[2], v1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v10 = (type metadata accessor for RouteDestination() - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E65EA670;
  v14 = v13 + v12;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5DFA978(v7, v14 + v10[7], type metadata accessor for RouteSource);
  *(v14 + v10[8]) = MEMORY[0x1E69E7CD0];
  sub_1E5E09E10(v7, type metadata accessor for RouteSource);
  *v6 = v13;
  *(v6 + 8) = 1;
  *(v6 + 16) = 0;
  *(v6 + 24) = xmmword_1E65EC1C0;
  *(v6 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v15 = *v9;
  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_1E616724C;
  v17 = v0[6];
LABEL_7:

  return sub_1E5FFA73C(v17, v15);
}

uint64_t sub_1E616703C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  sub_1E5E09E10(v3, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E61671CC, 0, 0);
  }

  else
  {
    v6 = v4[6];
    v5 = v4[7];
    v7 = v4[4];

    v8 = v4[1];

    return v8();
  }
}

uint64_t sub_1E61671CC()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E616724C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[11] = v0;

  sub_1E5E09E10(v3, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E61673DC, 0, 0);
  }

  else
  {
    v6 = v4[6];
    v5 = v4[7];
    v7 = v4[4];

    v8 = v4[1];

    return v8();
  }
}

uint64_t sub_1E61673DC()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E616745C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for ResolvedURLRoute.Action(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61674F0, 0, 0);
}

uint64_t sub_1E61674F0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v4 = (type metadata accessor for RouteDestination() - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E65EA670;
  sub_1E65E52B8();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v8 = v4[7];
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v7 + v6 + v4[8]) = MEMORY[0x1E69E7CD0];
  *v2 = v7;
  *(v2 + 8) = 0;
  *(v2 + 16) = -64;
  *(v2 + 24) = xmmword_1E65EC1C0;
  *(v2 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v9 = *v3;
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_1E61676D8;
  v11 = *(v0 + 32);

  return sub_1E5FFA73C(v11, v9);
}

uint64_t sub_1E61676D8()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  v4[6] = v0;

  sub_1E5E09E10(v3, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6167850, 0, 0);
  }

  else
  {
    v5 = v4[4];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1E6167850()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1E61678B4(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for ResolvedURLRoute.Action(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6167948, 0, 0);
}

uint64_t sub_1E6167948()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v4 = (type metadata accessor for RouteDestination() - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E65EA670;
  sub_1E65E52B8();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v8 = v4[7];
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v7 + v6 + v4[8]) = MEMORY[0x1E69E7CD0];
  *v2 = v7;
  *(v2 + 8) = 0;
  *(v2 + 16) = -64;
  *(v2 + 24) = xmmword_1E65EC1C0;
  *(v2 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v9 = *v3;
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_1E6167B30;
  v11 = *(v0 + 32);

  return sub_1E5FFA73C(v11, v9);
}

uint64_t sub_1E6167B30()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  v4[6] = v0;

  sub_1E5E09E10(v3, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6168404, 0, 0);
  }

  else
  {
    v5 = v4[4];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1E6167CA8(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for ResolvedURLRoute.Action(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6167D3C, 0, 0);
}

uint64_t sub_1E6167D3C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v4 = (type metadata accessor for RouteDestination() - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E65EA670;
  sub_1E65E52B8();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v8 = v4[7];
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v7 + v6 + v4[8]) = MEMORY[0x1E69E7CD0];
  *v2 = v7;
  *(v2 + 8) = 0;
  *(v2 + 16) = -64;
  *(v2 + 24) = xmmword_1E65EC1C0;
  *(v2 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v9 = *v3;
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_1E6167B30;
  v11 = *(v0 + 32);

  return sub_1E5FFA73C(v11, v9);
}

uint64_t sub_1E6167F24(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for ResolvedURLRoute.Action(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6167FB8, 0, 0);
}

uint64_t sub_1E6167FB8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v4 = (type metadata accessor for RouteDestination() - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E65EA670;
  sub_1E65E52B8();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v8 = v4[7];
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v7 + v6 + v4[8]) = MEMORY[0x1E69E7CD0];
  *v2 = v7;
  *(v2 + 8) = 0;
  *(v2 + 16) = -64;
  *(v2 + 24) = xmmword_1E65EC1C0;
  *(v2 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v9 = *v3;
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_1E6167B30;
  v11 = *(v0 + 32);

  return sub_1E5FFA73C(v11, v9);
}

uint64_t sub_1E61681A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E600A068(a1, a2);
  }

  return a1;
}

uint64_t sub_1E61681B4(uint64_t a1)
{
  v4 = *(sub_1E65D74E8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for RouteSource(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v9);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = *(v1 + v10 + 8);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_1E5DFE6BC;

  return sub_1E6162BAC(a1, v12, v13, v1 + v5, v1 + v8, v11, v14, v15);
}

uint64_t sub_1E6168354(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6163640(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E6168408(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0678();
  v2 = sub_1E65E07C8();
  if (a1)
  {
    if (sub_1E65E4B48())
    {
      sub_1E65DC388();
    }

    return sub_1E65E0838();
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      sub_1E65E0708();
    }

    if (sub_1E65E4B48())
    {
      sub_1E65DC368();
    }

    sub_1E65E0678();
    sub_1E65E07C8();
    return sub_1E65E0838();
  }
}

uint64_t sub_1E6168568(_OWORD *a1, uint64_t a2)
{
  v37 = a2;
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CE0, &qword_1E65F36D8);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v34 - v5;
  v6 = type metadata accessor for AppComposer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v10;
  v36 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v34 - v13;
  v35 = &v34 - v13;
  v15 = sub_1E65DED18();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v38 = sub_1E65DE998();
  v41 = *(v38 - 8);
  v17 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *v2;
  v34 = v2;
  sub_1E5E1D5BC(v2, v14, type metadata accessor for AppComposer);
  v20 = *(v7 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = swift_allocObject();
  sub_1E5E1E1E8(v14, v22 + v21, type metadata accessor for AppComposer);
  sub_1E5E1D5BC(v2, v11, type metadata accessor for AppComposer);
  sub_1E5DF650C(v37, v45);
  v23 = swift_allocObject();
  sub_1E5E1E1E8(v11, v23 + v21, type metadata accessor for AppComposer);
  sub_1E5DF599C(v45, v23 + ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1E65DED08();
  sub_1E65DE988();
  type metadata accessor for AppFeature();
  sub_1E6169970(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E6169970(&qword_1ED075CE8, MEMORY[0x1E699CCC0]);
  v25 = v38;
  v24 = v39;
  sub_1E65E4DE8();
  v26 = v35;
  sub_1E5E1D5BC(v34, v35, type metadata accessor for AppComposer);
  v27 = swift_allocObject();
  v28 = v42;
  v29 = v42[3];
  v27[3] = v42[2];
  v27[4] = v29;
  v27[5] = v28[4];
  v30 = v28[1];
  v27[1] = *v28;
  v27[2] = v30;
  sub_1E5E1E1E8(v26, v27 + ((v20 + 96) & ~v20), type metadata accessor for AppComposer);
  sub_1E6169A3C(v28, v45);
  sub_1E65E4CC8();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1E61699B8;
  *(v31 + 24) = v27;

  v32 = sub_1E65E4F08();

  (*(v43 + 8))(v24, v44);
  (*(v41 + 8))(v19, v25);
  return v32;
}

uint64_t sub_1E6168A78(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for RouteDestination();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for RouteSource(0);
  v2[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6168B68, 0, 0);
}

uint64_t sub_1E6168B68()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + *(type metadata accessor for AppComposer() + 20) + 8);
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      return sub_1E65E69D8();
    }

    else
    {
      v17 = *(v0 + 72);
      v16 = *(v0 + 80);
      v18 = *(v0 + 64);
      v19 = *(v0 + 40);
      v20 = *(v0 + 48);
      v22 = v19[3];
      v21 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v22);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RouteResource();
      swift_storeEnumTagMultiPayload();
      sub_1E5E1E1E8(v16, v18 + *(v20 + 20), type metadata accessor for RouteSource);
      *(v18 + *(v20 + 24)) = MEMORY[0x1E69E7CD0];
      sub_1E600F5B0((v0 + 25));
      v23 = swift_task_alloc();
      *(v0 + 112) = v23;
      *v23 = v0;
      v23[1] = sub_1E6169044;
      v24 = *(v0 + 64);

      return RoutingContext.appendDestination(_:priority:)(v24, (v0 + 25), v22, v21);
    }
  }

  else
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    v9 = v7[3];
    v8 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
    v10 = *(v5 + 72);
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v0 + 88) = v12;
    *(v12 + 16) = xmmword_1E65EA670;
    v13 = v12 + v11;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    sub_1E5E1D5BC(v3, v13 + *(v6 + 20), type metadata accessor for RouteSource);
    *(v13 + *(v6 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611CC44(v3, type metadata accessor for RouteSource);
    *(v0 + 16) = 1;
    *(v0 + 24) = 0;
    sub_1E600F5B0((v0 + 26));
    v14 = swift_task_alloc();
    *(v0 + 96) = v14;
    *v14 = v0;
    v14[1] = sub_1E6168ED0;

    return RoutingContext.presentDestinations(_:style:priority:)(v12, (v0 + 16), (v0 + 26), v9, v8);
  }
}

uint64_t sub_1E6168ED0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *v1;
  v4[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E616923C, 0, 0);
  }

  else
  {
    v5 = v4[10];
    v6 = v4[8];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1E6169044()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[15] = v0;

  sub_1E611CC44(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E61691CC, 0, 0);
  }

  else
  {
    v5 = v4[10];
    v6 = v4[8];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1E61691CC()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E616923C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E61692AC@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  v1 = *(*(v24[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v24[0]);
  v3 = v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075808, &qword_1E65F1DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v24 - v12;
  v14 = sub_1E65D7848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AppState();
  v20 = *(v19 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v13);
  sub_1E5DFE50C(v9, &qword_1ED071F78, &unk_1E65EA3F0);
  v21 = *(v15 + 48);
  if (v21(v13, 1, v14) == 1)
  {
    sub_1E65D77C8();
    if (v21(v13, 1, v14) != 1)
    {
      sub_1E5DFE50C(v13, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  v22 = *(v19 + 300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v3, &qword_1ED075800, &unk_1E6606280);
  return sub_1E65DE8D8();
}

uint64_t sub_1E6169608(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[3];
  v7 = a3[5];
  v8 = a3[7];
  v9 = a3[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v22 - v13;
  if (v5)
  {
    v15 = *a1;
    v16 = *(a3 + 3);
    v17 = *(a3 + 7);
    v24 = *(a3 + 5);
    v25 = v17;
    v26 = a3[9];
    v22 = *(a3 + 1);
    v23 = v16;
    v18 = sub_1E65E60A8();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v15;
    *(v19 + 40) = v5;
    v20 = v25;
    *(v19 + 80) = v24;
    *(v19 + 96) = v20;
    *(v19 + 112) = v26;
    v21 = v23;
    *(v19 + 48) = v22;
    *(v19 + 64) = v21;
    swift_unknownObjectRetain();

    sub_1E6059EAC(0, 0, v14, &unk_1E65F3708, v19);
  }

  return result;
}

uint64_t sub_1E61697A4()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E611979C(v0 + v3);
}

uint64_t sub_1E6169870()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6168A78(v0 + v3, v0 + v4);
}

uint64_t sub_1E6169970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E61699B8(char *a1, uint64_t a2)
{
  v5 = *(*(type metadata accessor for AppComposer() - 8) + 80);

  return sub_1E6169608(a1, a2, (v2 + 16));
}

uint64_t sub_1E6169A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CF0, &qword_1E65F3700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6169AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E621B314(a1, v4, v5, v6, v1 + 40);
}

uint64_t sub_1E6169B70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v66 = a7;
  v67 = a8;
  v63 = a4;
  v64 = a6;
  v61 = a5;
  v62 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v59 = *(v11 - 8);
  v58 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v57 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CF8, &qword_1E65F3710);
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v52 - v15;
  v16 = type metadata accessor for AppComposer();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v52 = v18;
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E65E2158();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v73 = sub_1E65E2138();
  v69 = *(v73 - 8);
  v22 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v60 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *a1;
  sub_1E5DF650C(a2, v74);
  v24 = swift_allocObject();
  sub_1E5DF599C(v74, v24 + 16);
  v25 = a1;
  v54 = a1;
  sub_1E5E1DEAC(a1, v19);
  v26 = *(v17 + 80);
  v55 = ((v26 + 16) & ~v26) + v18;
  v56 = (v26 + 16) & ~v26;
  v72 = v26 | 7;
  v27 = swift_allocObject();
  v53 = type metadata accessor for AppComposer;
  sub_1E5E1E1E8(v19, v27 + ((v26 + 16) & ~v26), type metadata accessor for AppComposer);
  sub_1E65E2148();
  sub_1E65E2128();
  v28 = v57;
  sub_1E5DFD1CC(v61, v57, &qword_1ED073718, &qword_1E65ED978);
  sub_1E5E1DEAC(v25, v19);
  v29 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v30 = (v58 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v63;
  *(v32 + 16) = v62;
  *(v32 + 24) = v33;
  sub_1E616B784(v28, v32 + v29);
  *(v32 + v30) = v64;
  v34 = (v32 + v31);
  v35 = v67;
  *v34 = v66;
  v34[1] = v35;
  sub_1E5E1E1E8(v19, v32 + ((v26 + 16 + v31) & ~v26), type metadata accessor for AppComposer);
  type metadata accessor for AppFeature();
  sub_1E616BA04(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v66 = sub_1E616BA04(&qword_1ED075D00, MEMORY[0x1E699F208]);

  v36 = v65;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v54, v19);
  v37 = *a9;
  v38 = a9[3];
  v39 = a9[5];
  v40 = a9[7];
  v41 = (v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = a9[9];
  v43 = swift_allocObject();
  sub_1E5E1E1E8(v19, v43 + v56, v53);
  v44 = (v43 + v41);
  v45 = *(a9 + 3);
  v44[2] = *(a9 + 2);
  v44[3] = v45;
  v44[4] = *(a9 + 4);
  v46 = *(a9 + 1);
  *v44 = *a9;
  v44[1] = v46;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1E616BA4C;
  *(v47 + 24) = v43;

  v48 = v60;
  v49 = v73;
  v50 = sub_1E65E4F08();

  (*(v70 + 8))(v36, v71);
  (*(v69 + 8))(v48, v49);
  return v50;
}