uint64_t sub_1D0B33F48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9868, &unk_1D0B66B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Daemon.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Daemon.init()();
  return v3;
}

void *Daemon.init()()
{
  v1 = v0;
  v2 = sub_1D0B63AA0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AB0, &qword_1D0B65730);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v53 - v8);
  v10 = sub_1D0B63970();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AB8, &qword_1D0B65738);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v53 - v18);
  sub_1D0B640B0();
  *v19 = sub_1D0B63D90();
  v19[1] = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E699DD30], v15);
  sub_1D0B35628(&unk_1F4CD3660);
  sub_1D0B35790(&unk_1F4CD3680);
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AC0, &unk_1D0B65740));
  v1[33] = sub_1D0B639C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AC8, &qword_1D0B659A0);
  v1[36] = sub_1D0B638D0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AD0, &qword_1D0B65750);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v1[37] = sub_1D0B638E0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AD8, &qword_1D0B65758);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v1[35] = sub_1D0B63890();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AE0, &unk_1D0B65760);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v1[34] = sub_1D0B638C0();
  sub_1D0B63960();
  (*(v11 + 32))(v1 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore6Daemon_sigTermHandler, v14, v10);
  v31 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v32 = type metadata accessor for HealthStore();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  v36 = v31;
  swift_defaultActor_initialize();
  sub_1D0B63480();
  *(v35 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_assertion) = 0;
  *(v35 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore) = v36;
  v37 = objc_allocWithZone(type metadata accessor for WorkoutDatabaseClient());
  v54 = v36;
  *(v35 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_workoutDatabaseClient) = sub_1D0B4A568(v54);
  v1[5] = v32;
  v1[6] = &protocol witness table for HealthStore;
  v1[2] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AE8, &qword_1D0B65990);
  *v9 = 0xD00000000000002DLL;
  v9[1] = 0x80000001D0B671E0;
  v38 = *MEMORY[0x1E699DCF0];
  v39 = *(v6 + 104);
  v39(v9, v38, v5);
  v1[32] = sub_1D0B63980();
  *v9 = 0xD00000000000002CLL;
  v9[1] = 0x80000001D0B67210;
  v39(v9, v38, v5);
  v1[15] = sub_1D0B63980();
  *v9 = 0xD00000000000002CLL;
  v9[1] = 0x80000001D0B67210;
  v39(v9, v38, v5);
  sub_1D0B63A90();
  v59 = sub_1D0B63BF0();
  v60 = MEMORY[0x1E699E318];
  __swift_allocate_boxed_opaque_existential_1(&v58);
  sub_1D0B63BE0();
  sub_1D0B20A40(&v58, (v1 + 7));
  sub_1D0B357E4((v1 + 2), v57);
  sub_1D0B357E4((v1 + 7), v56);
  v59 = &type metadata for FitnessContextSystem;
  v60 = &off_1F4CD3BD0;
  v40 = swift_allocObject();
  *&v58 = v40;
  sub_1D0B357E4(v57, v40 + 16);
  sub_1D0B357E4(v56, v40 + 56);
  v41 = [objc_allocWithZone(MEMORY[0x1E695FBC8]) init];
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v57);
  *(v40 + 96) = v41;
  sub_1D0B20A40(&v58, (v1 + 16));
  sub_1D0B357E4((v1 + 16), (v1 + 21));
  v42 = v1[32];
  v43 = v1[33];
  v1[26] = v43;
  v44 = v1[15];
  v46 = v1[34];
  v45 = v1[35];
  v1[12] = v43;
  v1[13] = v45;
  v1[14] = v44;
  v47 = v1[36];
  v48 = v1[37];
  v59 = &type metadata for InferenceListener;
  v60 = &off_1F4CD3A28;
  v49 = swift_allocObject();
  *&v58 = v49;
  v50 = v43;
  swift_retain_n();
  v51 = v50;

  v49[2] = v46;
  v49[3] = v45;
  v49[4] = v42;
  v49[5] = v47;
  v49[6] = v48;
  v49[7] = v51;
  sub_1D0B20A40(&v58, (v1 + 27));
  return v1;
}

uint64_t Daemon.activate()()
{
  v1[2] = v0;
  sub_1D0B643F0();
  v1[3] = sub_1D0B643E0();
  v3 = sub_1D0B64390();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D0B34760, v3, v2);
}

uint64_t sub_1D0B34760()
{
  v1 = v0[2];
  v0[6] = OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore6Daemon_logger;
  v2 = sub_1D0B640A0();
  v3 = sub_1D0B644F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D0B1E000, v2, v3, "Daemon starting...", v4, 2u);
    MEMORY[0x1D387E1B0](v4, -1, -1);
  }

  v5 = v0[2];

  sub_1D0B63950();
  sub_1D0B2D550();
  v6 = v0[2];
  v8 = v6[12];
  v7 = v6[13];
  v9 = v6[14];
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_1D0B349E0;

  return sub_1D0B46E64(v8, v7, v9);
}

uint64_t sub_1D0B349E0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1D0B34F00;
  }

  else
  {
    v7 = sub_1D0B34B1C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D0B34B1C()
{
  v1 = *(v0 + 16);
  v2 = v1[30];
  v3 = v1[31];
  __swift_project_boxed_opaque_existential_1(v1 + 27, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1D0B34C44;

  return v8(v2, v3);
}

uint64_t sub_1D0B34C44()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1D0B3505C;
  }

  else
  {
    v7 = sub_1D0B34D80;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D0B34D80()
{
  v1 = v0[10];
  v3 = v0[2];
  v2 = v0[3];

  v4 = v3[33];
  sub_1D0B639B0();
  v5 = v3[35];
  sub_1D0B63880();
  v6 = v3[34];
  sub_1D0B638B0();
  v7 = v3[37];
  sub_1D0B63900();
  if (v1)
  {
    v8 = v0[6];
    v9 = v0[2];
    v10 = v1;
    v11 = sub_1D0B640A0();
    v12 = sub_1D0B644D0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1D0B1E000, v11, v12, "Daemon failed to start: %@", v13, 0xCu);
      sub_1D0B33F48(v14);
      MEMORY[0x1D387E1B0](v14, -1, -1);
      MEMORY[0x1D387E1B0](v13, -1, -1);
    }

    else
    {
    }
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D0B34F00()
{
  v1 = v0[3];

  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = v2;
  v6 = sub_1D0B640A0();
  v7 = sub_1D0B644D0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D0B1E000, v6, v7, "Daemon failed to start: %@", v8, 0xCu);
    sub_1D0B33F48(v9);
    MEMORY[0x1D387E1B0](v9, -1, -1);
    MEMORY[0x1D387E1B0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D0B3505C()
{
  v1 = v0[3];

  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[2];
  v5 = v2;
  v6 = sub_1D0B640A0();
  v7 = sub_1D0B644D0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D0B1E000, v6, v7, "Daemon failed to start: %@", v8, 0xCu);
    sub_1D0B33F48(v9);
    MEMORY[0x1D387E1B0](v9, -1, -1);
    MEMORY[0x1D387E1B0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t Daemon.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 112);

  v4 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  sub_1D0B35848(v0 + 168);
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  v5 = *(v0 + 256);

  v6 = *(v0 + 272);

  v7 = *(v0 + 280);

  v8 = *(v0 + 288);

  v9 = *(v0 + 296);

  v10 = OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore6Daemon_sigTermHandler;
  v11 = sub_1D0B63970();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore6Daemon_logger;
  v13 = sub_1D0B640C0();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  Daemon.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D0B35330(uint64_t a1)
{
  v2 = sub_1D0B63490();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AF0, &qword_1D0B65860);
    v10 = sub_1D0B645E0();
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
      sub_1D0B35A30(&qword_1EE052C78);
      v18 = sub_1D0B64210();
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
          sub_1D0B35A30(&qword_1EE052C70);
          v25 = sub_1D0B64250();
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D0B35628(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F99B8, &unk_1D0B65660);
    v3 = sub_1D0B645E0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1D0B64880();

      sub_1D0B642B0();
      result = sub_1D0B648A0();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1D0B647D0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D0B357E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for Daemon()
{
  result = qword_1EE052BF8;
  if (!qword_1EE052BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D0B358F0()
{
  result = sub_1D0B63970();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1D0B640C0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D0B35A30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D0B63490();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TrainingLoadContext.make(for:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D0B640C0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_1D0B63C50() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_1D0B63C30();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AF8, &qword_1D0B65878) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B00, &qword_1D0B65880) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v13 = sub_1D0B63610();
  v3[17] = v13;
  v14 = *(v13 - 8);
  v3[18] = v14;
  v15 = *(v14 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B08, &qword_1D0B65888) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v17 = sub_1D0B636E0();
  v3[23] = v17;
  v18 = *(v17 - 8);
  v3[24] = v18;
  v19 = *(v18 + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B35D5C, 0, 0);
}

uint64_t sub_1D0B35D5C()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 112);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_1D0B35E8C;
  v7 = v0[22];
  v8 = v0[3];

  return v10(v7, v8, v2, v3);
}

uint64_t sub_1D0B35E8C()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D0B35F88, 0, 0);
}

uint64_t sub_1D0B35F88()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = &unk_1EC5F9B08;
    v5 = &unk_1D0B65888;
LABEL_5:
    sub_1D0B2B620(v3, v4, v5);
LABEL_6:
    v9 = 1;
    goto LABEL_7;
  }

  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  (*(v2 + 32))(v0[25], v3, v1);
  sub_1D0B636D0();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v3 = v0[16];
    (*(v0[24] + 8))(v0[25], v0[23]);
    v4 = &unk_1EC5F9B00;
    v5 = &unk_1D0B65880;
    goto LABEL_5;
  }

  v21 = v0[20];
  v22 = v0[21];
  v23 = v0[17];
  v24 = v0[18];
  (*(v24 + 32))(v22, v0[16], v23);
  v25 = *(v24 + 16);
  v25(v21, v22, v23);
  v26 = (*(v24 + 88))(v21, v23);
  if (v26 == *MEMORY[0x1E69A2E00])
  {
    v27 = v0[14];
    v28 = v0[9];
    v29 = v0[10];
    v30 = MEMORY[0x1E699E350];
LABEL_20:
    (*(v29 + 104))(v27, *v30, v28);
    (*(v29 + 56))(v27, 0, 1, v28);
    goto LABEL_21;
  }

  if (v26 == *MEMORY[0x1E69A2DF0])
  {
    v27 = v0[14];
    v28 = v0[9];
    v29 = v0[10];
    v30 = MEMORY[0x1E699E340];
    goto LABEL_20;
  }

  if (v26 == *MEMORY[0x1E69A2DE0])
  {
    v27 = v0[14];
    v28 = v0[9];
    v29 = v0[10];
    v30 = MEMORY[0x1E699E330];
    goto LABEL_20;
  }

  if (v26 == *MEMORY[0x1E69A2DE8])
  {
    v27 = v0[14];
    v28 = v0[9];
    v29 = v0[10];
    v30 = MEMORY[0x1E699E338];
    goto LABEL_20;
  }

  if (v26 == *MEMORY[0x1E69A2DF8])
  {
    v27 = v0[14];
    v28 = v0[9];
    v29 = v0[10];
    v30 = MEMORY[0x1E699E348];
    goto LABEL_20;
  }

  v64 = v0[20];
  v65 = v0[17];
  v66 = v0[18];
  (*(v0[10] + 56))(v0[14], 1, 1, v0[9]);
  (*(v66 + 8))(v64, v65);
LABEL_21:
  v31 = v0[15];
  v32 = v0[13];
  v33 = v0[9];
  v34 = v0[10];
  sub_1D0B36614(v0[14], v31);
  sub_1D0B36684(v31, v32);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v35 = v0[21];
    v36 = v0[19];
    v37 = v0[17];
    v38 = v0[7];
    sub_1D0B2B620(v0[13], &qword_1EC5F9AF8, &qword_1D0B65878);
    sub_1D0B63F70();
    v25(v36, v35, v37);
    v39 = sub_1D0B640A0();
    v40 = sub_1D0B644D0();
    v41 = os_log_type_enabled(v39, v40);
    v43 = v0[18];
    v42 = v0[19];
    v44 = v0[17];
    if (v41)
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      v46 = sub_1D0B63600();
      v77 = *(v43 + 8);
      v77(v42, v44);
      *(v45 + 4) = v46;
      _os_log_impl(&dword_1D0B1E000, v39, v40, "Unhandled TrainingLoadBand: %ld", v45, 0xCu);
      MEMORY[0x1D387E1B0](v45, -1, -1);
    }

    else
    {
      v77 = *(v43 + 8);
      v77(v0[19], v0[17]);
    }

    v55 = v39;
    v56 = v0[24];
    v75 = v0[25];
    v57 = v0[23];
    v58 = v0[21];
    v59 = v0[17];
    v60 = v0[15];
    v61 = v0[6];
    v62 = v0[7];
    v63 = v0[5];

    (*(v61 + 8))(v62, v63);
    sub_1D0B2B620(v60, &qword_1EC5F9AF8, &qword_1D0B65878);
    v77(v58, v59);
    (*(v56 + 8))(v75, v57);
    goto LABEL_6;
  }

  v47 = v0[24];
  v74 = v0[23];
  v78 = v0[25];
  v48 = v0[18];
  v70 = v0[17];
  v72 = v0[21];
  v49 = v0[15];
  v50 = v0[12];
  v51 = v0[10];
  v52 = v0[11];
  v53 = v0[9];
  v54 = v0[2];
  (*(v51 + 32))(v50, v0[13], v53);
  (*(v51 + 16))(v52, v50, v53);
  sub_1D0B63C40();
  sub_1D0B63D50();
  (*(v51 + 8))(v50, v53);
  sub_1D0B2B620(v49, &qword_1EC5F9AF8, &qword_1D0B65878);
  (*(v48 + 8))(v72, v70);
  (*(v47 + 8))(v78, v74);
  v9 = 0;
LABEL_7:
  v10 = v0[25];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[19];
  v14 = v0[20];
  v16 = v0[15];
  v15 = v0[16];
  v67 = v0[14];
  v68 = v0[13];
  v69 = v0[12];
  v71 = v0[11];
  v73 = v0[8];
  v76 = v0[7];
  v17 = v0[2];
  v18 = sub_1D0B63D60();
  (*(*(v18 - 8) + 56))(v17, v9, 1, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D0B36614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AF8, &qword_1D0B65878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0B36684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AF8, &qword_1D0B65878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0B366F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D0B3673C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D0B36798()
{
  v1[27] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B10, &qword_1D0B65968);
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B18, &qword_1D0B65970);
  v1[31] = v5;
  v6 = *(v5 - 8);
  v1[32] = v6;
  v7 = *(v6 + 64) + 15;
  v1[33] = swift_task_alloc();
  v8 = sub_1D0B63CA0();
  v1[34] = v8;
  v9 = *(v8 - 8);
  v1[35] = v9;
  v10 = *(v9 + 64) + 15;
  v1[36] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B20, &qword_1D0B65978);
  v1[37] = v11;
  v12 = *(v11 - 8);
  v1[38] = v12;
  v13 = *(v12 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B28, &unk_1D0B65980);
  v1[42] = v14;
  v15 = *(v14 - 8);
  v1[43] = v15;
  v16 = *(v15 + 64) + 15;
  v1[44] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9990, &unk_1D0B65DB0);
  v1[45] = v17;
  v18 = *(v17 - 8);
  v1[46] = v18;
  v19 = *(v18 + 64) + 15;
  v1[47] = swift_task_alloc();
  v20 = sub_1D0B640C0();
  v1[48] = v20;
  v21 = *(v20 - 8);
  v1[49] = v21;
  v22 = *(v21 + 64) + 15;
  v1[50] = swift_task_alloc();
  sub_1D0B643F0();
  v1[51] = sub_1D0B643E0();
  v24 = sub_1D0B64390();
  v1[52] = v24;
  v1[53] = v23;

  return MEMORY[0x1EEE6DFA0](sub_1D0B36B08, v24, v23);
}

uint64_t sub_1D0B36B08()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v7 = *(v0 + 216);
  sub_1D0B63F70();
  sub_1D0B64090();
  (*(v2 + 8))(v1, v3);
  v8 = *(v7 + 40);
  *(v0 + 432) = v8;
  v8;
  sub_1D0B639A0();
  v9 = *(v7 + 16);
  *(v0 + 440) = v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AE8, &qword_1D0B65990);
  *(v0 + 40) = v43;
  v10 = sub_1D0B3A650(&qword_1EE052C40, &qword_1EC5F9AE8, &qword_1D0B65990);
  *(v0 + 16) = v9;
  v42 = v10;
  *(v0 + 48) = v10;
  v46 = v9;
  swift_retain_n();
  sub_1D0B64410();
  v36 = *MEMORY[0x1E699DCE0];
  (*(v6 + 104))(v4);
  *(v0 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B30, &unk_1D0B65DF0);
  v11 = sub_1D0B63C90();
  *(v0 + 456) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  *(v0 + 464) = v13;
  v14 = *(v12 + 80);
  *(v0 + 920) = v14;
  v15 = (v14 + 32) & ~v14;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D0B65890;
  v41 = v15;
  v16 = v45 + v15;
  v17 = *MEMORY[0x1E699E370];
  v18 = *(v12 + 104);
  *(v0 + 472) = v18;
  *(v0 + 480) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v40 = v17;
  v18(v16);
  v39 = *MEMORY[0x1E699E378];
  v18(v16 + v13);
  v38 = *MEMORY[0x1E699E3B8];
  v18(v16 + 2 * v13);
  v37 = *MEMORY[0x1E699E3C8];
  v18(v16 + 3 * v13);
  v35 = *MEMORY[0x1E699E3F0];
  v18(v16 + 4 * v13);
  v34 = *MEMORY[0x1E699E390];
  v18(v16 + 5 * v13);
  v33 = *MEMORY[0x1E699E3E0];
  v18(v16 + 6 * v13);
  v32 = *MEMORY[0x1E699E380];
  v18(v16 + 7 * v13);
  v31 = *MEMORY[0x1E699E388];
  v18(v16 + 8 * v13);
  (v18)(v16 + 9 * v13, *MEMORY[0x1E699E398], v11);
  v30 = *MEMORY[0x1E699E3F8];
  v18(v16 + 10 * v13);
  v29 = *MEMORY[0x1E699E418];
  v18(v16 + 11 * v13);
  (v18)(v16 + 12 * v13, *MEMORY[0x1E699E450], v11);
  (v18)(v16 + 13 * v13, *MEMORY[0x1E699E3C0], v11);
  v28 = *MEMORY[0x1E699E3D8];
  v18(v16 + 14 * v13);
  (v18)(v16 + 15 * v13, *MEMORY[0x1E699E440], v11);
  v44 = *MEMORY[0x1E699E3D0];
  v18(v16 + 16 * v13);
  sub_1D0B63930();
  v19 = *(v0 + 344);
  v26 = *(v0 + 352);
  v27 = *(v0 + 336);
  v20 = *(v0 + 216);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 488) = *(v20 + 32);
  sub_1D0B638F0();
  *(v0 + 80) = v43;
  *(v0 + 88) = v42;
  *(v0 + 56) = v46;
  sub_1D0B64410();
  (*(v19 + 104))(v26, v36, v27);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D0B658A0;
  v22 = v21 + v41;
  (v18)(v21 + v41, v40, v11);
  (v18)(v22 + v13, v39, v11);
  (v18)(v22 + 2 * v13, v38, v11);
  (v18)(v22 + 3 * v13, v37, v11);
  (v18)(v22 + 4 * v13, v35, v11);
  (v18)(v22 + 5 * v13, v34, v11);
  (v18)(v22 + 6 * v13, v33, v11);
  (v18)(v22 + 7 * v13, v32, v11);
  (v18)(v22 + 8 * v13, v31, v11);
  (v18)(v22 + 9 * v13, v30, v11);
  (v18)(v22 + 10 * v13, v29, v11);
  (v18)(v22 + 11 * v13, v28, v11);
  (v18)(v22 + 12 * v13, v44, v11);
  sub_1D0B63930();
  *(v0 + 496) = 0;
  (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_1D0B3A650(&qword_1EE052C38, &qword_1EC5F9AE8, &qword_1D0B65990);
  v24 = sub_1D0B64390();
  *(v0 + 504) = v24;
  *(v0 + 512) = v23;

  return MEMORY[0x1EEE6DFA0](sub_1D0B37464, v24, v23);
}

