uint64_t sub_1E61E276C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E61E27D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61E2840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61E28A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61E2908()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v64 = v48 - v3;
  v65 = type metadata accessor for ServiceSubscriptionService();
  Description = v65[-1].Description;
  v4 = Description[8];
  v5 = MEMORY[0x1EEE9AC00](v65);
  v59 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v63 = v48 - v7;
  v58 = type metadata accessor for RemoteBrowsingService();
  v8 = v58[-1].Description;
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v58);
  v66 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v48 - v12;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v14 = sub_1E65E3B68();
  __swift_project_value_buffer(v14, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v15 = (v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router);
  v16 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24));
  v56 = v0;
  v17 = *v16;
  v18 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v19 = type metadata accessor for AppComposer();
  v20 = v18 + *(v19 + 20);
  v21 = type metadata accessor for AppEnvironment();
  v22 = v20 + *(v21 + 100);
  v23 = v8;
  v25 = (v8 + 2);
  v24 = v8[2];
  v26 = v13;
  v27 = v13;
  v60 = v13;
  v28 = v58;
  v24(v27, v17 + v22, v58);
  v52 = v25;
  v53 = v24;
  v29 = *__swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v30 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer + *(v19 + 20) + *(v21 + 108);
  v54 = Description[2];
  v54(v63, v29 + v30, v65);
  v49 = sub_1E65E60A8();
  v50 = *(*(v49 - 8) + 56);
  v50(v64, 1, 1, v49);
  v24(v66, v26, v28);
  sub_1E5DF650C(v15, v67);
  v31 = v23;
  v55 = v23;
  v32 = *(v23 + 80);
  v33 = (v32 + 32) & ~v32;
  v48[1] = v32 | 7;
  v34 = (v61 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v36 = Description;
  v51 = v31[4];
  v37 = v35 + v33;
  v38 = v66;
  v51(v37, v66, v28);
  sub_1E5DF599C(v67, v35 + v34);
  *(v35 + ((v34 + 47) & 0xFFFFFFFFFFFFFFF8)) = v56;

  v39 = v64;
  sub_1E6059EAC(0, 0, v64, &unk_1E65F6EA0, v35);

  v50(v39, 1, 1, v49);
  v40 = v59;
  v41 = v63;
  v54(v59, v63, v65);
  v53(v38, v60, v28);
  v42 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v43 = (v57 + v32 + v42) & ~v32;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  v45 = v44 + v42;
  v46 = v65;
  (v36[4])(v45, v40, v65);
  v51(v44 + v43, v66, v28);
  sub_1E64B80F8(0, 0, v64, &unk_1E65F6EB0, v44);

  (v36[1])(v41, v46);
  return (v55[1])(v60, v28);
}

uint64_t sub_1E61E2EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = type metadata accessor for RemoteParticipantScope(0);
  v6[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v9 = *(*(type metadata accessor for BrowsingIdentity(0) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v10 = sub_1E65DA2A8();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v13 = sub_1E65D9FF8();
  v6[25] = v13;
  v14 = *(v13 - 8);
  v6[26] = v14;
  v15 = *(v14 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v16 = type metadata accessor for AppAction();
  v6[29] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v18 = type metadata accessor for RouteDestination();
  v6[32] = v18;
  v19 = *(v18 - 8);
  v6[33] = v19;
  v6[34] = *(v19 + 64);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v20 = sub_1E65D99E8();
  v6[37] = v20;
  v21 = *(v20 - 8);
  v6[38] = v21;
  v22 = *(v21 + 64) + 15;
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v6[43] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v6[44] = v24;
  v25 = *(v24 - 8);
  v6[45] = v25;
  v26 = *(v25 + 64) + 15;
  v6[46] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v6[47] = v27;
  v28 = *(v27 - 8);
  v6[48] = v28;
  v29 = *(v28 + 64) + 15;
  v6[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61E328C, 0, 0);
}

uint64_t sub_1E61E328C()
{
  v1 = v0[14];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[50] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[51] = v5;
  *v5 = v0;
  v5[1] = sub_1E61E3388;
  v6 = v0[49];

  return v8(v6);
}

uint64_t sub_1E61E3388()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61E34A0, 0, 0);
}

uint64_t sub_1E61E34A0()
{
  v1 = v0[49];
  v3 = v0[46];
  v2 = v0[47];
  sub_1E65E60F8();
  v4 = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementCoordinator;
  v0[52] = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router;
  v0[53] = v4;
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[54] = v6;
  *v6 = v0;
  v6[1] = sub_1E61E356C;
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[44];

  return MEMORY[0x1EEE6D9C8](v8, 0, 0, v9);
}

uint64_t sub_1E61E356C()
{
  v1 = *(*v0 + 432);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61E3668, 0, 0);
}

uint64_t sub_1E61E3668()
{
  v1 = v0[43];
  if ((*(v0[38] + 48))(v1, 1, v0[37]) == 1)
  {
    v3 = v0[48];
    v2 = v0[49];
    v4 = v0[47];
    v6 = v0[41];
    v5 = v0[42];
    v8 = v0[39];
    v7 = v0[40];
    v42 = v0[36];
    v43 = v0[35];
    v44 = v0[31];
    v45 = v0[30];
    v46 = v0[28];
    v47 = v0[27];
    v48 = v0[24];
    v49 = v0[23];
    v50 = v0[20];
    v51 = v0[19];
    v52 = v0[18];
    (*(v0[45] + 8))(v0[46], v0[44]);
    (*(v3 + 8))(v2, v4);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[41];
    v12 = v0[42];
    v13 = v0[15];
    sub_1E61E5898(v1, v12, MEMORY[0x1E69CC610]);
    sub_1E61E5830(v12, v11, MEMORY[0x1E69CC610]);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072890, &qword_1E65EBF00);
    v0[55] = v14;
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v0[56] = v16;
    v0[57] = (v15 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    LODWORD(v11) = v16(v11, 1, v14);
    v17 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
    if (v11 == 1)
    {
      if (qword_1EE2D7790 != -1)
      {
        swift_once();
      }

      v18 = sub_1E65E3B68();
      __swift_project_value_buffer(v18, qword_1EE2EA2A0);
      sub_1E65E3B28();
      v19 = v17 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler;
      v0[58] = *(v17 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler);
      v20 = *(v19 + 8);
      v0[59] = v20;
      v0[60] = swift_getObjectType();
      v21 = *(v20 + 16);
      v20 += 16;
      v0[61] = v21;
      v0[62] = v20 & 0xFFFFFFFFFFFFLL | 0x4EB3000000000000;
      v22 = *(v20 - 8);
      v23 = sub_1E65E5FC8();
      v25 = v24;
      v26 = sub_1E61E3BE8;
    }

    else
    {
      v27 = v0[42];
      v28 = v0[39];
      v0[70] = *(v17 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
      sub_1E61E5830(v27, v28, MEMORY[0x1E69CC610]);
      if (v16(v28, 1, v14) == 1)
      {
        swift_beginAccess();
        v30 = qword_1ED075948;
        v29 = qword_1ED075950;

        sub_1E5E05374(v30, v29);
      }

      else
      {
        v31 = v0[24];
        v33 = v0[22];
        v32 = v0[23];
        v34 = v0[21];
        (*(v0[26] + 32))(v0[27], v0[39] + *(v14 + 48), v0[25]);

        sub_1E65D9F98();
        sub_1E65DA288();
        sub_1E61E57D8();
        v35 = sub_1E65E6718();
        v36 = *(v33 + 8);
        v36(v32, v34);
        v36(v31, v34);
        if (v35)
        {
          swift_beginAccess();
          v30 = qword_1ED075948;
          v29 = qword_1ED075950;
          sub_1E5E05374(qword_1ED075948, qword_1ED075950);
        }

        else
        {
          v30 = 0;
          v29 = 0;
        }

        v37 = v0[39];
        (*(v0[26] + 8))(v0[27], v0[25]);
        v38 = sub_1E65D8DE8();
        (*(*(v38 - 8) + 8))(v37, v38);
      }

      v40 = v0[29];
      v39 = v0[30];
      *v39 = v30;
      v39[1] = v29;
      swift_storeEnumTagMultiPayload();
      sub_1E65E6058();
      v0[71] = sub_1E65E6048();
      v23 = sub_1E65E5FC8();
      v25 = v41;
      v26 = sub_1E61E4798;
    }

    return MEMORY[0x1EEE6DFA0](v26, v23, v25);
  }
}

uint64_t sub_1E61E3BE8()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 464);
  (*(v0 + 488))(*(v0 + 480), *(v0 + 472));

  return MEMORY[0x1EEE6DFA0](sub_1E61E3C58, 0, 0);
}

uint64_t sub_1E61E3C58()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 256);
  v6 = __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v7 = *(v5 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + *(v5 + 24)) = sub_1E5F9BCA4(&unk_1F5FA8690);
  v8 = (*v6 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler);
  v9 = *v8;
  v10 = v8[1];
  ObjectType = swift_getObjectType();
  *(v0 + 576) = 0;
  v12 = swift_allocObject();
  *(v0 + 504) = v12;
  swift_weakInit();
  sub_1E61E5830(v2, v1, type metadata accessor for RouteDestination);
  v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v0 + 512) = v14;
  *(v14 + 16) = v12;
  sub_1E61E5898(v1, v14 + v13, type metadata accessor for RouteDestination);

  v15 = swift_task_alloc();
  *(v0 + 520) = v15;
  *v15 = v0;
  v15[1] = sub_1E61E3E5C;

  return sub_1E61261B8((v0 + 576), &unk_1E65F6EF8, v14, ObjectType, v10);
}

uint64_t sub_1E61E3E5C()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v9 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = *(v2 + 512);

    v5 = sub_1E61E4468;
  }

  else
  {
    v7 = *(v2 + 504);
    v6 = *(v2 + 512);

    v5 = sub_1E61E3F88;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E61E3F88()
{
  v1 = v0[15];
  sub_1E61E59D8(v0[36], type metadata accessor for RouteDestination);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = off_1F5FBE888;
  v3 = type metadata accessor for AppRouter();
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[67] = v5;
  *v5 = v0;
  v5[1] = sub_1E61E40EC;

  return (v7)(1, v3, &off_1F5FBE858);
}

uint64_t sub_1E61E40EC()
{
  v1 = *(*v0 + 536);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61E41E8, 0, 0);
}

uint64_t sub_1E61E41E8()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 336);
  v5 = *(v0 + 320);
  *(v0 + 544) = *(*__swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24)) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
  sub_1E61E5830(v4, v5, MEMORY[0x1E69CC610]);
  if (v2(v5, 1, v3) == 1)
  {
    swift_beginAccess();
    v7 = qword_1ED075948;
    v6 = qword_1ED075950;

    sub_1E5E05374(v7, v6);
  }

  else
  {
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    (*(*(v0 + 208) + 32))(*(v0 + 224), *(v0 + 320) + *(*(v0 + 440) + 48), *(v0 + 200));

    sub_1E65D9F98();
    sub_1E65DA288();
    sub_1E61E57D8();
    v12 = sub_1E65E6718();
    v13 = *(v11 + 8);
    v13(v9, v10);
    v13(v8, v10);
    if (v12)
    {
      swift_beginAccess();
      v7 = qword_1ED075948;
      v6 = qword_1ED075950;
      sub_1E5E05374(qword_1ED075948, qword_1ED075950);
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v14 = *(v0 + 320);
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    v15 = sub_1E65D8DE8();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v16 = *(v0 + 248);
  v17 = *(v0 + 232);
  *v16 = v7;
  v16[1] = v6;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  *(v0 + 552) = sub_1E65E6048();
  v19 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61E4630, v19, v18);
}

uint64_t sub_1E61E4468()
{
  v1 = v0[63];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[44];
  v7 = v0[45];
  v8 = v0[42];
  v9 = v0[43];
  v14 = v0[41];
  v15 = v0[40];
  v10 = v0[36];
  v16 = v0[39];
  v17 = v0[35];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[24];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];

  sub_1E61E59D8(v10, type metadata accessor for RouteDestination);
  sub_1E61E59D8(v8, MEMORY[0x1E69CC610]);
  (*(v7 + 8))(v4, v6);
  (*(v2 + 8))(v3, v5);

  v11 = v0[1];
  v12 = v0[66];

  return v11();
}

uint64_t sub_1E61E4630()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[31];

  sub_1E65E4EE8();

  sub_1E61E59D8(v3, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E61E46CC, 0, 0);
}

uint64_t sub_1E61E46CC()
{
  v1 = v0[42];
  v2 = v0[16];
  sub_1E605DD88();
  sub_1E61E59D8(v1, MEMORY[0x1E69CC610]);
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_1E61E356C;
  v5 = v0[46];
  v6 = v0[43];
  v7 = v0[44];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v7);
}

uint64_t sub_1E61E4798()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[30];

  sub_1E65E4EE8();

  sub_1E61E59D8(v3, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E61E4834, 0, 0);
}

uint64_t sub_1E61E4834()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = (v0[16] + v0[52]);
  v4 = *(*__swift_project_boxed_opaque_existential_1(v3, v3[3]) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
  swift_getKeyPath();

  sub_1E65E4EC8();

  sub_1E61E5898(v2, v1, type metadata accessor for BrowsingIdentity);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v5 - 8) + 48))(v1, 1, v5) == 1)
  {
    goto LABEL_3;
  }

  v6 = v0[21];
  v7 = v0[22];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v11 = *(v5 + 48);
  sub_1E61E5898(v8, v9, type metadata accessor for RemoteParticipantScope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E61E59D8(v9, type metadata accessor for RemoteParticipantScope);
  (*(v7 + 8))(v8 + v11, v6);
  if (EnumCaseMultiPayload != 1)
  {
LABEL_3:
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v13 = (v0[16] + v0[53]);
    v14 = sub_1E65E3B68();
    __swift_project_value_buffer(v14, qword_1EE2EA2A0);
    sub_1E65E3B38();
    v15 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_1E65E5998();
  }

  v16 = v0[41];
  v17 = v0[25];
  v18 = v0[26];
  v19 = *(v0[55] + 48);
  sub_1E61E59D8(v0[42], MEMORY[0x1E69CC610]);
  (*(v18 + 8))(v16 + v19, v17);
  v20 = sub_1E65D8DE8();
  (*(*(v20 - 8) + 8))(v16, v20);
  v21 = *(MEMORY[0x1E69E8678] + 4);
  v22 = swift_task_alloc();
  v0[54] = v22;
  *v22 = v0;
  v22[1] = sub_1E61E356C;
  v23 = v0[46];
  v24 = v0[43];
  v25 = v0[44];

  return MEMORY[0x1EEE6D9C8](v24, 0, 0, v25);
}

uint64_t sub_1E61E4B64(uint64_t a1)
{
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = (Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E61E2EB8(a1, v7, v8, v1 + v5, v1 + v6, v9);
}

uint64_t sub_1E61E4C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768C0, &qword_1E65F6EB8) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768C8, &qword_1E65F6EC0);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768D0, &qword_1E65F6EC8);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61E4E04, 0, 0);
}

uint64_t sub_1E61E4E04()
{
  v1 = v0[2];
  v2 = ServiceSubscriptionService.makeServiceSubscriptionPurchasedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E61E4F00;
  v6 = v0[10];

  return v8(v6);
}

uint64_t sub_1E61E4F00()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61E5018, 0, 0);
}

uint64_t sub_1E61E5018()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  sub_1E65E60F8();
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1E61E50C8;
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];

  return MEMORY[0x1EEE6D9C8](v7, 0, 0, v8);
}

uint64_t sub_1E61E50C8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61E51C4, 0, 0);
}

uint64_t sub_1E61E51C4()
{
  v1 = v0[4];
  v2 = sub_1E65DB868();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[8];
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[3];
    v9 = RemoteBrowsingService.invalidateRemoteBrowsingEnvironment.getter();
    v0[14] = v10;
    v13 = (v9 + *v9);
    v11 = v9[1];
    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = sub_1E61E5398;

    return v13();
  }
}

uint64_t sub_1E61E5398()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1E61E5560;
  }

  else
  {
    v3 = sub_1E61E54AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61E54AC()
{
  v1 = v0[14];

  sub_1E61E5770(v0[4]);
  v2 = *(MEMORY[0x1E69E8678] + 4);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1E61E50C8;
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v6);
}

uint64_t sub_1E61E5560()
{
  v1 = v0[16];
  v2 = v0[14];

  sub_1E61E5770(v0[4]);
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E61E50C8;
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v7);
}

uint64_t sub_1E61E5620(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ServiceSubscriptionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v9 = (v6 + v7 + v8[80]) & ~v8[80];
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFA78C;

  return sub_1E61E4C98(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E61E5770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768C0, &qword_1E65F6EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E61E57D8()
{
  result = qword_1ED071E28;
  if (!qword_1ED071E28)
  {
    sub_1E65DA2A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071E28);
  }

  return result;
}

uint64_t sub_1E61E5830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61E5898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61E5900()
{
  v2 = *(type metadata accessor for RouteDestination() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6337758(v4, v0 + v3);
}

uint64_t sub_1E61E59D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61E5A38(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1E65D7848();
  v7 = *(v6 - 8);
  v8 = *(a3 + 24);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 84);
  v11 = v9;
  v12 = *(v9 + 84);
  if (v12 <= v10)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = *(v8 - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v14 + 80);
  if (v15 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(*(v6 - 8) + 64) + v16;
  v21 = *(*(v8 - 8) + 64) + 7;
  if (v19 < a2)
  {
    v22 = ((v21 + ((v17 + v18 + (v20 & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v23 = v22 & 0xFFFFFFF8;
    if ((v22 & 0xFFFFFFF8) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = a2 - v19 + 1;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *(a1 + v22);
        if (!v27)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v27 = *(a1 + v22);
        if (!v27)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v26)
      {
        goto LABEL_32;
      }

      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    v29 = v27 - 1;
    if (v23)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    v37 = v19 + (v30 | v29);
    return (v37 + 1);
  }

LABEL_32:
  if (v10 == v19)
  {
    v31 = *(v7 + 48);

    return v31(a1, v10, v6);
  }

  v32 = (a1 + v20) & ~v16;
  if (v12 == v19)
  {
    v33 = *(v11 + 48);

    return v33(v32);
  }

  v34 = (v32 + v17 + v18) & ~v18;
  if (v15 != v19)
  {
    v36 = *(((v21 + v34) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    v37 = v36 - 1;
    if (v37 < 0)
    {
      v37 = -1;
    }

    return (v37 + 1);
  }

  v35 = *(v14 + 48);

  return v35(v34, v15, v8);
}

void sub_1E61E5D20(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1E65D7848() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v11 - 8);
  if (v14 <= v10)
  {
    v16 = *(v8 + 84);
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = *(v11 - 8);
  v18 = *(v15 + 84);
  v19 = *(v8 + 64);
  v20 = *(v12 + 80);
  v21 = *(v12 + 64);
  v22 = *(v15 + 80);
  v23 = *(v15 + 64);
  if (v18 <= v16)
  {
    v24 = v16;
  }

  else
  {
    v24 = *(v15 + 84);
  }

  if (v24 <= 0x7FFFFFFE)
  {
    v24 = 2147483646;
  }

  v25 = v19 + v20;
  v26 = v23 + 7;
  v27 = ((v26 + ((v21 + v22 + ((v19 + v20) & ~v20)) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v27)
  {
    v28 = 2;
  }

  else
  {
    v28 = a3 - v24 + 1;
  }

  if (v28 >= 0x10000)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  if (v28 < 0x100)
  {
    v29 = 1;
  }

  if (v28 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v24 < a3)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (a2 > v24)
  {
    if (v27)
    {
      v32 = 1;
    }

    else
    {
      v32 = a2 - v24;
    }

    if (v27)
    {
      v33 = ~v24 + a2;
      bzero(a1, v27);
      *a1 = v33;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        *(a1 + v27) = v32;
      }

      else
      {
        *(a1 + v27) = v32;
      }
    }

    else if (v31)
    {
      *(a1 + v27) = v32;
    }

    return;
  }

  if (v31 > 1)
  {
    if (v31 != 2)
    {
      *(a1 + v27) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v27) = 0;
  }

  else if (v31)
  {
    *(a1 + v27) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v10 == v24)
  {
    v34 = *(v9 + 56);

    v34(a1, a2);
  }

  else
  {
    v35 = (a1 + v25) & ~v20;
    if (v14 == v24)
    {
      v36 = *(v13 + 56);

      v36(v35, a2, v14);
    }

    else
    {
      v37 = (v35 + v21 + v22) & ~v22;
      if (v18 == v24)
      {
        v38 = *(v17 + 56);

        v38(v37, a2, v18, v11);
      }

      else
      {
        v39 = ((v26 + v37) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v39 = (a2 - 0x7FFFFFFF);
          v39[1] = 0;
        }

        else
        {
          v39[1] = a2;
        }
      }
    }
  }
}

uint64_t sub_1E61E6058(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_1E61E6310(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_1E61E667C(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E61E66C8@<X0>(char *a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a2;
  v99 = a1;
  v112 = a4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768D8, &qword_1E65F7088);
  v97 = *(v111 - 8);
  v5 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v96 = &v90 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768E0, &qword_1E65F7090);
  v7 = *(*(v109 - 1) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v9 = &v90 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768E8, &qword_1E65F7098);
  v95 = *(v110 - 8);
  v10 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v94 = &v90 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768F0, &qword_1E65F70A0);
  v102 = *(v103 - 8);
  v12 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v90 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768F8, &unk_1E65F70A8);
  v14 = *(*(v104 - 1) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v16 = &v90 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v17 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v98 = &v90 - v18;
  v19 = type metadata accessor for ContextMenu.Context(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076900, &qword_1E65F70B8);
  v93 = *(v105 - 1);
  v23 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v92 = &v90 - v24;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v107 = *(v108 - 8);
  v25 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v90 - v26;
  v27 = *(a3 + 2);
  v28 = *(a3 + 5);
  v29 = *(a3 + 7);
  v30 = *(a3 + 8);
  v31 = *(a3 + 9);
  v32 = swift_allocObject();
  v33 = *(a3 + 24);
  v34 = a3[3];
  v32[3] = a3[2];
  v32[4] = v34;
  v32[5] = a3[4];
  v36 = *a3;
  v35 = a3[1];
  v32[1] = *a3;
  v32[2] = v35;
  v116 = v36;
  v123 = v36;
  v124 = v27;
  v37 = v113;
  v114 = v33;
  v125 = v33;
  v117 = v28;
  v126 = v28;
  v127 = &unk_1E65F70D0;
  v128 = v32;
  v129 = v30;
  v115 = v31;
  v130 = v31;
  if (v37[*(type metadata accessor for AppComposer() + 20) + 8] > 1u)
  {
    v64 = *v37;
    swift_getKeyPath();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_1E65E4EC8();

    v65 = v109;
    v66 = v99;
    v67 = v100;
    sub_1E61E96AC(v99, v100, &v123, &v9[*(v109 + 13)]);
    v98 = *(v65 + 14);
    v68 = v101;
    sub_1E61EAD64(v66, v67, &v123, v101);
    v113 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076908, &unk_1E65F7100);
    v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073998, &qword_1E65EDD08);
    v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077CF0, &unk_1E65F7110);
    v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739A0, &qword_1E65EDD10);
    v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739A8, &qword_1E65F7120);
    v71 = sub_1E65DED98();
    v72 = sub_1E61F2AA4(&qword_1EE2D6818, MEMORY[0x1E699CDB0]);
    v119 = v71;
    v120 = v72;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v74 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120);
    v119 = v69;
    v120 = v70;
    v121 = OpaqueTypeConformance2;
    v122 = v74;
    v75 = swift_getOpaqueTypeConformance2();
    v76 = sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110);
    v119 = v100;
    v120 = v99;
    v121 = v75;
    v122 = v76;
    v77 = swift_getOpaqueTypeConformance2();
    v119 = v113;
    v120 = v77;
    v78 = swift_getOpaqueTypeConformance2();
    v79 = v103;
    MEMORY[0x1E69482C0](v68, v103, v78);
    (*(v102 + 8))(v68, v79);
    v80 = &v9[*(v65 + 15)];
    v118 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076910, &qword_1E65F7128);
    sub_1E65E4A68();
    v81 = v120;
    *v80 = v119;
    *(v80 + 1) = v81;
    v82 = sub_1E5FED46C(qword_1EE2D8848, &qword_1ED0768E0, &qword_1E65F7090);
    v83 = v96;
    MEMORY[0x1E69482C0](v9, v65, v82);
    v84 = sub_1E5FED46C(qword_1EE2D7DD0, &qword_1ED0768F8, &unk_1E65F70A8);
    v119 = v104;
    v120 = v84;
    v85 = swift_getOpaqueTypeConformance2();
    v119 = v105;
    v120 = v85;
    swift_getOpaqueTypeConformance2();
    v119 = v65;
    v120 = v82;
    swift_getOpaqueTypeConformance2();
    v62 = v106;
    v86 = v111;
    sub_1E65E0888();
    (*(v97 + 8))(v83, v86);
    sub_1E5DFE50C(v9, &qword_1ED0768E0, &qword_1E65F7090);
  }

  else
  {
    v38 = type metadata accessor for ContextMenu(0);
    v39 = v99;
    sub_1E61EFA38(&v99[*(v38 + 20)], v22, type metadata accessor for ContextMenu.Context);
    sub_1E5FAB460(v22, v98, &qword_1ED073B60, &unk_1E65EE020);
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v40 = v100;
    sub_1E61E96AC(v39, v100, &v123, v16);
    v41 = v104;
    v97 = *(v104 + 17);
    v42 = v101;
    sub_1E61EAD64(v39, v40, &v123, v101);
    v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076908, &unk_1E65F7100);
    v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073998, &qword_1E65EDD08);
    v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077CF0, &unk_1E65F7110);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739A0, &qword_1E65EDD10);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739A8, &qword_1E65F7120);
    v45 = sub_1E65DED98();
    v46 = sub_1E61F2AA4(&qword_1EE2D6818, MEMORY[0x1E699CDB0]);
    v119 = v45;
    v120 = v46;
    v47 = swift_getOpaqueTypeConformance2();
    v48 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120);
    v119 = v43;
    v120 = v44;
    v121 = v47;
    v122 = v48;
    v49 = swift_getOpaqueTypeConformance2();
    v50 = sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110);
    v119 = v99;
    v120 = v96;
    v121 = v49;
    v122 = v50;
    v51 = swift_getOpaqueTypeConformance2();
    v119 = v100;
    v120 = v51;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = v103;
    MEMORY[0x1E69482C0](v42, v103, v52);
    (*(v102 + 8))(v42, v53);
    v54 = *(v41 + 18);
    v55 = v98;
    sub_1E65DE488();
    sub_1E6435E84(v119, v120, &v16[v54]);

    v56 = sub_1E5FED46C(qword_1EE2D7DD0, &qword_1ED0768F8, &unk_1E65F70A8);
    v57 = v92;
    MEMORY[0x1E69482C0](v16, v41, v56);
    sub_1E5DFE50C(v16, &qword_1ED0768F8, &unk_1E65F70A8);
    sub_1E5DFE50C(v55, &qword_1ED073B60, &unk_1E65EE020);
    v119 = v41;
    v120 = v56;
    v58 = swift_getOpaqueTypeConformance2();
    v59 = v94;
    v60 = v105;
    MEMORY[0x1E69482C0](v57, v105, v58);
    v119 = v60;
    v120 = v58;
    swift_getOpaqueTypeConformance2();
    v61 = sub_1E5FED46C(qword_1EE2D8848, &qword_1ED0768E0, &qword_1E65F7090);
    v119 = v109;
    v120 = v61;
    swift_getOpaqueTypeConformance2();
    v62 = v106;
    v63 = v110;
    sub_1E65E0878();
    (*(v95 + 8))(v59, v63);
    (*(v93 + 8))(v57, v60);
  }

  v87 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v88 = v108;
  MEMORY[0x1E69482C0](v62, v108, v87);

  swift_unknownObjectRelease();
  return (*(v107 + 8))(v62, v88);
}

