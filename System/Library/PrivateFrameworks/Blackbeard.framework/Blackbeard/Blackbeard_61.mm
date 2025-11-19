uint64_t sub_1E653DBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D8738();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE10, &unk_1E6609D10);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E653E610(a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE08, &qword_1E6609D08);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE08, &qword_1E6609D08);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E653DF30(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v29 = a6;
  v31 = a2;
  v11 = sub_1E65E3B68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v16 = sub_1E65E3B48();
  v17 = sub_1E65E6338();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[0] = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[1] = a8;
    v21 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, &v32);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_1E5DE9000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1E694F1C0](v21, -1, -1);
    v25 = v19;
    a1 = v28[0];
    MEMORY[0x1E694F1C0](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  if (v31)
  {
    v32 = a1;
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADF8, &qword_1E6609CF8);
    return sub_1E65E5FE8();
  }

  else
  {
    LOBYTE(v32) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADF8, &qword_1E6609CF8);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E653E188(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v29 = a6;
  v31 = a2;
  v11 = sub_1E65E3B68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v16 = sub_1E65E3B48();
  v17 = sub_1E65E6338();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[0] = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[1] = a8;
    v21 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, &v32);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_1E5DE9000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1E694F1C0](v21, -1, -1);
    v25 = v19;
    a1 = v28[0];
    MEMORY[0x1E694F1C0](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  if (v31)
  {
    v32 = a1;
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE8, &qword_1E6609CE8);
    return sub_1E65E5FE8();
  }

  else
  {
    LOBYTE(v32) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE8, &qword_1E6609CE8);
    return sub_1E65E5FF8();
  }
}

unint64_t sub_1E653E414()
{
  result = qword_1EE2D62E8[0];
  if (!qword_1EE2D62E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D62E8);
  }

  return result;
}

uint64_t sub_1E653E4D0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t sub_1E653E584(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE08, &qword_1E6609D08) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E653DBCC(a1, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_1E653E610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE10, &unk_1E6609D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SyncService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorSyncService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1E6609D78;
  *(v3 + 24) = v2;
  *a1 = &unk_1E6609D28;
  a1[1] = v2;
  a1[2] = &unk_1E6609D38;
  a1[3] = v2;
  a1[4] = &unk_1E6609D48;
  a1[5] = v2;
  a1[6] = &unk_1E6609D58;
  a1[7] = v2;
  a1[8] = &unk_1E6609D68;
  a1[9] = v2;
  a1[10] = &unk_1E6609C50;
  a1[11] = v3;
  return swift_retain_n();
}

uint64_t sub_1E653E7AC()
{
  v1 = *(v0 + 16);
  sub_1E653EE9C(MEMORY[0x1E69E7CC0]);
  sub_1E65D8728();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E653E820(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E653E78C(a1, a2, v2);
}

uint64_t sub_1E653E8CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E653E980()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E653E964();
}

uint64_t sub_1E653EA2C()
{
  sub_1E653E414();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E653EAB4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E653EA10(v0);
}

uint64_t sub_1E653EB44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E653EBDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFA78C;

  return sub_1E5F87068();
}

unint64_t sub_1E653EC6C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E65DAEC8();
  sub_1E653F0E0(&qword_1EE2D6FA0);
  v5 = sub_1E65E5B38();

  return sub_1E653ECF0(a1, v5);
}

unint64_t sub_1E653ECF0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1E65DAEC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1E653F0E0(&qword_1EE2D6F98);
      v16 = sub_1E65E5B98();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1E653EE9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE18, &qword_1E6609DC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE20, &qword_1E6609DC8);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E653F070(v10, v6);
      result = sub_1E653EC6C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1E65DAEC8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E653F070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE18, &qword_1E6609DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E653F0E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E65DAEC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SyncServiceError.hashValue.getter()
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](0);
  return sub_1E65E6D78();
}

unint64_t sub_1E653F19C()
{
  result = qword_1ED07AE28;
  if (!qword_1ED07AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AE28);
  }

  return result;
}

uint64_t SyncService.fetchRemoteSyncableCounts.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SyncService.fetchRemoteSyncables.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SyncService.queryAccountSyncStatus.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SyncService.requireAccountUpgrade.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SyncService.requireChangeWindows.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SyncService.startSync.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
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

uint64_t sub_1E653F33C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E653F384(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1E653F3DC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1E65DB748();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_1E65DB468();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE68, &unk_1E660C5E0);
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653F560, v1, 0);
}

uint64_t sub_1E653F560()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v22 = v0[13];
  v23 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v21 = v6[18];
  __swift_project_boxed_opaque_existential_1(v6 + 14, v6[17]);
  v8 = v7[1];
  v20 = *v7;
  v9 = v7[2];
  v10 = v7[3];
  v11 = v7[5];
  v12 = v7[7];
  v18 = v7[6];
  v19 = v7[4];
  v13 = type metadata accessor for ImageAssetRequest();
  (*(v4 + 16))(v3, v7 + *(v13 + 40), v5);

  sub_1E65DB458();
  v14 = v7[8];
  v15 = v7[9];
  v16 = *(v7 + 80);
  sub_1E65DB4B8();
  (*(v2 + 8))(v1, v23);

  return MEMORY[0x1EEE6DFA0](sub_1E653F6C8, 0, 0);
}

uint64_t sub_1E653F6C8()
{
  v1 = v0[13];
  v2 = swift_task_alloc();
  v0[14] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 42;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = sub_1E6544114();
  *v4 = v0;
  v4[1] = sub_1E653F7E0;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65440FC, v2, v5);
}

uint64_t sub_1E653F7E0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[14];
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E653F994, 0, 0);
  }

  else
  {
    v7 = v2[12];
    v6 = v2[13];
    v9 = v2[10];
    v8 = v2[11];
    v10 = v2[7];
    v11 = v2[2];

    (*(v7 + 8))(v6, v8);

    v12 = *(v4 + 8);

    return v12(v11);
  }
}

uint64_t sub_1E653F994()
{
  v1 = v0[4];
  (*(v0[12] + 8))(v0[13], v0[11]);

  return MEMORY[0x1EEE6DFA0](sub_1E653FA10, v1, 0);
}

uint64_t sub_1E653FA10()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1E653FA8C(uint64_t *a1)
{
  v2[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE50, &qword_1E660A0F0);
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = sub_1E65DAAF8();
  v2[7] = v7;
  v8 = *(v7 - 8);
  v2[8] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v12 = *a1;
  v11 = a1[1];
  v2[9] = v10;
  v2[10] = v12;
  v2[18] = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v2[11] = v11;
  v2[12] = v13;
  v2[13] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1E653FBEC, v1, 0);
}

uint64_t sub_1E653FBEC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 144);
  v4 = *(v0 + 148);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  sub_1E65DAAE8();
  v10 = v9[23];
  __swift_project_boxed_opaque_existential_1(v9 + 19, v9[22]);
  sub_1E65DD848();

  return MEMORY[0x1EEE6DFA0](sub_1E653FCA8, 0, 0);
}

uint64_t sub_1E653FCA8()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[14] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 52;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE58, &qword_1E660A0F8);
  *v4 = v0;
  v4[1] = sub_1E653FDCC;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6544038, v2, v5);
}

uint64_t sub_1E653FDCC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[14];
  if (v0)
  {

    v6 = sub_1E653FFCC;
    v7 = 0;
  }

  else
  {
    v9 = v2[5];
    v8 = v2[6];
    v11 = v2[3];
    v10 = v2[4];
    v2[17] = v2[2];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1E653FF40;
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E653FF40()
{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];
  v3 = v0[17];

  return v2(v3);
}

uint64_t sub_1E653FFCC()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E6540044, v1, 0);
}

uint64_t sub_1E6540044()
{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_1E65400CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6540198, v1, 0);
}

uint64_t sub_1E6540198()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  sub_1E65DD7C8();

  return MEMORY[0x1EEE6DFA0](sub_1E6540234, 0, 0);
}

uint64_t sub_1E6540234()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 56;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E653C68C;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E654422C, v2, v5);
}

uint64_t sub_1E6540344(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE38, &qword_1E660A0C0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6540410, v1, 0);
}

uint64_t sub_1E6540410()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  sub_1E65DD7D8();

  return MEMORY[0x1EEE6DFA0](sub_1E65404AC, 0, 0);
}

uint64_t sub_1E65404AC()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 60;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE40, &qword_1E660A0C8);
  *v4 = v0;
  v4[1] = sub_1E65234C4;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6544228, v2, v5);
}

uint64_t sub_1E65405D0()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE38, &qword_1E660A0C0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654069C, v0, 0);
}

uint64_t sub_1E654069C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  sub_1E65DD7A8();

  return MEMORY[0x1EEE6DFA0](sub_1E6540730, 0, 0);
}

uint64_t sub_1E6540730()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 64;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE40, &qword_1E660A0C8);
  *v4 = v0;
  v4[1] = sub_1E6522B9C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6544228, v2, v5);
}

uint64_t sub_1E6540854()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6540920, v0, 0);
}

uint64_t sub_1E6540920()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  sub_1E65DD7B8();

  return MEMORY[0x1EEE6DFA0](sub_1E65409B4, 0, 0);
}

uint64_t sub_1E65409B4()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 68;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E652302C;
  v5 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6544020, v2, v5);
}

uint64_t sub_1E6540AC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6540AE8, 0, 0);
}

uint64_t sub_1E6540AE8()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1E65DDEC8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6540B4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6540C1C, v2, 0);
}

uint64_t sub_1E6540C1C()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  sub_1E65DD818();

  return MEMORY[0x1EEE6DFA0](sub_1E6540CC8, 0, 0);
}

uint64_t sub_1E6540CC8()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 78;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E6540DD8;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E654422C, v2, v5);
}

uint64_t sub_1E6540DD8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v5 = sub_1E6540F30;
    v6 = 0;
  }

  else
  {
    v7 = v2[4];
    (*(v2[6] + 8))(v2[7], v2[5]);
    v5 = sub_1E6544224;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E6540F30()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return MEMORY[0x1EEE6DFA0](sub_1E6235FE4, v1, 0);
}

uint64_t sub_1E6540FA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6541078, v2, 0);
}

uint64_t sub_1E6541078()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  sub_1E65DD7E8();

  return MEMORY[0x1EEE6DFA0](sub_1E6541124, 0, 0);
}

uint64_t sub_1E6541124()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 82;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E6541234;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E654422C, v2, v5);
}

uint64_t sub_1E6541234()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v5 = sub_1E6523658;
    v6 = 0;
  }

  else
  {
    v7 = v2[4];
    (*(v2[6] + 8))(v2[7], v2[5]);
    v5 = sub_1E654138C;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E654138C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65413F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65414C0, v2, 0);
}

uint64_t sub_1E65414C0()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  sub_1E65DD7F8();

  return MEMORY[0x1EEE6DFA0](sub_1E654156C, 0, 0);
}

uint64_t sub_1E654156C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 86;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E6540DD8;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6544008, v2, v5);
}

uint64_t sub_1E654167C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E654169C, 0, 0);
}

uint64_t sub_1E654169C()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1E65DE078();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6541700()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE38, &qword_1E660A0C0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65417CC, v0, 0);
}

uint64_t sub_1E65417CC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  sub_1E65DD828();

  return MEMORY[0x1EEE6DFA0](sub_1E6541860, 0, 0);
}

uint64_t sub_1E6541860()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 96;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE40, &qword_1E660A0C8);
  *v4 = v0;
  v4[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6544228, v2, v5);
}

uint64_t sub_1E6541984(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE38, &qword_1E660A0C0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6541A50, v1, 0);
}

uint64_t sub_1E6541A50()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  sub_1E65DD808();

  return MEMORY[0x1EEE6DFA0](sub_1E6541AEC, 0, 0);
}

uint64_t sub_1E6541AEC()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "AssetService/LiveAssetService.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 100;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE40, &qword_1E660A0C8);
  *v4 = v0;
  v4[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6543B14, v2, v5);
}

uint64_t sub_1E6541C10()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[8];
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6540F30, 0, 0);
  }

  else
  {
    v7 = v2[6];
    v6 = v2[7];
    v8 = v2[5];
    v9 = v2[2];

    (*(v7 + 8))(v6, v8);

    v10 = *(v4 + 8);

    return v10(v9);
  }
}

uint64_t sub_1E6541DA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E653F3DC(a1);
}

uint64_t sub_1E6541E3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6541DA4(a1);
}

uint64_t sub_1E6541ED4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[4];
  v1[2] = *a1;
  v1[3] = v2;
  v1[4] = a1[2];
  v1[5] = v3;
  v1[6] = v4;
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  v5[1] = sub_1E6541F88;

  return sub_1E653FA8C(v1 + 2);
}