uint64_t sub_1D0B37464()
{
  v1 = v0[55];
  v0[65] = sub_1D0B63990();
  v2 = v0[52];
  v3 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B374CC, v2, v3);
}

uint64_t sub_1D0B374CC()
{
  v17 = *(v0 + 480);
  v18 = *(v0 + 520);
  v1 = *(v0 + 464);
  v15 = *(v0 + 456);
  v16 = *(v0 + 472);
  v14 = *(v0 + 448);
  v2 = *(v0 + 432);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = (*(v0 + 920) + 32) & ~*(v0 + 920);
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AC0, &unk_1D0B65740);
  *(v0 + 128) = sub_1D0B3A650(&qword_1EE052C30, &qword_1EC5F9AC0, &unk_1D0B65740);
  *(v0 + 96) = v2;
  v7 = *MEMORY[0x1E699DCD0];
  v8 = *(v5 + 104);
  *(v0 + 528) = v8;
  *(v0 + 536) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v3, v7, v4);
  v9 = swift_allocObject();
  *(v0 + 544) = v9;
  *(v9 + 16) = xmmword_1D0B658B0;
  *(v0 + 924) = *MEMORY[0x1E699E3A0];
  v10 = v9 + v6;
  v16(v9 + v6);
  (v16)(v10 + v1, *MEMORY[0x1E699E448], v15);
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B38, &qword_1D0B65998);
  *(v0 + 560) = sub_1D0B3A650(&qword_1EE052C58, &qword_1EC5F9B38, &qword_1D0B65998);
  v12 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B376CC, v12, v11);
}

uint64_t sub_1D0B376CC()
{
  v1 = v0[68];
  v2 = v0[65];
  v3 = v0[62];
  v4 = v0[41];
  sub_1D0B63920();
  v0[71] = v3;
  v5 = v0[68];
  v6 = v0[65];
  v7 = v0[41];
  v8 = v0[37];
  v9 = v0[38];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (v3)
  {
    v11(v7, v8);

    v13 = v0[52];
    v14 = v0[53];
    v15 = sub_1D0B39014;
  }

  else
  {
    v0[72] = v11;
    v0[73] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v8);

    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    v13 = v0[63];
    v14 = v0[64];
    v15 = sub_1D0B377C8;
  }

  return MEMORY[0x1EEE6DFA0](v15, v13, v14);
}

uint64_t sub_1D0B377C8()
{
  v1 = v0[55];
  v0[74] = sub_1D0B63990();
  v2 = v0[52];
  v3 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B37830, v2, v3);
}

uint64_t sub_1D0B37830()
{
  v20 = *(v0 + 592);
  v21 = *(v0 + 560);
  v19 = *(v0 + 552);
  v18 = *(v0 + 924);
  v13 = *(v0 + 528);
  v14 = *(v0 + 536);
  v16 = *(v0 + 472);
  v17 = *(v0 + 480);
  v1 = *(v0 + 464);
  v15 = *(v0 + 456);
  v2 = *(v0 + 448);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = (*(v0 + 920) + 32) & ~*(v0 + 920);
  v6 = *(*(v0 + 216) + 24);
  *(v0 + 600) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AC8, &qword_1D0B659A0);
  *(v0 + 608) = v7;
  *(v0 + 160) = v7;
  v8 = sub_1D0B3A650(&qword_1EE052C60, &qword_1EC5F9AC8, &qword_1D0B659A0);
  *(v0 + 616) = v8;
  *(v0 + 168) = v8;
  *(v0 + 136) = v6;
  swift_retain_n();
  sub_1D0B64420();
  *(v0 + 928) = *MEMORY[0x1E699DCC8];
  v13(v3);
  v9 = swift_allocObject();
  *(v0 + 624) = v9;
  *(v9 + 16) = xmmword_1D0B658C0;
  v16(v9 + v5, v18, v15);
  v11 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B379E0, v11, v10);
}

uint64_t sub_1D0B379E0()
{
  v1 = v0[78];
  v2 = v0[74];
  v3 = v0[71];
  v4 = v0[40];
  sub_1D0B63920();
  v0[79] = v3;
  v5 = v0[78];
  if (v3)
  {
    v6 = v0[75];
    v7 = v0[74];
    v8 = v0[73];
    v9 = v0[72];
    v10 = v0[40];
    v11 = v0[37];
    v12 = v0[78];

    v9(v10, v11);
    v13 = v0[52];
    v14 = v0[53];
    v15 = sub_1D0B39104;
  }

  else
  {
    v16 = v0[74];
    v17 = v0[73];
    (v0[72])(v0[40], v0[37]);

    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    v13 = v0[63];
    v14 = v0[64];
    v15 = sub_1D0B37AF8;
  }

  return MEMORY[0x1EEE6DFA0](v15, v13, v14);
}

uint64_t sub_1D0B37AF8()
{
  v1 = v0[55];
  v0[80] = sub_1D0B63990();
  v2 = v0[52];
  v3 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B37B60, v2, v3);
}

uint64_t sub_1D0B37B60()
{
  v17 = *(v0 + 928);
  v1 = *(v0 + 600);
  v19 = *(v0 + 560);
  v20 = *(v0 + 640);
  v15 = *(v0 + 528);
  v16 = *(v0 + 536);
  v2 = *(v0 + 472);
  v3 = *(v0 + 480);
  v5 = *(v0 + 456);
  v4 = *(v0 + 464);
  v14 = *(v0 + 448);
  v6 = *(v0 + 312);
  v7 = *(v0 + 296);
  v18 = *(v0 + 552);
  v8 = (*(v0 + 920) + 32) & ~*(v0 + 920);
  *(v0 + 200) = *(v0 + 608);
  *(v0 + 176) = v1;
  sub_1D0B64410();
  v15(v6, v17, v7);
  v9 = swift_allocObject();
  *(v0 + 648) = v9;
  *(v9 + 16) = xmmword_1D0B658D0;
  v10 = v9 + v8;
  v2(v10, *MEMORY[0x1E699E420], v5);
  v2(v10 + v4, *MEMORY[0x1E699E408], v5);
  v2(v10 + 2 * v4, *MEMORY[0x1E699E3E8], v5);
  v12 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B37CE4, v12, v11);
}

uint64_t sub_1D0B37CE4()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 312);
  sub_1D0B63920();
  *(v0 + 656) = v3;
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);
  v7 = *(v0 + 584);
  (*(v0 + 576))(*(v0 + 312), *(v0 + 296));

  if (v3)
  {
    v8 = *(v0 + 416);
    v9 = *(v0 + 424);
    v10 = sub_1D0B391F4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    v8 = *(v0 + 416);
    v9 = *(v0 + 424);
    v10 = sub_1D0B37DB0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1D0B37DB0()
{
  v18 = *(v0 + 928);
  v21 = *(v0 + 600);
  v22 = *(v0 + 488);
  v19 = *(v0 + 432);
  v20 = *(v0 + 440);
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  v7 = *(v0 + 216);
  *(v0 + 664) = *v7;
  *(v0 + 672) = sub_1D0B638A0();
  v8 = *MEMORY[0x1E699E468];
  v9 = *(v1 + 104);
  *(v0 + 680) = v9;
  *(v0 + 688) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v2, v8, v3);
  sub_1D0B64430();
  v10 = *(v6 + 104);
  *(v0 + 696) = v10;
  *(v0 + 704) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v4, v18, v5);
  *(v0 + 712) = *(v7 + 8);
  v11 = swift_allocObject();
  *(v0 + 720) = v11;
  v13 = *(v7 + 16);
  v12 = *(v7 + 32);
  v11[1] = *v7;
  v11[2] = v13;
  v11[3] = v12;
  v14 = v19;

  *(v0 + 728) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B40, &qword_1D0B659B8);
  *(v0 + 736) = sub_1D0B3A650(&qword_1EE052C50, &qword_1EC5F9B40, &qword_1D0B659B8);
  v16 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B37FA4, v16, v15);
}

uint64_t sub_1D0B37FA4()
{
  v1 = v0[90];
  v2 = v0[84];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[31];
  v8 = v0[32];
  sub_1D0B63910();

  v9 = *(v8 + 8);
  v0[93] = v9;
  v0[94] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v7);
  v10 = *(v4 + 8);
  v0[95] = v10;
  v0[96] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v5);
  v11 = v0[52];
  v12 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B380B0, v11, v12);
}

uint64_t sub_1D0B380B0()
{
  v24 = *(v0 + 728);
  v25 = *(v0 + 736);
  v16 = *(v0 + 696);
  v17 = *(v0 + 704);
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 928);
  v21 = *(v0 + 600);
  v22 = *(v0 + 488);
  v23 = *(v0 + 712);
  v19 = *(v0 + 664);
  v20 = *(v0 + 440);
  v18 = *(v0 + 432);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 216);
  *(v0 + 776) = sub_1D0B638A0();
  v2(v4, *MEMORY[0x1E699E460], v5);
  sub_1D0B64430();
  v16(v6, v3, v7);
  v9 = swift_allocObject();
  *(v0 + 784) = v9;
  v11 = v8[1];
  v10 = v8[2];
  v9[1] = *v8;
  v9[2] = v11;
  v9[3] = v10;
  v12 = v18;

  v14 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B38234, v14, v13);
}

uint64_t sub_1D0B38234()
{
  v1 = v0[98];
  v2 = v0[97];
  v13 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[93];
  v6 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  sub_1D0B63910();

  v5(v8, v9);
  v3(v6, v7);
  v10 = v0[52];
  v11 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B38328, v10, v11);
}

uint64_t sub_1D0B38328()
{
  v24 = *(v0 + 728);
  v25 = *(v0 + 736);
  v16 = *(v0 + 696);
  v17 = *(v0 + 704);
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 928);
  v21 = *(v0 + 600);
  v22 = *(v0 + 488);
  v23 = *(v0 + 712);
  v19 = *(v0 + 664);
  v20 = *(v0 + 440);
  v18 = *(v0 + 432);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 216);
  *(v0 + 792) = sub_1D0B638A0();
  v2(v4, *MEMORY[0x1E699E478], v5);
  sub_1D0B64430();
  v16(v6, v3, v7);
  v9 = swift_allocObject();
  *(v0 + 800) = v9;
  v11 = v8[1];
  v10 = v8[2];
  v9[1] = *v8;
  v9[2] = v11;
  v9[3] = v10;
  v12 = v18;

  v14 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B384AC, v14, v13);
}

uint64_t sub_1D0B384AC()
{
  v1 = v0[100];
  v2 = v0[99];
  v13 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[93];
  v6 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  sub_1D0B63910();

  v5(v8, v9);
  v3(v6, v7);
  v10 = v0[52];
  v11 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B385A0, v10, v11);
}

uint64_t sub_1D0B385A0()
{
  v24 = *(v0 + 728);
  v25 = *(v0 + 736);
  v16 = *(v0 + 696);
  v17 = *(v0 + 704);
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 928);
  v21 = *(v0 + 600);
  v22 = *(v0 + 488);
  v23 = *(v0 + 712);
  v19 = *(v0 + 664);
  v20 = *(v0 + 440);
  v18 = *(v0 + 432);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 216);
  *(v0 + 808) = sub_1D0B638A0();
  v2(v4, *MEMORY[0x1E699E470], v5);
  sub_1D0B64410();
  v16(v6, v3, v7);
  v9 = swift_allocObject();
  *(v0 + 816) = v9;
  v11 = v8[1];
  v10 = v8[2];
  v9[1] = *v8;
  v9[2] = v11;
  v9[3] = v10;
  v12 = v18;

  v14 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B38720, v14, v13);
}

uint64_t sub_1D0B38720()
{
  v1 = v0[102];
  v2 = v0[101];
  v13 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[93];
  v6 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  sub_1D0B63910();

  v5(v8, v9);
  v3(v6, v7);
  v10 = v0[52];
  v11 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B38814, v10, v11);
}

uint64_t sub_1D0B38814()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 928);
  v17 = *(v0 + 600);
  v18 = *(v0 + 664);
  v19 = *(v0 + 488);
  v3 = *(v0 + 432);
  v4 = *(v0 + 440);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  *(v0 + 824) = sub_1D0B63870();
  *(v0 + 932) = 3;
  sub_1D0B64400();
  v9 = *(v5 + 104);
  *(v0 + 832) = v9;
  *(v0 + 840) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v6, v2, v8);
  v10 = swift_allocObject();
  *(v0 + 848) = v10;
  v12 = v7[1];
  v11 = v7[2];
  v10[1] = *v7;
  v10[2] = v12;
  v10[3] = v11;
  v13 = v3;

  *(v0 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B48, &qword_1D0B65A00);
  *(v0 + 864) = sub_1D0B3A650(&qword_1EE052C48, &qword_1EC5F9B48, &qword_1D0B65A00);
  v15 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B389C0, v15, v14);
}

uint64_t sub_1D0B389C0()
{
  v1 = v0[106];
  v2 = v0[103];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  sub_1D0B63910();

  v6 = *(v4 + 8);
  v0[109] = v6;
  v0[110] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v0[52];
  v8 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B38A98, v7, v8);
}

uint64_t sub_1D0B38A98()
{
  v20 = *(v0 + 856);
  v21 = *(v0 + 864);
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 712);
  v4 = *(v0 + 928);
  v17 = *(v0 + 600);
  v18 = *(v0 + 664);
  v19 = *(v0 + 488);
  v5 = *(v0 + 432);
  v16 = *(v0 + 440);
  v6 = *(v0 + 240);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  *(v0 + 888) = sub_1D0B63870();
  *(v0 + 933) = 1;
  sub_1D0B64430();
  v2(v6, v4, v7);
  v9 = swift_allocObject();
  *(v0 + 896) = v9;
  v11 = v8[1];
  v10 = v8[2];
  v9[1] = *v8;
  v9[2] = v11;
  v9[3] = v10;
  v12 = v5;

  v14 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B38BF0, v14, v13);
}

uint64_t sub_1D0B38BF0()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[30];
  v6 = v0[28];
  sub_1D0B63910();

  v4(v5, v6);
  v7 = v0[52];
  v8 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B38CB4, v7, v8);
}

uint64_t sub_1D0B38CB4()
{
  v24 = *(v0 + 728);
  v25 = *(v0 + 736);
  v16 = *(v0 + 696);
  v17 = *(v0 + 704);
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 928);
  v21 = *(v0 + 600);
  v22 = *(v0 + 488);
  v23 = *(v0 + 712);
  v19 = *(v0 + 664);
  v20 = *(v0 + 440);
  v18 = *(v0 + 432);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 216);
  *(v0 + 904) = sub_1D0B638A0();
  v2(v4, *MEMORY[0x1E699E458], v5);
  sub_1D0B64430();
  v16(v6, v3, v7);
  v9 = swift_allocObject();
  *(v0 + 912) = v9;
  v11 = v8[1];
  v10 = v8[2];
  v9[1] = *v8;
  v9[2] = v11;
  v9[3] = v10;
  v12 = v18;

  v14 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B38E38, v14, v13);
}

uint64_t sub_1D0B38E38()
{
  v1 = v0[114];
  v2 = v0[113];
  v13 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[93];
  v6 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  sub_1D0B63910();

  v5(v8, v9);
  v3(v6, v7);
  v10 = v0[52];
  v11 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B38F2C, v10, v11);
}

uint64_t sub_1D0B38F2C()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[47];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  v8 = v0[36];
  v9 = v0[33];
  v10 = v0[30];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B39014()
{
  v1 = v0[51];

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = v0[71];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];
  v9 = v0[36];
  v10 = v0[33];
  v11 = v0[30];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D0B39104()
{
  v1 = v0[51];

  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v2 = v0[79];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];
  v9 = v0[36];
  v10 = v0[33];
  v11 = v0[30];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D0B391F4()
{
  v1 = v0[51];

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v2 = v0[82];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];
  v9 = v0[36];
  v10 = v0[33];
  v11 = v0[30];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D0B392E4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D0B63C90();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B393A4, 0, 0);
}

uint64_t sub_1D0B393A4()
{
  v1 = *(v0[2] + 16);
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E699E450], v0[3]);
  v2 = *(MEMORY[0x1E699DD18] + 4);
  v6 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1D0B39474;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1D0B39474()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[7] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B3A820, 0, 0);
  }

  else
  {
    v7 = v6[5];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_1D0B3961C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D0B63C90();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B396DC, 0, 0);
}

uint64_t sub_1D0B396DC()
{
  v1 = *(v0[2] + 16);
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E699E440], v0[3]);
  v2 = *(MEMORY[0x1E699DD18] + 4);
  v6 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1D0B397AC;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1D0B397AC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[7] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B39954, 0, 0);
  }

  else
  {
    v7 = v6[5];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_1D0B39954()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1D0B399B8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D0B63C90();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B39A78, 0, 0);
}

uint64_t sub_1D0B39A78()
{
  v1 = *(v0[2] + 16);
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E699E3C0], v0[3]);
  v2 = *(MEMORY[0x1E699DD18] + 4);
  v6 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1D0B39474;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1D0B39B48(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D0B63C90();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B39C14, 0, 0);
}

uint64_t sub_1D0B39C14()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v0[7] = *(v0[2] + 16);
  v4 = *MEMORY[0x1E699E450];
  v5 = *(v3 + 104);
  v0[8] = v5;
  v0[9] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v2);
  v6 = *(MEMORY[0x1E699DD18] + 4);
  v10 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1D0B39CF8;
  v8 = v0[6];

  return v10(v8);
}

uint64_t sub_1D0B39CF8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v10 = *v1;
  v2[11] = v0;

  v7 = *(v5 + 8);
  v2[12] = v7;
  v2[13] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  if (v0)
  {
    v8 = sub_1D0B3A100;
  }

  else
  {
    v8 = sub_1D0B39E7C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D0B39E7C()
{
  v1 = *(v0 + 72);
  (*(v0 + 64))(*(v0 + 40), *MEMORY[0x1E699E3D8], *(v0 + 24));
  v2 = *(MEMORY[0x1E699DD18] + 4);
  v7 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1D0B39F44;
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  return v7(v5);
}

uint64_t sub_1D0B39F44()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B3A16C, 0, 0);
  }

  else
  {
    v9 = v7[5];
    v8 = v7[6];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1D0B3A100()
{
  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D0B3A16C()
{
  v1 = v0[15];
  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D0B3A1D8()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = v0[2];
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_1D0B3A278;

  return sub_1D0B36798();
}

uint64_t sub_1D0B3A278()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D0B3A36C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2FC90;

  return sub_1D0B392E4(v0 + 16);
}

uint64_t sub_1D0B3A400()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2E1C4;

  return sub_1D0B3961C(v0 + 16);
}

uint64_t sub_1D0B3A494()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2FC90;

  return sub_1D0B392E4(v0 + 16);
}

uint64_t sub_1D0B3A528()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2FC90;

  return sub_1D0B399B8(v0 + 16);
}

uint64_t sub_1D0B3A5BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2FC90;

  return sub_1D0B39B48(v0 + 16);
}

uint64_t sub_1D0B3A650(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D0B3A698()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2FC90;

  return sub_1D0B392E4(v0 + 16);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D0B3A78C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2FC90;

  return sub_1D0B392E4(v0 + 16);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D0B3A858@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v26 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v23 = v9;
    v24 = a5;
    v15 = *(v9 + 16);
    v14 = v9 + 16;
    v25 = v15;
    v16 = (v14 - 8);
    v17 = a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    while (1)
    {
      v25(v12, v17, v8);
      v19 = v26(v12);
      if (v5)
      {
        return (*v16)(v12, v8);
      }

      if (v19)
      {
        break;
      }

      (*v16)(v12, v8);
      v17 += v18;
      if (!--v13)
      {
        v20 = 1;
        v9 = v23;
        a5 = v24;
        return (*(v9 + 56))(a5, v20, 1, v8);
      }
    }

    v9 = v23;
    a5 = v24;
    (*(v23 + 32))(v24, v12, v8);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  return (*(v9 + 56))(a5, v20, 1, v8);
}

