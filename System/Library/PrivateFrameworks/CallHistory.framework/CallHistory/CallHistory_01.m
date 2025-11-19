uint64_t sub_1C3EF4E58(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EEB060;

  return CallHistoryDataSource.deleteCalls(with:)(a1);
}

uint64_t CallHistoryDataSource.deleteCalls(with:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3EF4F10, 0, 0);
}

uint64_t sub_1C3EF4F10()
{
  v24 = v0;
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1C4030D10();
  __swift_project_value_buffer(v2, qword_1EC0B0CE0);
  sub_1C3EE61B4(v1);
  v3 = sub_1C4030CF0();
  v4 = sub_1C40315D0();
  sub_1C3EE6238(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1C3EEFC68(0xD000000000000012, 0x80000001C4056AA0, &v22);
    *(v6 + 12) = 2080;
    v23 = v5;
    sub_1C3EE61B4(v5);
    v8 = CallPredicate.description.getter();
    v10 = v9;
    sub_1C3EE6238(v23);
    v11 = sub_1C3EEFC68(v8, v10, &v22);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1C3E90000, v3, v4, "%{public}s predicate: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6934650](v7, -1, -1);
    MEMORY[0x1C6934650](v6, -1, -1);
  }

  v12 = v0[2];
  os_unfair_lock_lock((v12 + 16));
  v13 = *(v12 + 24);

  os_unfair_lock_unlock((v12 + 16));
  sub_1C3EF8778();
  v14 = v0[3];
  v15 = sub_1C4030EA0();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v18 = sub_1C4030EB0();
  sub_1C3EF63AC(v18, v14, &v23);
  if (sub_1C4030E40())
  {
    sub_1C4030E50();
  }

  v19 = v23;
  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_1C3EF5210(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE7A84;

  return CallHistoryDataSource.markAsRead(with:)(a1);
}

uint64_t CallHistoryDataSource.markAsRead(with:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3EF52C8, 0, 0);
}

uint64_t sub_1C3EF52C8()
{
  v24 = v0;
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1C4030D10();
  __swift_project_value_buffer(v2, qword_1EC0B0CE0);
  sub_1C3EE61B4(v1);
  v3 = sub_1C4030CF0();
  v4 = sub_1C40315D0();
  sub_1C3EE6238(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1C3EEFC68(0xD000000000000011, 0x80000001C4056AC0, &v22);
    *(v6 + 12) = 2080;
    v23 = v5;
    sub_1C3EE61B4(v5);
    v8 = CallPredicate.description.getter();
    v10 = v9;
    sub_1C3EE6238(v23);
    v11 = sub_1C3EEFC68(v8, v10, &v22);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1C3E90000, v3, v4, "%{public}s predicate: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6934650](v7, -1, -1);
    MEMORY[0x1C6934650](v6, -1, -1);
  }

  v12 = v0[2];
  os_unfair_lock_lock((v12 + 16));
  v13 = *(v12 + 24);

  os_unfair_lock_unlock((v12 + 16));
  sub_1C3EF8778();
  v14 = v0[3];
  v15 = sub_1C4030EA0();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v18 = sub_1C4030EB0();
  sub_1C3EF6810(v18, v14);
  v20 = sub_1C4030E40();
  if (v20)
  {
    sub_1C4030E50();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1C3EF558C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C3EF55E4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_1C3EF5620(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1C3EF5680(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1C3EF7E80;
}

void sub_1C3EF5714(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1C3EF5798(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3EE4204;

  return CallHistoryDataSource.markAsRead(_:)(a1);
}

uint64_t CallHistoryDataSource.markAsRead(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F038, &qword_1C4038248) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F040, &unk_1C4038250);
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_1C40309F0();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3EF5990, 0, 0);
}

uint64_t sub_1C3EF5990()
{
  v1 = v0[5];
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
  sub_1C3EF8778();
  v4 = v0[4];

  v5 = sub_1C4030EA0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_1C4030EB0();
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = v0[11];
    v29 = (v0[8] + 8);
    v27 = (v9 + 8);
    v28 = *(v9 + 16);
    v10 = v0[4] + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = *(v9 + 72);
    do
    {
      v30 = v8;
      v13 = v0[12];
      v14 = v0[9];
      v15 = v0[6];
      v28(v13, v10, v0[10]);
      *(swift_task_alloc() + 16) = v13;
      v0[2] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      sub_1C4030A80();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
      (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
      sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
      sub_1C4030F00();
      v17 = sub_1C4030E60();
      (*v29)(v0[9], v0[7]);
      if (v17 >> 62)
      {
        result = sub_1C40317E0();
        if (!result)
        {
LABEL_7:
          v11 = v0[12];
          v12 = v0[10];

          (*v27)(v11, v12);
          goto LABEL_8;
        }
      }

      else
      {
        result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_7;
        }
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1C6933590](0, v17);
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v18 = *(v17 + 32);
      }

      v19 = v0[12];
      v20 = v0[10];

      v0[3] = v18;
      swift_getKeyPath();
      v21 = swift_task_alloc();
      *(v21 + 16) = v18;
      *(v21 + 24) = 1;
      sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
      sub_1C4030A90();

      (*v27)(v19, v20);
LABEL_8:

      v10 += v26;
      v8 = v30 - 1;
    }

    while (v30 != 1);
  }

  if (sub_1C4030E40())
  {
    sub_1C4030E50();
  }

  v22 = v0[12];
  v23 = v0[9];
  v24 = v0[6];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1C3EF5E84@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F120, &unk_1C4038440);
  a1[4] = sub_1C3EF7C38();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1C4030870();
}

uint64_t sub_1C3EF5EF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a2;
  v33 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F0E0, &qword_1C4038408);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F0E8, &qword_1C4038410);
  v10 = *(v9 - 8);
  v34 = v9;
  v35 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F078, &qword_1C40383D0);
  v20 = *(v19 - 8);
  v31 = v19;
  v32 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v30 - v22;
  v24 = *a1;
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v15 + 8))(v18, v14);
  type metadata accessor for RecentCall();
  sub_1C4030870();
  swift_getKeyPath();
  sub_1C3EF7BF0(&qword_1EC08F0F0, &qword_1EC08F0E0, &qword_1C4038408);
  sub_1C40307A0();

  (*(v5 + 8))(v8, v4);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F0F8, &qword_1C4038438);
  v26 = v33;
  v33[3] = v25;
  v26[4] = sub_1C3EF7A00(&qword_1EC08F100, &qword_1EC08F0F8, &qword_1C4038438, sub_1C3EF7A84);
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_1C3EF7BF0(&qword_1EC08F0C0, &qword_1EC08F078, &qword_1C40383D0);
  sub_1C3EF7BF0(&qword_1EC08F118, &qword_1EC08F0E8, &qword_1C4038410);
  sub_1C3EF7D70(&qword_1EC08F0D0, MEMORY[0x1E69695A8]);
  v27 = v31;
  v28 = v34;
  sub_1C4030790();
  (*(v35 + 8))(v13, v28);
  return (*(v32 + 8))(v23, v27);
}

void sub_1C3EF63AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F038, &qword_1C4038248);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F040, &unk_1C4038250);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v40 = a2;
  v45[2] = a2;
  sub_1C3F1A3AC(v9);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F00();
  v17 = sub_1C4030E60();
  (*(v11 + 8))(v14, v10);
  if (v3)
  {
    return;
  }

  v42 = v16;
  v43 = a1;
  v18 = v41;
  v19 = v17 >> 62;
  if (!(v17 >> 62))
  {
    v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = 0;
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_19:
    v25 = v18;

    if (qword_1EC08EB78 != -1)
    {
      swift_once();
    }

    v26 = sub_1C4030D10();
    __swift_project_value_buffer(v26, qword_1EC0B0CE0);
    v27 = v40;
    sub_1C3EE61B4(v40);
    v28 = sub_1C4030CF0();
    v29 = sub_1C40315C0();
    sub_1C3EE6238(v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v40;
      v32 = v30;
      v33 = swift_slowAlloc();
      v44 = v31;
      v45[0] = v33;
      *v32 = 136315138;
      sub_1C3EE61B4(v31);
      v34 = CallPredicate.description.getter();
      v36 = v35;
      sub_1C3EE6238(v44);
      v37 = sub_1C3EEFC68(v34, v36, v45);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1C3E90000, v28, v29, "No matching calls found for %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1C6934650](v33, -1, -1);
      MEMORY[0x1C6934650](v32, -1, -1);
    }

    *v25 = 0;
    return;
  }

LABEL_18:
  v20 = sub_1C40317E0();
  v39 = 0;
  if (!v20)
  {
    goto LABEL_19;
  }

LABEL_4:
  v40 = v19;
  v21 = 0;
  v19 = v17 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6933590](v21, v17);
    }

    else
    {
      if (v21 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v22 = *(v17 + 8 * v21 + 32);
    }

    v23 = v21 + 1;
    v18 = v43;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    sub_1C4030E70();

    ++v21;
  }

  while (v23 != v20);
  if (v40)
  {
    v24 = sub_1C40317E0();
  }

  else
  {
    v24 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *v41 = v24;
}

void sub_1C3EF6810(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F038, &qword_1C4038248);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F040, &unk_1C4038250);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v33[2] = a2;
  sub_1C3F1A3AC(v7);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F00();
  v14 = sub_1C4030E60();
  (*(v9 + 8))(v12, v8);
  if (!v2)
  {
    if (v14 >> 62)
    {
      goto LABEL_15;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      while (1)
      {
        a2 = 0;
        v29 = v14 & 0xFFFFFFFFFFFFFF8;
        v30 = v14 & 0xC000000000000001;
        while (v30)
        {
          v16 = MEMORY[0x1C6933590](a2, v14);
          v17 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return;
          }

LABEL_8:
          v33[0] = v16;
          KeyPath = swift_getKeyPath();
          v31 = &v28;
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v28 - 2) = v16;
          *(&v28 - 8) = 1;
          sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
          sub_1C4030A90();

          ++a2;
          if (v17 == v15)
          {
            goto LABEL_13;
          }
        }

        if (a2 < *(v29 + 16))
        {
          break;
        }

        __break(1u);
LABEL_15:
        v15 = sub_1C40317E0();
        if (!v15)
        {
          goto LABEL_16;
        }
      }

      v16 = *(v14 + 8 * a2 + 32);

      v17 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_16:

    if (qword_1EC08EB78 != -1)
    {
      swift_once();
    }

    v19 = sub_1C4030D10();
    __swift_project_value_buffer(v19, qword_1EC0B0CE0);
    sub_1C3EE61B4(a2);
    v20 = sub_1C4030CF0();
    v21 = sub_1C40315C0();
    sub_1C3EE6238(a2);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = a2;
      v33[0] = v23;
      *v22 = 136315138;
      sub_1C3EE61B4(a2);
      v24 = CallPredicate.description.getter();
      v26 = v25;
      sub_1C3EE6238(v32);
      v27 = sub_1C3EEFC68(v24, v26, v33);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1C3E90000, v20, v21, "No matching calls found for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1C6934650](v23, -1, -1);
      MEMORY[0x1C6934650](v22, -1, -1);
    }
  }
}

uint64_t sub_1C3EF6CFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F068, &unk_1C40383C0);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F078, &qword_1C40383D0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  v20 = *a1;
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v11 + 8))(v14, v10);
  sub_1C40309F0();
  sub_1C4030870();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F088, &qword_1C4038400);
  a3[4] = sub_1C3EF7A00(&qword_1EC08F090, &qword_1EC08F088, &qword_1C4038400, sub_1C3EF7860);
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1C3EF7BF0(&qword_1EC08F0C0, &qword_1EC08F078, &qword_1C40383D0);
  sub_1C3EF7BF0(&qword_1EC08F0C8, &qword_1EC08F068, &unk_1C40383C0);
  sub_1C3EF7D70(&qword_1EC08F0D0, MEMORY[0x1E69695A8]);
  v21 = v24;
  sub_1C4030790();
  (*(v25 + 8))(v9, v21);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1C3EF70F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3EF71FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C3EF72D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3EF73FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C3EF74C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C3EF79AC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3EF761C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3EF7684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCall();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3EF76F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4011538();
}

uint64_t sub_1C3EF770C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4012A48();
}

uint64_t sub_1C3EF772C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4012B70();
}

uint64_t sub_1C3EF7754()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C40129BC();
}

unint64_t sub_1C3EF77B0()
{
  result = qword_1EC08F098;
  if (!qword_1EC08F098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F078, &qword_1C40383D0);
    sub_1C3EF7BF0(&qword_1EC08F0A0, &qword_1EC08F070, &unk_1C403C200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F098);
  }

  return result;
}

unint64_t sub_1C3EF7860()
{
  result = qword_1EC08F0A8;
  if (!qword_1EC08F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F068, &unk_1C40383C0);
    v1 = MEMORY[0x1E69695A8];
    sub_1C3EF7D70(&qword_1EC08F0B0, MEMORY[0x1E69695A8]);
    sub_1C3EF7D70(&qword_1EC08F0B8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F0A8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1C3EF79AC()
{
  result = qword_1EC08F0D8;
  if (!qword_1EC08F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F0D8);
  }

  return result;
}

uint64_t sub_1C3EF7A00(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1C3EF77B0();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3EF7A84()
{
  result = qword_1EC08F108;
  if (!qword_1EC08F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F0E8, &qword_1C4038410);
    sub_1C3EF7B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F108);
  }

  return result;
}

unint64_t sub_1C3EF7B08()
{
  result = qword_1EC08F110;
  if (!qword_1EC08F110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F0E0, &qword_1C4038408);
    sub_1C3EF7D70(&qword_1EC08ED78, type metadata accessor for RecentCall);
    sub_1C3EF7D70(&qword_1EC08ED90, type metadata accessor for RecentCall);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F110);
  }

  return result;
}

uint64_t sub_1C3EF7BF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C3EF7C38()
{
  result = qword_1EC08F128;
  if (!qword_1EC08F128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F120, &unk_1C4038440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F128);
  }

  return result;
}

uint64_t sub_1C3EF7CBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C3EE4204;

  return sub_1C3EF225C(a1, v4, v5, v6);
}

uint64_t sub_1C3EF7D70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3EF7DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F138, &qword_1C4038468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3EF7E84()
{
  type metadata accessor for CallHistoryDataSourceActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EC08F150 = v0;
  return result;
}

uint64_t static CallHistoryDataSourceActor.shared.getter()
{
  if (qword_1EC08EAB0 != -1)
  {
    swift_once();
  }
}

uint64_t CallHistoryDataSourceActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1C3EF7F88()
{
  result = qword_1EC08F158;
  if (!qword_1EC08F158)
  {
    type metadata accessor for CallHistoryDataSourceActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F158);
  }

  return result;
}