BOOL sub_1E61E75AC(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1E6142E94(*a1, *a2);
}

uint64_t sub_1E61E75C4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1E6142ECC(*v1);
}

uint64_t sub_1E61E75D8(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1E6142EA4(a1, *v2);
}

uint64_t sub_1E61E75EC(uint64_t a1, void *a2)
{
  sub_1E65E6D28();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1E6142EA4(v9, *v2);
  return sub_1E65E6D78();
}

uint64_t sub_1E61E7638@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v27 = a3;
  v4 = a2 + 5;
  v5 = a2[3];
  sub_1E65E3DE8();
  swift_getWitnessTable();
  v6 = sub_1E65E41A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076978, &unk_1E65F7320);
  v7 = a2[2];
  v8 = sub_1E65E4148();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1E61F6934();
  v11 = a2[4];
  v36 = v10;
  v37 = v11;
  v32 = v6;
  v33 = v8;
  v34 = WitnessTable;
  v35 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E65E4BF8();
  swift_getWitnessTable();
  v12 = sub_1E65E4AC8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  *&v20 = v11;
  *(&v20 + 1) = *v4;
  *&v21 = v7;
  *(&v21 + 1) = v5;
  v28 = v21;
  v29 = v20;
  v30 = v26;
  v31 = v25;
  sub_1E65E4BA8();
  sub_1E65E4AB8();
  swift_getWitnessTable();
  sub_1E5FEE4C8(v17);
  v22 = *(v13 + 8);
  v22(v17, v12);
  sub_1E5FEE4C8(v19);
  return (v22)(v19, v12);
}

uint64_t sub_1E61E7920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a6;
  v59 = a2;
  v60 = a7;
  v58 = a3;
  v52 = a5;
  type metadata accessor for ContextMenuViewModifier();
  swift_getWitnessTable();
  v10 = sub_1E65E41A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076978, &unk_1E65F7320);
  v11 = sub_1E65E4148();
  v49 = v10;
  WitnessTable = swift_getWitnessTable();
  v68[4] = sub_1E61F6934();
  v68[5] = a5;
  v51 = v11;
  v53 = swift_getWitnessTable();
  v69 = v10;
  v70 = v11;
  v71 = WitnessTable;
  v72 = v53;
  v55 = MEMORY[0x1E697CDD8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  v12 = *(v57 + 64);
  v13 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v43 - v16;
  v17 = a4;
  v18 = sub_1E65E3DE8();
  v44 = *(v18 - 8);
  v19 = v44;
  v20 = *(v44 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v43 - v24;
  v69 = sub_1E65E4998();
  v26 = swift_checkMetadataState();
  v27 = MEMORY[0x1E6981580];
  MEMORY[0x1E694C310](a1 + *(v26 + 56), MEMORY[0x1E69815C0], v17, MEMORY[0x1E6981580]);

  v28 = v56;
  v68[2] = v27;
  v68[3] = v56;
  v43 = v18;
  v46 = swift_getWitnessTable();
  sub_1E5FEE4C8(v23);
  v47 = *(v19 + 8);
  v48 = v19 + 8;
  v47(v23, v18);
  v61 = v58;
  v62 = v17;
  v63 = v52;
  v64 = v28;
  v65 = a1;
  v29 = swift_checkMetadataState();
  v30 = swift_checkMetadataState();
  v31 = WitnessTable;
  v32 = v53;
  sub_1E65E4818();
  v69 = v29;
  v70 = v30;
  v71 = v31;
  v72 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v50;
  v35 = OpaqueTypeMetadata2;
  sub_1E5FEE4C8(v15);
  v36 = v57;
  v37 = *(v57 + 8);
  v37(v15, v35);
  v38 = v25;
  v39 = v25;
  v40 = v43;
  (*(v44 + 16))(v23, v39, v43);
  v69 = v23;
  (*(v36 + 16))(v15, v34, v35);
  v70 = v15;
  v68[0] = v40;
  v68[1] = v35;
  v66 = v46;
  v67 = OpaqueTypeConformance2;
  sub_1E61C9298(&v69, 2uLL, v68);
  v37(v34, v35);
  v41 = v47;
  v47(v38, v40);
  v37(v15, v35);
  return v41(v23, v40);
}

uint64_t sub_1E61E7E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a6;
  v52 = *(a2 - 8);
  v11 = *(v52 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v50 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = v48 - v14;
  v61 = v15;
  v62 = v16;
  v63 = v17;
  v64 = v18;
  v19 = type metadata accessor for ContextMenuViewModifier();
  v51 = *(v19 - 8);
  v48[1] = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076978, &unk_1E65F7320);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v48 - v24;
  v53 = v26;
  v27 = sub_1E65E4148();
  v55 = *(v27 - 8);
  v28 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v54 = v48 - v29;
  v30 = a1;
  v31 = (a1 + *(v19 + 60));
  v32 = *v31;
  v33 = *(v31 + 1);
  v59 = v32;
  v60 = v33;
  v61 = a2;
  v34 = a3;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  type metadata accessor for ContextMenuViewModifier.LoadState();
  sub_1E65E4A98();
  v35 = sub_1E65E4A78();
  if (v61)
  {
    v36 = v49;
    sub_1E5FEE4C8(v30 + *(v19 + 52));
    v37 = v50;
    sub_1E5FEE4C8(v36);
    sub_1E61F6934();
    v38 = v54;
    sub_1E62DFB74(v37, v53, a2);
    v39 = *(v52 + 8);
    v39(v37, a2);
    v39(v36, a2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v35);
    v48[-6] = a2;
    v48[-5] = a3;
    v48[-4] = a4;
    v48[-3] = a5;
    v52 = v27;
    v40 = a5;
    v41 = v30;
    v48[-2] = v30;
    sub_1E65E4AA8();
    v42 = v51;
    (*(v51 + 16))(v21, v41, v19);
    v43 = (*(v42 + 80) + 48) & ~*(v42 + 80);
    v44 = swift_allocObject();
    *(v44 + 2) = a2;
    *(v44 + 3) = v34;
    *(v44 + 4) = a4;
    *(v44 + 5) = v40;
    v27 = v52;
    (*(v42 + 32))(&v44[v43], v21, v19);
    v45 = v53;
    v46 = &v25[*(v53 + 36)];
    *v46 = sub_1E61F6A1C;
    v46[1] = v44;
    sub_1E61F6934();
    v46[2] = 0;
    v46[3] = 0;
    v38 = v54;
    sub_1E62DFC6C(v25, v45);
    sub_1E5DFE50C(v25, &qword_1ED076978, &unk_1E65F7320);
  }

  v57 = sub_1E61F6934();
  v58 = a4;
  swift_getWitnessTable();
  sub_1E5FEE4C8(v38);
  return (*(v55 + 8))(v38, v27);
}

uint64_t sub_1E61E835C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E5C28();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  (*(v5 + 16))(v8, a1, v4);
  result = sub_1E65E5D48();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1E61E850C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ContextMenuViewModifier() + 60));
  v3 = *v1;
  v4 = *(v1 + 1);
  type metadata accessor for ContextMenuViewModifier.LoadState();
  sub_1E65E4A98();
  return sub_1E65E4A88();
}

uint64_t sub_1E61E85BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v27 = a3;
  v24 = a2[3];
  sub_1E65E3DE8();
  swift_getWitnessTable();
  v4 = sub_1E65E41A8();
  v5 = a2[2];
  v23 = a2[4];
  v6 = sub_1E65E3DE8();
  WitnessTable = swift_getWitnessTable();
  v8 = a2[5];
  v40 = a2[7];
  v9 = v40;
  v41 = MEMORY[0x1E697E5D8];
  v34 = v4;
  v35 = v5;
  v36 = v6;
  v37 = WitnessTable;
  v38 = v8;
  v39 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E65E4BF8();
  swift_getWitnessTable();
  v10 = sub_1E65E4AC8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  sub_1E65E4B88();
  *&v18 = v5;
  *(&v18 + 1) = v24;
  *&v19 = v23;
  *(&v19 + 1) = v8;
  v28 = v18;
  v29 = v19;
  v30 = a2[6];
  v31 = v9;
  v32 = v26;
  v33 = v25;
  sub_1E65E4AB8();
  swift_getWitnessTable();
  sub_1E5FEE4C8(v15);
  v20 = *(v11 + 8);
  v20(v15, v10);
  sub_1E5FEE4C8(v17);
  return (v20)(v17, v10);
}

uint64_t sub_1E61E88CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v61 = a5;
  v62 = a7;
  v67 = a2;
  v68 = a9;
  v60 = a1;
  v52 = a3;
  v53 = a6;
  v57 = a8;
  type metadata accessor for ContextMenuPreviewViewModifier();
  swift_getWitnessTable();
  v55 = sub_1E65E41A8();
  v56 = sub_1E65E3DE8();
  WitnessTable = swift_getWitnessTable();
  v86[4] = a8;
  v86[5] = MEMORY[0x1E697E5D8];
  v51 = MEMORY[0x1E697E858];
  v58 = swift_getWitnessTable();
  v87 = v55;
  v88 = a3;
  v89 = v56;
  v90 = WitnessTable;
  v91 = a6;
  v92 = v58;
  v64 = MEMORY[0x1E697CDD0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  v66 = OpaqueTypeMetadata2;
  v14 = *(v65 + 64);
  v15 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v54 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v46 - v17;
  v18 = sub_1E65E3DE8();
  v48 = *(v18 - 8);
  v19 = v48;
  v20 = *(v48 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v46 - v24;
  v87 = sub_1E65E4998();
  v25 = swift_checkMetadataState();
  v26 = MEMORY[0x1E6981580];
  v27 = v60;
  MEMORY[0x1E694C310](v60 + *(v25 + 68), MEMORY[0x1E69815C0], a4, MEMORY[0x1E6981580]);

  v28 = v62;
  v86[2] = v26;
  v86[3] = v62;
  v49 = swift_getWitnessTable();
  v47 = v23;
  sub_1E5FEE4C8(v23);
  v29 = *(v19 + 8);
  v50 = v19 + 8;
  v51 = v29;
  v29(v23, v18);
  v77 = v52;
  v78 = a4;
  v79 = v61;
  v80 = v53;
  v81 = v28;
  v82 = v57;
  v30 = v27;
  v83 = v27;
  v70 = v52;
  v71 = a4;
  v31 = v52;
  v72 = v61;
  v73 = v53;
  v32 = v53;
  v74 = v28;
  v75 = v57;
  v76 = v30;
  v33 = swift_checkMetadataState();
  v34 = swift_checkMetadataState();
  v35 = v58;
  v36 = v54;
  v37 = WitnessTable;
  sub_1E65E4808();
  v87 = v33;
  v88 = v31;
  v89 = v34;
  v90 = v37;
  v91 = v32;
  v92 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v59;
  v40 = v66;
  sub_1E5FEE4C8(v36);
  v41 = v65;
  v42 = *(v65 + 8);
  v42(v36, v40);
  v43 = v47;
  (*(v48 + 16))(v47, v69, v18);
  v87 = v43;
  (*(v41 + 16))(v36, v39, v40);
  v88 = v36;
  v86[0] = v18;
  v86[1] = v40;
  v84 = v49;
  v85 = OpaqueTypeConformance2;
  sub_1E61C9298(&v87, 2uLL, v86);
  v42(v39, v40);
  v44 = v51;
  v51(v69, v18);
  v42(v36, v40);
  return v44(v43, v18);
}

uint64_t sub_1E61E8DE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5FEE4C8(v5);
  sub_1E5FEE4C8(v7);
  return (*(v3 + 8))(v7, a2);
}

uint64_t sub_1E61E8EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25[0] = a1;
  v25[1] = a8;
  v14 = sub_1E65E3DE8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v25 - v20;
  v25[4] = a2;
  v25[5] = a3;
  v25[6] = a4;
  v25[7] = a5;
  v25[8] = a6;
  v25[9] = a7;
  v22 = v25[0] + *(type metadata accessor for ContextMenuPreviewViewModifier() + 72);
  sub_1E65E48E8();
  v25[2] = a7;
  v25[3] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E5FEE4C8(v19);
  v23 = *(v15 + 8);
  v23(v19, v14);
  sub_1E5FEE4C8(v21);
  return (v23)(v21, v14);
}

uint64_t sub_1E61E90A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E61E90E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for PageMetricsClick();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61E9178, 0, 0);
}

uint64_t sub_1E61E9178()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v37 = *(v3 + 48);
  v38 = *(v3 + 56);
  v5 = *MEMORY[0x1E69CC8F8];
  v6 = sub_1E65D9D78();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v2, v5, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  v8 = v1[5];
  v9 = sub_1E65D8C68();
  (*(*(v9 - 8) + 16))(v2 + v8, v4 + v8, v9);
  sub_1E5DFD1CC(v4 + v1[6], v2 + v1[6], &qword_1ED072340, &qword_1E65EA410);
  v35 = *(v4 + v1[7]);
  sub_1E5DFD1CC(v4 + v1[8], v2 + v1[8], &qword_1ED073570, &unk_1E65F4570);
  v10 = (v4 + v1[9]);
  v11 = *v10;
  v12 = v10[1];
  v13 = (v4 + v1[10]);
  v14 = v13[1];
  v33 = v11;
  v34 = *v13;
  v15 = *(v4 + v1[11]);
  v16 = (v4 + v1[12]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v1[14];
  v20 = (v4 + v1[13]);
  v21 = v20[1];
  v31 = *v20;
  v32 = v17;
  v22 = sub_1E65D8F28();
  (*(*(v22 - 8) + 16))(v2 + v19, v4 + v19, v22);
  sub_1E5DFD1CC(v4 + v1[15], v2 + v1[15], &qword_1ED072330, &qword_1E65EAB70);
  *(v2 + v1[7]) = v35;
  v23 = (v2 + v1[9]);
  *v23 = v33;
  v23[1] = v12;
  v24 = (v2 + v1[10]);
  *v24 = v34;
  v24[1] = v14;
  *(v2 + v1[11]) = v15;
  v25 = (v2 + v1[12]);
  *v25 = v32;
  v25[1] = v18;
  v26 = (v2 + v1[13]);
  *v26 = v31;
  v26[1] = v21;

  v36 = (v37 + *v37);
  v27 = v37[1];
  v28 = swift_task_alloc();
  v0[6] = v28;
  *v28 = v0;
  v28[1] = sub_1E61E94B0;
  v29 = v0[5];

  return v36(v29);
}

uint64_t sub_1E61E94B0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *v1;
  v4[7] = v0;

  sub_1E5FC0990(v3);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FCC4D4, 0, 0);
  }

  else
  {
    v5 = v4[5];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1E61E9614(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E61E90E4(a1, v1 + 16);
}

uint64_t sub_1E61E96AC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v151 = a3;
  v150 = a2;
  v161 = a4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076918, &qword_1E65F71F8);
  v5 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v138 = &v135 - v6;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076920, &unk_1E65F7200);
  v163 = *(v147 - 8);
  v7 = *(v163 + 8);
  v8 = MEMORY[0x1EEE9AC00](v147);
  v137 = (&v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v146 = &v135 - v10;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073900, &qword_1E65EDC98);
  v162 = *(v168 - 8);
  v11 = *(v162 + 8);
  v12 = MEMORY[0x1EEE9AC00](v168);
  v136 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v135 - v14;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076928, &qword_1E65F7210);
  v16 = *(*(v159 - 8) + 64);
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v135 - v17;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076930, &qword_1E65F7218);
  v18 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v135 - v19;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076938, &qword_1E65F7220);
  v20 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v155 = &v135 - v21;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076940, &qword_1E65F7228);
  v22 = *(*(v156 - 8) + 64);
  MEMORY[0x1EEE9AC00](v156);
  v148 = &v135 - v23;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076948, &unk_1E65F7230);
  v179 = *(v167 - 8);
  v24 = v179[8];
  v25 = MEMORY[0x1EEE9AC00](v167);
  v145 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v166 = &v135 - v27;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F8, &qword_1E65EDC90);
  v178 = *(v176 - 1);
  v28 = *(v178 + 64);
  v29 = MEMORY[0x1EEE9AC00](v176);
  v144 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v165 = &v135 - v31;
  v32 = type metadata accessor for AppComposer();
  v33 = v32 - 8;
  v142 = *(v32 - 8);
  v34 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v141 = v35;
  v143 = &v135 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076950, &unk_1E65F7240);
  v164 = *(v175 - 8);
  v36 = v164[8];
  v37 = MEMORY[0x1EEE9AC00](v175);
  v173 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v174 = &v135 - v39;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073908, &qword_1E65EDCA0);
  v180 = *(v177 - 8);
  v40 = v180[8];
  v41 = MEMORY[0x1EEE9AC00](v177);
  v43 = &v135 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v135 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076958, &unk_1E65F7250);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v153 = &v135 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v139 = *(v49 - 8);
  v50 = *(v139 + 64);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8);
  v140 = &v135 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v135 - v52;
  v54 = type metadata accessor for ContextMenu.Context(0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v57 = &v135 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for ContextMenu(0);
  sub_1E61EFA38(&a1[*(v58 + 20)], v57, type metadata accessor for ContextMenu.Context);
  v59 = sub_1E5FAB460(v57, v53, &qword_1ED073B60, &unk_1E65EE020);
  v60 = v170[*(v33 + 28) + 8];
  v171 = v43;
  v172 = v45;
  v169 = v53;
  v149 = a1;
  if (v60 < 2)
  {
    v163 = &v135;
    MEMORY[0x1EEE9AC00](v59);
    *(&v135 - 6) = v61;
    *(&v135 - 5) = v53;
    v62 = v150;
    *(&v135 - 4) = a1;
    *(&v135 - 3) = v62;
    v63 = v151;
    v133 = v151;
    v64 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073910, &qword_1E65EDCA8);
    sub_1E5FED46C(&qword_1EE2D6858, &qword_1ED073910, &qword_1E65EDCA8);
    sub_1E65E4AF8();
    v137 = type metadata accessor for AppComposer;
    v65 = v143;
    sub_1E61EFA38(v64, v143, type metadata accessor for AppComposer);
    v66 = v53;
    v67 = v140;
    sub_1E5DFD1CC(v66, v140, &qword_1ED073B60, &unk_1E65EE020);
    v138 = *v63;
    v146 = v63[3];
    v147 = v63[5];
    v162 = v63[7];
    v163 = v63[9];
    sub_1E5DF650C(v62, &v181);
    v68 = *(v142 + 80);
    v69 = (v68 + 16) & ~v68;
    v70 = v69 + v141;
    v150 = v68 | 7;
    v71 = (v69 + v141 + *(v139 + 80)) & ~*(v139 + 80);
    v72 = (v50 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    sub_1E5E1E320(v65, v73 + v69, type metadata accessor for AppComposer);
    sub_1E5FAB460(v67, v73 + v71, &qword_1ED073B60, &unk_1E65EE020);
    v74 = (v73 + v72);
    v75 = *(v63 + 3);
    v74[2] = *(v63 + 2);
    v74[3] = v75;
    v74[4] = *(v63 + 4);
    v76 = *(v63 + 1);
    *v74 = *v63;
    v74[1] = v76;
    sub_1E5DF599C(&v181, v73 + ((v72 + 87) & 0xFFFFFFFFFFFFFFF8));
    v77 = v170;
    sub_1E61EFA38(v170, v65, v137);
    v78 = swift_allocObject();
    sub_1E5E1E320(v65, v78 + v69, type metadata accessor for AppComposer);
    v79 = (v78 + ((v70 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v79 = &unk_1E65FA338;
    v79[1] = 0;
    v80 = sub_1E61F26B4();
    swift_unknownObjectRetain();

    v133 = v80;
    v134 = MEMORY[0x1E6981E60];
    v81 = sub_1E65DF198();
    MEMORY[0x1EEE9AC00](v81);
    v82 = v169;
    *(&v135 - 4) = v77;
    *(&v135 - 3) = v82;
    v83 = v149;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073920, &qword_1E65EDCB0);
    v168 = MEMORY[0x1E6981F48];
    sub_1E5FED46C(&qword_1EE2D4B40, &qword_1ED073920, &qword_1E65EDCB0);
    v84 = v165;
    v85 = sub_1E65E4AF8();
    MEMORY[0x1EEE9AC00](v85);
    *(&v135 - 4) = v77;
    *(&v135 - 3) = v82;
    v133 = v83;
    v134 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
    sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280);
    v86 = v166;
    sub_1E65E4AF8();
    v87 = v180[2];
    v88 = v171;
    v87(v171, v172, v177);
    v170 = v164[2];
    (v170)(v173, v174, v175);
    v163 = *(v178 + 16);
    v89 = v144;
    (v163)(v144, v84, v176);
    v162 = v179[2];
    v90 = v145;
    v91 = v86;
    v92 = v167;
    (v162)(v145, v91, v167);
    v93 = v148;
    v94 = v88;
    v95 = v177;
    v87(v148, v94, v177);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076970, &qword_1E65F7288);
    v97 = v175;
    (v170)(v93 + v96[12], v173, v175);
    v98 = v176;
    (v163)(v93 + v96[16], v89, v176);
    (v162)(v93 + v96[20], v90, v92);
    v99 = v179[1];
    ++v179;
    v170 = v99;
    (v99)(v90, v92);
    v100 = *(v178 + 8);
    v178 += 8;
    v163 = v100;
    (v100)(v89, v98);
    v101 = v164[1];
    v101(v173, v97);
    v102 = v180[1];
    ++v180;
    v102(v171, v95);
    sub_1E5DFD1CC(v93, v152, &qword_1ED076940, &qword_1E65F7228);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D4B38, &qword_1ED076940, &qword_1E65F7228);
    sub_1E5FED46C(&qword_1EE2D4B30, &qword_1ED076918, &qword_1E65F71F8);
    v103 = v155;
    sub_1E65E4138();
    sub_1E5DFD1CC(v103, v160, &qword_1ED076938, &qword_1E65F7220);
    swift_storeEnumTagMultiPayload();
    sub_1E61F2440();
    v104 = v153;
    sub_1E65E4138();
    sub_1E5DFE50C(v103, &qword_1ED076938, &qword_1E65F7220);
    sub_1E5DFE50C(v93, &qword_1ED076940, &qword_1E65F7228);
    (v170)(v166, v167);
    (v163)(v165, v176);
    v101(v174, v175);
    v102(v172, v177);
    v105 = v104;
    v106 = v169;
LABEL_5:
    sub_1E5FAB460(v105, v161, &qword_1ED076958, &unk_1E65F7250);
    return sub_1E5DFE50C(v106, &qword_1ED073B60, &unk_1E65EE020);
  }

  v135 = v15;
  if (v60 == 3)
  {
    MEMORY[0x1EEE9AC00](v59);
    *(&v135 - 6) = v107;
    *(&v135 - 5) = v53;
    *(&v135 - 4) = a1;
    *(&v135 - 3) = v108;
    v110 = v109;
    v111 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073910, &qword_1E65EDCA8);
    sub_1E5FED46C(&qword_1EE2D6858, &qword_1ED073910, &qword_1E65EDCA8);
    v112 = sub_1E65E4AF8();
    MEMORY[0x1EEE9AC00](v112);
    *(&v135 - 4) = v111;
    *(&v135 - 3) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073918, &unk_1E65F7260);
    v179 = MEMORY[0x1E6981F48];
    sub_1E5FED46C(&qword_1EE2D4B48, &qword_1ED073918, &unk_1E65F7260);
    v113 = v135;
    v114 = sub_1E65E4AF8();
    MEMORY[0x1EEE9AC00](v114);
    *(&v135 - 4) = v111;
    *(&v135 - 3) = v53;
    v133 = v149;
    v134 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073960, &qword_1E65EDCD8);
    sub_1E5FED46C(&qword_1ED076960, &qword_1ED073960, &qword_1E65EDCD8);
    v115 = v146;
    sub_1E65E4AF8();
    v116 = v180[2];
    v117 = v171;
    v118 = v177;
    v116(v171, v172, v177);
    v178 = *(v162 + 2);
    v119 = v136;
    (v178)(v136, v113, v168);
    v176 = *(v163 + 2);
    v120 = v137;
    v121 = v115;
    v122 = v147;
    (v176)(v137, v121, v147);
    v123 = v138;
    v116(v138, v117, v118);
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076968, &unk_1E65F7270);
    v125 = v168;
    (v178)(&v123[*(v124 + 48)], v119, v168);
    v126 = v123;
    (v176)(&v123[*(v124 + 64)], v120, v122);
    v127 = *(v163 + 1);
    v163 += 8;
    v127(v120, v122);
    v128 = *(v162 + 1);
    v162 += 8;
    v128(v119, v125);
    v129 = v180[1];
    v129(v117, v118);
    sub_1E5DFD1CC(v126, v152, &qword_1ED076918, &qword_1E65F71F8);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D4B38, &qword_1ED076940, &qword_1E65F7228);
    sub_1E5FED46C(&qword_1EE2D4B30, &qword_1ED076918, &qword_1E65F71F8);
    v130 = v155;
    sub_1E65E4138();
    sub_1E5DFD1CC(v130, v160, &qword_1ED076938, &qword_1E65F7220);
    swift_storeEnumTagMultiPayload();
    sub_1E61F2440();
    v131 = v153;
    sub_1E65E4138();
    sub_1E5DFE50C(v130, &qword_1ED076938, &qword_1E65F7220);
    sub_1E5DFE50C(v126, &qword_1ED076918, &qword_1E65F71F8);
    v127(v146, v147);
    v128(v135, v168);
    v129(v172, v177);
    v106 = v169;
    v105 = v131;
    goto LABEL_5;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E61EAD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a2;
  v95 = a4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073998, &qword_1E65EDD08);
  v94 = *(v93 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v88 = &v79 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A0, &qword_1E65EDD10);
  v92 = *(v87 - 8);
  v8 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v114 = &v79 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CF0, &unk_1E65F7110);
  v91 = *(v90 - 8);
  v10 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v85 = &v79 - v11;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v89 = *(v115 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v79 - v13;
  v14 = type metadata accessor for ContextMenu(0);
  v15 = v14 - 8;
  v104 = *(v14 - 8);
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AppComposer();
  v107 = *(v17 - 8);
  v18 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v81 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1E65DED98();
  v86 = *(v112 - 8);
  v19 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v118 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v106 = *(v21 - 8);
  v22 = *(v106 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v96 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79 - v24;
  v26 = type metadata accessor for ContextMenu.Context(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076908, &unk_1E65F7100);
  v84 = *(v83 - 8);
  v30 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v79 - v31;
  v32 = *(v15 + 28);
  v110 = a1;
  sub_1E61EFA38(a1 + v32, v29, type metadata accessor for ContextMenu.Context);
  v116 = v25;
  sub_1E5FAB460(v29, v25, &qword_1ED073B60, &unk_1E65EE020);
  v111 = type metadata accessor for AppComposer;
  sub_1E61EFA38(v117, &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v25, &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073B60, &unk_1E65EE020);
  v109 = type metadata accessor for ContextMenu;
  v33 = v100;
  sub_1E61EFA38(a1, v100, type metadata accessor for ContextMenu);
  sub_1E5DF650C(v108, &v119);
  v101 = *a3;
  v102 = a3[3];
  v98 = a3[5];
  v99 = a3[7];
  v97 = a3[9];
  v34 = *(v107 + 80);
  v35 = (v34 + 16) & ~v34;
  v36 = *(v106 + 80);
  v37 = (v18 + v36 + v35) & ~v36;
  v38 = *(v104 + 80);
  v106 = v37;
  v107 = v35;
  v108 = v34 | v38 | v36;
  v39 = (v22 + v38 + v37) & ~v38;
  v104 = v39;
  v40 = (v105 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = v40;
  v41 = swift_allocObject();
  v105 = type metadata accessor for AppComposer;
  v42 = v41 + v35;
  v43 = v81;
  sub_1E5E1E320(v81, v42, type metadata accessor for AppComposer);
  v44 = v41 + v37;
  v45 = v96;
  sub_1E5FAB460(v96, v44, &qword_1ED073B60, &unk_1E65EE020);
  v103 = type metadata accessor for ContextMenu;
  sub_1E5E1E320(v33, v41 + v39, type metadata accessor for ContextMenu);
  sub_1E5DF599C(&v119, v41 + v40);
  v46 = (v41 + ((v40 + 47) & 0xFFFFFFFFFFFFFFF8));
  v47 = *(a3 + 3);
  v46[2] = *(a3 + 2);
  v46[3] = v47;
  v46[4] = *(a3 + 4);
  v48 = *(a3 + 1);
  *v46 = *a3;
  v46[1] = v48;
  swift_unknownObjectRetain();

  sub_1E65DED88();
  sub_1E61EFA38(v117, v43, v111);
  v49 = v45;
  sub_1E5DFD1CC(v116, v45, &qword_1ED073B60, &unk_1E65EE020);
  v50 = v100;
  sub_1E61EFA38(v110, v100, v109);
  v51 = v80;
  v52 = swift_allocObject();
  sub_1E5E1E320(v43, v52 + v107, v105);
  sub_1E5FAB460(v49, v52 + v106, &qword_1ED073B60, &unk_1E65EE020);
  sub_1E5E1E320(v50, v52 + v104, v103);
  v53 = (v52 + v51);
  v54 = *(a3 + 3);
  v53[2] = *(a3 + 2);
  v53[3] = v54;
  v53[4] = *(a3 + 4);
  v55 = *(a3 + 1);
  *v53 = *a3;
  v53[1] = v55;
  sub_1E604BABC();
  swift_unknownObjectRetain();

  sub_1E65DEE28();
  sub_1E61EFA38(v117, v43, v111);
  v56 = v96;
  sub_1E5DFD1CC(v116, v96, &qword_1ED073B60, &unk_1E65EE020);
  sub_1E61EFA38(v110, v50, v109);
  v57 = swift_allocObject();
  sub_1E5E1E320(v43, v57 + v107, v105);
  sub_1E5FAB460(v56, v57 + v106, &qword_1ED073B60, &unk_1E65EE020);
  sub_1E5E1E320(v50, v57 + v104, v103);
  v58 = (v57 + v51);
  v59 = *(a3 + 3);
  v58[2] = *(a3 + 2);
  v58[3] = v59;
  v58[4] = *(a3 + 4);
  v60 = *(a3 + 1);
  *v58 = *a3;
  v58[1] = v60;
  sub_1E604C89C();
  swift_unknownObjectRetain();

  v61 = v85;
  sub_1E65DE568();
  v62 = sub_1E61F2AA4(&qword_1EE2D6818, MEMORY[0x1E699CDB0]);
  v63 = v112;
  MEMORY[0x1E69482C0](v118, v112, v62);
  *&v119 = v63;
  *(&v119 + 1) = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120);
  v66 = v88;
  v67 = v113;
  v68 = v87;
  v69 = v115;
  sub_1E65E08A8();
  *&v119 = v68;
  *(&v119 + 1) = v69;
  v120 = OpaqueTypeConformance2;
  v121 = v65;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110);
  v72 = v82;
  v73 = v66;
  v74 = v93;
  v75 = v90;
  sub_1E65E08A8();
  (*(v94 + 8))(v73, v74);
  (*(v92 + 8))(v114, v68);
  (*(v91 + 8))(v61, v75);
  (*(v89 + 8))(v67, v115);
  (*(v86 + 8))(v118, v112);
  sub_1E5DFE50C(v116, &qword_1ED073B60, &unk_1E65EE020);
  *&v119 = v74;
  *(&v119 + 1) = v75;
  v120 = v70;
  v121 = v71;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v83;
  MEMORY[0x1E69482C0](v72, v83, v76);
  return (*(v84 + 8))(v72, v77);
}

