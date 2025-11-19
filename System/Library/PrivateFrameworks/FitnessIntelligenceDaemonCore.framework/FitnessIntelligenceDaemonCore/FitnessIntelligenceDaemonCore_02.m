uint64_t sub_1D0B4DAB8(id *a1)
{
  v2 = sub_1D0B63AD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D0B633F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*a1 startDate];
  sub_1D0B633C0();

  sub_1D0B63350();
  (*(v8 + 8))(v11, v7);
  sub_1D0B5CB68(&qword_1EE052C18, MEMORY[0x1E699E2E8]);
  if (sub_1D0B64230())
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9ED8, &qword_1D0B666D8) + 36);
    v14 = sub_1D0B64240();
  }

  else
  {
    v14 = 0;
  }

  (*(v3 + 8))(v6, v2);
  return v14 & 1;
}

uint64_t sub_1D0B4DCF0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EC8, &qword_1D0B666C8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B4DDBC, v1, 0);
}

uint64_t sub_1D0B4DDBC()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EE0, &qword_1D0B666E0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EE8, &unk_1D0B666E8) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1D0B658C0;
  sub_1D0B2B49C(0, &qword_1EE052880, 0x1E696C588);
  sub_1D0B64100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EF0, &qword_1D0B666F8);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EF8, &unk_1D0B66700) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1D0B658C0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1D387C560](KeyPath, 1);
  sub_1D0B64110();
  v11 = *(v3 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
  v12 = *(MEMORY[0x1E696B3C8] + 4);
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_1D0B4E014;
  v14 = v0[6];
  v15 = v0[4];

  return MEMORY[0x1EEDC7698](v11, v15);
}

uint64_t sub_1D0B4E014(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = v1;

  v7 = v4[3];
  if (v1)
  {
    v8 = sub_1D0B4E1D4;
  }

  else
  {
    v4[9] = a1;
    v8 = sub_1D0B4E150;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D0B4E150()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_1D0B4E1D4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

void sub_1D0B4E254(id *a1)
{
  v1 = [*a1 endDate];
  sub_1D0B633C0();
}

uint64_t sub_1D0B4E2B4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9ED0, &qword_1D0B666D0);
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = sub_1D0B63AD0();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9950, &qword_1D0B66740);
  v1[11] = v7;
  v8 = *(v7 - 8);
  v1[12] = v8;
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B4E430, v0, 0);
}

uint64_t sub_1D0B4E430()
{
  v1 = *(v0 + 24);
  v2 = sub_1D0B5CB68(qword_1EE052AE0, type metadata accessor for HealthStore);
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F00, &qword_1D0B66748);
  *v4 = v0;
  v4[1] = sub_1D0B4E55C;
  v6 = *(v0 + 24);

  return MEMORY[0x1EEE6DDE0](v0 + 16, v1, v2, 0xD000000000000012, 0x80000001D0B67550, sub_1D0B5B318, v6, v5);
}

uint64_t sub_1D0B4E55C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D0B4E66C, v2, 0);
}

uint64_t sub_1D0B4E66C()
{
  v31 = v0;
  v1 = v0[2];
  v28 = MEMORY[0x1E69E7CC0];
  v29[0] = 0;
  v29[1] = 0;
  v30 = 1;
  sub_1D0B4F1D4(v1, v29, &v28);

  if (v30 == 1)
  {
    v2 = v28;
    goto LABEL_8;
  }

  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  sub_1D0B63AE0();
  sub_1D0B63AE0();
  sub_1D0B5CB68(&qword_1EE052C18, MEMORY[0x1E699E2E8]);
  v2 = v5;
  if ((sub_1D0B64240() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v0[13];
  v27 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v12 = v0[4];
  v11 = v0[5];
  v13 = *(v8 + 32);
  v13(v10, v0[10], v9);
  v13(v10 + *(v12 + 48), v7, v9);
  sub_1D0B2B870(v10, v11, &qword_1EC5F9ED0, &qword_1D0B666D0);
  v14 = *(v12 + 48);
  v13(v6, v11, v9);
  v15 = *(v8 + 8);
  v15(v11 + v14, v9);
  sub_1D0B2B5B8(v10, v11, &qword_1EC5F9ED0, &qword_1D0B666D0);
  v13(v6 + *(v27 + 36), v11 + *(v12 + 48), v9);
  v15(v11, v9);
  v2 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_12:
    v2 = sub_1D0B2CD5C(0, v2[2] + 1, 1, v2);
  }

  v17 = v2[2];
  v16 = v2[3];
  if (v17 >= v16 >> 1)
  {
    v2 = sub_1D0B2CD5C(v16 > 1, v17 + 1, 1, v2);
  }

  v19 = v0[12];
  v18 = v0[13];
  v2[2] = v17 + 1;
  sub_1D0B2B5B8(v18, v2 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, &qword_1EC5F9950, &qword_1D0B66740);
LABEL_8:
  v20 = v0[13];
  v22 = v0[9];
  v21 = v0[10];
  v24 = v0[5];
  v23 = v0[6];

  v25 = v0[1];

  return v25(v2);
}

void sub_1D0B4E964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FC0, &qword_1D0B66B40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *MEMORY[0x1E696BBE8];
  sub_1D0B64290();
  v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v11 = sub_1D0B64260();

  v12 = [v10 initWithKey:v11 ascending:1];

  sub_1D0B2B49C(0, &qword_1EE0528C8, 0x1E696C3D0);
  v13 = [swift_getObjCClassFromMetadata() pauseRingsScheduleType];
  if (v13)
  {
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AA8, &qword_1D0B66790);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D0B66680;
    *(v15 + 32) = v12;
    (*(v5 + 16))(v8, a1, v4);
    v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v17 = swift_allocObject();
    (*(v5 + 32))(v17 + v16, v8, v4);
    v18 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
    sub_1D0B2B49C(0, &qword_1EE0528A0, 0x1E696AEB0);
    v19 = v12;
    v20 = sub_1D0B64330();

    aBlock[4] = sub_1D0B5F3B0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D0B59550;
    aBlock[3] = &block_descriptor_220;
    v21 = _Block_copy(aBlock);
    v22 = [v18 initWithSampleType:v14 predicate:0 limit:0 sortDescriptors:v20 resultsHandler:v21];

    _Block_release(v21);

    [*(a2 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore) executeQuery_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D0B4ECA8(uint64_t a1, unint64_t a2)
{
  if (!a2 || !sub_1D0B4C7CC(a2, 0x1E696C320))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FC0, &qword_1D0B66B40);
  return sub_1D0B643C0();
}

void *sub_1D0B4ED20(void **a1, uint64_t a2, void **a3)
{
  v44 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9ED0, &qword_1D0B666D0);
  v5 = *(*(v45 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v45);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v37 - v8;
  v9 = sub_1D0B63AD0();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9950, &qword_1D0B66740);
  v43 = *(v39 - 8);
  v16 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v46 = &v37 - v17;
  v18 = *a1;
  v19 = *a2;
  v20 = *(a2 + 8);
  v21 = *(a2 + 16);
  v22 = [v18 startDateIndex];
  v23 = v22;
  if (v21 == 1)
  {
    result = [v18 endDateIndex];
    if (result >= v23)
    {
      v19 = v23;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    v38 = v18;
    if (v20 >= v22)
    {
      goto LABEL_11;
    }

    sub_1D0B63AE0();
    sub_1D0B63AE0();
    sub_1D0B5CB68(&qword_1EE052C18, MEMORY[0x1E699E2E8]);
    if (sub_1D0B64240())
    {
      v25 = v40;
      v26 = v41;
      v27 = *(v41 + 32);
      v27(v40, v15, v9);
      v28 = v45;
      v27((v25 + *(v45 + 48)), v13, v9);
      v29 = v42;
      sub_1D0B2B870(v25, v42, &qword_1EC5F9ED0, &qword_1D0B666D0);
      v37 = *(v28 + 48);
      v30 = v46;
      v27(v46, v29, v9);
      v31 = *(v26 + 8);
      v31(v29 + v37, v9);
      sub_1D0B2B5B8(v25, v29, &qword_1EC5F9ED0, &qword_1D0B666D0);
      v27((v30 + *(v39 + 36)), (v29 + *(v45 + 48)), v9);
      v31(v29, v9);
      v20 = v44;
      v19 = *v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v19;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
  do
  {
    __break(1u);
LABEL_16:
    v19 = sub_1D0B2CD5C(0, v19[2] + 1, 1, v19);
    *v20 = v19;
LABEL_7:
    v33 = v38;
    v34 = v43;
    v36 = v19[2];
    v35 = v19[3];
    if (v36 >= v35 >> 1)
    {
      v19 = sub_1D0B2CD5C(v35 > 1, v36 + 1, 1, v19);
      *v20 = v19;
    }

    v19[2] = v36 + 1;
    sub_1D0B2B5B8(v46, v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v36, &qword_1EC5F9950, &qword_1D0B66740);
    v19 = [v33 startDateIndex];
    result = [v33 endDateIndex];
    if (result >= v19)
    {
      break;
    }

    __break(1u);
LABEL_11:
    result = [v38 endDateIndex];
  }

  while (result < v19);
LABEL_12:
  *a2 = v19;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

void sub_1D0B4F1D4(unint64_t a1, uint64_t a2, void **a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D0B645A0())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D387D8B0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_1D0B4ED20(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1D0B4F2D4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 104) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(sub_1D0B640E0() - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F08, &qword_1D0B66758);
  *(v4 + 48) = v6;
  v7 = *(v6 - 8);
  *(v4 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B4F3D4, v3, 0);
}

uint64_t sub_1D0B4F3D4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v16 = *(v0 + 48);
  v17 = *(v0 + 32);
  v3 = *(v0 + 104);
  v4 = *(v0 + 16);
  v5 = [objc_opt_self() predicateForObjectsFromWorkout_];
  *(v0 + 72) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F10, &qword_1D0B66760);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F18, &unk_1D0B66768) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1D0B658C0;
  sub_1D0B2B49C(0, &qword_1EE052888, 0x1E696C3A8);
  v9 = v5;
  sub_1D0B640F0();

  sub_1D0B64110();
  sub_1D0B640D0();
  sub_1D0B64120();
  v10 = *(v17 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
  v11 = *(MEMORY[0x1E696B3C8] + 4);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = sub_1D0B4F600;
  v13 = *(v0 + 64);
  v14 = *(v0 + 48);

  return MEMORY[0x1EEDC7698](v10, v14);
}

uint64_t sub_1D0B4F600(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = v1;

  v7 = v4[4];
  if (v1)
  {
    v8 = sub_1D0B4F7DC;
  }

  else
  {
    v4[12] = a1;
    v8 = sub_1D0B4F73C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D0B4F73C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 8);
  v6 = *(v0 + 96);

  return v5(v6);
}

uint64_t sub_1D0B4F7DC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 8);
  v6 = *(v0 + 88);

  return v5();
}

uint64_t sub_1D0B4F878(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0B5F56C;

  return sub_1D0B5B320(a1, a2);
}

void sub_1D0B4F930(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB0, &qword_1D0B66B30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v13 = [objc_opt_self() predicateForObjectsFromWorkout_];
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  (*(v8 + 32))(v17 + v14, v11, v7);
  *(v17 + v15) = v12;
  v18 = v25;
  *(v17 + v16) = v25;
  v19 = objc_allocWithZone(MEMORY[0x1E696C368]);
  aBlock[4] = sub_1D0B5F2B8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0B59608;
  aBlock[3] = &block_descriptor_214;
  v20 = _Block_copy(aBlock);
  v21 = a3;

  v22 = v18;

  v23 = [v19 initWithQuantityType:v22 predicate:v13 quantityHandler:v20];
  _Block_release(v20);

  [v23 setIncludeSample_];
  [v23 setOrderByQuantitySampleStartDate_];
  [v21 executeQuery_];
}

void sub_1D0B4FBF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v89 = a7;
  v90 = a8;
  LODWORD(v87) = a5;
  v86 = a3;
  v88 = a2;
  v92[3] = *MEMORY[0x1E69E9840];
  v12 = sub_1D0B640C0();
  v85 = *(v12 - 8);
  v13 = *(v85 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v74 - v17;
  v19 = sub_1D0B633F0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v74 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB8, &qword_1D0B66B38);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v74 - v29;
  v31 = sub_1D0B63290();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    v37 = a6;
    [v89 stopQuery_];
    v92[0] = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB0, &qword_1D0B66B30);
    sub_1D0B643B0();
    goto LABEL_3;
  }

  v81 = v24;
  v82 = v26;
  v83 = v20;
  v84 = a1;
  v78 = v18;
  v79 = v16;
  v77 = v12;
  v39 = v87;
  v40 = v88;
  if (!v88)
  {
    goto LABEL_7;
  }

  v80 = v36;
  v41 = v33;
  v42 = v34;
  sub_1D0B2B870(v86, v30, &qword_1EC5F9FB8, &qword_1D0B66B38);
  if ((*(v42 + 48))(v30, 1, v41) == 1)
  {
    sub_1D0B2B620(v30, &qword_1EC5F9FB8, &qword_1D0B66B38);
LABEL_7:
    if (v39)
    {
      [v89 stopQuery_];
      swift_beginAccess();
      v91 = *(a9 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB0, &qword_1D0B66B30);
      sub_1D0B643C0();
    }

    goto LABEL_3;
  }

  v75 = a10;
  v76 = v42;
  v43 = *(v42 + 32);
  v86 = v41;
  v43(v80, v30, v41);
  v44 = v40;
  v45 = v82;
  sub_1D0B63280();
  v46 = v81;
  sub_1D0B63260();
  v47 = objc_allocWithZone(MEMORY[0x1E696C358]);
  v48 = v44;
  v49 = sub_1D0B633A0();
  v50 = sub_1D0B633A0();
  v92[0] = 0;
  v88 = v48;
  v51 = [v47 initWithType:v75 startDate:v49 endDate:v50 quantity:v48 error:v92];

  if (v51)
  {
    v52 = v92[0];

    v53 = *(v83 + 8);
    v53(v46, v19);
    v53(v45, v19);
    swift_beginAccess();
    v54 = v51;
    MEMORY[0x1D387D5A0]();
    if (*((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v73 = *((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D0B64360();
    }

    sub_1D0B64380();
    swift_endAccess();

    if ((v39 & 1) == 0)
    {
      (*(v76 + 8))(v80, v86, v84);

      goto LABEL_3;
    }

    [v89 stopQuery_];
    swift_beginAccess();
    v91 = *(a9 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB0, &qword_1D0B66B30);
    sub_1D0B643C0();
  }

  else
  {
    v55 = v92[0];
    v56 = sub_1D0B63320();

    swift_willThrow();
    v57 = *(v83 + 8);
    v57(v46, v19);
    v57(v45, v19);
    v58 = v78;
    sub_1D0B63F70();
    v59 = v56;
    v60 = sub_1D0B640A0();
    v61 = sub_1D0B644E0();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      v64 = v56;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v65;
      *v63 = v65;
      _os_log_impl(&dword_1D0B1E000, v60, v61, "Failed to create HKQuantitySample: %@", v62, 0xCu);
      sub_1D0B2B620(v63, &qword_1EC5F9868, &unk_1D0B66B20);
      MEMORY[0x1D387E1B0](v63, -1, -1);
      MEMORY[0x1D387E1B0](v62, -1, -1);
    }

    v87 = v56;

    v66 = *(v85 + 8);
    v67 = v58;
    v68 = v77;
    v66(v67, v77);
    v69 = v79;
    sub_1D0B63F70();
    v70 = sub_1D0B640A0();
    v71 = sub_1D0B644D0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_1D0B1E000, v70, v71, "Stopping samples query and returning.", v72, 2u);
      MEMORY[0x1D387E1B0](v72, -1, -1);
    }

    v66(v69, v68);
    [v89 stopQuery_];
    v92[0] = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB0, &qword_1D0B66B30);
    sub_1D0B643C0();
  }

  (*(v76 + 8))(v80, v86);