uint64_t sub_1C3EF8000()
{
  if (qword_1EC08EAB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C3EF805C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CallHistoryDataSourceActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t dispatch thunk of CallHistoryDataSourceProtocol.saveCalls(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C3EE7A84;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryDataSourceProtocol.getCalls(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))();
}

{
  return (*(a3 + 32))();
}

uint64_t dispatch thunk of CallHistoryDataSourceProtocol.updateCalls(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C3EE7A84;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryDataSourceProtocol.deleteCalls(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C3EEB800;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryDataSourceProtocol.markAsRead(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C3EE4204;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryModifying.markAsRead(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C3EE7A84;

  return v11(a1, a2, a3);
}

uint64_t sub_1C3EF8778()
{
  v2 = sub_1C4030FE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v58[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C4030FF0();
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1C4030910();
  v73 = *(v9 - 8);
  v10 = v73[8];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v58[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v58[-v17];
  v18 = type metadata accessor for ContainerProvider.State(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v68 = &v58[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v58[-v22];
  v24 = (v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state));
  v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F188, &qword_1C4038608) + 28);
  sub_1C3EFA68C(v24 + v67, v23);
  os_unfair_lock_unlock(v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v23;
  }

  sub_1C3EFA630(v23);
  result = sub_1C3EF9718();
  if (!v1)
  {
    v62 = v5;
    v26 = v9;
    v27 = v72;
    v29 = v73 + 2;
    v28 = v73[2];
    v66 = v26;
    v28(v72, v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider_databaseURL);
    if (qword_1EC08EB78 != -1)
    {
      swift_once();
    }

    v30 = sub_1C4030D10();
    __swift_project_value_buffer(v30, qword_1EC0B0CE0);
    v63 = v28;
    v64 = v29;
    (v28)(v16, v27, v66);
    v31 = sub_1C4030CF0();
    v32 = sub_1C40315D0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v60 = v33;
      v61 = swift_slowAlloc();
      v74 = v61;
      *v33 = 136315138;
      sub_1C3EFA6F0(&qword_1EC08F1E0, MEMORY[0x1E6968FB0]);
      v59 = v32;
      v34 = v66;
      v35 = sub_1C4031BB0();
      v37 = v36;
      v65 = v73[1];
      v65(v16, v34);
      v38 = sub_1C3EEFC68(v35, v37, &v74);
      v27 = v72;

      v39 = v60;
      *(v60 + 1) = v38;
      v40 = v39;
      _os_log_impl(&dword_1C3E90000, v31, v59, "Loading database at %s", v39, 0xCu);
      v41 = v61;
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1C6934650](v41, -1, -1);
      MEMORY[0x1C6934650](v40, -1, -1);
    }

    else
    {

      v34 = v66;
      v65 = v73[1];
      v65(v16, v66);
    }

    v63(v13, v27, v34);
    sub_1C4030FD0();
    v42 = v69;
    sub_1C4031000();
    v66 = sub_1C4030EF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1C40385C0;
    v44 = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
    v45 = sub_1C3EFA6F0(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
    v46 = type metadata accessor for CallHistorySchemaV39.ManagedHandle(0);
    v47 = sub_1C3EFA6F0(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
    *(v43 + 48) = v46;
    *(v43 + 56) = v47;
    v48 = type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem(0);
    v49 = sub_1C3EFA6F0(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
    *(v43 + 64) = v48;
    *(v43 + 72) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1D0, &unk_1C4038620);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1C40385D0;
    v51 = v71;
    *(v50 + 56) = v71;
    *(v50 + 64) = sub_1C3EFA6F0(&qword_1EC08F1D8, MEMORY[0x1E697BC88]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v50 + 32));
    v53 = v70;
    (*(v70 + 16))(boxed_opaque_existential_1, v42, v51);
    v54 = sub_1C4030EE0();
    v55 = v68;
    *v68 = v54;
    v56 = v54;
    swift_storeEnumTagMultiPayload();

    os_unfair_lock_lock(v24);
    v57 = v67;
    sub_1C3EFA630(v24 + v67);
    sub_1C3EFA68C(v55, v24 + v57);
    os_unfair_lock_unlock(v24);
    sub_1C3EFA630(v55);
    (*(v53 + 8))(v42, v71);
    v65(v72, v34);
    return v56;
  }

  return result;
}

uint64_t sub_1C3EF8F08(char *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v81 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v80 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v79 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70 - v13;
  v15 = sub_1C4030910();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v78 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v73 = &v70 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v74 = &v70 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v70 - v24;
  v26 = type metadata accessor for ContainerProvider.State(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = (v3 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state);
  v76 = v31;
  swift_storeEnumTagMultiPayload();
  *v30 = 0;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F188, &qword_1C4038608);
  v32 = *(v75 + 28);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F200, &qword_1C4038640);
  bzero(v30 + v32, *(*(v33 - 8) + 64));
  v77 = v29;
  sub_1C3EFA7E0(v29, v30 + v32);
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v34 = sub_1C4030D10();
  __swift_project_value_buffer(v34, qword_1EC0B0CE0);
  v35 = *(v16 + 16);
  v84 = a1;
  v85 = v35;
  v86 = v16 + 16;
  v35(v25, a1, v15);
  v83 = a2;
  sub_1C3EFA844(a2, v14);
  v36 = sub_1C4030CF0();
  v37 = sub_1C40315D0();
  v38 = os_log_type_enabled(v36, v37);
  v82 = v16;
  if (v38)
  {
    v71 = v37;
    v72 = v4;
    v39 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v87 = v70;
    *v39 = 136315394;
    sub_1C3EFA6F0(&qword_1EC08F1E0, MEMORY[0x1E6968FB0]);
    v40 = sub_1C4031BB0();
    v42 = v41;
    v43 = v25;
    v44 = *(v16 + 8);
    v44(v43, v15);
    v45 = sub_1C3EEFC68(v40, v42, &v87);

    *(v39 + 4) = v45;
    *(v39 + 12) = 2080;
    v46 = v79;
    sub_1C3EFA844(v14, v79);
    if ((*(v16 + 48))(v46, 1, v15) == 1)
    {
      sub_1C3EED388(v46, &qword_1EC08F130, &qword_1C4038450);
      v47 = 0xE300000000000000;
      v48 = 7104878;
    }

    else
    {
      v50 = v74;
      (*(v16 + 32))(v74, v46, v15);
      v85(v73, v50, v15);
      v48 = sub_1C4031230();
      v47 = v51;
      v44(v50, v15);
    }

    v4 = v72;
    sub_1C3EED388(v14, &qword_1EC08F130, &qword_1C4038450);
    v52 = sub_1C3EEFC68(v48, v47, &v87);

    *(v39 + 14) = v52;
    _os_log_impl(&dword_1C3E90000, v36, v71, "Initializing ContainerProvider with database URL %s and legacy database URL %s", v39, 0x16u);
    v53 = v70;
    swift_arrayDestroy();
    MEMORY[0x1C6934650](v53, -1, -1);
    MEMORY[0x1C6934650](v39, -1, -1);
  }

  else
  {

    sub_1C3EED388(v14, &qword_1EC08F130, &qword_1C4038450);
    v49 = v25;
    v44 = *(v16 + 8);
    v44(v49, v15);
  }

  v54 = v81;
  v55 = v84;
  v85((v4 + OBJC_IVAR____TtC11CallHistory17ContainerProvider_databaseURL), v84, v15);
  v56 = v83;
  if (v54)
  {
    v57 = v54;
  }

  else
  {
    v57 = [objc_opt_self() standardUserDefaults];
  }

  *(v4 + OBJC_IVAR____TtC11CallHistory17ContainerProvider_userDefaults) = v57;
  v58 = v54;
  v59 = sub_1C4031190();
  v60 = [v57 BOOLForKey_];

  if (v60)
  {

    sub_1C3EED388(v56, &qword_1EC08F130, &qword_1C4038450);
    v44(v55, v15);
  }

  else
  {
    v61 = v80;
    sub_1C3EFA844(v56, v80);
    v62 = v82;
    if ((*(v82 + 6))(v61, 1, v15) == 1)
    {

      sub_1C3EED388(v56, &qword_1EC08F130, &qword_1C4038450);
      v44(v55, v15);
      sub_1C3EED388(v61, &qword_1EC08F130, &qword_1C4038450);
    }

    else
    {
      v63 = v62[4];
      v82 = v44;
      v64 = v78;
      v63(v78, v61, v15);
      v65 = v77;
      v85(v77, v64, v15);
      swift_storeEnumTagMultiPayload();
      v66 = (v4 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state);
      os_unfair_lock_lock((v4 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state));
      v67 = *(v75 + 28);
      sub_1C3EFA630(v66 + v67);
      sub_1C3EFA68C(v65, v66 + v67);
      os_unfair_lock_unlock(v66);

      sub_1C3EED388(v56, &qword_1EC08F130, &qword_1C4038450);
      v68 = v82;
      v82(v55, v15);
      sub_1C3EFA630(v65);
      v68(v64, v15);
    }
  }

  return v4;
}

uint64_t sub_1C3EF9718()
{
  v2 = sub_1C4030FE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v96 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContainerProvider.State(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v83 - v10;
  v12 = sub_1C4030910();
  v13 = *(v12 - 8);
  v97 = v12;
  v98 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v83 - v18;
  v20 = *(v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider_userDefaults);
  v94 = "CallHistory.storedata";
  v21 = sub_1C4031190();
  v95 = v20;
  LOBYTE(v20) = [v20 BOOLForKey_];

  if (v20)
  {
    swift_storeEnumTagMultiPayload();
    v22 = (v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state);
    os_unfair_lock_lock(v22);
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F188, &qword_1C4038608) + 28);
    sub_1C3EFA630(v22 + v23);
    sub_1C3EFA68C(v9, v22 + v23);
    os_unfair_lock_unlock(v22);
    v24 = v9;
    return sub_1C3EFA630(v24);
  }

  v25 = (v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F188, &qword_1C4038608);
  sub_1C3EFA68C(v25 + *(v26 + 28), v11);
  os_unfair_lock_unlock(v25);
  if (swift_getEnumCaseMultiPayload())
  {
    v24 = v11;
    return sub_1C3EFA630(v24);
  }

  v28 = v97;
  (*(v98 + 32))(v19, v11, v97);
  v29 = OBJC_IVAR____TtC11CallHistory17ContainerProvider_databaseURL;
  sub_1C3F485A0();
  if (v1)
  {
    if (qword_1EC08EB78 != -1)
    {
      swift_once();
    }

    v69 = sub_1C4030D10();
    __swift_project_value_buffer(v69, qword_1EC0B0CE0);
    v70 = v1;
    v71 = sub_1C4030CF0();
    v72 = sub_1C40315D0();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      v75 = v1;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 4) = v76;
      *v74 = v76;
      _os_log_impl(&dword_1C3E90000, v71, v72, "Legacy migration task failed: %@", v73, 0xCu);
      sub_1C3EED388(v74, &qword_1EC08EED8, &qword_1C4037F08);
      MEMORY[0x1C6934650](v74, -1, -1);
      MEMORY[0x1C6934650](v73, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v30 = [objc_allocWithZone(type metadata accessor for MigrationEncryptionTransformer()) init];
    v31 = objc_opt_self();
    if (qword_1EC08EB60 != -1)
    {
      v82 = v31;
      swift_once();
      v31 = v82;
    }

    [v31 setValueTransformer:v30 forName:qword_1EC0B0CA8];

    v32 = sub_1C3F47594();
    v92 = v29;
    v93 = v0;
    v33 = v32;
    sub_1C3F47674();
    v35 = v34;

    if (qword_1EC08EB78 != -1)
    {
      swift_once();
    }

    v36 = sub_1C4030D10();
    v90 = __swift_project_value_buffer(v36, qword_1EC0B0CE0);
    v37 = sub_1C4030CF0();
    v38 = sub_1C40315D0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v91 = v35;
      v40 = v39;
      v89 = swift_slowAlloc();
      v99 = v89;
      *v40 = 136315138;
      v41 = sub_1C4031D50();
      v43 = sub_1C3EEFC68(v41, v42, &v99);

      *(v40 + 4) = v43;
      _os_log_impl(&dword_1C3E90000, v37, v38, "Got schema version %s", v40, 0xCu);
      v44 = v89;
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x1C6934650](v44, -1, -1);
      v45 = v40;
      v35 = v91;
      MEMORY[0x1C6934650](v45, -1, -1);
    }

    v46 = sub_1C40310F0();
    v47 = *(v35 + 8);
    v87 = v46;
    v91 = sub_1C4031010();

    v48 = v93;

    v49 = v48;
    v50 = sub_1C4030CF0();
    v51 = sub_1C40315D0();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v99 = v89;
      *v52 = 136315138;
      sub_1C3EFA6F0(&qword_1EC08F1E0, MEMORY[0x1E6968FB0]);
      LODWORD(v88) = v51;
      v53 = v97;
      v54 = sub_1C4031BB0();
      v49 = v93;
      v56 = sub_1C3EEFC68(v54, v55, &v99);

      *(v52 + 4) = v56;
      v57 = v53;
      _os_log_impl(&dword_1C3E90000, v50, v88, "Loading container at %s", v52, 0xCu);
      v58 = v89;
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x1C6934650](v58, -1, -1);
      MEMORY[0x1C6934650](v52, -1, -1);
    }

    else
    {

      v57 = v97;
    }

    v89 = sub_1C4030EF0();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1E8, &unk_1C4038630);
    v60 = *(sub_1C4030FF0() - 8);
    v61 = *(v60 + 80);
    v86 = *(v60 + 72);
    v88 = v59;
    v62 = swift_allocObject();
    v84 = xmmword_1C40385D0;
    *(v62 + 16) = xmmword_1C40385D0;
    v63 = v98 + 16;
    v85 = *(v98 + 16);
    v85(v17, v49 + v92, v57);
    sub_1C4030FD0();
    sub_1C4031000();
    v64 = sub_1C4030ED0();
    v83[2] = v63;
    v83[3] = v61;
    v65 = sub_1C4030EA0();
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();

    v68 = sub_1C4030EB0();
    sub_1C4030E50();
    v83[0] = v68;
    v83[1] = v64;
    v77 = sub_1C4030CF0();
    v78 = sub_1C40315D0();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v99 = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_1C3EEFC68(0xD000000000000014, 0x80000001C4056C00, &v99);
      _os_log_impl(&dword_1C3E90000, v77, v78, "Performing migration to schema version %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1C6934650](v80, -1, -1);
      MEMORY[0x1C6934650](v79, -1, -1);
    }

    sub_1C3EFA738();
    sub_1C4031010();

    sub_1C3EFA78C();
    *(swift_allocObject() + 16) = v84;
    v28 = v97;
    v85(v17, v93 + v92, v97);

    sub_1C4030FD0();
    sub_1C4031000();
    sub_1C4030ED0();

    v81 = sub_1C4031190();
    [v95 setBool:1 forKey:v81];
  }

  return (*(v98 + 8))(v19, v28);
}

uint64_t sub_1C3EFA220()
{
  v1 = OBJC_IVAR____TtC11CallHistory17ContainerProvider_databaseURL;
  v2 = sub_1C4030910();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F188, &qword_1C4038608);
  sub_1C3EFA630(v3 + *(v4 + 28));

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

void sub_1C3EFA320()
{
  v0 = sub_1C4030910();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C3EFA3F8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C3EFA3F8()
{
  if (!qword_1EC08F180)
  {
    type metadata accessor for ContainerProvider.State(255);
    v0 = sub_1C4030AE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC08F180);
    }
  }
}