uint64_t sub_1E61EBA5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v69 = a3;
  v66 = a1;
  v73 = a4;
  v6 = sub_1E65DE588();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v70 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v54 - v10;
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v54 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v55 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v54 - v17);
  v64 = &v54 - v17;
  v68 = sub_1E65DE468();
  v76 = *(v68 - 8);
  v19 = v76[8];
  v20 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v54 - v22;
  sub_1E64D6444(v18);
  v56 = sub_1E5F9B258(&unk_1F5FA86B8);
  v65 = type metadata accessor for AppComposer;
  sub_1E61EFA38(a1, &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v18, &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073988, &unk_1E65F72F0);
  v58 = *a2;
  v59 = a2[3];
  v23 = a2[5];
  v57 = a2[7];
  v75 = a2[9];
  v24 = *(v12 + 80);
  v25 = (v24 + 16) & ~v24;
  v63 = v25 + v13;
  v61 = v25;
  v62 = v24 | 7;
  v26 = (v25 + v13 + *(v60 + 80)) & ~*(v60 + 80);
  v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v28 + v25;
  v30 = v54;
  sub_1E5E1E320(v54, v29, type metadata accessor for AppComposer);
  sub_1E5FAB460(v55, v28 + v26, &qword_1ED073988, &unk_1E65F72F0);
  *(v28 + v27) = v56;
  v31 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = *(a2 + 4);
  v31[3] = *(a2 + 3);
  v31[4] = v32;
  v33 = *(a2 + 2);
  v31[1] = *(a2 + 1);
  v31[2] = v33;
  *v31 = *a2;
  swift_unknownObjectRetain();

  v34 = v74;
  sub_1E65DE458();
  sub_1E5DFE50C(v64, &qword_1ED073988, &unk_1E65F72F0);
  sub_1E61EFA38(v66, v30, v65);
  sub_1E5DF650C(v69, v78);
  v35 = (v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_1E5E1E320(v30, v36 + v61, type metadata accessor for AppComposer);
  v37 = (v36 + v35);
  v38 = *(a2 + 3);
  v37[2] = *(a2 + 2);
  v37[3] = v38;
  v37[4] = *(a2 + 4);
  v39 = *(a2 + 1);
  *v37 = *a2;
  v37[1] = v39;
  sub_1E5DF599C(v78, v36 + ((v35 + 87) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();

  v40 = v77;
  sub_1E65DE578();
  v41 = v76[2];
  v42 = v67;
  v43 = v68;
  v41(v67, v34, v68);
  v44 = v70;
  v45 = v71;
  v46 = *(v71 + 16);
  v47 = v40;
  v48 = v72;
  v46(v70, v47, v72);
  v49 = v73;
  v41(v73, v42, v43);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073990, &unk_1E65F7300);
  v46(&v49[*(v50 + 48)], v44, v48);
  v51 = *(v45 + 8);
  v51(v77, v48);
  v52 = v76[1];
  v52(v74, v43);
  v51(v44, v48);
  return (v52)(v42, v43);
}

uint64_t sub_1E61EC0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v77 = a2;
  v68 = a1;
  v84 = a4;
  v75 = sub_1E65D76F8();
  v71 = *(v75 - 1);
  v78 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v7;
  v8 = type metadata accessor for AppComposer();
  v70 = *(v8 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v69 = *(v11 - 8);
  v12 = *(v69 + 8);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v86 = *(v81 - 8);
  v80 = *(v86 + 64);
  v16 = MEMORY[0x1EEE9AC00](v81);
  v83 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v82 = &v58 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v79 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v58 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v76 = *(v23 - 8);
  v74 = *(v76 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v72 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v85 = &v58 - v26;
  sub_1E64D6730(&v58 - v26);
  v66 = v15;
  sub_1E6184404(v15);
  v67 = type metadata accessor for AppComposer;
  v60 = v10;
  sub_1E61EFA38(a1, v10, type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v15, &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073950, &unk_1E65F4360);
  v27 = v71;
  v28 = v75;
  (*(v71 + 16))(v7, v77, v75);
  v61 = *a3;
  v62 = a3[3];
  v63 = a3[5];
  v64 = a3[7];
  v65 = a3[9];
  v29 = *(v70 + 80);
  v30 = (v29 + 16) & ~v29;
  v77 = v30 + v9;
  v70 = v29 | 7;
  v31 = (v30 + v9 + *(v69 + 80)) & ~*(v69 + 80);
  v32 = (v12 + *(v27 + 80) + v31) & ~*(v27 + 80);
  v33 = (v78 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v69 = type metadata accessor for AppComposer;
  sub_1E5E1E320(v10, v34 + v30, type metadata accessor for AppComposer);
  sub_1E5FAB460(v58, v34 + v31, &qword_1ED073950, &unk_1E65F4360);
  (*(v27 + 32))(v34 + v32, v59, v28);
  v35 = (v34 + v33);
  v36 = *(a3 + 3);
  v35[2] = *(a3 + 2);
  v35[3] = v36;
  v35[4] = *(a3 + 4);
  v37 = *(a3 + 1);
  *v35 = *a3;
  v35[1] = v37;
  v38 = (v34 + ((v33 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v38 = nullsub_1;
  v38[1] = 0;
  sub_1E604BABC();
  swift_unknownObjectRetain();

  v39 = v73;
  sub_1E65DE518();
  sub_1E5DFE50C(v66, &qword_1ED073950, &unk_1E65F4360);
  v40 = v60;
  sub_1E61EFA38(v68, v60, v67);
  v41 = v72;
  sub_1E5DFD1CC(v85, v72, &qword_1ED073958, &qword_1E65EDCD0);
  v42 = (v77 + *(v76 + 80)) & ~*(v76 + 80);
  v43 = swift_allocObject();
  v78 = v43;
  sub_1E5E1E320(v40, v43 + v30, v69);
  sub_1E5FAB460(v41, v43 + v42, &qword_1ED073958, &qword_1E65EDCD0);
  v44 = v86;
  v76 = *(v86 + 16);
  v45 = v79;
  v46 = v39;
  v47 = v39;
  v48 = v81;
  (v76)(v79, v46, v81);
  v49 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v77 = swift_allocObject();
  v75 = *(v44 + 32);
  (v75)(v77 + v49, v45, v48);
  v50 = v82;
  v51 = v48;
  v52 = v76;
  (v76)(v82, v47, v48);
  v79 = swift_allocObject();
  v53 = v50;
  v54 = v75;
  (v75)(&v79[v49], v53, v48);
  v55 = v83;
  v52(v83, v47, v51);
  v56 = swift_allocObject();
  v54(v56 + v49, v55, v51);
  sub_1E604CB00();
  sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0);
  sub_1E65DE8A8();
  (*(v86 + 8))(v47, v51);
  return sub_1E5DFE50C(v85, &qword_1ED073958, &qword_1E65EDCD0);
}

uint64_t sub_1E61EC978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v61 = a3;
  v62 = a6;
  v57 = a5;
  v60 = a2;
  v52 = a1;
  v63 = a8;
  v64 = a9;
  v65 = a7;
  v58 = sub_1E65D76F8();
  v66 = *(v58 - 8);
  v59 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppComposer();
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v54 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8);
  v50 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v47 - v24;
  sub_1E64D6158((&v47 - v24));
  sub_1E61EFA38(a1, v16, type metadata accessor for AppComposer);
  v56 = v25;
  sub_1E5DFD1CC(v25, v23, &qword_1ED0736B0, &unk_1E65F8480);
  v26 = *(v53 + 80);
  v27 = (v26 + 16) & ~v26;
  v28 = *(v18 + 80);
  v29 = ((v13 + v28 + v27) & ~v28) + v19;
  v30 = (v13 + v28 + v27) & ~v28;
  v48 = v30;
  v49 = v26 | v28 | 7;
  v31 = swift_allocObject();
  v57 = v31;
  v47 = type metadata accessor for AppComposer;
  sub_1E5E1E320(v16, v31 + v27, type metadata accessor for AppComposer);
  sub_1E5FAB460(v23, v31 + v30, &qword_1ED0736B0, &unk_1E65F8480);
  v32 = v54;
  sub_1E61EFA38(v52, v54, type metadata accessor for AppComposer);
  v33 = v25;
  v34 = v50;
  sub_1E5DFD1CC(v33, v50, &qword_1ED0736B0, &unk_1E65F8480);
  v35 = v66;
  v36 = v55;
  v37 = v58;
  (*(v66 + 16))(v55, v60, v58);
  sub_1E5DF650C(v61, v67);
  v38 = a4[3];
  v51 = *a4;
  v52 = v38;
  v53 = a4[5];
  v39 = a4[9];
  v60 = a4[7];
  v61 = v39;
  v40 = (v29 + *(v35 + 80)) & ~*(v35 + 80);
  v41 = (v59 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  sub_1E5E1E320(v32, v42 + v27, v47);
  sub_1E5FAB460(v34, v42 + v48, &qword_1ED0736B0, &unk_1E65F8480);
  (*(v66 + 32))(v42 + v40, v36, v37);
  sub_1E5DF599C(v67, v42 + v41);
  v43 = (v42 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8));
  v44 = *(a4 + 3);
  v43[2] = *(a4 + 2);
  v43[3] = v44;
  v43[4] = *(a4 + 4);
  v45 = *(a4 + 1);
  *v43 = *a4;
  v43[1] = v45;
  sub_1E65DE748();
  sub_1E61F2AA4(&qword_1EE2D6890, MEMORY[0x1E699CC00]);
  swift_unknownObjectRetain();

  sub_1E65DE9A8();
  return sub_1E5DFE50C(v56, &qword_1ED0736B0, &unk_1E65F8480);
}

uint64_t sub_1E61ECEF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073918, &unk_1E65F7260);
  sub_1E5FED46C(&qword_1EE2D4B48, &qword_1ED073918, &unk_1E65F7260);
  return sub_1E65E4AF8();
}

uint64_t sub_1E61ECFA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v69 = a3;
  v66 = a1;
  v73 = a4;
  v6 = sub_1E65DE588();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v70 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v54 - v10;
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v54 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v55 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v54 - v17);
  v64 = &v54 - v17;
  v68 = sub_1E65DE468();
  v76 = *(v68 - 8);
  v19 = v76[8];
  v20 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v54 - v22;
  sub_1E64D6444(v18);
  v56 = sub_1E5F9B258(&unk_1F5FA86E0);
  v65 = type metadata accessor for AppComposer;
  sub_1E61EFA38(a1, &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v18, &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073988, &unk_1E65F72F0);
  v58 = *a2;
  v59 = a2[3];
  v23 = a2[5];
  v57 = a2[7];
  v75 = a2[9];
  v24 = *(v12 + 80);
  v25 = (v24 + 16) & ~v24;
  v63 = v25 + v13;
  v61 = v25;
  v62 = v24 | 7;
  v26 = (v25 + v13 + *(v60 + 80)) & ~*(v60 + 80);
  v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v28 + v25;
  v30 = v54;
  sub_1E5E1E320(v54, v29, type metadata accessor for AppComposer);
  sub_1E5FAB460(v55, v28 + v26, &qword_1ED073988, &unk_1E65F72F0);
  *(v28 + v27) = v56;
  v31 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = *(a2 + 4);
  v31[3] = *(a2 + 3);
  v31[4] = v32;
  v33 = *(a2 + 2);
  v31[1] = *(a2 + 1);
  v31[2] = v33;
  *v31 = *a2;
  swift_unknownObjectRetain();

  v34 = v74;
  sub_1E65DE458();
  sub_1E5DFE50C(v64, &qword_1ED073988, &unk_1E65F72F0);
  sub_1E61EFA38(v66, v30, v65);
  sub_1E5DF650C(v69, v78);
  v35 = (v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_1E5E1E320(v30, v36 + v61, type metadata accessor for AppComposer);
  v37 = (v36 + v35);
  v38 = *(a2 + 3);
  v37[2] = *(a2 + 2);
  v37[3] = v38;
  v37[4] = *(a2 + 4);
  v39 = *(a2 + 1);
  *v37 = *a2;
  v37[1] = v39;
  sub_1E5DF599C(v78, v36 + ((v35 + 87) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();

  v40 = v77;
  sub_1E65DE578();
  v41 = v76[2];
  v42 = v67;
  v43 = v68;
  v41(v67, v34, v68);
  v44 = v70;
  v45 = v71;
  v46 = *(v71 + 16);
  v47 = v40;
  v48 = v72;
  v46(v70, v47, v72);
  v49 = v73;
  v41(v73, v42, v43);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073990, &unk_1E65F7300);
  v46(&v49[*(v50 + 48)], v44, v48);
  v51 = *(v45 + 8);
  v51(v77, v48);
  v52 = v76[1];
  v52(v74, v43);
  v51(v44, v48);
  return (v52)(v42, v43);
}

uint64_t sub_1E61ED5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X8>)
{
  v188 = a3;
  v189 = a4;
  v164 = a2;
  v195 = a1;
  v178 = a5;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
  v176 = *(v152 - 8);
  v5 = *(v176 + 64);
  v6 = MEMORY[0x1EEE9AC00](v152);
  v150 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v148 = &v137 - v9;
  v149 = v10;
  MEMORY[0x1EEE9AC00](v8);
  v151 = &v137 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073938, &unk_1E65F72A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v168 = &v137 - v14;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v167 = *(v169 - 8);
  v15 = *(v167 + 64);
  v16 = MEMORY[0x1EEE9AC00](v169);
  v147 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v173 = &v137 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073948, &unk_1E65F72B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v177 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v174 = &v137 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v175 = &v137 - v25;
  v26 = sub_1E65D76F8();
  v186 = v26;
  v27 = *(v26 - 8);
  v166 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v29;
  v30 = type metadata accessor for AppComposer();
  v180 = *(v30 - 8);
  v31 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v157 = *(v33 - 8);
  v34 = *(v157 + 8);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v153 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v137 - v36;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v192 = *(v162 - 8);
  v191 = *(v192 + 64);
  v38 = MEMORY[0x1EEE9AC00](v162);
  v165 = &v137 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v163 = &v137 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v161 = &v137 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v190 = (&v137 - v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v160 = *(v45 - 8);
  v159 = *(v160 + 64);
  v46 = MEMORY[0x1EEE9AC00](v45 - 8);
  v179 = &v137 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v158 = &v137 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v137 - v50;
  v194 = &v137 - v50;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073960, &qword_1E65EDCD8);
  v171 = *(v172 - 8);
  v52 = *(v171 + 64);
  v53 = MEMORY[0x1EEE9AC00](v172);
  v170 = &v137 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v193 = &v137 - v55;
  sub_1E64D6730(v51);
  v155 = v37;
  sub_1E6184404(v37);
  v156 = type metadata accessor for AppComposer;
  v187 = v32;
  sub_1E61EFA38(v195, v32, type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v37, &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073950, &unk_1E65F4360);
  v56 = v27;
  v57 = *(v27 + 16);
  v144 = v27 + 16;
  v143 = v57;
  v57(v29, v188, v26);
  v58 = v189;
  v59 = *v189;
  v60 = v189[5];
  v181 = v189[3];
  v182 = v60;
  v61 = v189[9];
  v183 = v189[7];
  v184 = v61;
  v62 = *(v180 + 80);
  v63 = (v62 + 16) & ~v62;
  v180 = v63 + v31;
  v154 = v62 | 7;
  v64 = (v63 + v31 + *(v157 + 80)) & ~*(v157 + 80);
  v65 = *(v56 + 80);
  v66 = (v34 + v65 + v64) & ~v65;
  v140 = v65;
  v138 = v166 + 7;
  v67 = (v166 + 7 + v66) & 0xFFFFFFFFFFFFFFF8;
  v141 = v62 | 7 | v65;
  v68 = swift_allocObject();
  v157 = type metadata accessor for AppComposer;
  sub_1E5E1E320(v32, v68 + v63, type metadata accessor for AppComposer);
  sub_1E5FAB460(v153, v68 + v64, &qword_1ED073950, &unk_1E65F4360);
  v69 = *(v56 + 32);
  v153 = v56 + 32;
  v139 = v69;
  v69(v68 + v66, v185, v186);
  v70 = (v68 + v67);
  v71 = v58[3];
  v70[2] = v58[2];
  v70[3] = v71;
  v70[4] = v58[4];
  v72 = v58[1];
  *v70 = *v58;
  v70[1] = v72;
  v73 = (v68 + ((v67 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v73 = nullsub_1;
  v73[1] = 0;
  v74 = sub_1E604BABC();
  v145 = v59;
  swift_unknownObjectRetain();

  v75 = v190;
  v142 = v74;
  sub_1E65DE518();
  sub_1E5DFE50C(v155, &qword_1ED073950, &unk_1E65F4360);
  v76 = v187;
  sub_1E61EFA38(v195, v187, v156);
  v77 = v158;
  sub_1E5DFD1CC(v194, v158, &qword_1ED073958, &qword_1E65EDCD0);
  v78 = *(v160 + 80);
  v79 = ((v180 + v78) & ~v78);
  v156 = (v79 + v159);
  v155 = (v154 | v78);
  v80 = swift_allocObject();
  v160 = v80;
  v166 = v63;
  sub_1E5E1E320(v76, v80 + v63, v157);
  v157 = v79;
  sub_1E5FAB460(v77, v79 + v80, &qword_1ED073958, &qword_1E65EDCD0);
  v81 = v192;
  v82 = *(v192 + 16);
  v83 = v161;
  v84 = v162;
  v82(v161, v75, v162);
  v85 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v159 = swift_allocObject();
  v86 = *(v81 + 32);
  v86(v159 + v85, v83, v84);
  v87 = v163;
  v88 = v190;
  v82(v163, v190, v84);
  v161 = swift_allocObject();
  v86(&v161[v85], v87, v84);
  v89 = v165;
  v90 = v88;
  v82(v165, v88, v84);
  v91 = swift_allocObject();
  v86(v91 + v85, v89, v84);
  v92 = v167;
  v93 = sub_1E604CB00();
  sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0);
  v94 = v168;
  v95 = v179;
  sub_1E65DE8A8();
  (*(v192 + 8))(v90, v84);
  sub_1E5DFE50C(v194, &qword_1ED073958, &qword_1E65EDCD0);
  sub_1E64D6730(v95);
  sub_1E61845B4(v94);
  if ((*(v92 + 48))(v94, 1, v169) == 1)
  {
    sub_1E5DFE50C(v95, &qword_1ED073958, &qword_1E65EDCD0);
    sub_1E5DFE50C(v94, &qword_1ED073938, &unk_1E65F72A0);
    v96 = 1;
    v97 = v174;
  }

  else
  {
    v98 = v140;
    v99 = v173;
    sub_1E5FAB460(v94, v173, &qword_1ED073940, &qword_1E65EDCC8);
    v191 = type metadata accessor for AppComposer;
    v100 = v187;
    sub_1E61EFA38(v195, v187, type metadata accessor for AppComposer);
    v101 = v147;
    sub_1E5DFD1CC(v99, v147, &qword_1ED073940, &qword_1E65EDCC8);
    v192 = v93;
    v103 = v185;
    v102 = v186;
    v143(v185, v188, v186);
    v104 = (v180 + *(v92 + 80)) & ~*(v92 + 80);
    v105 = v104 + v146;
    v106 = (v98 + v104 + v146 + 1) & ~v98;
    v107 = (v138 + v106) & 0xFFFFFFFFFFFFFFF8;
    v108 = swift_allocObject();
    v190 = type metadata accessor for AppComposer;
    sub_1E5E1E320(v100, v108 + v166, type metadata accessor for AppComposer);
    sub_1E5FAB460(v101, v108 + v104, &qword_1ED073940, &qword_1E65EDCC8);
    *(v108 + v105) = 0;
    v139(v108 + v106, v103, v102);
    v109 = (v108 + v107);
    v110 = v189;
    v111 = *(v189 + 3);
    v109[2] = *(v189 + 2);
    v109[3] = v111;
    v109[4] = v110[4];
    v112 = v110[1];
    *v109 = *v110;
    v109[1] = v112;
    swift_unknownObjectRetain();

    v113 = v151;
    sub_1E65DE528();
    sub_1E61EFA38(v195, v100, v191);
    v114 = v194;
    sub_1E5DFD1CC(v95, v194, &qword_1ED073958, &qword_1E65EDCD0);
    v115 = swift_allocObject();
    v195 = v115;
    sub_1E5E1E320(v100, v115 + v166, v190);
    sub_1E5FAB460(v114, v157 + v115, &qword_1ED073958, &qword_1E65EDCD0);
    v116 = v176;
    v117 = *(v176 + 16);
    v118 = v148;
    v119 = v152;
    v117(v148, v113, v152);
    v120 = (*(v116 + 80) + 16) & ~*(v116 + 80);
    v194 = swift_allocObject();
    v121 = *(v116 + 32);
    v121(v194 + v120, v118, v119);
    v117(v118, v113, v119);
    v191 = swift_allocObject();
    v121(v191 + v120, v118, v119);
    v122 = v150;
    v117(v150, v113, v119);
    v123 = swift_allocObject();
    v121(v123 + v120, v122, v119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073980, &qword_1E65EDCE8);
    sub_1E604DE38();
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0);
    v124 = v174;
    sub_1E65DE8A8();
    (*(v176 + 8))(v113, v119);
    sub_1E5DFE50C(v173, &qword_1ED073940, &qword_1E65EDCC8);
    sub_1E5DFE50C(v179, &qword_1ED073958, &qword_1E65EDCD0);
    v96 = 0;
    v97 = v124;
  }

  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073970, &unk_1E65F72E0);
  (*(*(v125 - 8) + 56))(v97, v96, 1, v125);
  v126 = v175;
  sub_1E5FAB460(v97, v175, &qword_1ED073948, &unk_1E65F72B0);
  v127 = v171;
  v128 = *(v171 + 16);
  v129 = v170;
  v130 = v193;
  v131 = v172;
  v128(v170, v193, v172);
  v132 = v177;
  sub_1E5DFD1CC(v126, v177, &qword_1ED073948, &unk_1E65F72B0);
  v133 = v178;
  v128(v178, v129, v131);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073978, &qword_1E65EDCE0);
  sub_1E5DFD1CC(v132, &v133[*(v134 + 48)], &qword_1ED073948, &unk_1E65F72B0);
  sub_1E5DFE50C(v126, &qword_1ED073948, &unk_1E65F72B0);
  v135 = *(v127 + 8);
  v135(v130, v131);
  sub_1E5DFE50C(v132, &qword_1ED073948, &unk_1E65F72B0);
  return (v135)(v129, v131);
}