LABEL_3:
  v38 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0B50408(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F20, &qword_1D0B66788) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = *(*(sub_1D0B633F0() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = sub_1D0B63CF0();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_1D0B64140();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v11 = sub_1D0B64150();
  v2[18] = v11;
  v12 = *(v11 - 8);
  v2[19] = v12;
  v13 = *(v12 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v14 = sub_1D0B64170();
  v2[22] = v14;
  v15 = *(v14 - 8);
  v2[23] = v15;
  v16 = *(v15 + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B5064C, v1, 0);
}

uint64_t sub_1D0B5064C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 72);
  v4 = *(v0 + 64);
  sub_1D0B64180();
  v5 = *(v3 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
  sub_1D0B64160();

  return MEMORY[0x1EEE6DFA0](sub_1D0B506E0, 0, 0);
}

uint64_t sub_1D0B506E0()
{
  v1 = v0[17];
  (*(v0[19] + 16))(v0[20], v0[21], v0[18]);
  sub_1D0B5CB68(&qword_1EC5F9F28, MEMORY[0x1E696B3F0]);
  sub_1D0B64490();
  v0[25] = MEMORY[0x1E69E7CC0];
  v2 = sub_1D0B5CB68(&qword_1EC5F9F30, MEMORY[0x1E696B3E0]);
  v3 = *(MEMORY[0x1E69E85A8] + 4);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_1D0B50838;
  v5 = v0[17];
  v6 = v0[15];

  return MEMORY[0x1EEE6D8C8](v0 + 7, v6, v2);
}

uint64_t sub_1D0B50838()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = v2[25];
    (*(v2[16] + 8))(v2[17], v2[15]);

    v5 = sub_1D0B50F94;
  }

  else
  {
    v5 = sub_1D0B50970;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D0B50970()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[25];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AA8, &qword_1D0B66790);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D0B66680;
    *(inited + 32) = v1;
    v6 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = v0[25];
      if (v2 < 0)
      {
        v28 = v0[25];
      }

      isUniquelyReferenced_nonNull_bridgeObject = sub_1D0B645A0();
      v8 = isUniquelyReferenced_nonNull_bridgeObject + 1;
      if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, 1))
      {
LABEL_4:
        v9 = v0[25];
        v10 = v1;

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (!v6)
          {
            v11 = v2 & 0xFFFFFFFFFFFFFF8;
            v12 = *(v11 + 24) >> 1;
            if (v12 >= v8)
            {
              v13 = v0[25];
              goto LABEL_18;
            }

            goto LABEL_13;
          }
        }

        else if (!v6)
        {
          v11 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_13:
          v18 = *(v11 + 16);
LABEL_17:
          v21 = v0[25];
          isUniquelyReferenced_nonNull_bridgeObject = sub_1D0B64640();
          v13 = isUniquelyReferenced_nonNull_bridgeObject;
          v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
          v12 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_18:
          if (v12 > *(v11 + 16))
          {
            v22 = v0[25];
            sub_1D0B2B49C(0, &qword_1EC5F9F38, 0x1E6985C40);
            swift_arrayInitWithCopy();

            ++*(v11 + 16);
            v0[25] = v13;
            v23 = sub_1D0B5CB68(&qword_1EC5F9F30, MEMORY[0x1E696B3E0]);
            v24 = *(MEMORY[0x1E69E85A8] + 4);
            v25 = swift_task_alloc();
            v0[26] = v25;
            *v25 = v0;
            v25[1] = sub_1D0B50838;
            v26 = v0[17];
            v4 = v0[15];
            isUniquelyReferenced_nonNull_bridgeObject = (v0 + 7);
            v5 = v23;

            return MEMORY[0x1EEE6D8C8](isUniquelyReferenced_nonNull_bridgeObject, v4, v5);
          }

LABEL_27:
          __break(1u);
          return MEMORY[0x1EEE6D8C8](isUniquelyReferenced_nonNull_bridgeObject, v4, v5);
        }

        v19 = v0[25];
        if (v2 < 0)
        {
          v20 = v0[25];
        }

        sub_1D0B645A0();
        goto LABEL_17;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_bridgeObject = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = isUniquelyReferenced_nonNull_bridgeObject + 1;
      if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v14 = v0[21];
  v15 = v0[18];
  v16 = v0[19];
  v17 = v0[9];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v16 + 8))(v14, v15);

  return MEMORY[0x1EEE6DFA0](sub_1D0B50C54, v17, 0);
}

uint64_t sub_1D0B50C54()
{
  v1 = v0[25];
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[25]; v2; i = v0[25])
  {
    v4 = 0;
    v31 = v1 & 0xFFFFFFFFFFFFFF8;
    v32 = v1 & 0xC000000000000001;
    v28 = i + 32;
    v29 = v0[13];
    v1 = MEMORY[0x1E69E7CC0];
    v30 = v2;
    while (1)
    {
      if (v32)
      {
        v5 = MEMORY[0x1D387D8B0](v4, v0[25]);
      }

      else
      {
        if (v4 >= *(v31 + 16))
        {
          goto LABEL_16;
        }

        v5 = *(v28 + 8 * v4);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = v0[14];
      v9 = v0[10];
      v10 = v0[11];
      v11 = [v5 timestamp];
      sub_1D0B633C0();

      [v6 coordinate];
      [v6 coordinate];
      [v6 altitude];
      v12 = [objc_opt_self() meters];
      sub_1D0B2B49C(0, &qword_1EE0528B0, 0x1E696B058);
      sub_1D0B63230();
      sub_1D0B63CE0();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1D0B2D06C(0, *(v1 + 16) + 1, 1, v1);
      }

      v14 = *(v1 + 16);
      v13 = *(v1 + 24);
      if (v14 >= v13 >> 1)
      {
        v1 = sub_1D0B2D06C(v13 > 1, v14 + 1, 1, v1);
      }

      v15 = v0[14];
      v16 = v0[12];
      *(v1 + 16) = v14 + 1;
      (*(v29 + 32))(v1 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v14, v15, v16);
      ++v4;
      if (v7 == v30)
      {
        v17 = v0[25];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v2 = sub_1D0B645A0();
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v19 = v0[23];
  v18 = v0[24];
  v21 = v0[21];
  v20 = v0[22];
  v22 = v0[20];
  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[11];
  v33 = v0[10];

  (*(v19 + 8))(v18, v20);

  v26 = v0[1];

  return v26(v1);
}

uint64_t sub_1D0B50F94()
{
  v1 = v0[9];
  (*(v0[19] + 8))(v0[21], v0[18]);

  return MEMORY[0x1EEE6DFA0](sub_1D0B51010, v1, 0);
}

uint64_t sub_1D0B51010()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v7 = v0[1];
  v8 = v0[27];

  return v7();
}

uint64_t sub_1D0B510E8(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(*(sub_1D0B640E0() - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v5 = sub_1D0B641C0();
  *(v3 + 40) = v5;
  v6 = *(v5 - 8);
  *(v3 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F40, &qword_1D0B667A0) - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v9 = sub_1D0B632D0();
  *(v3 + 72) = v9;
  v10 = *(v9 - 8);
  *(v3 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v12 = sub_1D0B634A0();
  *(v3 + 96) = v12;
  v13 = *(v12 - 8);
  *(v3 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B512C8, 0, 0);
}

uint64_t sub_1D0B512C8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v22 = *(v0 + 64);
  v23 = *(v0 + 96);
  v24 = *(v0 + 56);
  v25 = *(v0 + 144);
  v26 = *(v0 + 32);
  v27 = *(v0 + 24);
  v20 = *(v0 + 112);
  v21 = *(v0 + 16);
  sub_1D0B63460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F48, &qword_1D0B667A8);
  v3 = sub_1D0B63490();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D0B66690;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, *MEMORY[0x1E6969A48], v3);
  v9(v8 + v5, *MEMORY[0x1E6969A78], v3);
  v9(v8 + 2 * v5, *MEMORY[0x1E6969A68], v3);
  v9(v8 + 3 * v5, *MEMORY[0x1E6969A50], v3);
  sub_1D0B35330(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0B63450();

  (*(v1 + 16))(v22, v20, v23);
  (*(v1 + 56))(v22, 0, 1, v23);
  sub_1D0B632C0();
  v10 = objc_opt_self();
  v11 = sub_1D0B632A0();
  v12 = sub_1D0B632A0();
  v13 = [v10 predicateForActivitySummariesBetweenStartDateComponents:v11 endDateComponents:v12];
  *(v0 + 120) = v13;

  v14 = v13;
  sub_1D0B641B0();
  sub_1D0B640D0();
  sub_1D0B64190();
  v15 = *(v27 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
  v16 = *(MEMORY[0x1E696B400] + 4);
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *v17 = v0;
  v17[1] = sub_1D0B5161C;
  v18 = *(v0 + 56);

  return MEMORY[0x1EEDC76F0](v15);
}

uint64_t sub_1D0B5161C(uint64_t a1)
{
  v3 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {

    v4 = sub_1D0B518C8;
  }

  else
  {
    v4 = sub_1D0B51738;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D0B51738()
{
  v1 = v0[17];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v5 = v0[17];
    }

    result = sub_1D0B645A0();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v6 = v0[17];
    v7 = v0[15];

    v18 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1D387D8B0](0, v0[17]);
    v17 = v0[17];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[17] + 32);
  }

  v18 = v3;
  v4 = v0[15];

LABEL_11:
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];
  v15 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);

  v16 = v0[1];

  return v16(v18);
}

uint64_t sub_1D0B518C8()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 32);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_1D0B519D0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D0B641C0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F40, &qword_1D0B667A0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1D0B633F0();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_1D0B632D0();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v13 = sub_1D0B634A0();
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B51BE8, 0, 0);
}

uint64_t sub_1D0B51BE8()
{
  v1 = v0[17];
  v37 = v0[16];
  v34 = v0[15];
  v29 = v0[14];
  v30 = v0[13];
  v27 = v0[10];
  v35 = v0[8];
  v36 = v0[9];
  v31 = v0[6];
  v32 = v0[3];
  v33 = v0[7];
  v21 = v0[2];
  sub_1D0B63460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F48, &qword_1D0B667A8);
  v2 = sub_1D0B63490();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v28 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D0B66690;
  v26 = *MEMORY[0x1E6969A48];
  v6 = *(v3 + 104);
  v6(v5 + v28);
  v25 = *MEMORY[0x1E6969A78];
  v6(v5 + v28 + v4);
  v24 = *MEMORY[0x1E6969A68];
  v6(v5 + v28 + 2 * v4);
  v23 = *MEMORY[0x1E6969A50];
  v6(v5 + v28 + 3 * v4);
  sub_1D0B35330(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0B63280();
  sub_1D0B63450();

  v20 = *(v36 + 8);
  v20(v27, v35);
  v19 = *(v37 + 16);
  v19(v33, v1, v34);
  v7 = *(v37 + 56);
  v7(v33, 0, 1, v34);
  sub_1D0B632C0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D0B66690;
  (v6)(v8 + v28, v26, v2);
  (v6)(v8 + v28 + v4, v25, v2);
  (v6)(v8 + v28 + 2 * v4, v24, v2);
  (v6)(v8 + v28 + 3 * v4, v23, v2);
  sub_1D0B35330(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0B63260();
  sub_1D0B63450();

  v20(v27, v35);
  v19(v33, v1, v34);
  v7(v33, 0, 1, v34);
  sub_1D0B632C0();
  v9 = objc_opt_self();
  v10 = sub_1D0B632A0();
  v11 = sub_1D0B632A0();
  v12 = [v9 predicateForActivitySummariesBetweenStartDateComponents:v10 endDateComponents:v11];
  v22[18] = v12;

  v13 = v12;
  sub_1D0B641B0();
  v14 = *(v32 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
  v15 = *(MEMORY[0x1E696B400] + 4);
  v16 = swift_task_alloc();
  v22[19] = v16;
  *v16 = v22;
  v16[1] = sub_1D0B520FC;
  v17 = v22[6];

  return MEMORY[0x1EEDC76F0](v14);
}

uint64_t sub_1D0B520FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_1D0B52358;
  }

  else
  {
    *(v4 + 168) = a1;
    v7 = sub_1D0B52224;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D0B52224()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v14 = *(v0 + 120);
  v15 = *(v0 + 80);
  v7 = *(v0 + 48);
  v16 = *(v0 + 56);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  (*(v8 + 8))(v7, v9);
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v3, v5);
  (*(v2 + 8))(v1, v14);

  v11 = *(v0 + 8);
  v12 = *(v0 + 168);

  return v11(v12);
}

uint64_t sub_1D0B52358()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v14 = *(v0 + 120);
  v15 = *(v0 + 80);
  v7 = *(v0 + 48);
  v16 = *(v0 + 56);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  (*(v8 + 8))(v7, v9);
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v3, v5);
  (*(v2 + 8))(v1, v14);

  v11 = *(v0 + 8);
  v12 = *(v0 + 160);

  return v11();
}

uint64_t sub_1D0B52488(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_1D0B633F0();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B5254C, v2, 0);
}