void sub_1C3EFA4C0()
{
  sub_1C3EFA580(319, &qword_1EC08F1A0, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1C3EFA580(319, &qword_1EC08F1A8, MEMORY[0x1E697BBC0]);
    if (v1 <= 0x3F)
    {
      sub_1C3EFA5CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1C3EFA580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C3EFA5CC()
{
  result = qword_1EC08F1B0;
  if (!qword_1EC08F1B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC08F1B0);
  }

  return result;
}

uint64_t sub_1C3EFA630(uint64_t a1)
{
  v2 = type metadata accessor for ContainerProvider.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3EFA68C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerProvider.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3EFA6F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C3EFA738()
{
  result = qword_1EC08F1F0;
  if (!qword_1EC08F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F1F0);
  }

  return result;
}

unint64_t sub_1C3EFA78C()
{
  result = qword_1EC08F1F8;
  if (!qword_1EC08F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F1F8);
  }

  return result;
}

uint64_t sub_1C3EFA7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerProvider.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3EFA844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3EFA8B4(uint64_t a1)
{
  v3 = type metadata accessor for RecentCall();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v22 = v1;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1C4031950();
    v8 = -1 << *(a1 + 32);
    v26 = a1 + 56;
    result = sub_1C4031770();
    v9 = result;
    v10 = 0;
    v27 = *(a1 + 36);
    v23 = a1 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v26 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_21;
      }

      if (v27 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v13 = v24;
      sub_1C3F035F4(*(a1 + 48) + *(v25 + 72) * v9, v24, type metadata accessor for RecentCall);
      RecentCall.chRecentCall.getter();
      sub_1C3F03460(v13, type metadata accessor for RecentCall);
      sub_1C4031920();
      v14 = *(v28 + 16);
      sub_1C4031960();
      sub_1C4031970();
      result = sub_1C4031930();
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v15 = *(v26 + 8 * v12);
      if ((v15 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      if (v27 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v16 = v15 & (-2 << (v9 & 0x3F));
      if (v16)
      {
        v11 = __clz(__rbit64(v16)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v12 << 6;
        v18 = v12 + 1;
        v19 = (v23 + 8 * v12);
        while (v18 < (v11 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_1C3E97CDC(v9, v27, 0);
            v11 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = sub_1C3E97CDC(v9, v27, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v6)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3EFAB80(uint64_t a1)
{
  v3 = type metadata accessor for RecentCall();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C40309F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v33 = v1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1C3EF02C0(0, v11, 0);
  v12 = v45;
  v13 = a1 + 56;
  v14 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v16 = v7;
  v17 = result;
  v18 = 0;
  v39 = (v16 + 16);
  v40 = v16;
  v37 = a1;
  v38 = v16 + 32;
  v34 = a1 + 64;
  v35 = v11;
  v36 = a1 + 56;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 36);
    v43 = v18;
    v44 = v21;
    v22 = v41;
    sub_1C3F035F4(*(a1 + 48) + *(v42 + 72) * v17, v41, type metadata accessor for RecentCall);
    (*v39)(v10, v22, v6);
    sub_1C3F03460(v22, type metadata accessor for RecentCall);
    v45 = v12;
    v23 = v6;
    v25 = *(v12 + 16);
    v24 = *(v12 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1C3EF02C0(v24 > 1, v25 + 1, 1);
      v12 = v45;
    }

    *(v12 + 16) = v25 + 1;
    result = (*(v40 + 32))(v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25, v10, v23);
    v19 = 1 << *(v37 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v13 = v36;
    v26 = *(v36 + 8 * v20);
    if ((v26 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v23;
    a1 = v37;
    if (v44 != *(v37 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v17 & 0x3F));
    if (v27)
    {
      v19 = __clz(__rbit64(v27)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v20 << 6;
      v29 = v20 + 1;
      v30 = (v34 + 8 * v20);
      while (v29 < (v19 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1C3E97CDC(v17, v44, 0);
          v19 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_1C3E97CDC(v17, v44, 0);
    }

LABEL_4:
    v18 = v43 + 1;
    v17 = v19;
    if (v43 + 1 == v35)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t CHManager.saveCalls(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F208, &qword_1C4038678);
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3EFB014, 0, 0);
}

uint64_t sub_1C3EFB014()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v1[19];
  sub_1C3EFA8B4(v1[18]);
  sub_1C3F03800(0, &qword_1EC08F210, off_1E81DB518);
  v8 = sub_1C40313E0();
  v1[23] = v8;

  v1[2] = v1;
  v1[3] = sub_1C3EFB1F8;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_1C4031460();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C3EFB344;
  v1[13] = &block_descriptor;
  [v7 addArrayToCallHistory:v8 withCompletion:v3];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1C3EFB1F8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C3EFB2D8, 0, 0);
}

uint64_t sub_1C3EFB2D8()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C3EFB344(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F208, &qword_1C4038678);
  return sub_1C4031480();
}

void *CHManager.getCalls(with:coalescingStrategy:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v39 - v6;
  v8 = sub_1C40309F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - v13;
  v14 = type metadata accessor for RecentCall();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v43 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v39 - v18;
  v53 = *(a1 + *(type metadata accessor for CallFetchRequest() + 20));
  v19 = sub_1C3F1AFD8();
  v20 = [v2 callsWithPredicate:v19 limit:0x7FFFFFFFFFFFFFFFLL offset:0 batchSize:0x7FFFFFFFFFFFFFFFLL];

  sub_1C3F03800(0, &qword_1EC08F210, off_1E81DB518);
  v21 = sub_1C40313F0();

  if (v21 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C40317E0())
  {
    v23 = 0;
    v49 = v21 & 0xFFFFFFFFFFFFFF8;
    v50 = v21 & 0xC000000000000001;
    v47 = (v9 + 48);
    v41 = (v9 + 16);
    v42 = (v9 + 32);
    v40 = (v9 + 8);
    v52 = MEMORY[0x1E69E7CC0];
    v48 = i;
    while (1)
    {
      if (v50)
      {
        v25 = MEMORY[0x1C6933590](v23, v21);
      }

      else
      {
        if (v23 >= *(v49 + 16))
        {
          goto LABEL_18;
        }

        v25 = *(v21 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v9 = v21;
      v28 = v7;
      v29 = v8;
      v30 = [v25 uniqueId];
      sub_1C40311C0();

      v8 = v29;
      v7 = v28;
      sub_1C4030990();

      if ((*v47)(v28, 1, v8) == 1)
      {

        sub_1C3EED388(v28, &qword_1EC08F218, &qword_1C4041840);
        v24 = v48;
      }

      else
      {
        v31 = v45;
        (*v42)(v45, v28, v8);
        v32 = v46;
        (*v41)(v46, v31, v8);
        v33 = v43;
        RecentCall.init(_:uniqueID:)(v26, v32, v43);
        (*v40)(v31, v8);
        sub_1C3F034C0(v33, v51, type metadata accessor for RecentCall);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1C3F00038(0, v52[2] + 1, 1, v52, &qword_1EC08EC00, &qword_1C4036A48, type metadata accessor for RecentCall);
        }

        v21 = v9;
        v35 = v52[2];
        v34 = v52[3];
        v24 = v48;
        if (v35 >= v34 >> 1)
        {
          v52 = sub_1C3F00038(v34 > 1, v35 + 1, 1, v52, &qword_1EC08EC00, &qword_1C4036A48, type metadata accessor for RecentCall);
        }

        v36 = v51;
        v37 = v52;
        v52[2] = v35 + 1;
        sub_1C3F034C0(v36, v37 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v35, type metadata accessor for RecentCall);
      }

      ++v23;
      if (v27 == v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_21:

  return v52;
}

uint64_t CHManager.getCallsStream(fetchRequest:pageSize:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F220, &qword_1C4038680);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  v12 = a1;
  v13 = a2;
  v14 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE28, &qword_1C403D780);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v5);
  return sub_1C40314E0();
}

uint64_t sub_1C3EFBA34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = a3;
  v28 = a4;
  v6 = type metadata accessor for CallFetchRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - v17;
  v19 = sub_1C40314B0();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a1, v10);
  sub_1C3F035F4(a2, v9, type metadata accessor for CallFetchRequest);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = (v12 + *(v7 + 80) + v20) & ~*(v7 + 80);
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v11 + 32))(v23 + v20, v14, v10);
  sub_1C3F034C0(v9, v23 + v21, type metadata accessor for CallFetchRequest);
  v24 = v28;
  *(v23 + v22) = v27;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v25 = v24;
  sub_1C3EEDDDC(0, 0, v18, &unk_1C4038738, v23);
}

uint64_t sub_1C3EFBD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A0, &qword_1C403D880);
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840) - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v12 = sub_1C40309F0();
  v7[12] = v12;
  v13 = *(v12 - 8);
  v7[13] = v13;
  v14 = *(v13 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v15 = *(type metadata accessor for RecentCall() - 8);
  v7[16] = v15;
  v16 = *(v15 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3EFBEE0, 0, 0);
}

void sub_1C3EFBEE0()
{
  v59 = v0[16];
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4038660;
  v67 = *(v3 + *(type metadata accessor for CallFetchRequest() + 20));
  *(v4 + 32) = sub_1C3F1AFD8();
  sub_1C3F03800(0, &qword_1EC08F2B0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2B8, &qword_1C4038740);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C40385D0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1C3F03848();
  *(v5 + 32) = 0x695F657571696E75;
  *(v5 + 40) = 0xE900000000000064;
  *(v4 + 40) = sub_1C40315A0();
  v6 = sub_1C40313E0();

  v54 = [objc_opt_self() andPredicateWithSubpredicates_];

  v7 = 0;
  v61 = (v1 + 48);
  v57 = (v1 + 16);
  v58 = (v1 + 32);
  v8 = (v1 + 8);
  v9 = v0;
  v56 = v8;
  v53 = (v2 + 8);
  v60 = v0;
  while (1)
  {
    if ((v7 * v9[6]) >> 64 != (v7 * v9[6]) >> 63)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v10 = v9[6];
    v11 = [v9[7] callsWithPredicate:v54 limit:? offset:? batchSize:?];
    sub_1C3F03800(0, &qword_1EC08F210, off_1E81DB518);
    v12 = sub_1C40313F0();

    if (v12 >> 62)
    {
      v13 = sub_1C40317E0();
      if (!v13)
      {
LABEL_28:

        v37 = 0;
        v15 = MEMORY[0x1E69E7CC0];
        goto LABEL_29;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_28;
      }
    }

    v55 = v7;
    v14 = 0;
    v65 = v12 & 0xC000000000000001;
    v66 = 0;
    v64 = v12 & 0xFFFFFFFFFFFFFF8;
    v15 = MEMORY[0x1E69E7CC0];
    v62 = v13;
    v63 = v12;
    do
    {
      if (v65)
      {
        v17 = MEMORY[0x1C6933590](v14, v12);
      }

      else
      {
        if (v14 >= *(v64 + 16))
        {
          goto LABEL_38;
        }

        v17 = *(v12 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v20 = v9[11];
      v21 = v9[12];
      v22 = [v17 uniqueId];
      sub_1C40311C0();
      v23 = v9;

      sub_1C4030990();

      if ((*v61)(v20, 1, v21) == 1)
      {
        v24 = v9[11];

        sub_1C3EED388(v24, &qword_1EC08F218, &qword_1C4041840);
        if (__OFADD__(v66, 1))
        {
          goto LABEL_39;
        }

        ++v66;
        v25 = v62;
        v12 = v63;
      }

      else
      {
        v27 = v9[17];
        v26 = v9[18];
        v29 = v9[14];
        v28 = v9[15];
        v30 = v23[12];
        (*v58)(v23[15], v23[11], v30);
        (*v57)(v29, v28, v30);
        RecentCall.init(_:uniqueID:)(v18, v29, v27);
        (*v56)(v28, v30);
        sub_1C3F034C0(v27, v26, type metadata accessor for RecentCall);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1C3F00038(0, v15[2] + 1, 1, v15, &qword_1EC08EC00, &qword_1C4036A48, type metadata accessor for RecentCall);
        }

        v25 = v62;
        v12 = v63;
        v32 = v15[2];
        v31 = v15[3];
        v9 = v60;
        if (v32 >= v31 >> 1)
        {
          v15 = sub_1C3F00038(v31 > 1, v32 + 1, 1, v15, &qword_1EC08EC00, &qword_1C4036A48, type metadata accessor for RecentCall);
        }

        v16 = v60[18];
        v15[2] = v32 + 1;
        sub_1C3F034C0(v16, v15 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v32, type metadata accessor for RecentCall);
      }

      ++v14;
    }

    while (v19 != v25);

    v7 = v55;
    if (v66 > 0)
    {
      if (qword_1EC08EB80 != -1)
      {
        swift_once();
      }

      v33 = sub_1C4030D10();
      __swift_project_value_buffer(v33, qword_1EC0B0CF8);
      v34 = sub_1C4030CF0();
      v35 = sub_1C40315D0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        v37 = v66;
        *(v36 + 4) = v66;
        _os_log_impl(&dword_1C3E90000, v34, v35, "Found %ld calls with invalid uniqueID, skipping them.", v36, 0xCu);
        MEMORY[0x1C6934650](v36, -1, -1);

        goto LABEL_29;
      }
    }

    v37 = v66;
LABEL_29:
    v38 = v9[10];
    v39 = v9[8];
    v40 = v9;
    v41 = v9[6];
    v42 = v40[4];
    v40[2] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860);
    sub_1C40314C0();
    (*v53)(v38, v39);
    v43 = v15[2];

    if (__OFSUB__(v41, v37))
    {
      goto LABEL_41;
    }

    if (v43 != v41 - v37)
    {
      break;
    }

    v44 = __OFADD__(v7++, 1);
    v9 = v60;
    if (v44)
    {
      goto LABEL_42;
    }
  }

  v46 = v60[17];
  v45 = v60[18];
  v48 = v60[14];
  v47 = v60[15];
  v50 = v60[10];
  v49 = v60[11];
  v51 = v60[4];

  v60[3] = 0;
  sub_1C40314D0();

  v52 = v60[1];

  v52();
}

id CHManager.getCallCount(with:)(uint64_t a1)
{
  v2 = v1;
  v6 = *(a1 + *(type metadata accessor for CallFetchRequest() + 20));
  v3 = sub_1C3F1AFD8();
  v4 = [v2 callCountWithPredicate_];

  return v4;
}

uint64_t CHManager.updateCalls(with:)(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F228, &qword_1C4038690);
  v2[38] = v3;
  v4 = *(v3 - 8);
  v2[39] = v4;
  v5 = *(v4 + 64) + 15;
  v2[40] = swift_task_alloc();
  v6 = sub_1C40309F0();
  v2[41] = v6;
  v7 = *(v6 - 8);
  v2[42] = v7;
  v8 = *(v7 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v9 = type metadata accessor for RecentCall();
  v2[46] = v9;
  v10 = *(v9 - 8);
  v2[47] = v10;
  v11 = *(v10 + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v12 = type metadata accessor for CallFetchRequest();
  v2[54] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3EFC890, 0, 0);
}

uint64_t sub_1C3EFC890()
{
  v237 = v0;
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[36];
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1C3EFAB80(v3);
  sub_1C40309E0();
  *(v1 + *(v2 + 20)) = v4;
  v5 = [objc_allocWithZone(MEMORY[0x1E698E740]) init];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = sub_1C40311C0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = v228[55];
  v11 = v228[56];
  v12 = v228[37];
  v13 = (v10 + *(v228[54] + 24));
  *v13 = v7;
  v13[1] = v9;
  sub_1C3F034C0(v10, v11, type metadata accessor for CallFetchRequest);
  v14 = CHManager.getCalls(with:coalescingStrategy:)(v11);
  v222 = v228[47];
  v15 = v228[42];
  v16 = v228[36];
  v17 = v16 + 56;
  v18 = -1;
  v19 = -1 << *(v16 + 32);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v20 = v18 & *(v16 + 56);
  v21 = (63 - v19) >> 6;
  v218 = (v15 + 16);
  v219 = v14;
  v214 = v228[42];
  v215 = (v15 + 8);

  v23 = 0;
  v24 = MEMORY[0x1E69E7CC8];
  v229 = v16 + 56;
  v225 = v21;
  v223 = v16;
  while (1)
  {
    v227 = v24;
    if (!v20)
    {
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
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
          return MEMORY[0x1EEE6DEC8](v22);
        }

        if (v25 >= v21)
        {
          break;
        }

        v20 = *(v17 + 8 * v25);
        ++v23;
        if (v20)
        {
          goto LABEL_14;
        }
      }

      v48 = v228;
      v49 = v228[36];

      v22 = v219;
      v217 = v219[2];
      if (v217)
      {
        v50 = 0;
        v51 = 0;
        v220 = v228[46];
        v216 = v219 + ((*(v228[47] + 80) + 32) & ~*(v228[47] + 80));
        v211 = v228[42];
        v213 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          if (v51 >= *(v22 + 16))
          {
            goto LABEL_130;
          }

          v60 = *(v222 + 72);
          v226 = v51;
          sub_1C3F035F4(&v216[v60 * v51], v48[51], type metadata accessor for RecentCall);
          v230 = v50;
          if (!v24[2] || (v61 = sub_1C3F3C7F8(v48[51]), (v62 & 1) == 0))
          {
            if (qword_1EC08EB80 != -1)
            {
              swift_once();
            }

            v77 = v48[51];
            v78 = v48[48];
            v79 = sub_1C4030D10();
            __swift_project_value_buffer(v79, qword_1EC0B0CF8);
            sub_1C3F035F4(v77, v78, type metadata accessor for RecentCall);
            v80 = sub_1C4030CF0();
            v81 = sub_1C40315D0();
            v82 = os_log_type_enabled(v80, v81);
            v83 = v48[51];
            v84 = v48[48];
            if (v82)
            {
              v52 = v48[41];
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v236[0] = v54;
              *v53 = 136446210;
              sub_1C3F035B0(&qword_1EC08F230);
              v55 = sub_1C4031BB0();
              v57 = v56;
              sub_1C3F03460(v84, type metadata accessor for RecentCall);
              v58 = sub_1C3EEFC68(v55, v57, v236);
              v48 = v228;

              *(v53 + 4) = v58;
              _os_log_impl(&dword_1C3E90000, v80, v81, "Failed to find call update for uniqueID %{public}s", v53, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v54);
              MEMORY[0x1C6934650](v54, -1, -1);
              MEMORY[0x1C6934650](v53, -1, -1);
            }

            else
            {

              sub_1C3F03460(v84, type metadata accessor for RecentCall);
            }

            v59 = v83;
            goto LABEL_27;
          }

          v64 = v48[50];
          v63 = v48[51];
          v65 = v48[49];
          sub_1C3F035F4(v24[7] + v61 * v60, v65, type metadata accessor for RecentCall);
          sub_1C3F034C0(v65, v64, type metadata accessor for RecentCall);
          v66 = v220[24];
          v67 = *(v64 + v66);
          if (*(v63 + v66) != v67)
          {
            break;
          }

LABEL_50:
          v94 = v48[50];
          v95 = v48[51];
          sub_1C40309A0();
          v96 = v220[9];
          v97 = *(v94 + v96);
          if (v97 != *(v95 + v96))
          {
            v98 = v48[37];
            v99 = sub_1C4031190();
            v100 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
            [v98 updateBytesOfDataUsedFor:v99 with:v100];
          }

          v102 = v48[50];
          v101 = v48[51];
          v103 = v220[18];
          v104 = *(v102 + v103);
          if (v104 != *(v101 + v103))
          {
            v105 = v48[37];
            v106 = sub_1C4031190();
            v107 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
            [v105 updateMessageStatusFor:v106 with:v107];

            v102 = v48[50];
            v101 = v48[51];
          }

          v108 = v220[28];
          if (*(v102 + v108) == *(v101 + v108))
          {
          }

          else
          {
            v212 = sub_1C4031190();

            v109 = *(v102 + v108);
            if (qword_1EC08EB00 != -1)
            {
              swift_once();
            }

            v110 = *(qword_1EC0B0C50 + 16);
            if (v110)
            {
              v210 = v109;
              v236[0] = MEMORY[0x1E69E7CC0];
              v221 = v110;
              v224 = qword_1EC0B0C50;
              sub_1C3EF0290(0, v110, 0);
              v111 = v236[0];
              v112 = v224 + 64;
              v113 = -1 << *(v224 + 32);
              v22 = sub_1C4031770();
              v114 = v221;
              v115 = v224;
              v116 = v22;
              v117 = 0;
              while ((v116 & 0x8000000000000000) == 0 && v116 < 1 << *(v115 + 32))
              {
                v119 = v116 >> 6;
                if ((*(v112 + 8 * (v116 >> 6)) & (1 << v116)) == 0)
                {
                  goto LABEL_125;
                }

                v120 = *(*(v115 + 48) + 8 * v116);
                v121 = *(*(v115 + 56) + v116);
                v122 = *(v115 + 36);
                v236[0] = v111;
                v124 = *(v111 + 16);
                v123 = *(v111 + 24);
                if (v124 >= v123 >> 1)
                {
                  v134 = v122;
                  v22 = sub_1C3EF0290((v123 > 1), v124 + 1, 1);
                  v122 = v134;
                  v114 = v221;
                  v115 = v224;
                  v111 = v236[0];
                }

                *(v111 + 16) = v124 + 1;
                v125 = v111;
                v126 = v111 + 16 * v124;
                *(v126 + 32) = v121;
                *(v126 + 40) = v120;
                v118 = 1 << *(v115 + 32);
                if (v116 >= v118)
                {
                  goto LABEL_126;
                }

                v112 = v224 + 64;
                v127 = *(v224 + 64 + 8 * v119);
                if ((v127 & (1 << v116)) == 0)
                {
                  goto LABEL_127;
                }

                if (v122 != *(v115 + 36))
                {
                  goto LABEL_128;
                }

                v128 = v127 & (-2 << (v116 & 0x3F));
                if (v128)
                {
                  v118 = __clz(__rbit64(v128)) | v116 & 0x7FFFFFFFFFFFFFC0;
                }

                else
                {
                  v129 = v119 << 6;
                  v130 = (v224 + 72 + 8 * v119);
                  v131 = v119 + 1;
                  while (v131 < (v118 + 63) >> 6)
                  {
                    v133 = *v130++;
                    v132 = v133;
                    v129 += 64;
                    ++v131;
                    if (v133)
                    {
                      v22 = sub_1C3E97CDC(v116, v122, 0);
                      v114 = v221;
                      v115 = v224;
                      v118 = __clz(__rbit64(v132)) + v129;
                      goto LABEL_60;
                    }
                  }

                  v22 = sub_1C3E97CDC(v116, v122, 0);
                  v114 = v221;
                  v115 = v224;
                }

LABEL_60:
                ++v117;
                v116 = v118;
                v111 = v125;
                if (v117 == v114)
                {
                  v48 = v228;
                  v109 = v210;
                  goto LABEL_78;
                }
              }

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

            v111 = MEMORY[0x1E69E7CC0];
LABEL_78:
            if (*(v111 + 16))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F238, &unk_1C4038DE0);
              v135 = sub_1C4031A10();
            }

            else
            {
              v135 = MEMORY[0x1E69E7CC8];
            }

            v236[0] = v135;
            sub_1C3F02D14(v111, 1, v236);
            v136 = v236[0];
            if (*(v236[0] + 16) && (v137 = sub_1C3F3C788(v109), (v138 & 1) != 0))
            {
              v139 = *(*(v136 + 56) + 8 * v137);
            }

            else
            {
              v139 = 0;
            }

            v140 = v48[37];

            [v140 updateAutoAnsweredReasonFor:v212 with:v139];
          }

          v141 = v48[51];
          sub_1C3F03460(v48[50], type metadata accessor for RecentCall);
          v59 = v141;
LABEL_27:
          sub_1C3F03460(v59, type metadata accessor for RecentCall);
          v24 = v227;
          v51 = v226 + 1;
          v22 = v219;
          v50 = v230;
          if (v226 + 1 == v217)
          {

            v142 = v213;
            goto LABEL_91;
          }
        }

        (*v218)(v48[44], v48[50], v48[41]);
        sub_1C3F029C4(v230);
        v68 = v213;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v236[0] = v213;
        v71 = sub_1C3F3C78C(v67);
        v72 = *(v213 + 16);
        v73 = (v70 & 1) == 0;
        v22 = v72 + v73;
        if (__OFADD__(v72, v73))
        {
          goto LABEL_132;
        }

        v74 = v70;
        if (*(v213 + 24) < v22)
        {
          sub_1C3F00FBC(v22, isUniquelyReferenced_nonNull_native);
          v75 = v236[0];
          v22 = sub_1C3F3C78C(v67);
          if ((v74 & 1) != (v76 & 1))
          {
            goto LABEL_121;
          }

          v71 = v22;
          v68 = v75;
          if (v74)
          {
            goto LABEL_45;
          }

LABEL_43:
          v68[(v71 >> 6) + 8] |= 1 << v71;
          *(v68[6] + v71) = v67;
          *(v68[7] + 8 * v71) = MEMORY[0x1E69E7CC0];
          v85 = v68[2];
          v36 = __OFADD__(v85, 1);
          v86 = v85 + 1;
          if (v36)
          {
            goto LABEL_134;
          }

          v68[2] = v86;
          goto LABEL_45;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v70 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v22 = sub_1C3F024D8();
          v68 = v236[0];
          if ((v74 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

LABEL_45:
        v213 = v68;
        v87 = v68[7];
        v88 = *(v87 + 8 * v71);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        *(v87 + 8 * v71) = v88;
        if ((v89 & 1) == 0)
        {
          v88 = sub_1C3F00038(0, v88[2] + 1, 1, v88, &qword_1EC08EF68, &unk_1C4038150, MEMORY[0x1E69695A8]);
          *(v87 + 8 * v71) = v88;
        }

        v91 = v88[2];
        v90 = v88[3];
        if (v91 >= v90 >> 1)
        {
          v88 = sub_1C3F00038(v90 > 1, v91 + 1, 1, v88, &qword_1EC08EF68, &unk_1C4038150, MEMORY[0x1E69695A8]);
          *(v87 + 8 * v71) = v88;
        }

        v92 = v48[44];
        v93 = v48[41];
        v88[2] = v91 + 1;
        (*(v211 + 32))(v88 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v214 + 72) * v91, v92, v93);
        v230 = sub_1C3EFE5E4;
        goto LABEL_50;
      }

      v50 = 0;
      v142 = MEMORY[0x1E69E7CC8];
LABEL_91:

      v48[57] = v50;
      v48[58] = v142;
      if (*(v142 + 16))
      {
        v143 = sub_1C3F3C78C(1);
        if (v144)
        {
          v145 = *(*(v142 + 56) + 8 * v143);
          v146 = *(v145 + 16);
          v147 = MEMORY[0x1E69E7CC0];
          if (v146)
          {
            v148 = v228[42];
            v236[0] = MEMORY[0x1E69E7CC0];

            sub_1C3EF0270(0, v146, 0);
            v147 = v236[0];
            v149 = v145 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
            v150 = *(v214 + 72);
            v151 = *(v214 + 16);
            do
            {
              v152 = v228[43];
              v153 = v228[41];
              v151(v152, v149, v153);
              v154 = sub_1C40309A0();
              v156 = v155;
              (*v215)(v152, v153);
              v236[0] = v147;
              v158 = *(v147 + 16);
              v157 = *(v147 + 24);
              if (v158 >= v157 >> 1)
              {
                sub_1C3EF0270((v157 > 1), v158 + 1, 1);
                v147 = v236[0];
              }

              *(v147 + 16) = v158 + 1;
              v159 = v147 + 16 * v158;
              *(v159 + 32) = v154;
              *(v159 + 40) = v156;
              v149 += v150;
              --v146;
            }

            while (v146);
          }

          if (*(v147 + 16))
          {
            v160 = v228 + 10;
            v161 = v228[39];
            v162 = v228[40];
            v163 = v228[38];
            v233 = v228[37];
            v164 = objc_opt_self();
            v165 = sub_1C40313E0();

            v166 = [v164 predicateForCallsWithAnyUniqueIDs_];
            v228[59] = v166;

            v228[10] = v228;
            v228[15] = v228 + 35;
            v228[11] = sub_1C3EFDEA0;
            swift_continuation_init();
            v228[33] = v163;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v228 + 30);
            sub_1C4031460();
            (*(v161 + 32))(boxed_opaque_existential_1, v162, v163);
            v228[26] = MEMORY[0x1E69E9820];
            v228[27] = 1107296256;
            v228[28] = sub_1C3EFE5F4;
            v228[29] = &block_descriptor_7;
            [v233 setRead:1 forCallsWithPredicate:v166 completion:v228 + 26];
            (*(v161 + 8))(boxed_opaque_existential_1, v163);
LABEL_117:
            v22 = v160;

            return MEMORY[0x1EEE6DEC8](v22);
          }

          v48 = v228;
        }

        if (*(v48[58] + 16))
        {
          v168 = sub_1C3F3C78C(0);
          if (v169)
          {
            v170 = *(*(v48[58] + 56) + 8 * v168);
            v171 = *(v170 + 16);
            v172 = MEMORY[0x1E69E7CC0];
            if (v171)
            {
              v173 = v228[42];
              v236[0] = MEMORY[0x1E69E7CC0];

              sub_1C3EF0270(0, v171, 0);
              v172 = v236[0];
              v174 = v170 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
              v175 = *(v173 + 72);
              v176 = *(v173 + 16);
              do
              {
                v178 = v228[42];
                v177 = v228[43];
                v179 = v228[41];
                v176(v177, v174, v179);
                v180 = sub_1C40309A0();
                v182 = v181;
                (*(v178 + 8))(v177, v179);
                v236[0] = v172;
                v184 = *(v172 + 16);
                v183 = *(v172 + 24);
                if (v184 >= v183 >> 1)
                {
                  sub_1C3EF0270((v183 > 1), v184 + 1, 1);
                  v172 = v236[0];
                }

                *(v172 + 16) = v184 + 1;
                v185 = v172 + 16 * v184;
                *(v185 + 32) = v180;
                *(v185 + 40) = v182;
                v174 += v175;
                --v171;
              }

              while (v171);
            }

            v48 = v228;
            if (*(v172 + 16))
            {
              v160 = v228 + 2;
              v201 = v228[39];
              v202 = v228[40];
              v203 = v228[38];
              v235 = v228[37];
              v204 = objc_opt_self();
              v205 = sub_1C40313E0();

              v206 = [v204 predicateForCallsWithAnyUniqueIDs_];
              v228[60] = v206;

              v228[2] = v228;
              v228[7] = v228 + 34;
              v228[3] = sub_1C3EFE3D0;
              swift_continuation_init();
              v228[25] = v203;
              v207 = __swift_allocate_boxed_opaque_existential_1(v228 + 22);
              sub_1C4031460();
              (*(v201 + 32))(v207, v202, v203);
              v228[18] = MEMORY[0x1E69E9820];
              v228[19] = 1107296256;
              v228[20] = sub_1C3EFE5F4;
              v228[21] = &block_descriptor_4;
              [v235 setRead:0 forCallsWithPredicate:v206 completion:v228 + 18];
              (*(v201 + 8))(v207, v203);
              goto LABEL_117;
            }

            v187 = v228[57];
            v209 = v228[58];
            sub_1C3F03460(v228[56], type metadata accessor for CallFetchRequest);

LABEL_112:

            sub_1C3F029C4(v187);
            v189 = v48[55];
            v188 = v48[56];
            v191 = v48[52];
            v190 = v48[53];
            v192 = v48;
            v193 = v48[51];
            v195 = v192[49];
            v194 = v192[50];
            v196 = v192[48];
            v198 = v192[44];
            v197 = v192[45];
            v231 = v192[43];
            v234 = v192[40];

            v199 = v192[1];

            return v199();
          }
        }

        else
        {
          v186 = v48[58];
        }
      }

      v187 = v48[57];
      sub_1C3F03460(v48[56], type metadata accessor for CallFetchRequest);
      goto LABEL_112;
    }

    v25 = v23;
LABEL_14:
    v26 = v228[52];
    v27 = v228[53];
    v28 = v228[45];
    v29 = v228[41];
    v30 = *(v222 + 72);
    sub_1C3F035F4(*(v16 + 48) + v30 * (__clz(__rbit64(v20)) | (v25 << 6)), v27, type metadata accessor for RecentCall);
    v31 = *v218;
    (*v218)(v28, v27, v29);
    sub_1C3F035F4(v27, v26, type metadata accessor for RecentCall);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v236[0] = v227;
    v22 = sub_1C3F3C7F8(v28);
    v34 = v227[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      goto LABEL_131;
    }

    v38 = v33;
    if (v227[3] < v37)
    {
      break;
    }

    if ((v32 & 1) == 0)
    {
      v47 = v22;
      sub_1C3F02634();
      v22 = v47;
      v227 = v236[0];
    }

LABEL_20:
    v20 &= v20 - 1;
    v41 = v228[52];
    v232 = v228[53];
    v42 = v228[45];
    v43 = v228[41];
    if (v38)
    {
      v24 = v227;
      sub_1C3F02960(v41, v227[7] + v22 * v30);
      (*v215)(v42, v43);
      v22 = sub_1C3F03460(v232, type metadata accessor for RecentCall);
      v23 = v25;
    }

    else
    {
      v24 = v227;
      v227[(v22 >> 6) + 8] |= 1 << v22;
      v44 = v22;
      v31(v227[6] + *(v214 + 72) * v22, v42, v43);
      sub_1C3F034C0(v41, v227[7] + v44 * v30, type metadata accessor for RecentCall);
      (*(v214 + 8))(v42, v43);
      v22 = sub_1C3F03460(v232, type metadata accessor for RecentCall);
      v45 = v227[2];
      v36 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v36)
      {
        goto LABEL_133;
      }

      v227[2] = v46;
      v23 = v25;
      v16 = v223;
    }

    v17 = v229;
    v21 = v225;
  }

  v39 = v228[45];
  sub_1C3F0124C(v37, v32);
  v227 = v236[0];
  v22 = sub_1C3F3C7F8(v39);
  if ((v38 & 1) == (v40 & 1))
  {
    goto LABEL_20;
  }

  v208 = v228[41];
LABEL_121:

  return sub_1C4031C30();
}