uint64_t sub_1E6541F88(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(v5 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65420C4, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1E65420DC(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FE99E8;

  return sub_1E6541ED4(a1);
}

uint64_t sub_1E6542174(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E65400CC(a1);
}

uint64_t sub_1E654220C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6542174(a1);
}

uint64_t sub_1E65422A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E6541700();
}

uint64_t sub_1E6542334()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65422A4();
}

uint64_t sub_1E65423C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6540344(a1);
}

uint64_t sub_1E654245C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E65423C4(a1);
}

uint64_t sub_1E65424F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65405D0();
}

uint64_t sub_1E6542584()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E65424F4();
}

uint64_t sub_1E6542614()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E6540854();
}

uint64_t sub_1E65426A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E6542614();
}

uint64_t sub_1E6542734(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60ABB70;

  return sub_1E6541984(a1);
}

uint64_t sub_1E65427CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6542734(a1);
}

uint64_t sub_1E6542864(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6542880, a2, 0);
}

uint64_t sub_1E6542880()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  swift_getObjectType();
  sub_1E65DDED8();
  sub_1E65D7B58();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6542954(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6542864(a1, v1);
}

uint64_t sub_1E65429F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6540B4C(a1, a2);
}

uint64_t sub_1E6542A98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E65429F0(a1, a2);
}

uint64_t sub_1E6542B40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6540FA8(a1, a2);
}

uint64_t sub_1E6542BE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6542B40(a1, a2);
}

uint64_t sub_1E6542C90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E65413F0(a1, a2);
}

uint64_t sub_1E6542D38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6542C90(a1, a2);
}

uint64_t sub_1E6542DE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6542DFC, a2, 0);
}

uint64_t sub_1E6542DFC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  swift_getObjectType();
  sub_1E65DE088();
  sub_1E65D9098();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6542ED0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6542DE0(a1, v1);
}

uint64_t sub_1E6542F80(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE70, &qword_1E660A110);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE68, &unk_1E660C5E0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6544160;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E654335C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE60, &unk_1E660A100);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE50, &qword_1E660A0F0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6544050;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B18, v35);
}

uint64_t sub_1E6543738(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE48, &unk_1E660A0D0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE38, &qword_1E660A0C0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6543FDC;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E6543B2C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v31 = a6;
  v30 = a5;
  LODWORD(v10) = a2;
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v18 = sub_1E65E6338();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a8;
    v20 = v19;
    v21 = swift_slowAlloc();
    HIDWORD(v28) = v10;
    v10 = v21;
    v33 = v21;
    *v20 = 134218498;
    *(v20 + 4) = a3;
    *(v20 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, &v33);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v25 = v10;
    LOBYTE(v10) = BYTE4(v28);
    MEMORY[0x1E694F1C0](v25, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v33 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE70, &qword_1E660A110);
  if (v10)
  {
    return sub_1E65E5FE8();
  }

  else
  {
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6543D84(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v33 = a7;
  v32 = a6;
  v31[2] = a5;
  v34 = a2;
  v13 = a10;
  v35 = a9;
  v14 = sub_1E65E3B68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31[1] = a8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v31[0] = a10;
    v24 = v23;
    v36 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a3;
    *(v22 + 12) = 2080;
    v25 = sub_1E65E68B8();
    v27 = sub_1E5DFD4B0(v25, v26, &v36);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v33;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v28 = v24;
    v13 = v31[0];
    MEMORY[0x1E694F1C0](v28, -1, -1);
    MEMORY[0x1E694F1C0](v22, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v36 = a1;
  if (v34)
  {
    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_1E65E5FF8();
  }
}

unint64_t sub_1E6544114()
{
  result = qword_1EE2D4508;
  if (!qword_1EE2D4508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D4508);
  }

  return result;
}

uint64_t sub_1E6544188(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t ImageAssetBestMatchRequest.init(templateURLString:pixelWidth:pixelHeight:cropCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 20) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

unint64_t sub_1E6544240()
{
  v1 = 0x6469576C65786970;
  v2 = 0x6965486C65786970;
  if (*v0 != 2)
  {
    v2 = 0x65646F43706F7263;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1E65442CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6544AD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E65442F4(uint64_t a1)
{
  v2 = sub_1E6544558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6544330(uint64_t a1)
{
  v2 = sub_1E6544558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageAssetBestMatchRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE78, &qword_1E660A130);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  LODWORD(v6) = *(v1 + 5);
  v17 = *(v1 + 4);
  v15 = v6;
  v10 = v1[3];
  v14[0] = v1[4];
  v14[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6544558();
  sub_1E65E6DA8();
  v21 = 0;
  v12 = v16;
  sub_1E65E6B48();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v20 = 1;
  sub_1E65E6B88();
  v19 = 2;
  sub_1E65E6B88();
  v18 = 3;
  sub_1E65E6B48();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E6544558()
{
  result = qword_1ED07AE80;
  if (!qword_1ED07AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AE80);
  }

  return result;
}

uint64_t ImageAssetBestMatchRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE88, &qword_1E660A138);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6544558();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1E65E6AA8();
  v13 = v12;
  v14 = v11;
  v26 = 1;
  v23 = sub_1E65E6AE8();
  v25 = 2;
  v22 = sub_1E65E6AE8();
  v24 = 3;
  v15 = sub_1E65E6AA8();
  v18 = v17;
  v19 = *(v6 + 8);
  v21 = v15;
  v19(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  v20 = v22;
  *(a2 + 16) = v23;
  *(a2 + 20) = v20;
  *(a2 + 24) = v21;
  *(a2 + 32) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ImageAssetBestMatchRequest.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = v0[3];
  v6 = v0[4];
  sub_1E65E5D78();
  sub_1E65E6D58();
  sub_1E65E6D58();

  return sub_1E65E5D78();
}

uint64_t ImageAssetBestMatchRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = v0[3];
  v6 = v0[4];
  sub_1E65E6D28();
  sub_1E65E5D78();
  sub_1E65E6D58();
  sub_1E65E6D58();
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t sub_1E6544940()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = v0[3];
  v6 = v0[4];
  sub_1E65E6D28();
  sub_1E65E5D78();
  sub_1E65E6D58();
  sub_1E65E6D58();
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t sub_1E65449D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = v0[3];
  v6 = v0[4];
  sub_1E65E5D78();
  sub_1E65E6D58();
  sub_1E65E6D58();

  return sub_1E65E5D78();
}

uint64_t sub_1E6544A44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = v0[3];
  v6 = v0[4];
  sub_1E65E6D28();
  sub_1E65E5D78();
  sub_1E65E6D58();
  sub_1E65E6D58();
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t sub_1E6544AD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E66191C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469576C65786970 && a2 == 0xEA00000000006874 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6965486C65786970 && a2 == 0xEB00000000746867 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E65E6C18();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t _s12AssetService05ImageA16BestMatchRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 20);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a2 + 16);
  v6 = *(a2 + 20);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v11 = sub_1E65E6C18();
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  if (v3 == v7 && v2 == v6)
  {
    if (v4 == v8 && v5 == v9)
    {
      return 1;
    }

    else
    {

      return sub_1E65E6C18();
    }
  }

  return result;
}

unint64_t sub_1E6544D3C()
{
  result = qword_1ED07AE90;
  if (!qword_1ED07AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AE90);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E6544DA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E6544DEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E6544E58()
{
  result = qword_1ED07AE98;
  if (!qword_1ED07AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AE98);
  }

  return result;
}

unint64_t sub_1E6544EB0()
{
  result = qword_1ED07AEA0;
  if (!qword_1ED07AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AEA0);
  }

  return result;
}

unint64_t sub_1E6544F08()
{
  result = qword_1ED07AEA8;
  if (!qword_1ED07AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AEA8);
  }

  return result;
}

uint64_t sub_1E6544F5C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t static AssetService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorAssetService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E65D7B58();
  *(v2 + 112) = sub_1E65E5F28();
  *a1 = &unk_1E660A368;
  a1[1] = v2;
  a1[2] = &unk_1E660A378;
  a1[3] = v2;
  a1[4] = &unk_1E660A388;
  a1[5] = v2;
  a1[6] = &unk_1E660A398;
  a1[7] = v2;
  a1[8] = &unk_1E660A3A8;
  a1[9] = v2;
  a1[10] = &unk_1E660A3B8;
  a1[11] = v2;
  a1[12] = &unk_1E660A3C8;
  a1[13] = v2;
  a1[14] = &unk_1E660A3D8;
  a1[15] = v2;
  a1[16] = &unk_1E660A3E8;
  a1[17] = v2;
  a1[18] = &unk_1E660A3F8;
  a1[19] = v2;
  a1[20] = &unk_1E660A408;
  a1[21] = v2;
  a1[22] = &unk_1E660A418;
  a1[23] = v2;
  a1[24] = &unk_1E660A428;
  a1[25] = v2;
  return swift_retain_n();
}

uint64_t sub_1E6545138()
{
  v1 = sub_1E65E5C48();
  v2 = [objc_opt_self() systemImageNamed_];

  if (v2)
  {
    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    v5 = sub_1E65D79F8();
    sub_1E6546ED0(&qword_1ED07AEC8, MEMORY[0x1E69CAF10]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E69CAF08], v5);
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E65452BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E6545120(a1, v1);
}

uint64_t sub_1E6545354()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E6539828();
}

uint64_t sub_1E65453EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6545484()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E6539828();
}

uint64_t sub_1E6545530(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E6545514(a1, v1);
}

uint64_t sub_1E65455E8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65455C8(v0);
}

uint64_t sub_1E65456BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E6545678(v0);
}

uint64_t sub_1E6545768()
{
  v1 = *(*(v0 + 16) + 112);

  v3 = sub_1E6546D34(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1E65457E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E654574C(a1, v1);
}

uint64_t sub_1E6545880(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEB8, &qword_1E660A488);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6545950, a2, 0);
}

uint64_t sub_1E6545950()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65D7B58();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6545A28(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6545880(a1, v1);
}

uint64_t sub_1E6545AC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6545B6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6545C14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6545CBC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEB0, &qword_1E660A480);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6545D8C, a2, 0);
}

uint64_t sub_1E6545D8C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65D9098();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6545E64(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6545CBC(a1, v1);
}

uint64_t sub_1E6545F00(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65D7B58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1E6546ED0(&qword_1ED074160, MEMORY[0x1E69CB020]);
  v36 = a2;
  v13 = sub_1E65E5B38();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1E6546ED0(&qword_1ED07AEC0, MEMORY[0x1E69CB020]);
      v23 = sub_1E65E5B98();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1E654653C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1E65461E0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1E65D7B58();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074158, &unk_1E660A490);
  result = sub_1E65E6868();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1E6546ED0(&qword_1ED074160, MEMORY[0x1E69CB020]);
      result = sub_1E65E5B38();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1E654653C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1E65D7B58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E65461E0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1E65467E0();
      goto LABEL_12;
    }

    sub_1E6546A18(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1E6546ED0(&qword_1ED074160, MEMORY[0x1E69CB020]);
  v15 = sub_1E65E5B38();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1E6546ED0(&qword_1ED07AEC0, MEMORY[0x1E69CB020]);
      v23 = sub_1E65E5B98();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}