uint64_t sub_1D0B3AA2C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D0B640C0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_1D0B64040();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_1D0B633F0();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v12 = sub_1D0B64010();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v15 = sub_1D0B64030();
  v2[21] = v15;
  v16 = *(v15 - 8);
  v2[22] = v16;
  v17 = *(v16 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B3AC98, 0, 0);
}

uint64_t sub_1D0B3AC98()
{
  v1 = v0[24];
  v2 = v0[20];
  sub_1D0B63F40();
  sub_1D0B64000();
  v3 = sub_1D0B64020();
  v4 = sub_1D0B64540();
  if (sub_1D0B64570())
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1D0B63FF0();
    _os_signpost_emit_with_name_impl(&dword_1D0B1E000, v3, v4, v7, "resolveContext", "", v6, 2u);
    MEMORY[0x1D387E1B0](v6, -1, -1);
  }

  v27 = v0[24];
  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[20];
  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[15];
  v15 = v0[4];

  (*(v12 + 16))(v10, v11, v13);
  v16 = sub_1D0B64070();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[25] = sub_1D0B64060();
  v19 = *(v12 + 8);
  v0[26] = v19;
  v0[27] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v11, v13);
  v20 = *(v9 + 8);
  v0[28] = v20;
  v0[29] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v27, v8);
  sub_1D0B633E0();
  v21 = v15[3];
  v22 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v21);
  v23 = *(v22 + 104);
  v28 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  v0[30] = v25;
  *v25 = v0;
  v25[1] = sub_1D0B3AF20;

  return v28(v21, v22);
}

uint64_t sub_1D0B3AF20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v7 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_1D0B3B78C;
  }

  else
  {
    v5 = sub_1D0B3B034;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D0B3B034()
{
  v1 = v0[32];
  v2 = sub_1D0B2FCA4(v0[3]);
  v0[33] = v2;
  if (v1)
  {
    v3 = v0[31];
    v4 = v0[25];
    [v3 invalidate];

    v5 = v0[23];
    v6 = v0[24];
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[18];
    v10 = v0[14];
    v11 = v0[13];
    v12 = v0[10];
    v22 = v0[7];
    (*(v0[12] + 8))(v0[15], v0[11]);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v2;
    v16 = v0[15];
    v17 = v0[4];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B50, &qword_1D0B65AE0);
    v19 = swift_task_alloc();
    v0[34] = v19;
    v19[2] = v15;
    v19[3] = v17;
    v19[4] = v16;
    v20 = *(MEMORY[0x1E69E88A0] + 4);
    v21 = swift_task_alloc();
    v0[35] = v21;
    *v21 = v0;
    v21[1] = sub_1D0B3B25C;

    return MEMORY[0x1EEE6DD58](v0 + 2, v18, v18, 0, 0, &unk_1D0B65AF0, v19, v18);
  }
}

uint64_t sub_1D0B3B25C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v8 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_1D0B3B898;
  }

  else
  {
    v5 = *(v2 + 264);
    v6 = *(v2 + 272);

    v4 = sub_1D0B3B380;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D0B3B380()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[18];
  v59 = v0[2];
  sub_1D0B63F40();
  v4 = sub_1D0B64020();
  sub_1D0B64050();
  v5 = sub_1D0B64530();
  if (sub_1D0B64570())
  {
    v6 = v0[25];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[8];

    sub_1D0B64080();

    if ((*(v7 + 88))(v8, v9) == *MEMORY[0x1E69E93E8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[9] + 8))(v0[10], v0[8]);
      v10 = "";
    }

    v11 = v0[18];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D0B63FF0();
    _os_signpost_emit_with_name_impl(&dword_1D0B1E000, v4, v5, v13, "resolveContext", v10, v12, 2u);
    MEMORY[0x1D387E1B0](v12, -1, -1);
  }

  v14 = v0[28];
  v15 = v4;
  v17 = v0[26];
  v16 = v0[27];
  v18 = v0[23];
  v19 = v0[21];
  v20 = v0[18];
  v21 = v0[16];
  v51 = v0[14];
  v53 = v0[29];
  v22 = v0[12];
  v49 = v0[11];
  v23 = v0[7];
  v55 = v0[3];
  v57 = v0[15];

  v17(v20, v21);
  v14(v18, v19);
  sub_1D0B63F70();
  (*(v22 + 16))(v51, v57, v49);

  v24 = sub_1D0B640A0();
  v25 = sub_1D0B644F0();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[14];
  if (v26)
  {
    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[11];
    v31 = v0[3];
    v32 = swift_slowAlloc();
    *v32 = 134218240;
    *(v32 + 4) = *(v31 + 16);

    *(v32 + 12) = 2048;
    sub_1D0B633E0();
    sub_1D0B63330();
    v34 = v33;
    v35 = *(v29 + 8);
    v35(v28, v30);
    v58 = v35;
    v35(v27, v30);
    *(v32 + 14) = v34;
    _os_log_impl(&dword_1D0B1E000, v24, v25, "Resolved all %ld queries in %fs", v32, 0x16u);
    MEMORY[0x1D387E1B0](v32, -1, -1);
  }

  else
  {
    v36 = v0[11];
    v37 = v0[12];
    v38 = v0[3];

    v58 = *(v37 + 8);
    v58(v27, v36);
  }

  v39 = v0[31];
  v41 = v0[24];
  v40 = v0[25];
  v42 = v0[23];
  v43 = v0[20];
  v48 = v0[19];
  v50 = v0[18];
  v44 = v0[15];
  v52 = v0[14];
  v54 = v0[13];
  v45 = v0[11];
  v56 = v0[10];
  (*(v0[6] + 8))(v0[7], v0[5]);
  [v39 invalidate];

  v58(v44, v45);

  v46 = v0[1];

  return v46(v59);
}

uint64_t sub_1D0B3B78C()
{
  v1 = v0[25];

  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = v0[14];
  v8 = v0[13];
  v9 = v0[10];
  v12 = v0[7];
  v13 = v0[32];
  (*(v0[12] + 8))(v0[15], v0[11]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D0B3B898()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[25];

  [v3 invalidate];

  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = v0[14];
  v11 = v0[13];
  v12 = v0[10];
  v15 = v0[7];
  v16 = v0[36];
  (*(v0[12] + 8))(v0[15], v0[11]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D0B3B9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = sub_1D0B633F0();
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v5[29] = *(v7 + 64);
  v5[30] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B58, &qword_1D0B65AF8) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B60, &qword_1D0B65B00);
  v5[33] = v9;
  v10 = *(v9 - 8);
  v5[34] = v10;
  v11 = *(v10 + 64) + 15;
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B3BB4C, 0, 0);
}

uint64_t sub_1D0B3BB4C()
{
  v32 = sub_1D0B45BAC();
  v1 = *(v32 + 16);
  if (v1)
  {
    v2 = (v32 + 32);
    v36 = **(v0 + 184);
    v37 = *(v0 + 224);
    v3 = sub_1D0B64450();
    v4 = *(v3 - 8);
    v35 = *(v4 + 56);
    v34 = (v4 + 48);
    v33 = (v4 + 8);
    do
    {
      v42 = v1;
      v6 = *(v0 + 256);
      v40 = *(v0 + 248);
      v7 = *(v0 + 232);
      v8 = *(v0 + 240);
      v9 = v3;
      v11 = *(v0 + 208);
      v10 = *(v0 + 216);
      v12 = *(v0 + 200);
      v39 = *(v0 + 192);
      v41 = v2;
      v38 = *v2;
      v35(v6, 1, 1, v9);
      sub_1D0B45EB8(v12, v0 + 16);
      (*(v37 + 16))(v8, v11, v10);
      v13 = (*(v37 + 80) + 144) & ~*(v37 + 80);
      v14 = swift_allocObject();
      *(v14 + 40) = v38;
      v15 = *(v0 + 64);
      *(v14 + 88) = *(v0 + 48);
      *(v14 + 104) = v15;
      *(v14 + 120) = *(v0 + 80);
      v16 = *(v0 + 32);
      *(v14 + 56) = *(v0 + 16);
      *(v14 + 16) = 0;
      v17 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v39;
      *(v14 + 136) = *(v0 + 96);
      *(v14 + 72) = v16;
      (*(v37 + 32))(v14 + v13, v8, v10);
      sub_1D0B2B870(v6, v40, &qword_1EC5F9B58, &qword_1D0B65AF8);
      v3 = v9;
      LODWORD(v7) = (*v34)(v40, 1, v9);

      v18 = *(v0 + 248);
      if (v7 == 1)
      {
        sub_1D0B2B620(*(v0 + 248), &qword_1EC5F9B58, &qword_1D0B65AF8);
      }

      else
      {
        sub_1D0B64440();
        (*v33)(v18, v9);
      }

      if (*v17)
      {
        v19 = *(v14 + 24);
        v20 = *v17;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = sub_1D0B64390();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B50, &qword_1D0B65AE0);
      v24 = v23 | v21;
      if (v23 | v21)
      {
        v24 = v0 + 104;
        *(v0 + 104) = 0;
        *(v0 + 112) = 0;
        *(v0 + 120) = v21;
        *(v0 + 128) = v23;
      }

      v5 = *(v0 + 256);
      *(v0 + 136) = 1;
      *(v0 + 144) = v24;
      *(v0 + 152) = v36;
      swift_task_create();

      sub_1D0B2B620(v5, &qword_1EC5F9B58, &qword_1D0B65AF8);
      v2 = v41 + 1;
      v1 = v42 - 1;
    }

    while (v42 != 1);
  }

  v25 = *(v0 + 280);
  v26 = **(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B50, &qword_1D0B65AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F98F8, &qword_1D0B668C0);
  sub_1D0B64470();
  *(v0 + 288) = MEMORY[0x1E69E7CC0];
  v27 = *(MEMORY[0x1E69E8710] + 4);
  v28 = swift_task_alloc();
  *(v0 + 296) = v28;
  *v28 = v0;
  v28[1] = sub_1D0B3BFA4;
  v29 = *(v0 + 280);
  v30 = *(v0 + 264);

  return MEMORY[0x1EEE6DAD8](v0 + 160, 0, 0, v30, v0 + 168);
}

uint64_t sub_1D0B3BFA4()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 288);

    v5 = sub_1D0B3C308;
  }

  else
  {
    v5 = sub_1D0B3C0BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D0B3C0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5[20];
  v7 = v5[36];
  if (v6)
  {
    v8 = *(v6 + 16);
    v9 = *(v7 + 16);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      __break(1u);
    }

    else
    {
      v11 = v5[36];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v5[36];
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v13 + 24) >> 1)
      {
        if (*(v6 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v27 = v9 + v8;
        }

        else
        {
          v27 = v9;
        }

        v13 = sub_1D0B2CD34(isUniquelyReferenced_nonNull_native, v27, 1, v5[36]);
        if (*(v6 + 16))
        {
LABEL_6:
          v14 = (*(v13 + 24) >> 1) - *(v13 + 16);
          a1 = sub_1D0B639F0();
          v15 = *(a1 - 8);
          if (v14 >= v8)
          {
            v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
            v17 = *(v15 + 72);
            swift_arrayInitWithCopy();

            if (!v8)
            {
              goto LABEL_18;
            }

            v18 = *(v13 + 16);
            v19 = __OFADD__(v18, v8);
            v20 = v18 + v8;
            if (!v19)
            {
              *(v13 + 16) = v20;
              goto LABEL_18;
            }

LABEL_24:
            __break(1u);
            return MEMORY[0x1EEE6DAD8](a1, a2, a3, a4, a5);
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      if (!v8)
      {
LABEL_18:
        v5[36] = v13;
        v28 = *(MEMORY[0x1E69E8710] + 4);
        v29 = swift_task_alloc();
        v5[37] = v29;
        *v29 = v5;
        v29[1] = sub_1D0B3BFA4;
        v30 = v5[35];
        a4 = v5[33];
        a5 = v5 + 21;
        a1 = (v5 + 20);
        a2 = 0;
        a3 = 0;

        return MEMORY[0x1EEE6DAD8](a1, a2, a3, a4, a5);
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v21 = v5[32];
  v23 = v5[30];
  v22 = v5[31];
  v24 = v5[22];
  (*(v5[34] + 8))(v5[35], v5[33]);
  *v24 = v7;

  v25 = v5[1];

  return v25();
}

uint64_t sub_1D0B3C308()
{
  v1 = v0[32];
  v3 = v0[30];
  v2 = v0[31];
  (*(v0[34] + 8))(v0[35], v0[33]);
  v4 = v0[21];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D0B3C3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a7;
  v8[35] = a8;
  v8[32] = a4;
  v8[33] = a5;
  v8[31] = a1;
  v9 = sub_1D0B63A60();
  v8[36] = v9;
  v10 = *(v9 - 8);
  v8[37] = v10;
  v11 = *(v10 + 64) + 15;
  v8[38] = swift_task_alloc();
  v12 = sub_1D0B640C0();
  v8[39] = v12;
  v13 = *(v12 - 8);
  v8[40] = v13;
  v14 = *(v13 + 64) + 15;
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v15 = sub_1D0B633F0();
  v8[44] = v15;
  v16 = *(v15 - 8);
  v8[45] = v16;
  v17 = *(v16 + 64) + 15;
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B3C588, 0, 0);
}

uint64_t sub_1D0B3C588()
{
  v54 = v0;
  v1 = *(v0 + 256);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(v0 + 264);
      sub_1D0B357E4(v4, v0 + 16);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      if (swift_getDynamicType() == v6)
      {
        sub_1D0B20A40((v0 + 16), v0 + 56);
        v53 = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D0B23FB8(0, *(v5 + 16) + 1, 1);
          v5 = v53;
        }

        v8 = *(v5 + 16);
        v7 = *(v5 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D0B23FB8((v7 > 1), v8 + 1, 1);
          v5 = v53;
        }

        *(v5 + 16) = v8 + 1;
        sub_1D0B20A40((v0 + 56), v5 + 40 * v8 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 416) = v5;
  v9 = *(v5 + 16);
  *(v0 + 424) = v9;
  if (v9)
  {
    v10 = *(v0 + 408);
    v11 = *(v0 + 344);
    sub_1D0B633E0();
    sub_1D0B63F70();

    v12 = sub_1D0B640A0();
    v13 = sub_1D0B644F0();

    if (os_log_type_enabled(v12, v13))
    {
      v50 = v13;
      log = v12;
      v14 = *(v0 + 296);
      v15 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52 = v49;
      v53 = v3;
      *v15 = 136315138;
      v16 = v5 + 32;
      do
      {
        v17 = *(v0 + 304);
        v18 = *(v0 + 288);
        sub_1D0B357E4(v16, v0 + 176);
        v20 = *(v0 + 200);
        v19 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), v20);
        (*(v19 + 32))(v20, v19);
        v21 = sub_1D0B63A30();
        (*(v14 + 8))(v17, v18);
        __swift_destroy_boxed_opaque_existential_0((v0 + 176));
        sub_1D0B3EB90(v21);
        v16 += 40;
        --v9;
      }

      while (v9);
      v22 = *(v0 + 344);
      v24 = *(v0 + 312);
      v23 = *(v0 + 320);
      v25 = MEMORY[0x1D387D5D0](v53, MEMORY[0x1E69E6158]);
      v27 = v26;

      v28 = sub_1D0B22738(v25, v27, &v52);

      *(v15 + 4) = v28;
      _os_log_impl(&dword_1D0B1E000, log, v50, "Resolving queries %s...", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x1D387E1B0](v49, -1, -1);
      MEMORY[0x1D387E1B0](v15, -1, -1);

      v29 = *(v23 + 8);
      v29(v22, v24);
    }

    else
    {
      v43 = *(v0 + 344);
      v44 = *(v0 + 312);
      v45 = *(v0 + 320);

      v29 = *(v45 + 8);
      v29(v43, v44);
    }

    *(v0 + 432) = v29;
    v46 = swift_task_alloc();
    *(v0 + 440) = v46;
    *v46 = v0;
    v46[1] = sub_1D0B3CA04;
    v48 = *(v0 + 272);
    v47 = *(v0 + 280);

    return sub_1D0B3D518(v5, v47);
  }

  else
  {

    v31 = *(v0 + 400);
    v30 = *(v0 + 408);
    v33 = *(v0 + 384);
    v32 = *(v0 + 392);
    v35 = *(v0 + 368);
    v34 = *(v0 + 376);
    v37 = *(v0 + 336);
    v36 = *(v0 + 344);
    v38 = v3;
    v39 = *(v0 + 328);
    v40 = *(v0 + 304);
    **(v0 + 248) = v38;

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1D0B3CA04(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v7 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v5 = sub_1D0B3CF94;
  }

  else
  {
    v5 = sub_1D0B3CB18;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D0B3CB18()
{
  v74 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  v7 = *(v0 + 336);
  v8 = *(v0 + 280);
  sub_1D0B63F70();
  v9 = *(v6 + 16);
  v9(v3, v1, v5);
  v9(v4, v8, v5);

  v10 = sub_1D0B640A0();
  v11 = sub_1D0B644F0();

  if (os_log_type_enabled(v10, v11))
  {
    v69 = v11;
    log = v10;
    v12 = *(v0 + 416);
    v13 = *(v0 + 296);
    v14 = swift_slowAlloc();
    v15 = 0;
    v67 = swift_slowAlloc();
    v72 = v67;
    v68 = v14;
    *v14 = 136315650;
    v73 = MEMORY[0x1E69E7CC0];
    v16 = v12 + 32;
    v17 = (v13 + 8);
    do
    {
      v18 = *(v0 + 424);
      v19 = *(v0 + 304);
      v20 = *(v0 + 288);
      sub_1D0B357E4(v16, v0 + 136);
      ++v15;
      v21 = *(v0 + 160);
      v22 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v21);
      (*(v22 + 32))(v21, v22);
      v23 = sub_1D0B63A30();
      (*v17)(v19, v20);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      sub_1D0B3EB90(v23);
      v16 += 40;
    }

    while (v15 != v18);
    v24 = *(v0 + 416);
    v65 = *(v0 + 432);
    v66 = *(v0 + 408);
    v25 = *(v0 + 392);
    v26 = *(v0 + 400);
    v27 = *(v0 + 384);
    v29 = *(v0 + 352);
    v28 = *(v0 + 360);
    v62 = *(v0 + 320);
    v63 = *(v0 + 312);
    v64 = *(v0 + 336);

    v30 = MEMORY[0x1D387D5D0](v73, MEMORY[0x1E69E6158]);
    v32 = v31;

    v33 = sub_1D0B22738(v30, v32, &v72);

    *(v68 + 1) = v33;
    *(v68 + 6) = 2048;
    sub_1D0B633E0();
    sub_1D0B63330();
    v35 = v34;
    v36 = *(v28 + 8);
    v36(v27, v29);
    v36(v26, v29);
    *(v68 + 14) = v35;
    *(v68 + 11) = 2048;
    sub_1D0B633E0();
    sub_1D0B63330();
    v38 = v37;
    v36(v27, v29);
    v36(v25, v29);
    *(v68 + 3) = v38;
    _os_log_impl(&dword_1D0B1E000, log, v69, "Resolved queries %s in %fs ; total %fs", v68, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x1D387E1B0](v67, -1, -1);
    MEMORY[0x1D387E1B0](v68, -1, -1);

    v65(v64, v63);
    v36(v66, v29);
  }

  else
  {
    v39 = *(v0 + 432);
    v40 = *(v0 + 416);
    loga = *(v0 + 408);
    v42 = *(v0 + 392);
    v41 = *(v0 + 400);
    v43 = v10;
    v44 = *(v0 + 352);
    v45 = *(v0 + 360);
    v46 = *(v0 + 336);
    v48 = *(v0 + 312);
    v47 = *(v0 + 320);

    v49 = *(v45 + 8);
    v49(v42, v44);
    v49(v41, v44);
    v39(v46, v48);
    v49(loga, v44);
  }

  v51 = *(v0 + 400);
  v50 = *(v0 + 408);
  v53 = *(v0 + 384);
  v52 = *(v0 + 392);
  v55 = *(v0 + 368);
  v54 = *(v0 + 376);
  v57 = *(v0 + 336);
  v56 = *(v0 + 344);
  v58 = *(v0 + 328);
  v59 = *(v0 + 304);
  **(v0 + 248) = *(v0 + 448);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1D0B3CF94()
{
  v84 = v0;
  v79 = *(v0 + 456);
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  v7 = *(v0 + 328);
  v8 = *(v0 + 280);
  sub_1D0B63F70();
  v9 = *(v6 + 16);
  v9(v3, v1, v5);
  v9(v4, v8, v5);

  v10 = v79;
  v11 = sub_1D0B640A0();
  v12 = sub_1D0B644D0();

  v13 = os_log_type_enabled(v11, v12);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v77 = v12;
    v80 = v11;
    v15 = *(v0 + 416);
    v16 = *(v0 + 296);
    v17 = swift_slowAlloc();
    v18 = 0;
    v75 = swift_slowAlloc();
    v82 = v75;
    v76 = v17;
    *v17 = 136315906;
    v83 = v14;
    v19 = v15 + 32;
    v20 = (v16 + 8);
    do
    {
      v21 = *(v0 + 424);
      v22 = *(v0 + 304);
      v23 = *(v0 + 288);
      sub_1D0B357E4(v19, v0 + 96);
      ++v18;
      v24 = *(v0 + 120);
      v25 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v24);
      (*(v25 + 32))(v24, v25);
      v26 = sub_1D0B63A30();
      (*v20)(v22, v23);
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      sub_1D0B3EB90(v26);
      v19 += 40;
    }

    while (v18 != v21);
    v27 = *(v0 + 416);
    v28 = *(v0 + 384);
    v68 = *(v0 + 376);
    v29 = *(v0 + 360);
    v69 = *(v0 + 368);
    v70 = *(v0 + 456);
    v30 = *(v0 + 352);
    v73 = *(v0 + 328);
    v74 = *(v0 + 432);
    v71 = *(v0 + 320);
    v72 = *(v0 + 312);

    v31 = MEMORY[0x1D387D5D0](v83, MEMORY[0x1E69E6158]);
    v33 = v32;

    v34 = sub_1D0B22738(v31, v33, &v82);

    *(v76 + 1) = v34;
    *(v76 + 6) = 2080;
    swift_getErrorValue();
    v35 = *(v0 + 216);
    v36 = *(*(v0 + 224) - 8);
    v37 = *(v36 + 64) + 15;
    swift_task_alloc();
    (*(v36 + 16))();
    v38 = sub_1D0B642A0();
    v40 = v39;

    v41 = sub_1D0B22738(v38, v40, &v82);

    *(v76 + 14) = v41;
    *(v76 + 11) = 2048;
    sub_1D0B633E0();
    sub_1D0B63330();
    v43 = v42;
    v44 = *(v29 + 8);
    v44(v28, v30);
    v44(v68, v30);
    *(v76 + 3) = v43;
    *(v76 + 16) = 2048;
    sub_1D0B633E0();
    sub_1D0B63330();
    v46 = v45;
    v44(v28, v30);
    v44(v69, v30);
    *(v76 + 34) = v46;
    _os_log_impl(&dword_1D0B1E000, v80, v77, "Error when resolving: %s, error %s. Failed in %fs ; total %fs", v76, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D387E1B0](v75, -1, -1);
    MEMORY[0x1D387E1B0](v76, -1, -1);

    v74(v73, v72);
    v47 = v70;
  }

  else
  {
    v78 = *(v0 + 432);
    v81 = *(v0 + 456);
    v48 = *(v0 + 416);
    v50 = *(v0 + 368);
    v49 = *(v0 + 376);
    v51 = *(v0 + 352);
    v52 = *(v0 + 360);
    v53 = *(v0 + 320);
    v54 = *(v0 + 328);
    v55 = *(v0 + 312);

    v44 = *(v52 + 8);
    v44(v50, v51);
    v44(v49, v51);
    v78(v54, v55);
    v47 = v81;
  }

  v44(*(v0 + 408), *(v0 + 352));
  v57 = *(v0 + 400);
  v56 = *(v0 + 408);
  v59 = *(v0 + 384);
  v58 = *(v0 + 392);
  v61 = *(v0 + 368);
  v60 = *(v0 + 376);
  v63 = *(v0 + 336);
  v62 = *(v0 + 344);
  v64 = *(v0 + 328);
  v65 = *(v0 + 304);
  **(v0 + 248) = MEMORY[0x1E69E7CC0];

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1D0B3D518(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A10, &qword_1D0B65678);
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v7 = sub_1D0B63DB0();
  v3[24] = v7;
  v8 = *(v7 - 8);
  v3[25] = v8;
  v9 = *(v8 + 64) + 15;
  v3[26] = swift_task_alloc();
  v10 = sub_1D0B639F0();
  v3[27] = v10;
  v11 = *(v10 - 8);
  v3[28] = v11;
  v12 = *(v11 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A20, &qword_1D0B65680);
  v3[31] = v13;
  v14 = *(v13 - 8);
  v3[32] = v14;
  v15 = *(v14 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v16 = sub_1D0B63EB0();
  v3[35] = v16;
  v17 = *(v16 - 8);
  v3[36] = v17;
  v18 = *(v17 + 64) + 15;
  v3[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B3D788, 0, 0);
}

uint64_t sub_1D0B3D788()
{
  *(v0 + 96) = *(v0 + 136);

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B68, &qword_1D0B65B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B70, &qword_1D0B65B30);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 104);
    *(v0 + 304) = v3;
    sub_1D0B357E4(v2 + 40, v0 + 56);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v4);
    v6 = *(v3 + 16);
    *(v0 + 312) = v6;
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v48 = v5;
      v50 = v4;
      v8 = *(v0 + 288);
      v9 = *(v0 + 256);
      v54 = *(v0 + 248);
      v57 = MEMORY[0x1E69E7CC0];
      sub_1D0B23F74(0, v6, 0);
      v7 = v57;
      v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v52 = *(v9 + 72);
      do
      {
        v11 = *(v0 + 296);
        v13 = *(v0 + 272);
        v12 = *(v0 + 280);
        sub_1D0B2B870(v10, v13, &qword_1EC5F9A20, &qword_1D0B65680);
        (*(v8 + 16))(v11, v13 + *(v54 + 36), v12);
        sub_1D0B2B620(v13, &qword_1EC5F9A20, &qword_1D0B65680);
        v15 = *(v57 + 16);
        v14 = *(v57 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D0B23F74(v14 > 1, v15 + 1, 1);
        }

        v16 = *(v0 + 296);
        v17 = *(v0 + 280);
        *(v57 + 16) = v15 + 1;
        (*(v8 + 32))(v57 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v16, v17);
        v10 += v52;
        --v6;
      }

      while (v6);
      v5 = v48;
      v4 = v50;
    }

    *(v0 + 320) = v7;
    v36 = *(MEMORY[0x1E699E510] + 4);
    v37 = swift_task_alloc();
    *(v0 + 328) = v37;
    *v37 = v0;
    v37[1] = sub_1D0B3DD80;

    return MEMORY[0x1EEE06CA8](v7, v4, v5);
  }

  else
  {
    v18 = *(v0 + 136);
    v19 = *(v0 + 96);

    *(v0 + 112) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B78, &qword_1D0B65B38);
    if (swift_dynamicCast())
    {
      v20 = *(v0 + 152);
      v21 = *(v0 + 120);
      *(v0 + 352) = v21;
      sub_1D0B357E4(v20 + 40, v0 + 16);
      v22 = *(v0 + 40);
      v23 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
      v24 = *(v21 + 16);
      *(v0 + 360) = v24;
      v25 = MEMORY[0x1E69E7CC0];
      if (v24)
      {
        v49 = v23;
        v51 = v22;
        v26 = *(v0 + 200);
        v27 = *(v0 + 168);
        v55 = *(v0 + 160);
        v58 = MEMORY[0x1E69E7CC0];
        sub_1D0B23F30(0, v24, 0);
        v25 = v58;
        v28 = v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v53 = *(v27 + 72);
        do
        {
          v29 = *(v0 + 208);
          v31 = *(v0 + 184);
          v30 = *(v0 + 192);
          sub_1D0B2B870(v28, v31, &qword_1EC5F9A10, &qword_1D0B65678);
          (*(v26 + 16))(v29, v31 + *(v55 + 36), v30);
          sub_1D0B2B620(v31, &qword_1EC5F9A10, &qword_1D0B65678);
          v33 = *(v58 + 16);
          v32 = *(v58 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_1D0B23F30(v32 > 1, v33 + 1, 1);
          }

          v34 = *(v0 + 208);
          v35 = *(v0 + 192);
          *(v58 + 16) = v33 + 1;
          (*(v26 + 32))(v58 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v33, v34, v35);
          v28 += v53;
          --v24;
        }

        while (v24);
        v23 = v49;
        v22 = v51;
      }

      *(v0 + 368) = v25;
      v45 = *(MEMORY[0x1E699E508] + 4);
      v46 = swift_task_alloc();
      *(v0 + 376) = v46;
      *v46 = v0;
      v46[1] = sub_1D0B3E270;

      return MEMORY[0x1EEE06CA0](v25, v22, v23);
    }

    else
    {
      v38 = *(v0 + 136);
      v39 = *(v0 + 112);
      v56 = *(v0 + 144);

      *(v0 + 128) = v38;
      v40 = swift_task_alloc();
      *(v0 + 400) = v40;
      *(v40 + 16) = v56;
      v41 = *(MEMORY[0x1E699E578] + 4);
      v42 = swift_task_alloc();
      *(v0 + 408) = v42;
      v43 = sub_1D0B3A650(&qword_1EC5F9B80, &qword_1EC5F9B68, &qword_1D0B65B28);
      *v42 = v0;
      v42[1] = sub_1D0B3E760;
      v44 = *(v0 + 216);

      return MEMORY[0x1EEE06D58](&unk_1D0B65B48, v40, v1, v44, v43);
    }
  }
}