uint64_t sub_1C3EFDEA0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C3EFDF80, 0, 0);
}

uint64_t sub_1C3EFDF80()
{
  if (*(*(v0 + 464) + 16) && (v1 = *(v0 + 464), v2 = sub_1C3F3C78C(0), (v3 & 1) != 0))
  {
    v4 = *(*(*(v0 + 464) + 56) + 8 * v2);
    v5 = *(v4 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v7 = *(v0 + 336);
      v44 = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v5, 0);
      v6 = v44;
      v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v41 = *(v7 + 72);
      v9 = *(v7 + 16);
      do
      {
        v11 = *(v0 + 336);
        v10 = *(v0 + 344);
        v12 = *(v0 + 328);
        v9(v10, v8, v12);
        v13 = sub_1C40309A0();
        v15 = v14;
        (*(v11 + 8))(v10, v12);
        v17 = *(v44 + 16);
        v16 = *(v44 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1C3EF0270((v16 > 1), v17 + 1, 1);
        }

        *(v44 + 16) = v17 + 1;
        v18 = v44 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v8 += v41;
        --v5;
      }

      while (v5);
    }

    if (*(v6 + 16))
    {
      v33 = *(v0 + 312);
      v32 = *(v0 + 320);
      v34 = *(v0 + 304);
      v43 = *(v0 + 296);
      v35 = objc_opt_self();
      v36 = sub_1C40313E0();

      v37 = [v35 predicateForCallsWithAnyUniqueIDs_];
      *(v0 + 480) = v37;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 272;
      *(v0 + 24) = sub_1C3EFE3D0;
      swift_continuation_init();
      *(v0 + 200) = v34;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
      sub_1C4031460();
      (*(v33 + 32))(boxed_opaque_existential_1, v32, v34);
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1C3EFE5F4;
      *(v0 + 168) = &block_descriptor_4;
      [v43 setRead:0 forCallsWithPredicate:v37 completion:v0 + 144];
      (*(v33 + 8))(boxed_opaque_existential_1, v34);

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v19 = *(v0 + 456);
    v39 = *(v0 + 464);
    sub_1C3F03460(*(v0 + 448), type metadata accessor for CallFetchRequest);
  }

  else
  {
    v19 = *(v0 + 456);
    sub_1C3F03460(*(v0 + 448), type metadata accessor for CallFetchRequest);
  }

  sub_1C3F029C4(v19);
  v21 = *(v0 + 440);
  v20 = *(v0 + 448);
  v23 = *(v0 + 416);
  v22 = *(v0 + 424);
  v25 = *(v0 + 400);
  v24 = *(v0 + 408);
  v27 = *(v0 + 384);
  v26 = *(v0 + 392);
  v29 = *(v0 + 352);
  v28 = *(v0 + 360);
  v40 = *(v0 + 344);
  v42 = *(v0 + 320);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1C3EFE3D0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C3EFE4B0, 0, 0);
}

uint64_t sub_1C3EFE4B0()
{
  v1 = v0[60];
  v2 = v0[57];
  v3 = v0[58];
  sub_1C3F03460(v0[56], type metadata accessor for CallFetchRequest);

  sub_1C3F029C4(v2);
  v5 = v0[55];
  v4 = v0[56];
  v7 = v0[52];
  v6 = v0[53];
  v9 = v0[50];
  v8 = v0[51];
  v11 = v0[48];
  v10 = v0[49];
  v13 = v0[44];
  v12 = v0[45];
  v16 = v0[43];
  v17 = v0[40];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1C3EFE5F4(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F228, &qword_1C4038690);
  return sub_1C4031480();
}

uint64_t CHManager.deleteCalls(with:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3EFE674, 0, 0);
}

uint64_t sub_1C3EFE674()
{
  v21 = v0;
  if (qword_1EC08EB80 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_1C4030D10();
  __swift_project_value_buffer(v2, qword_1EC0B0CF8);
  sub_1C3EE61B4(v1);
  v3 = sub_1C4030CF0();
  v4 = sub_1C40315D0();
  sub_1C3EE6238(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1C3EEFC68(0xD000000000000012, 0x80000001C4056AA0, &v19);
    *(v6 + 12) = 2080;
    v20 = v5;
    sub_1C3EE61B4(v5);
    v8 = CallPredicate.description.getter();
    v10 = v9;
    sub_1C3EE6238(v20);
    v11 = sub_1C3EEFC68(v8, v10, &v19);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1C3E90000, v3, v4, "%{public}s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6934650](v7, -1, -1);
    MEMORY[0x1C6934650](v6, -1, -1);
  }

  else
  {
  }

  v13 = v0[3];
  v12 = v0[4];
  v14 = swift_task_alloc();
  v0[5] = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_1C3EFE90C;
  v17 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000012, 0x80000001C4056AA0, sub_1C3F0308C, v14, v17);
}

uint64_t sub_1C3EFE90C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1C3EFEA28;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1C3EE4C44;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C3EFEA28()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_1C3EFEA8C(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F278, &qword_1C4038718);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1C3F03528;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C3EFEFE0;
  aBlock[3] = &block_descriptor_27;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  sub_1C3EE61B4(a3);

  [v14 execute_];
  _Block_release(v13);
}