uint64_t sub_1D0B5254C()
{
  v1 = [objc_opt_self() quantityTypeForIdentifier_];
  v0[12] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[11];
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    sub_1D0B63440();
    v7 = objc_opt_self();
    v8 = sub_1D0B633A0();
    v9 = sub_1D0B633A0();
    v10 = [v7 predicateForSamplesWithStartDate:v8 endDate:v9 options:1];
    v0[13] = v10;

    v11 = sub_1D0B5CB68(qword_1EE052AE0, type metadata accessor for HealthStore);
    v12 = swift_task_alloc();
    v0[14] = v12;
    v12[2] = v2;
    v12[3] = v10;
    v12[4] = v6;
    v12[5] = v4;
    v13 = *(MEMORY[0x1E69E88D0] + 4);
    v14 = swift_task_alloc();
    v0[15] = v14;
    v15 = sub_1D0B2B49C(0, &qword_1EC5F9F50, 0x1E696C348);
    *v14 = v0;
    v14[1] = sub_1D0B52820;

    return MEMORY[0x1EEE6DDE0](v0 + 5, v4, v11, 0xD00000000000001CLL, 0x80000001D0B675E0, sub_1D0B5C180, v12, v15);
  }

  else
  {
    v16 = v0[6];
    sub_1D0B64600();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x1D387D540](0xD000000000000020, 0x80000001D0B675B0);
    v0[4] = v16;
    type metadata accessor for HKQuantityTypeIdentifier();
    sub_1D0B646B0();
    v17 = v0[2];
    v18 = v0[3];
    return sub_1D0B646F0();
  }
}

uint64_t sub_1D0B52820()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D0B5294C, v3, 0);
}

uint64_t sub_1D0B5294C()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 40);

  v6 = *(v0 + 8);

  return v6(v5);
}

void sub_1D0B529E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F88, &qword_1D0B66B10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = aBlock - v13;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  (*(v11 + 32))(v16 + v15, v14, v10);
  v17 = objc_allocWithZone(MEMORY[0x1E696C4E0]);
  aBlock[4] = sub_1D0B5F1AC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0B597B8;
  aBlock[3] = &block_descriptor_203;
  v18 = _Block_copy(aBlock);
  v19 = a4;
  v20 = [v17 initWithQuantityType:a2 quantitySamplePredicate:a3 options:16 completionHandler:v18];
  _Block_release(v18);

  [*(a5 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore) executeQuery_];
}

void sub_1D0B52C24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D0B2B49C(0, &qword_1EE0528A8, 0x1E696C370);
  v6 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (v6 && (v7 = v6, v8 = [v6 canonicalUnit], v7, v8))
  {
    if (![a2 sumQuantity])
    {
      v9 = [objc_opt_self() quantityWithUnit:v8 doubleValue:0.0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F88, &qword_1D0B66B10);
    sub_1D0B643C0();
  }

  else
  {
    sub_1D0B64600();
    MEMORY[0x1D387D540](0xD000000000000032, 0x80000001D0B67750);
    type metadata accessor for HKQuantityTypeIdentifier();
    sub_1D0B646B0();
    sub_1D0B646F0();
    __break(1u);
  }
}

uint64_t sub_1D0B52DCC(uint64_t a1, uint64_t a2)
{
  v3[707] = v2;
  v3[701] = a2;
  v3[695] = a1;
  v4 = sub_1D0B640C0();
  v3[713] = v4;
  v5 = *(v4 - 8);
  v3[719] = v5;
  v6 = *(v5 + 64) + 15;
  v3[725] = swift_task_alloc();
  v7 = sub_1D0B63AD0();
  v3[731] = v7;
  v8 = *(v7 - 8);
  v3[737] = v8;
  v9 = *(v8 + 64) + 15;
  v3[743] = swift_task_alloc();
  v3[749] = swift_task_alloc();
  v10 = sub_1D0B63290();
  v3[755] = v10;
  v11 = *(v10 - 8);
  v3[761] = v11;
  v3[767] = *(v11 + 64);
  v3[773] = swift_task_alloc();
  v3[779] = swift_task_alloc();
  v12 = sub_1D0B633F0();
  v3[785] = v12;
  v13 = *(v12 - 8);
  v3[791] = v13;
  v3[797] = *(v13 + 64);
  v3[803] = swift_task_alloc();
  v3[809] = swift_task_alloc();
  v3[815] = swift_task_alloc();
  v3[821] = swift_task_alloc();
  v3[822] = swift_task_alloc();
  v3[823] = swift_task_alloc();
  v3[824] = swift_task_alloc();
  v3[825] = swift_task_alloc();
  v3[826] = swift_task_alloc();
  v3[827] = swift_task_alloc();
  v3[828] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B53048, v2, 0);
}

uint64_t sub_1D0B53048()
{
  v84 = v0;
  v1 = v0[828];
  v2 = v0[827];
  v3 = v0[826];
  v4 = v0[791];
  v5 = v0[785];
  v6 = v0[779];
  v79 = v0[773];
  v80 = v0[797];
  v81 = v0[767];
  v7 = v0[761];
  v75 = v0[755];
  v76 = v0[825];
  v68 = v0[707];
  v8 = v0[701];
  v73 = v8;
  sub_1D0B63440();
  v9 = v1;
  v10 = *(v4 + 16);
  v10(v2, v9, v5);
  v10(v3, v8, v5);
  sub_1D0B63270();
  (*(v7 + 16))(v79, v6, v75);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v68;
  (*(v7 + 32))(v12 + v11, v79, v75);
  v13 = swift_allocObject();
  v0[829] = v13;
  *(v13 + 16) = &unk_1D0B667D0;
  *(v13 + 24) = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F58, &qword_1D0B667E8);
  swift_asyncLet_begin();
  v14 = v76;
  v15 = v5;
  v10(v76, v73, v5);
  v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v68;
  v82 = v16;
  v77 = *(v4 + 32);
  v77(v17 + v16, v14, v5);
  v18 = swift_allocObject();
  v0[830] = v18;
  *(v18 + 16) = &unk_1D0B667F8;
  *(v18 + 24) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F60, &qword_1D0B66810);
  swift_asyncLet_begin();
  sub_1D0B633D0();
  sub_1D0B63330();
  v20 = v19;
  v21 = *(v4 + 8);
  v0[831] = v21;
  v0[832] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v2, v15);
  if (fabs(v20) >= 30.0)
  {
    v28 = v0[824];
    v29 = v0[785];
    v30 = v0[725];
    v31 = v0[701];
    sub_1D0B63F50();
    v78 = v10;
    v10(v28, v31, v29);
    v32 = sub_1D0B640A0();
    v33 = sub_1D0B644F0();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[824];
    v36 = v0[785];
    v37 = v0[725];
    v38 = v0[719];
    v39 = v0[713];
    if (v34)
    {
      v40 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v83 = v74;
      *v40 = 136315138;
      sub_1D0B5CB68(&qword_1EC5F97D8, MEMORY[0x1E6969530]);
      v69 = v37;
      v71 = v39;
      v41 = sub_1D0B647B0();
      v42 = v33;
      v44 = v43;
      v21(v35, v36);
      v45 = sub_1D0B22738(v41, v44, &v83);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1D0B1E000, v32, v42, "makeRingsRepresentable - slow path for date %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x1D387E1B0](v74, -1, -1);
      MEMORY[0x1D387E1B0](v40, -1, -1);

      (*(v38 + 8))(v69, v71);
    }

    else
    {

      v21(v35, v36);
      (*(v38 + 8))(v37, v39);
    }

    v46 = v0[823];
    v47 = v0[822];
    v65 = v0[821];
    v66 = v0[815];
    v48 = v0[809];
    v67 = v48;
    v70 = v0[803];
    v49 = v0[785];
    v72 = v0[743];
    v50 = v0[707];
    v51 = v0[701];
    v78(v46, v51, v49);
    v52 = swift_allocObject();
    *(v52 + 16) = v50;
    v77(v52 + v82, v46, v49);
    v53 = swift_allocObject();
    v0[835] = v53;
    *(v53 + 16) = &unk_1D0B66820;
    *(v53 + 24) = v52;

    sub_1D0B2B49C(0, &qword_1EC5F9F50, 0x1E696C348);
    swift_asyncLet_begin();
    v78(v47, v51, v49);
    v54 = swift_allocObject();
    *(v54 + 16) = v50;
    v77(v54 + v82, v47, v49);
    v55 = swift_allocObject();
    v0[836] = v55;
    *(v55 + 16) = &unk_1D0B66840;
    *(v55 + 24) = v54;

    swift_asyncLet_begin();
    v78(v65, v51, v49);
    v56 = swift_allocObject();
    *(v56 + 16) = v50;
    v77(v56 + v82, v65, v49);
    v57 = swift_allocObject();
    v0[837] = v57;
    *(v57 + 16) = &unk_1D0B66858;
    *(v57 + 24) = v56;

    swift_asyncLet_begin();
    v78(v66, v51, v49);
    v58 = swift_allocObject();
    *(v58 + 16) = v50;
    v77(v58 + v82, v66, v49);
    v59 = swift_allocObject();
    v0[838] = v59;
    *(v59 + 16) = &unk_1D0B66870;
    *(v59 + 24) = v58;

    swift_asyncLet_begin();
    v78(v67, v51, v49);
    v60 = swift_allocObject();
    *(v60 + 16) = v50;
    v77(v60 + v82, v67, v49);
    v61 = swift_allocObject();
    v0[839] = v61;
    *(v61 + 16) = &unk_1D0B66888;
    *(v61 + 24) = v60;

    swift_asyncLet_begin();
    v78(v70, v51, v49);
    v62 = swift_allocObject();
    *(v62 + 16) = v50;
    v77(v62 + v82, v70, v49);
    v63 = swift_allocObject();
    v0[840] = v63;
    *(v63 + 16) = &unk_1D0B668A0;
    *(v63 + 24) = v62;

    swift_asyncLet_begin();
    sub_1D0B63350();
    v24 = sub_1D0B53F20;
    v25 = v0 + 82;
    v26 = v0 + 690;
    v27 = v0 + 689;
  }

  else
  {
    v22 = v0[749];
    v23 = v0[701];
    sub_1D0B63350();
    v24 = sub_1D0B53AD8;
    v25 = v0 + 82;
    v26 = v0 + 678;
    v27 = v0 + 689;
  }

  return MEMORY[0x1EEE6DEC0](v25, v27, v24, v26);
}

uint64_t sub_1D0B53AD8()
{
  v1[833] = v0;
  if (v0)
  {
    v2 = v1[707];
    (*(v1[737] + 8))(v1[749], v1[731]);

    return MEMORY[0x1EEE6DFA0](sub_1D0B54D40, v2, 0);
  }

  else
  {
    v1[834] = v1[689];

    return MEMORY[0x1EEE6DEB8](v1 + 242, v1 + 653, sub_1D0B53BB0, v1 + 660);
  }
}

uint64_t sub_1D0B53BCC()
{
  v1 = *(v0 + 6672);
  v2 = *(v0 + 5992);
  v3 = *(v0 + 5896);
  v4 = *(v0 + 5848);
  v5 = *(v0 + 5560);
  v6 = *(v0 + 5224);
  sub_1D0B63F20();

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEB0](v0 + 1936, v0 + 5224, sub_1D0B53CD4, v0 + 5232);
}

uint64_t sub_1D0B53D34()
{
  v1 = v0[832];
  v2 = v0[831];
  v3 = v0[830];
  v4 = v0[829];
  v5 = v0[828];
  v6 = v0[827];
  v7 = v0[826];
  v12 = v0[825];
  v13 = v0[824];
  v14 = v0[823];
  v15 = v0[822];
  v16 = v0[821];
  v17 = v0[815];
  v18 = v0[809];
  v19 = v0[803];
  v8 = v0[785];
  v9 = v0[773];
  v20 = v0[749];
  v21 = v0[743];
  v22 = v0[725];
  (*(v0[761] + 8))(v0[779], v0[755]);
  v2(v5, v8);

  sub_1D0B5CB40(0);
  sub_1D0B5CB40(0);
  sub_1D0B5CB40(0);
  sub_1D0B5CB40(0);
  sub_1D0B5CB40(0);
  sub_1D0B5CB40(0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D0B53F20()
{
  v1[841] = v0;
  if (v0)
  {
    v2 = v1[707];
    (*(v1[737] + 8))(v1[743], v1[731]);

    return MEMORY[0x1EEE6DFA0](sub_1D0B548A8, v2, 0);
  }

  else
  {
    v1[842] = v1[689];

    return MEMORY[0x1EEE6DEB8](v1 + 242, v1 + 653, sub_1D0B53FF8, v1 + 744);
  }
}

uint64_t sub_1D0B53FF8()
{
  v1 = *(v0 + 5224);
  *(v0 + 6744) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DEB8](v0 + 3216, v0 + 5320, sub_1D0B54070, v0 + 6000);
}

uint64_t sub_1D0B54070()
{
  v1 = *(v0 + 5320);
  *(v0 + 6752) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DEB8](v0 + 4496, v0 + 5416, sub_1D0B540F4, v0 + 6048);
}

uint64_t sub_1D0B540F4()
{
  v1 = *(v0 + 5416);
  *(v0 + 6760) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DEB8](v0 + 16, v0 + 5176, sub_1D0B5416C, v0 + 6096);
}

uint64_t sub_1D0B5416C()
{
  v1 = *(v0 + 5176);
  *(v0 + 6768) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DEB8](v0 + 3856, v0 + 5464, sub_1D0B541E4, v0 + 6144);
}

uint64_t sub_1D0B541E4()
{
  v1 = *(v0 + 5464);
  *(v0 + 6776) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DEB8](v0 + 2576, v0 + 5368, sub_1D0B5425C, v0 + 6192);
}

uint64_t sub_1D0B5425C()
{
  v1 = *(v0 + 5368);
  *(v0 + 6784) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DEB8](v0 + 1296, v0 + 5272, sub_1D0B542D4, v0 + 6240);
}

uint64_t sub_1D0B542F0()
{
  v1 = *(v0 + 6784);
  v2 = *(v0 + 6776);
  v3 = *(v0 + 6768);
  v11 = *(v0 + 6752);
  v12 = *(v0 + 6760);
  v4 = *(v0 + 6744);
  v5 = *(v0 + 6736);
  v6 = *(v0 + 5944);
  v7 = *(v0 + 5896);
  v13 = *(v0 + 5848);
  v8 = *(v0 + 5560);
  v10 = *(v0 + 5272);
  sub_1D0B63F20();

  (*(v7 + 8))(v6, v13);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 5272, sub_1D0B54440, v0 + 6288);
}