void *sub_1E65467E0()
{
  v1 = v0;
  v2 = sub_1E65D7B58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074158, &unk_1E660A490);
  v7 = *v0;
  v8 = sub_1E65E6858();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1E6546A18(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65D7B58();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074158, &unk_1E660A490);
  v10 = sub_1E65E6868();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1E6546ED0(&qword_1ED074160, MEMORY[0x1E69CB020]);
      result = sub_1E65E5B38();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1E6546D34(uint64_t a1)
{
  v2 = sub_1E65D7B58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E6546ED0(&qword_1ED074160, MEMORY[0x1E69CB020]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E6545F00(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E6546ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ImageAssetRequest.template.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double ImageAssetRequest.size.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ImageAssetRequest.cropCode.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ImageAssetRequest.fileType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ImageAssetRequest.expirationPolicy.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t ImageAssetRequest.cacheBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageAssetRequest() + 40);
  v4 = sub_1E65DB748();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ImageAssetRequest()
{
  result = qword_1EE2D6E68;
  if (!qword_1EE2D6E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageAssetRequest.init(template:size:cropCode:fileType:priority:expirationPolicy:cacheBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 24) = a11;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a12 & 1;
  v14 = *(type metadata accessor for ImageAssetRequest() + 40);
  v15 = sub_1E65DB748();
  v16 = *(*(v15 - 8) + 32);

  return v16(a9 + v14, a13, v15);
}

void sub_1E6547158()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for QualityOfService(319);
    if (v1 <= 0x3F)
    {
      sub_1E65DB748();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t AssetService.fetchRemoteImage.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AssetService.queryStandardImageBestMatches.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AssetService.reportFailedRemoteImageURL.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AssetService.queryAllAssetBundles.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AssetService.queryWorkoutAssetBundles.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AssetService.queryCompletedAssetBundlesOnCurrentDevice.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t AssetService.queryCompletedAssetBundleCountOnCurrentDevice.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t AssetService.filterAssetBundlesOnCurrentDevice.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t AssetService.makeAssetBundleUpdatedStream.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t AssetService.downloadAssetBundleOnCurrentDevice.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t AssetService.cancelAssetBundleOnCurrentDevice.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t AssetService.cancelAssetBundleOnActivePairedDevice.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t AssetService.makeAssetBundleProgressUpdatedStream.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1E65474C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_1E6547508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MetricService.publishTrainerTipQuarantineRegionEntered.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MetricService.publishTrainerTipQuarantineRegionExited.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MetricService.record.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MetricService.recordMetricPerformanceStream.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MetricService.makeOverlayMetricFields.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

void static MetricService.simulator()(void *a1@<X8>)
{
  *a1 = nullsub_1;
  a1[1] = 0;
  a1[2] = nullsub_1;
  a1[3] = 0;
  a1[4] = nullsub_1;
  a1[5] = 0;
  a1[6] = nullsub_1;
  a1[7] = 0;
  a1[8] = &unk_1E660A5C8;
  a1[9] = 0;
}

uint64_t sub_1E65476F0()
{
  v1 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t LiveMetricService.init(eventHub:metricFieldsProvider:serviceSubscriptionCache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  sub_1E5DF599C(a3, (a5 + 2));

  return sub_1E5DF599C(a4, (a5 + 7));
}

uint64_t sub_1E65477A4(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1E65D76A8();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = sub_1E65D92D8();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65478C0, 0, 0);
}

uint64_t sub_1E65478C0()
{
  v1 = v0[12];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = *(MEMORY[0x1E69CD5D8] + 4);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1E6547980;
  v6 = v0[18];

  return MEMORY[0x1EEE37848](v6, v2, v3);
}

uint64_t sub_1E6547980()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1E6547BC0;
  }

  else
  {
    v3 = sub_1E6547A94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6547A94()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  sub_1E65D7698();
  v7 = sub_1E65D92A8();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v8 = sub_1E65DB7D8();
  v9 = MEMORY[0x1E69CD5F0];
  if ((v7 & 1) == 0)
  {
    v9 = MEMORY[0x1E69CD5F8];
  }

  (*(*(v8 - 8) + 104))(v0[11], *v9, v8);
  v10 = v0[18];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E6547BC0()
{
  v1 = v0[20];
  swift_getErrorValue();
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v0[5] = MEMORY[0x1E69CC9A8];
  v0[6] = sub_1E5FFF464();
  *(v0 + 16) = 4;
  LOBYTE(v2) = sub_1E65E6CA8();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = sub_1E65DB7D8();
  v6 = MEMORY[0x1E69CD5F8];
  if ((v2 & 1) == 0)
  {
    v6 = MEMORY[0x1E69CD600];
  }

  (*(*(v5 - 8) + 104))(v0[11], *v6, v5);
  v7 = v0[18];
  v8 = v0[15];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6547CF4(uint64_t *a1)
{
  v2 = sub_1E65DB908();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  swift_getObjectType();
  sub_1E65DB8F8();
  sub_1E6548924(&qword_1ED07AED8, MEMORY[0x1E69CD6A0]);
  sub_1E65DDDE8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E6547E24(uint64_t *a1)
{
  v2 = sub_1E65DB8E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  swift_getObjectType();
  sub_1E65DB8D8();
  sub_1E6548924(&qword_1ED07AED0, MEMORY[0x1E69CD690]);
  sub_1E65DDDE8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E6547F54(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1E65D8C88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DB758();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  sub_1E65DB768();
  v14 = *a2;
  v15 = a2[1];
  swift_getObjectType();
  sub_1E6548924(&qword_1EE2D6D38, MEMORY[0x1E69CD5C8]);
  sub_1E65DDDE8();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E654812C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1E65D9B48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DB898();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  sub_1E65DB8A8();
  v14 = *a2;
  v15 = a2[1];
  swift_getObjectType();
  sub_1E6548924(&unk_1EE2D6D08, MEMORY[0x1E69CD668]);
  sub_1E65DDDE8();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E6548304(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = sub_1E65DB7D8();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  *(v3 + 48) = v7;
  v8 = swift_task_alloc();
  *(v3 + 56) = v8;
  *v8 = v3;
  v8[1] = sub_1E6548404;

  return sub_1E65477A4(v7);
}

uint64_t sub_1E6548404()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E6548708;
  }

  else
  {
    v3 = sub_1E6548518;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6548518()
{
  v1 = *(v0 + 24);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(MEMORY[0x1E69CD658] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1E65485E0;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);
  v8 = *(v0 + 96);

  return MEMORY[0x1EEE378C0](v7, v6, v8, v2, v3);
}

uint64_t sub_1E65485E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1E65487F0;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_1E654876C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6548708()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E654876C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_1E65487F0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E654886C(uint64_t a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5FE99E8;

  return sub_1E6548304(a1, a2, v2 + 16);
}

uint64_t sub_1E6548924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ConfigurationService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorConfigurationService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660A648;
  a1[1] = v2;
  a1[2] = &unk_1E660A658;
  a1[3] = v2;
}

uint64_t sub_1E6548A04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6548AB0()
{
  v1 = *(v0 + 16);
  sub_1E65D82E8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6548B14(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6548A94(a1, v1);
}

uint64_t ConfigurationService.fetchRemoteConfiguration.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfigurationService.queryConfiguration.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1E6548C10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E6548C58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E6548C98()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6548D64, v0, 0);
}

uint64_t sub_1E6548D64()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD498();

  return MEMORY[0x1EEE6DFA0](sub_1E6548DF8, 0, 0);
}

uint64_t sub_1E6548DF8()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "ConfigurationService/LiveConfigurationService.swift";
  *(v2 + 24) = 51;
  *(v2 + 32) = 2;
  *(v2 + 40) = 21;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E6523A50;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6549DB0, v2, v5);
}

uint64_t sub_1E6548F08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEE8, &qword_1E660AB60);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6548FD4, v1, 0);
}

uint64_t sub_1E6548FD4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD4A8();

  return MEMORY[0x1EEE6DFA0](sub_1E6549068, 0, 0);
}

uint64_t sub_1E6549068()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "ConfigurationService/LiveConfigurationService.swift";
  *(v2 + 24) = 51;
  *(v2 + 32) = 2;
  *(v2 + 40) = 25;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1E65D82F8();
  *v4 = v0;
  v4[1] = sub_1E6549180;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6549938, v2, v5);
}

uint64_t sub_1E6549180()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6522D30, 0, 0);
  }

  else
  {
    (*(v4[5] + 8))(v4[6], v4[4]);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_1E6549304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6548C98();
}

uint64_t sub_1E6549394()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6549304();
}

uint64_t sub_1E6549424(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6548F08(a1);
}

uint64_t sub_1E65494C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6549424(a1);
}

uint64_t sub_1E654955C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEF0, &unk_1E660A7B0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEE8, &qword_1E660AB60);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6549CB4;
  *(v35 + 24) = v33;

  v34(sub_1E6531034, v35);
}

uint64_t sub_1E6549950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D82F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEF8, &unk_1E660A7C0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E6549D40(a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEF0, &unk_1E660A7B0);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEF0, &unk_1E660A7B0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6549CB4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEF0, &unk_1E660A7B0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E6549950(a1, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_1E6549D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEF8, &unk_1E660A7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SessionService.requireNewSessionsAllowed.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SessionService.makeQueueSessionItems.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SessionService.makeSessionConfiguration.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SessionService.makeSampleContentSessionConfiguration.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SessionService.makeSessionTerminatedStream.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SessionService.makeSessionSummaryDismissedStream.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t SessionService.makeAudioLanguagePreferenceUpdatedStream.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t SessionService.queryAudioLanguagePreference.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t SessionService.updateAudioLanguagePreference.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_1E6549F90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1E6549FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static SessionService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorSessionService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660A878;
  a1[1] = v2;
  a1[2] = &unk_1E660A888;
  a1[3] = v2;
  a1[4] = &unk_1E660A898;
  a1[5] = v2;
  a1[6] = &unk_1E660A8A8;
  a1[7] = v2;
  a1[8] = &unk_1E660A8B8;
  a1[9] = v2;
  a1[10] = &unk_1E660A8C8;
  a1[11] = v2;
  a1[12] = &unk_1E660A8D8;
  a1[13] = v2;
  a1[14] = &unk_1E660A8E8;
  a1[15] = v2;
  a1[16] = &unk_1E660A8F8;
  a1[17] = v2;
  return swift_retain_n();
}

uint64_t sub_1E654A158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E654A208()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E654A1E8();
}

uint64_t sub_1E654A2B0(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF18, &qword_1E660A960) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF20, &qword_1E660A968) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1E65DDCF8();
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = *(*(sub_1E65DA3D8() - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = *(*(sub_1E65D8668() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654A44C, v11, 0);
}

uint64_t sub_1E654A44C()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v16 = v0[2];
  sub_1E65D8648();
  sub_1E65DA3C8();
  sub_1E65E5D08();
  v8 = sub_1E65DDC38();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *v3 = sub_1E65DDC18();
  swift_storeEnumTagMultiPayload();
  v11 = sub_1E65E3978();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = sub_1E65D88C8();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_1E65D96F8();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_1E65E5748();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E654A65C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E654A2B0(a1);
}

uint64_t sub_1E654A768(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF18, &qword_1E660A960) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF20, &qword_1E660A968) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1E65DDCF8();
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = *(*(sub_1E65DA3D8() - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = *(*(sub_1E65D8668() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654B290, v11, 0);
}

uint64_t sub_1E654A904(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E654A768(a1);
}

uint64_t sub_1E654AA10(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF10, &unk_1E660A950);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654AAE0, a2, 0);
}

uint64_t sub_1E654AAE0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65DDE98();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E654ABB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E654AA10(a1, v1);
}

uint64_t sub_1E654AC54(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF08, &qword_1E660A948);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654AD24, a2, 0);
}

uint64_t sub_1E654AD24()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65E5538();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E654ADFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E654AC54(a1, v1);
}

uint64_t sub_1E654AE98(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF00, &qword_1E660A940);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654AF68, a2, 0);
}

uint64_t sub_1E654AF68()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65D9AC8();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E654B040(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E654AE98(a1, v1);
}

uint64_t sub_1E654B0F8()
{
  v1 = *(v0 + 16);
  sub_1E65D9AB8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E654B15C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E654B0DC(a1, v1);
}

uint64_t sub_1E654B1F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E654B294()
{
  v1[3] = v0;
  v2 = sub_1E65D8018();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF80, &unk_1E660AB20);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_1E65DACD8();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654B418, v0, 0);
}

uint64_t sub_1E654B418()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3 = v2[41];
  __swift_project_boxed_opaque_existential_1(v2 + 37, v2[40]);
  sub_1E65DDAB8();

  return MEMORY[0x1EEE6DFA0](sub_1E654B4AC, 0, 0);
}

uint64_t sub_1E654B4AC()
{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v2 + 24) = 46;
  *(v2 + 32) = 2;
  *(v2 + 40) = 39;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E654B5BC;
  v5 = v0[12];
  v6 = v0[10];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557BA8, v2, v6);
}

uint64_t sub_1E654B5BC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v15 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v5 = sub_1E654B968;
    v6 = 0;
  }

  else
  {
    v8 = v2[11];
    v7 = v2[12];
    v10 = v2[9];
    v9 = v2[10];
    v11 = v2[7];
    v12 = v2[8];
    v13 = v2[3];
    (*(v8 + 8))(v7, v9);
    (*(v12 + 8))(v10, v11);
    v5 = sub_1E654B734;
    v6 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E654B734()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1E6557C18(&qword_1ED077378, MEMORY[0x1E69CB200]);
  v3 = swift_allocError();
  v4 = *MEMORY[0x1E69CB1F8];
  (*(v2 + 104))(v5, v4, v1);
  swift_willThrow();
  *(v0 + 16) = v3;
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32)) == v4)
    {
      v9 = *(v0 + 96);
      v10 = *(v0 + 72);
      v12 = *(v0 + 40);
      v11 = *(v0 + 48);
      v13 = *(v0 + 32);

      swift_allocError();
      (*(v12 + 104))(v14, v4, v13);
      swift_willThrow();

      v15 = *(v0 + 8);
      goto LABEL_6;
    }

    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  }

  v16 = *(v0 + 96);
  v17 = *(v0 + 72);
  v18 = *(v0 + 48);

  v15 = *(v0 + 8);
LABEL_6:

  return v15();
}

uint64_t sub_1E654B968()
{
  v1 = v0[3];
  (*(v0[8] + 8))(v0[9], v0[7]);

  return MEMORY[0x1EEE6DFA0](sub_1E654B9E4, v1, 0);
}