void sub_1C3EFEC58(void *a1, void *a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = [a1 syncManager];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v28[0] = a2;
  v5 = sub_1C3F1AFD8();
  v27 = 0;
  v6 = [v4 deleteCallsWithPredicate:v5 withTransaction:1 error:&v27];
  swift_unknownObjectRelease();

  v7 = v27;
  v8 = qword_1EC08EB80;
  if (v27)
  {
    v9 = v27;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4030D10();
    __swift_project_value_buffer(v10, qword_1EC0B0CF8);
    v11 = v9;
    v12 = sub_1C4030CF0();
    v13 = sub_1C40315C0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      *(v14 + 4) = v11;
      *v15 = v7;
      v16 = v11;
      _os_log_impl(&dword_1C3E90000, v12, v13, "Could not delete calls; operation failed with error %{public}@", v14, 0xCu);
      sub_1C3EED388(v15, &qword_1EC08EED8, &qword_1C4037F08);
      MEMORY[0x1C6934650](v15, -1, -1);
      MEMORY[0x1C6934650](v14, -1, -1);
    }

    v28[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F278, &qword_1C4038718);
    sub_1C4031470();
  }

  else
  {
    if (qword_1EC08EB80 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4030D10();
    __swift_project_value_buffer(v17, qword_1EC0B0CF8);
    sub_1C3EE61B4(a2);
    v18 = sub_1C4030CF0();
    v19 = sub_1C40315B0();
    sub_1C3EE6238(a2);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = a2;
      v28[0] = v21;
      *v20 = 134349314;
      *(v20 + 4) = v6;
      *(v20 + 12) = 2080;
      sub_1C3EE61B4(a2);
      v22 = CallPredicate.description.getter();
      v24 = v23;
      sub_1C3EE6238(v27);
      v25 = sub_1C3EEFC68(v22, v24, v28);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_1C3E90000, v18, v19, "Deleted %{public}ld calls matching predicate %s", v20, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1C6934650](v21, -1, -1);
      MEMORY[0x1C6934650](v20, -1, -1);
    }

    v28[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F278, &qword_1C4038718);
    sub_1C4031480();
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C3EFEFE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CHManager.getDatabaseSize(temporary:)(Swift::Bool temporary)
{
  v3 = v2;
  v4 = v1;
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C4030770();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4030910();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v16 = [objc_opt_self() getDBLocationIsSandboxed:1 isTemporary:temporary error:&v43];
  sub_1C40308E0();

  if (!v43)
  {
    v42 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F240, &qword_1C40386A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C40385D0;
    v29 = *MEMORY[0x1E695DB50];
    *(inited + 32) = *MEMORY[0x1E695DB50];
    v30 = v29;
    sub_1C3F0326C(inited);
    swift_setDeallocating();
    sub_1C3F03460(inited + 32, type metadata accessor for URLResourceKey);
    v31 = v15;
    sub_1C40308B0();
    if (v2)
    {
      (*(v12 + 8))(v15, v42);

LABEL_21:
      v39 = *MEMORY[0x1E69E9840];
      return v31;
    }

    v33 = sub_1C4030760();
    if (v34)
    {
      if (qword_1EC08EB80 != -1)
      {
        swift_once();
      }

      v35 = sub_1C4030D10();
      __swift_project_value_buffer(v35, qword_1EC0B0CF8);
      v36 = sub_1C4030CF0();
      v37 = sub_1C40315C0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        MEMORY[0x1C6934650](v38, -1, -1);
      }

      v31 = 0;
    }

    else
    {
      v31 = v33;
    }

    v11 = v42;
    (*(v7 + 8))(v10, v6);
LABEL_20:
    (*(v12 + 8))(v15, v11);
    goto LABEL_21;
  }

  if (qword_1EC08EB80 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4030D10();
  __swift_project_value_buffer(v17, qword_1EC0B0CF8);
  v18 = sub_1C4030CF0();
  v19 = sub_1C40315C0();
  if (!os_log_type_enabled(v18, v19))
  {

LABEL_10:
    v31 = v4;
    v32 = sub_1C3F03094();
    if (!v3)
    {
      v31 = v32;
    }

    goto LABEL_20;
  }

  v40 = v4;
  v41 = v2;
  v42 = v11;
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v44[0] = v21;
  *v20 = 136315138;
  swift_beginAccess();
  result = getDBLErrorCodeAsString(v43);
  if (result)
  {
    v23 = result;
    v24 = sub_1C40311C0();
    v26 = v25;

    v27 = sub_1C3EEFC68(v24, v26, v44);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_1C3E90000, v18, v19, "Failed to get database size; operation failed with error: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1C6934650](v21, -1, -1);
    MEMORY[0x1C6934650](v20, -1, -1);

    v3 = v41;
    v11 = v42;
    v4 = v40;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t CHManager.markCallsAsRead(with:)(uint64_t *a1)
{
  v2[19] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F228, &qword_1C4038690);
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  v2[22] = v7;
  v2[23] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C3EFF60C, 0, 0);
}

uint64_t sub_1C3EFF60C()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v8 = v0[23];
  v5 = sub_1C3F1AFD8();
  v0[24] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C3EFF7CC;
  swift_continuation_init();
  v0[17] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_1C4031460();
  (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C3EFE5F4;
  v0[13] = &block_descriptor_12;
  [v4 setRead:1 forCallsWithPredicate:v5 completion:{v0 + 10, v8}];
  (*(v3 + 8))(boxed_opaque_existential_1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C3EFF7CC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C3EFF8AC, 0, 0);
}

uint64_t sub_1C3EFF8AC()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C3EFF91C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3EE7A84;

  return CHManager.saveCalls(_:)(a1);
}

uint64_t sub_1C3EFF9D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F220, &qword_1C4038680);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = *v2;
  v13 = a1;
  v14 = a2;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE28, &qword_1C403D780);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v5);
  return sub_1C40314E0();
}

id sub_1C3EFFB14(uint64_t a1)
{
  v2 = *v1;
  v6 = *(a1 + *(type metadata accessor for CallFetchRequest() + 20));
  v3 = sub_1C3F1AFD8();
  v4 = [v2 callCountWithPredicate_];

  return v4;
}

uint64_t sub_1C3EFFB90(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3EE4204;

  return CHManager.updateCalls(with:)(a1);
}

uint64_t sub_1C3EFFC28(uint64_t *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3EEB060;

  return CHManager.deleteCalls(with:)(a1);
}

uint64_t sub_1C3EFFCE4(uint64_t *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3EE7A84;

  return CHManager.markCallsAsRead(with:)(a1);
}

char *sub_1C3EFFD7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F250, &qword_1C40386F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C3EFFEDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F268, &qword_1C4038708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1C3F00038(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_1C3F00214(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1C3F00234@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C3F00264(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CoalescingManager.Group(0);
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CoalescingManager.RecentsStrategyKey(0);
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F258, &qword_1C40386F8);
  v52 = a2;
  result = sub_1C4031A00();
  v16 = v13;
  v17 = result;
  if (*(v13 + 16))
  {
    v48 = v3;
    v49 = v13;
    v18 = 0;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v50 + 72);
      v32 = *(v16 + 48) + v31 * v30;
      if (v52)
      {
        sub_1C3F034C0(v32, v12, type metadata accessor for CoalescingManager.RecentsStrategyKey);
        v33 = *(v16 + 56);
        v34 = v12;
        v35 = *(v51 + 72);
        sub_1C3F034C0(v33 + v35 * v30, v53, type metadata accessor for CoalescingManager.Group);
      }

      else
      {
        sub_1C3F035F4(v32, v12, type metadata accessor for CoalescingManager.RecentsStrategyKey);
        v36 = *(v16 + 56);
        v34 = v12;
        v35 = *(v51 + 72);
        sub_1C3F035F4(v36 + v35 * v30, v53, type metadata accessor for CoalescingManager.Group);
      }

      v37 = *(v17 + 40);
      sub_1C4031C70();
      v38 = v34;
      sub_1C4025638();
      result = sub_1C4031CC0();
      v39 = -1 << *(v17 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v24 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v24 + 8 * v41);
          if (v45 != -1)
          {
            v25 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v40) & ~*(v24 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      sub_1C3F034C0(v38, *(v17 + 48) + v31 * v25, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      v26 = *(v17 + 56) + v35 * v25;
      v12 = v38;
      result = sub_1C3F034C0(v53, v26, type metadata accessor for CoalescingManager.Group);
      ++*(v17 + 16);
      v16 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v16 + 32);
    v3 = v48;
    if (v46 >= 64)
    {
      bzero(v19, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v46;
    }

    *(v16 + 16) = 0;
  }

LABEL_36:
  *v3 = v17;
  return result;
}

uint64_t sub_1C3F006B8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CoalescingManager.Group(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F260, &qword_1C4038700);
  v41 = a2;
  result = sub_1C4031A00();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_1C3F034C0(v28, v9, type metadata accessor for CoalescingManager.Group);
      }

      else
      {
        sub_1C3F035F4(v28, v9, type metadata accessor for CoalescingManager.Group);
      }

      v29 = *(v13 + 40);
      result = sub_1C4031C60();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_1C3F034C0(v9, *(v13 + 56) + v27 * v21, type metadata accessor for CoalescingManager.Group);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1C3F00A00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F320, &qword_1C4039F60);
  v40 = a2;
  result = sub_1C4031A00();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v44 = *v23;
      v25 = *(v5 + 56) + 40 * v22;
      v43 = *v25;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      v28 = *(v25 + 32);
      v41 = v27;
      v42 = *(v25 + 8);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1C4031C70();
      sub_1C4031280();
      result = sub_1C4031CC0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v44;
      v17[1] = v24;
      v18 = *(v8 + 56) + 40 * v16;
      *v18 = v43;
      *(v18 + 8) = v42;
      *(v18 + 16) = v26;
      *(v18 + 24) = v41;
      *(v18 + 32) = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C3F00CEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F318, &qword_1C4038790);
  v39 = a2;
  result = sub_1C4031A00();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v27 = *(v26 + 8);
      v41 = *v26;
      v40 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_1C4031C70();
      sub_1C4031280();
      result = sub_1C4031CC0();
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
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v41;
      *(v18 + 8) = v27;
      *(v18 + 16) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
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

uint64_t sub_1C3F00FBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F280, &qword_1C4038720);
  v33 = a2;
  result = sub_1C4031A00();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1C4031C70();
      sub_1C4031C90();
      result = sub_1C4031CC0();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C3F0124C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for RecentCall();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C40309F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F288, &qword_1C4038728);
  v48 = a2;
  result = sub_1C4031A00();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1C3F034C0(v31 + v32 * v28, v52, type metadata accessor for RecentCall);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1C3F035F4(v33 + v32 * v28, v52, type metadata accessor for RecentCall);
      }

      v34 = *(v16 + 40);
      sub_1C3F035B0(&qword_1EC08F290);
      result = sub_1C4031130();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_1C3F034C0(v52, *(v16 + 56) + v32 * v24, type metadata accessor for RecentCall);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1C3F01700(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1C4031A00();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = a2;
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + v22);
      v24 = *(*(v7 + 56) + 4 * v22);
      v25 = *(v10 + 40);
      sub_1C4031C70();
      sub_1C4031CA0();
      result = sub_1C4031CC0();
      v26 = -1 << *(v10 + 32);
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

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + v18) = v23;
      *(*(v10 + 56) + 4 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v10;
  return result;
}

uint64_t sub_1C3F01A04(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1C4031A00();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = a2;
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      v25 = *(v10 + 40);
      sub_1C4031C70();
      sub_1C4031CA0();
      result = sub_1C4031CC0();
      v26 = -1 << *(v10 + 32);
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

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v10;
  return result;
}

void *sub_1C3F01C90()
{
  v1 = v0;
  v2 = type metadata accessor for CoalescingManager.Group(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CoalescingManager.RecentsStrategyKey(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F258, &qword_1C40386F8);
  v10 = *v0;
  v11 = sub_1C40319F0();
  v12 = v11;
  if (*(v10 + 16))
  {
    v29 = v1;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v14 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = *(v10 + 64);
    v19 = -1;
    if (v17 < 64)
    {
      v19 = ~(-1 << v17);
    }

    v20 = v19 & v18;
    v21 = (v17 + 63) >> 6;
    if ((v19 & v18) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_14:
        v25 = v22 | (v16 << 6);
        v26 = *(v30 + 72) * v25;
        sub_1C3F035F4(*(v10 + 48) + v26, v9, type metadata accessor for CoalescingManager.RecentsStrategyKey);
        v27 = *(v31 + 72) * v25;
        sub_1C3F035F4(*(v10 + 56) + v27, v5, type metadata accessor for CoalescingManager.Group);
        sub_1C3F034C0(v9, *(v12 + 48) + v26, type metadata accessor for CoalescingManager.RecentsStrategyKey);
        result = sub_1C3F034C0(v5, *(v12 + 56) + v27, type metadata accessor for CoalescingManager.Group);
      }

      while (v20);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v24 = *(v14 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v12;
  }

  return result;
}

void *sub_1C3F01F7C()
{
  v1 = v0;
  v2 = type metadata accessor for CoalescingManager.Group(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F260, &qword_1C4038700);
  v6 = *v0;
  v7 = sub_1C40319F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_1C3F035F4(*(v6 + 56) + v23, v5, type metadata accessor for CoalescingManager.Group);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_1C3F034C0(v5, *(v8 + 56) + v23, type metadata accessor for CoalescingManager.Group);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_1C3F021B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F320, &qword_1C4039F60);
  v2 = *v0;
  v3 = sub_1C40319F0();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v27 = *(v22 + 24);
        v26 = *(v22 + 32);
        v28 = (*(v4 + 48) + v18);
        *v28 = v20;
        v28[1] = v21;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 24) = v27;
        *(v29 + 32) = v26;
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

void *sub_1C3F02350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F318, &qword_1C4038790);
  v2 = *v0;
  v3 = sub_1C40319F0();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v22;
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

void *sub_1C3F024D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F280, &qword_1C4038720);
  v2 = *v0;
  v3 = sub_1C40319F0();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_1C3F02634()
{
  v1 = v0;
  v2 = type metadata accessor for RecentCall();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1C40309F0();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F288, &qword_1C4038728);
  v7 = *v0;
  v8 = sub_1C40319F0();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_1C3F035F4(*(v7 + 56) + v28, v37, type metadata accessor for RecentCall);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_1C3F034C0(v27, *(v29 + 56) + v28, type metadata accessor for RecentCall);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
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