uint64_t sub_1D0B5463C()
{
  v13 = v0[838];
  v14 = v0[839];
  v1 = v0[837];
  v2 = v0[836];
  v3 = v0[835];
  v4 = v0[832];
  v5 = v0[831];
  v6 = v0[830];
  v7 = v0[829];
  v8 = v0[828];
  v15 = v0[827];
  v16 = v0[826];
  v17 = v0[840];
  v18 = v0[825];
  v19 = v0[824];
  v20 = v0[823];
  v21 = v0[822];
  v24 = v0[815];
  v25 = v0[809];
  v26 = v0[803];
  v9 = v0[785];
  v22 = v0[821];
  v23 = v0[779];
  v10 = v0[755];
  v27 = v0[773];
  v28 = v0[749];
  v29 = v0[743];
  v30 = v0[725];
  (*(v0[761] + 8))();
  v5(v8, v9);

  sub_1D0B5CB40(&unk_1D0B66830);
  sub_1D0B5CB40(&unk_1D0B66848);
  sub_1D0B5CB40(&unk_1D0B66860);
  sub_1D0B5CB40(&unk_1D0B66878);
  sub_1D0B5CB40(&unk_1D0B66890);
  sub_1D0B5CB40(&unk_1D0B668A8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B54ACC()
{
  v31 = v0[841];
  v13 = v0[838];
  v14 = v0[839];
  v1 = v0[837];
  v2 = v0[836];
  v3 = v0[835];
  v4 = v0[832];
  v5 = v0[831];
  v6 = v0[830];
  v7 = v0[829];
  v8 = v0[828];
  v15 = v0[827];
  v16 = v0[826];
  v17 = v0[840];
  v18 = v0[825];
  v19 = v0[824];
  v20 = v0[823];
  v21 = v0[822];
  v24 = v0[815];
  v25 = v0[809];
  v9 = v0[785];
  v22 = v0[821];
  v23 = v0[779];
  v26 = v0[803];
  v27 = v0[773];
  v10 = v0[755];
  v28 = v0[749];
  v29 = v0[743];
  v30 = v0[725];
  (*(v0[761] + 8))();
  v5(v8, v9);

  sub_1D0B5CB40(&unk_1D0B66830);
  sub_1D0B5CB40(&unk_1D0B66848);
  sub_1D0B5CB40(&unk_1D0B66860);
  sub_1D0B5CB40(&unk_1D0B66878);
  sub_1D0B5CB40(&unk_1D0B66890);
  sub_1D0B5CB40(&unk_1D0B668A8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D0B54DC8()
{
  v23 = v0[833];
  v1 = v0[832];
  v2 = v0[831];
  v3 = v0[830];
  v4 = v0[829];
  v5 = v0[828];
  v6 = v0[827];
  v7 = v0[826];
  v12 = v0[825];
  v13 = v0[824];
  v14 = v0[823];
  v15 = v0[822];
  v16 = v0[821];
  v17 = v0[815];
  v18 = v0[809];
  v19 = v0[803];
  v8 = v0[785];
  v20 = v0[773];
  v21 = v0[749];
  v9 = v0[743];
  v22 = v0[725];
  (*(v0[761] + 8))(v0[779], v0[755]);
  v2(v5, v8);

  sub_1D0B5CB40(0);
  sub_1D0B5CB40(0);
  sub_1D0B5CB40(0);
  sub_1D0B5CB40(0);
  sub_1D0B5CB40(0);
  sub_1D0B5CB40(0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D0B54FB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D0B5F56C;

  return sub_1D0B4E2B4();
}

uint64_t sub_1D0B55048(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D0B55134;

  return v6();
}

uint64_t sub_1D0B55134(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1D0B55244(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D0B552E4;

  return sub_1D0B510E8(a2, 1);
}

uint64_t sub_1D0B552E4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1D0B553E0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D0B5F54C;

  return v6();
}

uint64_t sub_1D0B554CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D0B554EC, 0, 0);
}

uint64_t sub_1D0B554EC()
{
  v1 = *MEMORY[0x1E696BC38];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D0B5558C;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1D0B52488(v1, v3);
}

uint64_t sub_1D0B5558C(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1D0B55688(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D0B55774;

  return v6();
}

uint64_t sub_1D0B55774(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1D0B55888(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D0B558A8, 0, 0);
}

uint64_t sub_1D0B558A8()
{
  v1 = *MEMORY[0x1E696BC48];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D0B5F558;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1D0B52488(v1, v3);
}

uint64_t sub_1D0B55948(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D0B55968, 0, 0);
}

uint64_t sub_1D0B55968()
{
  v1 = *MEMORY[0x1E696BC40];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D0B5F558;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1D0B52488(v1, v3);
}

uint64_t sub_1D0B55A08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D0B55A28, 0, 0);
}

uint64_t sub_1D0B55A28()
{
  v1 = *MEMORY[0x1E696BC60];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D0B5F558;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1D0B52488(v1, v3);
}

uint64_t sub_1D0B55AC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D0B55AE8, 0, 0);
}

uint64_t sub_1D0B55AE8()
{
  v1 = *MEMORY[0x1E696BDC8];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D0B5F558;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1D0B52488(v1, v3);
}

uint64_t sub_1D0B55B88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D0B55BA8, 0, 0);
}

uint64_t sub_1D0B55BA8()
{
  v1 = *MEMORY[0x1E696BD20];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D0B5F558;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1D0B52488(v1, v3);
}

uint64_t sub_1D0B55C48()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F68, &qword_1D0B668B8);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = sub_1D0B640C0();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B55D70, v0, 0);
}

uint64_t sub_1D0B55D70()
{
  v1 = v0[25];
  sub_1D0B63F50();
  v2 = sub_1D0B640A0();
  v3 = sub_1D0B644F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D0B1E000, v2, v3, "Requesting out of process health assertion", v4, 2u);
    MEMORY[0x1D387E1B0](v4, -1, -1);
  }

  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v14 = v0[22];
  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[19];

  (*(v6 + 8))(v5, v7);
  v15 = *(v10 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
  v11 = sub_1D0B64260();
  v0[26] = v11;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D0B5601C;
  swift_continuation_init();
  v0[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_1D0B2B49C(0, &qword_1EE052890, 0x1E696C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F98F8, &qword_1D0B668C0);
  sub_1D0B643A0();
  (*(v9 + 32))(boxed_opaque_existential_1, v14, v8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D0B56254;
  v0[13] = &block_descriptor_2;
  [v15 requestDatabaseAccessibilityAssertion:v11 timeout:900.0 completion:?];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D0B5601C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_1D0B561C4;
  }

  else
  {
    v5 = sub_1D0B5613C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D0B5613C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1D0B561C4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[27];

  return v5();
}

void sub_1D0B56254(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F68, &qword_1D0B668B8);
    sub_1D0B643B0();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F68, &qword_1D0B668B8);
    sub_1D0B643C0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D0B56304()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F68, &qword_1D0B668B8);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = sub_1D0B640C0();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B5642C, v0, 0);
}

uint64_t sub_1D0B5642C()
{
  v1 = v0[25];
  sub_1D0B63F50();
  v2 = sub_1D0B640A0();
  v3 = sub_1D0B644F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D0B1E000, v2, v3, "Requesting out of process workout health assertion", v4, 2u);
    MEMORY[0x1D387E1B0](v4, -1, -1);
  }

  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v14 = v0[22];
  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[19];

  (*(v6 + 8))(v5, v7);
  v15 = *(v10 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
  v11 = sub_1D0B64260();
  v0[26] = v11;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D0B566C8;
  swift_continuation_init();
  v0[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_1D0B2B49C(0, &qword_1EE052890, 0x1E696C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F98F8, &qword_1D0B668C0);
  sub_1D0B643A0();
  (*(v9 + 32))(boxed_opaque_existential_1, v14, v8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D0B56254;
  v0[13] = &block_descriptor_119;
  [v15 requestDatabaseAccessibilityAssertionForOwnerIdentifier:v11 contextType:2 completion:?];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D0B566C8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_1D0B5F544;
  }

  else
  {
    v5 = sub_1D0B5F554;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D0B567E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D0B640C0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1D0B63780();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B08, &qword_1D0B65888) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_1D0B63660();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  v14 = sub_1D0B63760();
  v3[15] = v14;
  v15 = *(v14 - 8);
  v3[16] = v15;
  v16 = *(v15 + 64) + 15;
  v3[17] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F70, &qword_1D0B668E0);
  v3[18] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F78, &qword_1D0B668E8);
  v3[21] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v21 = sub_1D0B63650();
  v3[23] = v21;
  v22 = *(v21 - 8);
  v3[24] = v22;
  v23 = *(v22 + 64) + 15;
  v3[25] = swift_task_alloc();
  v24 = sub_1D0B633F0();
  v3[26] = v24;
  v25 = *(v24 - 8);
  v3[27] = v25;
  v26 = *(v25 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v27 = sub_1D0B641E0();
  v3[30] = v27;
  v28 = *(v27 - 8);
  v3[31] = v28;
  v29 = *(v28 + 64) + 15;
  v3[32] = swift_task_alloc();
  v30 = sub_1D0B634A0();
  v3[33] = v30;
  v31 = *(v30 - 8);
  v3[34] = v31;
  v32 = *(v31 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B56C04, v2, 0);
}

uint64_t sub_1D0B56C04()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v40 = v0[33];
  v4 = v0[32];
  v5 = v0[29];
  v41 = v0[30];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[3];
  v9 = [objc_opt_self() hk_gregorianCalendar];
  sub_1D0B63470();

  v10 = *(v6 + 16);
  v0[37] = v10;
  v0[38] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v5, v8, v7);
  v11 = *(v3 + 16);
  v11(v1, v2, v40);
  sub_1D0B641D0();
  sub_1D0B5CB68(&qword_1EC5F9F80, MEMORY[0x1E696B418]);
  v12 = sub_1D0B64240();
  if (v12)
  {
    v14 = v0[32];
    v34 = v0[33];
    v35 = v0[36];
    v16 = v0[30];
    v15 = v0[31];
    v32 = v0[35];
    v33 = v0[25];
    v17 = v0[22];
    v30 = v0[21];
    v31 = v11;
    v18 = v0[19];
    v19 = v0[20];
    v20 = v0[18];
    v36 = v0[13];
    v37 = v0[14];
    v38 = v0[12];
    v39 = v0[17];
    v42 = v0[4];
    v21 = v15[2];
    v21(v19, v14, v16);
    v21(v19 + *(v20 + 48), v14, v16);
    sub_1D0B2B870(v19, v18, &qword_1EC5F9F70, &qword_1D0B668E0);
    v29 = *(v20 + 48);
    v22 = v15[4];
    v22(v17, v18, v16);
    v23 = v15[1];
    v0[39] = v23;
    v0[40] = (v15 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v18 + v29, v16);
    sub_1D0B2B5B8(v19, v18, &qword_1EC5F9F70, &qword_1D0B668E0);
    v22(v17 + *(v30 + 36), v18 + *(v20 + 48), v16);
    v23(v18, v16);
    v31(v32, v35, v34);
    sub_1D0B63620();
    sub_1D0B63630();
    sub_1D0B63640();
    (*(v36 + 104))(v37, *MEMORY[0x1E69A2E30], v38);
    sub_1D0B63750();
    v24 = *(v42 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
    v25 = *(MEMORY[0x1E69A2F40] + 4);
    v26 = swift_task_alloc();
    v0[41] = v26;
    *v26 = v0;
    v26[1] = sub_1D0B56F88;
    v27 = v0[17];
    v12 = v0[10];
    v13 = v24;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE0D348](v12, v13);
}

uint64_t sub_1D0B56F88()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;

  v5 = *(v2 + 32);
  if (v0)
  {

    v6 = sub_1D0B57730;
  }

  else
  {
    v6 = sub_1D0B570C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D0B570C0()
{
  v83 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_1D0B63770();
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + 16);
  v6 = v0[11];
  if (v5)
  {
    v7 = v5 - 1;
    v8 = sub_1D0B636E0();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v6, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7, v8);

    (*(v9 + 56))(v6, 0, 1, v8);
  }

  else
  {

    v8 = sub_1D0B636E0();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  v10 = v0[11];
  sub_1D0B636E0();
  v11 = *(v8 - 8);
  if ((*(v11 + 48))(v10, 1, v8) == 1)
  {
    v79 = v11;
    v13 = v0[37];
    v12 = v0[38];
    v14 = v0[28];
    v15 = v0[26];
    v16 = v0[7];
    v17 = v0[3];
    sub_1D0B2B620(v10, &qword_1EC5F9B08, &qword_1D0B65888);
    sub_1D0B63F50();
    v13(v14, v17, v15);
    v18 = sub_1D0B640A0();
    v59 = sub_1D0B644D0();
    log = v18;
    v19 = os_log_type_enabled(v18, v59);
    v73 = v0[39];
    v76 = v0[40];
    v20 = v0[36];
    v22 = v0[33];
    v21 = v0[34];
    v68 = v0[30];
    v70 = v0[32];
    v24 = v0[27];
    v23 = v0[28];
    v25 = v0[26];
    v66 = v0[25];
    v67 = v0[24];
    v65 = v0[23];
    v26 = v0[16];
    v62 = v0[15];
    v63 = v0[17];
    v27 = v0[6];
    v28 = v0[5];
    v60 = v28;
    v61 = v0[7];
    if (v19)
    {
      v55 = v0[34];
      v58 = v8;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v82 = v30;
      *v29 = 136315138;
      sub_1D0B5CB68(&qword_1EC5F97D8, MEMORY[0x1E6969530]);
      v56 = v22;
      v57 = v20;
      v31 = sub_1D0B647B0();
      v33 = v32;
      (*(v24 + 8))(v23, v25);
      v34 = sub_1D0B22738(v31, v33, &v82);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1D0B1E000, log, v59, "Could not get Training Load day summary for %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x1D387E1B0](v30, -1, -1);
      v35 = v29;
      v8 = v58;
      MEMORY[0x1D387E1B0](v35, -1, -1);

      (*(v27 + 8))(v61, v60);
      (*(v26 + 8))(v63, v62);
      (*(v67 + 8))(v66, v65);
      v73(v70, v68);
      (*(v55 + 8))(v57, v56);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
      (*(v27 + 8))(v61, v60);
      (*(v26 + 8))(v63, v62);
      (*(v67 + 8))(v66, v65);
      v73(v70, v68);
      (*(v21 + 8))(v20, v22);
    }

    (*(v79 + 56))(v0[2], 1, 1, v8);
  }

  else
  {
    v74 = v0[40];
    v71 = v0[39];
    v36 = v0[34];
    v77 = v0[33];
    v80 = v0[36];
    v69 = v0[32];
    v37 = v0[30];
    v38 = v0[24];
    v39 = v0[25];
    v40 = v8;
    v41 = v0[23];
    v42 = v0[2];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v38 + 8))(v39, v41);
    v71(v69, v37);
    (*(v36 + 8))(v80, v77);
    (*(v11 + 32))(v42, v10, v40);
    (*(v11 + 56))(v42, 0, 1, v40);
  }

  v44 = v0[35];
  v43 = v0[36];
  v45 = v0[32];
  v47 = v0[28];
  v46 = v0[29];
  v48 = v0[25];
  v49 = v0[22];
  v51 = v0[19];
  v50 = v0[20];
  v52 = v0[17];
  v72 = v0[14];
  v75 = v0[11];
  v78 = v0[10];
  v81 = v0[7];

  v53 = v0[1];

  return v53();
}