uint64_t sub_1D0B3DD80(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  v4[42] = a1;
  v4[43] = v1;

  v7 = v3[40];
  if (v1)
  {
    v8 = v4[38];

    v9 = sub_1D0B3E91C;
  }

  else
  {

    v9 = sub_1D0B3DECC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D0B3DECC()
{
  v4 = v1[39];
  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  v5 = v1[38];
  if (v4)
  {
    v6 = v1[32];
    v7 = v1[28];
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D0B23EEC(0, v1[39], 0);
    v8 = *(v1[38] + 16);
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v47;
    v3 = ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = v1[42];
    v10 = v1[43];
    v12 = v1[33];
    v13 = v1[30];
    v14 = *(v6 + 72);
    sub_1D0B2B870(v3 + v5, v12, &qword_1EC5F9A20, &qword_1D0B65680);
    sub_1D0B3EE4C(v12, v11, v13);
    if (v10)
    {
      sub_1D0B2B620(v1[33], &qword_1EC5F9A20, &qword_1D0B65680);
    }

    v45 = v14;
    sub_1D0B2B620(v1[33], &qword_1EC5F9A20, &qword_1D0B65680);
    v2 = *(v47 + 16);
    v8 = *(v47 + 24);
    v0 = v2 + 1;
    if (v2 >= v8 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v18 = v1[39];
      v19 = v1[30];
      v20 = v1[27];
      *(v9 + 16) = v0;
      v44 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v46 = v9;
      v42 = *(v7 + 32);
      v43 = *(v7 + 72);
      v42(v9 + v44 + v43 * v2, v19, v20);
      if (v18 == 1)
      {
        break;
      }

      v5 += v3 + v45;
      v33 = 1;
      v2 = &qword_1EC5F9A20;
      while (1)
      {
        v8 = *(v1[38] + 16);
        if (v33 >= v8)
        {
          break;
        }

        v34 = v1[42];
        v35 = v1[33];
        v36 = v1[30];
        sub_1D0B2B870(v5, v35, &qword_1EC5F9A20, &qword_1D0B65680);
        sub_1D0B3EE4C(v35, v34, v36);
        v3 = &qword_1D0B65680;
        sub_1D0B2B620(v1[33], &qword_1EC5F9A20, &qword_1D0B65680);
        v37 = v46;
        v47 = v46;
        v39 = *(v46 + 16);
        v38 = *(v46 + 24);
        v0 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          sub_1D0B23EEC(v38 > 1, v39 + 1, 1);
          v37 = v46;
        }

        ++v33;
        v7 = v1[39];
        v40 = v1[30];
        v41 = v1[27];
        *(v37 + 16) = v0;
        v46 = v37;
        v42(v37 + v44 + v43 * v39, v40, v41);
        v5 += v45;
        if (v33 == v7)
        {
          goto LABEL_10;
        }
      }

LABEL_20:
      __break(1u);
LABEL_21:
      sub_1D0B23EEC(v8 > 1, v0, 1);
      v9 = v47;
    }

LABEL_10:
    v21 = v1[42];
    v22 = v1[38];

    v17 = v46;
  }

  else
  {
    v16 = v1[42];

    v17 = MEMORY[0x1E69E7CC0];
  }

  v23 = v1[12];

  v24 = v1[37];
  v26 = v1[33];
  v25 = v1[34];
  v28 = v1[29];
  v27 = v1[30];
  v29 = v1[26];
  v31 = v1[22];
  v30 = v1[23];

  v32 = v1[1];

  return v32(v17);
}

uint64_t sub_1D0B3E270(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  v4[48] = a1;
  v4[49] = v1;

  v7 = v3[46];
  if (v1)
  {
    v8 = v4[44];

    v9 = sub_1D0B3E9F0;
  }

  else
  {

    v9 = sub_1D0B3E3BC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D0B3E3BC()
{
  v4 = v1[45];
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  v5 = v1[44];
  if (v4)
  {
    v6 = v1[28];
    v7 = v1[21];
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D0B23EEC(0, v1[45], 0);
    v8 = *(v1[44] + 16);
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v47;
    v3 = ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v11 = v1[48];
    v10 = v1[49];
    v12 = v1[29];
    v13 = v1[22];
    v14 = *(v7 + 72);
    sub_1D0B2B870(v3 + v5, v13, &qword_1EC5F9A10, &qword_1D0B65678);
    sub_1D0B3F494(v13, v11, v12);
    if (v10)
    {
      sub_1D0B2B620(v1[22], &qword_1EC5F9A10, &qword_1D0B65678);
    }

    v45 = v14;
    sub_1D0B2B620(v1[22], &qword_1EC5F9A10, &qword_1D0B65678);
    v2 = *(v47 + 16);
    v8 = *(v47 + 24);
    v0 = v2 + 1;
    if (v2 >= v8 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v18 = v1[45];
      v19 = v1[29];
      v20 = v1[27];
      *(v9 + 16) = v0;
      v44 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v46 = v9;
      v42 = *(v6 + 32);
      v43 = *(v6 + 72);
      v42(v9 + v44 + v43 * v2, v19, v20);
      if (v18 == 1)
      {
        break;
      }

      v5 += v3 + v45;
      v33 = 1;
      v2 = &qword_1EC5F9A10;
      while (1)
      {
        v8 = *(v1[44] + 16);
        if (v33 >= v8)
        {
          break;
        }

        v34 = v1[48];
        v35 = v1[29];
        v36 = v1[22];
        sub_1D0B2B870(v5, v36, &qword_1EC5F9A10, &qword_1D0B65678);
        sub_1D0B3F494(v36, v34, v35);
        v3 = &qword_1D0B65678;
        sub_1D0B2B620(v1[22], &qword_1EC5F9A10, &qword_1D0B65678);
        v37 = v46;
        v47 = v46;
        v39 = *(v46 + 16);
        v38 = *(v46 + 24);
        v0 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          sub_1D0B23EEC(v38 > 1, v39 + 1, 1);
          v37 = v46;
        }

        ++v33;
        v6 = v1[45];
        v40 = v1[29];
        v41 = v1[27];
        *(v37 + 16) = v0;
        v46 = v37;
        v42(v37 + v44 + v43 * v39, v40, v41);
        v5 += v45;
        if (v33 == v6)
        {
          goto LABEL_10;
        }
      }

LABEL_20:
      __break(1u);
LABEL_21:
      sub_1D0B23EEC(v8 > 1, v0, 1);
      v9 = v47;
    }

LABEL_10:
    v21 = v1[48];
    v22 = v1[44];

    v17 = v46;
  }

  else
  {
    v16 = v1[48];

    v17 = MEMORY[0x1E69E7CC0];
  }

  v23 = v1[14];

  v24 = v1[37];
  v26 = v1[33];
  v25 = v1[34];
  v28 = v1[29];
  v27 = v1[30];
  v29 = v1[26];
  v31 = v1[22];
  v30 = v1[23];

  v32 = v1[1];

  return v32(v17);
}

uint64_t sub_1D0B3E760(uint64_t a1)
{
  v4 = *(*v2 + 408);
  v5 = *v2;
  v5[52] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B3EAC4, 0, 0);
  }

  else
  {
    v6 = v5[50];

    v7 = v5[37];
    v9 = v5[33];
    v8 = v5[34];
    v11 = v5[29];
    v10 = v5[30];
    v12 = v5[26];
    v13 = v5[22];
    v14 = v5[23];

    v15 = v5[1];

    return v15(a1);
  }
}

uint64_t sub_1D0B3E91C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  v2 = v0[43];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B3E9F0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[14];

  v2 = v0[49];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B3EAC4()
{
  v1 = v0[50];

  v2 = v0[52];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B3EB90(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1D0B2CA68(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_1D0B45A54(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_1D0B2CA68((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_1D0B1FEC8();
  *v1 = v4;
  return result;
}

uint64_t sub_1D0B3EE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v51 = a3;
  v5 = sub_1D0B63A20();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B88, &qword_1D0B65B50);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B90, &qword_1D0B65B58);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B98, &unk_1D0B65B60);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v40 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v40 - v25;
  v44 = a1;
  v46 = a1;
  sub_1D0B3A858(sub_1D0B460B4, v41, &qword_1EC5F9BA0, &qword_1D0B66410, &v40 - v25);
  v41 = v3;
  sub_1D0B2B870(v26, v24, &qword_1EC5F9B98, &unk_1D0B65B60);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BA0, &qword_1D0B66410);
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v24, 1, v27) == 1)
  {
    v30 = &qword_1EC5F9B98;
    v31 = &unk_1D0B65B60;
    v32 = v24;
LABEL_5:
    sub_1D0B2B620(v32, v30, v31);
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    goto LABEL_7;
  }

  sub_1D0B63D20();
  (*(v28 + 8))(v24, v27);
  v33 = sub_1D0B63CB0();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v16, 1, v33) == 1)
  {
    v30 = &qword_1EC5F9B90;
    v31 = &qword_1D0B65B58;
    v32 = v16;
    goto LABEL_5;
  }

  *(&v49 + 1) = v33;
  v50 = MEMORY[0x1E699E480];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
  (*(v34 + 32))(boxed_opaque_existential_1, v16, v33);
LABEL_7:
  sub_1D0B2B870(v26, v21, &qword_1EC5F9B98, &unk_1D0B65B60);
  if (v29(v21, 1, v27) == 1)
  {
    sub_1D0B2B620(v21, &qword_1EC5F9B98, &unk_1D0B65B60);
    v36 = 1;
    v37 = v42;
  }

  else
  {
    v37 = v42;
    sub_1D0B63D40();
    (*(v28 + 8))(v21, v27);
    v36 = 0;
  }

  v38 = sub_1D0B63B00();
  (*(*(v38 - 8) + 56))(v37, v36, 1, v38);
  sub_1D0B63A30();
  sub_1D0B63A40();
  sub_1D0B2B870(&v48, v47, &qword_1EC5F9BA8, &qword_1D0B65B70);
  sub_1D0B2B870(v37, v43, &qword_1EC5F9B88, &qword_1D0B65B50);
  sub_1D0B639E0();
  sub_1D0B2B620(v37, &qword_1EC5F9B88, &qword_1D0B65B50);
  sub_1D0B2B620(v26, &qword_1EC5F9B98, &unk_1D0B65B60);
  return sub_1D0B2B620(&v48, &qword_1EC5F9BA8, &qword_1D0B65B70);
}

uint64_t sub_1D0B3F37C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D0B63EB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BA0, &qword_1D0B66410);
  sub_1D0B63D30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A20, &qword_1D0B65680);
  v9 = MEMORY[0x1D387D120](v7, a2 + *(v8 + 36));
  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