uint64_t sub_1C3F02960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCall();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3F029C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1C3F029FC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C40319F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 4 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 4 * v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1C3F02BC4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C40319F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_1C3F02D14(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F3C788(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_1C3F01A04(v15, v6 & 1, &qword_1EC08F238, &unk_1C4038DE0);
    v17 = *a3;
    v10 = sub_1C3F3C788(v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1C3F02BC4(&qword_1EC08F238, &unk_1C4038DE0);
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + v10) = v7;
  *(v22[7] + 8 * v10) = v8;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C40318C0();
    MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
    sub_1C40319C0();
    MEMORY[0x1C6932F70](39, 0xE100000000000000);
    sub_1C40319D0();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v7 = (a1 + 56);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v16 = *v7;
      v6 = *(v7 - 8);
      v25 = *a3;
      v26 = sub_1C3F3C788(v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v31 = v27;
      if (v25[3] < v30)
      {
        sub_1C3F01A04(v30, 1, &qword_1EC08F238, &unk_1C4038DE0);
        v32 = *a3;
        v26 = sub_1C3F3C788(v6);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v31)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v34[6] + v26) = v6;
      *(v34[7] + 8 * v26) = v16;
      v35 = v34[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v34[2] = v36;
      v7 += 2;
      if (v4 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

int64_t sub_1C3F03094()
{
  v1 = v0;
  v2 = type metadata accessor for CallFetchRequest();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  sub_1C40309E0();
  *&v6[*(v2 + 20)] = 0xF000000000000000;
  v9 = [objc_allocWithZone(MEMORY[0x1E698E740]) init];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_1C40311C0();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = &v6[*(v2 + 24)];
  *v14 = v11;
  v14[1] = v13;
  sub_1C3F034C0(v6, v8, type metadata accessor for CallFetchRequest);
  v20[1] = *&v8[*(v2 + 20)];
  v15 = sub_1C3F1AFD8();
  v16 = [v1 callCountWithPredicate_];

  sub_1C3F03460(v8, type metadata accessor for CallFetchRequest);
  sub_1C3F03800(0, &qword_1EC08F210, off_1E81DB518);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  InstanceSize = class_getInstanceSize(ObjCClassFromMetadata);
  result = InstanceSize * v16;
  if ((InstanceSize * v16) >> 64 != (InstanceSize * v16) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F0326C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F270, &qword_1C4038710);
    v3 = sub_1C4031890();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1C40311C0();
      sub_1C4031C70();
      v29 = v7;
      sub_1C4031280();
      v9 = sub_1C4031CC0();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1C40311C0();
        v20 = v19;
        if (v18 == sub_1C40311C0() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1C4031BF0();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C3F03460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3F034C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C3F03528()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F278, &qword_1C4038718) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  sub_1C3EFEC58(v2, v3);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C3F035B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C40309F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3F035F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3F0365C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for CallFetchRequest() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1C3EE4204;

  return sub_1C3EFBD0C(a1, v11, v12, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_1C3F03800(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1C3F03848()
{
  result = qword_1EC08F2C0;
  if (!qword_1EC08F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F2C0);
  }

  return result;
}

uint64_t sub_1C3F038BC(uint64_t a1)
{
  v3 = type metadata accessor for RecentCall();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v22 = v1;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1C4031950();
    v8 = -1 << *(a1 + 32);
    v26 = a1 + 56;
    result = sub_1C4031770();
    v9 = result;
    v10 = 0;
    v27 = *(a1 + 36);
    v23 = a1 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v26 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_21;
      }

      if (v27 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v13 = v24;
      sub_1C3EF033C(*(a1 + 48) + *(v25 + 72) * v9, v24);
      RecentCall.chRecentCall.getter();
      sub_1C3EF1564(v13, type metadata accessor for RecentCall);
      sub_1C4031920();
      v14 = *(v28 + 16);
      sub_1C4031960();
      sub_1C4031970();
      result = sub_1C4031930();
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v15 = *(v26 + 8 * v12);
      if ((v15 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      if (v27 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v16 = v15 & (-2 << (v9 & 0x3F));
      if (v16)
      {
        v11 = __clz(__rbit64(v16)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v12 << 6;
        v18 = v12 + 1;
        v19 = (v23 + 8 * v12);
        while (v18 < (v11 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_1C3E97CDC(v9, v27, 0);
            v11 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = sub_1C3E97CDC(v9, v27, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v6)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F03B74(uint64_t a1)
{
  v3 = type metadata accessor for RecentCall();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C40309F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v33 = v1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1C3EF02C0(0, v11, 0);
  v12 = v45;
  v13 = a1 + 56;
  v14 = -1 << *(a1 + 32);
  result = sub_1C4031770();
  v16 = v7;
  v17 = result;
  v18 = 0;
  v39 = (v16 + 16);
  v40 = v16;
  v37 = a1;
  v38 = v16 + 32;
  v34 = a1 + 64;
  v35 = v11;
  v36 = a1 + 56;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 36);
    v43 = v18;
    v44 = v21;
    v22 = v41;
    sub_1C3EF033C(*(a1 + 48) + *(v42 + 72) * v17, v41);
    (*v39)(v10, v22, v6);
    sub_1C3EF1564(v22, type metadata accessor for RecentCall);
    v45 = v12;
    v23 = v6;
    v25 = *(v12 + 16);
    v24 = *(v12 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1C3EF02C0(v24 > 1, v25 + 1, 1);
      v12 = v45;
    }

    *(v12 + 16) = v25 + 1;
    result = (*(v40 + 32))(v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25, v10, v23);
    v19 = 1 << *(v37 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v13 = v36;
    v26 = *(v36 + 8 * v20);
    if ((v26 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v23;
    a1 = v37;
    if (v44 != *(v37 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v17 & 0x3F));
    if (v27)
    {
      v19 = __clz(__rbit64(v27)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v20 << 6;
      v29 = v20 + 1;
      v30 = (v34 + 8 * v20);
      while (v29 < (v19 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1C3E97CDC(v17, v44, 0);
          v19 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_1C3E97CDC(v17, v44, 0);
    }

LABEL_4:
    v18 = v43 + 1;
    v17 = v19;
    if (v43 + 1 == v35)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1C3F03F28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4030D10();
  __swift_project_value_buffer(v6, qword_1EC0B0CE0);
  v7 = sub_1C4030CF0();
  v8 = sub_1C40315D0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1C3EEFC68(0x4E66497075746573, 0xEF29286465646565, &v16);
    _os_log_impl(&dword_1C3E90000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1C6934650](v10, -1, -1);
    MEMORY[0x1C6934650](v9, -1, -1);
  }

  v11 = [objc_allocWithZone(CHFeatureFlags) init];
  v12 = [v11 isDefaultDialerEnabled];

  if (v12)
  {
    v13 = sub_1C40314B0();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v1;

    sub_1C3EEDDDC(0, 0, v5, &unk_1C4038838, v14);
  }
}

uint64_t sub_1C3F04194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F138, &qword_1C4038468) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = sub_1C4031630();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3F0428C, 0, 0);
}

uint64_t sub_1C3F0428C()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = [objc_opt_self() defaultCenter];
  sub_1C4031640();

  sub_1C4031620();
  swift_beginAccess();
  v4 = sub_1C3F08A9C(&qword_1EC08F140, MEMORY[0x1E6969EF8]);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1C3F043D4;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE6D8C8](v8, v9, v4);
}

uint64_t sub_1C3F043D4()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1C3F0463C;
  }

  else
  {
    v3 = sub_1C3F044E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C3F04504()
{
  v1 = v0[7];
  v2 = sub_1C4030730();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_1EC08EAB0 != -1)
    {
      swift_once();
    }

    v5 = qword_1EC08F150;

    return MEMORY[0x1EEE6DFA0](sub_1C3F046C8, v5, 0);
  }
}

uint64_t sub_1C3F0463C()
{
  *(v0 + 40) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1C3F046C8()
{
  v11 = v0;
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4030D10();
  __swift_project_value_buffer(v1, qword_1EC0B0CE0);
  v2 = sub_1C4030CF0();
  v3 = sub_1C40315D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1C3EEFC68(0xD00000000000001BLL, 0x80000001C4056CE0, &v10);
    _os_log_impl(&dword_1C3E90000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1C6934650](v5, -1, -1);
    MEMORY[0x1C6934650](v4, -1, -1);
  }

  v6 = *(v0 + 48);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(*(v0 + 48) + 32);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_1C3F04884, 0, 0);
}

uint64_t sub_1C3F04884()
{
  sub_1C3EED388(v0[7], &qword_1EC08F138, &qword_1C4038468);
  v1 = sub_1C3F08A9C(&qword_1EC08F140, MEMORY[0x1E6969EF8]);
  v2 = *(MEMORY[0x1E69E85A8] + 4);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1C3F043D4;
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];

  return MEMORY[0x1EEE6D8C8](v5, v6, v1);
}

uint64_t sub_1C3F04974(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F208, &qword_1C4038678);
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3F04A40, 0, 0);
}

uint64_t sub_1C3F04A40()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = *(v1[19] + 16);
  sub_1C3F038BC(v1[18]);
  sub_1C3F08938();
  v8 = sub_1C40313E0();
  v1[23] = v8;

  v1[2] = v1;
  v1[3] = sub_1C3EFB1F8;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_1C4031460();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C3EFB344;
  v1[13] = &block_descriptor_19;
  [v7 addArrayToCallHistory:v8 withCompletion:v3];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

void *sub_1C3F04C18(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v37 - v5;
  v7 = sub_1C40309F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v44 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v37 - v12;
  v13 = type metadata accessor for RecentCall();
  v42 = *(v13 - 8);
  v14 = *(v42 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v41 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v37 - v17;
  v18 = *(v1 + 16);
  v51 = *(a1 + *(type metadata accessor for CallFetchRequest() + 20));
  v19 = sub_1C3F1AFD8();
  v20 = [v18 callsWithPredicate:v19 limit:0x7FFFFFFFFFFFFFFFLL offset:0 batchSize:0x7FFFFFFFFFFFFFFFLL];

  sub_1C3F08938();
  v21 = sub_1C40313F0();

  if (v21 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C40317E0())
  {
    v23 = 0;
    v47 = v21 & 0xFFFFFFFFFFFFFF8;
    v48 = v21 & 0xC000000000000001;
    v45 = (v8 + 48);
    v39 = (v8 + 16);
    v40 = (v8 + 32);
    v50 = MEMORY[0x1E69E7CC0];
    v38 = (v8 + 8);
    v46 = v21;
    while (1)
    {
      if (v48)
      {
        v24 = MEMORY[0x1C6933590](v23, v21);
      }

      else
      {
        if (v23 >= *(v47 + 16))
        {
          goto LABEL_18;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v8 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v26 = v6;
      v27 = v7;
      v28 = [v24 uniqueId];
      sub_1C40311C0();

      v7 = v27;
      v6 = v26;
      sub_1C4030990();

      if ((*v45)(v26, 1, v7) == 1)
      {

        sub_1C3EED388(v26, &qword_1EC08F218, &qword_1C4041840);
      }

      else
      {
        v29 = v43;
        (*v40)(v43, v26, v7);
        v30 = v44;
        (*v39)(v44, v29, v7);
        v31 = v41;
        RecentCall.init(_:uniqueID:)(v25, v30, v41);
        (*v38)(v29, v7);
        sub_1C3EF19F8(v31, v49, type metadata accessor for RecentCall);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1C3EFFE80(0, v50[2] + 1, 1, v50);
        }

        v33 = v50[2];
        v32 = v50[3];
        if (v33 >= v32 >> 1)
        {
          v50 = sub_1C3EFFE80(v32 > 1, v33 + 1, 1, v50);
        }

        v34 = v49;
        v35 = v50;
        v50[2] = v33 + 1;
        sub_1C3EF19F8(v34, v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v33, type metadata accessor for RecentCall);
      }

      v21 = v46;
      ++v23;
      if (v8 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_21:

  return v50;
}

void *sub_1C3F05108(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v47 - v6;
  v8 = sub_1C40309F0();
  v9 = *(v8 - 8);
  isa = v9[8].isa;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - v13;
  v14 = type metadata accessor for RecentCall();
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v57 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
  v58 = *(v17 - 1);
  v59 = v17;
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v47 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F048, &qword_1C4038260);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  if (qword_1EC08EB78 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v25 = sub_1C4030D10();
    __swift_project_value_buffer(v25, qword_1EC0B0CE0);
    (*(v21 + 16))(v24, a1, v20);
    v26 = sub_1C4030CF0();
    v27 = sub_1C40315D0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v50 = v26;
      v29 = v28;
      v54 = swift_slowAlloc();
      v60 = v54;
      *v29 = 136446466;
      *(v29 + 4) = sub_1C3EEFC68(0x736C6C6143746567, 0xEF293A6874697728, &v60);
      *(v29 + 12) = 2080;
      sub_1C3F08984();
      LODWORD(v49) = v27;
      v30 = sub_1C4031BB0();
      v55 = v2;
      v31 = v9;
      v33 = v32;
      (*(v21 + 8))(v24, v20);
      v34 = sub_1C3EEFC68(v30, v33, &v60);
      v9 = v31;
      v2 = v55;

      *(v29 + 14) = v34;
      v35 = v50;
      _os_log_impl(&dword_1C3E90000, v50, v49, "%{public}s fetching calls with predicate: %s", v29, 0x16u);
      v21 = v54;
      swift_arrayDestroy();
      MEMORY[0x1C6934650](v21, -1, -1);
      MEMORY[0x1C6934650](v29, -1, -1);
    }

    else
    {

      v36 = *(v21 + 8);
      v21 += 8;
      v36(v24, v20);
    }

    v60 = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
    v37 = v56;
    sub_1C4030A80();
    (*(v58 + 8))(v37, v59);
    a1 = [*(v2 + 16) callsWithPredicate:0 limit:0x7FFFFFFFFFFFFFFFLL offset:0 batchSize:0x7FFFFFFFFFFFFFFFLL];
    sub_1C3F08938();
    v20 = sub_1C40313F0();

    if (v20 >> 62)
    {
      break;
    }

    v58 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v58)
    {
      goto LABEL_25;
    }

LABEL_7:
    v24 = 0;
    v55 = v20 & 0xFFFFFFFFFFFFFF8;
    v56 = (v20 & 0xC000000000000001);
    v54 = v9 + 6;
    v49 = v9 + 2;
    v50 = v9 + 4;
    v59 = MEMORY[0x1E69E7CC0];
    v48 = v9 + 1;
    while (1)
    {
      if (v56)
      {
        v38 = MEMORY[0x1C6933590](v24, v20);
      }

      else
      {
        if (v24 >= *(v55 + 16))
        {
          goto LABEL_22;
        }

        v38 = *(v20 + 8 * v24 + 32);
      }

      v9 = v38;
      v39 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      a1 = v7;
      v40 = v8;
      v41 = [v38 uniqueId];
      v21 = sub_1C40311C0();
      v2 = v42;

      v8 = v40;
      v7 = a1;
      sub_1C4030990();

      if ((v54->isa)(a1, 1, v8) == 1)
      {

        sub_1C3EED388(a1, &qword_1EC08F218, &qword_1C4041840);
      }

      else
      {
        v43 = v52;
        (v50->isa)(v52, a1, v8);
        a1 = v53;
        (v49->isa)(v53, v43, v8);
        RecentCall.init(_:uniqueID:)(v9, a1, v57);
        (v48->isa)(v43, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_1C3EFFE80(0, v59[2] + 1, 1, v59);
        }

        v2 = v59[2];
        v44 = v59[3];
        v9 = (v2 + 1);
        if (v2 >= v44 >> 1)
        {
          v59 = sub_1C3EFFE80(v44 > 1, v2 + 1, 1, v59);
        }

        v45 = v59;
        v59[2] = v9;
        sub_1C3EF19F8(v57, v45 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v2, type metadata accessor for RecentCall);
      }

      ++v24;
      if (v39 == v58)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v58 = sub_1C40317E0();
  if (v58)
  {
    goto LABEL_7;
  }

LABEL_25:
  v59 = MEMORY[0x1E69E7CC0];
LABEL_26:

  return v59;
}

uint64_t sub_1C3F058D0(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F228, &qword_1C4038690);
  v2[38] = v3;
  v4 = *(v3 - 8);
  v2[39] = v4;
  v5 = *(v4 + 64) + 15;
  v2[40] = swift_task_alloc();
  v6 = sub_1C40309F0();
  v2[41] = v6;
  v7 = *(v6 - 8);
  v2[42] = v7;
  v8 = *(v7 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v9 = type metadata accessor for RecentCall();
  v2[46] = v9;
  v10 = *(v9 - 8);
  v2[47] = v10;
  v11 = *(v10 + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v12 = type metadata accessor for CallFetchRequest();
  v2[54] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3F05AE4, 0, 0);
}

uint64_t sub_1C3F05AE4()
{
  v237 = v0;
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[36];
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1C3F03B74(v3);
  sub_1C40309E0();
  *(v1 + *(v2 + 20)) = v4;
  v5 = [objc_allocWithZone(MEMORY[0x1E698E740]) init];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = sub_1C40311C0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = v228[55];
  v11 = v228[56];
  v12 = v228[37];
  v13 = (v10 + *(v228[54] + 24));
  *v13 = v7;
  v13[1] = v9;
  sub_1C3EF19F8(v10, v11, type metadata accessor for CallFetchRequest);
  v219 = sub_1C3F04C18(v11);
  v222 = v228[47];
  v14 = v228[42];
  v15 = v228[36];
  v16 = v15 + 56;
  v17 = -1;
  v18 = -1 << *(v15 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v15 + 56);
  v20 = (63 - v18) >> 6;
  v218 = (v14 + 16);
  v213 = v228[42];
  v215 = (v14 + 8);

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC8];
  v229 = v15 + 56;
  v223 = v15;
  for (i = v20; ; v20 = i)
  {
    v227 = v23;
    if (!v19)
    {
      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
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
          return MEMORY[0x1EEE6DEC8](v21);
        }

        if (v24 >= v20)
        {
          break;
        }

        v19 = *(v16 + 8 * v24);
        ++v22;
        if (v19)
        {
          goto LABEL_14;
        }
      }

      v47 = v228;
      v48 = v228[36];

      v21 = v219;
      v217 = v219[2];
      if (v217)
      {
        v49 = 0;
        v50 = 0;
        v220 = v228[46];
        v216 = v219 + ((*(v228[47] + 80) + 32) & ~*(v228[47] + 80));
        v209 = v228[42];
        v214 = v228[37];
        v212 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          if (v50 >= *(v21 + 16))
          {
            goto LABEL_130;
          }

          v59 = *(v222 + 72);
          v226 = v50;
          sub_1C3EF033C(&v216[v59 * v50], v47[51]);
          v230 = v49;
          if (!v23[2] || (v60 = sub_1C3F3C7F8(v47[51]), (v61 & 1) == 0))
          {
            if (qword_1EC08EB78 != -1)
            {
              swift_once();
            }

            v76 = v47[51];
            v77 = v47[48];
            v78 = sub_1C4030D10();
            __swift_project_value_buffer(v78, qword_1EC0B0CE0);
            sub_1C3EF033C(v76, v77);
            v79 = sub_1C4030CF0();
            v80 = sub_1C40315D0();
            v81 = os_log_type_enabled(v79, v80);
            v82 = v47[51];
            v83 = v47[48];
            if (v81)
            {
              v51 = v47[41];
              v52 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              v236[0] = v53;
              *v52 = 136446210;
              sub_1C3F08A9C(&qword_1EC08F230, MEMORY[0x1E69695A8]);
              v54 = sub_1C4031BB0();
              v56 = v55;
              sub_1C3EF1564(v83, type metadata accessor for RecentCall);
              v57 = sub_1C3EEFC68(v54, v56, v236);
              v47 = v228;

              *(v52 + 4) = v57;
              _os_log_impl(&dword_1C3E90000, v79, v80, "Failed to find call update for uniqueID %{public}s", v52, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v53);
              MEMORY[0x1C6934650](v53, -1, -1);
              MEMORY[0x1C6934650](v52, -1, -1);
            }

            else
            {

              sub_1C3EF1564(v83, type metadata accessor for RecentCall);
            }

            v58 = v82;
            goto LABEL_27;
          }

          v63 = v47[50];
          v62 = v47[51];
          v64 = v47[49];
          sub_1C3EF033C(v23[7] + v60 * v59, v64);
          sub_1C3EF19F8(v64, v63, type metadata accessor for RecentCall);
          v65 = v220[24];
          v66 = *(v63 + v65);
          if (*(v62 + v65) != v66)
          {
            break;
          }

LABEL_50:
          v93 = v47[50];
          v94 = v47[51];
          sub_1C40309A0();
          v95 = v220[9];
          v96 = *(v93 + v95);
          if (v96 != *(v94 + v95))
          {
            v97 = *(v214 + 16);
            v98 = sub_1C4031190();
            v99 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
            [v97 updateBytesOfDataUsedFor:v98 with:v99];
          }

          v101 = v47[50];
          v100 = v47[51];
          v102 = v220[18];
          v103 = *(v101 + v102);
          if (v103 != *(v100 + v102))
          {
            v104 = *(v214 + 16);
            v105 = sub_1C4031190();
            v106 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
            [v104 updateMessageStatusFor:v105 with:v106];

            v101 = v47[50];
            v100 = v47[51];
          }

          v107 = v220[28];
          if (*(v101 + v107) == *(v100 + v107))
          {
          }

          else
          {
            v210 = *(v214 + 16);
            v211 = sub_1C4031190();

            v108 = *(v101 + v107);
            if (qword_1EC08EB00 != -1)
            {
              swift_once();
            }

            v109 = *(qword_1EC0B0C50 + 16);
            if (v109)
            {
              v208 = v108;
              v236[0] = MEMORY[0x1E69E7CC0];
              v221 = v109;
              v224 = qword_1EC0B0C50;
              sub_1C3EF0290(0, v109, 0);
              v110 = v236[0];
              v111 = v224 + 64;
              v112 = -1 << *(v224 + 32);
              v21 = sub_1C4031770();
              v113 = v221;
              v114 = v224;
              v115 = v21;
              v116 = 0;
              while ((v115 & 0x8000000000000000) == 0 && v115 < 1 << *(v114 + 32))
              {
                v118 = v115 >> 6;
                if ((*(v111 + 8 * (v115 >> 6)) & (1 << v115)) == 0)
                {
                  goto LABEL_125;
                }

                v119 = *(*(v114 + 48) + 8 * v115);
                v120 = *(*(v114 + 56) + v115);
                v121 = *(v114 + 36);
                v236[0] = v110;
                v123 = *(v110 + 16);
                v122 = *(v110 + 24);
                if (v123 >= v122 >> 1)
                {
                  v133 = v121;
                  v21 = sub_1C3EF0290((v122 > 1), v123 + 1, 1);
                  v121 = v133;
                  v113 = v221;
                  v114 = v224;
                  v110 = v236[0];
                }

                *(v110 + 16) = v123 + 1;
                v124 = v110;
                v125 = v110 + 16 * v123;
                *(v125 + 32) = v120;
                *(v125 + 40) = v119;
                v117 = 1 << *(v114 + 32);
                if (v115 >= v117)
                {
                  goto LABEL_126;
                }

                v111 = v224 + 64;
                v126 = *(v224 + 64 + 8 * v118);
                if ((v126 & (1 << v115)) == 0)
                {
                  goto LABEL_127;
                }

                if (v121 != *(v114 + 36))
                {
                  goto LABEL_128;
                }

                v127 = v126 & (-2 << (v115 & 0x3F));
                if (v127)
                {
                  v117 = __clz(__rbit64(v127)) | v115 & 0x7FFFFFFFFFFFFFC0;
                }

                else
                {
                  v128 = v118 << 6;
                  v129 = (v224 + 72 + 8 * v118);
                  v130 = v118 + 1;
                  while (v130 < (v117 + 63) >> 6)
                  {
                    v132 = *v129++;
                    v131 = v132;
                    v128 += 64;
                    ++v130;
                    if (v132)
                    {
                      v21 = sub_1C3E97CDC(v115, v121, 0);
                      v113 = v221;
                      v114 = v224;
                      v117 = __clz(__rbit64(v131)) + v128;
                      goto LABEL_60;
                    }
                  }

                  v21 = sub_1C3E97CDC(v115, v121, 0);
                  v113 = v221;
                  v114 = v224;
                }

LABEL_60:
                ++v116;
                v115 = v117;
                v110 = v124;
                if (v116 == v113)
                {
                  v47 = v228;
                  v108 = v208;
                  goto LABEL_78;
                }
              }

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

            v110 = MEMORY[0x1E69E7CC0];
LABEL_78:
            if (*(v110 + 16))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F238, &unk_1C4038DE0);
              v134 = sub_1C4031A10();
            }

            else
            {
              v134 = MEMORY[0x1E69E7CC8];
            }

            v236[0] = v134;
            sub_1C3F02D14(v110, 1, v236);
            v135 = v236[0];
            if (*(v236[0] + 16) && (v136 = sub_1C3F3C788(v108), (v137 & 1) != 0))
            {
              v138 = *(*(v135 + 56) + 8 * v136);
            }

            else
            {
              v138 = 0;
            }

            [v210 updateAutoAnsweredReasonFor:v211 with:v138];
          }

          v139 = v47[51];
          sub_1C3EF1564(v47[50], type metadata accessor for RecentCall);
          v58 = v139;
LABEL_27:
          sub_1C3EF1564(v58, type metadata accessor for RecentCall);
          v23 = v227;
          v50 = v226 + 1;
          v21 = v219;
          v49 = v230;
          if (v226 + 1 == v217)
          {

            v140 = v212;
            goto LABEL_91;
          }
        }

        (*v218)(v47[44], v47[50], v47[41]);
        sub_1C3F029C4(v230);
        v67 = v212;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v236[0] = v212;
        v70 = sub_1C3F3C78C(v66);
        v71 = *(v212 + 16);
        v72 = (v69 & 1) == 0;
        v21 = v71 + v72;
        if (__OFADD__(v71, v72))
        {
          goto LABEL_132;
        }

        v73 = v69;
        if (*(v212 + 24) < v21)
        {
          sub_1C3F00FBC(v21, isUniquelyReferenced_nonNull_native);
          v74 = v236[0];
          v21 = sub_1C3F3C78C(v66);
          if ((v73 & 1) != (v75 & 1))
          {
            goto LABEL_121;
          }

          v70 = v21;
          v67 = v74;
          if (v73)
          {
            goto LABEL_45;
          }

LABEL_43:
          v67[(v70 >> 6) + 8] |= 1 << v70;
          *(v67[6] + v70) = v66;
          *(v67[7] + 8 * v70) = MEMORY[0x1E69E7CC0];
          v84 = v67[2];
          v35 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v35)
          {
            goto LABEL_134;
          }

          v67[2] = v85;
          goto LABEL_45;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v69 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v21 = sub_1C3F024D8();
          v67 = v236[0];
          if ((v73 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

LABEL_45:
        v212 = v67;
        v86 = v67[7];
        v87 = *(v86 + 8 * v70);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        *(v86 + 8 * v70) = v87;
        if ((v88 & 1) == 0)
        {
          v87 = sub_1C3EFFEB4(0, v87[2] + 1, 1, v87);
          *(v86 + 8 * v70) = v87;
        }

        v90 = v87[2];
        v89 = v87[3];
        if (v90 >= v89 >> 1)
        {
          v87 = sub_1C3EFFEB4(v89 > 1, v90 + 1, 1, v87);
          *(v86 + 8 * v70) = v87;
        }

        v91 = v47[44];
        v92 = v47[41];
        v87[2] = v90 + 1;
        (*(v209 + 32))(v87 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v213 + 72) * v90, v91, v92);
        v230 = sub_1C3EFE5E4;
        goto LABEL_50;
      }

      v49 = 0;
      v140 = MEMORY[0x1E69E7CC8];
LABEL_91:

      v47[57] = v49;
      v47[58] = v140;
      if (*(v140 + 16))
      {
        v141 = sub_1C3F3C78C(1);
        if (v142)
        {
          v143 = *(*(v140 + 56) + 8 * v141);
          v144 = *(v143 + 16);
          v145 = MEMORY[0x1E69E7CC0];
          if (v144)
          {
            v146 = v228[42];
            v236[0] = MEMORY[0x1E69E7CC0];

            sub_1C3EF0270(0, v144, 0);
            v145 = v236[0];
            v147 = v143 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
            v148 = *(v213 + 72);
            v149 = *(v213 + 16);
            do
            {
              v150 = v228[43];
              v151 = v228[41];
              v149(v150, v147, v151);
              v152 = sub_1C40309A0();
              v154 = v153;
              (*v215)(v150, v151);
              v236[0] = v145;
              v156 = *(v145 + 16);
              v155 = *(v145 + 24);
              if (v156 >= v155 >> 1)
              {
                sub_1C3EF0270((v155 > 1), v156 + 1, 1);
                v145 = v236[0];
              }

              *(v145 + 16) = v156 + 1;
              v157 = v145 + 16 * v156;
              *(v157 + 32) = v152;
              *(v157 + 40) = v154;
              v147 += v148;
              --v144;
            }

            while (v144);
          }

          if (*(v145 + 16))
          {
            v158 = v228 + 10;
            v159 = v228[39];
            v160 = v228[40];
            v161 = v228[38];
            v233 = *(v228[37] + 16);
            v162 = objc_opt_self();
            v163 = sub_1C40313E0();

            v164 = [v162 predicateForCallsWithAnyUniqueIDs_];
            v228[59] = v164;

            v228[10] = v228;
            v228[15] = v228 + 35;
            v228[11] = sub_1C3F0707C;
            swift_continuation_init();
            v228[33] = v161;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v228 + 30);
            sub_1C4031460();
            (*(v159 + 32))(boxed_opaque_existential_1, v160, v161);
            v228[26] = MEMORY[0x1E69E9820];
            v228[27] = 1107296256;
            v228[28] = sub_1C3EFE5F4;
            v228[29] = &block_descriptor_14;
            [v233 setRead:1 forCallsWithPredicate:v164 completion:v228 + 26];
            (*(v159 + 8))(boxed_opaque_existential_1, v161);
LABEL_117:
            v21 = v158;

            return MEMORY[0x1EEE6DEC8](v21);
          }

          v47 = v228;
        }

        if (*(v47[58] + 16))
        {
          v166 = sub_1C3F3C78C(0);
          if (v167)
          {
            v168 = *(*(v47[58] + 56) + 8 * v166);
            v169 = *(v168 + 16);
            v170 = MEMORY[0x1E69E7CC0];
            if (v169)
            {
              v171 = v228[42];
              v236[0] = MEMORY[0x1E69E7CC0];

              sub_1C3EF0270(0, v169, 0);
              v170 = v236[0];
              v172 = v168 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
              v173 = *(v171 + 72);
              v174 = *(v171 + 16);
              do
              {
                v176 = v228[42];
                v175 = v228[43];
                v177 = v228[41];
                v174(v175, v172, v177);
                v178 = sub_1C40309A0();
                v180 = v179;
                (*(v176 + 8))(v175, v177);
                v236[0] = v170;
                v182 = *(v170 + 16);
                v181 = *(v170 + 24);
                if (v182 >= v181 >> 1)
                {
                  sub_1C3EF0270((v181 > 1), v182 + 1, 1);
                  v170 = v236[0];
                }

                *(v170 + 16) = v182 + 1;
                v183 = v170 + 16 * v182;
                *(v183 + 32) = v178;
                *(v183 + 40) = v180;
                v172 += v173;
                --v169;
              }

              while (v169);
            }

            v47 = v228;
            if (*(v170 + 16))
            {
              v158 = v228 + 2;
              v199 = v228[39];
              v200 = v228[40];
              v201 = v228[38];
              v235 = *(v228[37] + 16);
              v202 = objc_opt_self();
              v203 = sub_1C40313E0();

              v204 = [v202 predicateForCallsWithAnyUniqueIDs_];
              v228[60] = v204;

              v228[2] = v228;
              v228[7] = v228 + 34;
              v228[3] = sub_1C3F075B0;
              swift_continuation_init();
              v228[25] = v201;
              v205 = __swift_allocate_boxed_opaque_existential_1(v228 + 22);
              sub_1C4031460();
              (*(v199 + 32))(v205, v200, v201);
              v228[18] = MEMORY[0x1E69E9820];
              v228[19] = 1107296256;
              v228[20] = sub_1C3EFE5F4;
              v228[21] = &block_descriptor_11;
              [v235 setRead:0 forCallsWithPredicate:v204 completion:v228 + 18];
              (*(v199 + 8))(v205, v201);
              goto LABEL_117;
            }

            v185 = v228[57];
            v207 = v228[58];
            sub_1C3EF1564(v228[56], type metadata accessor for CallFetchRequest);

LABEL_112:

            sub_1C3F029C4(v185);
            v187 = v47[55];
            v186 = v47[56];
            v189 = v47[52];
            v188 = v47[53];
            v190 = v47;
            v191 = v47[51];
            v193 = v190[49];
            v192 = v190[50];
            v194 = v190[48];
            v196 = v190[44];
            v195 = v190[45];
            v231 = v190[43];
            v234 = v190[40];

            v197 = v190[1];

            return v197();
          }
        }

        else
        {
          v184 = v47[58];
        }
      }

      v185 = v47[57];
      sub_1C3EF1564(v47[56], type metadata accessor for CallFetchRequest);
      goto LABEL_112;
    }

    v24 = v22;
LABEL_14:
    v25 = v228[52];
    v26 = v228[53];
    v27 = v228[45];
    v28 = v228[41];
    v29 = *(v222 + 72);
    sub_1C3EF033C(*(v15 + 48) + v29 * (__clz(__rbit64(v19)) | (v24 << 6)), v26);
    v30 = *v218;
    (*v218)(v27, v26, v28);
    sub_1C3EF033C(v26, v25);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v236[0] = v227;
    v21 = sub_1C3F3C7F8(v27);
    v33 = v227[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_131;
    }

    v37 = v32;
    if (v227[3] < v36)
    {
      break;
    }

    if ((v31 & 1) == 0)
    {
      v46 = v21;
      sub_1C3F02634();
      v21 = v46;
      v227 = v236[0];
    }

LABEL_20:
    v19 &= v19 - 1;
    v40 = v228[52];
    v232 = v228[53];
    v41 = v228[45];
    v42 = v228[41];
    if (v37)
    {
      v23 = v227;
      sub_1C3F02960(v40, v227[7] + v21 * v29);
      (*v215)(v41, v42);
      v21 = sub_1C3EF1564(v232, type metadata accessor for RecentCall);
      v22 = v24;
    }

    else
    {
      v23 = v227;
      v227[(v21 >> 6) + 8] |= 1 << v21;
      v43 = v21;
      v30(v227[6] + *(v213 + 72) * v21, v41, v42);
      sub_1C3EF19F8(v40, v227[7] + v43 * v29, type metadata accessor for RecentCall);
      (*(v213 + 8))(v41, v42);
      v21 = sub_1C3EF1564(v232, type metadata accessor for RecentCall);
      v44 = v227[2];
      v35 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v35)
      {
        goto LABEL_133;
      }

      v227[2] = v45;
      v22 = v24;
      v15 = v223;
    }

    v16 = v229;
  }

  v38 = v228[45];
  sub_1C3F0124C(v36, v31);
  v227 = v236[0];
  v21 = sub_1C3F3C7F8(v38);
  if ((v37 & 1) == (v39 & 1))
  {
    goto LABEL_20;
  }

  v206 = v228[41];
LABEL_121:

  return sub_1C4031C30();
}

uint64_t sub_1C3F0707C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C3F0715C, 0, 0);
}

uint64_t sub_1C3F0715C()
{
  if (*(*(v0 + 464) + 16) && (v1 = *(v0 + 464), v2 = sub_1C3F3C78C(0), (v3 & 1) != 0))
  {
    v4 = *(*(*(v0 + 464) + 56) + 8 * v2);
    v5 = *(v4 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v7 = *(v0 + 336);
      v44 = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v5, 0);
      v6 = v44;
      v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v41 = *(v7 + 72);
      v9 = *(v7 + 16);
      do
      {
        v11 = *(v0 + 336);
        v10 = *(v0 + 344);
        v12 = *(v0 + 328);
        v9(v10, v8, v12);
        v13 = sub_1C40309A0();
        v15 = v14;
        (*(v11 + 8))(v10, v12);
        v17 = *(v44 + 16);
        v16 = *(v44 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1C3EF0270((v16 > 1), v17 + 1, 1);
        }

        *(v44 + 16) = v17 + 1;
        v18 = v44 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v8 += v41;
        --v5;
      }

      while (v5);
    }

    if (*(v6 + 16))
    {
      v33 = *(v0 + 312);
      v32 = *(v0 + 320);
      v34 = *(v0 + 304);
      v43 = *(*(v0 + 296) + 16);
      v35 = objc_opt_self();
      v36 = sub_1C40313E0();

      v37 = [v35 predicateForCallsWithAnyUniqueIDs_];
      *(v0 + 480) = v37;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 272;
      *(v0 + 24) = sub_1C3F075B0;
      swift_continuation_init();
      *(v0 + 200) = v34;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
      sub_1C4031460();
      (*(v33 + 32))(boxed_opaque_existential_1, v32, v34);
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1C3EFE5F4;
      *(v0 + 168) = &block_descriptor_11;
      [v43 setRead:0 forCallsWithPredicate:v37 completion:v0 + 144];
      (*(v33 + 8))(boxed_opaque_existential_1, v34);

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v19 = *(v0 + 456);
    v39 = *(v0 + 464);
    sub_1C3EF1564(*(v0 + 448), type metadata accessor for CallFetchRequest);
  }

  else
  {
    v19 = *(v0 + 456);
    sub_1C3EF1564(*(v0 + 448), type metadata accessor for CallFetchRequest);
  }

  sub_1C3F029C4(v19);
  v21 = *(v0 + 440);
  v20 = *(v0 + 448);
  v23 = *(v0 + 416);
  v22 = *(v0 + 424);
  v25 = *(v0 + 400);
  v24 = *(v0 + 408);
  v27 = *(v0 + 384);
  v26 = *(v0 + 392);
  v29 = *(v0 + 352);
  v28 = *(v0 + 360);
  v40 = *(v0 + 344);
  v42 = *(v0 + 320);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1C3F075B0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C3F07690, 0, 0);
}

uint64_t sub_1C3F07690()
{
  v1 = v0[60];
  v2 = v0[57];
  v3 = v0[58];
  sub_1C3EF1564(v0[56], type metadata accessor for CallFetchRequest);

  sub_1C3F029C4(v2);
  v5 = v0[55];
  v4 = v0[56];
  v7 = v0[52];
  v6 = v0[53];
  v9 = v0[50];
  v8 = v0[51];
  v11 = v0[48];
  v10 = v0[49];
  v13 = v0[44];
  v12 = v0[45];
  v16 = v0[43];
  v17 = v0[40];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1C3F077C4(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_1C40309F0();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F228, &qword_1C4038690);
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3F078EC, 0, 0);
}

uint64_t sub_1C3F078EC()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v26 = *(v0[20] + 16);
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C3EF0270(0, v2, 0);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v27 = *(v3 + 56);
    v28 = v4;
    v6 = (v3 - 8);
    do
    {
      v7 = v0[23];
      v8 = v0[21];
      v28(v7, v5, v8);
      v9 = sub_1C40309A0();
      v11 = v10;
      (*v6)(v7, v8);
      v13 = *(v29 + 16);
      v12 = *(v29 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C3EF0270((v12 > 1), v13 + 1, 1);
      }

      *(v29 + 16) = v13 + 1;
      v14 = v29 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v5 += v27;
      --v2;
    }

    while (v2);
    v15 = v0[25];
    v16 = v0[26];
    v17 = v0[24];
    v18 = objc_opt_self();
    v19 = sub_1C40313E0();

    v20 = [v18 predicateForCallsWithAnyUniqueIDs_];
    v0[27] = v20;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1C3F07C40;
    swift_continuation_init();
    v0[17] = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    sub_1C4031460();
    (*(v15 + 32))(boxed_opaque_existential_1, v16, v17);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C3EFE5F4;
    v0[13] = &block_descriptor_29;
    [v26 setRead:1 forCallsWithPredicate:v20 completion:v0 + 10];
    (*(v15 + 8))(boxed_opaque_existential_1, v17);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v22 = v0[26];
    v23 = v0[23];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1C3F07C40()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C3F07D20, 0, 0);
}