uint64_t sub_1E61EE9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v35 = a2;
  v33 = a1;
  v37 = a4;
  v34 = sub_1E65D76F8();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppComposer();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v36 = &v26 - v14;
  sub_1E64D6B28(&v26 - v14);
  sub_1E61EFA38(v33, v9, type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v15, v13, &unk_1ED0776E0, &qword_1E65EDC00);
  v16 = v34;
  (*(v5 + 16))(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v34);
  v29 = *a3;
  v17 = a3[5];
  v31 = a3[3];
  v32 = v17;
  v33 = a3[7];
  v35 = a3[9];
  v18 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v19 = (v8 + *(v27 + 80) + v18) & ~*(v27 + 80);
  v20 = (v11 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_1E5E1E320(v9, v21 + v18, type metadata accessor for AppComposer);
  sub_1E5FAB460(v13, v21 + v19, &unk_1ED0776E0, &qword_1E65EDC00);
  (*(v5 + 32))(v21 + v20, v28, v16);
  v22 = (v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = *(a3 + 3);
  v22[2] = *(a3 + 2);
  v22[3] = v23;
  v22[4] = *(a3 + 4);
  v24 = *(a3 + 1);
  *v22 = *a3;
  v22[1] = v24;
  sub_1E604C89C();
  swift_unknownObjectRetain();

  sub_1E65DE4E8();
  return sub_1E5DFE50C(v36, &unk_1ED0776E0, &qword_1E65EDC00);
}

uint64_t sub_1E61EEDA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v117 = a5;
  v106 = a4;
  v115 = a3;
  v112 = sub_1E65D76F8();
  v111 = *(v112 - 8);
  v114 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v121 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073850, &unk_1E65F71B0);
  v118 = *(v7 - 8);
  v119 = v7;
  v8 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v125 = &v86 - v9;
  v10 = type metadata accessor for AppComposer();
  v11 = v10 - 8;
  v98 = *(v10 - 8);
  v12 = *(v98 + 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v103 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v101 = &v86 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v86 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v86 - v22;
  v24 = sub_1E65DED78();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v105 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1E65DEC38();
  v116 = *(v124 - 8);
  v27 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E65DEC18();
  v107 = v29;
  v108 = *(v29 - 8);
  v30 = v108;
  v110 = *(v108 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v109 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v86 - v33;
  v122 = &v86 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  v92 = *(v35 - 8);
  v120 = *(v92 + 64);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v91 = &v86 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v126 = &v86 - v38;
  sub_1E64D6D58((&v86 - v38));
  v39 = sub_1E65DE608();
  v102 = sub_1E600A684(v39);

  (*(v30 + 104))(v34, *MEMORY[0x1E699CD38], v29);
  v113 = *a1;
  v40 = *(v11 + 28);
  v41 = a1 + *(type metadata accessor for AppEnvironment() + 112) + v40;
  v94 = SessionService.requireNewSessionsAllowed.getter();
  v93 = v42;
  v43 = a1;
  v104 = v23;
  sub_1E61EFA38(a1, v23, type metadata accessor for AppComposer);
  v44 = *(v98 + 80);
  v45 = (v44 + 16) & ~v44;
  v46 = v44 | 7;
  v90 = swift_allocObject();
  sub_1E5E1E320(v23, v90 + v45, type metadata accessor for AppComposer);
  sub_1E61EFA38(v43, v21, type metadata accessor for AppComposer);
  v89 = swift_allocObject();
  sub_1E5E1E320(v21, v89 + v45, type metadata accessor for AppComposer);
  sub_1E61EFA38(v43, v18, type metadata accessor for AppComposer);
  v88 = swift_allocObject();
  sub_1E5E1E320(v18, v88 + v45, type metadata accessor for AppComposer);
  v100 = v43;
  v47 = v101;
  v99 = type metadata accessor for AppComposer;
  sub_1E61EFA38(v43, v101, type metadata accessor for AppComposer);
  v48 = v45 + v12;
  v95 = v45 + v12;
  v96 = v46;
  v87 = swift_allocObject();
  v97 = v45;
  v98 = type metadata accessor for AppComposer;
  sub_1E5E1E320(v47, v87 + v45, type metadata accessor for AppComposer);
  v49 = v106;
  sub_1E5DF650C(v106, &v128);
  v50 = swift_allocObject();
  sub_1E5DF599C(&v128, v50 + 16);
  v51 = v43;
  v52 = v103;
  sub_1E61EFA38(v51, v103, type metadata accessor for AppComposer);
  v53 = v91;
  sub_1E5DFD1CC(v126, v91, &qword_1ED073858, &unk_1E65F84A0);
  sub_1E5DF650C(v49, &v127);
  v54 = *(v92 + 80);
  v55 = (v48 + v54) & ~v54;
  v56 = (v120 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  sub_1E5E1E320(v52, v57 + v45, type metadata accessor for AppComposer);
  sub_1E5FAB460(v53, v57 + v55, &qword_1ED073858, &unk_1E65F84A0);
  sub_1E5DF599C(&v127, v57 + v56);
  sub_1E65DED68();
  sub_1E65DEC28();
  v58 = v126;
  v59 = v53;
  sub_1E5DFD1CC(v126, v53, &qword_1ED073858, &unk_1E65F84A0);
  v60 = v111;
  v61 = v112;
  (*(v111 + 16))(v121, v115, v112);
  v62 = (v54 + 16) & ~v54;
  v120 += v62;
  v115 = v54 | 7;
  v63 = (v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + *(v60 + 80) + 8) & ~*(v60 + 80);
  v65 = swift_allocObject();
  sub_1E5FAB460(v59, v65 + v62, &qword_1ED073858, &unk_1E65F84A0);
  *(v65 + v63) = v102;
  (*(v60 + 32))(v65 + v64, v121, v61);
  sub_1E5DFD1CC(v58, v59, &qword_1ED073858, &unk_1E65F84A0);
  v66 = swift_allocObject();
  sub_1E5FAB460(v59, v66 + v62, &qword_1ED073858, &unk_1E65F84A0);
  type metadata accessor for AppFeature();
  sub_1E61F2AA4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v121 = sub_1E61F2AA4(&qword_1EE2D6838, MEMORY[0x1E699CD48]);
  sub_1E65E4DE8();
  v67 = v104;
  sub_1E61EFA38(v100, v104, v99);
  v68 = v117;
  v69 = *v117;
  v70 = v117[3];
  v114 = v117[5];
  v115 = v117[7];
  v120 = v117[9];
  v71 = v108;
  v72 = v109;
  v73 = v107;
  (*(v108 + 16))(v109, v122, v107);
  v74 = (v95 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + *(v71 + 80) + 80) & ~*(v71 + 80);
  v76 = swift_allocObject();
  sub_1E5E1E320(v67, v76 + v97, v98);
  v77 = (v76 + v74);
  v78 = v68[3];
  v77[2] = v68[2];
  v77[3] = v78;
  v77[4] = v68[4];
  v79 = v68[1];
  *v77 = *v68;
  v77[1] = v79;
  (*(v71 + 32))(v76 + v75, v72, v73);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v80 = swift_allocObject();
  *(v80 + 16) = sub_1E604C228;
  *(v80 + 24) = v76;

  v82 = v123;
  v81 = v124;
  v83 = v125;
  v84 = sub_1E65E4F08();

  (*(v118 + 8))(v83, v119);
  (*(v116 + 8))(v82, v81);
  (*(v71 + 8))(v122, v73);
  sub_1E5DFE50C(v126, &qword_1ED073858, &unk_1E65F84A0);
  return v84;
}

uint64_t sub_1E61EFA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61EFAA0()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for ContextMenu(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E61EEDA0((v0 + v2), v0 + v5, v0 + v8, v0 + v9, (v0 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E61EFC0C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v74 = a4;
  v72 = a3;
  v5 = sub_1E65D76F8();
  v69 = *(v5 - 8);
  v70 = v5;
  v71 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v56 - v9;
  v10 = type metadata accessor for AppComposer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v56 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v75 = *(v80 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v56 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v62 = *(v18 - 8);
  v78 = *(v62 + 64);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v58 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v56 - v21;
  sub_1E64D6F0C(&v56 - v21);
  v73 = *a1;
  sub_1E61EFA38(a1, &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v22 = *(v11 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = v22 | 7;
  v57 = swift_allocObject();
  sub_1E5E1E320(&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v57 + v23, type metadata accessor for AppComposer);
  sub_1E61EFA38(a1, &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v56 = swift_allocObject();
  sub_1E5E1E320(&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v56 + v23, type metadata accessor for AppComposer);
  v61 = a1;
  v60 = type metadata accessor for AppComposer;
  sub_1E61EFA38(a1, &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v63 = v23 + v12;
  v65 = v24;
  v25 = swift_allocObject();
  v66 = type metadata accessor for AppComposer;
  v67 = v23;
  sub_1E5E1E320(&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23, type metadata accessor for AppComposer);
  v26 = swift_allocObject();
  *(v26 + 16) = &unk_1E65F7190;
  *(v26 + 24) = v25;
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E61EFA38(a1, v59, type metadata accessor for AppComposer);
  v27 = swift_allocObject();
  sub_1E5E1E320(&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v23, type metadata accessor for AppComposer);
  sub_1E604BABC();
  sub_1E65DED58();
  sub_1E65DEAC8();
  v28 = v58;
  sub_1E5DFD1CC(v82, v58, &qword_1ED072AA8, &unk_1E65FA900);
  v29 = v68;
  v30 = v69;
  v31 = v70;
  (*(v69 + 16))(v68, v72, v70);
  v72 = *(v62 + 80);
  v32 = (v72 + 16) & ~v72;
  v33 = (v32 + v78 + *(v30 + 80)) & ~*(v30 + 80);
  v34 = v33 + v71;
  v35 = swift_allocObject();
  sub_1E5FAB460(v28, v35 + v32, &qword_1ED072AA8, &unk_1E65FA900);
  (*(v30 + 32))(v35 + v33, v29, v31);
  *(v35 + v34) = 0;
  v36 = v82;
  v37 = v28;
  sub_1E5DFD1CC(v82, v28, &qword_1ED072AA8, &unk_1E65FA900);
  v38 = swift_allocObject();
  sub_1E5FAB460(v28, v38 + v32, &qword_1ED072AA8, &unk_1E65FA900);
  type metadata accessor for AppFeature();
  sub_1E61F2AA4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v71 = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170);
  sub_1E65E4DE8();
  v39 = v59;
  sub_1E61EFA38(v61, v59, v60);
  v40 = v74;
  v41 = *v74;
  v42 = v74[3];
  v43 = v74[7];
  v68 = v74[5];
  v69 = v43;
  v70 = v74[9];
  sub_1E5DFD1CC(v36, v37, &qword_1ED072AA8, &unk_1E65FA900);
  v44 = (v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + v72 + 80) & ~v72;
  v46 = swift_allocObject();
  sub_1E5E1E320(v39, v46 + v67, v66);
  v47 = (v46 + v44);
  v48 = v40[3];
  v47[2] = v40[2];
  v47[3] = v48;
  v47[4] = v40[4];
  v49 = v40[1];
  *v47 = *v40;
  v47[1] = v49;
  sub_1E5FAB460(v37, v46 + v45, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1E604BC48;
  *(v50 + 24) = v46;

  v52 = v79;
  v51 = v80;
  v53 = v81;
  v54 = sub_1E65E4F08();

  (*(v76 + 8))(v53, v77);
  (*(v75 + 8))(v52, v51);
  sub_1E5DFE50C(v82, &qword_1ED072AA8, &unk_1E65FA900);
  return v54;
}

uint64_t sub_1E61F055C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_1E64D6B28(&v12 - v8);
  v10 = sub_1E6200DD8(v9, a3, a4);
  sub_1E5DFE50C(v9, &unk_1ED0776E0, &qword_1E65EDC00);
  return v10;
}

uint64_t objectdestroy_18Tm()
{
  v203 = type metadata accessor for AppComposer();
  v201 = *(*(v203 - 1) + 80);
  v1 = (v201 + 16) & ~v201;
  v2 = v1 + *(*(v203 - 1) + 64);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v200 = *(*(v197 - 8) + 80);
  v195 = (v2 + v200) & ~v200;
  v3 = *(*(v197 - 8) + 64);
  v196 = type metadata accessor for ContextMenu(0);
  v199 = *(*(v196 - 8) + 80);
  v198 = *(*(v196 - 8) + 64);
  v202 = v0;
  v192 = v0 + v1;
  v4 = *(v0 + v1);

  v5 = (v0 + v1 + v203[5]);
  v6 = *v5;
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment();
  v8 = v7[6];
  v194 = type metadata accessor for AccountService();
  v193 = *(v194[-1].Description + 1);
  v193(v5 + v8, v194);
  v9 = v7[7];
  v191 = type metadata accessor for AppStateService();
  v190 = *(v191[-1].Description + 1);
  v190(v5 + v9, v191);
  v10 = v7[8];
  v189 = type metadata accessor for ArchivedSessionService();
  v188 = *(v189[-1].Description + 1);
  v188(v5 + v10, v189);
  v11 = v7[9];
  v187 = type metadata accessor for AssetService();
  v186 = *(v187[-1].Description + 1);
  v186(v5 + v11, v187);
  v12 = v7[10];
  v185 = type metadata accessor for AwardsService();
  v184 = *(v185[-1].Description + 1);
  v184(v5 + v12, v185);
  v13 = v7[11];
  v183 = type metadata accessor for BookmarkService();
  v182 = *(v183[-1].Description + 1);
  v182(v5 + v13, v183);
  v14 = v7[12];
  v181 = type metadata accessor for CatalogService();
  v180 = *(v181[-1].Description + 1);
  v180(v5 + v14, v181);
  v15 = v7[13];
  v179 = type metadata accessor for ConfigurationService();
  v178 = *(v179[-1].Description + 1);
  v178(v5 + v15, v179);
  v16 = v7[14];
  v177 = type metadata accessor for ContentAvailabilityService();
  v176 = *(v177[-1].Description + 1);
  v176(v5 + v16, v177);
  v17 = v7[15];
  v175 = type metadata accessor for EngagementService();
  v174 = *(v175[-1].Description + 1);
  v174(v5 + v17, v175);
  v18 = v7[16];
  v173 = type metadata accessor for HealthDataService();
  v172 = *(v173[-1].Description + 1);
  v172(v5 + v18, v173);
  v19 = v7[17];
  v171 = type metadata accessor for InteropService();
  v170 = *(v171[-1].Description + 1);
  v170(v5 + v19, v171);
  v20 = v7[18];
  v169 = type metadata accessor for LocalizationService();
  v168 = *(v169[-1].Description + 1);
  v168(v5 + v20, v169);
  v21 = v7[19];
  v167 = type metadata accessor for MarketingService();
  v166 = *(v167[-1].Description + 1);
  v166(v5 + v21, v167);
  v22 = v7[20];
  v165 = type metadata accessor for MetricService();
  v164 = *(v165[-1].Description + 1);
  v164(v5 + v22, v165);
  v23 = v7[21];
  v163 = type metadata accessor for PersonalizationService();
  v162 = *(v163[-1].Description + 1);
  v162(v5 + v23, v163);
  v24 = v7[22];
  v161 = type metadata accessor for PlayerService();
  v160 = *(v161[-1].Description + 1);
  v160(v5 + v24, v161);
  v25 = v7[23];
  v159 = type metadata accessor for PrivacyPreferenceService();
  v158 = *(v159[-1].Description + 1);
  v158(v5 + v25, v159);
  v26 = v7[24];
  v157 = type metadata accessor for RecommendationService();
  v156 = *(v157[-1].Description + 1);
  v156(v5 + v26, v157);
  v27 = v7[25];
  v155 = type metadata accessor for RemoteBrowsingService();
  v154 = *(v155[-1].Description + 1);
  v154(v5 + v27, v155);
  v28 = v7[26];
  v153 = type metadata accessor for SearchService();
  v152 = *(v153[-1].Description + 1);
  v152(v5 + v28, v153);
  v29 = v7[27];
  v151 = type metadata accessor for ServiceSubscriptionService();
  v150 = *(v151[-1].Description + 1);
  v150(v5 + v29, v151);
  v30 = v7[28];
  v144 = type metadata accessor for SessionService();
  v149 = *(v144[-1].Description + 1);
  v149(v5 + v30, v144);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v148 = *(v32[-1].Description + 1);
  v148(v5 + v31, v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v147 = *(v34[-1].Description + 1);
  v147(v5 + v33, v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v146 = *(v36[-1].Description + 1);
  v146(v5 + v35, v36);
  v37 = (v5 + v7[32]);
  v38 = v37[1];

  v39 = v37[3];

  v40 = v37[5];

  v41 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v145 = *(QueueService[-1].Description + 1);
  v145(v5 + v41, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v7[34]));
  v43 = *(v5 + v7[35]);

  v44 = v7[36];
  v45 = type metadata accessor for WorkoutPlanService();
  v143 = *(v45[-1].Description + 1);
  v143(v5 + v44, v45);
  v46 = *(v192 + v203[6]);

  v47 = (v192 + v203[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = (v47 + *(type metadata accessor for AppDataItemResolver() + 24));
  v51 = *v50;
  swift_unknownObjectRelease();
  v193(v50 + v7[6], v194);
  v190(v50 + v7[7], v191);
  v188(v50 + v7[8], v189);
  v186(v50 + v7[9], v187);
  v184(v50 + v7[10], v185);
  v182(v50 + v7[11], v183);
  v180(v50 + v7[12], v181);
  v178(v50 + v7[13], v179);
  v176(v50 + v7[14], v177);
  v174(v50 + v7[15], v175);
  v172(v50 + v7[16], v173);
  v170(v50 + v7[17], v171);
  v168(v50 + v7[18], v169);
  v166(v50 + v7[19], v167);
  v164(v50 + v7[20], v165);
  v162(v50 + v7[21], v163);
  v160(v50 + v7[22], v161);
  v158(v50 + v7[23], v159);
  v156(v50 + v7[24], v157);
  v154(v50 + v7[25], v155);
  v152(v50 + v7[26], v153);
  v150(v50 + v7[27], v151);
  v149(v50 + v7[28], v144);
  v148(v50 + v7[29], v32);
  v147(v50 + v7[30], v34);
  v146(v50 + v7[31], v36);
  v52 = (v50 + v7[32]);
  v53 = v52[1];

  v54 = v52[3];

  v55 = v52[5];

  v145(v50 + v7[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v50 + v7[34]));
  v56 = *(v50 + v7[35]);

  v143(v50 + v7[36], v45);
  v57 = *(v192 + v203[8]);
  swift_unknownObjectRelease();
  if (*(v192 + v203[9] + 8) >= 0xCuLL)
  {
  }

  v58 = (v192 + v203[10]);
  if (v58[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v59 = (v195 + v3 + v199) & ~v199;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = *(v202 + v195 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v62 = v202 + v195 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v63 = swift_getEnumCaseMultiPayload();
    switch(v63)
    {
      case 2:
        v68 = *(v62 + 8);

        v69 = *(v62 + 32);

        break;
      case 1:
        v65 = sub_1E65DE788();
        (*(*(v65 - 8) + 8))(v62, v65);
        v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v67 = sub_1E65D76A8();
        (*(*(v67 - 8) + 8))(v62 + v66, v67);
        break;
      case 0:
        v64 = sub_1E65DE788();
        (*(*(v64 - 8) + 8))(v62, v64);
        break;
    }

    State = type metadata accessor for WorkoutContextMenuLoadState();
    v71 = v62 + State[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v72 = swift_getEnumCaseMultiPayload();
    if (v72 == 2)
    {
      v75 = *(v71 + 8);

      v76 = *(v71 + 32);
    }

    else if (v72 == 1)
    {
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v74 = sub_1E65D76A8();
      (*(*(v74 - 8) + 8))(v71 + v73, v74);
    }

    v77 = v62 + State[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v78 = swift_getEnumCaseMultiPayload();
    if (v78 == 2)
    {
      v81 = *(v77 + 8);

      v82 = *(v77 + 32);
    }

    else if (v78 == 1)
    {
      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v80 = sub_1E65D76A8();
      (*(*(v80 - 8) + 8))(v77 + v79, v80);
    }

    v83 = v62 + State[7];
    v84 = swift_getEnumCaseMultiPayload();
    if (v84 == 2)
    {
      v87 = *(v83 + 8);

      v88 = *(v83 + 32);
    }

    else if (v84 == 1)
    {
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v86 = sub_1E65D76A8();
      (*(*(v86 - 8) + 8))(v83 + v85, v86);
    }

    v89 = v62 + State[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v90 = swift_getEnumCaseMultiPayload();
    switch(v90)
    {
      case 2:
        v95 = *(v89 + 8);

        v96 = *(v89 + 32);

        break;
      case 1:
        v92 = sub_1E65DE508();
        (*(*(v92 - 8) + 8))(v89, v92);
        v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v94 = sub_1E65D76A8();
        (*(*(v94 - 8) + 8))(v89 + v93, v94);
        break;
      case 0:
        v91 = sub_1E65DE508();
        (*(*(v91 - 8) + 8))(v89, v91);
        break;
    }
  }

  v97 = sub_1E65D76F8();
  (*(*(v97 - 8) + 8))(v202 + v59, v97);
  v98 = v202 + v59 + *(v196 + 20);
  v99 = swift_getEnumCaseMultiPayload();
  v100 = *(v98 + 8);

  if (v99 == 1)
  {
    v101 = v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v102 = swift_getEnumCaseMultiPayload();
    switch(v102)
    {
      case 2:
        v107 = *(v101 + 8);

        v108 = *(v101 + 32);

        break;
      case 1:
        v104 = sub_1E65DE788();
        (*(*(v104 - 8) + 8))(v101, v104);
        v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v106 = sub_1E65D76A8();
        (*(*(v106 - 8) + 8))(v101 + v105, v106);
        break;
      case 0:
        v103 = sub_1E65DE788();
        (*(*(v103 - 8) + 8))(v101, v103);
        break;
    }

    v109 = type metadata accessor for WorkoutContextMenuLoadState();
    v110 = v101 + v109[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v111 = swift_getEnumCaseMultiPayload();
    if (v111 == 2)
    {
      v114 = *(v110 + 8);

      v115 = *(v110 + 32);
    }

    else if (v111 == 1)
    {
      v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v113 = sub_1E65D76A8();
      (*(*(v113 - 8) + 8))(v110 + v112, v113);
    }

    v116 = v101 + v109[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v117 = swift_getEnumCaseMultiPayload();
    if (v117 == 2)
    {
      v120 = *(v116 + 8);

      v121 = *(v116 + 32);
    }

    else if (v117 == 1)
    {
      v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v119 = sub_1E65D76A8();
      (*(*(v119 - 8) + 8))(v116 + v118, v119);
    }

    v122 = v101 + v109[7];
    v123 = swift_getEnumCaseMultiPayload();
    if (v123 == 2)
    {
      v126 = *(v122 + 8);

      v127 = *(v122 + 32);
    }

    else if (v123 == 1)
    {
      v124 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v125 = sub_1E65D76A8();
      (*(*(v125 - 8) + 8))(v122 + v124, v125);
    }

    v128 = v101 + v109[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v129 = swift_getEnumCaseMultiPayload();
    switch(v129)
    {
      case 2:
        v134 = *(v128 + 8);

        v135 = *(v128 + 32);

        break;
      case 1:
        v131 = sub_1E65DE508();
        (*(*(v131 - 8) + 8))(v128, v131);
        v132 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v133 = sub_1E65D76A8();
        (*(*(v133 - 8) + 8))(v128 + v132, v133);
        break;
      case 0:
        v130 = sub_1E65DE508();
        (*(*(v130 - 8) + 8))(v128, v130);
        break;
    }
  }

  v136 = (v202 + ((v198 + v59 + 7) & 0xFFFFFFFFFFFFFFF8));
  v137 = *v136;
  swift_unknownObjectRelease();
  v138 = v136[3];

  v139 = v136[5];

  v140 = v136[7];

  v141 = v136[9];

  return swift_deallocObject();
}

uint64_t sub_1E61F1D04(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6000B94(a1, v1 + v5);
}

uint64_t sub_1E61F1DDC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E5DFA78C;

  return sub_1E6000E50(a1, a2, a3);
}

uint64_t sub_1E61F1ECC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6000F00(a1, v1 + v5);
}

uint64_t sub_1E61F1FAC(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62D4088(a1, a2, v2 + v7);
}

uint64_t sub_1E61F208C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E62D47FC(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E61F2180(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E62D4FD0(a1, a2, a3, a4, v5 + 16, a5);
}

uint64_t sub_1E61F2248(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v12 = *(type metadata accessor for AppComposer() - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = v13 + *(v12 + 64);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8);
  v16 = (v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_task_alloc();
  *(v6 + 16) = v18;
  *v18 = v6;
  v18[1] = sub_1E5DFE6BC;

  return sub_1E62D53D0(a1, a2, a3, a4, v5 + v13, v5 + v16, v5 + v17, a5);
}

unint64_t sub_1E61F2440()
{
  result = qword_1EE2D4CC8;
  if (!qword_1EE2D4CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076938, &qword_1E65F7220);
    sub_1E5FED46C(&qword_1EE2D4B38, &qword_1ED076940, &qword_1E65F7228);
    sub_1E5FED46C(&qword_1EE2D4B30, &qword_1ED076918, &qword_1E65F71F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CC8);
  }

  return result;
}

uint64_t sub_1E61F259C()
{
  v0 = *(type metadata accessor for AppComposer() - 8);
  v1 = ((*(v0 + 80) + 16) & ~*(v0 + 80)) + *(v0 + 64);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020) - 8);
  v3 = (*(v2 + 64) + ((v1 + *(v2 + 80)) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E61ECEF8();
}

unint64_t sub_1E61F26B4()
{
  result = qword_1EE2D4B58;
  if (!qword_1EE2D4B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073900, &qword_1E65EDC98);
    sub_1E5FED46C(&qword_1EE2D4B48, &qword_1ED073918, &unk_1E65F7260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4B58);
  }

  return result;
}

uint64_t sub_1E61F27C4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(unint64_t, unint64_t, unint64_t, uint64_t))
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a3(0) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v4 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a4(v4 + v9, v4 + v12, v4 + v15, v16);
}

uint64_t sub_1E61F2AA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_101Tm()
{
  v140 = type metadata accessor for AppComposer();
  v138 = *(*(v140 - 1) + 80);
  v1 = (v138 + 16) & ~v138;
  v2 = v1 + *(*(v140 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v137 = *(*(v3 - 8) + 80);
  v134 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v135 = *(v4 - 8);
  v136 = v4;
  v133 = *(v135 + 80);
  v132 = *(v135 + 64);
  v139 = v0;
  v129 = v0 + v1;
  v5 = *(v0 + v1);

  v6 = (v0 + v1 + v140[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v131 = type metadata accessor for AccountService();
  v130 = *(v131[-1].Description + 1);
  v130(v6 + v9, v131);
  v10 = v8[7];
  v128 = type metadata accessor for AppStateService();
  v127 = *(v128[-1].Description + 1);
  v127(v6 + v10, v128);
  v11 = v8[8];
  v126 = type metadata accessor for ArchivedSessionService();
  v125 = *(v126[-1].Description + 1);
  v125(v6 + v11, v126);
  v12 = v8[9];
  v124 = type metadata accessor for AssetService();
  v123 = *(v124[-1].Description + 1);
  v123(v6 + v12, v124);
  v13 = v8[10];
  v122 = type metadata accessor for AwardsService();
  v121 = *(v122[-1].Description + 1);
  v121(v6 + v13, v122);
  v14 = v8[11];
  v120 = type metadata accessor for BookmarkService();
  v119 = *(v120[-1].Description + 1);
  v119(v6 + v14, v120);
  v15 = v8[12];
  v118 = type metadata accessor for CatalogService();
  v117 = *(v118[-1].Description + 1);
  v117(v6 + v15, v118);
  v16 = v8[13];
  v116 = type metadata accessor for ConfigurationService();
  v115 = *(v116[-1].Description + 1);
  v115(v6 + v16, v116);
  v17 = v8[14];
  v114 = type metadata accessor for ContentAvailabilityService();
  v113 = *(v114[-1].Description + 1);
  v113(v6 + v17, v114);
  v18 = v8[15];
  v112 = type metadata accessor for EngagementService();
  v111 = *(v112[-1].Description + 1);
  v111(v6 + v18, v112);
  v19 = v8[16];
  v110 = type metadata accessor for HealthDataService();
  v109 = *(v110[-1].Description + 1);
  v109(v6 + v19, v110);
  v20 = v8[17];
  v108 = type metadata accessor for InteropService();
  v107 = *(v108[-1].Description + 1);
  v107(v6 + v20, v108);
  v21 = v8[18];
  v106 = type metadata accessor for LocalizationService();
  v105 = *(v106[-1].Description + 1);
  v105(v6 + v21, v106);
  v22 = v8[19];
  v104 = type metadata accessor for MarketingService();
  v103 = *(v104[-1].Description + 1);
  v103(v6 + v22, v104);
  v23 = v8[20];
  v102 = type metadata accessor for MetricService();
  v101 = *(v102[-1].Description + 1);
  v101(v6 + v23, v102);
  v24 = v8[21];
  v100 = type metadata accessor for PersonalizationService();
  v99 = *(v100[-1].Description + 1);
  v99(v6 + v24, v100);
  v25 = v8[22];
  v98 = type metadata accessor for PlayerService();
  v97 = *(v98[-1].Description + 1);
  v97(v6 + v25, v98);
  v26 = v8[23];
  v96 = type metadata accessor for PrivacyPreferenceService();
  v95 = *(v96[-1].Description + 1);
  v95(v6 + v26, v96);
  v27 = v8[24];
  v94 = type metadata accessor for RecommendationService();
  v93 = *(v94[-1].Description + 1);
  v93(v6 + v27, v94);
  v28 = v8[25];
  v92 = type metadata accessor for RemoteBrowsingService();
  v91 = *(v92[-1].Description + 1);
  v91(v6 + v28, v92);
  v29 = v8[26];
  v90 = type metadata accessor for SearchService();
  v89 = *(v90[-1].Description + 1);
  v89(v6 + v29, v90);
  v30 = v8[27];
  v88 = type metadata accessor for ServiceSubscriptionService();
  v87 = *(v88[-1].Description + 1);
  v87(v6 + v30, v88);
  v31 = v8[28];
  v81 = type metadata accessor for SessionService();
  v86 = *(v81[-1].Description + 1);
  v86(v6 + v31, v81);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v85 = *(v33[-1].Description + 1);
  v85(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v84 = *(v35[-1].Description + 1);
  v84(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v83 = *(v37[-1].Description + 1);
  v83(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v82 = *(QueueService[-1].Description + 1);
  v82(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v80 = *(v46[-1].Description + 1);
  v80(v6 + v45, v46);
  v47 = *(v129 + v140[6]);

  v48 = (v129 + v140[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = (v48 + *(type metadata accessor for AppDataItemResolver() + 24));
  v52 = *v51;
  swift_unknownObjectRelease();
  v130(v51 + v8[6], v131);
  v127(v51 + v8[7], v128);
  v125(v51 + v8[8], v126);
  v123(v51 + v8[9], v124);
  v121(v51 + v8[10], v122);
  v119(v51 + v8[11], v120);
  v117(v51 + v8[12], v118);
  v115(v51 + v8[13], v116);
  v113(v51 + v8[14], v114);
  v111(v51 + v8[15], v112);
  v109(v51 + v8[16], v110);
  v107(v51 + v8[17], v108);
  v105(v51 + v8[18], v106);
  v103(v51 + v8[19], v104);
  v101(v51 + v8[20], v102);
  v99(v51 + v8[21], v100);
  v97(v51 + v8[22], v98);
  v95(v51 + v8[23], v96);
  v93(v51 + v8[24], v94);
  v91(v51 + v8[25], v92);
  v89(v51 + v8[26], v90);
  v87(v51 + v8[27], v88);
  v86(v51 + v8[28], v81);
  v85(v51 + v8[29], v33);
  v84(v51 + v8[30], v35);
  v83(v51 + v8[31], v37);
  v53 = (v51 + v8[32]);
  v54 = v53[1];

  v55 = v53[3];

  v56 = v53[5];

  v82(v51 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v51 + v8[34]));
  v57 = *(v51 + v8[35]);

  v80(v51 + v8[36], v46);
  v58 = *(v129 + v140[8]);
  swift_unknownObjectRelease();
  if (*(v129 + v140[9] + 8) >= 0xCuLL)
  {
  }

  v59 = (v2 + v137) & ~v137;
  v60 = (v129 + v140[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = v139 + v59;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v61, *(v61 + 8), *(v61 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v63 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v64 = swift_getEnumCaseMultiPayload();
    if (v64 == 2)
    {
      v67 = *(v63 + 8);

      v68 = *(v63 + 32);
    }

    else if (v64 == 1)
    {
      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v66 = sub_1E65D76A8();
      (*(*(v66 - 8) + 8))(v63 + v65, v66);
    }
  }

  v69 = (v59 + v134 + v133) & ~v133;
  v70 = (v132 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 87) & 0xFFFFFFFFFFFFFFF8;
  (*(v135 + 8))(v139 + v69, v136);
  v72 = (v139 + v70);
  v73 = *v72;
  swift_unknownObjectRelease();
  v74 = v72[3];

  v75 = v72[5];

  v76 = v72[7];

  v77 = v72[9];

  v78 = *(v139 + v71 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E61F39E4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a3(v5);
}

uint64_t sub_1E61F3A64(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1E61F3AFC(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1 | ((HIDWORD(a1) & 1) << 32);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(v5, v7);
}

uint64_t objectdestroy_131Tm()
{
  v142 = type metadata accessor for AppComposer();
  v140 = *(*(v142 - 1) + 80);
  v1 = (v140 + 16) & ~v140;
  v2 = v1 + *(*(v142 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v139 = *(*(v3 - 8) + 80);
  v137 = v2 + v139;
  v138 = *(*(v3 - 8) + 64);
  v141 = v0;
  v134 = v0 + v1;
  v4 = *(v0 + v1);

  v5 = (v0 + v1 + v142[5]);
  v6 = *v5;
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment();
  v8 = v7[6];
  v136 = type metadata accessor for AccountService();
  v135 = *(v136[-1].Description + 1);
  v135(&v5[v8], v136);
  v9 = v7[7];
  v133 = type metadata accessor for AppStateService();
  v132 = *(v133[-1].Description + 1);
  v132(&v5[v9], v133);
  v10 = v7[8];
  v131 = type metadata accessor for ArchivedSessionService();
  v130 = *(v131[-1].Description + 1);
  v130(&v5[v10], v131);
  v11 = v7[9];
  v129 = type metadata accessor for AssetService();
  v128 = *(v129[-1].Description + 1);
  v128(&v5[v11], v129);
  v12 = v7[10];
  v127 = type metadata accessor for AwardsService();
  v126 = *(v127[-1].Description + 1);
  v126(&v5[v12], v127);
  v13 = v7[11];
  v125 = type metadata accessor for BookmarkService();
  v124 = *(v125[-1].Description + 1);
  v124(&v5[v13], v125);
  v14 = v7[12];
  v123 = type metadata accessor for CatalogService();
  v122 = *(v123[-1].Description + 1);
  v122(&v5[v14], v123);
  v15 = v7[13];
  v121 = type metadata accessor for ConfigurationService();
  v120 = *(v121[-1].Description + 1);
  v120(&v5[v15], v121);
  v16 = v7[14];
  v119 = type metadata accessor for ContentAvailabilityService();
  v118 = *(v119[-1].Description + 1);
  v118(&v5[v16], v119);
  v17 = v7[15];
  v117 = type metadata accessor for EngagementService();
  v116 = *(v117[-1].Description + 1);
  v116(&v5[v17], v117);
  v18 = v7[16];
  v115 = type metadata accessor for HealthDataService();
  v114 = *(v115[-1].Description + 1);
  v114(&v5[v18], v115);
  v19 = v7[17];
  v113 = type metadata accessor for InteropService();
  v112 = *(v113[-1].Description + 1);
  v112(&v5[v19], v113);
  v20 = v7[18];
  v111 = type metadata accessor for LocalizationService();
  v110 = *(v111[-1].Description + 1);
  v110(&v5[v20], v111);
  v21 = v7[19];
  v109 = type metadata accessor for MarketingService();
  v108 = *(v109[-1].Description + 1);
  v108(&v5[v21], v109);
  v22 = v7[20];
  v107 = type metadata accessor for MetricService();
  v106 = *(v107[-1].Description + 1);
  v106(&v5[v22], v107);
  v23 = v7[21];
  v105 = type metadata accessor for PersonalizationService();
  v104 = *(v105[-1].Description + 1);
  v104(&v5[v23], v105);
  v24 = v7[22];
  v103 = type metadata accessor for PlayerService();
  v102 = *(v103[-1].Description + 1);
  v102(&v5[v24], v103);
  v25 = v7[23];
  v101 = type metadata accessor for PrivacyPreferenceService();
  v100 = *(v101[-1].Description + 1);
  v100(&v5[v25], v101);
  v26 = v7[24];
  v99 = type metadata accessor for RecommendationService();
  v98 = *(v99[-1].Description + 1);
  v98(&v5[v26], v99);
  v27 = v7[25];
  v97 = type metadata accessor for RemoteBrowsingService();
  v96 = *(v97[-1].Description + 1);
  v96(&v5[v27], v97);
  v28 = v7[26];
  v95 = type metadata accessor for SearchService();
  v94 = *(v95[-1].Description + 1);
  v94(&v5[v28], v95);
  v29 = v7[27];
  v93 = type metadata accessor for ServiceSubscriptionService();
  v92 = *(v93[-1].Description + 1);
  v92(&v5[v29], v93);
  v30 = v7[28];
  v86 = type metadata accessor for SessionService();
  v91 = *(v86[-1].Description + 1);
  v91(&v5[v30], v86);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v90 = *(v32[-1].Description + 1);
  v90(&v5[v31], v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v89 = *(v34[-1].Description + 1);
  v89(&v5[v33], v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v88 = *(v36[-1].Description + 1);
  v88(&v5[v35], v36);
  v37 = &v5[v7[32]];
  v38 = *(v37 + 1);

  v39 = *(v37 + 3);

  v40 = *(v37 + 5);

  v41 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v87 = *(QueueService[-1].Description + 1);
  v87(&v5[v41], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v5[v7[34]]);
  v43 = *&v5[v7[35]];

  v44 = v7[36];
  v45 = type metadata accessor for WorkoutPlanService();
  v85 = *(v45[-1].Description + 1);
  v85(&v5[v44], v45);
  v46 = *(v134 + v142[6]);

  v47 = (v134 + v142[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = v47 + *(type metadata accessor for AppDataItemResolver() + 24);
  v51 = *v50;
  swift_unknownObjectRelease();
  v135(&v50[v7[6]], v136);
  v132(&v50[v7[7]], v133);
  v130(&v50[v7[8]], v131);
  v128(&v50[v7[9]], v129);
  v126(&v50[v7[10]], v127);
  v124(&v50[v7[11]], v125);
  v122(&v50[v7[12]], v123);
  v120(&v50[v7[13]], v121);
  v118(&v50[v7[14]], v119);
  v116(&v50[v7[15]], v117);
  v114(&v50[v7[16]], v115);
  v112(&v50[v7[17]], v113);
  v110(&v50[v7[18]], v111);
  v108(&v50[v7[19]], v109);
  v106(&v50[v7[20]], v107);
  v104(&v50[v7[21]], v105);
  v102(&v50[v7[22]], v103);
  v100(&v50[v7[23]], v101);
  v98(&v50[v7[24]], v99);
  v96(&v50[v7[25]], v97);
  v94(&v50[v7[26]], v95);
  v92(&v50[v7[27]], v93);
  v91(&v50[v7[28]], v86);
  v90(&v50[v7[29]], v32);
  v89(&v50[v7[30]], v34);
  v88(&v50[v7[31]], v36);
  v52 = &v50[v7[32]];
  v53 = *(v52 + 1);

  v54 = *(v52 + 3);

  v55 = *(v52 + 5);

  v87(&v50[v7[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v50[v7[34]]);
  v56 = *&v50[v7[35]];

  v85(&v50[v7[36]], v45);
  v57 = *(v134 + v142[8]);
  swift_unknownObjectRelease();
  if (*(v134 + v142[9] + 8) >= 0xCuLL)
  {
  }

  v58 = v137 & ~v139;
  v59 = (v134 + v142[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = *(v141 + v58 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v62 = v141 + v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E10, &unk_1E65FABA0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v63 = swift_getEnumCaseMultiPayload();
    switch(v63)
    {
      case 2:
        v68 = *(v62 + 8);

        v69 = *(v62 + 32);

        break;
      case 1:
        v65 = sub_1E65DE788();
        (*(*(v65 - 8) + 8))(v62, v65);
        v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v67 = sub_1E65D76A8();
        (*(*(v67 - 8) + 8))(v62 + v66, v67);
        break;
      case 0:
        v64 = sub_1E65DE788();
        (*(*(v64 - 8) + 8))(v62, v64);
        break;
    }

    v70 = v62 + *(type metadata accessor for StackButtonLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v71 = swift_getEnumCaseMultiPayload();
    if (v71 == 2)
    {
      v74 = *(v70 + 8);

      v75 = *(v70 + 32);
    }

    else if (v71 == 1)
    {
      v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v73 = sub_1E65D76A8();
      (*(*(v73 - 8) + 8))(v70 + v72, v73);
    }
  }

  v76 = (v138 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
  v78 = *(v141 + v76);

  v79 = *(v141 + v77);
  swift_unknownObjectRelease();
  v80 = *(v141 + v77 + 24);

  v81 = *(v141 + v77 + 40);

  v82 = *(v141 + v77 + 56);

  v83 = *(v141 + v77 + 72);

  return swift_deallocObject();
}

uint64_t objectdestroy_134Tm()
{
  v114 = type metadata accessor for AppComposer();
  v1 = (*(*(v114 - 1) + 80) + 16) & ~*(*(v114 - 1) + 80);
  v118 = *(*(v114 - 1) + 64) + v1 + 7;
  v119 = v0;
  v2 = v0 + v1;
  v115 = v0 + v1;
  v3 = *(v0 + v1);

  v4 = (v2 + v114[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v117 = type metadata accessor for AccountService();
  v116 = *(v117[-1].Description + 1);
  v116(&v4[v7], v117);
  v8 = v6[7];
  v113 = type metadata accessor for AppStateService();
  v112 = *(v113[-1].Description + 1);
  v112(&v4[v8], v113);
  v9 = v6[8];
  v111 = type metadata accessor for ArchivedSessionService();
  v110 = *(v111[-1].Description + 1);
  v110(&v4[v9], v111);
  v10 = v6[9];
  v109 = type metadata accessor for AssetService();
  v108 = *(v109[-1].Description + 1);
  v108(&v4[v10], v109);
  v11 = v6[10];
  v107 = type metadata accessor for AwardsService();
  v106 = *(v107[-1].Description + 1);
  v106(&v4[v11], v107);
  v12 = v6[11];
  v105 = type metadata accessor for BookmarkService();
  v104 = *(v105[-1].Description + 1);
  v104(&v4[v12], v105);
  v13 = v6[12];
  v103 = type metadata accessor for CatalogService();
  v102 = *(v103[-1].Description + 1);
  v102(&v4[v13], v103);
  v14 = v6[13];
  v101 = type metadata accessor for ConfigurationService();
  v100 = *(v101[-1].Description + 1);
  v100(&v4[v14], v101);
  v15 = v6[14];
  v99 = type metadata accessor for ContentAvailabilityService();
  v98 = *(v99[-1].Description + 1);
  v98(&v4[v15], v99);
  v16 = v6[15];
  v97 = type metadata accessor for EngagementService();
  v96 = *(v97[-1].Description + 1);
  v96(&v4[v16], v97);
  v17 = v6[16];
  v95 = type metadata accessor for HealthDataService();
  v94 = *(v95[-1].Description + 1);
  v94(&v4[v17], v95);
  v18 = v6[17];
  v93 = type metadata accessor for InteropService();
  v92 = *(v93[-1].Description + 1);
  v92(&v4[v18], v93);
  v19 = v6[18];
  v91 = type metadata accessor for LocalizationService();
  v90 = *(v91[-1].Description + 1);
  v90(&v4[v19], v91);
  v20 = v6[19];
  v89 = type metadata accessor for MarketingService();
  v88 = *(v89[-1].Description + 1);
  v88(&v4[v20], v89);
  v21 = v6[20];
  v87 = type metadata accessor for MetricService();
  v86 = *(v87[-1].Description + 1);
  v86(&v4[v21], v87);
  v22 = v6[21];
  v85 = type metadata accessor for PersonalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v4[v22], v85);
  v23 = v6[22];
  v83 = type metadata accessor for PlayerService();
  v82 = *(v83[-1].Description + 1);
  v82(&v4[v23], v83);
  v24 = v6[23];
  v81 = type metadata accessor for PrivacyPreferenceService();
  v80 = *(v81[-1].Description + 1);
  v80(&v4[v24], v81);
  v25 = v6[24];
  v79 = type metadata accessor for RecommendationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v4[v25], v79);
  v26 = v6[25];
  v77 = type metadata accessor for RemoteBrowsingService();
  v76 = *(v77[-1].Description + 1);
  v76(&v4[v26], v77);
  v27 = v6[26];
  v75 = type metadata accessor for SearchService();
  v74 = *(v75[-1].Description + 1);
  v74(&v4[v27], v75);
  v28 = v6[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v73 = *(v68[-1].Description + 1);
  v73(&v4[v28], v68);
  v29 = v6[28];
  v66 = type metadata accessor for SessionService();
  v72 = *(v66[-1].Description + 1);
  v72(&v4[v29], v66);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v71 = *(v31[-1].Description + 1);
  v71(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v70 = *(v33[-1].Description + 1);
  v70(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v69 = *(v35[-1].Description + 1);
  v69(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v67 = *(QueueService[-1].Description + 1);
  v67(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v45 = *(v44[-1].Description + 1);
  v45(&v4[v43], v44);
  v46 = *(v115 + v114[6]);

  v47 = (v115 + v114[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = v47 + *(type metadata accessor for AppDataItemResolver() + 24);
  v51 = *v50;
  swift_unknownObjectRelease();
  v116(&v50[v6[6]], v117);
  v112(&v50[v6[7]], v113);
  v110(&v50[v6[8]], v111);
  v108(&v50[v6[9]], v109);
  v106(&v50[v6[10]], v107);
  v104(&v50[v6[11]], v105);
  v102(&v50[v6[12]], v103);
  v100(&v50[v6[13]], v101);
  v98(&v50[v6[14]], v99);
  v96(&v50[v6[15]], v97);
  v94(&v50[v6[16]], v95);
  v92(&v50[v6[17]], v93);
  v90(&v50[v6[18]], v91);
  v88(&v50[v6[19]], v89);
  v86(&v50[v6[20]], v87);
  v84(&v50[v6[21]], v85);
  v82(&v50[v6[22]], v83);
  v80(&v50[v6[23]], v81);
  v78(&v50[v6[24]], v79);
  v76(&v50[v6[25]], v77);
  v74(&v50[v6[26]], v75);
  v73(&v50[v6[27]], v68);
  v72(&v50[v6[28]], v66);
  v71(&v50[v6[29]], v31);
  v70(&v50[v6[30]], v33);
  v69(&v50[v6[31]], v35);
  v52 = &v50[v6[32]];
  v53 = *(v52 + 1);

  v54 = *(v52 + 3);

  v55 = *(v52 + 5);

  v67(&v50[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v50[v6[34]]);
  v56 = *&v50[v6[35]];

  v45(&v50[v6[36]], v44);
  v57 = *(v115 + v114[8]);
  swift_unknownObjectRelease();
  if (*(v115 + v114[9] + 8) >= 0xCuLL)
  {
  }

  v58 = v118 & 0xFFFFFFFFFFFFFFF8;
  v59 = (v115 + v114[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v60 = (v119 + v58);
  if (*(v119 + v58))
  {
    swift_unknownObjectRelease();
    v61 = v60[3];

    v62 = v60[5];

    v63 = v60[7];

    v64 = v60[9];
  }

  __swift_destroy_boxed_opaque_existential_1((v119 + ((v58 + 87) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E61F5834(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v10 = v3 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return a3(v3 + v7, v10);
}

uint64_t objectdestroy_140Tm()
{
  v146 = type metadata accessor for AppComposer();
  v144 = *(*(v146 - 1) + 80);
  v1 = (v144 + 16) & ~v144;
  v2 = v1 + *(*(v146 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v143 = *(*(v3 - 8) + 80);
  v140 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v141 = *(v4 - 8);
  v142 = v4;
  v139 = *(v141 + 80);
  v138 = *(v141 + 64);
  v145 = v0;
  v135 = v0 + v1;
  v5 = *(v0 + v1);

  v6 = (v0 + v1 + v146[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v137 = type metadata accessor for AccountService();
  v136 = *(v137[-1].Description + 1);
  v136(v6 + v9, v137);
  v10 = v8[7];
  v134 = type metadata accessor for AppStateService();
  v133 = *(v134[-1].Description + 1);
  v133(v6 + v10, v134);
  v11 = v8[8];
  v132 = type metadata accessor for ArchivedSessionService();
  v131 = *(v132[-1].Description + 1);
  v131(v6 + v11, v132);
  v12 = v8[9];
  v130 = type metadata accessor for AssetService();
  v129 = *(v130[-1].Description + 1);
  v129(v6 + v12, v130);
  v13 = v8[10];
  v128 = type metadata accessor for AwardsService();
  v127 = *(v128[-1].Description + 1);
  v127(v6 + v13, v128);
  v14 = v8[11];
  v126 = type metadata accessor for BookmarkService();
  v125 = *(v126[-1].Description + 1);
  v125(v6 + v14, v126);
  v15 = v8[12];
  v124 = type metadata accessor for CatalogService();
  v123 = *(v124[-1].Description + 1);
  v123(v6 + v15, v124);
  v16 = v8[13];
  v122 = type metadata accessor for ConfigurationService();
  v121 = *(v122[-1].Description + 1);
  v121(v6 + v16, v122);
  v17 = v8[14];
  v120 = type metadata accessor for ContentAvailabilityService();
  v119 = *(v120[-1].Description + 1);
  v119(v6 + v17, v120);
  v18 = v8[15];
  v118 = type metadata accessor for EngagementService();
  v117 = *(v118[-1].Description + 1);
  v117(v6 + v18, v118);
  v19 = v8[16];
  v116 = type metadata accessor for HealthDataService();
  v115 = *(v116[-1].Description + 1);
  v115(v6 + v19, v116);
  v20 = v8[17];
  v114 = type metadata accessor for InteropService();
  v113 = *(v114[-1].Description + 1);
  v113(v6 + v20, v114);
  v21 = v8[18];
  v112 = type metadata accessor for LocalizationService();
  v111 = *(v112[-1].Description + 1);
  v111(v6 + v21, v112);
  v22 = v8[19];
  v110 = type metadata accessor for MarketingService();
  v109 = *(v110[-1].Description + 1);
  v109(v6 + v22, v110);
  v23 = v8[20];
  v108 = type metadata accessor for MetricService();
  v107 = *(v108[-1].Description + 1);
  v107(v6 + v23, v108);
  v24 = v8[21];
  v106 = type metadata accessor for PersonalizationService();
  v105 = *(v106[-1].Description + 1);
  v105(v6 + v24, v106);
  v25 = v8[22];
  v104 = type metadata accessor for PlayerService();
  v103 = *(v104[-1].Description + 1);
  v103(v6 + v25, v104);
  v26 = v8[23];
  v102 = type metadata accessor for PrivacyPreferenceService();
  v101 = *(v102[-1].Description + 1);
  v101(v6 + v26, v102);
  v27 = v8[24];
  v100 = type metadata accessor for RecommendationService();
  v99 = *(v100[-1].Description + 1);
  v99(v6 + v27, v100);
  v28 = v8[25];
  v98 = type metadata accessor for RemoteBrowsingService();
  v97 = *(v98[-1].Description + 1);
  v97(v6 + v28, v98);
  v29 = v8[26];
  v96 = type metadata accessor for SearchService();
  v95 = *(v96[-1].Description + 1);
  v95(v6 + v29, v96);
  v30 = v8[27];
  v94 = type metadata accessor for ServiceSubscriptionService();
  v93 = *(v94[-1].Description + 1);
  v93(v6 + v30, v94);
  v31 = v8[28];
  v87 = type metadata accessor for SessionService();
  v92 = *(v87[-1].Description + 1);
  v92(v6 + v31, v87);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v91 = *(v33[-1].Description + 1);
  v91(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v90 = *(v35[-1].Description + 1);
  v90(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v89 = *(v37[-1].Description + 1);
  v89(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v88 = *(QueueService[-1].Description + 1);
  v88(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v86 = *(v46[-1].Description + 1);
  v86(v6 + v45, v46);
  v47 = *(v135 + v146[6]);

  v48 = (v135 + v146[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = (v48 + *(type metadata accessor for AppDataItemResolver() + 24));
  v52 = *v51;
  swift_unknownObjectRelease();
  v136(v51 + v8[6], v137);
  v133(v51 + v8[7], v134);
  v131(v51 + v8[8], v132);
  v129(v51 + v8[9], v130);
  v127(v51 + v8[10], v128);
  v125(v51 + v8[11], v126);
  v123(v51 + v8[12], v124);
  v121(v51 + v8[13], v122);
  v119(v51 + v8[14], v120);
  v117(v51 + v8[15], v118);
  v115(v51 + v8[16], v116);
  v113(v51 + v8[17], v114);
  v111(v51 + v8[18], v112);
  v109(v51 + v8[19], v110);
  v107(v51 + v8[20], v108);
  v105(v51 + v8[21], v106);
  v103(v51 + v8[22], v104);
  v101(v51 + v8[23], v102);
  v99(v51 + v8[24], v100);
  v97(v51 + v8[25], v98);
  v95(v51 + v8[26], v96);
  v93(v51 + v8[27], v94);
  v92(v51 + v8[28], v87);
  v91(v51 + v8[29], v33);
  v90(v51 + v8[30], v35);
  v89(v51 + v8[31], v37);
  v53 = (v51 + v8[32]);
  v54 = v53[1];

  v55 = v53[3];

  v56 = v53[5];

  v88(v51 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v51 + v8[34]));
  v57 = *(v51 + v8[35]);

  v86(v51 + v8[36], v46);
  v58 = *(v135 + v146[8]);
  swift_unknownObjectRelease();
  if (*(v135 + v146[9] + 8) >= 0xCuLL)
  {
  }

  v59 = (v2 + v143) & ~v143;
  v60 = (v135 + v146[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = *(v145 + v59 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v63 = v145 + v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v64 = swift_getEnumCaseMultiPayload();
    switch(v64)
    {
      case 2:
        v69 = *(v63 + 8);

        v70 = *(v63 + 32);

        break;
      case 1:
        v66 = sub_1E65DE788();
        (*(*(v66 - 8) + 8))(v63, v66);
        v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v68 = sub_1E65D76A8();
        (*(*(v68 - 8) + 8))(v63 + v67, v68);
        break;
      case 0:
        v65 = sub_1E65DE788();
        (*(*(v65 - 8) + 8))(v63, v65);
        break;
    }

    v71 = v63 + *(type metadata accessor for DynamicStartWorkoutButtonLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v72 = swift_getEnumCaseMultiPayload();
    if (v72 == 2)
    {
      v75 = *(v71 + 8);

      v76 = *(v71 + 32);
    }

    else if (v72 == 1)
    {
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v74 = sub_1E65D76A8();
      (*(*(v74 - 8) + 8))(v71 + v73, v74);
    }
  }

  v77 = (v59 + v140 + v139) & ~v139;
  v78 = (v138 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v141 + 8))(v145 + v77, v142);
  __swift_destroy_boxed_opaque_existential_1((v145 + v78));
  v79 = (v145 + ((v78 + 47) & 0xFFFFFFFFFFFFFFF8));
  v80 = *v79;
  swift_unknownObjectRelease();
  v81 = v79[3];

  v82 = v79[5];

  v83 = v79[7];

  v84 = v79[9];

  return swift_deallocObject();
}

unint64_t sub_1E61F6934()
{
  result = qword_1EE2D4E70;
  if (!qword_1EE2D4E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076978, &unk_1E65F7320);
    sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E70);
  }

  return result;
}

uint64_t sub_1E61F6A0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1E61E835C(v1[6], a1);
}

uint64_t sub_1E61F6A1C()
{
  v1 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *(type metadata accessor for ContextMenuViewModifier() - 8);
  v3 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return sub_1E61E850C(v3);
}

uint64_t sub_1E61F6B50(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E5C28();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (a2 <= 6u || (result = 0, a2 == 7))
  {
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    (*(v5 + 16))(v8, a1, v4);
    return sub_1E65E5D48();
  }

  return result;
}

__n128 ArtworkDescriptor.init(content:overlayTags:safeAreaInsets:prefersCompositeOverlays:recencyTag:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1E617BA04(a1, a7);
  v13 = type metadata accessor for ArtworkDescriptor();
  *(a7 + v13[5]) = a2;
  v14 = (a7 + v13[6]);
  result = *a3;
  v16 = *(a3 + 16);
  *v14 = *a3;
  v14[1] = v16;
  *(a7 + v13[7]) = a4;
  v17 = (a7 + v13[8]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t ArtworkDescriptor.overlayTags.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtworkDescriptor() + 20));
}

__n128 ArtworkDescriptor.safeAreaInsets.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArtworkDescriptor() + 24);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

uint64_t ArtworkDescriptor.recencyTag.getter()
{
  v1 = (v0 + *(type metadata accessor for ArtworkDescriptor() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1E61F7284()
{
  v1 = *v0;
  v2 = 0x746E65746E6F63;
  v3 = 0x6165724165666173;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0x5479636E65636572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5479616C7265766FLL;
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

uint64_t sub_1E61F733C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E61F82D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E61F7364(uint64_t a1)
{
  v2 = sub_1E61F7EB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61F73A0(uint64_t a1)
{
  v2 = sub_1E61F7EB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

int *static ArtworkDescriptor.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ArtworkContent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  if (sub_1E65E4B48())
  {
    v6 = 8.0;
  }

  else
  {
    v6 = 4.0;
  }

  sub_1E617BA04(v5, a1);
  result = type metadata accessor for ArtworkDescriptor();
  *(a1 + result[5]) = MEMORY[0x1E69E7CD0];
  v8 = a1 + result[6];
  *v8 = 0;
  *(v8 + 8) = v6;
  *(v8 + 16) = v6;
  *(v8 + 24) = 0x4020000000000000;
  *(a1 + result[7]) = 1;
  v9 = (a1 + result[8]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t ArtworkDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076980, &qword_1E65F7330);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E61F7EB0();
  sub_1E65E6DA8();
  LOBYTE(v19[0]) = 0;
  type metadata accessor for ArtworkContent();
  sub_1E5DF3DD0(&qword_1EE2DAAB8, type metadata accessor for ArtworkContent);
  sub_1E65E6B78();
  if (!v2)
  {
    v11 = type metadata accessor for ArtworkDescriptor();
    *&v19[0] = *(v3 + v11[5]);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076988, &qword_1E65F7338);
    sub_1E61F7FAC(&qword_1EE2D4718, sub_1E61F7F04);
    sub_1E65E6B78();
    v12 = (v3 + v11[6]);
    v13 = v12[1];
    v19[0] = *v12;
    v19[1] = v13;
    v20 = 2;
    sub_1E61F7F58();
    sub_1E65E6B78();
    v14 = *(v3 + v11[7]);
    LOBYTE(v19[0]) = 3;
    sub_1E65E6B58();
    v15 = (v3 + v11[8]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v19[0]) = 4;
    sub_1E65E6B28();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ArtworkDescriptor.hash(into:)(uint64_t a1)
{
  ArtworkContent.hash(into:)(a1);
  v3 = type metadata accessor for ArtworkDescriptor();
  sub_1E61B7778(a1, *(v1 + v3[5]));
  v4 = (v1 + v3[6]);
  v9 = *v4;
  v10 = v4[1];
  ArtworkEdgeInsets.hash(into:)();
  v5 = *(v1 + v3[7]);
  sub_1E65E6D48();
  v6 = (v1 + v3[8]);
  if (!v6[1])
  {
    return sub_1E65E6D48();
  }

  v7 = *v6;
  sub_1E65E6D48();

  return sub_1E65E5D78();
}

uint64_t ArtworkDescriptor.hashValue.getter()
{
  sub_1E65E6D28();
  ArtworkDescriptor.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t ArtworkDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for ArtworkContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076990, &qword_1E65F7340);
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ArtworkDescriptor();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v14 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1E61F7EB0();
  v16 = v9;
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v17 = v30;
  v18 = v13;
  LOBYTE(v34) = 0;
  sub_1E5DF3DD0(&qword_1ED076998, type metadata accessor for ArtworkContent);
  v20 = v31;
  v19 = v32;
  sub_1E65E6AD8();
  sub_1E617BA04(v20, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076988, &qword_1E65F7338);
  v36 = 1;
  sub_1E61F7FAC(&qword_1ED0769A0, sub_1E61F8024);
  sub_1E65E6AD8();
  *(v18 + v10[5]) = v34;
  v36 = 2;
  sub_1E61F8078();
  sub_1E65E6AD8();
  v21 = (v18 + v10[6]);
  v22 = v35;
  *v21 = v34;
  v21[1] = v22;
  LOBYTE(v34) = 3;
  *(v18 + v10[7]) = sub_1E65E6AB8() & 1;
  LOBYTE(v34) = 4;
  v23 = sub_1E65E6A88();
  v25 = v24;
  (*(v17 + 8))(v16, v19);
  v26 = (v18 + v10[8]);
  *v26 = v23;
  v26[1] = v25;
  sub_1E61F80CC(v18, v29, type metadata accessor for ArtworkDescriptor);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1E61F8134(v18, type metadata accessor for ArtworkDescriptor);
}

uint64_t sub_1E61F7D44()
{
  sub_1E65E6D28();
  ArtworkDescriptor.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E61F7D88()
{
  sub_1E65E6D28();
  ArtworkDescriptor.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard17ArtworkDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static ArtworkContent.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ArtworkDescriptor();
  if ((sub_1E63DAF94(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v4[6]), *(a2 + v4[6])), vceqq_f64(*(a1 + v4[6] + 16), *(a2 + v4[6] + 16))))) & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v6 = v4[8];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1E65E6C18() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1E61F7EB0()
{
  result = qword_1EE2D9ED0;
  if (!qword_1EE2D9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9ED0);
  }

  return result;
}

unint64_t sub_1E61F7F04()
{
  result = qword_1EE2D9DD0;
  if (!qword_1EE2D9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9DD0);
  }

  return result;
}

unint64_t sub_1E61F7F58()
{
  result = qword_1EE2D9DD8;
  if (!qword_1EE2D9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9DD8);
  }

  return result;
}

uint64_t sub_1E61F7FAC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076988, &qword_1E65F7338);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E61F8024()
{
  result = qword_1ED0769A8;
  if (!qword_1ED0769A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0769A8);
  }

  return result;
}

unint64_t sub_1E61F8078()
{
  result = qword_1ED0769B0;
  if (!qword_1ED0769B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0769B0);
  }

  return result;
}

uint64_t sub_1E61F80CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61F8134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E61F81D0()
{
  result = qword_1ED0769B8;
  if (!qword_1ED0769B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0769B8);
  }

  return result;
}

unint64_t sub_1E61F8228()
{
  result = qword_1EE2D9EC0;
  if (!qword_1EE2D9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9EC0);
  }

  return result;
}

unint64_t sub_1E61F8280()
{
  result = qword_1EE2D9EC8;
  if (!qword_1EE2D9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9EC8);
  }

  return result;
}

uint64_t sub_1E61F82D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5479616C7265766FLL && a2 == 0xEB00000000736761 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xEE00737465736E49 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E6614930 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5479636E65636572 && a2 == 0xEA00000000006761)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

uint64_t sub_1E61F84B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v67 = a4;
  v65 = a3;
  v59 = a1;
  v60 = a2;
  v63 = a5;
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v62 = &v56 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v56 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  v58 = (&v56 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v56 - v18;
  sub_1E61FAC64(v5, &v56 - v18, type metadata accessor for AppComposer);
  v20 = *(v8 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1E5E1FA80(v19, v23 + v21);
  v24 = (v23 + v22);
  v25 = v60;
  *v24 = v59;
  v24[1] = v25;
  v26 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  v27 = v67;
  *v26 = v65;
  v26[1] = v27;
  sub_1E65E5148();

  v28 = sub_1E65E5138();
  v66 = v6;
  v67 = v28;
  v29 = v6;
  v57 = type metadata accessor for AppComposer;
  sub_1E61FAC64(v6, v17, type metadata accessor for AppComposer);
  v59 = ((v20 + 32) & ~v20) + v9;
  v60 = (v20 + 32) & ~v20;
  v30 = v59 & 0xFFFFFFFFFFFFFFF8;
  v31 = ((v59 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v65 = &unk_1E65F7600;
  *(v32 + 16) = &unk_1E65F7600;
  *(v32 + 24) = v23;
  v56 = v23;
  sub_1E5E1FA80(v58, v32 + ((v20 + 32) & ~v20));
  *(v32 + ((v20 + 32) & ~v20) + v9) = 0;
  v33 = v32 + v30;
  v58 = sub_1E6172524;
  *(v33 + 8) = sub_1E6172524;
  *(v33 + 16) = 0;
  v34 = (v32 + v31);
  v35 = MEMORY[0x1E69AB380];
  v36 = v67;
  *v34 = v67;
  v34[1] = v35;
  v37 = v61;
  sub_1E61FAC64(v29, v61, type metadata accessor for AppComposer);
  v38 = (v20 + 48) & ~v20;
  v39 = v38 + v9;
  v40 = (v38 + v9) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v65;
  v41[2] = v65;
  v41[3] = v23;
  v41[4] = v36;
  v41[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v37, v41 + v38);
  *(v41 + v39) = 0;
  v43 = v41 + v40;
  v44 = v57;
  v45 = v58;
  *(v43 + 1) = v58;
  *(v43 + 2) = 0;
  v46 = v62;
  sub_1E61FAC64(v66, v62, v44);
  v47 = (v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v48[2] = v42;
  v49 = v56;
  v50 = v67;
  v48[3] = v56;
  v48[4] = v50;
  v48[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v46, v48 + v38);
  v51 = v48 + v47;
  *v51 = v45;
  *(v51 + 1) = 0;
  v51[16] = 0;
  v52 = v64;
  sub_1E61FAC64(v66, v64, v44);
  v53 = swift_allocObject();
  *(v53 + 16) = v65;
  *(v53 + 24) = v49;
  sub_1E5E1FA80(v52, v53 + v60);
  swift_retain_n();
  result = swift_retain_n();
  v55 = v63;
  *v63 = result;
  v55[1] = MEMORY[0x1E69AB380];
  v55[2] = &unk_1E65EB918;
  v55[3] = v32;
  v55[4] = &unk_1E65FA770;
  v55[5] = v41;
  v55[6] = &unk_1E65EB920;
  v55[7] = v48;
  v55[8] = &unk_1E65FA780;
  v55[9] = v53;
  return result;
}

uint64_t sub_1E61F8904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v11 = sub_1E65E31D8();
  v6[13] = v11;
  v12 = *(v11 - 8);
  v6[14] = v12;
  v13 = *(v12 + 64) + 15;
  v6[15] = swift_task_alloc();
  v14 = sub_1E65E3288();
  v6[16] = v14;
  v15 = *(v14 - 8);
  v6[17] = v15;
  v16 = *(v15 + 64) + 15;
  v6[18] = swift_task_alloc();
  v17 = sub_1E65E3258();
  v6[19] = v17;
  v18 = *(v17 - 8);
  v6[20] = v18;
  v19 = *(v18 + 64) + 15;
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61F8B64, 0, 0);
}

uint64_t sub_1E61F8B64()
{
  v1 = **(v0 + 32);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1E6215038(*(v0 + 40), *(v0 + 48)), (v4 & 1) != 0))
  {
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    (*(v10 + 16))(v8, *(v2 + 56) + *(v10 + 72) * v3, v9);

    sub_1E65E31B8();
    (*(v10 + 8))(v8, v9);
    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E699EB98])
    {
      v12 = *(v0 + 160);
      v11 = *(v0 + 168);
      v13 = *(v0 + 144);
      v14 = *(v0 + 152);
      v15 = *(v0 + 88);
      v16 = *(v0 + 96);
      v37 = *(v0 + 80);
      v38 = *(v0 + 72);
      v17 = *(v0 + 56);
      v18 = *(v0 + 64);
      v19 = *(v0 + 32);
      (*(*(v0 + 136) + 96))(v13, *(v0 + 128));
      (*(v12 + 32))(v11, v13, v14);
      sub_1E65E3218();
      v17();
      v20 = sub_1E65D8F38();
      (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
      v21 = type metadata accessor for AppComposer();
      sub_1E5FA9D34(*(v19 + *(v21 + 36)), *(v19 + *(v21 + 36) + 8));
      sub_1E65E3228();
      v22 = sub_1E65D74E8();
      (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
      sub_1E65E3248();
      v23 = sub_1E65D9908();
      (*(*(v23 - 8) + 56))(v37, 1, 1, v23);
      v24 = sub_1E65D9F88();
      (*(*(v24 - 8) + 56))(v38, 1, 1, v24);
      sub_1E65D7A28();
      (*(v12 + 8))(v11, v14);
      v25 = 0;
      goto LABEL_7;
    }

    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
  }

  v25 = 1;
LABEL_7:
  v26 = *(v0 + 168);
  v27 = *(v0 + 144);
  v28 = *(v0 + 120);
  v30 = *(v0 + 88);
  v29 = *(v0 + 96);
  v32 = *(v0 + 72);
  v31 = *(v0 + 80);
  v33 = *(v0 + 24);
  v34 = sub_1E65D7A38();
  (*(*(v34 - 8) + 56))(v33, v25, 1, v34);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1E61F8F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X3>, uint64_t a4@<X8>)
{
  v69 = a3;
  v70 = a4;
  v6 = sub_1E65E0D48();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v56 - v13;
  v14 = sub_1E65E0D58();
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E0EE8();
  v67 = *(v17 - 8);
  v68 = v17;
  v18 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65E0B48();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v25 = a1;
  v25[1] = a2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073040, &qword_1E65ECE98);
  v26 = *(v22 + 72);
  v27 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v28 = swift_allocObject();
  v62 = xmmword_1E65EA670;
  *(v28 + 16) = xmmword_1E65EA670;
  *(v28 + v27) = 6;
  swift_storeEnumTagMultiPayload();

  sub_1E5F9BA30(v28);
  swift_setDeallocating();
  v29 = MEMORY[0x1E699DD40];
  sub_1E61FACCC(v28 + v27, MEMORY[0x1E699DD40]);
  v30 = v20;
  swift_deallocClassInstance();
  (*(v64 + 104))(v63, *MEMORY[0x1E699DED0], v65);
  v31 = swift_allocObject();
  *(v31 + 16) = v62;
  sub_1E61FAC64(v25, v31 + v27, MEMORY[0x1E699DD40]);
  sub_1E5F9BA30(v31);
  swift_setDeallocating();
  sub_1E61FACCC(v31 + v27, v29);
  swift_deallocClassInstance();
  sub_1E65E0EA8();
  v32 = *v66;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v33 = v71;
  if (!*(v71 + 16) || (v34 = sub_1E6416E08(v25), (v35 & 1) == 0))
  {

LABEL_7:
    v51 = v67;
    v50 = v68;
    goto LABEL_8;
  }

  v37 = v59;
  v36 = v60;
  v38 = v61;
  (*(v59 + 16))(v61, *(v33 + 56) + *(v59 + 72) * v34, v60);

  if ((*(v37 + 88))(v38, v36) != *MEMORY[0x1E699DEA0])
  {
    (*(v37 + 8))(v38, v36);
    goto LABEL_7;
  }

  (*(v37 + 96))(v38, v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C8, &qword_1E65F75E0);
  v40 = v39[12];
  v41 = v39[16];
  v42 = v39[20];
  v43 = *(v38 + v39[24]);

  v44 = *(v38 + v39[28]);

  v45 = *(v38 + v39[32]);

  v46 = v57;
  sub_1E61FAAB8(v38, v57);
  sub_1E5DFE50C(v38 + v42, &qword_1ED0769D0, &qword_1E65F75E8);
  sub_1E5DFE50C(v38 + v41, &qword_1ED0769D8, &qword_1E65F75F0);
  v47 = sub_1E65E0D08();
  (*(*(v47 - 8) + 8))(v38 + v40, v47);
  v48 = v46;
  v49 = v58;
  sub_1E61FAAB8(v48, v58);
  v51 = v67;
  v50 = v68;
  if ((*(v67 + 48))(v49, 1, v68) == 1)
  {
    sub_1E5DFE50C(v49, &qword_1ED0769C0, &qword_1E65F75B0);
  }

  else
  {
    (*(v51 + 8))(v30, v50);
    (*(v51 + 32))(v30, v49, v50);
  }

LABEL_8:
  v52 = v70;
  sub_1E601B608();
  (*(v51 + 8))(v30, v50);
  sub_1E61FACCC(v25, MEMORY[0x1E699DD40]);
  v53 = *v69;
  v54 = sub_1E65D8F38();
  return (*(*(v54 - 8) + 104))(v52, v53, v54);
}

uint64_t sub_1E61F966C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for PageMetricsClick();
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v8 = sub_1E65E31E8();
  v5[8] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61F9748, 0, 0);
}

uint64_t sub_1E61F9748()
{
  v1 = *(v0 + 64);
  sub_1E61FAC64(*(v0 + 16), *(v0 + 72), MEMORY[0x1E699EB78]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v64 = *(v0 + 56);
      v65 = *(v0 + 24);
      v66 = *(v0 + 32);
      v67 = sub_1E65D9D78();
      (*(*(v67 - 8) + 56))(v64, 1, 1, v67);
      v68 = v66[5];
      v69 = *MEMORY[0x1E69CBA60];
      v70 = sub_1E65D8C68();
      (*(*(v70 - 8) + 104))(v64 + v68, v69, v70);
      v71 = v66[6];
      v72 = sub_1E65D74E8();
      (*(*(v72 - 8) + 56))(v64 + v71, 1, 1, v72);
      v73 = v66[8];
      v74 = sub_1E65DA208();
      (*(*(v74 - 8) + 56))(v64 + v73, 1, 1, v74);
      v75 = v66[14];
      v76 = *MEMORY[0x1E69CBCC8];
      v77 = sub_1E65D8F28();
      (*(*(v77 - 8) + 104))(v64 + v75, v76, v77);
      v78 = v66[15];
      v79 = sub_1E65D9908();
      (*(*(v79 - 8) + 56))(v64 + v78, 1, 1, v79);
      v80 = MEMORY[0x1E69E7CC0];
      v81 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v64 + v66[7]) = v80;
      v82 = (v64 + v66[9]);
      *v82 = 0;
      v82[1] = 0;
      v83 = (v64 + v66[10]);
      *v83 = 0;
      v83[1] = 0;
      *(v64 + v66[11]) = v81;
      v84 = (v64 + v66[12]);
      *v84 = 0;
      v84[1] = 0;
      v85 = (v64 + v66[13]);
      *v85 = 0;
      v85[1] = 0;
      v86 = *(v65 + 56);
      v94 = (*(v65 + 48) + **(v65 + 48));
      v87 = *(*(v65 + 48) + 4);
      v88 = swift_task_alloc();
      *(v0 + 88) = v88;
      *v88 = v0;
      v88[1] = sub_1E61FA344;
      v34 = *(v0 + 56);
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v35 = *(v0 + 48);
      v36 = *(v0 + 24);
      v37 = *(v0 + 32);
      v38 = sub_1E65D9D78();
      (*(*(v38 - 8) + 56))(v35, 1, 1, v38);
      v39 = v37[5];
      v40 = *MEMORY[0x1E69CBA18];
      v41 = sub_1E65D8C68();
      (*(*(v41 - 8) + 104))(v35 + v39, v40, v41);
      v42 = v37[6];
      v43 = sub_1E65D74E8();
      (*(*(v43 - 8) + 56))(v35 + v42, 1, 1, v43);
      v44 = v37[8];
      v45 = sub_1E65DA208();
      (*(*(v45 - 8) + 56))(v35 + v44, 1, 1, v45);
      v46 = v37[14];
      v47 = *MEMORY[0x1E69CBCC8];
      v48 = sub_1E65D8F28();
      (*(*(v48 - 8) + 104))(v35 + v46, v47, v48);
      v49 = v37[15];
      v50 = sub_1E65D9908();
      (*(*(v50 - 8) + 56))(v35 + v49, 1, 1, v50);
      v51 = MEMORY[0x1E69E7CC0];
      v52 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v35 + v37[7]) = v51;
      v53 = (v35 + v37[9]);
      *v53 = 0;
      v53[1] = 0;
      v54 = (v35 + v37[10]);
      *v54 = 0;
      v54[1] = 0;
      *(v35 + v37[11]) = v52;
      v55 = (v35 + v37[12]);
      *v55 = 0;
      v55[1] = 0;
      *(v35 + v37[13]) = xmmword_1E65F75A0;
      v56 = *(v36 + 56);
      v94 = (*(v36 + 48) + **(v36 + 48));
      v57 = *(*(v36 + 48) + 4);
      v58 = swift_task_alloc();
      *(v0 + 104) = v58;
      *v58 = v0;
      v58[1] = sub_1E61FA500;
      v34 = *(v0 + 48);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E61FACCC(*(v0 + 72), MEMORY[0x1E699EB78]);
LABEL_9:
    v59 = *(v0 + 24);
    v60 = *(v59 + 24);
    v95 = (*(v59 + 16) + **(v59 + 16));
    v61 = *(*(v59 + 16) + 4);
    v62 = swift_task_alloc();
    *(v0 + 80) = v62;
    *v62 = v0;
    v62[1] = sub_1E61FA1D0;

    return v95();
  }

  if (EnumCaseMultiPayload == 1)
  {
    v3 = *(v0 + 72);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 24);
    v7 = *v3;
    v8 = v3[1];
    *(v0 + 152) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769E0, &qword_1E65F7630) + 48);
    v9 = sub_1E65D9D78();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = v5[5];
    v11 = *MEMORY[0x1E69CBA28];
    v12 = sub_1E65D8C68();
    (*(*(v12 - 8) + 104))(v4 + v10, v11, v12);
    v13 = v5[6];
    v14 = sub_1E65D74E8();
    *(v0 + 120) = v14;
    v15 = *(v14 - 8);
    *(v0 + 128) = v15;
    (*(v15 + 56))(v4 + v13, 1, 1, v14);
    v16 = v5[8];
    v17 = sub_1E65DA208();
    (*(*(v17 - 8) + 56))(v4 + v16, 1, 1, v17);
    v18 = v5[14];
    v19 = *MEMORY[0x1E69CBCC8];
    v20 = sub_1E65D8F28();
    (*(*(v20 - 8) + 104))(v4 + v18, v19, v20);
    v21 = v5[15];
    v22 = *MEMORY[0x1E69CC420];
    v23 = sub_1E65D9908();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v4 + v21, v22, v23);
    (*(v24 + 56))(v4 + v21, 0, 1, v23);
    v25 = MEMORY[0x1E69E7CC0];
    v26 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v4 + v5[7]) = v25;
    v27 = (v4 + v5[9]);
    *v27 = 0;
    v27[1] = 0;
    v28 = (v4 + v5[10]);
    *v28 = 0;
    v28[1] = 0;
    *(v4 + v5[11]) = v26;
    v29 = (v4 + v5[12]);
    *v29 = 0;
    v29[1] = 0;
    v30 = (v4 + v5[13]);
    *v30 = v7;
    v30[1] = v8;
    v31 = *(v6 + 56);
    v94 = (*(v6 + 48) + **(v6 + 48));
    v32 = *(*(v6 + 48) + 4);
    v33 = swift_task_alloc();
    *(v0 + 136) = v33;
    *v33 = v0;
    v33[1] = sub_1E61FA6BC;
    v34 = *(v0 + 40);
LABEL_13:

    return v94(v34);
  }

  sub_1E61FACCC(*(v0 + 72), MEMORY[0x1E699EB78]);
  v89 = *(v0 + 72);
  v90 = *(v0 + 48);
  v91 = *(v0 + 56);
  v92 = *(v0 + 40);

  v93 = *(v0 + 8);

  return v93();
}

uint64_t sub_1E61FA1D0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v9 = *v0;

  v3 = v1[9];
  v4 = v1[7];
  v5 = v1[6];
  v6 = v1[5];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1E61FA344()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1E61FA89C;
  }

  else
  {
    v3 = sub_1E61FA458;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61FA458()
{
  sub_1E61FACCC(v0[7], type metadata accessor for PageMetricsClick);
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E61FA500()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1E61FA944;
  }

  else
  {
    v3 = sub_1E61FA614;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61FA614()
{
  sub_1E61FACCC(v0[6], type metadata accessor for PageMetricsClick);
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E61FA6BC()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1E61FA9EC;
  }

  else
  {
    v3 = sub_1E61FA7D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61FA7D0()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 152);
  v4 = *(v0 + 72);
  sub_1E61FACCC(*(v0 + 40), type metadata accessor for PageMetricsClick);
  (*(v1 + 8))(v4 + v3, v2);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E61FA89C()
{
  sub_1E61FACCC(v0[7], type metadata accessor for PageMetricsClick);
  v1 = v0[12];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61FA944()
{
  sub_1E61FACCC(v0[6], type metadata accessor for PageMetricsClick);
  v1 = v0[14];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61FA9EC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 152);
  v4 = *(v0 + 72);
  sub_1E61FACCC(*(v0 + 40), type metadata accessor for PageMetricsClick);
  (*(v1 + 8))(v4 + v3, v2);
  v5 = *(v0 + 144);
  v6 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E61FAAB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61FAB28(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E61F8904(a1, v1 + v5, v9, v10, v11, v12);
}

uint64_t sub_1E61FAC64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61FACCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61FAD2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 96) = a4;
  v8 = type metadata accessor for PageMetricsClick();
  *(v7 + 40) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 48) = swift_task_alloc();
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61FADD4, 0, 0);
}

uint64_t sub_1E61FADD4()
{
  v1 = *(v0 + 96);
  if (v1 <= 1)
  {
    if (!*(v0 + 96))
    {
LABEL_9:
      v35 = *(v0 + 48);
      v34 = *(v0 + 56);

      v36 = *(v0 + 8);

      return v36();
    }

    v38 = *(v0 + 56);
    v39 = *(v0 + 32);
    v40 = *(v0 + 40);
    v42 = *(v0 + 16);
    v41 = *(v0 + 24);
    v43 = sub_1E65D9D78();
    (*(*(v43 - 8) + 56))(v38, 1, 1, v43);
    v44 = v40[5];
    v45 = *MEMORY[0x1E69CBA00];
    v46 = sub_1E65D8C68();
    (*(*(v46 - 8) + 104))(v38 + v44, v45, v46);
    v47 = v40[6];
    v48 = sub_1E65D74E8();
    (*(*(v48 - 8) + 56))(v38 + v47, 1, 1, v48);
    v49 = v40[8];
    v50 = sub_1E65DA208();
    (*(*(v50 - 8) + 56))(v38 + v49, 1, 1, v50);
    v51 = v40[14];
    v52 = *MEMORY[0x1E69CBCC8];
    v53 = sub_1E65D8F28();
    (*(*(v53 - 8) + 104))(v38 + v51, v52, v53);
    v54 = v40[15];
    v55 = *MEMORY[0x1E69CC498];
    v56 = sub_1E65D9908();
    v57 = *(v56 - 8);
    (*(v57 + 104))(v38 + v54, v55, v56);
    (*(v57 + 56))(v38 + v54, 0, 1, v56);
    v58 = MEMORY[0x1E69E7CC0];
    v59 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v38 + v40[7]) = v58;
    v60 = (v38 + v40[9]);
    *v60 = 0;
    v60[1] = 0;
    v61 = (v38 + v40[10]);
    *v61 = 0;
    v61[1] = 0;
    *(v38 + v40[11]) = v59;
    v62 = (v38 + v40[12]);
    *v62 = 0;
    v62[1] = 0;
    v63 = (v38 + v40[13]);
    *v63 = v42;
    v63[1] = v41;
    v64 = *(v39 + 48);
    v65 = *(v39 + 56);

    v68 = (v64 + *v64);
    v66 = v64[1];
    v67 = swift_task_alloc();
    *(v0 + 64) = v67;
    *v67 = v0;
    v67[1] = sub_1E6090188;
    v33 = *(v0 + 56);
  }

  else
  {
    if (v1 == 2 || v1 != 3)
    {
      goto LABEL_9;
    }

    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 16);
    v8 = sub_1E65D9D78();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = v4[5];
    v10 = *MEMORY[0x1E69CBA68];
    v11 = sub_1E65D8C68();
    (*(*(v11 - 8) + 104))(v3 + v9, v10, v11);
    v12 = v4[6];
    v13 = sub_1E65D74E8();
    (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
    v14 = v4[8];
    v15 = sub_1E65DA208();
    (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
    v16 = v4[14];
    v17 = *MEMORY[0x1E69CBCC8];
    v18 = sub_1E65D8F28();
    (*(*(v18 - 8) + 104))(v3 + v16, v17, v18);
    v19 = v4[15];
    v20 = *MEMORY[0x1E69CC498];
    v21 = sub_1E65D9908();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v3 + v19, v20, v21);
    (*(v22 + 56))(v3 + v19, 0, 1, v21);
    v23 = MEMORY[0x1E69E7CC0];
    v24 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v3 + v4[7]) = v23;
    v25 = (v3 + v4[9]);
    *v25 = 0;
    v25[1] = 0;
    v26 = (v3 + v4[10]);
    *v26 = 0;
    v26[1] = 0;
    *(v3 + v4[11]) = v24;
    v27 = (v3 + v4[12]);
    *v27 = 0;
    v27[1] = 0;
    v28 = (v3 + v4[13]);
    *v28 = v7;
    v28[1] = v6;
    v29 = *(v5 + 48);
    v30 = *(v5 + 56);

    v68 = (v29 + *v29);
    v31 = v29[1];
    v32 = swift_task_alloc();
    *(v0 + 80) = v32;
    *v32 = v0;
    v32[1] = sub_1E6090310;
    v33 = *(v0 + 48);
  }

  return v68(v33);
}

uint64_t AppComposer.awardHeaderViewBuilder(awardName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769E8, &qword_1E65F7640);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v44 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769F0, &qword_1E65F7648);
  v9 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v44 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769F8, &qword_1E65F7650);
  v11 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v44 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A00, &qword_1E65F7658);
  v13 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v44 - v14;
  v15 = type metadata accessor for AppComposer();
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A08, &qword_1E65F7660);
  v48 = *(v19 - 8);
  v20 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v44 - v21;
  v22 = a2;
  v23 = sub_1E61FBD68(a1, a2);
  v24 = *(v3 + *(v16 + 28) + 8);
  v53 = v6;
  v49 = v23;
  if (v24 >= 2)
  {
    v48 = v19;
    if (v24 == 3)
    {
      v34 = a1;
      sub_1E5E1DEAC(v3, &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v35 = *(v17 + 80);
      v36 = (v35 + 16) & ~v35;
      v37 = swift_allocObject();
      sub_1E5E1FA80(&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
      v38 = (v37 + ((v18 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v38 = v34;
      v38[1] = v22;
      sub_1E5E1DEAC(v3, &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v39 = swift_allocObject();
      *(v39 + 16) = v34;
      *(v39 + 24) = v22;
      sub_1E5E1FA80(&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + ((v35 + 32) & ~v35));
      sub_1E65DB9C8();
      sub_1E65DBC48();
      sub_1E6200880(qword_1EE2D6BF8, MEMORY[0x1E699D198]);
      sub_1E6200880(&qword_1EE2D6BD8, MEMORY[0x1E699D228]);
      swift_bridgeObjectRetain_n();

      v40 = v45;
      sub_1E65DBC78();
      v41 = v46;
      v42 = v53;
      (*(v46 + 16))(v52, v40, v53);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1ED076A10, &qword_1ED076A08, &qword_1E65F7660);
      sub_1E5FED46C(&qword_1ED076A18, &qword_1ED0769E8, &qword_1E65F7640);
      v43 = v55;
      sub_1E65E4138();
      sub_1E61FC5FC(v43, v57);
      swift_storeEnumTagMultiPayload();
      sub_1E61FC66C();
      sub_1E65E4138();

      sub_1E61FC750(v43);
      return (*(v41 + 8))(v40, v42);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E5E1DEAC(v3, &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = *(v17 + 80);
    v26 = (v25 + 16) & ~v25;
    v27 = swift_allocObject();
    sub_1E5E1FA80(&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    v28 = (v27 + ((v18 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = a1;
    v28[1] = v22;
    sub_1E5E1DEAC(v3, &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = v22;
    sub_1E5E1FA80(&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + ((v25 + 32) & ~v25));
    sub_1E65DB9C8();
    sub_1E65DBC48();
    sub_1E6200880(qword_1EE2D6BF8, MEMORY[0x1E699D198]);
    sub_1E6200880(&qword_1EE2D6BD8, MEMORY[0x1E699D228]);
    swift_bridgeObjectRetain_n();

    v30 = v47;
    sub_1E65DBA18();
    v31 = v48;
    (*(v48 + 16))(v52, v30, v19);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1ED076A10, &qword_1ED076A08, &qword_1E65F7660);
    sub_1E5FED46C(&qword_1ED076A18, &qword_1ED0769E8, &qword_1E65F7640);
    v32 = v55;
    sub_1E65E4138();
    sub_1E61FC5FC(v32, v57);
    swift_storeEnumTagMultiPayload();
    sub_1E61FC66C();
    sub_1E65E4138();

    sub_1E61FC750(v32);
    return (*(v31 + 8))(v30, v19);
  }

  return result;
}

uint64_t sub_1E61FBD68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A38, &qword_1E65F7690);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v30 - v6;
  v7 = sub_1E65DBCB8();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = sub_1E65DBEA8();
  v31 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  sub_1E5E1DEAC(v3, &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = swift_allocObject();
  sub_1E5E1FA80(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_1E65DBE98();
  v24 = *v3;
  (*(v15 + 16))(v19, v21, v14);
  sub_1E65DBCA8();
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 16) = v32;
  *(v25 + 24) = v26;
  type metadata accessor for AppFeature();
  sub_1E6200880(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E6200880(&qword_1ED076A40, MEMORY[0x1E699D260]);

  v27 = v34;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v28 = sub_1E65E4F08();
  (*(v36 + 8))(v27, v37);
  (*(v35 + 8))(v10, v7);
  (*(v15 + 8))(v21, v31);
  return v28;
}

uint64_t sub_1E61FC1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v5 = type metadata accessor for AppComposer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = sub_1E65DBDF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v35 - v14;
  v43 = sub_1E65DBB28();
  v37 = *(v43 - 8);
  v16 = *(v37 + 64);
  v17 = MEMORY[0x1EEE9AC00](v43);
  v41 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[1] = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v35 - v19;
  sub_1E65DAE38();
  sub_1E65DAE38();
  v42 = v20;
  sub_1E65DBB08();
  sub_1E5E1DEAC(a1, v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = v22 + v7;
  v24 = swift_allocObject();
  sub_1E5E1FA80(v21, v24 + v22);
  sub_1E65DBDE8();
  sub_1E5E1DEAC(a1, v21);
  (*(v9 + 16))(v13, v15, v8);
  v25 = v37;
  (*(v37 + 16))(v41, v42, v43);
  v26 = (v23 + *(v9 + 80)) & ~*(v9 + 80);
  v27 = &v36[v26 + 7] & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v25 + 80);
  v36 = v15;
  v29 = (v28 + v27 + 16) & ~v28;
  v30 = swift_allocObject();
  sub_1E5E1FA80(v21, v30 + v22);
  (*(v9 + 32))(v30 + v26, v13, v8);
  v31 = (v30 + v27);
  v32 = v39;
  *v31 = v38;
  v31[1] = v32;
  v33 = v43;
  (*(v25 + 32))(v30 + v29, v41, v43);

  sub_1E65DB9B8();
  (*(v9 + 8))(v36, v8);
  return (*(v25 + 8))(v42, v33);
}

uint64_t sub_1E61FC5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A00, &qword_1E65F7658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E61FC66C()
{
  result = qword_1ED076A20;
  if (!qword_1ED076A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076A00, &qword_1E65F7658);
    sub_1E5FED46C(&qword_1ED076A10, &qword_1ED076A08, &qword_1E65F7660);
    sub_1E5FED46C(&qword_1ED076A18, &qword_1ED0769E8, &qword_1E65F7640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076A20);
  }

  return result;
}

uint64_t sub_1E61FC750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A00, &qword_1E65F7658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E61FC7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v5 = type metadata accessor for AppComposer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = sub_1E65DBDF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v35 - v14;
  v43 = sub_1E65DBB28();
  v37 = *(v43 - 8);
  v16 = *(v37 + 64);
  v17 = MEMORY[0x1EEE9AC00](v43);
  v41 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[1] = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v35 - v19;
  sub_1E65DAE38();
  sub_1E65DAE38();
  v42 = v20;
  sub_1E65DBB08();
  sub_1E5E1DEAC(a1, v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = v22 + v7;
  v24 = swift_allocObject();
  sub_1E5E1FA80(v21, v24 + v22);
  sub_1E65DBDE8();
  sub_1E5E1DEAC(a1, v21);
  (*(v9 + 16))(v13, v15, v8);
  v25 = v37;
  (*(v37 + 16))(v41, v42, v43);
  v26 = (v23 + *(v9 + 80)) & ~*(v9 + 80);
  v27 = &v36[v26 + 7] & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v25 + 80);
  v36 = v15;
  v29 = (v28 + v27 + 16) & ~v28;
  v30 = swift_allocObject();
  sub_1E5E1FA80(v21, v30 + v22);
  (*(v9 + 32))(v30 + v26, v13, v8);
  v31 = (v30 + v27);
  v32 = v39;
  *v31 = v38;
  v31[1] = v32;
  v33 = v43;
  (*(v25 + 32))(v30 + v29, v41, v43);

  sub_1E65DB9B8();
  (*(v9 + 8))(v36, v8);
  return (*(v25 + 8))(v42, v33);
}

uint64_t sub_1E61FCBD0(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t sub_1E61FCC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a8;
  v63 = a7;
  v61 = a6;
  v58 = a5;
  v55 = a3;
  v56 = a4;
  v10 = type metadata accessor for AppComposer();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65DBEF8();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - v17;
  v19 = sub_1E65DBFB8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v54 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v46 - v24;
  v26 = sub_1E65DB988();
  v51 = a1;
  v52 = a2;
  if (v26 == a1 && v27 == a2)
  {

    v28 = MEMORY[0x1E699D360];
  }

  else
  {
    v29 = sub_1E65E6C18();

    v28 = MEMORY[0x1E699D368];
    if (v29)
    {
      v28 = MEMORY[0x1E699D360];
    }
  }

  v30 = *v28;
  v31 = *(v20 + 104);
  v49 = v19;
  v50 = v25;
  v31(v25, v30, v19);
  v32 = v55;
  sub_1E5E1DEAC(v55, &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v34 = swift_allocObject();
  sub_1E5E1FA80(v12, v34 + v33);
  v47 = v18;
  sub_1E65DBEE8();
  sub_1E5E1DEAC(v32, v12);
  v36 = v59;
  v35 = v60;
  v37 = v57;
  (*(v59 + 16))(v57, v18, v60);
  v38 = (v33 + v11 + *(v36 + 80)) & ~*(v36 + 80);
  v39 = (v48 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_1E5E1FA80(v12, v40 + v33);
  (*(v36 + 32))(v40 + v38, v37, v35);
  v41 = (v40 + v39);
  v42 = v52;
  *v41 = v51;
  v41[1] = v42;
  v44 = v49;
  v43 = v50;
  (*(v20 + 16))(v54, v50, v49);

  sub_1E65DBC38();
  (*(v36 + 8))(v47, v35);
  return (*(v20 + 8))(v43, v44);
}

uint64_t objectdestroy_2Tm_0()
{
  v112 = type metadata accessor for AppComposer();
  v111 = *(*(v112 - 1) + 80);
  v110 = *(*(v112 - 1) + 64);
  v1 = *(v0 + 24);

  v107 = (v0 + ((v111 + 32) & ~v111));
  v2 = *v107;

  v3 = v107 + v112[5];
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v6], v109);
  v7 = v5[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v7], v106);
  v8 = v5[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v8], v104);
  v9 = v5[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v9], v102);
  v10 = v5[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v10], v100);
  v11 = v5[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v11], v98);
  v12 = v5[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v12], v96);
  v13 = v5[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v13], v94);
  v14 = v5[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v14], v92);
  v15 = v5[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v15], v90);
  v16 = v5[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v16], v88);
  v17 = v5[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v17], v86);
  v18 = v5[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v18], v84);
  v19 = v5[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v19], v82);
  v20 = v5[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v20], v80);
  v21 = v5[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v21], v78);
  v22 = v5[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v22], v76);
  v23 = v5[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v23], v74);
  v24 = v5[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v24], v72);
  v25 = v5[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v25], v70);
  v26 = v5[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v3[v26], v68);
  v27 = v5[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v3[v27], v66);
  v28 = v5[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v3[v28], v59);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v63 = *(v30[-1].Description + 1);
  v63(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v62 = *(v32[-1].Description + 1);
  v62(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v61 = *(v34[-1].Description + 1);
  v61(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v58 = *(v43[-1].Description + 1);
  v58(&v3[v42], v43);
  v44 = *(v107 + v112[6]);

  v45 = (v107 + v112[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v108(&v48[v5[6]], v109);
  v105(&v48[v5[7]], v106);
  v103(&v48[v5[8]], v104);
  v101(&v48[v5[9]], v102);
  v99(&v48[v5[10]], v100);
  v97(&v48[v5[11]], v98);
  v95(&v48[v5[12]], v96);
  v93(&v48[v5[13]], v94);
  v91(&v48[v5[14]], v92);
  v89(&v48[v5[15]], v90);
  v87(&v48[v5[16]], v88);
  v85(&v48[v5[17]], v86);
  v83(&v48[v5[18]], v84);
  v81(&v48[v5[19]], v82);
  v79(&v48[v5[20]], v80);
  v77(&v48[v5[21]], v78);
  v75(&v48[v5[22]], v76);
  v73(&v48[v5[23]], v74);
  v71(&v48[v5[24]], v72);
  v69(&v48[v5[25]], v70);
  v67(&v48[v5[26]], v68);
  v65(&v48[v5[27]], v66);
  v64(&v48[v5[28]], v59);
  v63(&v48[v5[29]], v30);
  v62(&v48[v5[30]], v32);
  v61(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v60(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v58(&v48[v5[36]], v43);
  v55 = *(v107 + v112[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v112[9] + 8) >= 0xC)
  {
  }

  v56 = (v107 + v112[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  return swift_deallocObject();
}

unint64_t sub_1E61FDE30()
{
  result = qword_1ED076A28;
  if (!qword_1ED076A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076A30, &qword_1E65F7668);
    sub_1E61FC66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076A28);
  }

  return result;
}

uint64_t sub_1E61FDEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A48, &qword_1E65F76A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1E65DBB28();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1E65DBD68();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1E65DBBE8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppState();
  v17 = a1 + *(v16 + 24);
  CanvasLayout<>.transform(with:)(a2, a3, v15);
  if (sub_1E65DB988() == a2 && v18 == a3)
  {
  }

  else
  {
    sub_1E65E6C18();
    v22 = a3;

    a3 = v22;
  }

  sub_1E65DAE38();
  sub_1E65DAE38();
  sub_1E65DBB08();
  sub_1E65DBD58();
  v19 = *(v16 + 52);
  v23 = a2;
  v24 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746E8, &qword_1E65F0FB8);
  sub_1E65E4D78();

  return sub_1E65DBAF8();
}

uint64_t sub_1E61FE1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A50, &qword_1E65F76B0);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61FE2A0, 0, 0);
}

uint64_t sub_1E61FE2A0()
{
  v1 = v0[12];
  v0[16] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[17] = sub_1E65E6058();
  v0[18] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61FE350, v3, v2);
}

uint64_t sub_1E61FE350()
{
  v1 = v0[18];
  v2 = v0[16];

  sub_1E5E20198(6, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A58, &qword_1E65F76B8);
  if (swift_dynamicCast())
  {
    v0[19] = v0[9];
    v3 = sub_1E61FE48C;
  }

  else
  {
    v3 = sub_1E61FE428;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61FE428()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E61FE48C()
{
  v1 = v0[17];
  v2 = v0[11];
  v0[7] = v0[10];
  v0[8] = v2;
  v0[20] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61FE520, v4, v3);
}

uint64_t sub_1E61FE520()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[15];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E61FE5A0, 0, 0);
}

uint64_t sub_1E61FE5A0()
{
  v1 = *(v0 + 136);
  *(v0 + 168) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61FE62C, v3, v2);
}

uint64_t sub_1E61FE62C()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  sub_1E65E4E28();
  (*(v3 + 8))(v2, v4);
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61FE6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6435950(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E61FE7C0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v12 = *(type metadata accessor for AppComposer() - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1E5DFE6BC;

  return sub_1E64B5C28(a1, a2, a3, v5 + v13, a4, a5);
}

uint64_t objectdestroy_16Tm()
{
  v120 = type metadata accessor for AppComposer();
  v118 = *(*(v120 - 1) + 80);
  v114 = *(*(v120 - 1) + 64);
  v117 = sub_1E65DBEF8();
  v115 = *(v117 - 8);
  v113 = *(v115 + 80);
  v112 = *(v115 + 64);
  v119 = v0;
  v116 = (v118 + 16) & ~v118;
  v109 = v0 + v116;
  v1 = *(v0 + v116);

  v2 = (v0 + v116 + v120[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(v2 + v5, v111);
  v6 = v4[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(v2 + v6, v108);
  v7 = v4[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(v2 + v7, v106);
  v8 = v4[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(v2 + v8, v104);
  v9 = v4[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(v2 + v9, v102);
  v10 = v4[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(v2 + v10, v100);
  v11 = v4[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(v2 + v11, v98);
  v12 = v4[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(v2 + v12, v96);
  v13 = v4[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(v2 + v13, v94);
  v14 = v4[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(v2 + v14, v92);
  v15 = v4[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(v2 + v15, v90);
  v16 = v4[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(v2 + v16, v88);
  v17 = v4[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(v2 + v17, v86);
  v18 = v4[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(v2 + v18, v84);
  v19 = v4[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(v2 + v19, v82);
  v20 = v4[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(v2 + v20, v80);
  v21 = v4[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(v2 + v21, v78);
  v22 = v4[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(v2 + v22, v76);
  v23 = v4[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(v2 + v23, v74);
  v24 = v4[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(v2 + v24, v72);
  v25 = v4[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(v2 + v25, v70);
  v26 = v4[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(v2 + v26, v68);
  v27 = v4[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(v2 + v27, v61);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v65 = *(v29[-1].Description + 1);
  v65(v2 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v64 = *(v31[-1].Description + 1);
  v64(v2 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v63 = *(v33[-1].Description + 1);
  v63(v2 + v32, v33);
  v34 = (v2 + v4[32]);
  v35 = v34[1];

  v36 = v34[3];

  v37 = v34[5];

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(v2 + v38, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v4[34]));
  v40 = *(v2 + v4[35]);

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v60 = *(v42[-1].Description + 1);
  v60(v2 + v41, v42);
  v43 = *(v109 + v120[6]);

  v44 = (v109 + v120[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = (v44 + *(type metadata accessor for AppDataItemResolver() + 24));
  v48 = *v47;
  swift_unknownObjectRelease();
  v110(v47 + v4[6], v111);
  v107(v47 + v4[7], v108);
  v105(v47 + v4[8], v106);
  v103(v47 + v4[9], v104);
  v101(v47 + v4[10], v102);
  v99(v47 + v4[11], v100);
  v97(v47 + v4[12], v98);
  v95(v47 + v4[13], v96);
  v93(v47 + v4[14], v94);
  v91(v47 + v4[15], v92);
  v89(v47 + v4[16], v90);
  v87(v47 + v4[17], v88);
  v85(v47 + v4[18], v86);
  v83(v47 + v4[19], v84);
  v81(v47 + v4[20], v82);
  v79(v47 + v4[21], v80);
  v77(v47 + v4[22], v78);
  v75(v47 + v4[23], v76);
  v73(v47 + v4[24], v74);
  v71(v47 + v4[25], v72);
  v69(v47 + v4[26], v70);
  v67(v47 + v4[27], v68);
  v66(v47 + v4[28], v61);
  v65(v47 + v4[29], v29);
  v64(v47 + v4[30], v31);
  v63(v47 + v4[31], v33);
  v49 = (v47 + v4[32]);
  v50 = v49[1];

  v51 = v49[3];

  v52 = v49[5];

  v62(v47 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v47 + v4[34]));
  v53 = *(v47 + v4[35]);

  v60(v47 + v4[36], v42);
  v54 = *(v109 + v120[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v120[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v109 + v120[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v116 + v114 + v113) & ~v113;
  v57 = (v112 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v115 + 8))(v119 + v56, v117);
  v58 = *(v119 + v57 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E61FF640()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DBEF8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1E6434F88((v0 + v2), v0 + v5, v7, v8);
}

uint64_t sub_1E61FF73C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v12 = *(type metadata accessor for AppComposer() - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1E5DFA78C;

  return sub_1E64B5C28(a1, a2, a3, v5 + v13, a4, a5);
}

uint64_t objectdestroy_23Tm()
{
  v124 = type metadata accessor for AppComposer();
  v120 = *(*(v124 - 1) + 80);
  v116 = *(*(v124 - 1) + 64);
  v122 = sub_1E65DBDF8();
  v119 = *(v122 - 8);
  v114 = *(v119 + 80);
  v113 = *(v119 + 64);
  v121 = sub_1E65DBB28();
  v117 = *(v121 - 8);
  v112 = *(v117 + 80);
  v115 = *(v117 + 64);
  v123 = v0;
  v118 = (v120 + 16) & ~v120;
  v109 = v0 + v118;
  v1 = *(v0 + v118);

  v2 = (v0 + v118 + v124[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(v2 + v5, v111);
  v6 = v4[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(v2 + v6, v108);
  v7 = v4[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(v2 + v7, v106);
  v8 = v4[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(v2 + v8, v104);
  v9 = v4[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(v2 + v9, v102);
  v10 = v4[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(v2 + v10, v100);
  v11 = v4[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(v2 + v11, v98);
  v12 = v4[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(v2 + v12, v96);
  v13 = v4[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(v2 + v13, v94);
  v14 = v4[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(v2 + v14, v92);
  v15 = v4[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(v2 + v15, v90);
  v16 = v4[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(v2 + v16, v88);
  v17 = v4[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(v2 + v17, v86);
  v18 = v4[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(v2 + v18, v84);
  v19 = v4[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(v2 + v19, v82);
  v20 = v4[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(v2 + v20, v80);
  v21 = v4[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(v2 + v21, v78);
  v22 = v4[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(v2 + v22, v76);
  v23 = v4[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(v2 + v23, v74);
  v24 = v4[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(v2 + v24, v72);
  v25 = v4[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(v2 + v25, v70);
  v26 = v4[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(v2 + v26, v68);
  v27 = v4[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(v2 + v27, v61);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v65 = *(v29[-1].Description + 1);
  v65(v2 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v64 = *(v31[-1].Description + 1);
  v64(v2 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v63 = *(v33[-1].Description + 1);
  v63(v2 + v32, v33);
  v34 = (v2 + v4[32]);
  v35 = v34[1];

  v36 = v34[3];

  v37 = v34[5];

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(v2 + v38, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v4[34]));
  v40 = *(v2 + v4[35]);

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v60 = *(v42[-1].Description + 1);
  v60(v2 + v41, v42);
  v43 = *(v109 + v124[6]);

  v44 = (v109 + v124[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = (v44 + *(type metadata accessor for AppDataItemResolver() + 24));
  v48 = *v47;
  swift_unknownObjectRelease();
  v110(v47 + v4[6], v111);
  v107(v47 + v4[7], v108);
  v105(v47 + v4[8], v106);
  v103(v47 + v4[9], v104);
  v101(v47 + v4[10], v102);
  v99(v47 + v4[11], v100);
  v97(v47 + v4[12], v98);
  v95(v47 + v4[13], v96);
  v93(v47 + v4[14], v94);
  v91(v47 + v4[15], v92);
  v89(v47 + v4[16], v90);
  v87(v47 + v4[17], v88);
  v85(v47 + v4[18], v86);
  v83(v47 + v4[19], v84);
  v81(v47 + v4[20], v82);
  v79(v47 + v4[21], v80);
  v77(v47 + v4[22], v78);
  v75(v47 + v4[23], v76);
  v73(v47 + v4[24], v74);
  v71(v47 + v4[25], v72);
  v69(v47 + v4[26], v70);
  v67(v47 + v4[27], v68);
  v66(v47 + v4[28], v61);
  v65(v47 + v4[29], v29);
  v64(v47 + v4[30], v31);
  v63(v47 + v4[31], v33);
  v49 = (v47 + v4[32]);
  v50 = v49[1];

  v51 = v49[3];

  v52 = v49[5];

  v62(v47 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v47 + v4[34]));
  v53 = *(v47 + v4[35]);

  v60(v47 + v4[36], v42);
  v54 = *(v109 + v124[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v124[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v109 + v124[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v118 + v116 + v114) & ~v114;
  v57 = (v113 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v119 + 8))(v123 + v56, v122);
  v58 = *(v123 + v57 + 8);

  (*(v117 + 8))(v123 + ((v57 + v112 + 16) & ~v112), v121);

  return swift_deallocObject();
}

uint64_t sub_1E620065C()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DBDF8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1E65DBB28() - 8);
  v8 = *(v0 + v6);
  v9 = *(v0 + v6 + 8);
  v10 = v0 + ((v6 + *(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1E64B5520((v0 + v2), v0 + v5, v8, v9, v10);
}

uint64_t sub_1E6200798(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E61FE1D0(a1, a2, v2 + v7);
}

uint64_t sub_1E6200880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E62008D0()
{
  v1 = v0;
  v2 = sub_1E65E0FD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E0B48();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5FC55E8(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v12 = *v10;
        v13 = v10[1];
        v14 = 0x6E656D7069757165;
        v15 = 0xEA00000000005F74;
      }

      else
      {
        v12 = *v10;
        v13 = v10[1];
        v14 = 0x7974696C61646F6DLL;
        v15 = 0xE90000000000005FLL;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v6, v10, v2);
        v22 = 0;
        v23 = 0xE000000000000000;
        sub_1E65E68A8();

        v22 = 0x75645F616964656DLL;
        v23 = 0xEF5F6E6F69746172;
        v17 = sub_1E65E0F98();
        MEMORY[0x1E694D7C0](v17);

        v18 = v22;
        (*(v3 + 8))(v6, v2);
        return v18;
      }

      v12 = *v10;
      v13 = v10[1];
      v14 = 0x636F665F79646F62;
      v15 = 0xEB000000005F7375;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v12 = *v10;
      v13 = v10[1];
      v14 = 0x65675F636973756DLL;
      v16 = 1600483950;
    }

    else
    {
      v12 = *v10;
      v13 = v10[1];
      v14 = 0x656C5F6C6C696B73;
      v16 = 1600939382;
    }

    v15 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v12 = *v10;
    v13 = v10[1];
    v14 = 0x5F656D656874;
    v15 = 0xE600000000000000;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v12 = *v10;
    v13 = v10[1];
    v14 = 0x5F72656E69617274;
    v15 = 0xE800000000000000;
LABEL_19:
    v22 = v14;
    v23 = v15;
    v21 = v13;
    goto LABEL_20;
  }

  v20 = *v10;
  v22 = 0x5F7469617274;
  v23 = 0xE600000000000000;
  v12 = sub_1E65E0D38();
LABEL_20:
  MEMORY[0x1E694D7C0](v12, v21);

  return v22;
}

uint64_t sub_1E6200BE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E65E0B48();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5FC55E8(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1E601B6C4(v7);
        v9 = MEMORY[0x1E69CC4C8];
      }

      else
      {
        sub_1E601B6C4(v7);
        v9 = MEMORY[0x1E69CC4B0];
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v10 = *MEMORY[0x1E69CC4A0];
        v11 = sub_1E65D9908();
        (*(*(v11 - 8) + 104))(a1, v10, v11);
        return sub_1E601B6C4(v7);
      }

      sub_1E601B6C4(v7);
      v9 = MEMORY[0x1E69CC4C0];
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_1E601B6C4(v7);
      v9 = MEMORY[0x1E69CC470];
    }

    else
    {
      sub_1E601B6C4(v7);
      v9 = MEMORY[0x1E69CC430];
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    sub_1E601B6C4(v7);
    v9 = MEMORY[0x1E69CC478];
  }

  else if (EnumCaseMultiPayload == 7)
  {
    sub_1E601B6C4(v7);
    v9 = MEMORY[0x1E69CC490];
  }

  else
  {
    v9 = MEMORY[0x1E69CC480];
  }

  v13 = *v9;
  v14 = sub_1E65D9908();
  return (*(*(v14 - 8) + 104))(a1, v13, v14);
}

uint64_t sub_1E6200DD8(uint64_t a1, unint64_t a2, void *a3)
{
  v64 = a2;
  v65 = a3;
  v5 = sub_1E65D76F8();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v60 = *(v7 - 8);
  v71 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A60, &qword_1E65F76D8);
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v55 - v12;
  v13 = type metadata accessor for AppComposer();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A68, &qword_1E65F76E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A70, &qword_1E65F76E8);
  v67 = *(v70 - 8);
  v19 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - v20;
  v55 = v16;
  v56 = v3;
  v66 = *v3;
  sub_1E5E1DEAC(v3, v16);
  v21 = *(v14 + 80);
  v22 = ((v21 + 16) & ~v21) + v15;
  v23 = (v21 + 16) & ~v21;
  v59 = v23;
  v57 = v22;
  v58 = v21 | 7;
  v24 = swift_allocObject();
  sub_1E5E1FA80(v16, v24 + v23);
  sub_1E604C89C();
  sub_1E65DEB58();
  sub_1E65DE8C8();
  v25 = a1;
  v26 = a1;
  v27 = v9;
  sub_1E6202E08(v26, v9);
  v29 = v61;
  v28 = v62;
  v30 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v61 + 16))(v30, v64, v62);
  v31 = *(v60 + 80);
  v32 = (v31 + 16) & ~v31;
  v64 = v32 + v71;
  v33 = (v32 + v71 + *(v29 + 80)) & ~*(v29 + 80);
  v34 = swift_allocObject();
  sub_1E6202E78(v27, v34 + v32);
  (*(v29 + 32))(v34 + v33, v30, v28);
  v35 = v25;
  sub_1E6202E08(v25, v27);
  v36 = swift_allocObject();
  sub_1E6202E78(v27, v36 + v32);
  type metadata accessor for AppFeature();
  sub_1E5DED16C();
  v64 = sub_1E6203058();
  sub_1E65E4DE8();
  v37 = v55;
  sub_1E5E1DEAC(v56, v55);
  v38 = *v65;
  v39 = v65[3];
  v40 = v65[5];
  v41 = v65[7];
  v62 = v65[9];
  v42 = v65;
  sub_1E6202E08(v35, v27);
  v43 = (v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + v31 + 80) & ~v31;
  v45 = swift_allocObject();
  sub_1E5E1FA80(v37, v45 + v59);
  v46 = (v45 + v43);
  v47 = v42[3];
  v46[2] = v42[2];
  v46[3] = v47;
  v46[4] = v42[4];
  v48 = v42[1];
  *v46 = *v42;
  v46[1] = v48;
  sub_1E6202E78(v27, v45 + v44);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1E62030BC;
  *(v49 + 24) = v45;

  v50 = v63;
  v51 = v72;
  v52 = v70;
  v53 = sub_1E65E4F08();

  (*(v68 + 8))(v51, v69);
  (*(v67 + 8))(v50, v52);
  return v53;
}

uint64_t sub_1E6201444(uint64_t a1)
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

  sub_1E64B80F8(0, 0, v5, &unk_1E65F76D0, v7);
}

uint64_t sub_1E6201570()
{
  *(v0 + 32) = 0;
  sub_1E65E6058();
  *(v0 + 24) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6203294, v2, v1);
}

uint64_t sub_1E6201638(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A80, &qword_1E65F7710);
  *(v2 + 280) = v4;
  v5 = *(v4 - 8);
  *(v2 + 288) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 296) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A88, &qword_1E65F7718);
  *(v2 + 304) = v7;
  v8 = *(v7 - 8);
  *(v2 + 312) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 320) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A90, &qword_1E65F7720);
  *(v2 + 328) = v10;
  v11 = *(v10 - 8);
  *(v2 + 336) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 344) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A98, &qword_1E65F7728);
  *(v2 + 352) = v13;
  v14 = *(v13 - 8);
  *(v2 + 360) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = *a1;
  *(v2 + 600) = *(a1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6201854, 0, 0);
}

uint64_t sub_1E6201854()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 272);
  v3 = *(v2 + *(type metadata accessor for AppComposer() + 24));
  if (v1 <= 1)
  {
    if (v1)
    {
      *(v0 + 408) = v3;
      *(v0 + 416) = sub_1E65E6058();
      *(v0 + 424) = sub_1E65E6048();
      v4 = sub_1E65E5FC8();
      v6 = v11;
      v7 = sub_1E6201AF4;
    }

    else
    {
      *(v0 + 392) = v3;
      sub_1E65E6058();
      *(v0 + 400) = sub_1E65E6048();
      v4 = sub_1E65E5FC8();
      v6 = v8;
      v7 = sub_1E6201A50;
    }
  }

  else if (v1 == 2)
  {
    *(v0 + 432) = v3;
    *(v0 + 440) = sub_1E65E6058();
    *(v0 + 448) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v9;
    v7 = sub_1E6201BCC;
  }

  else if (v1 == 3)
  {
    *(v0 + 456) = v3;
    *(v0 + 464) = sub_1E65E6058();
    *(v0 + 472) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v5;
    v7 = sub_1E6201CA4;
  }

  else
  {
    *(v0 + 480) = v3;
    *(v0 + 488) = sub_1E65E6058();
    *(v0 + 496) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v10;
    v7 = sub_1E6201D7C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1E6201A50()
{
  v2 = v0[49];
  v1 = v0[50];
  v4 = v0[47];
  v3 = v0[48];

  sub_1E64D7F80(v4, v3);
  v5 = v0[46];
  v6 = v0[43];
  v7 = v0[40];
  v8 = v0[37];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6201AF4()
{
  v1 = v0[53];
  v2 = v0[51];

  sub_1E5E20198(19, (v0 + 17));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075310, &qword_1E65F1610);
  if (swift_dynamicCast())
  {
    v0[63] = v0[33];
    v3 = sub_1E6201E54;
  }

  else
  {
    v3 = sub_1E6203290;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6201BCC()
{
  v1 = v0[56];
  v2 = v0[54];

  sub_1E5E20198(9, (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AA8, &qword_1E65F7738);
  if (swift_dynamicCast())
  {
    v0[66] = v0[32];
    v3 = sub_1E620213C;
  }

  else
  {
    v3 = sub_1E62020B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6201CA4()
{
  v1 = v0[59];
  v2 = v0[57];

  sub_1E5E20198(25, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AA0, &qword_1E65F7730);
  if (swift_dynamicCast())
  {
    v0[69] = v0[31];
    v3 = sub_1E620239C;
  }

  else
  {
    v3 = sub_1E6203290;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6201D7C()
{
  v1 = v0[62];
  v2 = v0[60];

  sub_1E5E20198(14, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EE8, &qword_1E65F45C8);
  if (swift_dynamicCast())
  {
    v0[72] = v0[30];
    v3 = sub_1E62025FC;
  }

  else
  {
    v3 = sub_1E6203290;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6201E54()
{
  v1 = v0[52];
  v2 = v0[48];
  v0[28] = v0[47];
  v0[29] = v2;
  v0[64] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6201EE8, v4, v3);
}

uint64_t sub_1E6201EE8()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[46];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6201F68, 0, 0);
}

uint64_t sub_1E6201F68()
{
  v1 = *(v0 + 416);
  *(v0 + 520) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6201FF4, v3, v2);
}

uint64_t sub_1E6201FF4()
{
  v1 = v0[65];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];

  sub_1E65E4E28();
  (*(v3 + 8))(v2, v4);
  v5 = v0[46];
  v6 = v0[43];
  v7 = v0[40];
  v8 = v0[37];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E62020B0()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[37];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E620213C()
{
  v1 = v0[55];
  v2 = v0[48];
  v0[26] = v0[47];
  v0[27] = v2;
  v0[67] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62021D0, v4, v3);
}

uint64_t sub_1E62021D0()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[43];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6202254, 0, 0);
}

uint64_t sub_1E6202254()
{
  v1 = *(v0 + 440);
  *(v0 + 544) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62022E0, v3, v2);
}

uint64_t sub_1E62022E0()
{
  v1 = v0[68];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];

  sub_1E65E4E28();
  (*(v3 + 8))(v2, v4);
  v5 = v0[46];
  v6 = v0[43];
  v7 = v0[40];
  v8 = v0[37];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E620239C()
{
  v1 = v0[58];
  v2 = v0[48];
  v0[24] = v0[47];
  v0[25] = v2;
  v0[70] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6202430, v4, v3);
}

uint64_t sub_1E6202430()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[40];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E62024B4, 0, 0);
}

uint64_t sub_1E62024B4()
{
  v1 = *(v0 + 464);
  *(v0 + 568) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6202540, v3, v2);
}

uint64_t sub_1E6202540()
{
  v1 = v0[71];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];

  sub_1E65E4E28();
  (*(v3 + 8))(v2, v4);
  v5 = v0[46];
  v6 = v0[43];
  v7 = v0[40];
  v8 = v0[37];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E62025FC()
{
  v1 = v0[61];
  v2 = v0[48];
  v0[22] = v0[47];
  v0[23] = v2;
  v0[73] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6202690, v4, v3);
}

uint64_t sub_1E6202690()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[37];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6202714, 0, 0);
}

uint64_t sub_1E6202714()
{
  v1 = *(v0 + 488);
  *(v0 + 592) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62027A0, v3, v2);
}

uint64_t sub_1E62027A0()
{
  v1 = v0[74];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];

  sub_1E65E4E28();
  (*(v3 + 8))(v2, v4);
  v5 = v0[46];
  v6 = v0[43];
  v7 = v0[40];
  v8 = v0[37];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E620285C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v12 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  sub_1E65DE488();
  v6 = v12[1];
  v7 = v12[2];
  v8 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A78, &qword_1E65F7708);
  sub_1E65DE708();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = a1 + *(type metadata accessor for AppState() + 192) + 88;
  return sub_1E64076CC(v5, v6, v7, v8);
}

uint64_t sub_1E62029A8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  HIDWORD(v22) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  sub_1E65DE488();
  v11 = v23;
  v10 = v24;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = *a4;
  v14 = a4[3];
  v15 = a4[5];
  v16 = a4[7];
  v17 = a4[9];
  v18 = swift_allocObject();
  v19 = *a4;
  *(v18 + 72) = *(a4 + 1);
  v20 = *(a4 + 3);
  *(v18 + 88) = *(a4 + 2);
  *(v18 + 104) = v20;
  *(v18 + 120) = *(a4 + 4);
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = BYTE4(v22);
  *(v18 + 40) = v11;
  *(v18 + 48) = v10;
  *(v18 + 56) = v19;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v9, &unk_1E65F7700, v18);
}

uint64_t sub_1E6202B7C()
{
  *(v0 + 32) = 0;
  sub_1E65E6058();
  *(v0 + 24) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6202C14, v2, v1);
}

uint64_t sub_1E6202C14()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_1E65E4EE8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6202C7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6201550(a1, v4, v5, v6);
}

uint64_t sub_1E6202D30(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6201638(a1, v1 + v5);
}

uint64_t sub_1E6202E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6202E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6202EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D76F8() - 8);
  return sub_1E62D9508(a1, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t sub_1E6202FCC(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00) - 8) + 80);

  return sub_1E620285C(a1);
}

unint64_t sub_1E6203058()
{
  result = qword_1EE2D6868;
  if (!qword_1EE2D6868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076A70, &qword_1E65F76E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6868);
  }

  return result;
}

uint64_t sub_1E62030BC(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00) - 8);
  v9 = v2 + ((v7 + *(v8 + 80) + 80) & ~*(v8 + 80));

  return sub_1E62029A8(a1, a2, v2 + v6, (v2 + v7));
}

uint64_t sub_1E62031BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E6348824(a1, v4, v5, v8, v6, v7, v1 + 56);
}

uint64_t sub_1E6203298(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B88, &qword_1E65EC618) - 8);
    v9 = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_1E62033A4(uint64_t a1)
{
  v3 = sub_1E65D9F38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v38 = v1;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1E601BF04(0, v8, 0);
    v50 = v52;
    v10 = a1 + 64;
    v11 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v12 = 0;
    v51 = v4 + 16;
    v40 = a1;
    v41 = v4;
    v13 = (v4 + 8);
    v39 = a1 + 72;
    v42 = v8;
    v43 = a1 + 64;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      v16 = result >> 6;
      v17 = 1 << result;
      if ((*(v10 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_30;
      }

      v18 = *(a1 + 36);
      v19 = *(*(a1 + 56) + 8 * result);
      v20 = *(v19 + 16);
      v49 = v12;
      if (v20)
      {
        v45 = 1 << result;
        v46 = result >> 6;
        v47 = v18;
        v48 = result;
        v21 = v19 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v22 = *(v41 + 72);
        v23 = *(v41 + 16);
        v44 = v19;

        v24 = 0;
        while (1)
        {
          v23(v7, v21, v3);
          v25 = sub_1E65D9F28();
          result = (*v13)(v7, v3);
          v26 = __OFADD__(v24, v25);
          v24 += v25;
          if (v26)
          {
            break;
          }

          v21 += v22;
          if (!--v20)
          {

            a1 = v40;
            result = v48;
            v12 = v49;
            v16 = v46;
            v18 = v47;
            v17 = v45;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v24 = 0;
LABEL_14:
      v27 = v50;
      v52 = v50;
      v29 = *(v50 + 16);
      v28 = *(v50 + 24);
      if (v29 >= v28 >> 1)
      {
        v47 = v18;
        v48 = result;
        v37 = v12;
        v45 = v17;
        v46 = v16;
        sub_1E601BF04((v28 > 1), v29 + 1, 1);
        v17 = v45;
        v16 = v46;
        v18 = v47;
        result = v48;
        v12 = v37;
        v27 = v52;
      }

      *(v27 + 16) = v29 + 1;
      *(v27 + 8 * v29 + 32) = v24;
      v14 = 1 << *(a1 + 32);
      if (result >= v14)
      {
        goto LABEL_31;
      }

      v10 = v43;
      v30 = *(v43 + 8 * v16);
      if ((v30 & v17) == 0)
      {
        goto LABEL_32;
      }

      if (v18 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v31 = v30 & (-2 << (result & 0x3F));
      v50 = v27;
      if (v31)
      {
        v14 = __clz(__rbit64(v31)) | result & 0x7FFFFFFFFFFFFFC0;
        v15 = v42;
      }

      else
      {
        v32 = v16 << 6;
        v33 = v16 + 1;
        v34 = (v39 + 8 * v16);
        v15 = v42;
        while (v33 < (v14 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_1E5F87098(result, v18, 0);
            v14 = __clz(__rbit64(v35)) + v32;
            goto LABEL_25;
          }
        }

        sub_1E5F87098(result, v18, 0);
LABEL_25:
        v12 = v49;
      }

      ++v12;
      result = v14;
      if (v12 == v15)
      {
        return v50;
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
  }

  return result;
}

uint64_t sub_1E620371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = v35;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  *(v8 + 56) = swift_task_alloc();
  v10 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();
  v11 = *(*(type metadata accessor for SectionMetrics() - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  v12 = sub_1E65D8F28();
  *(v8 + 88) = v12;
  v13 = *(v12 - 8);
  *(v8 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v15 = type metadata accessor for PageMetricsClick();
  *(v8 + 112) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B80, &qword_1E65F7870) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v18 = sub_1E65E26E8();
  *(v8 + 144) = v18;
  v19 = *(v18 - 8);
  *(v8 + 152) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B70, &qword_1E65F7850);
  *(v8 + 168) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753D0, &qword_1E65F1A50) - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  *(v8 + 192) = v24;
  v25 = *(v24 - 8);
  *(v8 + 200) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B88, &qword_1E65F7878) - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0) - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  *(v8 + 232) = v29;
  v30 = *(v29 - 8);
  *(v8 + 240) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800) - 8) + 64) + 15;
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6203B3C, 0, 0);
}

uint64_t sub_1E6203B3C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  v135 = *(v0 + 216);
  v137 = *(v0 + 200);
  v7 = *(v0 + 184);
  v127 = **(v0 + 16);
  v131 = *(v0 + 192);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEC44(v2);
  sub_1E5DFE50C(v5, &qword_1ED072958, &qword_1E65EC0F0);
  (*(v3 + 8))(v1, v4);
  v8 = sub_1E65D7EB8();
  (*(*(v8 - 8) + 48))(v2, 1, v8);
  sub_1E5DFE50C(v2, &qword_1ED072968, &unk_1E6609800);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEA00(v135);
  v9 = v7;
  v10 = v0;
  sub_1E5DFE50C(v9, &qword_1ED0753D0, &qword_1E65F1A50);
  (*(v137 + 8))(v6, v131);
  v11 = sub_1E65E1F68();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v135, 1, v11);
  v14 = *(v10 + 216);
  if (v13 == 1)
  {
    sub_1E5DFE50C(*(v10 + 216), &qword_1ED076B88, &qword_1E65F7878);
  }

  else
  {
    sub_1E65E1F48();
    (*(v12 + 8))(v14, v11);
  }

  v15 = *(v10 + 168);
  sub_1E5DFD1CC(*(v10 + 24), *(v10 + 176), &qword_1ED076B70, &qword_1E65F7850);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v49 = *(v10 + 136);
        v50 = *(v10 + 32);
        (*(*(v10 + 152) + 32))(*(v10 + 160), *(v10 + 176), *(v10 + 144));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B48, &qword_1E65F7820);
        sub_1E65E2428();
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B78, &qword_1E65F7860);
        v52 = *(v51 - 8);
        if ((*(v52 + 48))(v49, 1, v51) == 1)
        {
          sub_1E5DFE50C(*(v10 + 136), &qword_1ED076B80, &qword_1E65F7870);
        }

        else
        {
          v58 = *(v10 + 160);
          v59 = *(v10 + 136);
          v60 = sub_1E65E05D8();
          (*(v52 + 8))(v59, v51);
          v61 = swift_task_alloc();
          *(v61 + 16) = v58;
          v62 = sub_1E6203298(sub_1E621765C, v61, v60);
          LOBYTE(v58) = v63;

          if ((v58 & 1) == 0)
          {
            v77 = *(v10 + 112);
            v76 = *(v10 + 120);
            v78 = sub_1E65D9D78();
            (*(*(v78 - 8) + 56))(v76, 1, 1, v78);
            v79 = *(v77 + 20);
            v80 = *MEMORY[0x1E69CBAA0];
            v81 = sub_1E65D8C68();
            (*(*(v81 - 8) + 104))(v76 + v79, v80, v81);
            v82 = *(v77 + 24);
            v83 = sub_1E65D74E8();
            (*(*(v83 - 8) + 56))(v76 + v82, 1, 1, v83);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
            v84 = *(sub_1E65D86A8() - 8);
            v85 = (*(v84 + 80) + 32) & ~*(v84 + 80);
            v134 = *(v84 + 72);
            result = swift_allocObject();
            *(result + 16) = xmmword_1E65EB9E0;
            if (__OFADD__(v62, 1))
            {
              __break(1u);
              return result;
            }

            v87 = *(v10 + 112);
            v86 = *(v10 + 120);
            v88 = *(v10 + 80);
            v119 = *(v10 + 88);
            v89 = *(v10 + 72);
            v109 = *(v10 + 64);
            v116 = *(v10 + 56);
            v130 = *(v10 + 48);
            v90 = *(v10 + 40);
            v123 = *MEMORY[0x1E69CBCD8];
            v91 = *(*(v10 + 96) + 104);
            v126 = result;
            v111 = *(v10 + 104);
            v91(v111);
            v108 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
            sub_1E65D8678();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B68, &qword_1E65F7848);
            sub_1E65E23D8();
            v113 = v88[1];
            v114 = *v88;

            sub_1E6217CC0(v88, type metadata accessor for SectionMetrics);
            sub_1E65E23D8();
            _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
            sub_1E6217CC0(v89, type metadata accessor for SectionMetrics);
            sub_1E65E5BA8();
            type metadata accessor for LocalizationBundle();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v93 = [objc_opt_self() bundleForClass_];
            sub_1E65E23E8();
            sub_1E65E5D48();
            (v91)(v111, *MEMORY[0x1E69CBCB0], v119);
            sub_1E6427498(MEMORY[0x1E69E7CC0]);
            sub_1E65D8678();
            v94 = v87[8];
            v95 = sub_1E65DA208();
            (*(*(v95 - 8) + 56))(v86 + v94, 1, 1, v95);
            (v91)(v86 + v87[14], v123, v119);
            v96 = v87[15];
            v97 = *MEMORY[0x1E69CC448];
            v98 = sub_1E65D9908();
            v99 = *(v98 - 8);
            (*(v99 + 104))(v86 + v96, v97, v98);
            (*(v99 + 56))(v86 + v96, 0, 1, v98);
            v100 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
            *(v86 + v87[7]) = v126;
            v101 = (v86 + v87[9]);
            *v101 = 0;
            v101[1] = 0;
            v102 = (v86 + v87[10]);
            *v102 = 0;
            v102[1] = 0;
            *(v86 + v87[11]) = v100;
            v103 = (v86 + v87[12]);
            *v103 = 0;
            v103[1] = 0;
            *(v86 + v87[13]) = xmmword_1E65F4AC0;
            v104 = *(v130 + 56);
            v138 = (*(v130 + 48) + **(v130 + 48));
            v105 = *(*(v130 + 48) + 4);
            v106 = swift_task_alloc();
            *(v10 + 280) = v106;
            *v106 = v10;
            v106[1] = sub_1E6204DB0;
            v47 = *(v10 + 120);
            goto LABEL_8;
          }
        }

        (*(*(v10 + 152) + 8))(*(v10 + 160), *(v10 + 144));
      }

      else
      {
        sub_1E5DFE50C(*(v10 + 176), &qword_1ED076B70, &qword_1E65F7850);
      }
    }
  }

  else if ((EnumCaseMultiPayload - 3) >= 2)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v17 = *(v10 + 128);
      v19 = *(v10 + 104);
      v18 = *(v10 + 112);
      v20 = *(v10 + 88);
      v21 = *(v10 + 96);
      v112 = v20;
      v22 = *(v10 + 80);
      v118 = *(v10 + 72);
      v121 = *(v10 + 64);
      v124 = *(v10 + 56);
      v132 = *(v10 + 48);
      v117 = *(v10 + 40);
      v23 = sub_1E65D9D78();
      (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
      v24 = v18[5];
      v25 = *MEMORY[0x1E69CBAA0];
      v26 = sub_1E65D8C68();
      (*(*(v26 - 8) + 104))(v17 + v24, v25, v26);
      v27 = v18[6];
      v28 = sub_1E65D74E8();
      (*(*(v28 - 8) + 56))(v17 + v27, 1, 1, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
      v29 = *(sub_1E65D86A8() - 8);
      v120 = *(v29 + 72);
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_1E65EB9E0;
      v115 = *(v21 + 104);
      v115(v19, *MEMORY[0x1E69CBCC8], v20);
      v107 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
      sub_1E65D8678();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B68, &qword_1E65F7848);
      sub_1E65E23D8();
      v31 = v22[1];
      v110 = *v22;

      sub_1E6217CC0(v22, type metadata accessor for SectionMetrics);
      sub_1E65E23D8();
      _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      sub_1E6217CC0(v118, type metadata accessor for SectionMetrics);
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v32 = swift_getObjCClassFromMetadata();
      v33 = [objc_opt_self() bundleForClass_];
      sub_1E65E23E8();
      sub_1E65E5D48();
      v115(v19, *MEMORY[0x1E69CBCB0], v20);
      sub_1E6427498(MEMORY[0x1E69E7CC0]);
      sub_1E65D8678();
      v34 = v18[8];
      v35 = sub_1E65DA208();
      (*(*(v35 - 8) + 56))(v17 + v34, 1, 1, v35);
      v115(v17 + v18[14], *MEMORY[0x1E69CBCF0], v112);
      v36 = v18[15];
      v37 = *MEMORY[0x1E69CC488];
      v38 = sub_1E65D9908();
      v39 = *(v38 - 8);
      (*(v39 + 104))(v17 + v36, v37, v38);
      (*(v39 + 56))(v17 + v36, 0, 1, v38);
      v40 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v17 + v18[7]) = v128;
      v41 = (v17 + v18[9]);
      *v41 = 0;
      v41[1] = 0;
      v42 = (v17 + v18[10]);
      *v42 = 0;
      v42[1] = 0;
      *(v17 + v18[11]) = v40;
      v43 = (v17 + v18[12]);
      *v43 = 0;
      v43[1] = 0;
      *(v17 + v18[13]) = xmmword_1E65F7740;
      v44 = *(v132 + 56);
      v138 = (*(v132 + 48) + **(v132 + 48));
      v45 = *(*(v132 + 48) + 4);
      v46 = swift_task_alloc();
      *(v10 + 264) = v46;
      *v46 = v10;
      v46[1] = sub_1E6204C9C;
      v47 = *(v10 + 128);
LABEL_8:

      return v138(v47);
    }

    v53 = *(v10 + 312);
    if (sub_1E65E2DA8())
    {
      v54 = *(v10 + 48);
      v55 = *(v54 + 24);
      v139 = (*(v54 + 16) + **(v54 + 16));
      v56 = *(*(v54 + 16) + 4);
      v57 = swift_task_alloc();
      *(v10 + 296) = v57;
      *v57 = v10;
      v57[1] = sub_1E620542C;

      return v139();
    }
  }

  v65 = *(v10 + 248);
  v64 = *(v10 + 256);
  v67 = *(v10 + 216);
  v66 = *(v10 + 224);
  v68 = v10;
  v69 = *(v10 + 208);
  v71 = v68[22];
  v70 = v68[23];
  v72 = v68[20];
  v73 = v68[16];
  v74 = v68[17];
  v122 = v68[15];
  v125 = v68[13];
  v129 = v68[10];
  v133 = v68[9];
  v136 = v68[8];
  v140 = v68[7];

  v75 = v68[1];

  return v75();
}