uint64_t sub_1D0B3F494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v51 = a3;
  v5 = sub_1D0B63A20();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B88, &qword_1D0B65B50);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BB0, &qword_1D0B65B78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BB8, &qword_1D0B65B80);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v40 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v40 - v25;
  v44 = a1;
  v46 = a1;
  sub_1D0B3A858(sub_1D0B460D4, v41, &qword_1EC5F9BC0, &qword_1D0B65B88, &v40 - v25);
  v41 = v3;
  sub_1D0B2B870(v26, v24, &qword_1EC5F9BB8, &qword_1D0B65B80);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BC0, &qword_1D0B65B88);
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v24, 1, v27) == 1)
  {
    v30 = &qword_1EC5F9BB8;
    v31 = &qword_1D0B65B80;
    v32 = v24;
LABEL_5:
    sub_1D0B2B620(v32, v30, v31);
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    goto LABEL_7;
  }

  sub_1D0B63D20();
  (*(v28 + 8))(v24, v27);
  v33 = sub_1D0B63C20();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v16, 1, v33) == 1)
  {
    v30 = &qword_1EC5F9BB0;
    v31 = &qword_1D0B65B78;
    v32 = v16;
    goto LABEL_5;
  }

  *(&v49 + 1) = v33;
  v50 = MEMORY[0x1E699E328];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
  (*(v34 + 32))(boxed_opaque_existential_1, v16, v33);
LABEL_7:
  sub_1D0B2B870(v26, v21, &qword_1EC5F9BB8, &qword_1D0B65B80);
  if (v29(v21, 1, v27) == 1)
  {
    sub_1D0B2B620(v21, &qword_1EC5F9BB8, &qword_1D0B65B80);
    v36 = 1;
    v37 = v42;
  }

  else
  {
    v37 = v42;
    sub_1D0B63D40();
    (*(v28 + 8))(v21, v27);
    v36 = 0;
  }

  v38 = sub_1D0B63B00();
  (*(*(v38 - 8) + 56))(v37, v36, 1, v38);
  sub_1D0B63A30();
  sub_1D0B63A40();
  sub_1D0B2B870(&v48, v47, &qword_1EC5F9BA8, &qword_1D0B65B70);
  sub_1D0B2B870(v37, v43, &qword_1EC5F9B88, &qword_1D0B65B50);
  sub_1D0B639E0();
  sub_1D0B2B620(v37, &qword_1EC5F9B88, &qword_1D0B65B50);
  sub_1D0B2B620(v26, &qword_1EC5F9BB8, &qword_1D0B65B80);
  return sub_1D0B2B620(&v48, &qword_1EC5F9BA8, &qword_1D0B65B70);
}

uint64_t sub_1D0B3F9C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D0B63DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BC0, &qword_1D0B65B88);
  sub_1D0B63D30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A10, &qword_1D0B65678);
  v9 = MEMORY[0x1D387D020](v7, a2 + *(v8 + 36));
  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

uint64_t sub_1D0B3FADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B88, &qword_1D0B65B50) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = sub_1D0B633F0();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B3FBD8, 0, 0);
}

uint64_t sub_1D0B3FBD8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  sub_1D0B633E0();
  sub_1D0B63330();
  v0[15] = v7;
  (*(v2 + 8))(v1, v3);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v9 = *(MEMORY[0x1E699E358] + 4);
  v10 = swift_task_alloc();
  v0[17] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BA8, &qword_1D0B65B70);
  *v10 = v0;
  v10[1] = sub_1D0B3FD00;

  return MEMORY[0x1EEE06B90](v0 + 2, &unk_1D0B65B98, v8, v11);
}

uint64_t sub_1D0B3FD00(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v9 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v6 = sub_1D0B3FF74;
  }

  else
  {
    v7 = *(v4 + 128);
    *(v4 + 152) = a1;

    v6 = sub_1D0B3FE2C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D0B3FE2C()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[14];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  sub_1D0B63AF0();
  v9 = sub_1D0B63B00();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  sub_1D0B482FC((v0 + 2), v4, v7, v8, v6);
  sub_1D0B2B620(v4, &qword_1EC5F9B88, &qword_1D0B65B50);
  sub_1D0B2B620((v0 + 2), &qword_1EC5F9BA8, &qword_1D0B65B70);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D0B3FF74()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_1D0B3FFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D0B63A20();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1D0B63A60();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B40110, 0, 0);
}

uint64_t sub_1D0B40110()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[4];
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 32))(v6, v7);
  sub_1D0B63A40();
  (*(v2 + 8))(v1, v3);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1D0B40220;
  v9 = v0[7];
  v10 = v0[2];
  v11 = v0[3];

  return sub_1D0B40448(v10, v9);
}

uint64_t sub_1D0B40220()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B403D8, 0, 0);
  }

  else
  {
    v7 = v6[10];
    v8 = v6[7];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1D0B403D8()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_1D0B40448(uint64_t a1, uint64_t a2)
{
  v3[122] = v2;
  v3[121] = a2;
  v3[120] = a1;
  v4 = sub_1D0B640C0();
  v3[123] = v4;
  v5 = *(v4 - 8);
  v3[124] = v5;
  v6 = *(v5 + 64) + 15;
  v3[125] = swift_task_alloc();
  v7 = sub_1D0B63CF0();
  v3[126] = v7;
  v8 = *(v7 - 8);
  v3[127] = v8;
  v9 = *(v8 + 64) + 15;
  v3[128] = swift_task_alloc();
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BC8, &qword_1D0B65BA8);
  v3[131] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[132] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BD0, &qword_1D0B65BB0);
  v3[133] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[134] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BD8, &qword_1D0B65BB8);
  v3[135] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[136] = swift_task_alloc();
  v16 = sub_1D0B63290();
  v3[137] = v16;
  v17 = *(v16 - 8);
  v3[138] = v17;
  v3[139] = *(v17 + 64);
  v3[140] = swift_task_alloc();
  v3[141] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BE0, &qword_1D0B65BC0);
  v3[142] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v3[143] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BE8, &qword_1D0B65BC8);
  v3[144] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v3[145] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BF0, &qword_1D0B65BD0);
  v3[146] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v3[147] = swift_task_alloc();
  v24 = sub_1D0B633F0();
  v3[148] = v24;
  v25 = *(v24 - 8);
  v3[149] = v25;
  v3[150] = *(v25 + 64);
  v3[151] = swift_task_alloc();
  v3[152] = swift_task_alloc();
  v3[153] = swift_task_alloc();
  v3[154] = swift_task_alloc();
  v3[155] = swift_task_alloc();
  v3[156] = swift_task_alloc();
  v3[157] = swift_task_alloc();
  v26 = sub_1D0B63A20();
  v3[158] = v26;
  v27 = *(v26 - 8);
  v3[159] = v27;
  v28 = *(v27 + 64) + 15;
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B40870, 0, 0);
}

uint64_t sub_1D0B40870()
{
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1264);
  v4 = *(v2 + 16);
  v4(v1, *(v0 + 968), v3);
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == *MEMORY[0x1E699E2B0] || v5 == *MEMORY[0x1E699E2A8])
  {
    (*(*(v0 + 1272) + 8))(*(v0 + 1288), *(v0 + 1264));
    sub_1D0B461A0();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
    swift_willThrow();
  }

  else
  {
    if (v5 == *MEMORY[0x1E699E288])
    {
      v20 = *(v0 + 1288);
      v21 = *(v0 + 1248);
      v22 = *(v0 + 1240);
      v159 = *(v0 + 1200);
      v23 = *(v0 + 1192);
      v24 = *(v0 + 1184);
      v25 = *(v0 + 976);
      (*(*(v0 + 1272) + 96))(v20, *(v0 + 1264));
      v26 = *(v23 + 32);
      v26(v22, v20, v24);
      (*(v23 + 16))(v21, v22, v24);
      sub_1D0B45EB8(v25, v0 + 456);
      v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v28 = swift_allocObject();
      *(v0 + 1320) = v28;
      v26(v28 + v27, v21, v24);
      v29 = v28 + ((v159 + v27 + 7) & 0xFFFFFFFFFFFFFFF8);
      v30 = *(v0 + 504);
      *(v29 + 32) = *(v0 + 488);
      *(v29 + 48) = v30;
      *(v29 + 64) = *(v0 + 520);
      *(v29 + 80) = *(v0 + 536);
      v31 = *(v0 + 472);
      *v29 = *(v0 + 456);
      *(v29 + 16) = v31;
      v32 = *(MEMORY[0x1E699E588] + 4);
      v33 = swift_task_alloc();
      *(v0 + 1328) = v33;
      *v33 = v0;
      v33[1] = sub_1D0B41A10;
      v35 = *(v0 + 1176);
      v36 = *(v0 + 1168);
      v37 = &unk_1D0B65C48;
LABEL_12:
      v38 = v37;
      v34.n128_u64[0] = 10.0;
      v39 = v28;
LABEL_21:
      v57 = 0;
      v58 = 0;
      goto LABEL_22;
    }

    if (v5 == *MEMORY[0x1E699E268])
    {
      v40 = *(v0 + 1288);
      v41 = *(v0 + 1256);
      v42 = *(v0 + 1248);
      v43 = *(v0 + 1200);
      v44 = *(v0 + 1192);
      v45 = *(v0 + 1184);
      v46 = *(v0 + 976);
      (*(*(v0 + 1272) + 96))(v40, *(v0 + 1264));
      v47 = *(v44 + 32);
      v47(v41, v40, v45);
      (*(v44 + 16))(v42, v41, v45);
      sub_1D0B45EB8(v46, v0 + 544);
      v48 = (*(v44 + 80) + 16) & ~*(v44 + 80);
      v49 = swift_allocObject();
      *(v0 + 1296) = v49;
      v47(v49 + v48, v42, v45);
      v50 = v49 + ((v43 + v48 + 7) & 0xFFFFFFFFFFFFFFF8);
      v51 = *(v0 + 592);
      *(v50 + 32) = *(v0 + 576);
      *(v50 + 48) = v51;
      *(v50 + 64) = *(v0 + 608);
      *(v50 + 80) = *(v0 + 624);
      v52 = *(v0 + 560);
      *v50 = *(v0 + 544);
      *(v50 + 16) = v52;
      v53 = sub_1D0B63D10();
      *(v0 + 936) = v53;
      *(v0 + 944) = MEMORY[0x1E699E4A0];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 912));
      v55 = *(MEMORY[0x1E699E588] + 4);
      v56 = swift_task_alloc();
      *(v0 + 1304) = v56;
      *v56 = v0;
      v56[1] = sub_1D0B41720;
      v38 = &unk_1D0B65C58;
      v34.n128_u64[0] = 10.0;
      v35 = boxed_opaque_existential_1;
      v39 = v49;
      v57 = 0;
      v58 = 0;
      v36 = v53;