uint64_t sub_1C3F07D20()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C3F07D98(uint64_t *a1)
{
  v2[19] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F228, &qword_1C4038690);
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  v2[22] = v7;
  v2[23] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C3F07E6C, 0, 0);
}

uint64_t sub_1C3F07E6C()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v4 = *(v0[19] + 16);
  v8 = v0[23];
  v5 = sub_1C3F1AFD8();
  v0[24] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C3F0802C;
  swift_continuation_init();
  v0[17] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_1C4031460();
  (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C3EFE5F4;
  v0[13] = &block_descriptor_0;
  [v4 deleteCallsWithPredicate:v5 completion:{v0 + 10, v8}];
  (*(v3 + 8))(boxed_opaque_existential_1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C3F0802C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C3F0810C, 0, 0);
}

uint64_t sub_1C3F0810C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1C3F08184()
{
  sub_1C3EF75F4(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1C3F08200(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE7A84;

  return sub_1C3F04974(a1);
}

id sub_1C3F082C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v6 = *(a1 + *(type metadata accessor for CallFetchRequest() + 20));
  v3 = sub_1C3F1AFD8();
  v4 = [v2 callCountWithPredicate_];

  return v4;
}

uint64_t sub_1C3F08340(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE4204;

  return sub_1C3F058D0(a1);
}

uint64_t sub_1C3F083D4(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EEB060;

  return sub_1C3F07D98(a1);
}

uint64_t sub_1C3F08468(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3F0848C, 0, 0);
}