uint64_t sub_1D0B57730()
{
  v62 = v0;
  v1 = v0[11];
  v2 = sub_1D0B636E0();
  v59 = *(*(v2 - 8) + 56);
  v59(v1, 1, 1, v2);
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[7];
  v8 = v0[3];
  sub_1D0B2B620(v0[11], &qword_1EC5F9B08, &qword_1D0B65888);
  sub_1D0B63F50();
  v4(v5, v8, v6);
  v9 = sub_1D0B640A0();
  v43 = sub_1D0B644D0();
  log = v9;
  v10 = os_log_type_enabled(v9, v43);
  v54 = v0[39];
  v56 = v0[40];
  v11 = v0[36];
  v13 = v0[33];
  v12 = v0[34];
  v52 = v0[30];
  v53 = v0[32];
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[26];
  v50 = v0[25];
  v51 = v0[24];
  v49 = v0[23];
  v17 = v0[16];
  v46 = v0[15];
  v47 = v0[17];
  v18 = v0[6];
  v19 = v0[5];
  v44 = v19;
  v45 = v0[7];
  if (v10)
  {
    v42 = v2;
    v20 = swift_slowAlloc();
    v41 = v11;
    v21 = swift_slowAlloc();
    v61 = v21;
    *v20 = 136315138;
    sub_1D0B5CB68(&qword_1EC5F97D8, MEMORY[0x1E6969530]);
    v39 = v12;
    v40 = v13;
    v22 = sub_1D0B647B0();
    v24 = v23;
    (*(v15 + 8))(v14, v16);
    v25 = sub_1D0B22738(v22, v24, &v61);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1D0B1E000, log, v43, "Could not get Training Load day summary for %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1D387E1B0](v21, -1, -1);
    v26 = v20;
    v2 = v42;
    MEMORY[0x1D387E1B0](v26, -1, -1);

    (*(v18 + 8))(v45, v44);
    (*(v17 + 8))(v47, v46);
    (*(v51 + 8))(v50, v49);
    v54(v53, v52);
    (*(v39 + 8))(v41, v40);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v18 + 8))(v45, v44);
    (*(v17 + 8))(v47, v46);
    (*(v51 + 8))(v50, v49);
    v54(v53, v52);
    (*(v12 + 8))(v11, v13);
  }

  v59(v0[2], 1, 1, v2);
  v28 = v0[35];
  v27 = v0[36];
  v29 = v0[32];
  v31 = v0[28];
  v30 = v0[29];
  v32 = v0[25];
  v33 = v0[22];
  v35 = v0[19];
  v34 = v0[20];
  v36 = v0[17];
  v55 = v0[14];
  v57 = v0[11];
  v58 = v0[10];
  v60 = v0[7];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1D0B57B68(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D0B640C0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1D0B63730();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_1D0B637B0();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F70, &qword_1D0B668E0);
  v3[14] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F78, &qword_1D0B668E8);
  v3[17] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v17 = sub_1D0B63650();
  v3[19] = v17;
  v18 = *(v17 - 8);
  v3[20] = v18;
  v19 = *(v18 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v20 = sub_1D0B633F0();
  v3[23] = v20;
  v21 = *(v20 - 8);
  v3[24] = v21;
  v22 = *(v21 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v23 = sub_1D0B641E0();
  v3[27] = v23;
  v24 = *(v23 - 8);
  v3[28] = v24;
  v25 = *(v24 + 64) + 15;
  v3[29] = swift_task_alloc();
  v26 = sub_1D0B634A0();
  v3[30] = v26;
  v27 = *(v26 - 8);
  v3[31] = v27;
  v28 = *(v27 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B57EFC, v2, 0);
}

uint64_t sub_1D0B57EFC()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v42 = v0[30];
  v4 = v0[29];
  v5 = v0[26];
  v43 = v0[27];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[3];
  v9 = [objc_opt_self() hk_gregorianCalendar];
  sub_1D0B63470();

  v10 = *(v6 + 16);
  v0[34] = v10;
  v0[35] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v5, v8, v7);
  v11 = *(v3 + 16);
  v11(v1, v2, v42);
  sub_1D0B641D0();
  sub_1D0B5CB68(&qword_1EC5F9F80, MEMORY[0x1E696B418]);
  v12 = sub_1D0B64240();
  if (v12)
  {
    v36 = v11;
    v37 = v0[33];
    v16 = v0[29];
    v35 = v0[30];
    v18 = v0[27];
    v17 = v0[28];
    v33 = v0[32];
    v34 = v0[22];
    v40 = v0[21];
    v41 = v0[19];
    v19 = v0[18];
    v32 = v0[17];
    v20 = v0[15];
    v21 = v0[16];
    v22 = v0[14];
    v38 = v0[20];
    v39 = v0[13];
    v44 = v0[4];
    v23 = v17[2];
    v23(v21, v16, v18);
    v23(v21 + *(v22 + 48), v16, v18);
    sub_1D0B2B870(v21, v20, &qword_1EC5F9F70, &qword_1D0B668E0);
    v24 = *(v22 + 48);
    v25 = v17[4];
    v25(v19, v20, v18);
    v26 = v17[1];
    v0[36] = v26;
    v0[37] = (v17 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v20 + v24, v18);
    sub_1D0B2B5B8(v21, v20, &qword_1EC5F9F70, &qword_1D0B668E0);
    v25(v19 + *(v32 + 36), v20 + *(v22 + 48), v18);
    v26(v20, v18);
    v36(v33, v37, v35);
    sub_1D0B63620();
    (*(v38 + 16))(v40, v34, v41);
    sub_1D0B637A0();
    v27 = *(v44 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
    v28 = *(MEMORY[0x1E69A2F98] + 4);
    v29 = swift_task_alloc();
    v0[38] = v29;
    *v29 = v0;
    v29[1] = sub_1D0B58268;
    v30 = v0[13];
    v12 = v0[10];
    v13 = v27;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE0D410](v12, v13, v14, v15);
}

uint64_t sub_1D0B58268()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1D0B588EC;
  }

  else
  {
    v6 = sub_1D0B58394;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D0B58394()
{
  v81 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_1D0B63720();
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v68 = v0[36];
    v71 = v0[37];
    v6 = v0[31];
    v74 = v0[30];
    v77 = v0[33];
    v63 = v0[27];
    v65 = v0[29];
    v7 = v0[20];
    v59 = v0[19];
    loga = v0[22];
    v8 = v0[12];
    v57 = v0[13];
    v9 = v0[11];
    v10 = v5 - 1;
    v11 = v0[2];
    v12 = sub_1D0B636C0();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v11, v4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10, v12);

    (*(v8 + 8))(v57, v9);
    (*(v7 + 8))(loga, v59);
    v68(v65, v63);
    (*(v6 + 8))(v77, v74);
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v17 = v0[34];
    v16 = v0[35];
    v18 = v0[25];
    v19 = v0[23];
    v20 = v0[7];
    v21 = v0[3];

    sub_1D0B63F50();
    v17(v18, v21, v19);
    v22 = sub_1D0B640A0();
    v54 = sub_1D0B644D0();
    log = v22;
    v23 = os_log_type_enabled(v22, v54);
    v24 = v0[37];
    v25 = v0[33];
    v27 = v0[30];
    v26 = v0[31];
    v75 = v0[29];
    v78 = v0[36];
    v29 = v0[24];
    v28 = v0[25];
    v30 = v0[23];
    v31 = v0[20];
    v69 = v31;
    v72 = v0[27];
    v64 = v0[19];
    v66 = v0[22];
    v32 = v0[12];
    v58 = v0[11];
    v60 = v0[13];
    v33 = v0[6];
    v34 = v0[5];
    v55 = v34;
    v56 = v0[7];
    if (v23)
    {
      v53 = v0[30];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v80 = v36;
      *v35 = 136315138;
      sub_1D0B5CB68(&qword_1EC5F97D8, MEMORY[0x1E6969530]);
      v51 = v26;
      v52 = v25;
      v37 = sub_1D0B647B0();
      v39 = v38;
      (*(v29 + 8))(v28, v30);
      v40 = sub_1D0B22738(v37, v39, &v80);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1D0B1E000, log, v54, "Could not get Vitals day summary for %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1D387E1B0](v36, -1, -1);
      MEMORY[0x1D387E1B0](v35, -1, -1);

      (*(v33 + 8))(v56, v55);
      (*(v32 + 8))(v60, v58);
      (*(v69 + 8))(v66, v64);
      v78(v75, v72);
      (*(v51 + 8))(v52, v53);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
      (*(v33 + 8))(v56, v55);
      (*(v32 + 8))(v60, v58);
      (*(v69 + 8))(v66, v64);
      v78(v75, v72);
      (*(v26 + 8))(v25, v27);
    }

    v14 = sub_1D0B636C0();
    v13 = *(v14 - 8);
    v15 = 1;
  }

  v42 = v0[32];
  v41 = v0[33];
  v43 = v0[29];
  v45 = v0[25];
  v44 = v0[26];
  v47 = v0[21];
  v46 = v0[22];
  v48 = v0[18];
  v67 = v0[16];
  v70 = v0[15];
  v73 = v0[13];
  v76 = v0[10];
  v79 = v0[7];
  (*(v13 + 56))(v0[2], v15, 1, v14);

  v49 = v0[1];

  return v49();
}

uint64_t sub_1D0B588EC()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[31];
  v14 = v0[30];
  v15 = v0[32];
  v5 = v0[29];
  v6 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v7 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v18 = v0[21];
  v19 = v0[18];
  v21 = v0[16];
  v22 = v0[15];
  v20 = v0[13];
  v10 = v0[10];
  v23 = v0[7];
  (*(v0[12] + 8))();
  (*(v8 + 8))(v7, v9);
  v1(v5, v6);
  (*(v4 + 8))(v3, v14);

  v11 = v0[1];
  v12 = v0[39];

  return v11();
}

uint64_t HealthStore.deinit()
{
  v1 = OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_calendar;
  v2 = sub_1D0B634A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HealthStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_calendar;
  v2 = sub_1D0B634A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D0B58BC0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0B5F55C;

  return sub_1D0B4C0D8(a1);
}

uint64_t sub_1D0B58C58(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B5F56C;

  return sub_1D0B4CAE0(a1, a2);
}

uint64_t sub_1D0B58D00(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0B5F56C;

  return (sub_1D0B5AD98)(a1);
}

uint64_t sub_1D0B58DB0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D0B5F56C;

  return sub_1D0B4E2B4();
}

uint64_t sub_1D0B58E40(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D0B5F56C;

  return sub_1D0B4F2D4(a1, a2, a3);
}

uint64_t sub_1D0B58EF0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B5F56C;

  return sub_1D0B5B320(a1, a2);
}

uint64_t sub_1D0B58FAC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0B5F56C;

  return sub_1D0B50408(a1);
}

uint64_t sub_1D0B59044(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B5F55C;

  return sub_1D0B510E8(a1, a2);
}

uint64_t sub_1D0B590EC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0B5F56C;

  return sub_1D0B519D0(a1);
}

uint64_t sub_1D0B59184(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B5F55C;

  return sub_1D0B52488(a1, a2);
}

uint64_t sub_1D0B5922C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B2FC90;

  return sub_1D0B52DCC(a1, a2);
}

uint64_t sub_1D0B592D8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D0B5F56C;

  return sub_1D0B55C48();
}

uint64_t sub_1D0B59368()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D0B5F56C;

  return sub_1D0B56304();
}

uint64_t sub_1D0B593F8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B2E1C4;

  return sub_1D0B567E8(a1, a2);
}

uint64_t sub_1D0B594A4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B2E1C4;

  return sub_1D0B57B68(a1, a2);
}

uint64_t sub_1D0B59550(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1D0B2B49C(0, &qword_1EE052888, 0x1E696C3A8);
    v5 = sub_1D0B64340();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_1D0B59608(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, unsigned int a6, void *a7)
{
  v27 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB8, &qword_1D0B66B38);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - v15;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  if (a4)
  {
    sub_1D0B63250();
    v19 = sub_1D0B63290();
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  }

  else
  {
    v20 = sub_1D0B63290();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  }

  v21 = a2;
  v22 = a3;
  v23 = a5;
  v24 = a7;
  v17(v21, a3, v16, a5, v27, a7);

  return sub_1D0B2B620(v16, &qword_1EC5F9FB8, &qword_1D0B66B38);
}

void sub_1D0B597B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

void *sub_1D0B59858(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AA8, &qword_1D0B66790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1D0B598E0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D0B5AD84(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D0B5995C(v6);
  return sub_1D0B64670();
}

void sub_1D0B5995C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D0B647A0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D0B2B49C(0, &qword_1EC5F9FA0, 0x1E696C358);
        v6 = sub_1D0B64370();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D0B59C90(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D0B59A70(0, v2, 1, a1);
  }
}