uint64_t sub_1E654B9E4()
{
  v1 = *(v0 + 120);
  *(v0 + 16) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32));
    if (v5 == *MEMORY[0x1E69CB1F8])
    {
      v6 = v5;
      v7 = *(v0 + 96);
      v8 = *(v0 + 72);
      v10 = *(v0 + 40);
      v9 = *(v0 + 48);
      v11 = *(v0 + 32);

      sub_1E6557C18(&qword_1ED077378, MEMORY[0x1E69CB200]);
      swift_allocError();
      (*(v10 + 104))(v12, v6, v11);
      swift_willThrow();

      v13 = *(v0 + 8);
      goto LABEL_6;
    }

    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);

  v13 = *(v0 + 8);
LABEL_6:

  return v13();
}

uint64_t sub_1E654BBD4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1E65D7F88();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF40, &unk_1E660AAD0);
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_1E65DAEB8();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_1E65D8948();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = sub_1E65D8B08();
  v3[18] = v16;
  v17 = *(v16 - 8);
  v3[19] = v17;
  v18 = *(v17 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF48, &unk_1E660FC30);
  v3[22] = v19;
  v20 = *(v19 - 8);
  v3[23] = v20;
  v21 = *(v20 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654BE88, v2, 0);
}

uint64_t sub_1E654BE88()
{
  v1 = v0[5];
  if (v0[4])
  {
    v2 = v0[11];
    v3 = v0[3];
    v4 = v1[24];
    __swift_project_boxed_opaque_existential_1(v1 + 20, v1[23]);
    sub_1E65DDAF8();
    v5 = sub_1E654BF70;
  }

  else
  {
    v6 = v0[24];
    v7 = v1[51];
    __swift_project_boxed_opaque_existential_1(v1 + 47, v1[50]);
    sub_1E65DD378();
    v5 = sub_1E654C1E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E654BF70()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[25] = v2;
  *(v2 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v2 + 24) = 46;
  *(v2 + 32) = 2;
  *(v2 + 40) = 61;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_1E654C080;
  v5 = v0[14];
  v6 = v0[12];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65579F4, v2, v6);
}

uint64_t sub_1E654C080()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  v2[27] = v0;

  v5 = v2[25];
  if (v0)
  {

    v6 = sub_1E654CCDC;
    v7 = 0;
  }

  else
  {
    v9 = v2[10];
    v8 = v2[11];
    v10 = v2[9];
    v11 = v2[5];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1E654C8DC;
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E654C1E8()
{
  v1 = v0[24];
  v2 = swift_task_alloc();
  v0[28] = v2;
  *(v2 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v2 + 24) = 46;
  *(v2 + 32) = 2;
  *(v2 + 40) = 49;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[29] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF50, &unk_1E660AAE0);
  *v4 = v0;
  v4[1] = sub_1E654C30C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557A0C, v2, v5);
}

uint64_t sub_1E654C30C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  v2[30] = v0;

  v5 = v2[28];
  if (v0)
  {

    v6 = sub_1E654C7A0;
    v7 = 0;
  }

  else
  {
    v9 = v2[23];
    v8 = v2[24];
    v10 = v2[22];
    v11 = v2[5];
    v2[31] = v2[2];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1E654C484;
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E654C484()
{
  v35 = v0;
  v1 = v0[30];
  v34 = v0[31];

  sub_1E6555004(&v34, MEMORY[0x1E69CB6B0], sub_1E636B294, MEMORY[0x1E69CB6B0], MEMORY[0x1E69CB698]);
  if (v1)
  {
  }

  else
  {
    v3 = v0[31];

    v4 = v34;
    v5 = *(v34 + 16);
    if (v5)
    {
      v6 = v0[19];
      v7 = v0[16];
      v34 = MEMORY[0x1E69E7CC0];
      sub_1E6556744(0, v5, 0);
      v8 = v34;
      v10 = *(v7 + 16);
      v9 = v7 + 16;
      v11 = v4 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v28 = *(v9 + 56);
      v29 = v10;
      v30 = v6;
      do
      {
        v32 = v5;
        v33 = v8;
        v31 = v0[21];
        v12 = v0[17];
        v13 = v0;
        v14 = v0[15];
        v29(v12, v11, v14);
        sub_1E65D88F8();
        sub_1E65D8908();
        sub_1E65D8938();
        sub_1E65D8928();
        sub_1E65D8AF8();
        v15 = v14;
        v8 = v33;
        (*(v9 - 8))(v12, v15);
        v34 = v33;
        v17 = *(v33 + 16);
        v16 = *(v33 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1E6556744(v16 > 1, v17 + 1, 1);
          v8 = v34;
        }

        v18 = v13[21];
        v19 = v13[18];
        *(v8 + 16) = v17 + 1;
        (*(v30 + 32))(v8 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v17, v18, v19);
        v11 += v28;
        --v5;
        v0 = v13;
      }

      while (v32 != 1);
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    v20 = v0[24];
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[17];
    v24 = v0[14];
    v25 = v0[11];
    v26 = v0[8];

    v27 = v0[1];

    return v27(v8);
  }
}

uint64_t sub_1E654C7A0()
{
  v1 = v0[5];
  (*(v0[23] + 8))(v0[24], v0[22]);

  return MEMORY[0x1EEE6DFA0](sub_1E654C81C, v1, 0);
}

uint64_t sub_1E654C81C()
{
  v1 = v0[30];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E654C8DC()
{
  v44 = v0;
  v1 = v0[14];
  v2 = sub_1E65DAE88();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3 && (v5 = v0[7], v4 = sub_1E65550DC(v3, 0), v6 = sub_1E6556F7C(&v43, (v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80))), v3, v2), , result = sub_1E5E24EE4(), v6 != v3))
  {
    __break(1u);
  }

  else
  {
    v8 = v0[27];
    v43 = v4;
    sub_1E6555004(&v43, MEMORY[0x1E69CB1B8], sub_1E6557220, MEMORY[0x1E69CB1B8], MEMORY[0x1E69CB1B0]);
    if (v8)
    {
    }

    else
    {

      v9 = v43;
      v10 = *(v43 + 16);
      if (v10)
      {
        v11 = v0[19];
        v12 = v0[7];
        v43 = MEMORY[0x1E69E7CC0];
        sub_1E6556744(0, v10, 0);
        v13 = v43;
        v15 = *(v12 + 16);
        v14 = v12 + 16;
        v16 = v9 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
        v36 = *(v14 + 56);
        v37 = v15;
        v38 = v0;
        do
        {
          v41 = v10;
          v42 = v13;
          v17 = v0[8];
          v18 = v0[6];
          v19 = v0[4];
          v39 = v0[20];
          v40 = v0[3];
          v37(v17, v16, v18);
          sub_1E65D7F38();
          sub_1E65D7F48();
          sub_1E65D7F78();
          sub_1E65D7F68();

          sub_1E65D8AF8();
          v20 = v18;
          v13 = v42;
          (*(v14 - 8))(v17, v20);
          v43 = v42;
          v22 = *(v42 + 16);
          v21 = *(v42 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1E6556744(v21 > 1, v22 + 1, 1);
            v13 = v43;
          }

          v23 = v38[20];
          v24 = v38[18];
          *(v13 + 16) = v22 + 1;
          (*(v11 + 32))(v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, v23, v24);
          v16 += v36;
          --v10;
          v0 = v38;
        }

        while (v41 != 1);
        (*(v38[13] + 8))(v38[14], v38[12]);
      }

      else
      {
        v26 = v0[13];
        v25 = v0[14];
        v27 = v0[12];

        (*(v26 + 8))(v25, v27);
        v13 = MEMORY[0x1E69E7CC0];
      }

      v28 = v0[24];
      v30 = v0[20];
      v29 = v0[21];
      v31 = v0[17];
      v32 = v0[14];
      v33 = v0[11];
      v34 = v0[8];

      v35 = v0[1];

      return v35(v13);
    }
  }

  return result;
}

uint64_t sub_1E654CCDC()
{
  v1 = v0[5];
  (*(v0[10] + 8))(v0[11], v0[9]);

  return MEMORY[0x1EEE6DFA0](sub_1E654CD58, v1, 0);
}

uint64_t sub_1E654CD58()
{
  v1 = v0[27];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E654CE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_1E65E6748();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_1E655726C(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_1E65DA3D8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_1E654CED4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E654CEF4, 0, 0);
}

uint64_t sub_1E654CEF4()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1E65DE188();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E654CF58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654D024, v1, 0);
}

uint64_t sub_1E654D024()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[46];
  __swift_project_boxed_opaque_existential_1(v2 + 42, v2[45]);
  sub_1E65DD6C8();

  return MEMORY[0x1EEE6DFA0](sub_1E654D0C0, 0, 0);
}

uint64_t sub_1E654D0C0()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v2 + 24) = 46;
  *(v2 + 32) = 2;
  *(v2 + 40) = 182;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E654D1D0;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65579C4, v2, v5);
}

uint64_t sub_1E654D1D0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v5 = sub_1E65231C0;
    v6 = 0;
  }

  else
  {
    v7 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v5 = sub_1E653C7E4;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E654D328(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF28, &qword_1E660AAB0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654D3F4, v1, 0);
}

uint64_t sub_1E654D3F4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[46];
  __swift_project_boxed_opaque_existential_1(v2 + 42, v2[45]);
  sub_1E65DD6B8();

  return MEMORY[0x1EEE6DFA0](sub_1E654D488, 0, 0);
}

uint64_t sub_1E654D488()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v2 + 24) = 46;
  *(v2 + 32) = 2;
  *(v2 + 40) = 186;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1E65D9AC8();
  *v4 = v0;
  v4[1] = sub_1E6549180;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557984, v2, v5);
}

uint64_t sub_1E654D5A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E654B294();
}

uint64_t sub_1E654D630(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E60ABB70;

  return sub_1E654BBD4(a1, a2);
}

uint64_t sub_1E654D6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v40 = *MEMORY[0x1E69E9840];
  *(v9 + 104) = v43;
  *(v9 + 112) = v44;
  *(v9 + 88) = v42;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 64) = a9;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0) - 8) + 64) + 15;
  *(v9 + 120) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF18, &qword_1E660A960) - 8) + 64) + 15;
  *(v9 + 128) = swift_task_alloc();
  v12 = sub_1E65DDCF8();
  *(v9 + 136) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v9 + 144) = swift_task_alloc();
  v14 = sub_1E65D8668();
  *(v9 + 152) = v14;
  v15 = *(v14 - 8);
  *(v9 + 160) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 168) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFB0, &qword_1E660AB70);
  *(v9 + 176) = v17;
  v18 = *(v17 - 8);
  *(v9 + 184) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 192) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF20, &qword_1E660A968);
  *(v9 + 200) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD18, &qword_1E660AB50);
  *(v9 + 232) = v22;
  v23 = *(v22 - 8);
  *(v9 + 240) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();
  v25 = sub_1E65D9658();
  *(v9 + 264) = v25;
  v26 = *(v25 - 8);
  *(v9 + 272) = v26;
  v27 = *(v26 + 64) + 15;
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  v28 = sub_1E65DA3D8();
  *(v9 + 304) = v28;
  v29 = *(v28 - 8);
  *(v9 + 312) = v29;
  v30 = *(v29 + 64) + 15;
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF98, &qword_1E660AB58) - 8) + 64) + 15;
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEE8, &qword_1E660AB60);
  *(v9 + 352) = v32;
  v33 = *(v32 - 8);
  *(v9 + 360) = v33;
  v34 = *(v33 + 64) + 15;
  *(v9 + 368) = swift_task_alloc();
  v35 = sub_1E65D82F8();
  *(v9 + 376) = v35;
  v36 = *(v35 - 8);
  *(v9 + 384) = v36;
  v37 = *(v36 + 64) + 15;
  *(v9 + 392) = swift_task_alloc();
  v38 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E654DBA4, v44, 0);
}

uint64_t sub_1E654DBA4()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 368);
  v2 = *(v0 + 112);
  v3 = v2[34];
  __swift_project_boxed_opaque_existential_1(v2 + 30, v2[33]);
  sub_1E65DD4A8();
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E654DC64, 0, 0);
}

uint64_t sub_1E654DC64()
{
  v1 = v0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = v0[46];
  v3 = swift_task_alloc();
  v1[50] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 126;
  *(v3 + 48) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v1[51] = v5;
  *v5 = v1;
  v5[1] = sub_1E654DDA0;
  v6 = v1[49];
  v7 = v1[47];
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557D78, v3, v7);
}