uint64_t sub_1C3F0848C()
{
  v1 = *(v0[3] + 16);
  v0[2] = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1C3F08530;

  return CHManager.markCallsAsRead(with:)(v0 + 2);
}

uint64_t sub_1C3F08530()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3F08664, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1C3F0867C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C3F086D4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_1C3F08710(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C3F08770(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1C3F08804;
}

void sub_1C3F08804(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1C3F08888(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3EE7A84;

  return sub_1C3F077C4(a1);
}

unint64_t sub_1C3F08938()
{
  result = qword_1EC08F210;
  if (!qword_1EC08F210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC08F210);
  }

  return result;
}

unint64_t sub_1C3F08984()
{
  result = qword_1EC08F050;
  if (!qword_1EC08F050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F048, &qword_1C4038260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F050);
  }

  return result;
}

uint64_t sub_1C3F089E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C3EE4204;

  return sub_1C3F04194(a1, v4, v5, v6);
}

uint64_t sub_1C3F08A9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3F08B04()
{
  v0 = sub_1C3F158B0(&unk_1F4387318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F568, &unk_1C4038BB0);
  result = swift_arrayDestroy();
  off_1EC08F330 = v0;
  return result;
}

uint64_t sub_1C3F08BB0()
{
  v0 = sub_1C3F1538C(&unk_1F4387118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F560, &qword_1C4038BA8);
  result = swift_arrayDestroy();
  off_1EC08F338 = v0;
  return result;
}

uint64_t sub_1C3F08C5C()
{
  v0 = sub_1C3F159F4(&unk_1F43874B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F558, &qword_1C4038BA0);
  result = swift_arrayDestroy();
  off_1EC08F340 = v0;
  return result;
}

uint64_t sub_1C3F08D08()
{
  v0 = sub_1C3F153A0(&unk_1F4387180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F550, &qword_1C4038B98);
  result = swift_arrayDestroy();
  off_1EC08F348 = v0;
  return result;
}

uint64_t sub_1C3F08DB4()
{
  v0 = sub_1C3F158D8(&unk_1F43873D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F548, &qword_1C4038B90);
  result = swift_arrayDestroy();
  off_1EC08F350 = v0;
  return result;
}

uint64_t sub_1C3F08E60()
{
  v0 = sub_1C3F153B4(&unk_1F4387230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F540, &qword_1C4038B88);
  result = swift_arrayDestroy();
  off_1EC08F358 = v0;
  return result;
}

uint64_t sub_1C3F08F0C()
{
  v0 = sub_1C3F1609C(&unk_1F43879B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F538, &qword_1C4038B80);
  result = swift_arrayDestroy();
  off_1EC08F360 = v0;
  return result;
}

uint64_t sub_1C3F08FB0()
{
  v1 = 0x6F696475612ELL;
  if (*v0 != 1)
  {
    v1 = 0x6F656469762ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t sub_1C3F09004()
{
  v0 = sub_1C3F15A08(&unk_1F4387520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F530, &qword_1C4038B78);
  result = swift_arrayDestroy();
  off_1EC08F368 = v0;
  return result;
}

uint64_t sub_1C3F090B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A70C();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F09134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A5BC();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t sub_1C3F09188()
{
  v0 = sub_1C3F159E0(&unk_1F4387420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F528, &qword_1C4038B70);
  result = swift_arrayDestroy();
  off_1EC08F370 = v0;
  return result;
}

uint64_t sub_1C3F09208(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_1C3F0928C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

uint64_t sub_1C3F092FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A954();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F0937C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();
  v9 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v7, v8, v9);
}

uint64_t sub_1C3F093F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A804();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t ServiceProvider.init(argument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x80000001C4056D00 == a2;
  if (v5 || (v6 = a1, (sub_1C4031BF0() & 1) != 0))
  {
    v7 = 0;
LABEL_7:

    v6 = 0;
    goto LABEL_8;
  }

  if (v6 == 0xD000000000000012 && 0x80000001C4056D20 == a2 || (result = sub_1C4031BF0(), v7 = a2, (result & 1) != 0))
  {
    v7 = 1;
    goto LABEL_7;
  }

LABEL_8:
  *a3 = v6;
  a3[1] = v7;
  return result;
}

unint64_t sub_1C3F09520()
{
  result = qword_1EC08F378;
  if (!qword_1EC08F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F378);
  }

  return result;
}

unint64_t sub_1C3F09574(void *a1)
{
  a1[1] = sub_1C3F095C4();
  a1[2] = sub_1C3F09618();
  a1[3] = sub_1C3F0966C();
  a1[4] = sub_1C3EF79AC();
  a1[5] = sub_1C3F096C0();
  result = sub_1C3F09714();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F095C4()
{
  result = qword_1EC08F380;
  if (!qword_1EC08F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F380);
  }

  return result;
}

unint64_t sub_1C3F09618()
{
  result = qword_1EC08F388;
  if (!qword_1EC08F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F388);
  }

  return result;
}

unint64_t sub_1C3F0966C()
{
  result = qword_1EC08F390;
  if (!qword_1EC08F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F390);
  }

  return result;
}

unint64_t sub_1C3F096C0()
{
  result = qword_1EC08F398;
  if (!qword_1EC08F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F398);
  }

  return result;
}

unint64_t sub_1C3F09714()
{
  result = qword_1EC08F3A0;
  if (!qword_1EC08F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3A0);
  }

  return result;
}

unint64_t sub_1C3F09768(void *a1)
{
  a1[1] = sub_1C3F097B8();
  a1[2] = sub_1C3F0980C();
  a1[3] = sub_1C3F09860();
  a1[4] = sub_1C3F098B4();
  a1[5] = sub_1C3F09908();
  result = sub_1C3F0995C();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F097B8()
{
  result = qword_1EC08F3A8;
  if (!qword_1EC08F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3A8);
  }

  return result;
}

unint64_t sub_1C3F0980C()
{
  result = qword_1EC08F3B0;
  if (!qword_1EC08F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3B0);
  }

  return result;
}

unint64_t sub_1C3F09860()
{
  result = qword_1EC08F3B8;
  if (!qword_1EC08F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3B8);
  }

  return result;
}

unint64_t sub_1C3F098B4()
{
  result = qword_1EC08F3C0;
  if (!qword_1EC08F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3C0);
  }

  return result;
}

unint64_t sub_1C3F09908()
{
  result = qword_1EC08F3C8;
  if (!qword_1EC08F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3C8);
  }

  return result;
}

unint64_t sub_1C3F0995C()
{
  result = qword_1EC08F3D0;
  if (!qword_1EC08F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3D0);
  }

  return result;
}

unint64_t sub_1C3F099B0(void *a1)
{
  a1[1] = sub_1C3F09A00();
  a1[2] = sub_1C3F09A54();
  a1[3] = sub_1C3F09AA8();
  a1[4] = sub_1C3F09AFC();
  a1[5] = sub_1C3F09B50();
  result = sub_1C3F09BA4();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F09A00()
{
  result = qword_1EC08F3D8;
  if (!qword_1EC08F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3D8);
  }

  return result;
}

unint64_t sub_1C3F09A54()
{
  result = qword_1EC08F3E0;
  if (!qword_1EC08F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3E0);
  }

  return result;
}

unint64_t sub_1C3F09AA8()
{
  result = qword_1EC08F3E8;
  if (!qword_1EC08F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3E8);
  }

  return result;
}

unint64_t sub_1C3F09AFC()
{
  result = qword_1EC08F3F0;
  if (!qword_1EC08F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3F0);
  }

  return result;
}

unint64_t sub_1C3F09B50()
{
  result = qword_1EC08F3F8;
  if (!qword_1EC08F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3F8);
  }

  return result;
}

unint64_t sub_1C3F09BA4()
{
  result = qword_1EC08F400;
  if (!qword_1EC08F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F400);
  }

  return result;
}

unint64_t sub_1C3F09BF8(void *a1)
{
  a1[1] = sub_1C3F09C48();
  a1[2] = sub_1C3F09C9C();
  a1[3] = sub_1C3F09CF0();
  a1[4] = sub_1C3F09D44();
  a1[5] = sub_1C3F09D98();
  result = sub_1C3F09DEC();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F09C48()
{
  result = qword_1EC08F408;
  if (!qword_1EC08F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F408);
  }

  return result;
}

unint64_t sub_1C3F09C9C()
{
  result = qword_1EC08F410;
  if (!qword_1EC08F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F410);
  }

  return result;
}

unint64_t sub_1C3F09CF0()
{
  result = qword_1EC08F418;
  if (!qword_1EC08F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F418);
  }

  return result;
}

unint64_t sub_1C3F09D44()
{
  result = qword_1EC08F420;
  if (!qword_1EC08F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F420);
  }

  return result;
}

unint64_t sub_1C3F09D98()
{
  result = qword_1EC08F428;
  if (!qword_1EC08F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F428);
  }

  return result;
}

unint64_t sub_1C3F09DEC()
{
  result = qword_1EC08F430;
  if (!qword_1EC08F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F430);
  }

  return result;
}

unint64_t sub_1C3F09E40(void *a1)
{
  a1[1] = sub_1C3F09E90();
  a1[2] = sub_1C3F09EE4();
  a1[3] = sub_1C3F09F38();
  a1[4] = sub_1C3F09F8C();
  a1[5] = sub_1C3F09FE0();
  result = sub_1C3F0A034();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F09E90()
{
  result = qword_1EC08F438;
  if (!qword_1EC08F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F438);
  }

  return result;
}

unint64_t sub_1C3F09EE4()
{
  result = qword_1EC08F440;
  if (!qword_1EC08F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F440);
  }

  return result;
}

unint64_t sub_1C3F09F38()
{
  result = qword_1EC08F448;
  if (!qword_1EC08F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F448);
  }

  return result;
}

unint64_t sub_1C3F09F8C()
{
  result = qword_1EC08F450;
  if (!qword_1EC08F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F450);
  }

  return result;
}

unint64_t sub_1C3F09FE0()
{
  result = qword_1EC08F458;
  if (!qword_1EC08F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F458);
  }

  return result;
}

unint64_t sub_1C3F0A034()
{
  result = qword_1EC08F460;
  if (!qword_1EC08F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F460);
  }

  return result;
}

unint64_t sub_1C3F0A088(void *a1)
{
  a1[1] = sub_1C3F0A0D8();
  a1[2] = sub_1C3F0A12C();
  a1[3] = sub_1C3F0A180();
  a1[4] = sub_1C3F0A1D4();
  a1[5] = sub_1C3F0A228();
  result = sub_1C3F0A27C();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F0A0D8()
{
  result = qword_1EC08F468;
  if (!qword_1EC08F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F468);
  }

  return result;
}

unint64_t sub_1C3F0A12C()
{
  result = qword_1EC08F470;
  if (!qword_1EC08F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F470);
  }

  return result;
}

unint64_t sub_1C3F0A180()
{
  result = qword_1EC08F478;
  if (!qword_1EC08F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F478);
  }

  return result;
}

unint64_t sub_1C3F0A1D4()
{
  result = qword_1EC08F480;
  if (!qword_1EC08F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F480);
  }

  return result;
}

unint64_t sub_1C3F0A228()
{
  result = qword_1EC08F488;
  if (!qword_1EC08F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F488);
  }

  return result;
}

unint64_t sub_1C3F0A27C()
{
  result = qword_1EC08F490;
  if (!qword_1EC08F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F490);
  }

  return result;
}

unint64_t sub_1C3F0A2D0(void *a1)
{
  a1[1] = sub_1C3F0A320();
  a1[2] = sub_1C3F0A374();
  a1[3] = sub_1C3F0A3C8();
  a1[4] = sub_1C3F0A41C();
  a1[5] = sub_1C3F0A470();
  result = sub_1C3F0A4C4();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F0A320()
{
  result = qword_1EC08F498;
  if (!qword_1EC08F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F498);
  }

  return result;
}

unint64_t sub_1C3F0A374()
{
  result = qword_1EC08F4A0;
  if (!qword_1EC08F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4A0);
  }

  return result;
}

unint64_t sub_1C3F0A3C8()
{
  result = qword_1EC08F4A8;
  if (!qword_1EC08F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4A8);
  }

  return result;
}

unint64_t sub_1C3F0A41C()
{
  result = qword_1EC08F4B0;
  if (!qword_1EC08F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4B0);
  }

  return result;
}

unint64_t sub_1C3F0A470()
{
  result = qword_1EC08F4B8;
  if (!qword_1EC08F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4B8);
  }

  return result;
}

unint64_t sub_1C3F0A4C4()
{
  result = qword_1EC08F4C0;
  if (!qword_1EC08F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4C0);
  }

  return result;
}

unint64_t sub_1C3F0A518(void *a1)
{
  a1[1] = sub_1C3F0A568();
  a1[2] = sub_1C3F0A5BC();
  a1[3] = sub_1C3F0A610();
  a1[4] = sub_1C3F0A664();
  a1[5] = sub_1C3F0A6B8();
  result = sub_1C3F0A70C();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F0A568()
{
  result = qword_1EC08F4C8;
  if (!qword_1EC08F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4C8);
  }

  return result;
}

unint64_t sub_1C3F0A5BC()
{
  result = qword_1EC08F4D0;
  if (!qword_1EC08F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4D0);
  }

  return result;
}

unint64_t sub_1C3F0A610()
{
  result = qword_1EC08F4D8;
  if (!qword_1EC08F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4D8);
  }

  return result;
}

unint64_t sub_1C3F0A664()
{
  result = qword_1EC08F4E0;
  if (!qword_1EC08F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4E0);
  }

  return result;
}

unint64_t sub_1C3F0A6B8()
{
  result = qword_1EC08F4E8;
  if (!qword_1EC08F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4E8);
  }

  return result;
}

unint64_t sub_1C3F0A70C()
{
  result = qword_1EC08F4F0;
  if (!qword_1EC08F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4F0);
  }

  return result;
}

unint64_t sub_1C3F0A760(void *a1)
{
  a1[1] = sub_1C3F0A7B0();
  a1[2] = sub_1C3F0A804();
  a1[3] = sub_1C3F0A858();
  a1[4] = sub_1C3F0A8AC();
  a1[5] = sub_1C3F0A900();
  result = sub_1C3F0A954();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F0A7B0()
{
  result = qword_1EC08F4F8;
  if (!qword_1EC08F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4F8);
  }

  return result;
}

unint64_t sub_1C3F0A804()
{
  result = qword_1EC08F500;
  if (!qword_1EC08F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F500);
  }

  return result;
}

unint64_t sub_1C3F0A858()
{
  result = qword_1EC08F508;
  if (!qword_1EC08F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F508);
  }

  return result;
}

unint64_t sub_1C3F0A8AC()
{
  result = qword_1EC08F510;
  if (!qword_1EC08F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F510);
  }

  return result;
}

unint64_t sub_1C3F0A900()
{
  result = qword_1EC08F518;
  if (!qword_1EC08F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F518);
  }

  return result;
}

unint64_t sub_1C3F0A954()
{
  result = qword_1EC08F520;
  if (!qword_1EC08F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F520);
  }

  return result;
}

uint64_t ExpressibleByArgumentEnum.description.getter(uint64_t a1, uint64_t a2)
{
  v50 = *(a2 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v54 = AssociatedTypeWitness;
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v47 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = sub_1C40316A0();
  v48 = *(v49 - 8);
  v9 = *(v48 + 64);
  v10 = MEMORY[0x1EEE9AC00](v49);
  v12 = &v47 - v11;
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v47 - v18);
  v63 = (*(a2 + 64))(a1, a2);
  v60 = a1;
  v61 = a2;
  v51 = v2;
  v62 = v2;
  v55 = a1;
  v56 = a2;
  v57 = sub_1C3F0BA6C;
  v58 = &v59;
  sub_1C4031120();
  swift_getWitnessTable();
  sub_1C4031360();

  if ((*(v13 + 48))(v12, 1, TupleTypeMetadata2) == 1)
  {
    (*(v48 + 8))(v12, v49);
    v20 = v52;
    sub_1C4031390();
    v21 = v54;
    v22 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
    v23 = sub_1C4031BB0();
    v25 = v24;
    (*(v53 + 8))(v20, v21);
    if (sub_1C4031310())
    {
      v26 = sub_1C3F0BAF4(1uLL, v23, v25);
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v23 = MEMORY[0x1C6932F10](v26, v28, v30, v32);
    }
  }

  else
  {
    (*(v13 + 32))(v19, v12, TupleTypeMetadata2);
    v33 = *v19;
    v34 = v19[1];
    v35 = sub_1C4031310();
    (*(v13 + 16))(v17, v19, TupleTypeMetadata2);
    v37 = *v17;
    v36 = *(v17 + 1);
    v38 = *(TupleTypeMetadata2 + 48);
    if (v35)
    {
      v39 = sub_1C3F0BAF4(1uLL, *v17, *(v17 + 1));
      v41 = v40;
      v54 = v42;
      v44 = v43;

      (*(*(a1 - 8) + 8))(&v17[v38], a1);
      v37 = MEMORY[0x1C6932F10](v39, v41, v54, v44);
      v36 = v45;
    }

    else
    {
      (*(*(a1 - 8) + 8))(&v17[v38], a1);
    }

    v63 = 46;
    v64 = 0xE100000000000000;
    MEMORY[0x1C6932F70](v37, v36);

    v23 = v63;
    (*(v13 + 8))(v19, TupleTypeMetadata2);
  }

  return v23;
}