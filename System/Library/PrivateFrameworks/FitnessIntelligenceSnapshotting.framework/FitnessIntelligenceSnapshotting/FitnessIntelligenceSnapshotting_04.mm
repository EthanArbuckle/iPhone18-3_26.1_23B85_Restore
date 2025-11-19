uint64_t sub_20CD590A4()
{
  v1 = v0[5];
  v0[32] = sub_20CD55204(v0[31], sub_20CD46D30, &qword_28110F648, MEMORY[0x277D0A690], sub_20CD5AD9C);

  return MEMORY[0x2822009F8](sub_20CD59164, v1, 0);
}

uint64_t sub_20CD59164()
{
  v56 = v0;
  v1 = *(v0 + 256);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 96);
  v10 = *(v0 + 32);
  (*(v0 + 160))(*(v0 + 72), *(v0 + 24), *(v0 + 56));
  v3(v7, v10, v9);
  v3(v8, v5, v9);
  v11 = sub_20CD63194();
  v12 = sub_20CD633D4();
  log = v11;
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 192);
  v15 = *(v0 + 200);
  v54 = *(v0 + 144);
  v16 = *(v0 + 128);
  v52 = *(v0 + 120);
  if (v13)
  {
    v48 = *(v0 + 104);
    v49 = *(v0 + 112);
    v51 = v12;
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v46 = *(v0 + 56);
    v47 = *(v0 + 96);
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v55 = v50;
    *v19 = 136315650;
    v20 = sub_20CD62E84();
    v21 = v1;
    v23 = v22;
    v14(v17, v46);
    v24 = sub_20CD6153C(v20, v23, &v55);
    v1 = v21;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7E8, MEMORY[0x277CC9578]);
    v25 = sub_20CD63574();
    v27 = v26;
    v15(v16, v47);
    v28 = sub_20CD6153C(v25, v27, &v55);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v30 = v29;
    v15(v49, v47);
    v15(v52, v47);
    *(v19 + 24) = v30;
    _os_log_impl(&dword_20CCEA000, log, v51, "[SnapshotRetriverRepresentableProvider] Fetched %s representables for %s in %f seconds", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v50, -1, -1);
    MEMORY[0x20F3115B0](v19, -1, -1);

    v15(v54, v47);
  }

  else
  {
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);
    v34 = *(v0 + 64);
    v33 = *(v0 + 72);
    v35 = *(v0 + 56);

    v15(v52, v31);
    v15(v16, v31);
    v14(v33, v35);
    v15(v54, v31);
  }

  v37 = *(v0 + 136);
  v36 = *(v0 + 144);
  v39 = *(v0 + 120);
  v38 = *(v0 + 128);
  v40 = *(v0 + 112);
  v42 = *(v0 + 80);
  v41 = *(v0 + 88);
  v43 = *(v0 + 72);
  **(v0 + 16) = v1;

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_20CD59534()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 104) + 8;
  (*(v0 + 200))(*(v0 + 144), *(v0 + 96));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_20CD5961C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  v4[34] = v1;

  v7 = v4[5];
  if (v1)
  {
    v8 = sub_20CD59B28;
  }

  else
  {
    v4[35] = a1;
    v8 = sub_20CD59758;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_20CD59758()
{
  v56 = v0;
  v1 = *(v0 + 280);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 96);
  v10 = *(v0 + 32);
  (*(v0 + 160))(*(v0 + 72), *(v0 + 24), *(v0 + 56));
  v3(v7, v10, v9);
  v3(v8, v5, v9);
  v11 = sub_20CD63194();
  v12 = sub_20CD633D4();
  log = v11;
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 192);
  v15 = *(v0 + 200);
  v54 = *(v0 + 144);
  v16 = *(v0 + 128);
  v52 = *(v0 + 120);
  if (v13)
  {
    v48 = *(v0 + 104);
    v49 = *(v0 + 112);
    v51 = v12;
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v46 = *(v0 + 56);
    v47 = *(v0 + 96);
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v55 = v50;
    *v19 = 136315650;
    v20 = sub_20CD62E84();
    v21 = v1;
    v23 = v22;
    v14(v17, v46);
    v24 = sub_20CD6153C(v20, v23, &v55);
    v1 = v21;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7E8, MEMORY[0x277CC9578]);
    v25 = sub_20CD63574();
    v27 = v26;
    v15(v16, v47);
    v28 = sub_20CD6153C(v25, v27, &v55);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v30 = v29;
    v15(v49, v47);
    v15(v52, v47);
    *(v19 + 24) = v30;
    _os_log_impl(&dword_20CCEA000, log, v51, "[SnapshotRetriverRepresentableProvider] Fetched %s representables for %s in %f seconds", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v50, -1, -1);
    MEMORY[0x20F3115B0](v19, -1, -1);

    v15(v54, v47);
  }

  else
  {
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);
    v34 = *(v0 + 64);
    v33 = *(v0 + 72);
    v35 = *(v0 + 56);

    v15(v52, v31);
    v15(v16, v31);
    v14(v33, v35);
    v15(v54, v31);
  }

  v37 = *(v0 + 136);
  v36 = *(v0 + 144);
  v39 = *(v0 + 120);
  v38 = *(v0 + 128);
  v40 = *(v0 + 112);
  v42 = *(v0 + 80);
  v41 = *(v0 + 88);
  v43 = *(v0 + 72);
  **(v0 + 16) = v1;

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_20CD59B28()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 104) + 8;
  (*(v0 + 200))(*(v0 + 144), *(v0 + 96));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_20CD59C10(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_20CD59C30, 0, 0);
}

uint64_t sub_20CD59C30()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_seymourStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_20CD59D60;

  return v8(v2, v3);
}

uint64_t sub_20CD59D60(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = v3[3];
    v9 = swift_task_alloc();
    v3[6] = v9;
    *v9 = v5;
    v9[1] = sub_20CD59EEC;
    v10 = v3[2];

    return sub_20CD4DBF4(v10, 1);
  }
}

uint64_t sub_20CD59EEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_20CD5A2DC;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_20CD5A014;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CD5A014()
{
  v1 = v0[3];
  v2 = sub_20CD55204(v0[8], sub_20CD46CF0, &qword_28110F650, MEMORY[0x277D0A688], sub_20CCEC32C);
  v0[9] = v2;

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_20CD5A128;
  v4 = v0[5];
  v5 = v0[2];

  return sub_20CD51014(v5, v4, v2);
}