LABEL_22:

      return MEMORY[0x1EEE06D60](v35, v38, v39, v57, v58, v36, v34);
    }

    if (v5 == *MEMORY[0x1E699E278])
    {
      v59 = *(v0 + 1288);
      v60 = *(v0 + 1248);
      v61 = *(v0 + 1232);
      v62 = *(v0 + 1200);
      v63 = *(v0 + 1192);
      v64 = *(v0 + 1184);
      v65 = *(v0 + 976);
      (*(*(v0 + 1272) + 96))(v59, *(v0 + 1264));
      v66 = *(v63 + 32);
      v66(v61, v59, v64);
      (*(v63 + 16))(v60, v61, v64);
      sub_1D0B45EB8(v65, v0 + 368);
      v67 = (*(v63 + 80) + 16) & ~*(v63 + 80);
      v68 = swift_allocObject();
      *(v0 + 1344) = v68;
      v66(v68 + v67, v60, v64);
      v69 = v68 + ((v62 + v67 + 7) & 0xFFFFFFFFFFFFFFF8);
      v70 = *(v0 + 416);
      *(v69 + 32) = *(v0 + 400);
      *(v69 + 48) = v70;
      *(v69 + 64) = *(v0 + 432);
      *(v69 + 80) = *(v0 + 448);
      v71 = *(v0 + 384);
      *v69 = *(v0 + 368);
      *(v69 + 16) = v71;
      v72 = *(MEMORY[0x1E699E588] + 4);
      v73 = swift_task_alloc();
      *(v0 + 1352) = v73;
      *v73 = v0;
      v73[1] = sub_1D0B41DF4;
      v35 = *(v0 + 1160);
      v36 = *(v0 + 1152);
      v38 = &unk_1D0B65C38;
      v34.n128_u64[0] = 10.0;
LABEL_20:
      v39 = v68;
      goto LABEL_21;
    }

    if (v5 == *MEMORY[0x1E699E290])
    {
      v74 = *(v0 + 1288);
      v75 = *(v0 + 1128);
      v76 = *(v0 + 1120);
      v77 = *(v0 + 1112);
      v78 = *(v0 + 1104);
      v79 = *(v0 + 1096);
      (*(*(v0 + 1272) + 96))(v74, *(v0 + 1264));
      v80 = *(v78 + 32);
      v80(v75, v74, v79);
      (*(v78 + 16))(v76, v75, v79);
      v81 = (*(v78 + 80) + 16) & ~*(v78 + 80);
      v68 = swift_allocObject();
      *(v0 + 1392) = v68;
      v80(v68 + v81, v76, v79);
      v82 = *(MEMORY[0x1E699E588] + 4);
      v83 = swift_task_alloc();
      *(v0 + 1400) = v83;
      *v83 = v0;
      v83[1] = sub_1D0B425BC;
      v35 = *(v0 + 1088);
      v36 = *(v0 + 1080);
      v84 = &unk_1D0B65C18;
LABEL_19:
      v38 = v84;
      v34.n128_u64[0] = 5.0;
      goto LABEL_20;
    }

    if (v5 == *MEMORY[0x1E699E270])
    {
      v85 = *(v0 + 1288);
      v86 = *(v0 + 1248);
      v87 = *(v0 + 1224);
      v160 = *(v0 + 1200);
      v88 = *(v0 + 1192);
      v89 = *(v0 + 1184);
      v90 = *(v0 + 976);
      (*(*(v0 + 1272) + 96))(v85, *(v0 + 1264));
      v91 = *(v88 + 32);
      v91(v87, v85, v89);
      (*(v88 + 16))(v86, v87, v89);
      sub_1D0B45EB8(v90, v0 + 280);
      v92 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v28 = swift_allocObject();
      *(v0 + 1368) = v28;
      v91(v28 + v92, v86, v89);
      v93 = v28 + ((v160 + v92 + 7) & 0xFFFFFFFFFFFFFFF8);
      v94 = *(v0 + 328);
      *(v93 + 32) = *(v0 + 312);
      *(v93 + 48) = v94;
      *(v93 + 64) = *(v0 + 344);
      *(v93 + 80) = *(v0 + 360);
      v95 = *(v0 + 296);
      *v93 = *(v0 + 280);
      *(v93 + 16) = v95;
      v96 = *(MEMORY[0x1E699E588] + 4);
      v97 = swift_task_alloc();
      *(v0 + 1376) = v97;
      *v97 = v0;
      v97[1] = sub_1D0B421D8;
      v35 = *(v0 + 1144);
      v36 = *(v0 + 1136);
      v37 = &unk_1D0B65C28;
      goto LABEL_12;
    }

    if (v5 == *MEMORY[0x1E699E298])
    {
      v98 = *(v0 + 1288);
      v99 = *(v0 + 1248);
      v100 = *(v0 + 1216);
      v101 = *(v0 + 1200);
      v102 = *(v0 + 1192);
      v103 = *(v0 + 1184);
      v104 = *(v0 + 976);
      (*(*(v0 + 1272) + 96))(v98, *(v0 + 1264));
      v105 = *(v102 + 32);
      v105(v100, v98, v103);
      (*(v102 + 16))(v99, v100, v103);
      sub_1D0B45EB8(v104, v0 + 192);
      v106 = (*(v102 + 80) + 16) & ~*(v102 + 80);
      v68 = swift_allocObject();
      *(v0 + 1416) = v68;
      v105(v68 + v106, v99, v103);
      v107 = v68 + ((v101 + v106 + 7) & 0xFFFFFFFFFFFFFFF8);
      v108 = *(v0 + 240);
      *(v107 + 32) = *(v0 + 224);
      *(v107 + 48) = v108;
      *(v107 + 64) = *(v0 + 256);
      *(v107 + 80) = *(v0 + 272);
      v109 = *(v0 + 208);
      *v107 = *(v0 + 192);
      *(v107 + 16) = v109;
      v110 = *(MEMORY[0x1E699E588] + 4);
      v111 = swift_task_alloc();
      *(v0 + 1424) = v111;
      *v111 = v0;
      v111[1] = sub_1D0B429A0;
      v35 = *(v0 + 1072);
      v36 = *(v0 + 1064);
      v84 = &unk_1D0B65C08;
      goto LABEL_19;
    }

    if (v5 == *MEMORY[0x1E699E280])
    {
      v112 = *(v0 + 1288);
      v113 = *(v0 + 1248);
      v114 = *(v0 + 1208);
      v115 = *(v0 + 1200);
      v116 = *(v0 + 1192);
      v117 = *(v0 + 1184);
      (*(*(v0 + 1272) + 96))(v112, *(v0 + 1264));
      v118 = *(v116 + 32);
      v118(v114, v112, v117);
      (*(v116 + 16))(v113, v114, v117);
      v119 = (*(v116 + 80) + 16) & ~*(v116 + 80);
      v68 = swift_allocObject();
      *(v0 + 1440) = v68;
      v118(v68 + v119, v113, v117);
      v120 = *(MEMORY[0x1E699E588] + 4);
      v121 = swift_task_alloc();
      *(v0 + 1448) = v121;
      *v121 = v0;
      v121[1] = sub_1D0B42D84;
      v35 = *(v0 + 1056);
      v36 = *(v0 + 1048);
      v84 = &unk_1D0B65BF8;
      goto LABEL_19;
    }

    if (v5 == *MEMORY[0x1E699E2A0])
    {
      v122 = *(v0 + 1288);
      v123 = *(v0 + 1040);
      v124 = *(v0 + 1016);
      v125 = *(v0 + 1008);
      v126 = *(v0 + 976);
      (*(*(v0 + 1272) + 96))(v122, *(v0 + 1264));
      (*(v124 + 32))(v123, v122, v125);
      sub_1D0B63CC0();
      v128 = v127;
      sub_1D0B63CD0();
      v130 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v128 longitude:v129];
      *(v0 + 1464) = v130;
      sub_1D0B45EB8(v126, v0 + 16);
      v131 = swift_allocObject();
      *(v0 + 1472) = v131;
      v132 = *(v0 + 64);
      *(v131 + 48) = *(v0 + 48);
      *(v131 + 64) = v132;
      *(v131 + 80) = *(v0 + 80);
      v133 = *(v0 + 96);
      v134 = *(v0 + 32);
      *(v131 + 16) = *(v0 + 16);
      *(v131 + 32) = v134;
      *(v131 + 96) = v133;
      *(v131 + 104) = v130;
      sub_1D0B45EB8(v126, v0 + 104);
      v135 = swift_allocObject();
      *(v0 + 1480) = v135;
      v136 = *(v0 + 152);
      *(v135 + 48) = *(v0 + 136);
      *(v135 + 64) = v136;
      *(v135 + 80) = *(v0 + 168);
      *(v135 + 96) = *(v0 + 184);
      v137 = *(v0 + 120);
      *(v135 + 16) = *(v0 + 104);
      *(v135 + 32) = v137;
      v138 = *(MEMORY[0x1E699E588] + 4);
      v139 = v130;
      v140 = swift_task_alloc();
      *(v0 + 1488) = v140;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9C00, &qword_1D0B65BE8);
      *v140 = v0;
      v140[1] = sub_1D0B43168;
      v38 = &unk_1D0B65BE0;
      v57 = sub_1D0B462A0;
      v35 = (v0 + 952);
      v34.n128_u64[0] = 3.0;
      v39 = v131;
      v58 = v135;
      goto LABEL_22;
    }

    v141 = *(v0 + 1288);
    v142 = *(v0 + 1272);
    v143 = *(v0 + 1264);
    v4(*(v0 + 1280), *(v0 + 968), v143);
    v144 = sub_1D0B642A0();
    v146 = v145;
    sub_1D0B461A0();
    swift_allocError();
    *v147 = v144;
    v147[1] = v146;
    swift_willThrow();
    (*(v142 + 8))(v141, v143);
  }

  v8 = *(v0 + 1288);
  v9 = *(v0 + 1280);
  v10 = *(v0 + 1256);
  v11 = *(v0 + 1248);
  v12 = *(v0 + 1240);
  v13 = *(v0 + 1232);
  v14 = *(v0 + 1224);
  v15 = *(v0 + 1216);
  v16 = *(v0 + 1208);
  v17 = *(v0 + 1176);
  v148 = *(v0 + 1160);
  v149 = *(v0 + 1144);
  v150 = *(v0 + 1128);
  v151 = *(v0 + 1120);
  v152 = *(v0 + 1088);
  v153 = *(v0 + 1072);
  v154 = *(v0 + 1056);
  v155 = *(v0 + 1040);
  v156 = *(v0 + 1032);
  v157 = *(v0 + 1024);
  v158 = *(v0 + 1000);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D0B41720()
{
  v2 = *v1;
  v3 = *(*v1 + 1304);
  v4 = *v1;
  *(*v1 + 1312) = v0;

  v5 = *(v2 + 1296);

  if (v0)
  {
    v6 = sub_1D0B43680;
  }

  else
  {
    v6 = sub_1D0B41854;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D0B41854()
{
  v1 = *(v0 + 960);
  (*(*(v0 + 1192) + 8))(*(v0 + 1256), *(v0 + 1184));
  v2 = *(v0 + 912);
  v3 = *(v0 + 928);
  *(v1 + 32) = *(v0 + 944);
  *v1 = v2;
  *(v1 + 16) = v3;
  v4 = *(v0 + 1288);
  v5 = *(v0 + 1280);
  v6 = *(v0 + 1256);
  v7 = *(v0 + 1248);
  v8 = *(v0 + 1240);
  v9 = *(v0 + 1232);
  v10 = *(v0 + 1224);
  v11 = *(v0 + 1216);
  v12 = *(v0 + 1208);
  v13 = *(v0 + 1176);
  v16 = *(v0 + 1160);
  v17 = *(v0 + 1144);
  v18 = *(v0 + 1128);
  v19 = *(v0 + 1120);
  v20 = *(v0 + 1088);
  v21 = *(v0 + 1072);
  v22 = *(v0 + 1056);
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1032);
  v25 = *(v0 + 1024);
  v26 = *(v0 + 1000);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D0B41A10()
{
  v2 = *v1;
  v3 = *(*v1 + 1328);
  v4 = *v1;
  *(*v1 + 1336) = v0;

  v5 = *(v2 + 1320);

  if (v0)
  {
    v6 = sub_1D0B43838;
  }

  else
  {
    v6 = sub_1D0B41B44;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D0B41B44()
{
  v1 = (v0 + 872);
  v2 = *(v0 + 1176);
  v3 = sub_1D0B63E70();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 1240);
  v7 = *(v0 + 1192);
  v8 = *(v0 + 1184);
  if (v5 == 1)
  {
    (*(v7 + 8))(*(v0 + 1240), *(v0 + 1184));
    sub_1D0B2B620(v2, &qword_1EC5F9BF0, &qword_1D0B65BD0);
    *v1 = 0u;
    *(v0 + 888) = 0u;
    *(v0 + 904) = 0;
  }

  else
  {
    *(v0 + 896) = v3;
    *(v0 + 904) = MEMORY[0x1E699E500];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 872));
    (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 960);
  v11 = *v1;
  v12 = *(v0 + 888);
  *(v10 + 32) = *(v0 + 904);
  *v10 = v11;
  *(v10 + 16) = v12;
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1280);
  v15 = *(v0 + 1256);
  v16 = *(v0 + 1248);
  v17 = *(v0 + 1240);
  v18 = *(v0 + 1232);
  v19 = *(v0 + 1224);
  v20 = *(v0 + 1216);
  v21 = *(v0 + 1208);
  v22 = *(v0 + 1176);
  v25 = *(v0 + 1160);
  v26 = *(v0 + 1144);
  v27 = *(v0 + 1128);
  v28 = *(v0 + 1120);
  v29 = *(v0 + 1088);
  v30 = *(v0 + 1072);
  v31 = *(v0 + 1056);
  v32 = *(v0 + 1040);
  v33 = *(v0 + 1032);
  v34 = *(v0 + 1024);
  v35 = *(v0 + 1000);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D0B41DF4()
{
  v2 = *v1;
  v3 = *(*v1 + 1352);
  v4 = *v1;
  *(*v1 + 1360) = v0;

  v5 = *(v2 + 1344);

  if (v0)
  {
    v6 = sub_1D0B439E8;
  }

  else
  {
    v6 = sub_1D0B41F28;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D0B41F28()
{
  v1 = (v0 + 832);
  v2 = *(v0 + 1160);
  v3 = sub_1D0B63DE0();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 1232);
  v7 = *(v0 + 1192);
  v8 = *(v0 + 1184);
  if (v5 == 1)
  {
    (*(v7 + 8))(*(v0 + 1232), *(v0 + 1184));
    sub_1D0B2B620(v2, &qword_1EC5F9BE8, &qword_1D0B65BC8);
    *v1 = 0u;
    *(v0 + 848) = 0u;
    *(v0 + 864) = 0;
  }

  else
  {
    *(v0 + 856) = v3;
    *(v0 + 864) = MEMORY[0x1E699E4E8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 832));
    (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 960);
  v11 = *v1;
  v12 = *(v0 + 848);
  *(v10 + 32) = *(v0 + 864);
  *v10 = v11;
  *(v10 + 16) = v12;
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1280);
  v15 = *(v0 + 1256);
  v16 = *(v0 + 1248);
  v17 = *(v0 + 1240);
  v18 = *(v0 + 1232);
  v19 = *(v0 + 1224);
  v20 = *(v0 + 1216);
  v21 = *(v0 + 1208);
  v22 = *(v0 + 1176);
  v25 = *(v0 + 1160);
  v26 = *(v0 + 1144);
  v27 = *(v0 + 1128);
  v28 = *(v0 + 1120);
  v29 = *(v0 + 1088);
  v30 = *(v0 + 1072);
  v31 = *(v0 + 1056);
  v32 = *(v0 + 1040);
  v33 = *(v0 + 1032);
  v34 = *(v0 + 1024);
  v35 = *(v0 + 1000);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D0B421D8()
{
  v2 = *v1;
  v3 = *(*v1 + 1376);
  v4 = *v1;
  *(*v1 + 1384) = v0;

  v5 = *(v2 + 1368);

  if (v0)
  {
    v6 = sub_1D0B43B98;
  }

  else
  {
    v6 = sub_1D0B4230C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D0B4230C()
{
  v1 = (v0 + 792);
  v2 = *(v0 + 1144);
  v3 = sub_1D0B63D60();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 1224);
  v7 = *(v0 + 1192);
  v8 = *(v0 + 1184);
  if (v5 == 1)
  {
    (*(v7 + 8))(*(v0 + 1224), *(v0 + 1184));
    sub_1D0B2B620(v2, &qword_1EC5F9BE0, &qword_1D0B65BC0);
    *v1 = 0u;
    *(v0 + 808) = 0u;
    *(v0 + 824) = 0;
  }

  else
  {
    *(v0 + 816) = v3;
    *(v0 + 824) = MEMORY[0x1E699E4B0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 792));
    (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 960);
  v11 = *v1;
  v12 = *(v0 + 808);
  *(v10 + 32) = *(v0 + 824);
  *v10 = v11;
  *(v10 + 16) = v12;
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1280);
  v15 = *(v0 + 1256);
  v16 = *(v0 + 1248);
  v17 = *(v0 + 1240);
  v18 = *(v0 + 1232);
  v19 = *(v0 + 1224);
  v20 = *(v0 + 1216);
  v21 = *(v0 + 1208);
  v22 = *(v0 + 1176);
  v25 = *(v0 + 1160);
  v26 = *(v0 + 1144);
  v27 = *(v0 + 1128);
  v28 = *(v0 + 1120);
  v29 = *(v0 + 1088);
  v30 = *(v0 + 1072);
  v31 = *(v0 + 1056);
  v32 = *(v0 + 1040);
  v33 = *(v0 + 1032);
  v34 = *(v0 + 1024);
  v35 = *(v0 + 1000);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D0B425BC()
{
  v2 = *v1;
  v3 = *(*v1 + 1400);
  v4 = *v1;
  *(*v1 + 1408) = v0;

  v5 = *(v2 + 1392);

  if (v0)
  {
    v6 = sub_1D0B43D48;
  }

  else
  {
    v6 = sub_1D0B426F0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D0B426F0()
{
  v1 = (v0 + 752);
  v2 = *(v0 + 1088);
  v3 = sub_1D0B63B30();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 1104);
  v8 = *(v0 + 1096);
  if (v5 == 1)
  {
    (*(v7 + 8))(*(v0 + 1128), *(v0 + 1096));
    sub_1D0B2B620(v2, &qword_1EC5F9BD8, &qword_1D0B65BB8);
    *v1 = 0u;
    *(v0 + 768) = 0u;
    *(v0 + 784) = 0;
  }

  else
  {
    *(v0 + 776) = v3;
    *(v0 + 784) = MEMORY[0x1E699E2F8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 752));
    (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 960);
  v11 = *v1;
  v12 = *(v0 + 768);
  *(v10 + 32) = *(v0 + 784);
  *v10 = v11;
  *(v10 + 16) = v12;
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1280);
  v15 = *(v0 + 1256);
  v16 = *(v0 + 1248);
  v17 = *(v0 + 1240);
  v18 = *(v0 + 1232);
  v19 = *(v0 + 1224);
  v20 = *(v0 + 1216);
  v21 = *(v0 + 1208);
  v22 = *(v0 + 1176);
  v25 = *(v0 + 1160);
  v26 = *(v0 + 1144);
  v27 = *(v0 + 1128);
  v28 = *(v0 + 1120);
  v29 = *(v0 + 1088);
  v30 = *(v0 + 1072);
  v31 = *(v0 + 1056);
  v32 = *(v0 + 1040);
  v33 = *(v0 + 1032);
  v34 = *(v0 + 1024);
  v35 = *(v0 + 1000);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D0B429A0()
{
  v2 = *v1;
  v3 = *(*v1 + 1424);
  v4 = *v1;
  *(*v1 + 1432) = v0;

  v5 = *(v2 + 1416);

  if (v0)
  {
    v6 = sub_1D0B43EF8;
  }

  else
  {
    v6 = sub_1D0B42AD4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D0B42AD4()
{
  v1 = (v0 + 712);
  v2 = *(v0 + 1072);
  v3 = sub_1D0B63B50();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 1216);
  v7 = *(v0 + 1192);
  v8 = *(v0 + 1184);
  if (v5 == 1)
  {
    (*(v7 + 8))(*(v0 + 1216), *(v0 + 1184));
    sub_1D0B2B620(v2, &qword_1EC5F9BD0, &qword_1D0B65BB0);
    *v1 = 0u;
    *(v0 + 728) = 0u;
    *(v0 + 744) = 0;
  }

  else
  {
    *(v0 + 736) = v3;
    *(v0 + 744) = MEMORY[0x1E699E300];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 712));
    (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 960);
  v11 = *v1;
  v12 = *(v0 + 728);
  *(v10 + 32) = *(v0 + 744);
  *v10 = v11;
  *(v10 + 16) = v12;
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1280);
  v15 = *(v0 + 1256);
  v16 = *(v0 + 1248);
  v17 = *(v0 + 1240);
  v18 = *(v0 + 1232);
  v19 = *(v0 + 1224);
  v20 = *(v0 + 1216);
  v21 = *(v0 + 1208);
  v22 = *(v0 + 1176);
  v25 = *(v0 + 1160);
  v26 = *(v0 + 1144);
  v27 = *(v0 + 1128);
  v28 = *(v0 + 1120);
  v29 = *(v0 + 1088);
  v30 = *(v0 + 1072);
  v31 = *(v0 + 1056);
  v32 = *(v0 + 1040);
  v33 = *(v0 + 1032);
  v34 = *(v0 + 1024);
  v35 = *(v0 + 1000);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D0B42D84()
{
  v2 = *v1;
  v3 = *(*v1 + 1448);
  v4 = *v1;
  *(*v1 + 1456) = v0;

  v5 = *(v2 + 1440);

  if (v0)
  {
    v6 = sub_1D0B440A8;
  }

  else
  {
    v6 = sub_1D0B42EB8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D0B42EB8()
{
  v1 = (v0 + 672);
  v2 = *(v0 + 1056);
  v3 = sub_1D0B63E50();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 1208);
  v7 = *(v0 + 1192);
  v8 = *(v0 + 1184);
  if (v5 == 1)
  {
    (*(v7 + 8))(*(v0 + 1208), *(v0 + 1184));
    sub_1D0B2B620(v2, &qword_1EC5F9BC8, &qword_1D0B65BA8);
    *v1 = 0u;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0;
  }

  else
  {
    *(v0 + 696) = v3;
    *(v0 + 704) = MEMORY[0x1E699E4F8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 672));
    (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 960);
  v11 = *v1;
  v12 = *(v0 + 688);
  *(v10 + 32) = *(v0 + 704);
  *v10 = v11;
  *(v10 + 16) = v12;
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1280);
  v15 = *(v0 + 1256);
  v16 = *(v0 + 1248);
  v17 = *(v0 + 1240);
  v18 = *(v0 + 1232);
  v19 = *(v0 + 1224);
  v20 = *(v0 + 1216);
  v21 = *(v0 + 1208);
  v22 = *(v0 + 1176);
  v25 = *(v0 + 1160);
  v26 = *(v0 + 1144);
  v27 = *(v0 + 1128);
  v28 = *(v0 + 1120);
  v29 = *(v0 + 1088);
  v30 = *(v0 + 1072);
  v31 = *(v0 + 1056);
  v32 = *(v0 + 1040);
  v33 = *(v0 + 1032);
  v34 = *(v0 + 1024);
  v35 = *(v0 + 1000);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D0B43168()
{
  v2 = *v1;
  v3 = *(*v1 + 1488);
  v10 = *v1;
  *(*v1 + 1496) = v0;

  if (v0)
  {
    v4 = *(v2 + 1480);
    v5 = *(v2 + 1472);

    v6 = sub_1D0B44258;
  }

  else
  {
    v7 = *(v2 + 1480);
    v8 = *(v2 + 1472);

    v6 = sub_1D0B432A4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1D0B432A4()
{
  v1 = *(v0 + 952);
  (*(*(v0 + 1016) + 16))(*(v0 + 1032), *(v0 + 1040), *(v0 + 1008));
  if (v1 >> 62)
  {
    if (sub_1D0B645A0())
    {
LABEL_3:
      v2 = v1 & 0xC000000000000001;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x1D387D8B0](0, v1);
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_28;
        }

        v3 = *(v1 + 32);
      }

      v4 = v3;
      v5 = [v3 country];

      if (v5)
      {
        sub_1D0B64290();

        if (v2)
        {
LABEL_8:
          v6 = MEMORY[0x1D387D8B0](0, v1);
LABEL_12:
          v7 = v6;
          v8 = [v6 locality];

          if (v8)
          {
            sub_1D0B64290();

            if (v2)
            {
LABEL_14:
              v9 = MEMORY[0x1D387D8B0](0, v1);
              goto LABEL_18;
            }
          }

          else if (v2)
          {
            goto LABEL_14;
          }

          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v9 = *(v1 + 32);
LABEL_18:
            v10 = v9;

            v11 = [v10 name];

            if (v11)
            {
              sub_1D0B64290();
            }

            goto LABEL_23;
          }

LABEL_29:
          __break(1u);
          return;
        }
      }

      else if (v2)
      {
        goto LABEL_8;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v1 + 32);
        goto LABEL_12;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_23:
  v12 = *(v0 + 1464);
  v13 = *(v0 + 1040);
  v14 = *(v0 + 1032);
  v15 = *(v0 + 1016);
  v16 = *(v0 + 1008);
  v17 = *(v0 + 960);
  *(v0 + 656) = sub_1D0B63C10();
  *(v0 + 664) = MEMORY[0x1E699E320];
  __swift_allocate_boxed_opaque_existential_1((v0 + 632));
  sub_1D0B63C00();

  (*(v15 + 8))(v13, v16);
  v18 = *(v0 + 632);
  v19 = *(v0 + 648);
  *(v17 + 32) = *(v0 + 664);
  *v17 = v18;
  *(v17 + 16) = v19;
  v20 = *(v0 + 1288);
  v21 = *(v0 + 1280);
  v22 = *(v0 + 1256);
  v23 = *(v0 + 1248);
  v24 = *(v0 + 1240);
  v25 = *(v0 + 1232);
  v26 = *(v0 + 1224);
  v27 = *(v0 + 1216);
  v28 = *(v0 + 1208);
  v29 = *(v0 + 1176);
  v31 = *(v0 + 1160);
  v32 = *(v0 + 1144);
  v33 = *(v0 + 1128);
  v34 = *(v0 + 1120);
  v35 = *(v0 + 1088);
  v36 = *(v0 + 1072);
  v37 = *(v0 + 1056);
  v38 = *(v0 + 1040);
  v39 = *(v0 + 1032);
  v40 = *(v0 + 1024);
  v41 = *(v0 + 1000);

  v30 = *(v0 + 8);

  v30();
}

uint64_t sub_1D0B43680()
{
  (*(v0[149] + 8))(v0[157], v0[148]);
  __swift_deallocate_boxed_opaque_existential_1(v0 + 114);
  v24 = v0[164];
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[155];
  v6 = v0[154];
  v7 = v0[153];
  v8 = v0[152];
  v9 = v0[151];
  v10 = v0[147];
  v13 = v0[145];
  v14 = v0[143];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[136];
  v18 = v0[134];
  v19 = v0[132];
  v20 = v0[130];
  v21 = v0[129];
  v22 = v0[128];
  v23 = v0[125];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B43838()
{
  (*(v0[149] + 8))(v0[155], v0[148]);
  v24 = v0[167];
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[155];
  v6 = v0[154];
  v7 = v0[153];
  v8 = v0[152];
  v9 = v0[151];
  v10 = v0[147];
  v13 = v0[145];
  v14 = v0[143];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[136];
  v18 = v0[134];
  v19 = v0[132];
  v20 = v0[130];
  v21 = v0[129];
  v22 = v0[128];
  v23 = v0[125];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B439E8()
{
  (*(v0[149] + 8))(v0[154], v0[148]);
  v24 = v0[170];
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[155];
  v6 = v0[154];
  v7 = v0[153];
  v8 = v0[152];
  v9 = v0[151];
  v10 = v0[147];
  v13 = v0[145];
  v14 = v0[143];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[136];
  v18 = v0[134];
  v19 = v0[132];
  v20 = v0[130];
  v21 = v0[129];
  v22 = v0[128];
  v23 = v0[125];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B43B98()
{
  (*(v0[149] + 8))(v0[153], v0[148]);
  v24 = v0[173];
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[155];
  v6 = v0[154];
  v7 = v0[153];
  v8 = v0[152];
  v9 = v0[151];
  v10 = v0[147];
  v13 = v0[145];
  v14 = v0[143];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[136];
  v18 = v0[134];
  v19 = v0[132];
  v20 = v0[130];
  v21 = v0[129];
  v22 = v0[128];
  v23 = v0[125];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B43D48()
{
  (*(v0[138] + 8))(v0[141], v0[137]);
  v24 = v0[176];
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[155];
  v6 = v0[154];
  v7 = v0[153];
  v8 = v0[152];
  v9 = v0[151];
  v10 = v0[147];
  v13 = v0[145];
  v14 = v0[143];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[136];
  v18 = v0[134];
  v19 = v0[132];
  v20 = v0[130];
  v21 = v0[129];
  v22 = v0[128];
  v23 = v0[125];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B43EF8()
{
  (*(v0[149] + 8))(v0[152], v0[148]);
  v24 = v0[179];
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[155];
  v6 = v0[154];
  v7 = v0[153];
  v8 = v0[152];
  v9 = v0[151];
  v10 = v0[147];
  v13 = v0[145];
  v14 = v0[143];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[136];
  v18 = v0[134];
  v19 = v0[132];
  v20 = v0[130];
  v21 = v0[129];
  v22 = v0[128];
  v23 = v0[125];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B440A8()
{
  (*(v0[149] + 8))(v0[151], v0[148]);
  v24 = v0[182];
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[155];
  v6 = v0[154];
  v7 = v0[153];
  v8 = v0[152];
  v9 = v0[151];
  v10 = v0[147];
  v13 = v0[145];
  v14 = v0[143];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[136];
  v18 = v0[134];
  v19 = v0[132];
  v20 = v0[130];
  v21 = v0[129];
  v22 = v0[128];
  v23 = v0[125];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B44258()
{
  v1 = *(v0 + 1000);

  sub_1D0B63F70();
  v2 = sub_1D0B640A0();
  v3 = sub_1D0B644F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D0B1E000, v2, v3, "Reverse geocoding failed, inserting empty location into context", v4, 2u);
    MEMORY[0x1D387E1B0](v4, -1, -1);
  }

  v37 = *(v0 + 1496);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1024);
  v7 = *(v0 + 1016);
  v8 = *(v0 + 1008);
  v9 = *(v0 + 1000);
  v10 = *(v0 + 992);
  v11 = *(v0 + 984);
  v12 = *(v0 + 960);

  (*(v10 + 8))(v9, v11);
  (*(v7 + 16))(v6, v5, v8);
  v13 = sub_1D0B63C10();
  v14 = MEMORY[0x1E699E320];
  v12[3] = v13;
  v12[4] = v14;
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_1D0B63C00();

  (*(v7 + 8))(v5, v8);
  v15 = *(v0 + 1288);
  v16 = *(v0 + 1280);
  v17 = *(v0 + 1256);
  v18 = *(v0 + 1248);
  v19 = *(v0 + 1240);
  v20 = *(v0 + 1232);
  v21 = *(v0 + 1224);
  v22 = *(v0 + 1216);
  v23 = *(v0 + 1208);
  v24 = *(v0 + 1176);
  v27 = *(v0 + 1160);
  v28 = *(v0 + 1144);
  v29 = *(v0 + 1128);
  v30 = *(v0 + 1120);
  v31 = *(v0 + 1088);
  v32 = *(v0 + 1072);
  v33 = *(v0 + 1056);
  v34 = *(v0 + 1040);
  v35 = *(v0 + 1032);
  v36 = *(v0 + 1024);
  v38 = *(v0 + 1000);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D0B44524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D0B634A0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1D0B63290();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B44644, 0, 0);
}

uint64_t sub_1D0B44644()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = v0[3];
  sub_1D0B63460();
  sub_1D0B63380();
  (*(v3 + 8))(v2, v4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1D0B44788;
  v7 = v0[10];
  v8 = v0[4];
  v9 = v0[2];

  return static WorkoutWeekContext.make(for:healthStore:)(v9, v7, v8);
}

uint64_t sub_1D0B44788()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v8 = *v0;

  (*(v3 + 8))(v2, v4);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1D0B44900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B46DB0;

  return static ActivitySummaryContext.make(today:healthStore:)(a1, a2, a3);
}

uint64_t sub_1D0B449B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D0B634A0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_1D0B63290();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B44AEC, 0, 0);
}

uint64_t sub_1D0B44AEC()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  sub_1D0B63460();
  sub_1D0B63380();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[5];
  v10 = v0[3];
  sub_1D0B63460();
  sub_1D0B63370();
  v6(v8, v9);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_1D0B44CA0;
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[4];
  v15 = v0[2];

  return static WeeklySummaryContext.make(currentWeekInterval:previousWeekInterval:healthStore:)(v15, v12, v13, v14);
}

uint64_t sub_1D0B44CA0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v7 = *(*v0 + 56);
  v11 = *v0;

  v8 = *(v4 + 8);
  v8(v3, v5);
  v8(v2, v5);

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_1D0B44E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B44F28;

  return static TrainingLoadContext.make(for:healthStore:)(a1, a2, a3);
}

uint64_t sub_1D0B44F28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D0B45020(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0B46DB0;

  return static AwardsContext.make(dateInterval:)(a1, a2);
}

uint64_t sub_1D0B450C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B46DB0;

  return static VitalsContext.make(for:healthStore:)(a1, a2, a3);
}

uint64_t sub_1D0B45178(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0B46DB0;

  return static ActivitySharingContext.make(date:)(a1, a2);
}

uint64_t sub_1D0B4521C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9C08, &qword_1D0B65C60);
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B452EC, 0, 0);
}