uint64_t sub_1E654DDA0()
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 400);
  v12 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = sub_1E654E5E8;
    v7 = 0;
  }

  else
  {
    v8 = v2[14];
    (*(v2[45] + 8))(v2[46], v2[44]);
    v9 = *MEMORY[0x1E69E9840];
    v6 = sub_1E654DF40;
    v7 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E654DF40()
{
  v74 = v0;
  v73 = *MEMORY[0x1E69E9840];
  v1 = v0[49];
  v2 = v0[7];
  v3 = sub_1E65D82D8();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = *(v3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v72 = v0;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v65 = v6;
    v66 = v4;
    v64 = v63;
    v0 = v0[39];
    MEMORY[0x1EEE9AC00](v4);
    v67 = v63 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v67, v7);
    v8 = 0;
    v71 = v3;
    v10 = *(v3 + 56);
    v3 += 56;
    v9 = v10;
    v11 = 1 << *(v3 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    v70 = v0 + 2;
    v68 = 0;
    v69 = v0 + 1;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v8 << 6);
      v18 = v72[41];
      v19 = v72[38];
      v20 = v72[7];
      (v0[2])(v18, *(v71 + 48) + v0[9] * v17, v19);
      v21 = sub_1E65DA3B8();
      v4 = (v0[1])(v18, v19);
      if (v21 == v20)
      {
        *&v67[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v68++, 1))
        {
          __break(1u);
LABEL_16:
          v23 = sub_1E6556C54(v67, v65, v68, v71);
          v0 = v72;
          goto LABEL_17;
        }
      }
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v3 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    v59 = v4;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v4 = v59;
  }

  v60 = v0[52];
  v61 = swift_slowAlloc();
  v23 = sub_1E6556BC4(v61, v6, v3, sub_1E6557C60);

  result = MEMORY[0x1E694F1C0](v61, -1, -1);
  if (v60)
  {
    v62 = *MEMORY[0x1E69E9840];
  }

  else
  {
LABEL_17:
    v25 = v0[42];
    v24 = v0[43];
    v27 = v0[38];
    v26 = v0[39];

    sub_1E654CE18(v23, v24);

    sub_1E5DFD1CC(v24, v25, &qword_1ED07AF98, &qword_1E660AB58);
    if ((*(v26 + 48))(v25, 1, v27) == 1)
    {
      v29 = v0[48];
      v28 = v0[49];
      v30 = v0[47];
      v31 = v0[43];
      sub_1E5DFE50C(v0[42], &qword_1ED07AF98, &qword_1E660AB58);
      v32 = sub_1E65D7EC8();
      sub_1E6557C18(&qword_1ED078850, MEMORY[0x1E69CB148]);
      v33 = swift_allocError();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69CB140], v32);
      v63[0] = v33;
      swift_willThrow();
      sub_1E5DFE50C(v31, &qword_1ED07AF98, &qword_1E660AB58);
      (*(v29 + 8))(v28, v30);
      v35 = v72[49];
      v36 = v72[46];
      v37 = v72[43];
      v38 = v72[42];
      v39 = v72[41];
      v40 = v72[40];
      v41 = v72[37];
      v42 = v72[36];
      v43 = v72[35];
      v44 = v72[32];
      v45 = v72[28];
      v63[1] = v72[31];
      v64 = v45;
      v46 = v72[26];
      v65 = v72[27];
      v66 = v46;
      v47 = v72[21];
      v67 = v72[24];
      v68 = v47;
      v48 = v72[16];
      v69 = v72[18];
      v70 = v48;
      v71 = v72[15];

      v49 = v72;

      v50 = v49[1];
      v51 = *MEMORY[0x1E69E9840];

      return v50();
    }

    else
    {
      v53 = v0[32];
      v54 = v0[14];
      v56 = v0[5];
      v55 = v0[6];
      (*(v0[39] + 32))(v0[40], v0[42], v0[38]);
      v57 = v54[29];
      __swift_project_boxed_opaque_existential_1(v54 + 25, v54[28]);
      sub_1E65DDA98();
      v58 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DFA0](sub_1E654E818, 0, 0);
    }
  }

  return result;
}

uint64_t sub_1E654E5E8()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = v0[14];
  (*(v0[45] + 8))(v0[46], v0[44]);
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E654E690, v1, 0);
}

uint64_t sub_1E654E690()
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[35];
  v10 = v0[32];
  v14 = v0[52];
  v15 = v0[31];
  v16 = v0[28];
  v17 = v0[27];
  v18 = v0[26];
  v19 = v0[24];
  v20 = v0[21];
  v21 = v0[18];
  v22 = v0[16];
  v23 = v0[15];

  v11 = v0[1];
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1E654E818()
{
  v1 = v0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = v0[32];
  v3 = swift_task_alloc();
  v1[53] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 138;
  *(v3 + 48) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v1[54] = v5;
  *v5 = v1;
  v5[1] = sub_1E654E954;
  v6 = v1[36];
  v7 = v1[33];
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557D74, v3, v7);
}

uint64_t sub_1E654E954()
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  v2[55] = v0;

  v5 = v2[53];
  if (v0)
  {

    v6 = *MEMORY[0x1E69E9840];
    v7 = sub_1E654F024;
    v8 = 0;
  }

  else
  {
    v9 = v2[32];
    v10 = v2[29];
    v11 = v2[30];
    v12 = v2[14];

    (*(v11 + 8))(v9, v10);
    v13 = *MEMORY[0x1E69E9840];
    v7 = sub_1E654EB08;
    v8 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1E654EB08()
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = v0[4];
  (*(v0[34] + 32))(v0[37], v0[36], v0[33]);
  v2 = v0[4];
  if (v1)
  {
    v3 = v0[3];
    v4 = v0[4];
  }

  else
  {
    sub_1E65E5D08();
  }

  v5 = sub_1E65DDC38();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v0[61] = sub_1E65DDC18();
  if (v1)
  {
    v8 = v0[28];
    v9 = sub_1E65E3978();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v30 = v0[61];
    v43 = v0[47];
    v44 = v0[49];
    v45 = v0[46];
    v41 = v0[43];
    v42 = v0[48];
    v46 = v0[42];
    v11 = v0[40];
    v10 = v0[41];
    v12 = v0[38];
    v13 = v0[39];
    v38 = v0[37];
    v47 = v0[36];
    v48 = v0[35];
    v39 = v0[34];
    v40 = v0[33];
    v49 = v0[32];
    v50 = v0[31];
    v14 = v0[28];
    v15 = v0[26];
    v51 = v0[27];
    v52 = v0[24];
    v53 = v0[21];
    v16 = v0[17];
    v17 = v0[18];
    v31 = v0[16];
    v54 = v0[15];
    v32 = v0[11];
    v18 = v0[8];
    v34 = v0[10];
    v35 = v0[13];
    v33 = v0[9];
    v36 = v0[2];
    v37 = v0[12];
    sub_1E65D9618();
    (*(v13 + 16))(v10, v11, v12);
    *v17 = v30;
    swift_storeEnumTagMultiPayload();
    sub_1E5DFD1CC(v14, v15, &qword_1ED07AF20, &qword_1E660A968);
    v19 = sub_1E65D88C8();
    (*(*(v19 - 8) + 56))(v31, 1, 1, v19);
    sub_1E5DFD1CC(v32, v54, &unk_1ED077780, &unk_1E66097F0);
    sub_1E5FA9D34(v33, v34);

    sub_1E65E5748();
    sub_1E5DFE50C(v14, &qword_1ED07AF20, &qword_1E660A968);
    (*(v39 + 8))(v38, v40);
    (*(v13 + 8))(v11, v12);
    sub_1E5DFE50C(v41, &qword_1ED07AF98, &qword_1E660AB58);
    (*(v42 + 8))(v44, v43);

    v20 = v0[1];
    v21 = *MEMORY[0x1E69E9840];

    return v20();
  }

  else
  {
    v23 = v0[40];
    v24 = v0[37];
    v25 = v0[24];
    v27 = v0[20];
    v26 = v0[21];
    v28 = v0[19];
    sub_1E65DDC28();
    sub_1E65D9618();
    sub_1E65E3968();

    (*(v27 + 8))(v26, v28);
    v29 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](sub_1E654F484, 0, 0);
  }
}

uint64_t sub_1E654F024()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[14];
  v5 = *(v3 + 8);
  v0[56] = v5;
  v0[57] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E654F0D8, v4, 0);
}

uint64_t sub_1E654F0D8()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[31];
  v2 = v0[14];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v2[29];
  __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
  sub_1E65DDA88();
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E654F1B0, 0, 0);
}

uint64_t sub_1E654F1B0()
{
  v1 = v0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = v0[31];
  v3 = swift_task_alloc();
  v1[58] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 140;
  *(v3 + 48) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v1[59] = v5;
  *v5 = v1;
  v5[1] = sub_1E654F2EC;
  v6 = v1[35];
  v7 = v1[33];
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557D74, v3, v7);
}

uint64_t sub_1E654F2EC()
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *(*v1 + 464);
  v13 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = sub_1E65504D4;
    v7 = 0;
  }

  else
  {
    v8 = *(v2 + 456);
    v9 = *(v2 + 112);
    (*(v2 + 448))(*(v2 + 248), *(v2 + 232));
    v10 = *MEMORY[0x1E69E9840];
    v6 = sub_1E654FFAC;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E654F484()
{
  v1 = v0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = v0[24];
  v3 = swift_task_alloc();
  v1[62] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 153;
  *(v3 + 48) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v1[63] = v5;
  *v5 = v1;
  v5[1] = sub_1E654F5C0;
  v6 = v1[27];
  v7 = v1[25];
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557CA0, v3, v7);
}

uint64_t sub_1E654F5C0()
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 504);
  v5 = *v1;

  v6 = v2[62];
  if (v0)
  {

    v7 = *MEMORY[0x1E69E9840];
    v8 = sub_1E654FB24;
    v9 = 0;
  }

  else
  {
    v11 = v3[23];
    v10 = v3[24];
    v12 = v3[22];
    v13 = v3[14];

    (*(v11 + 8))(v10, v12);
    v14 = *MEMORY[0x1E69E9840];
    v8 = sub_1E654F788;
    v9 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1E654F788()
{
  v39 = *MEMORY[0x1E69E9840];
  sub_1E6557CB8(v0[27], v0[28]);
  v14 = v0[61];
  v27 = v0[47];
  v28 = v0[49];
  v29 = v0[46];
  v25 = v0[43];
  v26 = v0[48];
  v30 = v0[42];
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v22 = v0[37];
  v31 = v0[36];
  v32 = v0[35];
  v23 = v0[34];
  v24 = v0[33];
  v33 = v0[32];
  v34 = v0[31];
  v5 = v0[28];
  v6 = v0[26];
  v35 = v0[27];
  v36 = v0[24];
  v37 = v0[21];
  v8 = v0[17];
  v7 = v0[18];
  v15 = v0[16];
  v38 = v0[15];
  v16 = v0[11];
  v9 = v0[8];
  v18 = v0[10];
  v19 = v0[13];
  v17 = v0[9];
  v20 = v0[2];
  v21 = v0[12];
  sub_1E65D9618();
  (*(v4 + 16))(v1, v2, v3);
  *v7 = v14;
  swift_storeEnumTagMultiPayload();
  sub_1E5DFD1CC(v5, v6, &qword_1ED07AF20, &qword_1E660A968);
  v10 = sub_1E65D88C8();
  (*(*(v10 - 8) + 56))(v15, 1, 1, v10);
  sub_1E5DFD1CC(v16, v38, &unk_1ED077780, &unk_1E66097F0);
  sub_1E5FA9D34(v17, v18);

  sub_1E65E5748();
  sub_1E5DFE50C(v5, &qword_1ED07AF20, &qword_1E660A968);
  (*(v23 + 8))(v22, v24);
  (*(v4 + 8))(v2, v3);
  sub_1E5DFE50C(v25, &qword_1ED07AF98, &qword_1E660AB58);
  (*(v26 + 8))(v28, v27);

  v11 = v0[1];
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1E654FB24()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = v0[14];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E654FBCC, v1, 0);
}

uint64_t sub_1E654FBCC()
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = v0[27];
  v2 = sub_1E65E3978();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_1E6557CB8(v0[27], v0[28]);
  v16 = v0[61];
  v29 = v0[47];
  v30 = v0[49];
  v31 = v0[46];
  v27 = v0[43];
  v28 = v0[48];
  v32 = v0[42];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v6 = v0[39];
  v24 = v0[37];
  v33 = v0[36];
  v34 = v0[35];
  v25 = v0[34];
  v26 = v0[33];
  v35 = v0[32];
  v36 = v0[31];
  v7 = v0[28];
  v8 = v0[26];
  v37 = v0[27];
  v38 = v0[24];
  v39 = v0[21];
  v9 = v0[17];
  v10 = v0[18];
  v17 = v0[16];
  v40 = v0[15];
  v18 = v0[11];
  v11 = v0[8];
  v20 = v0[10];
  v21 = v0[13];
  v19 = v0[9];
  v22 = v0[2];
  v23 = v0[12];
  sub_1E65D9618();
  (*(v6 + 16))(v3, v4, v5);
  *v10 = v16;
  swift_storeEnumTagMultiPayload();
  sub_1E5DFD1CC(v7, v8, &qword_1ED07AF20, &qword_1E660A968);
  v12 = sub_1E65D88C8();
  (*(*(v12 - 8) + 56))(v17, 1, 1, v12);
  sub_1E5DFD1CC(v18, v40, &unk_1ED077780, &unk_1E66097F0);
  sub_1E5FA9D34(v19, v20);

  sub_1E65E5748();
  sub_1E5DFE50C(v7, &qword_1ED07AF20, &qword_1E660A968);
  (*(v25 + 8))(v24, v26);
  (*(v6 + 8))(v4, v5);
  sub_1E5DFE50C(v27, &qword_1ED07AF98, &qword_1E660AB58);
  (*(v28 + 8))(v30, v29);

  v13 = v0[1];
  v14 = *MEMORY[0x1E69E9840];

  return v13();
}