void sub_1D0B59A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_1D0B633F0();
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = v17;
      v21 = v19;
      v22 = [v20 startDate];
      sub_1D0B633C0();

      v23 = [v21 startDate];
      v24 = v35;
      sub_1D0B633C0();

      LOBYTE(v23) = sub_1D0B633B0();
      v25 = *v14;
      v26 = v24;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v28;
      v15 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D0B59C90(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v126 = sub_1D0B633F0();
  v9 = *(*(v126 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v126);
  v125 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v111 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v17 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
    }

    else
    {
LABEL_121:
      v106 = sub_1D0B5AA28(a4);
    }

    v127 = v106;
    v107 = *(v106 + 2);
    if (v107 >= 2)
    {
      while (*v17)
      {
        a4 = *&v106[16 * v107];
        v108 = v106;
        v109 = *&v106[16 * v107 + 24];
        sub_1D0B5A500((*v17 + 8 * a4), (*v17 + 8 * *&v106[16 * v107 + 16]), (*v17 + 8 * v109), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v109 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1D0B5AA28(v108);
        }

        if (v107 - 2 >= *(v108 + 2))
        {
          goto LABEL_115;
        }

        v110 = &v108[16 * v107];
        *v110 = a4;
        v110[1] = v109;
        v127 = v108;
        sub_1D0B5A99C(v107 - 1);
        v106 = v127;
        v107 = *(v127 + 2);
        if (v107 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v15 = 0;
  v123 = (v12 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  v116 = a4;
  v112 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v121 = v14;
      v114 = v16;
      v115 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v120 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v19;
      v23 = v21;
      v24 = [v22 startDate];
      v25 = v124;
      sub_1D0B633C0();

      v26 = [v23 startDate];
      v27 = v125;
      sub_1D0B633C0();

      LODWORD(v122) = sub_1D0B633B0();
      v28 = *v123;
      v29 = v126;
      (*v123)(v27, v126);
      v28(v25, v29);

      v113 = v17;
      v30 = (v17 + 2);
      while (1)
      {
        v15 = v121;
        if (v121 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *v5;
        v33 = v31;
        v34 = [v32 startDate];
        v35 = v124;
        sub_1D0B633C0();

        v36 = [v33 startDate];
        v37 = v125;
        sub_1D0B633C0();

        LODWORD(v36) = sub_1D0B633B0() & 1;
        v38 = v37;
        v39 = v126;
        v28(v38, v126);
        v28(v35, v39);

        ++v30;
        v5 += 8;
        if ((v122 & 1) != v36)
        {
          v15 = (v30 - 1);
          break;
        }
      }

      v16 = v114;
      v6 = v115;
      a4 = v116;
      v17 = v113;
      v40 = v120;
      if (v122)
      {
        if (v15 < v113)
        {
          goto LABEL_118;
        }

        a3 = v112;
        if (v113 < v15)
        {
          v41 = 8 * v15 - 8;
          v42 = v15;
          v43 = v113;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v44 = *(v45 + v40);
              *(v45 + v40) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            v43 = (v43 + 1);
            v41 -= 8;
            v40 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        a3 = v112;
      }
    }

    v46 = a3[1];
    if (v15 < v46)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v47 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v47)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v62 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v62;
    }

    else
    {
      v16 = sub_1D0B2CF68(0, *(v62 + 2) + 1, 1, v62);
    }

    a4 = *(v16 + 2);
    v63 = *(v16 + 3);
    v5 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v16 = sub_1D0B2CF68((v63 > 1), a4 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v64 = &v16[16 * a4];
    *(v64 + 4) = v17;
    *(v64 + 5) = v15;
    v65 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v66 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v67 = *(v16 + 4);
          v68 = *(v16 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_56:
          if (v70)
          {
            goto LABEL_105;
          }

          v83 = &v16[16 * v5];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_108;
          }

          v89 = &v16[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_112;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v93 = &v16[16 * v5];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_70:
        if (v88)
        {
          goto LABEL_107;
        }

        v96 = &v16[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_110;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v66 - 1;
        if (v66 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v104 = v16;
        v5 = *&v16[16 * a4 + 32];
        v17 = *&v16[16 * v66 + 40];
        sub_1D0B5A500((*a3 + 8 * v5), (*a3 + 8 * *&v16[16 * v66 + 32]), (*a3 + 8 * v17), v65);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v17 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1D0B5AA28(v104);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_102;
        }

        v105 = &v104[16 * a4];
        *(v105 + 4) = v5;
        *(v105 + 5) = v17;
        v127 = v104;
        a4 = &v127;
        sub_1D0B5A99C(v66);
        v16 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v16[16 * v5 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_103;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_104;
      }

      v78 = &v16[16 * v5];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_106;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_109;
      }

      if (v82 >= v74)
      {
        v100 = &v16[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_113;
        }

        if (v69 < v103)
        {
          v66 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v116;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v114 = v16;
  v115 = v6;
  v122 = *a3;
  v48 = v122 + 8 * v15 - 8;
  v113 = v17;
  a4 = v17 - v15;
  v118 = v47;
LABEL_29:
  v120 = v48;
  v121 = v15;
  v49 = *(v122 + 8 * v15);
  v119 = a4;
  v50 = v48;
  while (1)
  {
    v51 = *v50;
    v5 = v49;
    v52 = v51;
    v53 = [v5 startDate];
    v54 = v124;
    sub_1D0B633C0();

    v55 = [v52 startDate];
    v56 = v125;
    sub_1D0B633C0();

    LOBYTE(v55) = sub_1D0B633B0();
    v57 = *v123;
    v58 = v56;
    v59 = v126;
    (*v123)(v58, v126);
    v57(v54, v59);

    if ((v55 & 1) == 0)
    {
LABEL_28:
      v15 = v121 + 1;
      v48 = v120 + 8;
      a4 = v119 - 1;
      if ((v121 + 1) != v118)
      {
        goto LABEL_29;
      }

      v15 = v118;
      v16 = v114;
      v6 = v115;
      a3 = v112;
      v17 = v113;
      goto LABEL_36;
    }

    if (!v122)
    {
      break;
    }

    v60 = *v50;
    v49 = *(v50 + 8);
    *v50 = v49;
    *(v50 + 8) = v60;
    v50 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_1D0B5A500(id *a1, id *a2, id *a3, void **a4)
{
  v57 = sub_1D0B633F0();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v50 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v58 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v59 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > v58)
    {
      v51 = (v8 + 8);
LABEL_27:
      v50 = a1;
      v31 = a1 - 1;
      v32 = a3 - 1;
      v33 = v59;
      v52 = a1 - 1;
      do
      {
        v34 = a4;
        v35 = v32;
        v36 = v32 + 1;
        v37 = *--v33;
        v38 = *v31;
        v39 = v37;
        v54 = v39;
        v40 = v38;
        v53 = v40;
        v41 = [v39 startDate];
        v42 = v55;
        sub_1D0B633C0();

        v43 = [v40 startDate];
        v44 = v56;
        sub_1D0B633C0();

        LOBYTE(v43) = sub_1D0B633B0();
        v45 = *v51;
        v46 = v44;
        v47 = v57;
        (*v51)(v46, v57);
        v45(v42, v47);

        if (v43)
        {
          a4 = v34;
          a3 = v35;
          v48 = v52;
          if (v36 != v50)
          {
            *v35 = *v52;
          }

          if (v59 <= v34 || (a1 = v48, v48 <= v58))
          {
            a1 = v48;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v34;
        if (v36 != v59)
        {
          *v35 = *v33;
        }

        v32 = v35 - 1;
        v59 = v33;
        v31 = v52;
      }

      while (v33 > v34);
      v59 = v33;
      a1 = v50;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v59 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v58 = a1;
        v18 = *a4;
        v19 = *a2;
        v20 = v18;
        v21 = [v19 startDate];
        v22 = v55;
        sub_1D0B633C0();

        v23 = [v20 startDate];
        v24 = v56;
        sub_1D0B633C0();

        LOBYTE(v23) = sub_1D0B633B0();
        v25 = *v17;
        v26 = v24;
        v27 = v57;
        (*v17)(v26, v57);
        v25(v22, v27);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v58;
        v30 = v58 == a2++;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v58;
      v30 = v58 == a4++;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v59 - a4));
  }

  return 1;
}

uint64_t sub_1D0B5A99C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D0B5AA28(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t (*sub_1D0B5AA3C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D387D8B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D0B5F550;
  }

  __break(1u);
  return result;
}

void (*sub_1D0B5AABC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D387D8B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D0B5AB3C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D0B5AB44(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1D0B645A0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1D0B59858(v3, 0);
  sub_1D0B5ABD8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D0B5ABD8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D0B645A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D0B645A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D0B5F268(&qword_1EC5F9FA8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F90, &qword_1D0B66B18);
            v9 = sub_1D0B5AABC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D0B2B49C(0, &qword_1EC5F9FA0, 0x1E696C358);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D0B5AD98(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D0B633F0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B5AE64, v1, 0);
}

uint64_t sub_1D0B5AE64()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[3];
  v0[9] = *(v0[4] + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_workoutDatabaseClient);
  sub_1D0B63280();
  sub_1D0B63260();

  return MEMORY[0x1EEE6DFA0](sub_1D0B5AEE8, 0, 0);
}

uint64_t sub_1D0B5AEE8()
{
  v1 = v0[3].i64[1];
  v2 = swift_task_alloc();
  v0[5].i64[0] = v2;
  v2[1] = vextq_s8(v0[4], v0[4], 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5].i64[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FC8, &qword_1D0B66B48);
  *v4 = v0;
  v4[1] = sub_1D0B5AFFC;

  return MEMORY[0x1EEE6DE38](&v0[1], 0, 0, 0x7266287972657571, 0xEF293A6F743A6D6FLL, sub_1D0B5F3D8, v2, v5);
}

uint64_t sub_1D0B5AFFC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1D0B5B1D0;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1D0B5B118;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D0B5B118()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];
  v4 = *(v0[6] + 8);
  v4(v0[7], v2);
  v4(v1, v2);

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1D0B5B1D0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];

  v7 = *(v5 + 8);
  v7(v2, v4);
  v7(v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D0B5B280, v6, 0);
}

uint64_t sub_1D0B5B280()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_1D0B5B320(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_1D0B640C0();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = sub_1D0B633F0();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D0B5B48C, v2, 0);
}

uint64_t sub_1D0B5B48C()
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *(v1 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
  v5 = sub_1D0B5CB68(qword_1EE052AE0, type metadata accessor for HealthStore);
  v6 = swift_task_alloc();
  v0[16] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  v0[17] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F90, &qword_1D0B66B18);
  v0[18] = v9;
  *v8 = v0;
  v8[1] = sub_1D0B5B620;
  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v5, 0xD000000000000025, 0x80000001D0B67790, sub_1D0B5F25C, v6, v9);
}

uint64_t sub_1D0B5B620()
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 136);
  v12 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = *MEMORY[0x1E69E9840];
    v6 = sub_1D0B5C0B8;
  }

  else
  {
    v7 = *(v2 + 128);
    v8 = *(v2 + 56);

    v9 = *MEMORY[0x1E69E9840];
    v6 = sub_1D0B5B794;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, 0);
}