uint64_t sub_1D0B452EC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  v11 = *(v1[20] + 80);
  v12 = v1[21];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1D0B454BC;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9C00, &qword_1D0B65BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F98F8, &qword_1D0B668C0);
  sub_1D0B643A0();
  (*(v6 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D0B456AC;
  v1[13] = &block_descriptor_0;
  [v11 reverseGeocodeLocation:v12 completionHandler:v4];
  (*(v6 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1D0B454BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1D0B45638;
  }

  else
  {
    v3 = sub_1D0B455CC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D0B455CC()
{
  v1 = *(v0 + 192);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D0B45638()
{
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[25];

  return v3();
}

void sub_1D0B456AC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9C08, &qword_1D0B65C60);
    sub_1D0B643B0();
  }

  else
  {
    sub_1D0B2B49C(0, &qword_1EC5F9C10, 0x1E695FC20);
    sub_1D0B64340();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9C08, &qword_1D0B65C60);
    sub_1D0B643C0();
  }
}

uint64_t sub_1D0B45774(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D0B2FC90;

  return sub_1D0B3B9D0(a1, a2, v6, v7, v8);
}

id sub_1D0B45838(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1D0B64590();
  sub_1D0B2B49C(0, &qword_1EC5F9A90, 0x1E696C638);
  sub_1D0B46B94();
  result = sub_1D0B644B0();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1D0B645B0())
      {
        goto LABEL_30;
      }

      sub_1D0B2B49C(0, &qword_1EC5F9A90, 0x1E696C638);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1D0B45A54(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D0B45BAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9C18, &qword_1D0B65C68);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D0B65A40;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A20, &qword_1D0B65680);
  v2 = sub_1D0B3A650(&qword_1EC5F9A28, &qword_1EC5F9A20, &qword_1D0B65680);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A10, &qword_1D0B65678);
  v4 = sub_1D0B3A650(&qword_1EC5F9A18, &qword_1EC5F9A10, &qword_1D0B65678);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for FitnessContextActivitySummaryQuery(0);
  v6 = sub_1D0B46B4C(&qword_1EC5F9A08, type metadata accessor for FitnessContextActivitySummaryQuery);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for FitnessContextWorkoutWeekQuery(0);
  v8 = sub_1D0B46B4C(&qword_1EC5F9A00, type metadata accessor for FitnessContextWorkoutWeekQuery);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for FitnessContextWeeklySummaryQuery(0);
  v10 = sub_1D0B46B4C(&qword_1EC5F99F8, type metadata accessor for FitnessContextWeeklySummaryQuery);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for FitnessContextAwardsQuery(0);
  v12 = sub_1D0B46B4C(&qword_1EC5F99F0, type metadata accessor for FitnessContextAwardsQuery);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  Query = type metadata accessor for FitnessContextTrainingLoadQuery(0);
  v14 = sub_1D0B46B4C(&qword_1EC5F99E8, type metadata accessor for FitnessContextTrainingLoadQuery);
  *(v0 + 128) = Query;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for FitnessContextVitalsQuery(0);
  v16 = sub_1D0B46B4C(&qword_1EC5F99E0, type metadata accessor for FitnessContextVitalsQuery);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for FitnessContextActivitySharingQuery(0);
  v18 = sub_1D0B46B4C(&qword_1EC5F99D8, type metadata accessor for FitnessContextActivitySharingQuery);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for FitnessContextLocationQuery(0);
  v20 = sub_1D0B46B4C(&qword_1EC5F99D0, type metadata accessor for FitnessContextLocationQuery);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  return v0;
}

uint64_t sub_1D0B45EF0(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 144) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D0B2FC90;

  return sub_1D0B3C3B4(a1, v6, v7, v8, v9, v10, (v1 + 7), v1 + v5);
}

uint64_t sub_1D0B46000(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D0B2FC90;

  return sub_1D0B3FADC(a1, a2, v7, v6);
}

uint64_t sub_1D0B460F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B2FC90;

  return sub_1D0B3FFF0(a1, v5, v4);
}

unint64_t sub_1D0B461A0()
{
  result = qword_1EC5F9BF8;
  if (!qword_1EC5F9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5F9BF8);
  }

  return result;
}

uint64_t sub_1D0B461F4(uint64_t a1)
{
  v4 = *(v1 + 104);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0B2FC90;

  return sub_1D0B4521C(a1, v1 + 16, v4);
}

uint64_t sub_1D0B462B0(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B2FC90;

  return sub_1D0B45178(a1, v1 + v5);
}

uint64_t sub_1D0B4638C(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0B2FC90;

  return sub_1D0B450C4(a1, v1 + v5, v1 + v6);
}

uint64_t objectdestroy_30Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1D0B46524(uint64_t a1)
{
  v4 = *(sub_1D0B63290() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B2FC90;

  return sub_1D0B45020(a1, v1 + v5);
}

uint64_t objectdestroy_35Tm()
{
  v1 = sub_1D0B633F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 40));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 88, v3 | 7);
}

uint64_t sub_1D0B466B0(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0B2FC90;

  return sub_1D0B44E74(a1, v1 + v5, v1 + v6);
}

uint64_t sub_1D0B467B8(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0B2FC90;

  return sub_1D0B449B4(a1, v1 + v5, v1 + v6);
}

uint64_t sub_1D0B468C0(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0B2FC90;

  return sub_1D0B44900(a1, v1 + v5, v1 + v6);
}

uint64_t sub_1D0B469C8(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0B2E1C4;

  return sub_1D0B44524(a1, v1 + v5, v1 + v6);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1D387E1B0);
  }

  return result;
}

uint64_t sub_1D0B46B4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D0B46B94()
{
  result = qword_1EC5F9C20;
  if (!qword_1EC5F9C20)
  {
    sub_1D0B2B49C(255, &qword_1EC5F9A90, 0x1E696C638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5F9C20);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29FitnessIntelligenceDaemonCore0A20ContextQueryResolverV7FailureO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D0B46C20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0B46C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1D0B46CD0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D0B46D00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D0B46D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D0B46DCC(uint64_t *a1, int a2)
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

uint64_t sub_1D0B46E14(uint64_t result, int a2, int a3)
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

uint64_t sub_1D0B46E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9990, &unk_1D0B65DB0);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B10, &qword_1D0B65968);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_1D0B640C0();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  sub_1D0B643F0();
  v3[19] = sub_1D0B643E0();
  v14 = sub_1D0B64390();
  v3[20] = v14;
  v3[21] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D0B4702C, v14, v13);
}

uint64_t sub_1D0B4702C()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 56);
  sub_1D0B63F70();
  sub_1D0B64090();
  (*(v2 + 8))(v1, v3);
  *(v0 + 176) = sub_1D0B63870();
  *(v0 + 260) = 0;
  sub_1D0B64420();
  *(v0 + 256) = *MEMORY[0x1E699DCC8];
  v10 = *(v6 + 104);
  *(v0 + 184) = v10;
  *(v0 + 192) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v4);
  v11 = swift_allocObject();
  *(v0 + 200) = v11;
  v11[2] = v9;
  v11[3] = v8;
  v11[4] = v7;
  v12 = v9;

  *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B48, &qword_1D0B65A00);
  *(v0 + 216) = sub_1D0B3A650(&qword_1EE052C48, &qword_1EC5F9B48, &qword_1D0B65A00);
  v14 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B471FC, v14, v13);
}

uint64_t sub_1D0B471FC()
{
  v1 = v0[25];
  v2 = v0[22];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  sub_1D0B63910();

  v6 = *(v4 + 8);
  v0[28] = v6;
  v0[29] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v0[20];
  v8 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1D0B472D0, v7, v8);
}

uint64_t sub_1D0B472D0()
{
  v14 = *(v0 + 208);
  v15 = *(v0 + 216);
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 256);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  *(v0 + 240) = sub_1D0B63870();
  *(v0 + 261) = 2;
  sub_1D0B64420();
  v1(v4, v3, v5);
  v9 = swift_allocObject();
  *(v0 + 248) = v9;
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v7;
  v10 = v8;

  v12 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B473E4, v12, v11);
}

uint64_t sub_1D0B473E4()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[15];
  v6 = v0[13];
  sub_1D0B63910();

  v4(v5, v6);
  v7 = v0[20];
  v8 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1D0B474A0, v7, v8);
}

uint64_t sub_1D0B474A0()
{
  v1 = v0[19];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];

  sub_1D0B639A0();
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AE8, &qword_1D0B65990);
  v0[6] = sub_1D0B3A650(&qword_1EE052C40, &qword_1EC5F9AE8, &qword_1D0B65990);
  v0[2] = v5;

  sub_1D0B64410();
  (*(v3 + 104))(v2, *MEMORY[0x1E699DCE0], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B30, &unk_1D0B65DF0);
  v7 = sub_1D0B63C90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D0B65D50;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x1E699E410], v7);
  v13(v12 + v9, *MEMORY[0x1E699E428], v7);
  v13(v12 + 2 * v9, *MEMORY[0x1E699E430], v7);
  v13(v12 + 3 * v9, *MEMORY[0x1E699E360], v7);
  v13(v12 + 4 * v9, *MEMORY[0x1E699E438], v7);
  v13(v12 + 5 * v9, *MEMORY[0x1E699E3A8], v7);
  v13(v12 + 6 * v9, *MEMORY[0x1E699E3B0], v7);
  v13(v12 + 7 * v9, *MEMORY[0x1E699E400], v7);
  sub_1D0B63930();
  v14 = v0[18];
  v15 = v0[15];
  (*(v0[11] + 8))(v0[12], v0[10]);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D0B477F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = sub_1D0B63EE0();
  v3[3] = v4;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  v7 = sub_1D0B63C90();
  v3[6] = v7;
  v8 = *(v7 - 8);
  v3[7] = v8;
  v9 = *(v8 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B4790C, 0, 0);
}

uint64_t sub_1D0B4790C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  (*(v0[7] + 104))(v0[8], *MEMORY[0x1E699E410], v0[6]);
  (*(v3 + 104))(v1, *MEMORY[0x1E699E530], v2);
  v4 = *(MEMORY[0x1E699DD08] + 4);
  v12 = (*MEMORY[0x1E699DD08] + MEMORY[0x1E699DD08]);
  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = sub_1D0B482A0();
  *v5 = v0;
  v5[1] = sub_1D0B47A18;
  v7 = v0[8];
  v8 = v0[5];
  v10 = v0[2];
  v9 = v0[3];

  return v12(v7, v8, v9, v6);
}

uint64_t sub_1D0B47A18()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 80) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B482F8, 0, 0);
  }

  else
  {
    v11 = *(v2 + 64);
    v12 = *(v2 + 40);

    v13 = *(v10 + 8);

    return v13();
  }
}

uint64_t sub_1D0B47C44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D0B2FC90;

  return sub_1D0B477F0(v2, v3, v4);
}

uint64_t sub_1D0B47CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = sub_1D0B63EE0();
  v3[3] = v4;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  v7 = sub_1D0B63C90();
  v3[6] = v7;
  v8 = *(v7 - 8);
  v3[7] = v8;
  v9 = *(v8 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B47E08, 0, 0);
}

uint64_t sub_1D0B47E08()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  (*(v0[7] + 104))(v0[8], *MEMORY[0x1E699E410], v0[6]);
  (*(v3 + 104))(v1, *MEMORY[0x1E699E530], v2);
  v4 = *(MEMORY[0x1E699DD08] + 4);
  v12 = (*MEMORY[0x1E699DD08] + MEMORY[0x1E699DD08]);
  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = sub_1D0B482A0();
  *v5 = v0;
  v5[1] = sub_1D0B47F14;
  v7 = v0[8];
  v8 = v0[5];
  v10 = v0[2];
  v9 = v0[3];

  return v12(v7, v8, v9, v6);
}

uint64_t sub_1D0B47F14()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 80) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B48140, 0, 0);
  }

  else
  {
    v11 = *(v2 + 64);
    v12 = *(v2 + 40);

    v13 = *(v10 + 8);

    return v13();
  }
}

uint64_t sub_1D0B48140()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0B481F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D0B2E1C4;

  return sub_1D0B47CEC(v2, v3, v4);
}

unint64_t sub_1D0B482A0()
{
  result = qword_1EE052C10;
  if (!qword_1EE052C10)
  {
    sub_1D0B63EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE052C10);
  }

  return result;
}

uint64_t sub_1D0B482FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27[0] = a3;
  v29 = a1;
  v30 = a2;
  v31 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B88, &qword_1D0B65B50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v28 = v27 - v9;
  v10 = sub_1D0B63A20();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v27[2] = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D0B63A60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v27 - v19;
  v21 = a4;
  v22 = *(a4 + 32);
  v23 = a3;
  v24 = v21;
  v22(v23);
  v27[1] = sub_1D0B63A30();
  v25 = *(v14 + 8);
  v25(v20, v13);
  (v22)(v27[0], v24);
  sub_1D0B63A40();
  v25(v18, v13);
  sub_1D0B2B870(v29, v32, &qword_1EC5F9BA8, &qword_1D0B65B70);
  sub_1D0B2B870(v30, v28, &qword_1EC5F9B88, &qword_1D0B65B50);
  return sub_1D0B639E0();
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_1D0B63A60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = a4(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = sub_1D0B63A60();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = a5(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1D0B489DC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D0B48A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1D0B63A60();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D0B48AA8(uint64_t a1)
{
  result = sub_1D0B63A60();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D0B48B30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D0B63A60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1D0B48D70(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1D0B63A60() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_1D0B49054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1D0B63A50() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for FitnessContextSnapshotPropertiesQuery() + 36);
  v6 = *(*(a4 + 24) + 8);
  return sub_1D0B64250() & 1;
}

uint64_t sub_1D0B490C8(uint64_t a1, uint64_t a2)
{
  sub_1D0B63A60();
  sub_1D0B492A8(&qword_1EC5F99A0, MEMORY[0x1E699E2C0]);
  sub_1D0B64220();
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 24);
  v6 = v2 + *(a2 + 36);
  return sub_1D0B64220();
}

uint64_t sub_1D0B4915C(uint64_t a1)
{
  sub_1D0B64880();
  sub_1D0B490C8(v3, a1);
  return sub_1D0B648A0();
}

uint64_t sub_1D0B491AC(uint64_t a1, uint64_t a2)
{
  sub_1D0B64880();
  sub_1D0B490C8(v4, a2);
  return sub_1D0B648A0();
}

uint64_t sub_1D0B492A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D0B49548@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D0B63A60();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D0B495F8(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  sub_1D0B64880();
  sub_1D0B63A60();
  sub_1D0B492A8(&qword_1EC5F99A0, MEMORY[0x1E699E2C0]);
  sub_1D0B64220();
  v9 = *(a1 + 20);
  a3(0);
  sub_1D0B492A8(a4, a5);
  sub_1D0B64220();
  return sub_1D0B648A0();
}

uint64_t sub_1D0B4972C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  sub_1D0B63A60();
  sub_1D0B492A8(&qword_1EC5F99A0, MEMORY[0x1E699E2C0]);
  sub_1D0B64220();
  v10 = *(a2 + 20);
  a4(0);
  sub_1D0B492A8(a5, a6);
  return sub_1D0B64220();
}

uint64_t sub_1D0B49848(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  sub_1D0B64880();
  sub_1D0B63A60();
  sub_1D0B492A8(&qword_1EC5F99A0, MEMORY[0x1E699E2C0]);
  sub_1D0B64220();
  v10 = *(a2 + 20);
  a4(0);
  sub_1D0B492A8(a5, a6);
  sub_1D0B64220();
  return sub_1D0B648A0();
}