uint64_t sub_1E654FFAC()
{
  v55 = *MEMORY[0x1E69E9840];

  v1 = *(v0 + 32);
  (*(*(v0 + 272) + 32))(*(v0 + 296), *(v0 + 280), *(v0 + 264));
  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
  }

  else
  {
    sub_1E65E5D08();
  }

  v5 = sub_1E65DDC38();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  *(v0 + 488) = sub_1E65DDC18();
  if (v1)
  {
    v8 = *(v0 + 224);
    v9 = sub_1E65E3978();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v30 = *(v0 + 488);
    v43 = *(v0 + 376);
    v44 = *(v0 + 392);
    v45 = *(v0 + 368);
    v41 = *(v0 + 344);
    v42 = *(v0 + 384);
    v46 = *(v0 + 336);
    v11 = *(v0 + 320);
    v10 = *(v0 + 328);
    v12 = *(v0 + 304);
    v13 = *(v0 + 312);
    v38 = *(v0 + 296);
    v47 = *(v0 + 288);
    v48 = *(v0 + 280);
    v39 = *(v0 + 272);
    v40 = *(v0 + 264);
    v49 = *(v0 + 256);
    v50 = *(v0 + 248);
    v14 = *(v0 + 224);
    v15 = *(v0 + 208);
    v51 = *(v0 + 216);
    v52 = *(v0 + 192);
    v53 = *(v0 + 168);
    v16 = *(v0 + 136);
    v17 = *(v0 + 144);
    v31 = *(v0 + 128);
    v54 = *(v0 + 120);
    v32 = *(v0 + 88);
    v18 = *(v0 + 64);
    v34 = *(v0 + 80);
    v35 = *(v0 + 104);
    v33 = *(v0 + 72);
    v36 = *(v0 + 16);
    v37 = *(v0 + 96);
    sub_1E65D9618();
    (*(v13 + 16))(v10, v11, v12);
    *v17 = v30;
    swift_storeEnumTagMultiPayload();
    sub_1E5DFD1CC(v14, v15, &qword_1ED07AF20, &qword_1E660A968);
    v19 = sub_1E65D88C8();
    (*(*(v19 - 8) + 56))(v31, 1, 1, v19);
    sub_1E5DFD1CC(v32, v54, &unk_1ED077780, &unk_1E66097F0);
    sub_1E5FA9D34(v33, v34);

    sub_1E65E5748();
    sub_1E5DFE50C(v14, &qword_1ED07AF20, &qword_1E660A968);
    (*(v39 + 8))(v38, v40);
    (*(v13 + 8))(v11, v12);
    sub_1E5DFE50C(v41, &qword_1ED07AF98, &qword_1E660AB58);
    (*(v42 + 8))(v44, v43);

    v20 = *(v0 + 8);
    v21 = *MEMORY[0x1E69E9840];

    return v20();
  }

  else
  {
    v23 = *(v0 + 320);
    v24 = *(v0 + 296);
    v25 = *(v0 + 192);
    v27 = *(v0 + 160);
    v26 = *(v0 + 168);
    v28 = *(v0 + 152);
    sub_1E65DDC28();
    sub_1E65D9618();
    sub_1E65E3968();

    (*(v27 + 8))(v26, v28);
    v29 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](sub_1E654F484, 0, 0);
  }
}

uint64_t sub_1E65504D4()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 456);
  v2 = *(v0 + 112);
  (*(v0 + 448))(*(v0 + 248), *(v0 + 232));
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6550574, v2, 0);
}

uint64_t sub_1E6550574()
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 344);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 304);

  (*(v6 + 8))(v5, v7);
  sub_1E5DFE50C(v4, &qword_1ED07AF98, &qword_1E660AB58);
  (*(v2 + 8))(v1, v3);
  v8 = *(v0 + 392);
  v9 = *(v0 + 368);
  v10 = *(v0 + 336);
  v11 = *(v0 + 344);
  v13 = *(v0 + 320);
  v12 = *(v0 + 328);
  v15 = *(v0 + 288);
  v14 = *(v0 + 296);
  v16 = *(v0 + 280);
  v17 = *(v0 + 256);
  v21 = *(v0 + 480);
  v22 = *(v0 + 248);
  v23 = *(v0 + 224);
  v24 = *(v0 + 216);
  v25 = *(v0 + 208);
  v26 = *(v0 + 192);
  v27 = *(v0 + 168);
  v28 = *(v0 + 144);
  v29 = *(v0 + 128);
  v30 = *(v0 + 120);

  v18 = *(v0 + 8);
  v19 = *MEMORY[0x1E69E9840];

  return v18();
}

uint64_t sub_1E6550760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v34 = *MEMORY[0x1E69E9840];
  *(v9 + 104) = v37;
  *(v9 + 112) = v38;
  *(v9 + 88) = v36;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 64) = a9;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0) - 8) + 64) + 15;
  *(v9 + 120) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF18, &qword_1E660A960) - 8) + 64) + 15;
  *(v9 + 128) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF20, &qword_1E660A968) - 8) + 64) + 15;
  *(v9 + 136) = swift_task_alloc();
  v13 = sub_1E65DDCF8();
  *(v9 + 144) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v9 + 152) = swift_task_alloc();
  v15 = *(*(sub_1E65D8668() - 8) + 64) + 15;
  *(v9 + 160) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD18, &qword_1E660AB50);
  *(v9 + 168) = v16;
  v17 = *(v16 - 8);
  *(v9 + 176) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  v19 = sub_1E65D9658();
  *(v9 + 200) = v19;
  v20 = *(v19 - 8);
  *(v9 + 208) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  v22 = sub_1E65DA3D8();
  *(v9 + 240) = v22;
  v23 = *(v22 - 8);
  *(v9 + 248) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF98, &qword_1E660AB58) - 8) + 64) + 15;
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEE8, &qword_1E660AB60);
  *(v9 + 288) = v26;
  v27 = *(v26 - 8);
  *(v9 + 296) = v27;
  v28 = *(v27 + 64) + 15;
  *(v9 + 304) = swift_task_alloc();
  v29 = sub_1E65D82F8();
  *(v9 + 312) = v29;
  v30 = *(v29 - 8);
  *(v9 + 320) = v30;
  v31 = *(v30 + 64) + 15;
  *(v9 + 328) = swift_task_alloc();
  v32 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6550B78, v38, 0);
}

uint64_t sub_1E6550B78()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 304);
  v2 = *(v0 + 112);
  v3 = v2[34];
  __swift_project_boxed_opaque_existential_1(v2 + 30, v2[33]);
  sub_1E65DD4A8();
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6550C38, 0, 0);
}

uint64_t sub_1E6550C38()
{
  v1 = v0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = v0[38];
  v3 = swift_task_alloc();
  v1[42] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 85;
  *(v3 + 48) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v1[43] = v5;
  *v5 = v1;
  v5[1] = sub_1E6550D74;
  v6 = v1[41];
  v7 = v1[39];
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557BE8, v3, v7);
}

uint64_t sub_1E6550D74()
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *(*v1 + 336);
  v12 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = sub_1E6551584;
    v7 = 0;
  }

  else
  {
    v8 = v2[14];
    (*(v2[37] + 8))(v2[38], v2[36]);
    v9 = *MEMORY[0x1E69E9840];
    v6 = sub_1E6550F14;
    v7 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E6550F14()
{
  v72 = v0;
  v71 = *MEMORY[0x1E69E9840];
  v1 = v0[41];
  v2 = v0[7];
  v3 = sub_1E65D82D8();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = *(v3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v70 = v0;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v63 = v6;
    v64 = v4;
    v62 = &v62;
    v0 = v0[31];
    MEMORY[0x1EEE9AC00](v4);
    v65 = &v62 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v65, v7);
    v8 = 0;
    v69 = v3;
    v10 = *(v3 + 56);
    v3 += 56;
    v9 = v10;
    v11 = 1 << *(v3 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    v68 = v0 + 2;
    v66 = 0;
    v67 = v0 + 1;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v8 << 6);
      v18 = v70[33];
      v19 = v70[30];
      v20 = v70[7];
      (v0[2])(v18, *(v69 + 48) + v0[9] * v17, v19);
      v21 = sub_1E65DA3B8();
      v4 = (v0[1])(v18, v19);
      if (v21 == v20)
      {
        *&v65[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v66++, 1))
        {
          __break(1u);
LABEL_16:
          v23 = sub_1E6556C54(v65, v63, v66, v69);
          v0 = v70;
          goto LABEL_17;
        }
      }
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v3 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    v58 = v4;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v4 = v58;
  }

  v59 = v0[44];
  v60 = swift_slowAlloc();
  v23 = sub_1E6556BC4(v60, v6, v3, sub_1E6557D54);

  result = MEMORY[0x1E694F1C0](v60, -1, -1);
  if (v59)
  {
    v61 = *MEMORY[0x1E69E9840];
  }

  else
  {
LABEL_17:
    v25 = v0[34];
    v24 = v0[35];
    v27 = v0[30];
    v26 = v0[31];

    sub_1E654CE18(v23, v24);

    sub_1E5DFD1CC(v24, v25, &qword_1ED07AF98, &qword_1E660AB58);
    if ((*(v26 + 48))(v25, 1, v27) == 1)
    {
      v29 = v0[40];
      v28 = v0[41];
      v30 = v0[39];
      v31 = v0[35];
      sub_1E5DFE50C(v0[34], &qword_1ED07AF98, &qword_1E660AB58);
      v32 = sub_1E65D7EC8();
      sub_1E6557C18(&qword_1ED078850, MEMORY[0x1E69CB148]);
      v33 = swift_allocError();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69CB140], v32);
      v63 = v33;
      swift_willThrow();
      sub_1E5DFE50C(v31, &qword_1ED07AF98, &qword_1E660AB58);
      (*(v29 + 8))(v28, v30);
      v35 = v70[41];
      v36 = v70[38];
      v37 = v70[35];
      v38 = v70[34];
      v39 = v70[33];
      v40 = v70[32];
      v41 = v70[29];
      v42 = v70[28];
      v43 = v70[27];
      v44 = v70[24];
      v45 = v70[20];
      v64 = v70[23];
      v65 = v45;
      v46 = v70[17];
      v66 = v70[19];
      v67 = v46;
      v47 = v70[15];
      v68 = v70[16];
      v69 = v47;

      v48 = v70;

      v49 = v48[1];
      v50 = *MEMORY[0x1E69E9840];

      return v49();
    }

    else
    {
      v52 = v0[24];
      v53 = v0[14];
      v55 = v0[5];
      v54 = v0[6];
      (*(v0[31] + 32))(v0[32], v0[34], v0[30]);
      v56 = v53[29];
      __swift_project_boxed_opaque_existential_1(v53 + 25, v53[28]);
      sub_1E65DDA98();
      v57 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DFA0](sub_1E655178C, 0, 0);
    }
  }

  return result;
}

uint64_t sub_1E6551584()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = v0[14];
  (*(v0[37] + 8))(v0[38], v0[36]);
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E655162C, v1, 0);
}

uint64_t sub_1E655162C()
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = v0[41];
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[27];
  v10 = v0[24];
  v14 = v0[44];
  v15 = v0[23];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[15];

  v11 = v0[1];
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1E655178C()
{
  v1 = v0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = v0[24];
  v3 = swift_task_alloc();
  v1[45] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 97;
  *(v3 + 48) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v1[46] = v5;
  *v5 = v1;
  v5[1] = sub_1E65518C8;
  v6 = v1[28];
  v7 = v1[25];
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557C00, v3, v7);
}