uint64_t sub_1D0B5B794()
{
  v88 = v0;
  v87[2] = *MEMORY[0x1E69E9840];
  v1 = v0[2];
  v2 = (v1 >> 62);
  if (v1 >> 62)
  {
    goto LABEL_65;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = ceil(v3 / 1000.0);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

  if (v4 <= -9.22337204e18)
  {
    goto LABEL_67;
  }

  if (v4 >= 9.22337204e18)
  {
    goto LABEL_68;
  }

  if (v4 < 2)
  {
    if (v2)
    {
      sub_1D0B2B49C(0, &qword_1EE052888, 0x1E696C3A8);

      v9 = sub_1D0B64700();
      swift_bridgeObjectRelease_n();
      v1 = v9;
    }

    else
    {

      sub_1D0B647E0();

      sub_1D0B2B49C(0, &qword_1EE052888, 0x1E696C3A8);
    }

    goto LABEL_54;
  }

  v5 = v0[19];

  v87[0] = sub_1D0B5AB44(v6);
  sub_1D0B598E0(v87);
  if (v5)
  {

    v7 = *MEMORY[0x1E69E9840];
  }

  v10 = v0[18];
  v11 = v0[13];

  v0[3] = v87[0];
  sub_1D0B5F268(&qword_1EC5F9F98);
  v2 = v0 + 3;
  v12 = sub_1D0B64300();

  v13 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  v87[0] = MEMORY[0x1E69E7CC0];
  v79 = (v11 + 8);
  for (i = *(v12 + 16); ; i = v76)
  {
    do
    {
      while (1)
      {
        if (i == v13)
        {

          goto LABEL_54;
        }

        if (v13 >= *(v12 + 16))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          v3 = sub_1D0B645A0();
          goto LABEL_3;
        }

        v15 = *(v12 + 8 * v13 + 32);
        v16 = v15 >> 62;
        if (v15 >> 62)
        {
          break;
        }

        ++v13;
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }
      }

      if (v15 < 0)
      {
        v47 = *(v12 + 8 * v13 + 32);
      }

      ++v13;
    }

    while (!sub_1D0B645A0());
LABEL_19:
    if ((v15 & 0xC000000000000001) != 0)
    {

      v18 = MEMORY[0x1D387D8B0](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v17 = *(v15 + 32);

      v18 = v17;
    }

    v2 = v18;
    v76 = i;
    v77 = v12;
    if (v16)
    {
      v20 = sub_1D0B645A0();
      if (v20 < 1)
      {
        goto LABEL_72;
      }

      v19 = v20;
      if (sub_1D0B645A0() < 1)
      {
        goto LABEL_73;
      }

      if (sub_1D0B645A0() < v19)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_71;
      }
    }

    if ((v15 & 0xC000000000000001) != 0)
    {

      if (v19 != 1)
      {
        sub_1D0B2B49C(0, &qword_1EC5F9FA0, 0x1E696C358);
        v21 = 1;
        do
        {
          v22 = v21 + 1;
          sub_1D0B64620();
          v21 = v22;
        }

        while (v19 != v22);
      }
    }

    else
    {
    }

    v80 = v0;
    if (v16)
    {

      sub_1D0B64720();
      v23 = v25;
      v24 = v26;
      v19 = v27 >> 1;
    }

    else
    {
      v23 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
      v24 = 1;
    }

    swift_unknownObjectRetain();
    v1 = v2;
    v78 = v1;
    v28 = v19 - v24;
    if (v19 != v24)
    {
      break;
    }

LABEL_45:
    swift_unknownObjectRelease_n();

    MEMORY[0x1D387D5A0]();
    if (*((v87[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v48 = *((v87[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D0B64360();
    }

    v2 = v87;
    sub_1D0B64380();
    v1 = v87[0];
    v0 = v80;
    v12 = v77;
  }

  if (v19 <= v24)
  {
    v29 = v24;
  }

  else
  {
    v29 = v19;
  }

  v30 = (v23 + 8 * v24);
  v0 = (v29 - v24);
  v31 = v1;
  while (1)
  {
    if (!v0)
    {
      goto LABEL_64;
    }

    v32 = v80[15];
    v81 = v28;
    v82 = v80[14];
    v84 = v80[5];
    v33 = *v30;
    v34 = [v31 startDate];
    sub_1D0B633C0();

    v35 = [v33 endDate];
    sub_1D0B633C0();

    v36 = [v31 quantity];
    v86 = v33;
    v37 = [v33 quantity];
    v83 = v31;
    v38 = [v36 _quantityByAddingQuantity_];

    v39 = objc_allocWithZone(MEMORY[0x1E696C358]);
    v40 = sub_1D0B633A0();
    v41 = sub_1D0B633A0();
    v80[4] = 0;
    v1 = [v39 initWithType:v84 startDate:v40 endDate:v41 quantity:v38 error:v80 + 4];

    v42 = v80[4];
    v43 = v80[14];
    v2 = v80[15];
    v44 = v80[12];
    if (!v1)
    {
      break;
    }

    v45 = v42;

    v46 = *v79;
    (*v79)(v43, v44);
    v46(v2, v44);
    ++v30;
    v0 = (v0 - 1);
    v31 = v1;
    v28 = v81 - 1;
    if (v81 == 1)
    {
      goto LABEL_45;
    }
  }

  v0 = v80;
  v85 = v80[11];
  v55 = v42;

  v56 = sub_1D0B63320();

  swift_willThrow();
  swift_unknownObjectRelease_n();

  v57 = *v79;
  (*v79)(v43, v44);
  v57(v2, v44);

  sub_1D0B63F70();
  v58 = v56;
  v59 = sub_1D0B640A0();
  v60 = sub_1D0B644E0();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 138412290;
    v63 = v56;
    v64 = _swift_stdlib_bridgeErrorToNSError();
    *(v61 + 4) = v64;
    *v62 = v64;
    _os_log_impl(&dword_1D0B1E000, v59, v60, "Failed to create HKQuantitySample: %@", v61, 0xCu);
    sub_1D0B2B620(v62, &qword_1EC5F9868, &unk_1D0B66B20);
    MEMORY[0x1D387E1B0](v62, -1, -1);
    MEMORY[0x1D387E1B0](v61, -1, -1);
  }

  v66 = v80[10];
  v65 = v80[11];
  v67 = v80[8];
  v68 = v80[9];

  v69 = *(v68 + 8);
  v69(v65, v67);
  sub_1D0B63F70();
  v70 = sub_1D0B640A0();
  v71 = sub_1D0B644D0();
  v72 = os_log_type_enabled(v70, v71);
  v73 = v80[10];
  v74 = v80[8];
  if (v72)
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_1D0B1E000, v70, v71, "Returning empty samples", v75, 2u);
    v0 = v80;
    MEMORY[0x1D387E1B0](v75, -1, -1);
  }

  else
  {
  }

  v69(v73, v74);
  v1 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v50 = v0[14];
  v49 = v0[15];
  v52 = v0[10];
  v51 = v0[11];

  v53 = v0[1];
  v54 = *MEMORY[0x1E69E9840];

  return v53(v1);
}

uint64_t sub_1D0B5C0B8()
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];

  v6 = v0[1];
  v7 = v0[19];
  v8 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_1D0B5C18C()
{
  v2 = *(sub_1D0B63290() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D0B5F548;

  return sub_1D0B54FB8();
}

uint64_t sub_1D0B5C264(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B2FC90;

  return sub_1D0B55048(a1, v5);
}

uint64_t sub_1D0B5C31C()
{
  v2 = *(sub_1D0B633F0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D0B5F55C;

  return sub_1D0B55244(v4, v0 + v3);
}

uint64_t sub_1D0B5C3F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B2FC90;

  return sub_1D0B553E0(a1, v5);
}

uint64_t sub_1D0B5C4AC()
{
  v2 = *(sub_1D0B633F0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D0B5F55C;

  return sub_1D0B554CC(v4, v0 + v3);
}

uint64_t sub_1D0B5C584(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B2FC90;

  return sub_1D0B55688(a1, v5);
}

uint64_t sub_1D0B5C63C()
{
  v2 = *(sub_1D0B633F0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D0B5F55C;

  return sub_1D0B55888(v4, v0 + v3);
}

uint64_t sub_1D0B5C714()
{
  v2 = *(sub_1D0B633F0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D0B5F55C;

  return sub_1D0B55948(v4, v0 + v3);
}

uint64_t sub_1D0B5C7EC()
{
  v2 = *(sub_1D0B633F0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D0B5F55C;

  return sub_1D0B55A08(v4, v0 + v3);
}

uint64_t sub_1D0B5C8C4()
{
  v2 = *(sub_1D0B633F0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D0B5F55C;

  return sub_1D0B55AC8(v4, v0 + v3);
}

uint64_t objectdestroyTm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1D0B5CA68()
{
  v2 = *(sub_1D0B633F0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D0B5F55C;

  return sub_1D0B55B88(v4, v0 + v3);
}

uint64_t sub_1D0B5CB40(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D0B5CB68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of HealthStoreProtocol.workout(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D0B5F55C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HealthStoreProtocol.workouts(for:highPriority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D0B5F548;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HealthStoreProtocol.workoutRecords(for:highPriority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D0B5F548;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HealthStoreProtocol.pauseSamples(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D0B5F548;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HealthStoreProtocol.samples(of:for:highPriority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D0B5F548;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of HealthStoreProtocol.quantitySamples(of:for:highPriority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D0B5F548;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of HealthStoreProtocol.locations(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D0B5F548;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HealthStoreProtocol.rings(for:highPriority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D0B5F55C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HealthStoreProtocol.rings(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D0B5F548;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HealthStoreProtocol.ringsSumQuantity(for:until:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D0B5F55C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HealthStoreProtocol.makeRingsRepresentable(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 88);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D0B2FC90;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HealthStoreProtocol.requestDatabaseAccessibilityAssertion()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 96);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0B5F548;

  return v9(a1, a2);
}

uint64_t dispatch thunk of HealthStoreProtocol.requestWorkoutDatabaseAccessibilityAssertion()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 104);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0B5F548;

  return v9(a1, a2);
}

uint64_t dispatch thunk of HealthStoreProtocol.getTrainingLoadDaySummary(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 112);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D0B2FC90;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HealthStoreProtocol.getVitalsDaySummary(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 120);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D0B2FC90;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1D0B5DD64()
{
  result = sub_1D0B634A0();
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

uint64_t dispatch thunk of HealthStore.workout(for:)(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B5F55C;

  return v8(a1);
}

uint64_t dispatch thunk of HealthStore.workoutRecords(for:highPriority:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D0B5F548;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HealthStore.workouts(for:highPriority:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D0B5F548;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HealthStore.workouts(limit:)(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B5F548;

  return v8(a1);
}

uint64_t dispatch thunk of HealthStore.pauseSamples(for:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B5E3F4;

  return v8(a1);
}

uint64_t sub_1D0B5E3F4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of HealthStore.samples(of:for:highPriority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 192);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D0B5F548;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HealthStore.quantitySamples(of:for:highPriority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 200);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D0B5F548;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HealthStore.locations(for:)(uint64_t a1)
{
  v4 = *(*v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B5F548;

  return v8(a1);
}

uint64_t dispatch thunk of HealthStore.rings(for:highPriority:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 216);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D0B5F55C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HealthStore.rings(for:)(uint64_t a1)
{
  v4 = *(*v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B5F548;

  return v8(a1);
}

uint64_t dispatch thunk of HealthStore.ringsSumQuantity(for:until:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 232);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D0B552E4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HealthStore.makeRingsRepresentable(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 240);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D0B2FC90;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HealthStore.requestDatabaseAccessibilityAssertion()()
{
  v2 = *(*v0 + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D0B5F548;

  return v6();
}

uint64_t dispatch thunk of HealthStore.requestWorkoutDatabaseAccessibilityAssertion()()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D0B5F548;

  return v6();
}

uint64_t dispatch thunk of HealthStore.getTrainingLoadDaySummary(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 264);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D0B2E1C4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HealthStore.getVitalsDaySummary(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 272);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D0B2E1C4;

  return v10(a1, a2);
}

void sub_1D0B5F1AC(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F88, &qword_1D0B66B10) - 8) + 80);
  v8 = *(v3 + 16);

  sub_1D0B52C24(a1, a2, a3, v8);
}

uint64_t block_copy_helper_201(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D0B5F268(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC5F9F90, &qword_1D0B66B18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D0B5F2B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB0, &qword_1D0B66B30) - 8);
  v14 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D0B4FBF0(a1, a2, a3, a4, a5, a6, *(v6 + 16), v6 + v14, *(v6 + v15), *(v6 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_216Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1D0B5F490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t HKWorkoutContainer.samplesByType.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKWorkoutContainer() + 28));
}

uint64_t type metadata accessor for HKWorkoutContainer()
{
  result = qword_1EE052980;
  if (!qword_1EE052980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HKWorkoutContainer.route.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKWorkoutContainer() + 32));
}

uint64_t HKWorkoutContainer.route.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKWorkoutContainer() + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HKWorkoutContainer.activitySummaryRepresentable.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HKWorkoutContainer() + 36);

  return sub_1D0B5F748(a1, v3);
}

uint64_t sub_1D0B5F748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A80, &qword_1D0B66B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HKWorkoutContainer.init(hkWorkout:workoutPlan:samplesByType:route:activitySummaryRepresentable:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for HKWorkoutContainer();
  v13 = v12[9];
  v14 = sub_1D0B63F30();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  *a6 = a1;
  v15 = objc_opt_self();
  v16 = a1;
  *(a6 + 1) = [v15 activityTypeWithWorkout_];
  sub_1D0B2B870(a2, &a6[v12[6]], &qword_1EC5F9FD8, &qword_1D0B66B68);
  if (!a3)
  {
    a3 = sub_1D0B62A68(MEMORY[0x1E69E7CC0]);
  }

  *&a6[v12[7]] = a3;
  v17 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    v17 = a4;
  }

  *&a6[v12[8]] = v17;
  sub_1D0B62B60(a5, &a6[v13]);
  v18 = [v16 fi_isConnectedGymWorkout];

  sub_1D0B2B620(a5, &qword_1EC5F9A80, &qword_1D0B66B60);
  result = sub_1D0B2B620(a2, &qword_1EC5F9FD8, &qword_1D0B66B68);
  a6[v12[10]] = v18;
  return result;
}

unint64_t HKWorkoutContainer.sourceIdentifier.getter()
{
  v1 = [*v0 sourceRevision];
  v2 = [v1 source];

  v3 = [v2 bundleIdentifier];
  v4 = sub_1D0B64290();

  if (sub_1D0B642E0())
  {

    return 0xD000000000000010;
  }

  return v4;
}

uint64_t HKWorkoutContainer.locationType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1[1] effectiveTypeIdentifier];
  v4 = *v1;
  if (v3 == 46)
  {
    if (![v4 fi_swimmingLocationType])
    {
      v10 = *MEMORY[0x1E699E4D0];
      v11 = sub_1D0B63D70();
      v7 = *(*(v11 - 8) + 104);
      v6 = v11;
      v12 = a1;
      v13 = v10;
      goto LABEL_11;
    }

    v5 = [v4 fi_swimmingLocationType];
    v6 = sub_1D0B63D70();
    v7 = *(*(v6 - 8) + 104);
    if (v5 == 1)
    {
      v8 = MEMORY[0x1E699E4B8];
    }

    else
    {
      v8 = MEMORY[0x1E699E4D8];
    }
  }

  else
  {
    IsIndoor = _HKWorkoutIsIndoor(v4);
    v6 = sub_1D0B63D70();
    v7 = *(*(v6 - 8) + 104);
    if (IsIndoor)
    {
      v8 = MEMORY[0x1E699E4C0];
    }

    else
    {
      v8 = MEMORY[0x1E699E4C8];
    }
  }

  v13 = *v8;
  v12 = a1;
LABEL_11:

  return v7(v12, v13, v6);
}

uint64_t HKWorkoutContainer.events.getter()
{
  v1 = [*v0 workoutEvents];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1D0B2B49C(0, &qword_1EC5F9FE0, 0x1E696C5B8);
  v3 = sub_1D0B64340();

  return v3;
}

uint64_t HKWorkoutContainer.workoutGoal.getter@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = sub_1D0B640C0();
  v62 = *(v1 - 8);
  v63 = v1;
  v2 = *(v62 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v56 - v6;
  v7 = sub_1D0B634E0();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D0B63510();
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v56 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FD8, &qword_1D0B66B68);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v56 - v19;
  v21 = sub_1D0B63530();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v57 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v56 - v26;
  v28 = type metadata accessor for HKWorkoutContainer();
  sub_1D0B2B870(&v64[*(v28 + 24)], v20, &qword_1EC5F9FD8, &qword_1D0B66B68);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D0B2B620(v20, &qword_1EC5F9FD8, &qword_1D0B66B68);
    sub_1D0B63F70();
    v29 = sub_1D0B640A0();
    v30 = sub_1D0B644D0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D0B1E000, v29, v30, "Workout Plan is nil, returning open goal", v31, 2u);
      MEMORY[0x1D387E1B0](v31, -1, -1);
    }

    (*(v62 + 8))(v5, v63);
    goto LABEL_5;
  }

  (*(v22 + 32))(v27, v20, v21);
  sub_1D0B63520();
  v35 = v61;
  v36 = (*(v61 + 88))(v16, v11);
  if (v36 == *MEMORY[0x1E6985B68])
  {
    (*(v35 + 96))(v16, v11);
    v38 = v58;
    v37 = v59;
    (*(v58 + 32))(v10, v16, v59);
    sub_1D0B634D0();
    (*(v38 + 8))(v10, v37);
    return (*(v22 + 8))(v27, v21);
  }

  else
  {
    if (v36 == *MEMORY[0x1E6985B78] || v36 == *MEMORY[0x1E6985B70] || v36 == *MEMORY[0x1E6985B60])
    {
      (*(v22 + 8))(v27, v21);
      (*(v35 + 8))(v16, v11);
LABEL_5:
      v32 = *MEMORY[0x1E6985B38];
      v33 = sub_1D0B634F0();
      return (*(*(v33 - 8) + 104))(v65, v32, v33);
    }

    v64 = v16;
    sub_1D0B63F70();
    v39 = *(v22 + 16);
    v40 = v57;
    v59 = v27;
    v39(v57, v27, v21);
    v41 = sub_1D0B640A0();
    v42 = sub_1D0B644D0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v58 = v11;
      v44 = v43;
      *v43 = 134217984;
      v45 = v56;
      sub_1D0B63520();
      v46 = sub_1D0B63500();
      (*(v35 + 8))(v45, v58);
      v47 = v35;
      v48 = v40;
      v49 = *(v22 + 8);
      v49(v48, v21);
      *(v44 + 1) = v46;
      _os_log_impl(&dword_1D0B1E000, v41, v42, "Received unknown Workout Plan for workout activity %lu. Retuning open goal", v44, 0xCu);
      v50 = v44;
      v11 = v58;
      MEMORY[0x1D387E1B0](v50, -1, -1);
    }

    else
    {
      v47 = v35;
      v51 = v40;
      v49 = *(v22 + 8);
      v49(v51, v21);
    }

    v53 = v62;
    v52 = v63;

    (*(v53 + 8))(v60, v52);
    v49(v59, v21);
    v54 = *MEMORY[0x1E6985B38];
    v55 = sub_1D0B634F0();
    (*(*(v55 - 8) + 104))(v65, v54, v55);
    return (*(v47 + 8))(v64, v11);
  }
}

uint64_t sub_1D0B603DC@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D0B2B49C(0, &qword_1EE0528A8, 0x1E696C370);
  v5 = [swift_getObjCClassFromMetadata() heartRateType];
  if (v5)
  {
    v6 = v5;
    v7 = [*v2 statisticsForType_];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 *a1];
      if (v9)
      {
        v10 = v9;
        v11 = [objc_opt_self() _countPerMinuteUnit];
        [v10 doubleValueForUnit_];

        sub_1D0B2B49C(0, &qword_1EC5F9FF0, 0x1E696B038);
        sub_1D0B64510();
        sub_1D0B63230();

        v12 = 0;
        v13 = v8;
      }

      else
      {
        v12 = 1;
        v13 = v6;
        v6 = v8;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FE8, &qword_1D0B66B70);
  v15 = *(*(v14 - 8) + 56);

  return v15(a2, v12, 1, v14);
}

uint64_t sub_1D0B605B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t HKWorkoutContainer.elapsedTimeInHeartRateZones.getter()
{
  v1 = [*v0 metadata];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D0B641F0();

    if (*(v3 + 16) && (v4 = sub_1D0B28624(0xD00000000000002CLL, 0x80000001D0B67880), (v5 & 1) != 0))
    {
      sub_1D0B22F04(*(v3 + 56) + 32 * v4, v12);

      if (swift_dynamicCast())
      {
        v6 = sub_1D0B63310();
        v7 = *(v6 + 48);
        v8 = *(v6 + 52);
        swift_allocObject();
        sub_1D0B63300();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA000, &qword_1D0B66B80);
        sub_1D0B62C38();
        sub_1D0B632F0();
        sub_1D0B62CBC(v10, v11);

        return v12[0];
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t HKWorkoutContainer.averagePower.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1[1] effectiveTypeIdentifier];
  if (v3 == 37)
  {
    v4 = MEMORY[0x1E696BD90];
  }

  else
  {
    if (v3 != 13)
    {
      v14 = 1;
      goto LABEL_13;
    }

    v4 = MEMORY[0x1E696BCB0];
  }

  sub_1D0B2B49C(0, &qword_1EE0528A8, 0x1E696C370);
  v5 = MEMORY[0x1D387D780](*v4);
  v6 = *v1;
  v7 = v5;
  v8 = [v6 statisticsForType_];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 averageQuantity];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() wattUnit];
      [v11 doubleValueForUnit_];

      v13 = [objc_opt_self() watts];
      sub_1D0B2B49C(0, &qword_1EC5FA018, 0x1E696B068);
      sub_1D0B63230();

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_13:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA010, &qword_1D0B66B88);
  v16 = *(*(v15 - 8) + 56);

  return v16(a1, v14, 1, v15);
}