uint64_t sub_20CD5A128(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_20CD5A340;
  }

  else
  {
    v8 = v4[9];
    v9 = v4[5];

    v4[12] = a1;
    v7 = sub_20CD5A264;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CD5A264()
{
  v1 = sub_20CD55408(*(v0 + 96));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20CD5A2DC()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20CD5A340()
{
  v1 = v0[5];

  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CD5A3AC()
{
  v1 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_calendar;
  v2 = sub_20CD626F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_seymourStore));
  sub_20CD5AB68(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_ringsContainerQuery);
  sub_20CD5ABBC(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_fitnessPlusContainerQuery);
  sub_20CD5AC10(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_workoutContainerQuery);
  v3 = *(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_cache);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for SnapshotRetriverRepresentableProvider()
{
  result = qword_27C811288;
  if (!qword_27C811288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CD5A4D8()
{
  result = sub_20CD626F4();
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

uint64_t sub_20CD5A594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusSessionRepresentable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD5A5F8(uint64_t a1)
{
  v2 = type metadata accessor for FitnessPlusSessionRepresentable();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD5A654(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20CD62E94() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20CD62654() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_20CD62514() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v10);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20CCEE040;

  return sub_20CD580E0(a1, v13, v14, v1 + v6, v1 + v9, v15, v1 + v12);
}

uint64_t sub_20CD5A81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD5A88C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CD5A8F4()
{
  result = qword_27C8112A0;
  if (!qword_27C8112A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8112A0);
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
    JUMPOUT(0x20F3115B0);
  }

  return result;
}

uint64_t sub_20CD5A998(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20CD62E94() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20CD62514() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20CCED908;

  return sub_20CD55CD0(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_20CD5AB20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SnapshotRetriverRepresentableProvider.Failure(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SnapshotRetriverRepresentableProvider.Failure(_WORD *result, int a2, int a3)
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

unint64_t sub_20CD5AD48()
{
  result = qword_27C8112A8;
  if (!qword_27C8112A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8112A8);
  }

  return result;
}

uint64_t sub_20CD5ADB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_20CD631B4();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = sub_20CD62E94();
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = sub_20CD62AB4();
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v15 = sub_20CD62EF4();
  v4[29] = v15;
  v16 = *(v15 - 8);
  v4[30] = v16;
  v17 = *(v16 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD5B098, 0, 0);
}

uint64_t sub_20CD5B098()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v17 = v0[11];
  v18 = v0[37];
  v7 = v0[6];
  v16 = v0[5];
  v8 = v0[3];
  v9 = v0[4];
  v10 = *(v3 + 16);
  v0[38] = v10;
  v0[39] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v8, v4);
  v10(v2, v9, v4);
  v11 = *(v6 + 16);
  v0[40] = v11;
  v0[41] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v5, v16, v17);
  sub_20CD62ED4();
  v12 = *__swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v13 = swift_task_alloc();
  v0[42] = v13;
  *v13 = v0;
  v13[1] = sub_20CD5B1F4;
  v14 = v0[37];

  return sub_20CD1DFD8(v14);
}

uint64_t sub_20CD5B1F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v7 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v5 = sub_20CD5C300;
  }

  else
  {
    v5 = sub_20CD5B308;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD5B308()
{
  v225 = v0;
  v1 = v0[44];
  v224 = v0[43];

  sub_20CD5C544(&v224);
  if (v1)
  {
  }

  else
  {
    v3 = v0[43];
    v4 = v0[30];
    v5 = v0[15];
    v6 = v0[14];
    v151 = v0 + 14;

    v205 = v0;
    v158 = v224;
    v0[2] = v224;
    v7 = v0 + 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F08, &qword_20CD64870);
    sub_20CD5C5EC();
    sub_20CD5F728(&qword_28110F780, MEMORY[0x277D09F70]);
    v8 = sub_20CD632B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112B8, &qword_20CD651D0);
    result = sub_20CD63534();
    v9 = result;
    v10 = 0;
    v162 = v8 + 64;
    v181 = v8;
    v11 = 1 << *(v8 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v8 + 64);
    v160 = (v11 + 63) >> 6;
    v207 = v5;
    v14 = (v5 + 32);
    v164 = v4;
    v219 = (v4 + 8);
    v166 = result + 64;
    v156 = v7 + 27;
    v186 = result;
    v221 = (v5 + 32);
    while (1)
    {
      v15 = v205;
      if (!v13)
      {
        break;
      }

      v189 = (v13 - 1) & v13;
      v193 = v10;
      v16 = __clz(__rbit64(v13)) | (v10 << 6);
LABEL_13:
      v20 = v205[39];
      v22 = v205[23];
      v21 = v205[24];
      v23 = v205[14];
      v24 = *(v207 + 72);
      v25 = v24 * v16;
      (v205[38])(v21, *(v181 + 48) + v24 * v16, v23);
      v197 = v16;
      v26 = *(*(v181 + 56) + 8 * v16);
      v211 = *(v207 + 32);
      v211(v22, v21, v23);
      v27 = *(v26 + 16);
      if (v27)
      {
        v175 = v25;
        v224 = MEMORY[0x277D84F90];

        sub_20CD46B04(0, v27, 0);
        v28 = v224;
        v29 = v26 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
        v30 = *(v164 + 72);
        v31 = *(v164 + 16);
        do
        {
          v32 = v205[35];
          v33 = v205[29];
          v34 = v205[22];
          v31(v32, v29, v33);
          sub_20CD62EE4();
          (*v219)(v32, v33);
          v224 = v28;
          v36 = v28[2];
          v35 = v28[3];
          if (v36 >= v35 >> 1)
          {
            sub_20CD46B04(v35 > 1, v36 + 1, 1);
            v28 = v224;
          }

          v37 = v205[22];
          v38 = v205[14];
          v28[2] = v36 + 1;
          v211(v28 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + v36 * v24, v37, v38);
          v29 += v30;
          --v27;
        }

        while (v27);
        v9 = v186;
        v14 = v221;
        v25 = v175;
      }

      else
      {

        v28 = MEMORY[0x277D84F90];
      }

      v224 = v28;

      sub_20CD5C650(sub_20CD5C518, 0);
      v39 = v205[23];
      v40 = v205[14];

      v41 = v224;
      *(v166 + ((v197 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v197;
      result = (v211)(v9[6] + v25, v39, v40);
      *(v9[7] + 8 * v197) = v41;
      v42 = v9[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      v9[2] = v44;
      v13 = v189;
      v10 = v193;
    }

    v17 = v10;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v18 >= v160)
      {
        break;
      }

      v19 = *(v162 + 8 * v18);
      ++v17;
      if (v19)
      {
        v189 = (v19 - 1) & v19;
        v193 = v18;
        v16 = __clz(__rbit64(v19)) | (v18 << 6);
        goto LABEL_13;
      }
    }

    v45 = v158[2];
    if (v45)
    {
      v46 = v205[36];
      v47 = v205[29];
      v48 = v205[25];
      v212 = v205[26];
      v49 = v205[14];
      v153 = (*(v164 + 80) + 32) & ~*(v164 + 80);
      v152 = *(v164 + 72);
      v50 = *(v164 + 16);
      v50(v46, v158 + v153 + v152 * (v45 - 1), v47);
      sub_20CD62EC4();
      v51 = *(v164 + 8);
      v51(v46, v47);
      v194 = *v14;
      result = (*v14)(v212, v48, v49);
      if (!v158[2])
      {
        goto LABEL_53;
      }

      v182 = v205[19];
      v53 = v205[38];
      v52 = v205[39];
      v54 = v205[35];
      v55 = v205[29];
      v213 = v205[30];
      v56 = v205[21];
      v167 = v205[20];
      v58 = v205[14];
      v57 = v205[15];
      v170 = v205[3];
      v176 = v205[26];
      v190 = v50;
      v50(v54, v158 + v153, v55);

      sub_20CD62EE4();
      v208 = v51;
      v51(v54, v55);
      v53(v167, v176, v58);
      v53(v182, v170, v58);
      v154 = (v57 + 48);
      v198 = (v57 + 8);
      v183 = (v213 + 32);
      v59 = MEMORY[0x277D84F90];
      while (1)
      {
        v214 = v59;
        v60 = v186;
        v61 = v15;
        if (!v186[2])
        {
          break;
        }

        v62 = sub_20CD52DAC(v15[20]);
        v61 = v205;
        if ((v63 & 1) == 0)
        {
          break;
        }

        v64 = v205[19];
        v65 = v205[14];
        v66 = v205[10];
        v67 = *(v186[7] + 8 * v62);
        *(swift_task_alloc() + 16) = v64;

        sub_20CD52238(sub_20CD5F630, v67, v66);

        if ((*v154)(v66, 1, v65) == 1)
        {
          sub_20CD5F6C0(v205[10]);
          v60 = v186;
          break;
        }

        v163 = v205[40];
        v165 = v205[41];
        v69 = v205[38];
        v68 = v205[39];
        v201 = v205[33];
        v70 = v205[28];
        v71 = v205[27];
        v72 = v205[16];
        v171 = v205[17];
        v177 = v205[29];
        v73 = v205[13];
        v74 = v205[14];
        v159 = v205[11];
        v161 = v205[32];
        v75 = v205[5];
        v155 = v75;
        v157 = v205[20];
        v194(v72, v205[10], v74);
        v69(v70, v72, v74);
        v69(v71, v157, v74);
        v163(v73, v155, v159);
        sub_20CD62ED4();
        v190(v201, v161, v177);
        sub_20CD62A34();
        v77 = v205[33];
        v76 = v205[34];
        v172 = v205[31];
        v78 = v205[29];
        v79 = v205[17];
        v80 = v205[18];
        v81 = v205[16];
        v82 = v205[14];
        v208(v205[32], v78);
        v202 = *v198;
        (*v198)(v81, v82);
        v178 = *v183;
        (*v183)(v76, v77, v78);
        v194(v80, v79, v82);
        v190(v172, v76, v78);
        v59 = v214;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_20CD527A4(0, v214[2] + 1, 1, v214);
        }

        v84 = v59[2];
        v83 = v59[3];
        if (v84 >= v83 >> 1)
        {
          v59 = sub_20CD527A4(v83 > 1, v84 + 1, 1, v59);
        }

        v15 = v205;
        v85 = v205[31];
        v86 = v205[29];
        v88 = v205[19];
        v87 = v205[20];
        v89 = v205[18];
        v90 = v205[14];
        v208(v205[34], v86);
        v202(v87, v90);
        v59[2] = v84 + 1;
        v178(v59 + v153 + v84 * v152, v85, v86);
        v194(v87, v89, v90);
        sub_20CD5F728(&qword_28110F778, MEMORY[0x277D09F70]);
        if (sub_20CD631F4())
        {
          v91 = v205[20];
          v92 = v205[21];
          v93 = v205[14];
          if (sub_20CD63214())
          {
            continue;
          }
        }

        v104 = v205[37];
        v105 = v205[29];
        v106 = v205[26];
        v108 = v205[20];
        v107 = v205[21];
        v109 = v205[14];

        v202(v108, v109);
        v202(v107, v109);
        v202(v106, v109);
        v208(v104, v105);
        v101 = v202;
        v103 = v151;
        v215 = v59;
        v102 = v205 + 19;
        goto LABEL_39;
      }

      v125 = v61[38];
      v124 = v61[39];
      v126 = v61[20];
      v127 = v61[14];
      type metadata accessor for SnapshotQueryPlanner.SnapshotQueryPlannerError();
      sub_20CD5F728(&qword_27C8112C0, type metadata accessor for SnapshotQueryPlanner.SnapshotQueryPlannerError);
      swift_allocError();
      v129 = v128;
      v125(v128, v126, v127);
      if (v60[2])
      {
        v130 = sub_20CD52DAC(v61[20]);
        if (v131)
        {
          v132 = *(v60[7] + 8 * v130);
        }

        else
        {
          v132 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v132 = MEMORY[0x277D84F90];
      }

      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112C8, &qword_20CD651D8);
      *(v129 + *(v133 + 48)) = v132;
      (*(*(v133 - 8) + 56))(v129, 0, 1, v133);
      swift_willThrow();

      v134 = *v198;
      v135 = v205[37];
      v136 = v205[29];
      v137 = v205[26];
      v138 = v205[21];
      v139 = v205[19];
      v140 = v205[14];
      (*v198)(v205[20], v140);
      v134(v138, v140);
      v134(v137, v140);
      v208(v135, v136);

      v134(v139, v140);
      v142 = v205[36];
      v141 = v205[37];
      v144 = v205[34];
      v143 = v205[35];
      v146 = v205[32];
      v145 = v205[33];
      v147 = v205[31];
      v149 = v205[27];
      v148 = v205[28];
      v169 = v205[26];
      v174 = v205[25];
      v180 = v205[24];
      v185 = v205[23];
      v188 = v205[22];
      v192 = v205[21];
      v196 = v205[20];
      v200 = v205[19];
      v204 = v205[18];
      v210 = v205[17];
      v216 = v205[16];
      v218 = v205[13];
      v220 = v205[10];
      v223 = v205[9];

      v150 = v205[1];

      return v150();
    }

    else
    {
      v94 = v205[9];

      sub_20CD63034();
      v95 = sub_20CD63194();
      v96 = sub_20CD633D4();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_20CCEA000, v95, v96, "Could not find any checkpoints to retrieve snapshots.", v97, 2u);
        MEMORY[0x20F3115B0](v97, -1, -1);
      }

      v15 = v205;
      v99 = v205[8];
      v98 = v205[9];
      v100 = v205[7];

      (*(v99 + 8))(v98, v100);
      v101 = *v219;
      v102 = v205 + 37;
      v215 = MEMORY[0x277D84F90];
      v103 = v156;
LABEL_39:
      v110 = *v102;
      v112 = v15[36];
      v111 = v15[37];
      v114 = v15[34];
      v113 = v15[35];
      v115 = v15;
      v116 = v15[32];
      v117 = v15[33];
      v118 = v15[31];
      v119 = v15[28];
      v168 = v15[27];
      v173 = v15[26];
      v179 = v15[25];
      v184 = v15[24];
      v187 = v15[23];
      v191 = v15[22];
      v195 = v15[21];
      v199 = v15[20];
      v203 = v15[19];
      v206 = v15[18];
      v209 = v15[17];
      v217 = v15[16];
      v120 = v15[13];
      v122 = v15 + 9;
      v121 = v15[9];
      v222 = v122[1];
      v101(v110, *v103);

      v123 = v115[1];

      return v123(v215);
    }
  }
}