uint64_t sub_1E65518C8()
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  v2[47] = v0;

  v5 = v2[45];
  if (v0)
  {

    v6 = *MEMORY[0x1E69E9840];
    v7 = sub_1E6551E50;
    v8 = 0;
  }

  else
  {
    v9 = v2[24];
    v10 = v2[21];
    v11 = v2[22];
    v12 = v2[14];

    (*(v11 + 8))(v9, v10);
    v13 = *MEMORY[0x1E69E9840];
    v7 = sub_1E6551A7C;
    v8 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1E6551A7C()
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = v0[4];
  (*(v0[26] + 32))(v0[29], v0[28], v0[25]);
  v2 = v0[4];
  if (v1)
  {
    v20 = v0[3];
  }

  else
  {
    sub_1E65E5D08();
  }

  v32 = v0[40];
  v33 = v0[39];
  v34 = v0[41];
  v35 = v0[38];
  v31 = v0[35];
  v36 = v0[34];
  v3 = v0[32];
  v19 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v22 = v0[29];
  v37 = v0[28];
  v38 = v0[27];
  v29 = v0[26];
  v30 = v0[25];
  v39 = v0[24];
  v40 = v0[23];
  v6 = v0[19];
  v7 = v0[20];
  v18 = v0[18];
  v21 = v0[17];
  v41 = v0[16];
  v42 = v0[15];
  v25 = v0[10];
  v26 = v0[13];
  v23 = v0[11];
  v24 = v0[9];
  v8 = v0[8];
  v27 = v0[2];
  v28 = v0[12];
  v9 = sub_1E65DDC38();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = sub_1E65DDC18();
  sub_1E65D9618();
  (*(v4 + 16))(v19, v3, v5);
  *v6 = v12;
  swift_storeEnumTagMultiPayload();
  v13 = sub_1E65E3978();
  (*(*(v13 - 8) + 56))(v21, 1, 1, v13);
  v14 = sub_1E65D88C8();
  (*(*(v14 - 8) + 56))(v41, 1, 1, v14);
  sub_1E5DFD1CC(v23, v42, &unk_1ED077780, &unk_1E66097F0);
  sub_1E5FA9D34(v24, v25);

  sub_1E65E5748();
  (*(v29 + 8))(v22, v30);
  (*(v4 + 8))(v3, v5);
  sub_1E5DFE50C(v31, &qword_1ED07AF98, &qword_1E660AB58);
  (*(v32 + 8))(v34, v33);

  v15 = v0[1];
  v16 = *MEMORY[0x1E69E9840];

  return v15();
}

uint64_t sub_1E6551E50()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[14];
  v5 = *(v3 + 8);
  v0[48] = v5;
  v0[49] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6551F04, v4, 0);
}

uint64_t sub_1E6551F04()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[23];
  v2 = v0[14];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v2[29];
  __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
  sub_1E65DDA88();
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6551FDC, 0, 0);
}

uint64_t sub_1E6551FDC()
{
  v1 = v0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = v0[23];
  v3 = swift_task_alloc();
  v1[50] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 99;
  *(v3 + 48) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v1[51] = v5;
  *v5 = v1;
  v5[1] = sub_1E6552118;
  v6 = v1[27];
  v7 = v1[25];
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557D74, v3, v7);
}

uint64_t sub_1E6552118()
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 400);
  v13 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = sub_1E6552690;
    v7 = 0;
  }

  else
  {
    v8 = *(v2 + 392);
    v9 = *(v2 + 112);
    (*(v2 + 384))(*(v2 + 184), *(v2 + 168));
    v10 = *MEMORY[0x1E69E9840];
    v6 = sub_1E65522B0;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E65522B0()
{
  v43 = *MEMORY[0x1E69E9840];

  v1 = *(v0 + 32);
  (*(*(v0 + 208) + 32))(*(v0 + 232), *(v0 + 216), *(v0 + 200));
  v2 = *(v0 + 32);
  if (v1)
  {
    v20 = *(v0 + 24);
  }

  else
  {
    sub_1E65E5D08();
  }

  v32 = *(v0 + 320);
  v33 = *(v0 + 312);
  v34 = *(v0 + 328);
  v35 = *(v0 + 304);
  v31 = *(v0 + 280);
  v36 = *(v0 + 272);
  v3 = *(v0 + 256);
  v19 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v22 = *(v0 + 232);
  v37 = *(v0 + 224);
  v38 = *(v0 + 216);
  v29 = *(v0 + 208);
  v30 = *(v0 + 200);
  v39 = *(v0 + 192);
  v40 = *(v0 + 184);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v18 = *(v0 + 144);
  v21 = *(v0 + 136);
  v41 = *(v0 + 128);
  v42 = *(v0 + 120);
  v25 = *(v0 + 80);
  v26 = *(v0 + 104);
  v23 = *(v0 + 88);
  v24 = *(v0 + 72);
  v8 = *(v0 + 64);
  v27 = *(v0 + 16);
  v28 = *(v0 + 96);
  v9 = sub_1E65DDC38();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = sub_1E65DDC18();
  sub_1E65D9618();
  (*(v4 + 16))(v19, v3, v5);
  *v6 = v12;
  swift_storeEnumTagMultiPayload();
  v13 = sub_1E65E3978();
  (*(*(v13 - 8) + 56))(v21, 1, 1, v13);
  v14 = sub_1E65D88C8();
  (*(*(v14 - 8) + 56))(v41, 1, 1, v14);
  sub_1E5DFD1CC(v23, v42, &unk_1ED077780, &unk_1E66097F0);
  sub_1E5FA9D34(v24, v25);

  sub_1E65E5748();
  (*(v29 + 8))(v22, v30);
  (*(v4 + 8))(v3, v5);
  sub_1E5DFE50C(v31, &qword_1ED07AF98, &qword_1E660AB58);
  (*(v32 + 8))(v34, v33);

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15();
}

uint64_t sub_1E6552690()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 392);
  v2 = *(v0 + 112);
  (*(v0 + 384))(*(v0 + 184), *(v0 + 168));
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6552730, v2, 0);
}

uint64_t sub_1E6552730()
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 280);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 240);

  (*(v6 + 8))(v5, v7);
  sub_1E5DFE50C(v4, &qword_1ED07AF98, &qword_1E660AB58);
  (*(v2 + 8))(v1, v3);
  v8 = *(v0 + 328);
  v9 = *(v0 + 304);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);
  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v16 = *(v0 + 216);
  v17 = *(v0 + 192);
  v21 = *(v0 + 416);
  v22 = *(v0 + 184);
  v23 = *(v0 + 160);
  v24 = *(v0 + 152);
  v25 = *(v0 + 136);
  v26 = *(v0 + 128);
  v27 = *(v0 + 120);

  v18 = *(v0 + 8);
  v19 = *MEMORY[0x1E69E9840];

  return v18();
}

uint64_t sub_1E65528F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6552910, a2, 0);
}

uint64_t sub_1E6552910()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  swift_getObjectType();
  sub_1E65DDE98();
  sub_1E65DDE38();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65529B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65529CC, a2, 0);
}

uint64_t sub_1E65529CC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  swift_getObjectType();
  sub_1E65E5538();
  sub_1E6557C18(&qword_1EE2D49B8, MEMORY[0x1E69CD890]);
  sub_1E65DDE38();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6552AAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6552AC8, a2, 0);
}

uint64_t sub_1E6552AC8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  swift_getObjectType();
  sub_1E65DE198();
  sub_1E65D9AC8();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6552B9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E654D328(a1);
}

uint64_t sub_1E6552C38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E654CF58(a1);
}

uint64_t sub_1E6552CD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF88, &qword_1E660AB30);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF80, &unk_1E660AB20);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6557BC0;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E65530AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF70, &qword_1E660AB10);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF40, &unk_1E660AAD0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6557AE8;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E6553488(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF58, &qword_1E660FC40);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF48, &unk_1E660FC30);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6557A24;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B18, v35);
}

uint64_t sub_1E6553864(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFB8, &qword_1E660AB78);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFB0, &qword_1E660AB70);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6557D28;
  *(v35 + 24) = v33;

  v34(sub_1E6557D50, v35);
}

uint64_t sub_1E6553C40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF30, &qword_1E660AAB8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF28, &qword_1E660AAB0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E655799C;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E655401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65DACD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF90, &qword_1E660AB38);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07AF90, &qword_1E660AB38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF88, &qword_1E660AB30);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF88, &qword_1E660AB30);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6554390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65DAEB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF78, &qword_1E660AB18);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07AF78, &qword_1E660AB18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF70, &qword_1E660AB10);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF70, &qword_1E660AB10);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6554704(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v31 = a6;
  v30 = a5;
  LODWORD(v10) = a2;
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v18 = sub_1E65E6338();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a8;
    v20 = v19;
    v21 = swift_slowAlloc();
    HIDWORD(v28) = v10;
    v10 = v21;
    v33 = v21;
    *v20 = 134218498;
    *(v20 + 4) = a3;
    *(v20 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, &v33);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v25 = v10;
    LOBYTE(v10) = BYTE4(v28);
    MEMORY[0x1E694F1C0](v25, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v33 = a1;
  if (v10)
  {
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF58, &qword_1E660FC40);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF58, &qword_1E660FC40);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6554960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF20, &qword_1E660A968);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFC0, &unk_1E660AB80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v34 - v17);
  v19 = sub_1E65E3B68();
  v41 = *(v19 - 8);
  v42 = v19;
  v20 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v23 = sub_1E65E3B48();
  v24 = sub_1E65E6338();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35 = a6;
    v26 = v25;
    v36 = swift_slowAlloc();
    v37 = a7;
    v43 = v36;
    *v26 = 134218498;
    *(v26 + 4) = a2;
    *(v26 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = a1;
    v30 = v14;
    v31 = sub_1E5DFD4B0(v27, v28, &v43);

    *(v26 + 14) = v31;
    v14 = v30;
    a1 = v29;
    *(v26 + 22) = 2048;
    *(v26 + 24) = v35;
    _os_log_impl(&dword_1E5DE9000, v23, v24, "Finished P->A conversion: %ld:%s:%lu", v26, 0x20u);
    v32 = v36;
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1E694F1C0](v32, -1, -1);
    MEMORY[0x1E694F1C0](v26, -1, -1);
  }

  (*(v41 + 8))(v22, v42);
  sub_1E5DFD1CC(a1, v18, &qword_1ED07AFC0, &unk_1E660AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFB8, &qword_1E660AB78);
    return sub_1E65E5FE8();
  }

  else
  {
    sub_1E6557CB8(v18, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFB8, &qword_1E660AB78);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6554C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9AC8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF38, &unk_1E660C6B0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07AF38, &unk_1E660C6B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF30, &qword_1E660AAB8);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF30, &qword_1E660AAB8);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6555004(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), void (*a4)(void), uint64_t (*a5)(void))
{
  v9 = *(a2(0) - 8);
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a3(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v13[1] = v11;
  result = sub_1E65551D8(v13, a4, a4, a5);
  *a1 = v10;
  return result;
}

size_t sub_1E65550DC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF68, &qword_1E660AB08);
  v4 = *(sub_1E65D7F88() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E65551D8(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = *(a1 + 8);
  result = sub_1E65E6BA8();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1E65E5F98();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      sub_1E65555F8(v14, v15, a1, v10, a3, a4, a3, a4);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_1E6555340(0, v8, 1, a1, a3, a4);
  }

  return result;
}