uint64_t HKWorkoutContainer.caloriesBurned.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1D0B2B49C(0, &qword_1EE0528A8, 0x1E696C370);
  v4 = MEMORY[0x1D387D780](*MEMORY[0x1E696BC38]);
  v5 = [v3 statisticsForType_];

  if (v5 && (v6 = [v5 sumQuantity], v5, v6))
  {
    v7 = [objc_opt_self() largeCalorieUnit];
    [v6 doubleValueForUnit_];

    sub_1D0B2B49C(0, &qword_1EE0528B8, 0x1E696B030);
    sub_1D0B644C0();
    sub_1D0B63230();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA020, &unk_1D0B66B90);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, 1, v9);
}

void sub_1D0B60B48(SEL *a1, void (*a2)(void))
{
  v4 = [*v2 *a1];
  a2();
}

uint64_t HKWorkoutContainer.end.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 endDate];
  sub_1D0B633C0();

  v4 = sub_1D0B633F0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t HKWorkoutContainer.distance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 totalDistance];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() meterUnit];
    [v4 doubleValueForUnit_];

    v6 = [objc_opt_self() meters];
    sub_1D0B2B49C(0, &qword_1EE0528B0, 0x1E696B058);
    sub_1D0B63230();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F20, &qword_1D0B66788);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

id HKWorkoutContainer.location.getter()
{
  v1 = *v0;
  v2 = [*v0 metadata];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1D0B641F0();

  v5 = *MEMORY[0x1E696C7C8];
  v6 = sub_1D0B64290();
  if (!*(v4 + 16))
  {

    goto LABEL_11;
  }

  v8 = sub_1D0B28624(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_11:

    return 0;
  }

  sub_1D0B22F04(*(v4 + 56) + 32 * v8, v26);

  sub_1D0B2B49C(0, &qword_1EC5F9A68, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v11 = [v1 metadata];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1D0B641F0();

      v14 = *MEMORY[0x1E696C7D0];
      v15 = sub_1D0B64290();
      if (*(v13 + 16))
      {
        v17 = sub_1D0B28624(v15, v16);
        v19 = v18;

        if (v19)
        {
          sub_1D0B22F04(*(v13 + 56) + 32 * v17, v26);

          if (swift_dynamicCast())
          {
            [v25 doubleValue];
            v21 = v20;
            [v25 doubleValue];
            v23 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v21 longitude:v22];

            return v23;
          }

          goto LABEL_13;
        }
      }

      else
      {
      }

      return 0;
    }

LABEL_13:
  }

  return 0;
}

uint64_t HKWorkoutContainer.weatherConditions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA028, &qword_1D0B66BA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA030, &qword_1D0B66BA8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  v12 = *v1;
  v13 = [*v1 metadata];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v15 = sub_1D0B641F0();

  v16 = *MEMORY[0x1E696C780];
  v17 = sub_1D0B64290();
  if (!*(v15 + 16))
  {

    goto LABEL_11;
  }

  v39 = v8;
  v19 = sub_1D0B28624(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_1D0B22F04(*(v15 + 56) + 32 * v19, v41);

  sub_1D0B2B49C(0, &qword_1EC5F9A68, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v36 = 1;
    goto LABEL_13;
  }

  v22 = v40;
  [v40 integerValue];
  v23 = [v12 metadata];
  if (!v23)
  {
LABEL_14:

    goto LABEL_12;
  }

  v24 = v23;
  v25 = sub_1D0B641F0();

  v26 = *MEMORY[0x1E696BBC0];
  v27 = sub_1D0B64290();
  if (!*(v25 + 16))
  {

    goto LABEL_16;
  }

  v29 = sub_1D0B28624(v27, v28);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
LABEL_16:

    goto LABEL_12;
  }

  sub_1D0B22F04(*(v25 + 56) + 32 * v29, v41);

  sub_1D0B2B49C(0, &qword_1EC5F9F50, 0x1E696C348);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v32 = v40;
  v33 = [objc_opt_self() degreeCelsiusUnit];
  [v32 doubleValueForUnit_];

  v34 = [objc_opt_self() celsius];
  sub_1D0B2B49C(0, &qword_1EC5FA038, 0x1E696B080);
  sub_1D0B63230();
  v35 = v39;
  (*(v39 + 16))(v6, v11, v7);
  (*(v35 + 56))(v6, 0, 1, v7);
  sub_1D0B63C70();

  (*(v35 + 8))(v11, v7);
  v36 = 0;
LABEL_13:
  v37 = sub_1D0B63C80();
  return (*(*(v37 - 8) + 56))(a1, v36, 1, v37);
}

uint64_t HKWorkoutContainer.pace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  [v3 duration];
  v4 = [v3 totalDistance];
  if (v4 && (v5 = v4, v6 = [objc_opt_self() meterUnit], objc_msgSend(v5, sel_doubleValueForUnit_, v6), v8 = v7, v5, v6, v8 > 0.0))
  {
    sub_1D0B63F90();
    sub_1D0B63F80();
    sub_1D0B63230();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA040, &qword_1D0B66BB0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v9, 1, v10);
}

uint64_t HKWorkoutContainer.elevationGain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ([v3 fi_hasNonZeroElevationGain])
  {
    v4 = [v3 fi_elevationGain];
    v5 = [objc_opt_self() meterUnit];
    [v4 doubleValueForUnit_];

    v6 = [objc_opt_self() meters];
    sub_1D0B2B49C(0, &qword_1EE0528B0, 0x1E696B058);
    sub_1D0B63230();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F20, &qword_1D0B66788);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

unint64_t HKWorkoutContainer.metadataDictionary.getter()
{
  v1 = [*v0 metadata];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D0B641F0();

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];

    return sub_1D0B62D10(v5);
  }
}

uint64_t HKWorkoutContainer.mediaDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D0B63D80();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t HKWorkoutContainer.samples(for:)(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for HKWorkoutContainer() + 28));
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1D0B2869C(a1);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(*(v3 + 56) + 8 * v4);
}

uint64_t HKWorkoutContainer.makeWorkoutState()@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA048, &qword_1D0B66BB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v89 = v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A80, &qword_1D0B66B60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA050, &qword_1D0B66BC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA058, &qword_1D0B66BC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v100 = v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA060, &qword_1D0B66BD0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v99 = v84 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v98 = v84 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v97 = v84 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA068, &qword_1D0B66BD8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v96 = v84 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA070, &qword_1D0B66BE0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v95 = v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v94 = v84 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA078, &qword_1D0B66BE8);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v92 = v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v93 = v84 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA080, &qword_1D0B66BF0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v91 = v84 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA088, &qword_1D0B66BF8);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v43 = v84 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v45 = v84 - v44;
  v46 = sub_1D0B633F0();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = v84 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D0B634F0();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v54 = v84 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1D0B63430();
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v58 = v84 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *v1;
  v60 = [*v1 UUID];
  v84[3] = v58;
  sub_1D0B63410();

  v84[2] = v1[1];
  v84[4] = v54;
  HKWorkoutContainer.workoutGoal.getter(v54);
  v61 = [v59 startDate];
  v84[5] = v50;
  sub_1D0B633C0();

  v62 = [v59 startDate];
  sub_1D0B633C0();

  v63 = *(v47 + 56);
  v64 = 1;
  v84[6] = v45;
  v63(v45, 0, 1, v46);
  v65 = [v59 endDate];
  sub_1D0B633C0();

  v86 = v43;
  v63(v43, 0, 1, v46);
  [v59 duration];
  v84[1] = HKWorkoutContainer.location.getter();
  HKWorkoutContainer.weatherConditions.getter(v91);
  v66 = [v59 totalDistance];
  if (v66)
  {
    v67 = v66;
    v68 = [objc_opt_self() meterUnit];
    [v67 doubleValueForUnit_];

    v69 = [objc_opt_self() meters];
    sub_1D0B2B49C(0, &qword_1EE0528B0, 0x1E696B058);
    v70 = v93;
    sub_1D0B63230();
    v64 = 0;
  }

  else
  {
    v70 = v93;
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F20, &qword_1D0B66788);
  (*(*(v71 - 8) + 56))(v70, v64, 1, v71);
  HKWorkoutContainer.pace.getter(v94);
  HKWorkoutContainer.pace.getter(v95);
  HKWorkoutContainer.caloriesBurned.getter(v96);
  HKWorkoutContainer.averageHeartRate.getter(v97);
  HKWorkoutContainer.averageHeartRate.getter(v98);
  HKWorkoutContainer.maximumHeartRate.getter(v99);
  HKWorkoutContainer.elapsedTimeInHeartRateZones.getter();
  HKWorkoutContainer.averagePower.getter(v100);
  HKWorkoutContainer.elevationGain.getter(v92);
  v72 = [v59 workoutEvents];
  if (v72)
  {
    v73 = v72;
    sub_1D0B2B49C(0, &qword_1EC5F9FE0, 0x1E696C5B8);
    sub_1D0B64340();
  }

  v74 = [v59 metadata];
  if (v74)
  {
    v75 = v74;
    sub_1D0B641F0();
  }

  else
  {
    sub_1D0B62D10(MEMORY[0x1E69E7CC0]);
  }

  v76 = type metadata accessor for HKWorkoutContainer();
  v77 = *(v1 + v76[7]);
  v78 = *(v1 + v76[8]);
  v79 = sub_1D0B63D80();
  (*(*(v79 - 8) + 56))(v87, 1, 1, v79);
  sub_1D0B2B870(v1 + v76[9], v88, &qword_1EC5F9A80, &qword_1D0B66B60);
  v80 = *(v1 + v76[10]);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FE8, &qword_1D0B66B70);
  (*(*(v81 - 8) + 56))(v85, 1, 1, v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FF8, &qword_1D0B66B78);
  (*(*(v82 - 8) + 56))(v89, 1, 1, v82);

  return sub_1D0B63B10();
}

unint64_t sub_1D0B62300()
{
  v1 = [*v0 sourceRevision];
  v2 = [v1 source];

  v3 = [v2 bundleIdentifier];
  v4 = sub_1D0B64290();

  if (sub_1D0B642E0())
  {

    return 0xD000000000000010;
  }

  return v4;
}

void sub_1D0B62410(uint64_t a1, uint64_t a2, SEL *a3, void (*a4)(void))
{
  v6 = [*v4 *a3];
  a4();
}

uint64_t sub_1D0B6247C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 endDate];
  sub_1D0B633C0();

  v4 = sub_1D0B633F0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_1D0B6255C@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t sub_1D0B625D8()
{
  v1 = [*v0 workoutEvents];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1D0B2B49C(0, &qword_1EC5F9FE0, 0x1E696C5B8);
  v3 = sub_1D0B64340();

  return v3;
}

unint64_t sub_1D0B62650()
{
  v1 = [*v0 metadata];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D0B641F0();

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];

    return sub_1D0B62D10(v5);
  }
}

uint64_t sub_1D0B626E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D0B63D80();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D0B62794(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 28));
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1D0B2869C(a1);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(*(v3 + 56) + 8 * v4);
}

uint64_t sub_1D0B627E0(uint64_t a1)
{
  v2 = sub_1D0B62EA8(&qword_1EE052998);

  return MEMORY[0x1EEE06C58](a1, v2);
}

unint64_t sub_1D0B62848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC5FA0B0, &qword_1D0B66DD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F98F0, &qword_1D0B66DE0);
    v8 = sub_1D0B64750();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D0B2B870(v10, v6, &unk_1EC5FA0B0, &qword_1D0B66DD8);
      result = sub_1D0B285A0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D0B63430();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1D0B63A10();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

unint64_t sub_1D0B62A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA0A8, &qword_1D0B66DD0);
    v3 = sub_1D0B64750();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D0B2869C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1D0B62B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A80, &qword_1D0B66B60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _HKWorkoutIsIndoor(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696BB00]];
  v4 = [v3 BOOLValue];

  return v4;
}

unint64_t sub_1D0B62C38()
{
  result = qword_1EC5FA008;
  if (!qword_1EC5FA008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC5FA000, &qword_1D0B66B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FA008);
  }

  return result;
}

uint64_t sub_1D0B62CBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1D0B62D10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5FA098, &qword_1D0B66DC0);
    v3 = sub_1D0B64750();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D0B2B870(v4, &v13, &qword_1EC5FA0A0, &qword_1D0B66DC8);
      v5 = v13;
      v6 = v14;
      result = sub_1D0B28624(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D0B63214(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1D0B62EA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKWorkoutContainer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D0B62F14()
{
  sub_1D0B2B49C(319, &qword_1EE052880, 0x1E696C588);
  if (v0 <= 0x3F)
  {
    sub_1D0B2B49C(319, &qword_1EE052898, 0x1E699C9F0);
    if (v1 <= 0x3F)
    {
      sub_1D0B631B0(319, &qword_1EE052C68, MEMORY[0x1E6985B80], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D0B630B0();
        if (v3 <= 0x3F)
        {
          sub_1D0B631B0(319, &unk_1EE052CA8, MEMORY[0x1E699E490], MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1D0B631B0(319, &qword_1EE052C08, MEMORY[0x1E699E550], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D0B630B0()
{
  if (!qword_1EE0528E0[0])
  {
    sub_1D0B2B49C(255, &qword_1EE0528C8, 0x1E696C3D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC5FA090, &qword_1D0B66DB8);
    sub_1D0B63148();
    v0 = sub_1D0B64200();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0528E0);
    }
  }
}

unint64_t sub_1D0B63148()
{
  result = qword_1EE0528C0;
  if (!qword_1EE0528C0)
  {
    sub_1D0B2B49C(255, &qword_1EE0528C8, 0x1E696C3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0528C0);
  }

  return result;
}

void sub_1D0B631B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

_OWORD *sub_1D0B63214(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}