uint64_t sub_20CD5C300()
{
  (*(v0[30] + 8))(v0[37], v0[29]);
  v26 = v0[44];
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[26];
  v13 = v0[25];
  v14 = v0[24];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[21];
  v18 = v0[20];
  v19 = v0[19];
  v20 = v0[18];
  v21 = v0[17];
  v22 = v0[16];
  v23 = v0[13];
  v24 = v0[10];
  v25 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_20CD5C4A0@<X0>(uint64_t a1@<X8>)
{
  sub_20CD62EC4();
  v2 = sub_20CD62AB4();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_20CD5C544(void **a1)
{
  v2 = *(sub_20CD62EF4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20CD41E40(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20CD5C710(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_20CD5C5EC()
{
  result = qword_27C8112B0;
  if (!qword_27C8112B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C810F08, &qword_20CD64870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8112B0);
  }

  return result;
}

uint64_t sub_20CD5C650(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_20CD62AB4() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_20CD41E58(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_20CD5C83C(a1, a2);
  *v3 = v7;
  return result;
}

uint64_t sub_20CD5C710(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_20CD63564();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CD62EF4();
        v6 = sub_20CD63304();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20CD62EF4() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20CD5D004(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20CD5C978(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20CD5C83C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_20CD63564();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CD62AB4();
        v9 = sub_20CD63304();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_20CD62AB4() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_20CD5DC04(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_20CD5CD18(0, v5, 1, a1, a2);
  }

  return result;
}

uint64_t sub_20CD5C978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_20CD62AB4();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_20CD62EF4();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_20CD62EC4();
      v34 = v61;
      sub_20CD62EC4();
      v64 = sub_20CD62A64();
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20CD5CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v53 = a5;
  v54 = a4;
  v11 = sub_20CD62AB4();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v39 - v16;
  result = MEMORY[0x28223BE20](v15);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v18;
    v20 = *v5;
    v22 = *(v19 + 16);
    v21 = v19 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = v20 + v23 * (a3 - 1);
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        v49(v51, v26, v11);
        v30(v27, v28, v11);
        v31 = v54(v29, v27);
        if (v7)
        {
          v38 = *v50;
          (*v50)(v27, v11);
          return (v38)(v29, v11);
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v11);
        result = (v34)(v29, v11);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return result;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v35)(v28, v36, v11);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v7 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v7 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = v43 + v39;
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_20CD5D004(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v161 = sub_20CD62AB4();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v135 - v12;
  v13 = sub_20CD62EF4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = MEMORY[0x28223BE20](v13);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v135 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v135 - v21;
  result = MEMORY[0x28223BE20](v20);
  v162 = &v135 - v23;
  v24 = *(a3 + 1);
  v147 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v13 = v26;
    v26 = *v139;
    if (!*v139)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v54 = v147;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_20CD41C10(v13);
      v13 = result;
    }

    v164 = v13;
    v131 = *(v13 + 16);
    if (v131 >= 2)
    {
      while (*v54)
      {
        v132 = *(v13 + 16 * v131);
        v133 = *(v13 + 16 * (v131 - 1) + 40);
        sub_20CD5E810(*v54 + *(v14 + 9) * v132, *v54 + *(v14 + 9) * *(v13 + 16 * (v131 - 1) + 32), *v54 + *(v14 + 9) * v133, v26);
        if (v5)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_20CD41C10(v13);
        }

        if (v131 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v134 = (v13 + 16 * v131);
        *v134 = v132;
        v134[1] = v133;
        v164 = v13;
        result = sub_20CD41B84(v131 - 1);
        v13 = v164;
        v131 = *(v164 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v135 = a4;
  v25 = 0;
  v155 = (v8 + 8);
  v156 = v14 + 16;
  v153 = (v14 + 32);
  v154 = v14 + 8;
  v26 = MEMORY[0x277D84F90];
  v157 = v13;
  v138 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v147;
    }

    else
    {
      v148 = v24;
      v136 = v26;
      v137 = v5;
      v28 = v25;
      v140 = v25;
      v29 = *v147;
      v163 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v162, v31, v13);
      v34 = v158;
      v149 = v33;
      (v33)(v158, v29 + v30 * v28, v32);
      v35 = v159;
      sub_20CD62EC4();
      v36 = v160;
      sub_20CD62EC4();
      LODWORD(v150) = sub_20CD62A64();
      v37 = *v155;
      v38 = v36;
      v39 = v161;
      (*v155)(v38, v161);
      v146 = v37;
      (v37)(v35, v39);
      v40 = *(v138 + 1);
      v26 = v154;
      v40(v34, v32);
      v145 = v40;
      result = (v40)(v162, v32);
      v41 = v140 + 2;
      v152 = v30;
      v42 = v163 + v30 * (v140 + 2);
      while (1)
      {
        v43 = v148;
        if (v148 == v41)
        {
          break;
        }

        v44 = v157;
        v45 = v149;
        v149();
        v46 = v158;
        v45(v158, v31, v44);
        v47 = v159;
        sub_20CD62EC4();
        v48 = v160;
        sub_20CD62EC4();
        LOBYTE(v163) = sub_20CD62A64() & 1;
        LODWORD(v163) = v163;
        v49 = v48;
        v50 = v161;
        v51 = v31;
        v52 = v146;
        (v146)(v49, v161);
        v52(v47, v50);
        v26 = v154;
        v53 = v145;
        (v145)(v46, v44);
        result = v53(v162, v44);
        ++v41;
        v42 += v152;
        v31 = &v152[v51];
        if ((v150 & 1) != v163)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v137;
      v54 = v147;
      v14 = v138;
      v13 = v157;
      v25 = v140;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v140)
      {
        goto LABEL_125;
      }

      if (v140 < v43)
      {
        v55 = v43;
        v56 = v152 * (v43 - 1);
        v57 = v43 * v152;
        v148 = v43;
        v58 = v140;
        v59 = v140 * v152;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v153;
            (*v153)(v142, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v61)(v60 + v56, v142, v13);
            v54 = v147;
          }

          ++v58;
          v56 -= v152;
          v57 -= v152;
          v59 += v152;
        }

        while (v58 < v55);
        v5 = v137;
        v14 = v138;
        v26 = v136;
        v25 = v140;
        v43 = v148;
      }

      else
      {
LABEL_23:
        v26 = v136;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v135)
      {
        if (__OFADD__(v25, v135))
        {
          goto LABEL_126;
        }

        if (v25 + v135 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v135;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20CD41D3C(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      result = sub_20CD41D3C((v65 > 1), v66 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    v143 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
          __break(1u);
LABEL_108:
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
          goto LABEL_127;
        }

        if (!*v147)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_20CD5E810(*v147 + *(v54 + 9) * v109, *v147 + *(v54 + 9) * *&v26[16 * v70 + 32], *v147 + *(v54 + 9) * v110, v14);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_20CD41C10(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v26;
        result = sub_20CD41B84(v70);
        v26 = v164;
        v67 = *(v164 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v147 + 1);
    v25 = v143;
    v14 = v54;
    if (v143 >= v24)
    {
      goto LABEL_96;
    }
  }

  v136 = v26;
  v137 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v152 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v149 = -v113;
  v140 = v25;
  v115 = (v25 - v43);
  v150 = v112;
  v141 = v113;
  v116 = v112 + v43 * v113;
  v143 = v63;
LABEL_87:
  v148 = v43;
  v144 = v116;
  v145 = v115;
  v117 = v116;
  v146 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v162;
    v119 = v152;
    (v152)(v162, v117, v13);
    v120 = v158;
    v119(v158, v118, v13);
    v121 = v159;
    sub_20CD62EC4();
    v122 = v160;
    sub_20CD62EC4();
    LODWORD(v163) = sub_20CD62A64();
    v123 = *v155;
    v124 = v122;
    v125 = v161;
    (*v155)(v124, v161);
    v126 = v121;
    v13 = v157;
    v123(v126, v125);
    v127 = *v154;
    (*v154)(v120, v13);
    result = v127(v54, v13);
    if ((v163 & 1) == 0)
    {
LABEL_86:
      v43 = v148 + 1;
      v114 = &v146[v141];
      v115 = v145 - 1;
      v64 = v143;
      v116 = v144 + v141;
      if (v148 + 1 != v143)
      {
        goto LABEL_87;
      }

      v5 = v137;
      v14 = v138;
      v26 = v136;
      v25 = v140;
      if (v143 < v140)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v150)
    {
      break;
    }

    v128 = *v153;
    v129 = v151;
    (*v153)(v151, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v149 + v118;
    v117 += v149;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_20CD5DC04(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = sub_20CD62AB4();
  v12 = *(*(v163 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v163);
  v146 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v149 = &v134 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v134 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v140 = &v134 - v23;
  MEMORY[0x28223BE20](v22);
  result = MEMORY[0x28223BE20](&v134 - v24);
  v161 = v27;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v26;
  v139 = result;
  v151 = v21;
  v147 = v29;
  v148 = v28;
  v137 = a6;
  v31 = 0;
  v159 = (v27 + 8);
  v160 = v27 + 16;
  v155 = (v27 + 32);
  v32 = MEMORY[0x277D84F90];
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163);
      v157 = v36;
      v138 = v35;
      v39 = &v35[v36 * v144];
      v40 = v139;
      v152 = v37;
      v37(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      result = (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = &v138[v157 * (v144 + 2)];
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        result = v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, &v63[v61], v163);
              if (v61 < a4 || &v63[v61] >= &v63[v58])
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v64)(&v63[a4], v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                result = (v123)(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = v138 - 1;
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    a4 = v33;
    if ((result & 1) == 0)
    {
      result = sub_20CD41D3C(0, *(v32 + 2) + 1, 1, v32);
      v32 = result;
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      result = sub_20CD41D3C((v67 > 1), v68 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    sub_20CD5EEEC(*v162 + *(v161 + 72) * v110, *v162 + *(v161 + 72) * *&v32[16 * a4 + 32], *v162 + *(v161 + 72) * v111, v71, v33, a5);
    if (v7)
    {
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_20CD41C10(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    result = sub_20CD41B84(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  result = sub_20CD41C10(v32);
  v32 = result;
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    sub_20CD5EEEC(*v162 + *(v161 + 72) * v128, *v162 + *(v161 + 72) * *&v32[16 * v127 + 16], *v162 + *(v161 + 72) * v129, a4, v33, a5);
    if (v7)
    {
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_20CD41C10(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    result = sub_20CD41B84(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_20CD5E810(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = sub_20CD62AB4();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v11;
  v74 = sub_20CD62EF4();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v23;
    if (v23 >= 1)
    {
      v41 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v42 = v40;
      v73 = a1;
      v64 = -v19;
      v43 = v74;
      while (2)
      {
        while (1)
        {
          v58 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v65 = v44;
          v66 = v45;
          while (1)
          {
            v46 = v75;
            if (v44 <= a1)
            {
              v78 = v44;
              v76 = v58;
              goto LABEL_59;
            }

            v59 = v40;
            v75 += v41;
            v47 = v42 + v41;
            v48 = *v63;
            (*v63)();
            v49 = v67;
            (v48)(v67, v45, v43);
            v50 = v68;
            sub_20CD62EC4();
            v51 = v69;
            sub_20CD62EC4();
            v71 = sub_20CD62A64();
            v52 = *v62;
            v53 = v51;
            v54 = v70;
            (*v62)(v53, v70);
            v52(v50, v54);
            v55 = *v61;
            (*v61)(v49, v43);
            v55(v72, v43);
            if (v71)
            {
              break;
            }

            v40 = v47;
            v56 = v60;
            if (v46 < v42 || v75 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v66;
              v41 = v64;
            }

            else
            {
              v45 = v66;
              v41 = v64;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            a1 = v73;
            v44 = v65;
            if (v47 <= v56)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v57 = v60;
          if (v46 < v65 || v75 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v73;
          v40 = v59;
          v41 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v40 = v59;
        v41 = v64;
        if (v42 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v74;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v63;
        (v63)(v72, a2, v26);
        v29 = v67;
        (v28)(v67, a4, v26);
        v30 = v68;
        sub_20CD62EC4();
        v31 = v69;
        sub_20CD62EC4();
        v71 = sub_20CD62A64();
        v32 = a2;
        v33 = *v62;
        v34 = v31;
        v35 = a4;
        v36 = v70;
        (*v62)(v34, v70);
        v33(v30, v36);
        v37 = *v61;
        (*v61)(v29, v26);
        v37(v27, v26);
        if (v71)
        {
          v38 = v64;
          a2 = v32 + v64;
          v39 = v73;
          a4 = v35;
          if (v73 < v32 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v32;
          v38 = v64;
          a4 = v35 + v64;
          v39 = v73;
          if (v73 < v35 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4;
        }

        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_59:
  sub_20CD41C24(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_20CD5EEEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v79 = a6;
  v80 = a5;
  v78 = sub_20CD62AB4();
  v11 = *(v78 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v78);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v70 - v18;
  result = MEMORY[0x28223BE20](v17);
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v25 = &v70 - v21;
  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_67;
  }

  v26 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v24 != -1)
  {
    v27 = (a2 - a1) / v24;
    v86 = a1;
    v85 = a4;
    v81 = v24;
    if (v27 < v26 / v24)
    {
      v28 = v27 * v24;
      if (a4 < a1 || a1 + v28 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v77 = a4 + v28;
      v84 = a4 + v28;
      if (v28 >= 1 && a2 < a3)
      {
        v54 = *(v11 + 16);
        v75 = v19;
        v76 = v11 + 16;
        v73 = v54;
        v74 = (v11 + 8);
        v55 = v25;
        v56 = v78;
        v57 = v6;
        v72 = a3;
        while (1)
        {
          v82 = a1;
          v58 = v73;
          v73(v55, a2, v56);
          v59 = a2;
          v60 = v55;
          v61 = v75;
          v58(v75, a4, v56);
          v62 = v80(v60, v61);
          if (v57)
          {
            break;
          }

          v63 = v62;
          v83 = 0;
          v64 = *v74;
          (*v74)(v61, v56);
          v64(v60, v56);
          v55 = v60;
          if (v63)
          {
            v65 = v81;
            v66 = v82;
            a2 = v59 + v81;
            if (v82 < v59 || v82 >= a2)
            {
              v56 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v65 = v81;
              v57 = v83;
            }

            else
            {
              v57 = v83;
              v56 = v78;
              if (v82 != v59)
              {
                swift_arrayInitWithTakeBackToFront();
                v65 = v81;
              }
            }
          }

          else
          {
            v65 = v81;
            v66 = v82;
            v67 = a4 + v81;
            a2 = v59;
            if (v82 < a4 || v82 >= v67)
            {
              v56 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v65 = v81;
              v57 = v83;
            }

            else
            {
              v57 = v83;
              v56 = v78;
              if (v82 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v65 = v81;
              }
            }

            v85 = v67;
            a4 = v67;
          }

          a1 = v66 + v65;
          v86 = a1;
          if (a4 >= v77 || a2 >= v72)
          {
            goto LABEL_65;
          }
        }

        v68 = *v74;
        (*v74)(v61, v56);
        v68(v60, v56);
      }

LABEL_65:
      sub_20CD41C3C(&v86, &v85, &v84);
      return 1;
    }

    v77 = v22;
    v29 = a3;
    v30 = a2;
    v31 = v26 / v24 * v24;
    if (a4 < v30 || v30 + v31 <= a4)
    {
      v32 = v30;
      v33 = v78;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v32 = v30;
      v33 = v78;
      if (a4 == v30)
      {
LABEL_24:
        v83 = v6;
        v35 = a4 + v31;
        if (v31 >= 1)
        {
          v36 = -v24;
          v70 = a4;
          v71 = (v11 + 16);
          v73 = (v11 + 8);
          v37 = a4 + v31;
          v38 = v29;
          v39 = v77;
          v82 = a1;
          v75 = -v24;
          do
          {
            v76 = v35;
            v72 = v35;
            v40 = v32;
            v78 = v32 + v36;
            v74 = v32;
            while (1)
            {
              if (v40 <= a1)
              {
                v86 = v40;
                v35 = v72;
                goto LABEL_64;
              }

              v41 = v38;
              v42 = v75;
              v81 = v37;
              v43 = v37 + v75;
              v44 = *v71;
              (*v71)(v39, v37 + v75, v33);
              v44(v15, v78, v33);
              v45 = v39;
              v46 = v83;
              v47 = v80(v39, v15);
              v83 = v46;
              if (v46)
              {
                v69 = *v73;
                (*v73)(v15, v33);
                v69(v45, v33);
                v86 = v74;
                v35 = v76;
                goto LABEL_64;
              }

              v48 = v47;
              v49 = &v41[v42];
              v50 = v15;
              v51 = *v73;
              v52 = v50;
              (*v73)();
              v51(v45, v33);
              if (v48)
              {
                break;
              }

              v38 = &v41[v42];
              if (v41 < v81 || v49 >= v81)
              {
                swift_arrayInitWithTakeFrontToBack();
                v15 = v52;
                v39 = v77;
              }

              else
              {
                v15 = v52;
                v39 = v77;
                if (v41 != v81)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v76 = v43;
              v37 = v43;
              a1 = v82;
              v40 = v74;
              if (v43 <= v70)
              {
                v32 = v74;
                v35 = v76;
                goto LABEL_63;
              }
            }

            v38 = &v41[v42];
            if (v41 < v74 || v49 >= v74)
            {
              v32 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v53 = v70;
              v15 = v52;
              v39 = v77;
            }

            else
            {
              v39 = v77;
              v32 = v78;
              v53 = v70;
              v15 = v52;
              if (v41 != v74)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v37 = v81;
            a1 = v82;
            v36 = v75;
            v35 = v76;
          }

          while (v81 > v53);
        }

LABEL_63:
        v86 = v32;
LABEL_64:
        v84 = v35;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v81;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SnapshotQueryPlanner.SnapshotQueryPlannerError()
{
  result = qword_27C8112D0;
  if (!qword_27C8112D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CD5F630()
{
  v1 = *(v0 + 16);
  sub_20CD62AB4();
  sub_20CD5F728(&qword_28110F778, MEMORY[0x277D09F70]);
  return sub_20CD63214() & 1;
}

uint64_t sub_20CD5F6C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD5F728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CD5F798()
{
  sub_20CD5F7F0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_20CD5F7F0()
{
  if (!qword_27C8112E0)
  {
    sub_20CD62AB4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C810D98, &qword_20CD64450);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8112E0);
    }
  }
}

uint64_t sub_20CD5F870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20CD1D9A8(a3, v27 - v11, &qword_27C811360, &qword_20CD653E0);
  v13 = sub_20CD63374();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20CD1DA10(v12, &qword_27C811360, &qword_20CD653E0);
  }

  else
  {
    sub_20CD63364();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20CD63314();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20CD63274() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_20CD1DA10(a3, &qword_27C811360, &qword_20CD653E0);

      return v25;
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

  sub_20CD1DA10(a3, &qword_27C811360, &qword_20CD653E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_20CD5FB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20CD1D9A8(a3, v27 - v11, &qword_27C811360, &qword_20CD653E0);
  v13 = sub_20CD63374();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20CD1DA10(v12, &qword_27C811360, &qword_20CD653E0);
  }

  else
  {
    sub_20CD63364();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20CD63314();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20CD63274() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_20CD1DA10(a3, &qword_27C811360, &qword_20CD653E0);

      return v25;
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

  sub_20CD1DA10(a3, &qword_27C811360, &qword_20CD653E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_20CD5FE7C()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD5FF24, v0, 0);
}

uint64_t sub_20CD5FF24()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_fetchingTask;
  v0[5] = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_fetchingTask;
  v3 = *(v1 + v2);
  v0[6] = v3;
  if (v3)
  {
    v4 = *(MEMORY[0x277D857E0] + 4);

    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_20CD60114;
    v6 = (v0 + 81);
  }

  else
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = sub_20CD63374();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = sub_20CD62224();
    v11 = swift_allocObject();
    v11[2] = v1;
    v11[3] = v10;
    v11[4] = v1;
    v11[5] = v8;
    swift_retain_n();
    v3 = sub_20CD5F870(0, 0, v7, &unk_20CD65430, v11);
    v0[8] = v3;
    v12 = *(v1 + v2);
    *(v1 + v2) = v3;

    v13 = *(MEMORY[0x277D857E0] + 4);
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_20CD60298;
    v6 = v0 + 10;
  }

  return MEMORY[0x282200460](v6, v3, &type metadata for HealthKitCloudRestoreStatus);
}

uint64_t sub_20CD60114()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CD60224, v2, 0);
}

uint64_t sub_20CD60224()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 32);
  v3 = *(v0 + 81);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_20CD60298()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CD603A8, v2, 0);
}

uint64_t sub_20CD603A8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  v4 = *(v3 + v2);
  v5 = *(v0 + 80);
  *(v3 + v2) = 0;

  v6 = *(v0 + 32);

  v7 = *(v0 + 8);

  return v7(v5);
}

uint64_t sub_20CD60438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v7 = sub_20CD631B4();
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD60500, a4, 0);
}

uint64_t sub_20CD60500()
{
  v24 = v0;
  v1 = v0[7];
  v2 = [objc_allocWithZone(MEMORY[0x277CCD130]) initWithHealthStore:*(v0[3] + 112) delegate:v0[3]];
  v0[8] = v2;
  sub_20CD63034();
  v3 = sub_20CD63194();
  v4 = sub_20CD633D4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  if (v5)
  {
    v9 = v0[4];
    v22 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    v12 = sub_20CD63654();
    v14 = sub_20CD6153C(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_20CCEA000, v3, v4, "[%s] Fetching Status", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F3115B0](v11, -1, -1);
    MEMORY[0x20F3115B0](v10, -1, -1);

    (*(v6 + 8))(v22, v8);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v15 = v0[3];
  v16 = sub_20CD62224();
  v17 = swift_task_alloc();
  v0[9] = v17;
  *(v17 + 16) = v15;
  *(v17 + 24) = v2;
  v18 = *(MEMORY[0x277D859E0] + 4);
  v19 = swift_task_alloc();
  v0[10] = v19;
  *v19 = v0;
  v19[1] = sub_20CD6075C;
  v20 = v0[2];

  return MEMORY[0x2822007B8](v20, v15, v16, 0x6174536863746566, 0xED00002928737574, sub_20CD624AC, v17, &type metadata for HealthKitCloudRestoreStatus);
}

uint64_t sub_20CD6075C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20CD60888, v3, 0);
}

uint64_t sub_20CD60888()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

id sub_20CD608F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C811370, &unk_20CD65418);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112F0, &qword_20CD643B0);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_continuation;
  swift_beginAccess();
  sub_20CD621B4(v9, a2 + v12);
  swift_endAccess();
  return [a3 startObservingSyncStatus];
}

uint64_t sub_20CD60A84(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112F0, &qword_20CD643B0);
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C811370, &unk_20CD65418) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v7 = sub_20CD631B4();
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD60C34, v1, 0);
}

uint64_t sub_20CD60C34()
{
  v42 = v0;
  if ([*(v0 + 64) syncEnabled])
  {
    v1 = [*(v0 + 64) restoreCompletionDate];
    v2 = *(v0 + 152);
    if (v1)
    {
      v3 = *(v0 + 152);
      v4 = v1;
      sub_20CD62634();

      v5 = sub_20CD62654();
      v40 = 1;
      (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
      sub_20CD1DA10(v2, &qword_27C810CC8, &qword_20CD64160);
      goto LABEL_9;
    }

    v6 = sub_20CD62654();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    sub_20CD1DA10(v2, &qword_27C810CC8, &qword_20CD64160);
  }

  if ([*(v0 + 64) syncEnabled])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v40 = v7;
LABEL_9:
  v8 = *(v0 + 144);
  sub_20CD63034();
  v9 = sub_20CD63194();
  v10 = sub_20CD633D4();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 128);
  if (v11)
  {
    v15 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v41 = v17;
    *v16 = 136315394;
    v18 = sub_20CD63654();
    v20 = sub_20CD6153C(v18, v19, &v41);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v0 + 161) = v40;
    v21 = sub_20CD63264();
    v23 = sub_20CD6153C(v21, v22, &v41);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_20CCEA000, v9, v10, "[%s] Caching Status: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v17, -1, -1);
    MEMORY[0x20F3115B0](v16, -1, -1);
  }

  (*(v13 + 8))(v12, v14);
  v24 = *(v0 + 120);
  v25 = *(v0 + 88);
  v26 = *(v0 + 96);
  v27 = *(v0 + 72);
  v28 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_continuation;
  swift_beginAccess();
  sub_20CD1D9A8(v27 + v28, v24, &unk_27C811370, &unk_20CD65418);
  v29 = (*(v26 + 48))(v24, 1, v25);
  v30 = *(v0 + 120);
  if (v29)
  {
    sub_20CD1DA10(*(v0 + 120), &unk_27C811370, &unk_20CD65418);
  }

  else
  {
    v32 = *(v0 + 96);
    v31 = *(v0 + 104);
    v33 = *(v0 + 88);
    (*(v32 + 16))(v31, *(v0 + 120), v33);
    sub_20CD1DA10(v30, &unk_27C811370, &unk_20CD65418);
    *(v0 + 160) = v40;
    sub_20CD63344();
    (*(v32 + 8))(v31, v33);
  }

  v34 = *(v0 + 144);
  v35 = *(v0 + 152);
  v36 = *(v0 + 112);
  v37 = *(v0 + 104);
  (*(*(v0 + 96) + 56))(v36, 1, 1, *(v0 + 88));
  swift_beginAccess();
  sub_20CD621B4(v36, v27 + v28);
  swift_endAccess();

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_20CD610AC()
{
  sub_20CD1DA10(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_continuation, &unk_27C811370, &unk_20CD65418);
  v1 = *(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_fetchingTask);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for HealthKitCloudRestoreStatusProvider()
{
  result = qword_28110F1A8;
  if (!qword_28110F1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CD61168()
{
  sub_20CD61218();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_20CD61218()
{
  if (!qword_28110F168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8112F0, &qword_20CD643B0);
    v0 = sub_20CD63464();
    if (!v1)
    {
      atomic_store(v0, &qword_28110F168);
    }
  }
}

uint64_t sub_20CD6127C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_20CCED908;

  return sub_20CD60A84(a5);
}

uint64_t getEnumTagSinglePayload for HealthKitCloudRestoreStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HealthKitCloudRestoreStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20CD614E8()
{
  result = qword_27C811358;
  if (!qword_27C811358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811358);
  }

  return result;
}

uint64_t sub_20CD6153C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20CD61608(v11, 0, 0, 1, a1, a2);
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
    sub_20CD28ED4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20CD61608(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20CD61714(a5, a6);
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
    result = sub_20CD634E4();
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

uint64_t sub_20CD61714(uint64_t a1, unint64_t a2)
{
  v4 = sub_20CD61760(a1, a2);
  sub_20CD61890(&unk_2823B6D08);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20CD61760(uint64_t a1, unint64_t a2)
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

  v6 = sub_20CD6197C(v5, 0);
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

  result = sub_20CD634E4();
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
        v10 = sub_20CD632A4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20CD6197C(v10, 0);
        result = sub_20CD634A4();
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

uint64_t sub_20CD61890(uint64_t result)
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

  result = sub_20CD619F0(result, v12, 1, v3);
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

void *sub_20CD6197C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811368, &qword_20CD653F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20CD619F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811368, &qword_20CD653F8);
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

uint64_t sub_20CD61AE4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_20CD61BD8;

  return v6(v2 + 32);
}

uint64_t sub_20CD61BD8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_20CD61CEC(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36[-v6];
  v8 = sub_20CD631B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20CD63034();
  v13 = a1;
  v14 = sub_20CD63194();
  v15 = sub_20CD633D4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40 = v9;
    v17 = v16;
    v38 = swift_slowAlloc();
    v41 = v38;
    *v17 = 136315394;
    v18 = sub_20CD63654();
    v20 = sub_20CD6153C(v18, v19, &v41);
    v39 = v8;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = v13;
    v23 = [v22 description];
    v24 = sub_20CD63254();
    v37 = v15;
    v25 = v7;
    v26 = v24;
    v28 = v27;

    v29 = v26;
    v7 = v25;
    v30 = sub_20CD6153C(v29, v28, &v41);

    *(v17 + 14) = v30;
    _os_log_impl(&dword_20CCEA000, v14, v37, "[%s] Received cloud sync observer status update: %s", v17, 0x16u);
    v31 = v38;
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v31, -1, -1);
    MEMORY[0x20F3115B0](v17, -1, -1);

    (*(v40 + 8))(v12, v39);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v32 = sub_20CD63374();
  (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v2;
  v33[5] = v13;
  v34 = v13;

  sub_20CD5FB68(0, 0, v7, &unk_20CD653F0, v33);
}

uint64_t sub_20CD6203C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CCED908;

  return sub_20CD6127C(a1, v4, v5, v7, v6);
}

uint64_t sub_20CD620FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CCEE040;

  return sub_20CD1B958(a1, v5);
}

uint64_t sub_20CD621B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C811370, &unk_20CD65418);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CD62224()
{
  result = qword_28110F1C0[0];
  if (!qword_28110F1C0[0])
  {
    type metadata accessor for HealthKitCloudRestoreStatusProvider();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28110F1C0);
  }

  return result;
}

uint64_t sub_20CD6227C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CCEE040;

  return sub_20CD60438(a1, v4, v5, v7, v6);
}

uint64_t sub_20CD6233C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CCEE040;

  return sub_20CD61AE4(a1, v5);
}

uint64_t sub_20CD623F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CCED908;

  return sub_20CD61AE4(a1, v5);
}