uint64_t sub_1E6555340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v53 = a6;
  v10 = a5(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v47 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v52 = &v37 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v51 = &v37 - v18;
  v39 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v21 = *(v17 + 16);
    v20 = v17 + 16;
    v22 = *(v20 + 56);
    v48 = (v20 - 8);
    v49 = v21;
    v50 = v20;
    v23 = v19 + v22 * (a3 - 1);
    v44 = -v22;
    v45 = (v20 + 16);
    v24 = a1 - a3;
    v46 = v19;
    v38 = v22;
    v25 = v19 + v22 * a3;
LABEL_5:
    v42 = v23;
    v43 = a3;
    v40 = v25;
    v41 = v24;
    v54 = v24;
    while (1)
    {
      v26 = v51;
      v27 = v49;
      v49(v51, v25, v10);
      v28 = v52;
      v29 = v27(v52, v23, v10);
      v30 = v53;
      v31 = (v53)(v29);
      v32 = v30();
      v33 = *v48;
      (*v48)(v28, v10);
      result = v33(v26, v10);
      if (v31 >= v32)
      {
LABEL_4:
        a3 = v43 + 1;
        v23 = v42 + v38;
        v24 = v41 - 1;
        v25 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v34 = *v45;
      v35 = v47;
      (*v45)(v47, v25, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = (v34)(v23, v35, v10);
      v23 += v44;
      v25 += v44;
      if (__CFADD__(v54++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E65555F8(int64_t *a1, uint64_t a2, char **a3, int64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v141 = a7;
  v142 = a8;
  v154 = a6;
  v10 = v8;
  v132 = a1;
  v13 = a5(0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v135 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v148 = &v130 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v153 = &v130 - v21;
  result = MEMORY[0x1EEE9AC00](v20);
  v155 = &v130 - v23;
  v144 = a3;
  if (a3[1] < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v9 = *v132;
    if (!*v132)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_130:
      result = sub_1E636AC44(v26);
      v26 = result;
    }

    v157 = v26;
    v126 = *(v26 + 2);
    if (v126 >= 2)
    {
      while (*v144)
      {
        v127 = *&v26[16 * v126];
        v128 = *&v26[16 * v126 + 24];
        sub_1E6556074(&(*v144)[v14[9] * v127], &(*v144)[v14[9] * *&v26[16 * v126 + 16]], &(*v144)[v14[9] * v128], v9, v141, v142, v141);
        if (v10)
        {
        }

        if (v128 < v127)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1E636AC44(v26);
        }

        if (v126 - 2 >= *(v26 + 2))
        {
          goto LABEL_124;
        }

        v129 = &v26[16 * v126];
        *v129 = v127;
        *(v129 + 1) = v128;
        v157 = v26;
        result = sub_1E636ABB8(v126 - 1);
        v26 = v157;
        v126 = *(v157 + 2);
        if (v126 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v24 = a3[1];
  v130 = a4;
  v25 = 0;
  v151 = (v14 + 1);
  v152 = v14 + 2;
  v150 = (v14 + 4);
  v26 = MEMORY[0x1E69E7CC0];
  v139 = v14;
  v156 = v13;
  while (1)
  {
    v27 = v25;
    v143 = v26;
    if (v25 + 1 >= v24)
    {
      v42 = v25 + 1;
    }

    else
    {
      v145 = v24;
      v131 = v10;
      v28 = *v144;
      v149 = v28;
      v29 = v14[9];
      v30 = v25;
      v133 = v25;
      v31 = &v28[v29 * (v25 + 1)];
      v32 = v14[2];
      v32(v155, v31, v13);
      v33 = &v28[v29 * v30];
      v34 = v153;
      v138 = v32;
      v35 = (v32)(v153, v33, v13);
      v36 = v154;
      v37 = v155;
      v146 = (v154)(v35);
      v140 = v36();
      v38 = v14[1];
      v39 = v34;
      v9 = v151;
      v38(v39, v13);
      v137 = v38;
      result = (v38)(v37, v13);
      v40 = v133 + 2;
      v147 = v29;
      v41 = &v149[v29 * (v133 + 2)];
      while (1)
      {
        v42 = v145;
        if (v145 == v40)
        {
          break;
        }

        LODWORD(v149) = v146 < v140;
        v44 = v155;
        v43 = v156;
        v45 = v138;
        (v138)(v155, v41, v156);
        v46 = v153;
        v47 = v45(v153, v31, v43);
        v48 = v154;
        v49 = (v154)(v47);
        v50 = v48();
        v51 = v46;
        v9 = v151;
        v52 = v137;
        (v137)(v51, v43);
        result = v52(v44, v43);
        v53 = v49 >= v50;
        v14 = v139;
        v54 = v53;
        v26 = v143;
        ++v40;
        v41 += v147;
        v31 += v147;
        if (((v149 ^ v54) & 1) == 0)
        {
          v42 = v40 - 1;
          break;
        }
      }

      v10 = v131;
      v13 = v156;
      v27 = v133;
      if (v146 < v140)
      {
        if (v42 < v133)
        {
          goto LABEL_127;
        }

        if (v133 < v42)
        {
          v55 = v147 * (v42 - 1);
          v9 = v42 * v147;
          v145 = v42;
          v56 = v42;
          v57 = v133;
          v58 = v133 * v147;
          do
          {
            if (v57 != --v56)
            {
              v59 = *v144;
              if (!*v144)
              {
                goto LABEL_133;
              }

              v60 = *v150;
              (*v150)(v135, &v59[v58], v13);
              if (v58 < v55 || &v59[v58] >= &v59[v9])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v58 != v55)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v60)(&v59[v55], v135, v13);
              v26 = v143;
            }

            ++v57;
            v55 -= v147;
            v9 -= v147;
            v58 += v147;
          }

          while (v57 < v56);
          v10 = v131;
          v14 = v139;
          v27 = v133;
          v42 = v145;
        }
      }
    }

    v61 = v144[1];
    if (v42 < v61)
    {
      if (__OFSUB__(v42, v27))
      {
        goto LABEL_126;
      }

      if (v42 - v27 < v130)
      {
        if (__OFADD__(v27, v130))
        {
          goto LABEL_128;
        }

        if (v27 + v130 >= v61)
        {
          v9 = v144[1];
        }

        else
        {
          v9 = v27 + v130;
        }

        if (v9 < v27)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v42 != v9)
        {
          break;
        }
      }
    }

    v9 = v42;
    if (v42 < v27)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v63 = *(v26 + 2);
    v62 = *(v26 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      result = sub_1E636ADD0((v62 > 1), v63 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v64;
    v65 = &v26[16 * v63];
    *(v65 + 4) = v27;
    *(v65 + 5) = v9;
    v66 = *v132;
    if (!*v132)
    {
      goto LABEL_135;
    }

    v136 = v9;
    if (v63)
    {
      v67 = v66;
      while (1)
      {
        v68 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v69 = *(v26 + 4);
          v70 = *(v26 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_56:
          if (v72)
          {
            goto LABEL_114;
          }

          v85 = &v26[16 * v64];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_117;
          }

          v91 = &v26[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_121;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v64 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v95 = &v26[16 * v64];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_70:
        if (v90)
        {
          goto LABEL_116;
        }

        v98 = &v26[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_119;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_77:
        v106 = v68 - 1;
        if (v68 - 1 >= v64)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v144)
        {
          goto LABEL_132;
        }

        v107 = *&v26[16 * v106 + 32];
        v9 = *&v26[16 * v68 + 40];
        sub_1E6556074(&(*v144)[v14[9] * v107], &(*v144)[v14[9] * *&v26[16 * v68 + 32]], &(*v144)[v14[9] * v9], v67, v141, v142, v141);
        if (v10)
        {
        }

        if (v9 < v107)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1E636AC44(v26);
        }

        if (v106 >= *(v26 + 2))
        {
          goto LABEL_111;
        }

        v108 = &v26[16 * v106];
        *(v108 + 4) = v107;
        *(v108 + 5) = v9;
        v157 = v26;
        result = sub_1E636ABB8(v68);
        v26 = v157;
        v64 = *(v157 + 2);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v26[16 * v64 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_112;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_113;
      }

      v80 = &v26[16 * v64];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_115;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_118;
      }

      if (v84 >= v76)
      {
        v102 = &v26[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_122;
        }

        if (v71 < v105)
        {
          v68 = v64 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v24 = v144[1];
    v25 = v136;
    if (v136 >= v24)
    {
      goto LABEL_98;
    }
  }

  v131 = v10;
  v109 = *v144;
  v110 = v14[9];
  v149 = v14[2];
  v111 = &v109[v110 * (v42 - 1)];
  v146 = -v110;
  v133 = v27;
  v112 = (v27 - v42);
  v147 = v109;
  v134 = v110;
  v113 = &v109[v42 * v110];
  v136 = v9;
LABEL_89:
  v145 = v42;
  v137 = v113;
  v138 = v112;
  v140 = v111;
  v114 = v111;
  while (1)
  {
    v115 = v155;
    v116 = v149;
    (v149)(v155, v113, v13);
    v117 = v153;
    v118 = v116(v153, v114, v156);
    v119 = v154;
    v120 = (v154)(v118);
    v121 = v119();
    v122 = *v151;
    v123 = v117;
    v13 = v156;
    (*v151)(v123, v156);
    result = v122(v115, v13);
    if (v120 >= v121)
    {
LABEL_88:
      v42 = v145 + 1;
      v111 = v140 + v134;
      v112 = v138 - 1;
      v113 = &v137[v134];
      v9 = v136;
      if (v145 + 1 != v136)
      {
        goto LABEL_89;
      }

      v10 = v131;
      v14 = v139;
      v26 = v143;
      v27 = v133;
      if (v136 < v133)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v147)
    {
      break;
    }

    v124 = *v150;
    v125 = v148;
    (*v150)(v148, v113, v13);
    swift_arrayInitWithTakeFrontToBack();
    v124(v114, v125, v13);
    v114 += v146;
    v113 += v146;
    v53 = __CFADD__(v112++, 1);
    if (v53)
    {
      goto LABEL_88;
    }
  }

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
  return result;
}

uint64_t sub_1E6556074(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v69 = a6;
  v12 = a5(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v67 = &v57 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_61;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v58 = a7;
  v22 = (a2 - a1) / v20;
  v74 = a1;
  v73 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v24 < 1)
    {
      v43 = a4 + v24;
    }

    else
    {
      v41 = -v20;
      v61 = a4;
      v62 = (v13 + 16);
      v60 = (v13 + 8);
      v42 = a4 + v24;
      v43 = a4 + v24;
      v71 = a1;
      v63 = -v20;
      do
      {
        v57 = v43;
        v44 = a2 + v41;
        v64 = a2;
        v65 = a2 + v41;
        while (1)
        {
          if (a2 <= a1)
          {
            v74 = a2;
            v72 = v57;
            goto LABEL_59;
          }

          v46 = a3;
          v59 = v43;
          v47 = v12;
          v70 = a3 + v41;
          v48 = v44;
          v49 = v42 + v41;
          v50 = *v62;
          v51 = v67;
          (*v62)(v67, v42 + v41, v47);
          v52 = v68;
          v53 = (v50)(v68, v48, v47);
          v54 = v69;
          v66 = (v69)(v53);
          v55 = v54();
          v56 = *v60;
          (*v60)(v52, v47);
          v56(v51, v47);
          if (v66 < v55)
          {
            break;
          }

          v43 = v49;
          a3 = v70;
          if (v46 < v42 || v70 >= v42)
          {
            v12 = v47;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v71;
          }

          else
          {
            v12 = v47;
            a1 = v71;
            if (v46 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v42 = v49;
          v45 = v49 > v61;
          a2 = v64;
          v44 = v65;
          v41 = v63;
          if (!v45)
          {
            goto LABEL_57;
          }
        }

        a3 = v70;
        if (v46 < v64 || v70 >= v64)
        {
          a2 = v65;
          v12 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v71;
          v43 = v59;
        }

        else
        {
          a2 = v65;
          v12 = v47;
          a1 = v71;
          v43 = v59;
          if (v46 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v41 = v63;
      }

      while (v42 > v61);
    }

LABEL_57:
    v74 = a2;
    v72 = v43;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v23;
    v72 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v26 = *(v13 + 16);
      v64 = v20;
      v65 = v13 + 16;
      v62 = (v13 + 8);
      v63 = v26;
      v70 = a3;
      do
      {
        v71 = a1;
        v27 = v67;
        v28 = v63;
        (v63)(v67, a2, v12);
        v29 = v12;
        v30 = v68;
        v31 = v28(v68, a4, v29);
        v32 = a4;
        v33 = v69;
        v34 = a2;
        v35 = (v69)(v31);
        v36 = v33();
        v37 = *v62;
        v38 = v30;
        v12 = v29;
        (*v62)(v38, v29);
        v37(v27, v29);
        if (v35 >= v36)
        {
          a2 = v34;
          v39 = v64;
          a4 = v32 + v64;
          v40 = v71;
          if (v71 < v32 || v71 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v73 = a4;
        }

        else
        {
          v39 = v64;
          a2 = v34 + v64;
          v40 = v71;
          a4 = v32;
          if (v71 < v34 || v71 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v40 + v39;
        v74 = a1;
      }

      while (a4 < v66 && a2 < v70);
    }
  }

LABEL_59:
  sub_1E655665C(&v74, &v73, &v72, v58);
  return 1;
}

uint64_t sub_1E655665C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_1E6556744(size_t a1, int64_t a2, char a3)
{
  result = sub_1E6556788(a1, a2, a3, *v3, &qword_1ED07AF60, &qword_1E660AB00, MEMORY[0x1E69CB880]);
  *v3 = result;
  return result;
}

size_t sub_1E6556788(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1E6556964(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_1E65DA3D8();
  v6 = *(*(v39 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        return sub_1E6556C54(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E6556BC4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1E6556964(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E6556C54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1E65DA3D8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFA0, &qword_1E660AB68);
  result = sub_1E65E6888();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1E6557C18(&qword_1ED07AFA8, MEMORY[0x1E69CCD28]);
    result = sub_1E65E5B38();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E6556F7C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1E65D7F88();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E655726C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1E65DA3D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1E655732C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E654D5A0();
}

uint64_t sub_1E65573BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5FE99E8;

  return sub_1E654D630(a1, a2);
}

uint64_t sub_1E6557464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1E5DFA78C;

  return sub_1E654D6D8(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1E6557570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1E5DFE6BC;

  return sub_1E6550760(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1E655767C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65528F4(a1, v1);
}

uint64_t sub_1E6557718(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65529B0(a1, v1);
}

uint64_t sub_1E65577B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6552AAC(a1, v1);
}