uint64_t sub_1D0B49948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((sub_1D0B63A50() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return a5(a1 + v8, a2 + v8);
}

uint64_t sub_1D0B49A1C(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D68, type metadata accessor for FitnessContextLocationQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49A80(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D70, type metadata accessor for FitnessContextActivitySharingQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49AE4(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D78, type metadata accessor for FitnessContextVitalsQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49B48(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D80, type metadata accessor for FitnessContextTrainingLoadQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49BAC(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D88, type metadata accessor for FitnessContextAwardsQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49C10(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D90, type metadata accessor for FitnessContextWeeklySummaryQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49C74(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D98, type metadata accessor for FitnessContextWorkoutWeekQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49CD8(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9DA0, type metadata accessor for FitnessContextActivitySummaryQuery);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D0B49D34()
{
  result = qword_1EC5F9DA8;
  if (!qword_1EC5F9DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC5F9BA0, &qword_1D0B66410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5F9DA8);
  }

  return result;
}

uint64_t sub_1D0B49D98(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DuetMessageCode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DuetMessageCode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D0B49F90()
{
  result = qword_1EE0528D0;
  if (!qword_1EE0528D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC5F9DC8, qword_1D0B66450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0528D0);
  }

  return result;
}

uint64_t sub_1D0B4A000(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000038;
  v3 = "com.apple.fitnessintelligenced";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "heduling.OnPowerActivity";
      v5 = 0xD000000000000047;
    }

    else
    {
      v6 = "torePrivateDataActivity";
      v5 = 0xD00000000000003CLL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000038;
    }

    else
    {
      v5 = 0xD000000000000044;
    }

    if (v4)
    {
      v6 = "rPrivateDataActivity";
    }

    else
    {
      v6 = "com.apple.fitnessintelligenced";
    }
  }

  if (a2 > 1u)
  {
    v3 = "heduling.OnPowerActivity";
    v7 = 0xD000000000000047;
    v8 = "torePrivateDataActivity";
    v2 = 0xD00000000000003CLL;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD000000000000044;
    v8 = "rPrivateDataActivity";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D0B647D0();
  }

  return v12 & 1;
}

uint64_t sub_1D0B4A120@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D0B4A440();
  *a2 = result;
  return result;
}

void sub_1D0B4A150(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000038;
  v3 = "heduling.OnPowerActivity";
  v4 = 0xD000000000000047;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000003CLL;
    v3 = "torePrivateDataActivity";
  }

  if (*v1)
  {
    v5 = "rPrivateDataActivity";
  }

  else
  {
    v2 = 0xD000000000000044;
    v5 = "com.apple.fitnessintelligenced";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_1D0B4A1C8()
{
  v1 = *v0;
  sub_1D0B64880();
  sub_1D0B642B0();

  return sub_1D0B648A0();
}

uint64_t sub_1D0B4A280()
{
  *v0;
  *v0;
  *v0;
  sub_1D0B642B0();
}

uint64_t sub_1D0B4A324()
{
  v1 = *v0;
  sub_1D0B64880();
  sub_1D0B642B0();

  return sub_1D0B648A0();
}

unint64_t sub_1D0B4A3EC()
{
  result = qword_1EE0529A8[0];
  if (!qword_1EE0529A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0529A8);
  }

  return result;
}

uint64_t sub_1D0B4A440()
{
  v0 = sub_1D0B64770();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D0B4A4B0()
{
  v1 = *v0;
  sub_1D0B64880();
  MEMORY[0x1D387DB10](v1);
  return sub_1D0B648A0();
}

uint64_t sub_1D0B4A524()
{
  v1 = *v0;
  sub_1D0B64880();
  MEMORY[0x1D387DB10](v1);
  return sub_1D0B648A0();
}

char *sub_1D0B4A568(void *a1)
{
  v3 = sub_1D0B63430();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_proxyProvider] = 0;
  sub_1D0B63420();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_identifier], v7, v3);
  *&v1[OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_healthStore] = a1;
  v8 = type metadata accessor for WorkoutDatabaseClient();
  v17.receiver = v1;
  v17.super_class = v8;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v17, sel_init);
  sub_1D0B63E20();
  (*(v4 + 16))(v7, &v10[OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_identifier], v3);
  v11 = objc_allocWithZone(MEMORY[0x1E696C500]);
  v12 = sub_1D0B64260();

  v13 = sub_1D0B63400();
  v14 = [v11 initWithHealthStore:v9 taskIdentifier:v12 exportedObject:v10 taskUUID:v13];

  (*(v4 + 8))(v7, v3);
  v15 = *&v10[OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_proxyProvider];
  *&v10[OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_proxyProvider] = v14;

  return v10;
}

id sub_1D0B4A7A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDatabaseClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkoutDatabaseClient()
{
  result = qword_1EE052CB8;
  if (!qword_1EE052CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D0B4A8B8()
{
  result = sub_1D0B63430();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D0B4A960(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)())
{
  sub_1D0B22F04(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E48, &unk_1D0B665A0);
  if (swift_dynamicCast())
  {
    a4();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D0B4BA0C();
    v6 = swift_allocError();
    *v7 = 1;
    a2();
  }
}

uint64_t sub_1D0B4AA34(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;

  swift_unknownObjectRetain();
  v4(v6);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

void sub_1D0B4AAA4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1D0B4AB0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v52 = a3;
  v53 = a4;
  v55 = a2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590);
  v45 = v5;
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v56 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v54 = &v44 - v10;
  v49 = v11;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v48 = &v44 - v12;
  v14 = sub_1D0B633F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v47 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v44 - v18;
  v19 = *(v15 + 16);
  v19();
  (v19)(&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v14);
  v20 = v51;
  v53 = *(v51 + 16);
  v53(v13, a1, v5);
  v21 = *(v15 + 80);
  v22 = (v21 + 16) & ~v21;
  v23 = (v16 + v21 + v22) & ~v21;
  v24 = *(v20 + 80);
  v52 = v24 | 7;
  v25 = swift_allocObject();
  v26 = *(v15 + 32);
  v26(v25 + v22, v46, v14);
  v27 = v14;
  v28 = v45;
  v26(v25 + v23, v47, v27);
  v29 = v20;
  v30 = *(v20 + 32);
  v30(v25 + ((v16 + v24 + v23) & ~v24), v48, v28);
  v31 = v53;
  v32 = v54;
  v53(v54, v50, v28);
  v31(v56, v32, v28);
  v33 = swift_allocObject();
  v30(v33 + ((v24 + 16) & ~v24), v32, v28);
  v34 = *(v55 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_proxyProvider);
  if (v34)
  {
    v35 = swift_allocObject();
    v35[2] = sub_1D0B4B990;
    v35[3] = v33;
    v35[4] = sub_1D0B4B898;
    v35[5] = v25;
    v61 = sub_1D0B4BA60;
    v62 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1D0B4AA34;
    v60 = &block_descriptor_1;
    v36 = _Block_copy(&aBlock);
    v37 = v34;

    v61 = sub_1D0B4B990;
    v62 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1D0B4AAA4;
    v60 = &block_descriptor_14;
    v38 = _Block_copy(&aBlock);

    [v37 fetchProxyWithHandler:v36 errorHandler:v38];

    _Block_release(v38);
    _Block_release(v36);

    v39 = v56;
  }

  else
  {
    sub_1D0B4BA0C();
    v40 = swift_allocError();
    *v41 = 0;
    v42 = v56;
    sub_1D0B4B4F8(v40, v56);

    v39 = v42;
  }

  return (*(v29 + 8))(v39, v28);
}

void sub_1D0B4B034(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = sub_1D0B633A0();
  v12 = sub_1D0B633A0();
  (*(v7 + 16))(v10, a4, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  aBlock[4] = sub_1D0B4BB18;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0B4B468;
  aBlock[3] = &block_descriptor_20;
  v15 = _Block_copy(aBlock);

  [a1 queryWithStartDate:v11 endDate:v12 completion:v15];
  _Block_release(v15);
}

uint64_t sub_1D0B4B218(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = sub_1D0B63BD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = a2;
    v11 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590);
    return sub_1D0B643B0();
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v18[0] = a3;
      v19 = MEMORY[0x1E69E7CC0];
      sub_1D0B23EA8(0, v13, 0);
      v14 = v19;
      v18[1] = v7 + 32;
      v15 = (a1 + 40);
      do
      {
        sub_1D0B4BBA4(*(v15 - 1), *v15);
        sub_1D0B4BBF8();
        sub_1D0B63DC0();
        v19 = v14;
        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          sub_1D0B23EA8(v16 > 1, v17 + 1, 1);
          v14 = v19;
        }

        v15 += 2;
        v14[2] = v17 + 1;
        (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v10, v6);
        --v13;
      }

      while (v13);
    }

    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590);
    return sub_1D0B643C0();
  }
}

void sub_1D0B4B468(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_1D0B64340();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1D0B4B4F8(void *a1, uint64_t a2)
{
  v4 = sub_1D0B640C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0B63F50();
  v9 = a1;
  v10 = sub_1D0B640A0();
  v11 = sub_1D0B644D0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = sub_1D0B64820();
    v17 = sub_1D0B22738(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1D0B1E000, v10, v11, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1D387E1B0](v14, -1, -1);
    MEMORY[0x1D387E1B0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v21 = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590);
  return sub_1D0B643B0();
}

uint64_t sub_1D0B4B764()
{
  v0 = sub_1D0B640C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0B63F50();
  v5 = sub_1D0B640A0();
  v6 = sub_1D0B644F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D0B1E000, v5, v6, "WorkoutDatabaseClient connection invalidated", v7, 2u);
    MEMORY[0x1D387E1B0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_1D0B4B898(void *a1)
{
  v3 = *(sub_1D0B633F0() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590) - 8);
  v9 = v1 + ((v7 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  sub_1D0B4B034(a1, v1 + v5, v1 + v7, v9);
}

uint64_t sub_1D0B4B990(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D0B4B4F8(a1, v4);
}

unint64_t sub_1D0B4BA0C()
{
  result = qword_1EC5F9E40;
  if (!qword_1EC5F9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5F9E40);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_7Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D0B4BB18(uint64_t a1, unint64_t *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D0B4B218(a1, a2, v6);
}

uint64_t sub_1D0B4BBA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1D0B4BBF8()
{
  result = qword_1EC5F9E50;
  if (!qword_1EC5F9E50)
  {
    sub_1D0B63BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5F9E50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutDatabaseClient.WorkoutDatabaseClientError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutDatabaseClient.WorkoutDatabaseClientError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D0B4BDB0()
{
  result = qword_1EC5F9E58;
  if (!qword_1EC5F9E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5F9E58);
  }

  return result;
}

uint64_t HealthStore.__allocating_init(healthStore:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1D0B63480();
  *(v5 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_assertion) = 0;
  *(v5 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore) = a1;
  v6 = objc_allocWithZone(type metadata accessor for WorkoutDatabaseClient());
  *(v5 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_workoutDatabaseClient) = sub_1D0B4A568(a1);
  return v5;
}

uint64_t sub_1D0B4BEA4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D0B645A0())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x1D387D8B0](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1D0B64660();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_1D0B64690();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_1D0B646A0();
        sub_1D0B64670();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

uint64_t HealthStore.init(healthStore:)(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  sub_1D0B63480();
  *(v2 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_assertion) = 0;
  *(v2 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore) = a1;
  v4 = objc_allocWithZone(type metadata accessor for WorkoutDatabaseClient());
  *(v2 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_workoutDatabaseClient) = sub_1D0B4A568(a1);
  return v2;
}

uint64_t sub_1D0B4C0D8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D0B4C0F8, v1, 0);
}

uint64_t sub_1D0B4C0F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_opt_self() workoutType];
  v0[5] = v3;
  v4 = objc_opt_self();
  v5 = sub_1D0B63400();
  v6 = [v4 predicateForObjectWithUUID_];
  v0[6] = v6;

  v7 = sub_1D0B5CB68(qword_1EE052AE0, type metadata accessor for HealthStore);
  v8 = swift_task_alloc();
  v0[7] = v8;
  v8[2] = v3;
  v8[3] = v6;
  v8[4] = v1;
  v9 = *(MEMORY[0x1E69E88D0] + 4);
  v10 = swift_task_alloc();
  v0[8] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EC0, &unk_1D0B666A8);
  *v10 = v0;
  v10[1] = sub_1D0B4C2B4;

  return MEMORY[0x1EEE6DDE0](v0 + 2, v1, v7, 0x2874756F6B726F77, 0xED0000293A726F66, sub_1D0B4C6C8, v8, v11);
}

uint64_t sub_1D0B4C2B4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D0B4C3E0, v3, 0);
}

uint64_t sub_1D0B4C3E0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t type metadata accessor for HealthStore()
{
  result = qword_1EE052CF0;
  if (!qword_1EE052CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D0B4C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FD0, &unk_1D0B66B50);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  aBlock[4] = sub_1D0B5F468;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0B59550;
  aBlock[3] = &block_descriptor_228;
  v16 = _Block_copy(aBlock);
  v17 = [v15 initWithSampleType:a2 predicate:a3 limit:1 sortDescriptors:0 resultsHandler:v16];
  _Block_release(v16);

  [*(a4 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore) executeQuery_];
}

unint64_t sub_1D0B4C6D4(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    goto LABEL_11;
  }

  result = sub_1D0B4C7CC(a2, 0x1E696C588);
  if (!result)
  {
    goto LABEL_11;
  }

  v3 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v5 = result;
    v6 = sub_1D0B645A0();
    result = v5;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FD0, &unk_1D0B66B50);
    return sub_1D0B643C0();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D387D8B0](0);
    goto LABEL_10;
  }

  if (*(v3 + 16))
  {
    v4 = *(result + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D0B4C7CC(unint64_t a1, uint64_t *a2)
{
  v13 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_1D0B64680();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D0B645A0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D387D8B0](j, a1);
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

      sub_1D0B64660();
      v11 = *(v13 + 16);
      sub_1D0B64690();
      sub_1D0B646A0();
      sub_1D0B64670();
      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D0B645A0();
    sub_1D0B64680();
  }

  return v13;
}

uint64_t sub_1D0B4C934(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D0B4C9E0;

  return (sub_1D0B5AD98)(a1);
}

uint64_t sub_1D0B4C9E0(uint64_t a1)
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

uint64_t sub_1D0B4CAE0(uint64_t a1, char a2)
{
  *(v3 + 312) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(*(sub_1D0B640E0() - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EC8, &qword_1D0B666C8);
  *(v3 + 40) = v5;
  v6 = *(v5 - 8);
  *(v3 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v8 = sub_1D0B634A0();
  *(v3 + 64) = v8;
  v9 = *(v8 - 8);
  *(v3 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v11 = sub_1D0B63290();
  *(v3 + 96) = v11;
  v12 = *(v11 - 8);
  *(v3 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9ED0, &qword_1D0B666D0);
  *(v3 + 120) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  v16 = sub_1D0B63AD0();
  *(v3 + 144) = v16;
  v17 = *(v16 - 8);
  *(v3 + 152) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  v19 = sub_1D0B633F0();
  *(v3 + 184) = v19;
  v20 = *(v19 - 8);
  *(v3 + 192) = v20;
  v21 = *(v20 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9ED8, &qword_1D0B666D8);
  *(v3 + 264) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v3 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B4CE48, v2, 0);
}

uint64_t sub_1D0B4CE48()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v60 = *(v0 + 144);
  v7 = *(v0 + 16);
  sub_1D0B63280();
  sub_1D0B63350();
  v8 = *(v4 + 8);
  v8(v1, v3);
  sub_1D0B63260();
  sub_1D0B63350();
  v51 = v8;
  v8(v2, v3);
  sub_1D0B5CB68(&qword_1EE052C18, MEMORY[0x1E699E2E8]);
  v9 = sub_1D0B64240();
  if (v9)
  {
    v11 = *(v0 + 272);
    v56 = v11;
    v12 = *(v0 + 168);
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 120);
    v52 = *(v0 + 264);
    v53 = *(v0 + 88);
    v58 = *(v0 + 72);
    v61 = *(v0 + 64);
    v18 = *(v14 + 32);
    v18(v16, *(v0 + 176), v13);
    v18(v16 + *(v17 + 48), v12, v13);
    sub_1D0B2B870(v16, v15, &qword_1EC5F9ED0, &qword_1D0B666D0);
    v19 = *(v17 + 48);
    v18(v11, v15, v13);
    v20 = *(v14 + 8);
    v20(v15 + v19, v13);
    sub_1D0B2B5B8(v16, v15, &qword_1EC5F9ED0, &qword_1D0B666D0);
    v18(v56 + *(v52 + 36), v15 + *(v17 + 48), v13);
    v20(v15, v13);
    sub_1D0B63460();
    sub_1D0B63AC0();
    v21 = *(v58 + 8);
    v21(v53, v61);
    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    v24 = *(v0 + 224);
    v25 = *(v0 + 184);
    v55 = *(v0 + 160);
    sub_1D0B63360();
    v51(v24, v25);
    sub_1D0B63340();
    v51(v23, v25);
    sub_1D0B63AB0();
    v26 = *(v0 + 200);
    v27 = *(v0 + 160);
    v28 = *(v0 + 144);
    v29 = *(v0 + 80);
    v30 = *(v0 + 64);
    sub_1D0B63460();
    sub_1D0B63AC0();
    v21(v29, v30);
    v20(v27, v28);
    v31 = *(v0 + 256);
    v32 = *(v0 + 240);
    v33 = *(v0 + 208);
    v34 = *(v0 + 216);
    v35 = *(v0 + 200);
    v36 = *(v0 + 184);
    v37 = *(v0 + 112);
    v54 = *(v0 + 56);
    v57 = *(v0 + 32);
    v59 = *(v0 + 40);
    v62 = *(v0 + 24);
    LODWORD(v55) = *(v0 + 312);
    sub_1D0B63360();
    v51(v35, v36);
    sub_1D0B63340();
    v51(v33, v36);
    sub_1D0B63270();
    v38 = objc_opt_self();
    sub_1D0B63280();
    v39 = sub_1D0B633A0();
    v51(v31, v36);
    sub_1D0B63260();
    v40 = sub_1D0B633A0();
    v51(v31, v36);
    v41 = [v38 predicateForSamplesWithStartDate:v39 endDate:v40 options:1];
    *(v0 + 280) = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EE0, &qword_1D0B666E0);
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EE8, &unk_1D0B666E8) - 8);
    v43 = *(v42 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    *(swift_allocObject() + 16) = xmmword_1D0B658C0;
    sub_1D0B2B49C(0, &qword_1EE052880, 0x1E696C588);
    v45 = v41;
    sub_1D0B64100();

    sub_1D0B64110();
    sub_1D0B640D0();
    sub_1D0B64120();
    v46 = *(v62 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
    v47 = *(MEMORY[0x1E696B3C8] + 4);
    v48 = swift_task_alloc();
    *(v0 + 288) = v48;
    *v48 = v0;
    v48[1] = sub_1D0B4D5B0;
    v49 = *(v0 + 56);
    v10 = *(v0 + 40);
    v9 = v46;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEDC7698](v9, v10);
}

uint64_t sub_1D0B4D5B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  v4[37] = v1;

  v7 = v4[3];
  if (v1)
  {
    v8 = sub_1D0B4D8FC;
  }

  else
  {
    v4[38] = a1;
    v8 = sub_1D0B4D6EC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D0B4D6EC()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[34];
  v13 = v0[35];
  v15 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[16];
  v4 = v0[13];
  v14 = v0[14];
  v5 = v0[12];
  v28 = v0[11];
  v29 = v0[10];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  v30 = v0[4];
  v9 = swift_task_alloc();
  *(v9 + 16) = v3;
  v10 = sub_1D0B4BEA4(sub_1D0B5B2EC, v9, v1);

  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v14, v5);
  sub_1D0B2B620(v3, &qword_1EC5F9ED8, &qword_1D0B666D8);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_1D0B4D8FC()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);

  (*(v3 + 8))(v2, v4);
  v25 = *(v0 + 296);
  (*(v1 + 8))(*(v0 + 112), *(v0 + 96));
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v15 = *(v0 + 176);
  v16 = *(v0 + 168);
  v17 = *(v0 + 160);
  v18 = *(v0 + 136);
  v19 = *(v0 + 128);
  v20 = *(v0 + 112);
  v21 = *(v0 + 88);
  v22 = *(v0 + 80);
  v23 = *(v0 + 56);
  v24 = *(v0 + 32);
  sub_1D0B2B620(*(v0 + 272), &qword_1EC5F9ED8, &qword_1D0B666D8);

  v13 = *(v0 + 8);

  return v13();
}