void sub_1E49411F0(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1E48C12D0(*(*a1 + 88), v5, &qword_1ECF807E8, &qword_1E49A3200);
    a3(v5);
    sub_1E48C1338(v6, &qword_1ECF807E8, &qword_1E49A3200);
  }

  else
  {
    a3(*(*a1 + 88));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E49412AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v27 - v10;
  v28 = v1;
  v12 = v1 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  v13 = type metadata accessor for OverrideTime(0);
  v14 = *(*(v13 - 8) + 48);
  v15 = v14(v12, 1, v13);
  v16 = 0;
  v17 = 0;
  if (!v15)
  {
    v18 = (v12 + *(v13 + 20));
    v20 = *v18;
    v19 = v18[1];
    v16 = v18[2];
    v17 = v18[3];
  }

  v27[0] = v17;
  v27[1] = v16;
  sub_1E48C12D0(a1, v11, &qword_1ECF807E8, &qword_1E49A3200);
  if (v14(v11, 1, v13) == 1)
  {
    result = sub_1E48C1338(v11, &qword_1ECF807E8, &qword_1E49A3200);
    if (v15)
    {
      return result;
    }

    goto LABEL_9;
  }

  v22 = &v11[*(v13 + 20)];
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = *(v22 + 2);
  v26 = *(v22 + 3);
  sub_1E4945640(v11, type metadata accessor for OverrideTime);
  if (v15 || (sub_1E49989FC() & 1) == 0 || (result = sub_1E49989FC(), (result & 1) == 0))
  {
LABEL_9:
    sub_1E48C12D0(v12, v7, &qword_1ECF807E8, &qword_1E49A3200);
    sub_1E49429D8(v7);
    return sub_1E48C1338(v7, &qword_1ECF807E8, &qword_1E49A3200);
  }

  return result;
}

char *sub_1E49414EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v17 - v6;
  *(v1 + 3) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for CPUnfairLock();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v1 + 5) = v8;
  v9 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  v10 = type metadata accessor for OverrideTime(0);
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_advanceTimeTask] = 0;
  v11 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_initializationTime;
  sub_1E4996D4C();
  v12 = sub_1E4996D8C();
  (*(*(v12 - 8) + 56))(&v1[v11], 0, 1, v12);
  *(v1 + 4) = a1;
  if (a1)
  {
    v13 = sub_1E499816C();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = v14;
    swift_retain_n();
    sub_1E498DD1C(0, 0, v7, &unk_1E49A3A68, v15);
  }

  return v1;
}

uint64_t sub_1E4941714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v8 = sub_1E4996D8C();
  v5[23] = v8;
  v9 = *(v8 - 8);
  v5[24] = v9;
  v10 = *(v9 + 64) + 15;
  v5[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v5[26] = v11;
  v12 = *(v11 - 8);
  v5[27] = v12;
  v5[28] = *(v12 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v5[34] = v14;
  v15 = *(v14 - 8);
  v5[35] = v15;
  v16 = *(v15 + 64) + 15;
  v5[36] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C0, &qword_1E49A3A70);
  v5[37] = v17;
  v18 = *(v17 - 8);
  v5[38] = v18;
  v19 = *(v18 + 64) + 15;
  v5[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E49419EC, 0, 0);
}

uint64_t sub_1E49419EC()
{
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  v5 = v0[18];
  v6 = v0[19];
  sub_1E4958A10(v2);
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v7 = *(MEMORY[0x1E69E8678] + 4);
  v8 = swift_task_alloc();
  v0[40] = v8;
  *v8 = v0;
  v8[1] = sub_1E4941AF8;
  v9 = v0[39];
  v10 = v0[37];
  v11 = v0[33];

  return MEMORY[0x1EEE6D9C8](v11, 0, 0, v10);
}

uint64_t sub_1E4941AF8()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E4941BF4, 0, 0);
}

uint64_t sub_1E4941BF4()
{
  v1 = v0[33];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) != 1)
  {
    v2 = v0[19];
    sub_1E48C15C8(v1, v0[32], &qword_1ECF809D0, &qword_1E499D6C0);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = v0[31];
      v5 = v0[23];
      v6 = v0[24];
      v7 = Strong;
      v61 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_initializationTime;
      sub_1E48C12D0(Strong + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_initializationTime, v4, &qword_1ECF809D0, &qword_1E499D6C0);
      v8 = *(v6 + 48);
      v9 = v8(v4, 1, v5);
      if (v9 == 1)
      {
        __break(1u);
        return MEMORY[0x1EEE6D9C8](v9, v10, v11, v12);
      }

      v14 = v0[30];
      v13 = v0[31];
      v16 = v0[24];
      v15 = v0[25];
      v17 = v0[23];
      v60 = v0[22];
      sub_1E4996D4C();
      sub_1E4996CCC();
      v19 = v18;
      v20 = *(v16 + 8);
      v20(v15, v17);
      v20(v13, v17);
      sub_1E48C12D0(v7 + v61, v14, &qword_1ECF809D0, &qword_1E499D6C0);
      v21 = v8(v14, 1, v17);
      sub_1E48C1338(v14, &qword_1ECF809D0, &qword_1E499D6C0);
      v22 = type metadata accessor for OverrideTime(0);
      v23 = *(v22 - 8);
      (*(v23 + 56))(v60, 1, 1, v22);
      v24 = *(v7 + 40);
      swift_beginAccess();
      os_unfair_lock_lock(v24 + 4);
      swift_endAccess();
      v25 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
      swift_beginAccess();
      sub_1E48C1338(v60, &qword_1ECF807E8, &qword_1E49A3200);
      sub_1E48C12D0(v7 + v25, v60, &qword_1ECF807E8, &qword_1E49A3200);
      swift_endAccess();
      v62 = v7;
      v26 = *(v7 + 40);
      swift_beginAccess();
      os_unfair_lock_unlock(v26 + 4);
      swift_endAccess();
      v27 = (*(v23 + 48))(v60, 1, v22);
      v28 = v0[22];
      if (v27 == 1)
      {
        sub_1E48C1338(v28, &qword_1ECF807E8, &qword_1E49A3200);
      }

      else
      {
        sub_1E48C1338(v28, &qword_1ECF807E8, &qword_1E49A3200);
        if (v21 != 1 && v19 <= 1.0)
        {
          sub_1E48C1338(v0[32], &qword_1ECF809D0, &qword_1E499D6C0);

LABEL_22:
          v57 = *(MEMORY[0x1E69E8678] + 4);
          v58 = swift_task_alloc();
          v0[40] = v58;
          *v58 = v0;
          v58[1] = sub_1E4941AF8;
          v59 = v0[39];
          v12 = v0[37];
          v9 = v0[33];
          v10 = 0;
          v11 = 0;

          return MEMORY[0x1EEE6D9C8](v9, v10, v11, v12);
        }
      }

      v29 = v0[32];
      v30 = v0[28];
      v31 = v0[29];
      v32 = v0[27];
      v33 = v0[20];
      v34 = v0[21];
      v35 = sub_1E499816C();
      v36 = *(v35 - 8);
      (*(v36 + 56))(v34, 1, 1, v35);
      sub_1E48C12D0(v29, v31, &qword_1ECF809D0, &qword_1E499D6C0);
      v37 = (*(v32 + 80) + 40) & ~*(v32 + 80);
      v38 = swift_allocObject();
      v38[2] = 0;
      v38[3] = 0;
      v38[4] = v62;
      sub_1E48C15C8(v31, v38 + v37, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C12D0(v34, v33, &qword_1ECF7EC60, &unk_1E49A0DC0);
      LODWORD(v34) = (*(v36 + 48))(v33, 1, v35);

      v39 = v0[20];
      if (v34 == 1)
      {
        sub_1E48C1338(v0[20], &qword_1ECF7EC60, &unk_1E49A0DC0);
      }

      else
      {
        sub_1E499815C();
        (*(v36 + 8))(v39, v35);
      }

      v51 = v38[2];
      v50 = v38[3];
      swift_unknownObjectRetain();

      if (v51)
      {
        swift_getObjectType();
        v52 = sub_1E499811C();
        v54 = v53;
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0;
        v54 = 0;
      }

      sub_1E48C1338(v0[21], &qword_1ECF7EC60, &unk_1E49A0DC0);
      v55 = swift_allocObject();
      *(v55 + 16) = &unk_1E49A3A80;
      *(v55 + 24) = v38;
      if (v54 | v52)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v52;
        v0[5] = v54;
      }

      v56 = v0[32];
      swift_task_create();

      sub_1E48C1338(v56, &qword_1ECF809D0, &qword_1E499D6C0);
      goto LABEL_22;
    }

    sub_1E48C1338(v0[32], &qword_1ECF809D0, &qword_1E499D6C0);
    v40 = v0[33];
  }

  v41 = v0[36];
  v43 = v0[31];
  v42 = v0[32];
  v45 = v0[29];
  v44 = v0[30];
  v46 = v0[25];
  v47 = v0[21];
  v63 = v0[20];
  (*(v0[38] + 8))(v0[39], v0[37]);

  v48 = v0[1];

  return v48();
}

uint64_t sub_1E49422FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4942398, 0, 0);
}

uint64_t sub_1E4942398()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_1E4996D8C();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = *(v3 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  sub_1E4942530(v1, v3, v2);
  swift_beginAccess();
  os_unfair_lock_unlock(v5 + 4);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (MEMORY[0x1E691C5C0]("Clock:shared"))
    {
      v8 = swift_task_alloc();
      v9 = *(v0 + 9);
      *(v8 + 16) = v7;
      *(v8 + 24) = v9;
      sub_1E48C3264(sub_1E4945B90, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_1E48C1338(v0[10], &qword_1ECF809D0, &qword_1E499D6C0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E4942530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v51 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v48 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v46 - v23;
  v25 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(a2 + v25, v16, &qword_1ECF807E8, &qword_1E49A3200);
  v26 = type metadata accessor for OverrideTime(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v50 = v26;
  if (v28(v16, 1))
  {
    sub_1E48C1338(v16, &qword_1ECF807E8, &qword_1E49A3200);
    v29 = sub_1E4996D8C();
    (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
  }

  else
  {
    v29 = sub_1E4996D8C();
    v30 = *(v29 - 8);
    (*(v30 + 16))(v24, v16, v29);
    sub_1E48C1338(v16, &qword_1ECF807E8, &qword_1E49A3200);
    (*(v30 + 56))(v24, 0, 1, v29);
  }

  sub_1E48EC0CC(v24, a1, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E4996D8C();
  v31 = *(v29 - 8);
  v32 = *(v31 + 48);
  v33 = 1;
  if (v32(a3, 1, v29) == 1)
  {
    goto LABEL_7;
  }

  v47 = a2;
  v34 = v48;
  sub_1E48C12D0(a3, v48, &qword_1ECF809D0, &qword_1E499D6C0);
  result = (v32)(v34, 1, v29);
  if (result != 1)
  {
    v36 = sub_1E4998A0C();
    v38 = v37;
    v39 = sub_1E4998A0C();
    v41 = v40;
    v42 = v51;
    (*(v31 + 32))(v51, v34, v29);
    v33 = 0;
    v43 = &v42[*(v50 + 20)];
    *v43 = v36;
    v43[1] = v38;
    v43[2] = v39;
    v43[3] = v41;
    a2 = v47;
LABEL_7:
    v44 = v51;
    (*(v27 + 56))(v51, v33, 1, v50);
    v45 = v49;
    sub_1E48C12D0(a2 + v25, v49, &qword_1ECF807E8, &qword_1E49A3200);
    swift_beginAccess();
    sub_1E48EC048(v44, a2 + v25, &qword_1ECF807E8, &qword_1E49A3200);
    swift_endAccess();
    sub_1E49412AC(v45);
    sub_1E48C1338(v45, &qword_1ECF807E8, &qword_1E49A3200);
    return sub_1E48C1338(v44, &qword_1ECF807E8, &qword_1E49A3200);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E49429D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v28 - v11;
  v13 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_advanceTimeTask;
  if (*(v1 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_advanceTimeTask))
  {
    v14 = *(v1 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_advanceTimeTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF809C0, &qword_1E49A3978);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
    sub_1E49981DC();

    v15 = *(v1 + v13);
  }

  *(v1 + v13) = 0;

  sub_1E48C12D0(a1, v12, &qword_1ECF807E8, &qword_1E49A3200);
  v16 = type metadata accessor for OverrideTime(0);
  if ((*(*(v16 - 8) + 48))(v12, 1, v16) == 1)
  {
    return sub_1E48C1338(v12, &qword_1ECF807E8, &qword_1E49A3200);
  }

  v18 = &v12[*(v16 + 20)];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = *(v18 + 2);
  v22 = *(v18 + 3);
  sub_1E4945640(v12, type metadata accessor for OverrideTime);
  sub_1E4998A0C();
  result = sub_1E49989FC();
  if ((result & 1) == 0)
  {
    sub_1E4998A0C();
    result = sub_1E49989FC();
    if ((result & 1) == 0)
    {
      v23 = sub_1E499816C();
      (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v24;
      v25[5] = v19;
      v25[6] = v20;
      v25[7] = v21;
      v25[8] = v22;
      v26 = sub_1E4969364(0, 0, v7, &unk_1E49A3990, v25);
      v27 = *(v1 + v13);
      *(v1 + v13) = v26;
    }
  }

  return result;
}

uint64_t sub_1E4942CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a1;
  v8[18] = a4;
  v9 = sub_1E499866C();
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v11 = *(v10 + 64) + 15;
  v8[25] = swift_task_alloc();
  v12 = sub_1E499865C();
  v8[26] = v12;
  v13 = *(v12 - 8);
  v8[27] = v13;
  v14 = *(v13 + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200) - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0) - 8) + 64) + 15;
  v8[31] = swift_task_alloc();
  v17 = sub_1E4996D8C();
  v8[32] = v17;
  v18 = *(v17 - 8);
  v8[33] = v18;
  v19 = *(v18 + 64) + 15;
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4942ED0, 0, 0);
}

uint64_t sub_1E4942ED0()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  if ((sub_1E49981EC() & 1) != 0 || (v2 = *(v0 + 144), Strong = swift_weakLoadStrong(), (*(v0 + 288) = Strong) == 0))
  {
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v21 = *(v0 + 224);
    v20 = *(v0 + 232);
    v22 = *(v0 + 200);
    **(v0 + 136) = 0;

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v4 = Strong;
    v5 = *(v0 + 240);
    v6 = type metadata accessor for OverrideTime(0);
    v7 = *(v6 - 8);
    (*(v7 + 56))(v5, 1, 1, v6);
    v8 = *(v4 + 40);
    swift_beginAccess();
    os_unfair_lock_lock(v8 + 4);
    swift_endAccess();
    v9 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
    swift_beginAccess();
    sub_1E48C1338(v5, &qword_1ECF807E8, &qword_1E49A3200);
    sub_1E48C12D0(v4 + v9, v5, &qword_1ECF807E8, &qword_1E49A3200);
    swift_endAccess();
    v10 = *(v4 + 40);
    swift_beginAccess();
    os_unfair_lock_unlock(v10 + 4);
    swift_endAccess();
    v11 = (*(v7 + 48))(v5, 1, v6);
    v12 = *(v0 + 280);
    if (v11)
    {
      v13 = *(v0 + 256);
      v14 = *(v0 + 264);
      v15 = *(v0 + 248);
      sub_1E48C1338(*(v0 + 240), &qword_1ECF807E8, &qword_1E49A3200);
      (*(v14 + 56))(v15, 1, 1, v13);
      sub_1E4996D4C();
      if ((*(v14 + 48))(v15, 1, v13) != 1)
      {
        sub_1E48C1338(*(v0 + 248), &qword_1ECF809D0, &qword_1E499D6C0);
      }
    }

    else
    {
      v26 = *(v0 + 264);
      v25 = *(v0 + 272);
      v28 = *(v0 + 248);
      v27 = *(v0 + 256);
      v29 = *(v0 + 240);
      v31 = *(v0 + 152);
      v30 = *(v0 + 160);
      (*(v26 + 16))(v25, v29, v27);
      sub_1E48C1338(v29, &qword_1ECF807E8, &qword_1E49A3200);
      sub_1E49989EC();
      sub_1E49989EC();
      sub_1E4996CDC();
      (*(v26 + 8))(v25, v27);
      (*(v26 + 56))(v28, 0, 1, v27);
      (*(v26 + 32))(v12, v28, v27);
    }

    v32 = *(v0 + 280);
    v33 = *(v0 + 224);
    v34 = *(v0 + 232);
    v35 = *(v0 + 208);
    v36 = *(v0 + 216);
    v47 = *(v0 + 200);
    v38 = *(v0 + 168);
    v37 = *(v0 + 176);
    v39 = swift_task_alloc();
    *(v39 + 16) = v4;
    *(v39 + 24) = v32;
    sub_1E49397B0(sub_1E49453AC, v39);

    sub_1E499863C();
    sub_1E49989EC();
    sub_1E49989EC();
    sub_1E4998A1C();
    sub_1E499864C();
    v40 = *(v36 + 8);
    *(v0 + 296) = v40;
    *(v0 + 304) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v33, v35);
    *(v0 + 120) = 0;
    *(v0 + 112) = 0;
    *(v0 + 128) = 1;
    sub_1E49988AC();
    v41 = *(MEMORY[0x1E69E86D0] + 4);
    v42 = swift_task_alloc();
    *(v0 + 312) = v42;
    v43 = sub_1E493B768(&qword_1ECF809D8, MEMORY[0x1E69E8820]);
    *v42 = v0;
    v42[1] = sub_1E4943414;
    v44 = *(v0 + 232);
    v45 = *(v0 + 200);
    v46 = *(v0 + 184);

    return MEMORY[0x1EEE6DA68](v44, v0 + 112, v45, v46, v43);
  }
}

uint64_t sub_1E4943414()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v12 = *v1;
  *(*v1 + 320) = v0;

  v5 = v2[37];
  v4 = v2[38];
  if (v0)
  {
    v6 = v2[29];
    v7 = v2[26];
    (*(v2[24] + 8))(v2[25], v2[23]);
    v5(v6, v7);
    v8 = sub_1E4943AE0;
  }

  else
  {
    v9 = v2[29];
    v10 = v2[26];
    (*(v2[24] + 8))(v2[25], v2[23]);
    v5(v9, v10);
    v8 = sub_1E4943590;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E4943590()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);

  (*(v4 + 8))(v2, v3);
  if ((sub_1E49981EC() & 1) != 0 || (v5 = *(v0 + 144), Strong = swift_weakLoadStrong(), (*(v0 + 288) = Strong) == 0))
  {
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v24 = *(v0 + 224);
    v23 = *(v0 + 232);
    v25 = *(v0 + 200);
    **(v0 + 136) = 0;

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v7 = Strong;
    v8 = *(v0 + 240);
    v9 = type metadata accessor for OverrideTime(0);
    v10 = *(v9 - 8);
    (*(v10 + 56))(v8, 1, 1, v9);
    v11 = *(v7 + 40);
    swift_beginAccess();
    os_unfair_lock_lock(v11 + 4);
    swift_endAccess();
    v12 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
    swift_beginAccess();
    sub_1E48C1338(v8, &qword_1ECF807E8, &qword_1E49A3200);
    sub_1E48C12D0(v7 + v12, v8, &qword_1ECF807E8, &qword_1E49A3200);
    swift_endAccess();
    v13 = *(v7 + 40);
    swift_beginAccess();
    os_unfair_lock_unlock(v13 + 4);
    swift_endAccess();
    v14 = (*(v10 + 48))(v8, 1, v9);
    v15 = *(v0 + 280);
    if (v14)
    {
      v16 = *(v0 + 256);
      v17 = *(v0 + 264);
      v18 = *(v0 + 248);
      sub_1E48C1338(*(v0 + 240), &qword_1ECF807E8, &qword_1E49A3200);
      (*(v17 + 56))(v18, 1, 1, v16);
      sub_1E4996D4C();
      if ((*(v17 + 48))(v18, 1, v16) != 1)
      {
        sub_1E48C1338(*(v0 + 248), &qword_1ECF809D0, &qword_1E499D6C0);
      }
    }

    else
    {
      v29 = *(v0 + 264);
      v28 = *(v0 + 272);
      v31 = *(v0 + 248);
      v30 = *(v0 + 256);
      v32 = *(v0 + 240);
      v34 = *(v0 + 152);
      v33 = *(v0 + 160);
      (*(v29 + 16))(v28, v32, v30);
      sub_1E48C1338(v32, &qword_1ECF807E8, &qword_1E49A3200);
      sub_1E49989EC();
      sub_1E49989EC();
      sub_1E4996CDC();
      (*(v29 + 8))(v28, v30);
      (*(v29 + 56))(v31, 0, 1, v30);
      (*(v29 + 32))(v15, v31, v30);
    }

    v35 = *(v0 + 280);
    v36 = *(v0 + 224);
    v37 = *(v0 + 232);
    v38 = *(v0 + 208);
    v39 = *(v0 + 216);
    v50 = *(v0 + 200);
    v41 = *(v0 + 168);
    v40 = *(v0 + 176);
    v42 = swift_task_alloc();
    *(v42 + 16) = v7;
    *(v42 + 24) = v35;
    sub_1E49397B0(sub_1E49453AC, v42);

    sub_1E499863C();
    sub_1E49989EC();
    sub_1E49989EC();
    sub_1E4998A1C();
    sub_1E499864C();
    v43 = *(v39 + 8);
    *(v0 + 296) = v43;
    *(v0 + 304) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v36, v38);
    *(v0 + 120) = 0;
    *(v0 + 112) = 0;
    *(v0 + 128) = 1;
    sub_1E49988AC();
    v44 = *(MEMORY[0x1E69E86D0] + 4);
    v45 = swift_task_alloc();
    *(v0 + 312) = v45;
    v46 = sub_1E493B768(&qword_1ECF809D8, MEMORY[0x1E69E8820]);
    *v45 = v0;
    v45[1] = sub_1E4943414;
    v47 = *(v0 + 232);
    v48 = *(v0 + 200);
    v49 = *(v0 + 184);

    return MEMORY[0x1EEE6DA68](v47, v0 + 112, v48, v49, v46);
  }
}

uint64_t sub_1E4943AE0()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v10 = v0[25];

  (*(v4 + 8))(v2, v5);

  v11 = v0[1];
  v12 = v0[40];

  return v11();
}

uint64_t sub_1E4943BC8@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v4 = sub_1E4941010(v11);
  v6 = v5;
  v7 = type metadata accessor for OverrideTime(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!v8)
  {
    v9 = sub_1E4996D8C();
    (*(*(v9 - 8) + 24))(v6, a1, v9);
  }

  result = (v4)(v11, 0);
  *a2 = v8 != 0;
  return result;
}

uint64_t sub_1E4943CBC()
{
  sub_1E48B7510((v0 + 2));
  v1 = v0[4];

  v2 = v0[5];

  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime, &qword_1ECF807E8, &qword_1E49A3200);
  v3 = *(v0 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_advanceTimeTask);

  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_initializationTime, &qword_1ECF809D0, &qword_1E499D6C0);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s11ClockPoster10TimeStringV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E499884C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1E499884C() & 1) == 0 || a1[4] != a2[4] || a1[5] != a2[5] || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E499884C() & 1) == 0)
  {
    return 0;
  }

  if (a1[8] != a2[8])
  {
    return 0;
  }

  if (a1[9] != a2[9])
  {
    return 0;
  }

  v6 = type metadata accessor for TimeString(0);
  if ((MEMORY[0x1E691A740](a1 + *(v6 + 36), a2 + *(v6 + 36)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 40);

  return sub_1E4996D2C();
}

uint64_t sub_1E4943E9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v40 - v5;
  v7 = OBJC_IVAR____TtC11ClockPoster5Clock_lastOverrideTime;
  v8 = type metadata accessor for OverrideTime(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  sub_1E4996D7C();
  v9 = OBJC_IVAR____TtC11ClockPoster5Clock_atomicClock;
  type metadata accessor for AtomicClock();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x1E69E7CC8];
  *(v10 + 32) = MEMORY[0x1E69E7CC8];
  *(v0 + v9) = v10;
  v12 = OBJC_IVAR____TtC11ClockPoster5Clock_textClock;
  *(v0 + v12) = [objc_allocWithZone(type metadata accessor for TextClock(0)) init];
  v13 = OBJC_IVAR____TtC11ClockPoster5Clock_dateStreamObservers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A80, &qword_1E49A3A38);
  v14 = swift_allocObject();
  type metadata accessor for CPUnfairLock();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = v11;
  *(v0 + v13) = v14;
  v16 = OBJC_IVAR____TtC11ClockPoster5Clock_textClockStreamObservers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A88, &qword_1E49A3A40);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v17 + 16) = v18;
  *(v17 + 24) = v11;
  *(v0 + v16) = v17;
  v19 = OBJC_IVAR____TtC11ClockPoster5Clock__lastOverridePublishTimeByInterval;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A90, &qword_1E49A3A48);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v20 + 16) = v21;
  *(v20 + 24) = v11;
  *(v0 + v19) = v20;
  v22 = OBJC_IVAR____TtC11ClockPoster5Clock_overrideDateStream;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A70, &qword_1E49A3A28);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = *(*v26 + 96);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  v29 = *(*v26 + 104);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v26 + v29) = v30;
  *(v26 + *(*v26 + 112)) = v11;
  *(v26 + *(*v26 + 120)) = 0;
  *(v0 + v22) = v26;
  v31 = type metadata accessor for OverrideClock(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  *(v0 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock) = sub_1E49414EC(v34);
  v35 = sub_1E499816C();
  (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
  sub_1E499814C();

  v36 = sub_1E499813C();
  v37 = swift_allocObject();
  v38 = MEMORY[0x1E69E85E0];
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = v1;
  sub_1E498DD1C(0, 0, v6, &unk_1E49A3A58, v37);

  *(*(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock) + 24) = &off_1F5E86C80;
  swift_unknownObjectWeakAssign();
  return v1;
}

void *sub_1E49442B4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A70, &qword_1E49A3A28);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  (*(v5 + 56))(v13 + *(*v13 + 96), 1, 1, v4);
  v14 = *(*v13 + 104);
  type metadata accessor for CPUnfairLock();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v13 + v14) = v15;
  *(v13 + *(*v13 + 112)) = MEMORY[0x1E69E7CC8];
  *(v13 + *(*v13 + 120)) = 0;
  a2[4] = v13;
  v16 = sub_1E4996D8C();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A78, &qword_1E49A3A30);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v20[2] = v21;
  sub_1E48C15C8(v9, v20 + *(*v20 + 96), &qword_1ECF809D0, &qword_1E499D6C0);
  a2[5] = v20;
  a2[2] = a1;
  a2[3] = &off_1F5E87C58;
  v22 = swift_allocObject();
  swift_weakInit();
  swift_retain_n();

  sub_1E495D620(sub_1E49457AC, v22);

  return a2;
}

uint64_t _s11ClockPoster10TimeStringV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimeString(0);
  v11 = *(v10 + 36);
  sub_1E4996D7C();
  v21[0] = a1;
  v12 = sub_1E4996EFC();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v14 = *(v10 + 36);
  sub_1E4996D7C();
  v21[1] = a2;
  v15 = sub_1E4996EFC();
  v13(v9, v4);
  if (v12 == v15)
  {
    v16 = *(v10 + 40);
    v17 = sub_1E4996D0C();
  }

  else
  {
    sub_1E4996D7C();
    v18 = sub_1E4996EFC();
    v13(v9, v4);
    sub_1E4996D7C();
    v19 = sub_1E4996EFC();
    v13(v9, v4);
    v17 = v18 < v19;
  }

  return v17 & 1;
}

unint64_t sub_1E494472C()
{
  result = qword_1ECF80830;
  if (!qword_1ECF80830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80830);
  }

  return result;
}

unint64_t sub_1E49447C4(uint64_t a1)
{
  result = sub_1E49447EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E49447EC()
{
  result = qword_1ECF80848;
  if (!qword_1ECF80848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80848);
  }

  return result;
}

uint64_t sub_1E49448E0()
{
  result = sub_1E4996D8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E494498C()
{
  type metadata accessor for _NSRange(319);
  if (v0 <= 0x3F)
  {
    sub_1E4996F4C();
    if (v1 <= 0x3F)
    {
      sub_1E4996D8C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4944A68()
{
  sub_1E4944D9C(319, &qword_1ECF80888, type metadata accessor for OverrideTime);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1E4996D8C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E4944CD8()
{
  sub_1E4944D9C(319, &qword_1ECF80920, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1E4944D9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E49984BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E4944E18()
{
  sub_1E4944D9C(319, &qword_1ECF80888, type metadata accessor for OverrideTime);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1E4944D9C(319, &qword_1ECF80920, MEMORY[0x1E6969530]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E4944F84()
{
  result = sub_1E4996F4C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4945024()
{
  result = qword_1ECF80970;
  if (!qword_1ECF80970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80970);
  }

  return result;
}

unint64_t sub_1E494507C()
{
  result = qword_1ECF80978;
  if (!qword_1ECF80978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80978);
  }

  return result;
}

uint64_t sub_1E49450D0(uint64_t a1)
{
  result = sub_1E493B768(&qword_1ECF80980, type metadata accessor for TextClockDescriptor);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4945174()
{
  result = qword_1ECF80990;
  if (!qword_1ECF80990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80990);
  }

  return result;
}

unint64_t sub_1E49451CC()
{
  result = qword_1ECF80998;
  if (!qword_1ECF80998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80998);
  }

  return result;
}

unint64_t sub_1E4945224()
{
  result = qword_1ECF809A0;
  if (!qword_1ECF809A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF809A0);
  }

  return result;
}

unint64_t sub_1E494527C()
{
  result = qword_1ECF809A8;
  if (!qword_1ECF809A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF809A8);
  }

  return result;
}

uint64_t sub_1E49452D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E48BFD3C;

  return sub_1E4942CC8(a1, v4, v5, v6, v7, v8, v9, v10);
}

void *sub_1E49453B4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  result = v1(&v5);
  *v2 = v5;
  v2[1] = 0;
  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4945410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4945478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E49454E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TimeString(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TextClockDescriptor(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E48ECAA8;

  return sub_1E493D488(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1E4945640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E49456C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48ECAA8;

  return sub_1E493D290(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_105Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1E4945800(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E493C5A0(a1, v4, v5, v6);
}

uint64_t sub_1E49458B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48BFD3C;

  return sub_1E4941714(a1, v4, v5, v7, v6);
}

uint64_t sub_1E4945974(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E48ECAA8;

  return sub_1E49422FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E4945A78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E48ECAA8;

  return sub_1E498FCE0(a1, v5);
}

uint64_t sub_1E4945B94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1802465132;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEE0064656553646ELL;
    v4 = 0xE900000000000065;
    if (a1 == 2)
    {
      v6 = 0x756F72676B636162;
    }

    else
    {
      v6 = 0x6D69546573696F6ELL;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xEE0064656553646ELL;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x756F726765726F66;
    }

    else
    {
      v6 = 1802465132;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x756F72676B636162;
  v10 = 0xEE0064656553646ELL;
  if (a2 != 2)
  {
    v9 = 0x6D69546573696F6ELL;
    v10 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 0x756F726765726F66;
    v8 = 0xEE0064656553646ELL;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E499884C();
  }

  return v13 & 1;
}

uint64_t sub_1E4945D04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x676F6C616E61;
    }

    else
    {
      v4 = 0x6C617469676964;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x646C726F77;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x72616C6F73;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 2036427888;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x676F6C616E61;
    }

    else
    {
      v9 = 0x6C617469676964;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x72616C6F73;
    if (a2 != 3)
    {
      v6 = 2036427888;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x646C726F77;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1E499884C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1E4945E68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = "gital";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v4)
    {
      v7 = "ANALOG_CLOCK_TITLE";
    }

    else
    {
      v7 = "gital";
    }
  }

  else
  {
    if (a1 == 2)
    {
      v5 = "SOLAR_CLOCK_TITLE";
    }

    else if (a1 == 3)
    {
      v5 = "WORLD_CLOCK_TITLE";
    }

    else
    {
      v5 = "FLOAT_CLOCK_TITLE";
    }

    v7 = (v5 - 32);
    v6 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD000000000000013;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a2)
    {
      v3 = "ANALOG_CLOCK_TITLE";
    }
  }

  else if (a2 == 2)
  {
    v3 = "DIGITAL_CLOCK_TITLE";
  }

  else
  {
    v3 = "SOLAR_CLOCK_TITLE";
    if (a2 != 3)
    {
      v3 = "WORLD_CLOCK_TITLE";
    }
  }

  if (v6 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E499884C();
  }

  return v8 & 1;
}

uint64_t sub_1E4945FB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656C62617A69;
  v3 = 0x6D6F747375636E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x746E656964617267;
    }

    else
    {
      v5 = 0x6E6F5474696C7073;
    }

    if (v4 == 2)
    {
      v6 = 0xEE0079617272615FLL;
    }

    else
    {
      v6 = 0xED0000625F615F65;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x726F6C6F63;
    }

    else
    {
      v5 = 0x6D6F747375636E75;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEE00656C62617A69;
    }
  }

  v7 = 0x746E656964617267;
  v8 = 0xEE0079617272615FLL;
  if (a2 != 2)
  {
    v7 = 0x6E6F5474696C7073;
    v8 = 0xED0000625F615F65;
  }

  if (a2)
  {
    v3 = 0x726F6C6F63;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E499884C();
  }

  return v11 & 1;
}

__n128 ClockPosterConfiguration.init(look:kind:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v4;
  *(a3 + 96) = *(a1 + 96);
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  result = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 97) = v3;
  return result;
}

uint64_t ClockPosterConfiguration.init(defaultLookForKind:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 97) = v3;
  if (v3 <= 1)
  {
    if (v3)
    {
      result = sub_1E48D4D14();
    }

    else
    {
      result = sub_1E48D5058();
    }
  }

  else
  {
    if (v3 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1E499B670;
      result = sub_1E49347A0(v5 + 32);
      goto LABEL_11;
    }

    if (v3 == 3)
    {
      result = sub_1E48D57B4();
    }

    else
    {
      result = sub_1E48D5B04();
    }
  }

  v5 = result;
LABEL_11:
  if (*(v5 + 16))
  {
    sub_1E48C8304(v5 + 32, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClockPosterConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B00, &qword_1E49A3AC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E49464D8();
  sub_1E49989BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  HIBYTE(v13) = 0;
  sub_1E48EB55C();
  sub_1E499878C();
  v21[4] = v18;
  v21[5] = v19;
  v22 = v20;
  v21[0] = v14;
  v21[1] = v15;
  v21[2] = v16;
  v21[3] = v17;
  HIBYTE(v13) = 1;
  sub_1E48F01EC();
  sub_1E499878C();
  (*(v6 + 8))(v10, v5);
  v23 = v14;
  sub_1E48CCF0C(v21, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1E48CC924(v21);
}

unint64_t sub_1E49464D8()
{
  result = qword_1ECF80B08;
  if (!qword_1ECF80B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B08);
  }

  return result;
}

uint64_t ClockPosterConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B10, &unk_1E49A3AD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E49464D8();
  sub_1E49989CC();
  v13[15] = *(v3 + 97);
  v13[14] = 1;
  sub_1E48F0338();
  sub_1E49987DC();
  if (!v2)
  {
    v13[13] = 0;
    sub_1E48EB5B0();
    sub_1E49987DC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E49466B8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1684957547;
  }

  else
  {
    v2 = 1802465132;
  }

  if (*a2)
  {
    v3 = 1684957547;
  }

  else
  {
    v3 = 1802465132;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E499884C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E4946730()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E4946798()
{
  *v0;
  sub_1E4997F5C();
}

uint64_t sub_1E49467E4()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E4946848@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E499873C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1E49468A8(uint64_t *a1@<X8>)
{
  v2 = 1802465132;
  if (*v1)
  {
    v2 = 1684957547;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_1E49468D0()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 1802465132;
  }
}

uint64_t sub_1E49468F4@<X0>(char *a1@<X8>)
{
  v2 = sub_1E499873C();

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

uint64_t sub_1E4946958(uint64_t a1)
{
  v2 = sub_1E49464D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4946994(uint64_t a1)
{
  v2 = sub_1E49464D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ClockPosterConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 97);
  v5 = *(a1 + 97);

  return sub_1E4945D04(v5, v4);
}

uint64_t sub_1E4946A54(uint64_t a1, uint64_t a2)
{
  if ((_s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 97);
  v5 = *(a1 + 97);

  return sub_1E4945D04(v5, v4);
}

__n128 static ClockPosterConfiguration.configuration(from:kind:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, __n128 *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v56 - v15;
  v58 = sub_1E499708C();
  v17 = *(v58 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v58, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v56 - v24;
  v26 = *a3;
  if (a2 >> 60 == 15)
  {
    HIBYTE(v62) = *a3;
    if (v26 <= 1)
    {
      if (v26)
      {
        v27 = sub_1E48D4D14();
      }

      else
      {
        v27 = sub_1E48D5058();
      }
    }

    else
    {
      if (v26 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1E499B670;
        sub_1E49347A0(v40 + 32);
        goto LABEL_21;
      }

      if (v26 == 3)
      {
        v27 = sub_1E48D57B4();
      }

      else
      {
        v27 = sub_1E48D5B04();
      }
    }

    v40 = v27;
LABEL_21:
    if (*(v40 + 16))
    {
      sub_1E48C8304(v40 + 32, v61);

      if (qword_1EE2BB450 == -1)
      {
LABEL_23:
        v41 = qword_1EE2BB458;
        v42 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private;
        swift_beginAccess();
        sub_1E48C12D0(v41 + v42, v12, &qword_1ECF7F008, &qword_1E499B170);
        v43 = *(v17 + 48);
        v44 = v58;
        if (v43(v12, 1, v58) == 1)
        {
          sub_1E4904BF4(v21);
          if (v43(v12, 1, v44) != 1)
          {
            sub_1E48C1338(v12, &qword_1ECF7F008, &qword_1E499B170);
          }
        }

        else
        {
          (*(v17 + 32))(v21, v12, v44);
        }

        sub_1E48CCF0C(v61, v60);
        v45 = sub_1E499706C();
        v46 = sub_1E49982EC();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v59 = v48;
          *v47 = 136446210;
          v49 = sub_1E48C6D6C();
          v51 = v50;
          sub_1E48CC924(v60);
          v52 = sub_1E48CA094(v49, v51, &v59);

          *(v47 + 4) = v52;
          _os_log_impl(&dword_1E48B0000, v45, v46, "Loading default configuration:\n %{public}s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v48);
          MEMORY[0x1E691CED0](v48, -1, -1);
          MEMORY[0x1E691CED0](v47, -1, -1);
        }

        else
        {

          sub_1E48CC924(v60);
        }

        (*(v17 + 8))(v21, v58);
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_23;
  }

  v60[0] = *a3;
  sub_1E4949038(a1, a2);
  v57 = a1;
  sub_1E4947164(v60, v61);
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v28 = qword_1EE2BB458;
  v29 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private;
  swift_beginAccess();
  sub_1E48C12D0(v28 + v29, v16, &qword_1ECF7F008, &qword_1E499B170);
  v30 = *(v17 + 48);
  v31 = v58;
  if (v30(v16, 1, v58) == 1)
  {
    sub_1E4904BF4(v25);
    if (v30(v16, 1, v31) != 1)
    {
      sub_1E48C1338(v16, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v17 + 32))(v25, v16, v31);
  }

  sub_1E48CCF0C(v61, v60);
  v32 = sub_1E499706C();
  v33 = sub_1E49982EC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v59 = v35;
    *v34 = 136446210;
    v36 = sub_1E48C6D6C();
    v38 = v37;
    sub_1E48CC924(v60);
    v39 = sub_1E48CA094(v36, v38, &v59);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_1E48B0000, v32, v33, "Loading existing configuration:\n %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x1E691CED0](v35, -1, -1);
    MEMORY[0x1E691CED0](v34, -1, -1);
    sub_1E494908C(v57, a2);

    (*(v17 + 8))(v25, v58);
  }

  else
  {
    sub_1E494908C(v57, a2);

    sub_1E48CC924(v60);
    (*(v17 + 8))(v25, v31);
  }

LABEL_31:
  v53 = v61[5];
  a4[4] = v61[4];
  a4[5] = v53;
  a4[6].n128_u16[0] = v62;
  v54 = v61[1];
  *a4 = v61[0];
  a4[1] = v54;
  result = v61[3];
  a4[2] = v61[2];
  a4[3] = result;
  return result;
}

__n128 sub_1E4947164@<Q0>(unsigned __int8 *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = sub_1E499708C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v10 = *a1;
  v11 = sub_1E4996AFC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1E4996AEC();
  sub_1E4949FD0();
  sub_1E4996ADC();

  *(a2 + 64) = v19;
  *(a2 + 80) = v20;
  *(a2 + 96) = v21;
  *a2 = v15;
  *(a2 + 16) = v16;
  result = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v18;
  return result;
}

uint64_t static ClockPosterConfiguration.configuration(from:kind:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, __n128 *a3@<X8>)
{
  v4 = *a2;
  if (!a1)
  {
    goto LABEL_12;
  }

  *&v13 = 0xD000000000000012;
  *(&v13 + 1) = 0x80000001E49A83D0;
  sub_1E499854C();
  if (!*(a1 + 16) || (v6 = sub_1E49484EC(v12), (v7 & 1) == 0))
  {
    sub_1E49490A0(v12);
LABEL_12:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_13;
  }

  sub_1E48CCF68(*(a1 + 56) + 32 * v6, &v13);
  sub_1E49490A0(v12);
  if (!*(&v14 + 1))
  {
LABEL_13:
    sub_1E48C1338(&v13, &unk_1ECF81660, &qword_1E49A3AE0);
    v9 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_14;
  }

  v8 = swift_dynamicCast();
  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v12[1];
  }

  else
  {
    v10 = 0xF000000000000000;
  }

LABEL_14:
  LOBYTE(v12[0]) = v4;
  static ClockPosterConfiguration.configuration(from:kind:)(v9, v10, v12, a3);
  return sub_1E494908C(v9, v10);
}

unint64_t ClockPosterConfiguration.dictionaryRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v3 = sub_1E499708C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v6 = sub_1E4996B3C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1E4996B2C();
  sub_1E4996B0C();
  sub_1E49490F4();
  v9 = sub_1E4996B1C();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B20, &qword_1E49A3AE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499B670;
  sub_1E499854C();
  *(inited + 96) = MEMORY[0x1E6969080];
  *(inited + 72) = v9;
  *(inited + 80) = v11;
  v13 = sub_1E4949AB8(inited);
  swift_setDeallocating();
  sub_1E48C1338(inited + 32, &qword_1ECF80B28, &qword_1E49A3AF0);

  return v13;
}

uint64_t ClockPosterConfiguration.data.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v3 = sub_1E499708C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v6 = sub_1E4996B3C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1E4996B2C();
  sub_1E4996B0C();
  sub_1E49490F4();
  v9 = sub_1E4996B1C();

  return v9;
}

unint64_t sub_1E4947F28(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E4996DBC();
  sub_1E4949E6C(&qword_1ECF814C0, MEMORY[0x1E69695A8]);
  v5 = sub_1E4997E4C();

  return sub_1E4948530(a1, v5);
}

unint64_t sub_1E4947FC0(double *a1)
{
  v3 = *(v1 + 40);
  sub_1E499892C();
  v4 = *a1;
  if (*a1 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1E691C170](*&v4);
  v5 = *(type metadata accessor for TextClockDescriptor(0) + 20);
  sub_1E4996F4C();
  sub_1E4949E6C(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
  sub_1E4997E5C();
  v6 = sub_1E499896C();

  return sub_1E49486F0(a1, v6);
}

unint64_t sub_1E494809C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1E4997EEC();
  sub_1E499892C();
  sub_1E4997F5C();
  v4 = sub_1E499896C();

  return sub_1E4948C20(a1, v4);
}

unint64_t sub_1E494812C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1E499892C();
  sub_1E4997F5C();
  v6 = sub_1E499896C();

  return sub_1E4948860(a1, a2, v6);
}

unint64_t sub_1E49481A4(unsigned int a1)
{
  v3 = MEMORY[0x1E691C120](*(v1 + 40), a1, 4);

  return sub_1E4948918(a1, v3);
}

unint64_t sub_1E49481EC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1E499892C();
  ClockFaceLook.hash(into:)();
  v4 = sub_1E499896C();

  return sub_1E4948984(a1, v4);
}

unint64_t sub_1E4948258(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1E499892C();
  sub_1E4997F5C();

  v4 = sub_1E499896C();

  return sub_1E4948A4C(a1, v4);
}

unint64_t sub_1E4948350(double a1, double a2)
{
  v5 = *(v2 + 40);
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(a1, a2);
  v6 = sub_1E499896C();

  return sub_1E4948D24(v6, a1, a2);
}

unint64_t sub_1E49483C4(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E499892C();
  sub_1E4997F5C();

  v5 = sub_1E499896C();

  return sub_1E4948D9C(a1 & 1, v5);
}

unint64_t sub_1E4948474(char a1)
{
  v3 = *(v1 + 40);
  sub_1E499892C();
  MEMORY[0x1E691C170](qword_1E49A3E58[a1]);
  v4 = sub_1E499896C();

  return sub_1E4948EE0(a1, v4);
}

unint64_t sub_1E49484EC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1E499852C();

  return sub_1E4948F70(a1, v5);
}

unint64_t sub_1E4948530(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1E4996DBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_1E4949E6C(&qword_1ECF80B70, MEMORY[0x1E69695A8]);
      v17 = sub_1E4997E9C();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1E49486F0(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for TextClockDescriptor(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = -1 << *(v2 + 32);
  v12 = a2 & ~v11;
  if ((*(v2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *a1;
    v15 = *(v8 + 72);
    do
    {
      sub_1E4949EB4(*(v2 + 48) + v15 * v12, v10);
      if (*v10 == v14)
      {
        v16 = MEMORY[0x1E691A740](v10 + *(v5 + 20), a1 + *(v5 + 20), *v10);
        sub_1E4949F18(v10);
        if (v16)
        {
          return v12;
        }
      }

      else
      {
        sub_1E4949F18(v10);
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1E4948860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E499884C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E4948918(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4948984(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1E48C8304(*(v2 + 48) + 104 * v4, v8);
      v6 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
      sub_1E48C8360(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E4948A4C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE700000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 0x676F6C616E61;
        }

        else
        {
          v8 = 0x6C617469676964;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      else if (v7 == 2)
      {
        v9 = 0xE500000000000000;
        v8 = 0x646C726F77;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x72616C6F73;
        }

        else
        {
          v8 = 2036427888;
        }

        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      if (v6 == 3)
      {
        v10 = 0x72616C6F73;
      }

      else
      {
        v10 = 2036427888;
      }

      if (v6 == 3)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      if (v6 == 2)
      {
        v10 = 0x646C726F77;
        v11 = 0xE500000000000000;
      }

      if (v6)
      {
        v12 = 0x676F6C616E61;
      }

      else
      {
        v12 = 0x6C617469676964;
      }

      if (v6)
      {
        v5 = 0xE600000000000000;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_1E499884C();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE700000000000000;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1E4948C20(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1E4997EEC();
      v9 = v8;
      if (v7 == sub_1E4997EEC() && v9 == v10)
      {
        break;
      }

      v12 = sub_1E499884C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1E4948D24(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4948D9C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x4B72656874616577;
    }

    else
    {
      v6 = 0x6C616E7265746E69;
    }

    if (a1)
    {
      v7 = 0xEA00000000007469;
    }

    else
    {
      v7 = 0xEA00000000004955;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x4B72656874616577 : 0x6C616E7265746E69;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000007469 : 0xEA00000000004955;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1E499884C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1E4948EE0(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (a1)
      {
        if (a1 == 1)
        {
          if (v7 == 1)
          {
            return result;
          }
        }

        else if (v7 == 2)
        {
          return result;
        }
      }

      else if (!*(*(v2 + 48) + result))
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4948F70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E4949F74(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E691BD50](v9, a1);
      sub_1E49490A0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1E4949038(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1E494908C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E48CD2C8(a1, a2);
  }

  return a1;
}

unint64_t sub_1E49490F4()
{
  result = qword_1ECF80B18;
  if (!qword_1ECF80B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B18);
  }

  return result;
}

unint64_t sub_1E4949148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B50, &qword_1E49A3DF8);
    v3 = sub_1E499871C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1E494809C(v6);
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

unint64_t sub_1E4949258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80130, &qword_1E49A3E20);
    v3 = sub_1E499871C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1E494812C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1E494935C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B60, &qword_1E49A3E08);
    v3 = sub_1E499871C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_1E49481A4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_1E494943C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B58, &qword_1E49A3E00);
    v3 = sub_1E499871C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1E494809C(v6);
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

unint64_t sub_1E4949534(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B88, &qword_1E49A3E40);
    v3 = sub_1E499871C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1E494809C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1E494962C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B80, &unk_1E49A3E30);
    v3 = sub_1E499871C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E48C12D0(v4, &v15, &qword_1ECF7FC48, &unk_1E499E5B0);
      v5 = v15;
      v6 = v16;
      result = sub_1E494812C(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1E494975C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B68, &unk_1E49A3E10);
    v3 = sub_1E499871C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1E494809C(v6);
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

unint64_t sub_1E4949870(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_1E499871C();
    v10 = a1 + 32;

    while (1)
    {
      sub_1E48C12D0(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_1E494809C(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_1E48C42DC(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

unint64_t sub_1E4949988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B78, &qword_1E49A3E28);
    v3 = sub_1E499871C();

    for (i = a1 + 40; ; i += 56)
    {
      v5 = *(i - 8);
      v6 = *i;
      v16 = *(i + 24);
      v17 = *(i + 8);
      v7 = *(i + 40);

      v8 = v7;
      result = sub_1E494812C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 40 * result;
      *v12 = v17;
      *(v12 + 16) = v16;
      *(v12 + 32) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1E4949AB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B90, &qword_1E49A3E48);
    v3 = sub_1E499871C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E48C12D0(v4, v13, &qword_1ECF80B28, &qword_1E49A3AF0);
      result = sub_1E49484EC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1E48C42DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1E4949BF4(uint64_t a1)
{
  result = sub_1E4949C1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4949C1C()
{
  result = qword_1ECF80B30;
  if (!qword_1ECF80B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B30);
  }

  return result;
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E4949C9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 98))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E4949CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E4949D68()
{
  result = qword_1ECF80B38;
  if (!qword_1ECF80B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B38);
  }

  return result;
}

unint64_t sub_1E4949DC0()
{
  result = qword_1ECF80B40;
  if (!qword_1ECF80B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B40);
  }

  return result;
}

unint64_t sub_1E4949E18()
{
  result = qword_1ECF80B48;
  if (!qword_1ECF80B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B48);
  }

  return result;
}

uint64_t sub_1E4949E6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4949EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextClockDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4949F18(uint64_t a1)
{
  v2 = type metadata accessor for TextClockDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4949FD0()
{
  result = qword_1ECF80B98;
  if (!qword_1ECF80B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B98);
  }

  return result;
}

id sub_1E494A024(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView____lazy_storage___scaler];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v9[40] = 1;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor] = 0;
  v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_redMode] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView] = 0;
  v10 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_overrideStreamTask] = 0;
  v11 = [objc_allocWithZone(type metadata accessor for AnalogClockDialView()) initWithFrame_];
  v12 = *&v4[v10];
  *&v4[v10] = v11;

  v14.receiver = v4;
  v14.super_class = type metadata accessor for AnalogClockFaceView();
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

void sub_1E494A194()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v84 - v5;
  v7 = type metadata accessor for AnalogClockFaceView();
  v90.receiver = v0;
  v90.super_class = v7;
  objc_msgSendSuper2(&v90, sel_layoutSubviews);
  v91 = UIView.cp_safeAreaInsets(centering:)(1);
  top = v91.top;
  left = v91.left;
  [v0 frame];
  UIEdgeInsetsInsetRect_0(v10, v11, v12, v13, top, left);
  UIRectIntegralWithViewScale();
  v17 = v16;
  v19 = v18;
  v20 = v14;
  v21 = v15;
  v22 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView;
  if (!*&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView])
  {
    v23 = [objc_allocWithZone(AnalogHandsView) initWithFixedSize_];
    v24 = *&v0[v22];
    *&v0[v22] = v23;
  }

  sub_1E494B0D8();
  v25 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_overrideStreamTask;
  if (!*&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_overrideStreamTask])
  {
    v26 = sub_1E499816C();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E499814C();

    v28 = sub_1E499813C();
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E85E0];
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = v27;

    v31 = sub_1E49690B8(0, 0, v6, &unk_1E49A3EB0, v29);
    v32 = *&v1[v25];
    *&v1[v25] = v31;
  }

  sub_1E494B934();
  v33 = objc_opt_self();
  v34 = swift_allocObject();
  *(v34 + 2) = v1;
  v34[3] = v17;
  v34[4] = v19;
  v34[5] = v20;
  v34[6] = v21;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E494BE74;
  *(v35 + 24) = v34;
  aBlock[4] = sub_1E48C36A4;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E496F580;
  aBlock[3] = &block_descriptor_42;
  v36 = _Block_copy(aBlock);
  v37 = v1;

  [v33 performWithoutAnimation_];
  _Block_release(v36);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v38 = [v37 effectiveUserInterfaceLayoutDirection];
  v39 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView;
  if (v38 == 1)
  {
    v40 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView;
  }

  else
  {
    v40 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView;
  }

  v41 = *&v37[v40];
  if (v38 == 1)
  {
    v39 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView;
  }

  v42 = *&v37[v39];
  v43 = &qword_1ECF80000;
  v87 = v20;
  v88 = v19;
  v86 = v21;
  if (v41)
  {
    v85 = v22;
    v44 = *&v37[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView];
    if (!v44)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v45 = v17;
    v46 = *(v44 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame);
    v47 = *(v44 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame + 8);
    v48 = *(v44 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame + 16);
    v49 = *(v44 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame + 24);
    v50 = v42;
    v51 = v41;
    v52 = v50;
    [v37 convertRect:v44 fromView:{v46, v47, v48, v49}];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    [v51 intrinsicContentSize];
    v62 = v61;
    v64 = v63;
    v92.origin.x = v54;
    v92.origin.y = v56;
    v92.size.width = v58;
    v92.size.height = v60;
    MinX = CGRectGetMinX(v92);
    v93.origin.x = v54;
    v93.origin.y = v56;
    v93.size.width = v58;
    v93.size.height = v60;
    [v51 setFrame_];
    v17 = v45;
    v20 = v87;
    v19 = v88;
    v21 = v86;
    v22 = v85;
    v43 = &qword_1ECF80000;
    if (!v42)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v66 = v42;
    if (!v42)
    {
      goto LABEL_18;
    }
  }

  v67 = *&v37[v43[377]];
  if (v67)
  {
    v68 = v17;
    [v37 byte_1E876131C];
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    [v42 intrinsicContentSize];
    v78 = v77;
    v80 = v79;
    v94.origin.x = v70;
    v94.origin.y = v72;
    v94.size.width = v74;
    v94.size.height = v76;
    v81 = CGRectGetMaxX(v94) - v78;
    v95.origin.x = v70;
    v95.origin.y = v72;
    v95.size.width = v74;
    v95.size.height = v76;
    [v42 setFrame_];

    v17 = v68;
    v20 = v87;
    v19 = v88;
    v21 = v86;
LABEL_18:
    v96.origin.x = v17;
    v96.origin.y = v19;
    v96.size.width = v20;
    v96.size.height = v21;
    CGRectGetHeight(v96);
    v97.origin.x = v17;
    v97.origin.y = v19;
    v97.size.width = v20;
    v97.size.height = v21;
    CGRectGetHeight(v97);
    v82 = *&v1[v22];
    if (v82)
    {
      v83 = v82;
      UIRectCenteredRect();
      [v83 setFrame_];

      return;
    }

    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1E494A7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C0, &qword_1E49A3A70);
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = sub_1E499814C();
  v4[18] = sub_1E499813C();
  v16 = sub_1E499811C();
  v4[19] = v16;
  v4[20] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1E494A9E8, v16, v15);
}

uint64_t sub_1E494A9E8()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[5];
  sub_1E493C7A4(v2);
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v6 = v0[17];
  v7 = sub_1E499813C();
  v0[21] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_1E494AB40;
  v10 = v0[16];
  v11 = v0[14];
  v12 = v0[10];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v7, v13, v11);
}

uint64_t sub_1E494AB40()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E494AC84, v5, v4);
}

uint64_t sub_1E494AC84()
{
  v1 = v0[10];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v2 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[14]);

LABEL_11:
    v28 = v0[16];
    v29 = v0[13];
    v31 = v0[9];
    v30 = v0[10];
    v32 = v0[8];

    v33 = v0[1];

    return v33();
  }

  v3 = v0[5];
  sub_1E48D4BCC(v1, v0[9]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v23 = v0[18];
    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[14];
    v27 = v0[9];

    sub_1E48C1338(v27, &qword_1ECF809D0, &qword_1E499D6C0);
    (*(v25 + 8))(v24, v26);
    goto LABEL_11;
  }

  v8 = Strong;
  v9 = *(Strong + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView);
  if (v9)
  {
    v10 = v0[8];
    sub_1E48D4CA4(v0[9], v10);
    v11 = sub_1E4996D8C();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v10, 1, v11);
    v14 = v9;
    v15 = 0;
    if (v13 != 1)
    {
      v16 = v0[8];
      v15 = sub_1E4996CEC();
      (*(v12 + 8))(v16, v11);
    }

    v17 = v0[9];
    [v14 setOverrideDate_];

    sub_1E48C1338(v17, &qword_1ECF809D0, &qword_1E499D6C0);
    v18 = v0[17];
    v19 = sub_1E499813C();
    v0[21] = v19;
    v20 = *(MEMORY[0x1E69E8678] + 4);
    v21 = swift_task_alloc();
    v0[22] = v21;
    *v21 = v0;
    v21[1] = sub_1E494AB40;
    v22 = v0[16];
    v7 = v0[14];
    Strong = v0[10];
    v6 = MEMORY[0x1E69E85E0];
    v5 = v19;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6D9C8](Strong, v5, v6, v7);
}

id sub_1E494AF64(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView;
  result = *(a1 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  [result setFrame_];
  result = *(a1 + v2);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return [result layoutIfNeeded];
}

void sub_1E494B0D8()
{
  v1 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView];
  if (v1)
  {
    if (v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_redMode] == 1)
    {
      v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v3 = v1;
      v4 = [v2 initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
      [v3 applySecondHandColor_];

      v5 = [v3 hourHandView];
      if (!v5)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
      [v5 setColor_];

      v7 = [v3 minuteHandView];
      if (!v7)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    }

    else
    {
      v9 = v1;
      v10 = [v0 tintColor];
      [v9 applySecondHandColor_];

      v11 = [v9 hourHandView];
      if (!v11)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = objc_opt_self();
      v13 = [v12 whiteColor];
      [v11 setColor_];

      v7 = [v9 minuteHandView];
      if (!v7)
      {
LABEL_22:
        __break(1u);
        return;
      }

      v8 = [v12 whiteColor];
    }

    v14 = v8;
    [v7 setColor_];
  }

  v15 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
  if (v15)
  {
    v16 = v15;
    v17 = [v0 tintColor];
    [v16 setTintColor_];
  }

  v18 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1E494B400();
    [v19 setTintColor_];
  }

  v21 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView];
  if (!v21)
  {
    __break(1u);
    goto LABEL_19;
  }

  [v21 setNeedsLayout];
}

id sub_1E494B400()
{
  v1 = sub_1E4996E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4996E2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80BE0, &unk_1E49A3E98);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v36 - v16;
  v38 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor;
  v18 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor];
  v19 = v18;
  if (!v18)
  {
    v19 = [v0 tintColor];
  }

  v39 = v19;
  if (*&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView])
  {
    type metadata accessor for AnalogClockFaceDateComplicationView();
    v20 = swift_dynamicCastClass();
    v21 = v18;
    if (v20)
    {
      v37 = v0;
      v22 = sub_1E495F1E8(&unk_1F5E82628);
      swift_arrayDestroy();
      sub_1E4996DEC();
      sub_1E4996E1C();
      (*(v8 + 8))(v12, v7);
      sub_1E4996DFC();
      (*(v2 + 8))(v6, v1);
      v23 = sub_1E4996DDC();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v17, 1, v23) == 1)
      {

        sub_1E48C1338(v17, &qword_1ECF80BE0, &unk_1E49A3E98);
      }

      else
      {
        v26 = sub_1E4996DCC();
        v28 = v27;
        (*(v24 + 8))(v17, v23);
        LOBYTE(v26) = sub_1E494B83C(v26, v28, v22);

        if ((v26 & 1) != 0 && *&v37[v38])
        {
          v29 = [objc_opt_self() whiteColor];
          v30 = swift_allocObject();
          *(v30 + 16) = v29;
          v31 = objc_allocWithZone(MEMORY[0x1E69DC888]);
          aBlock[4] = sub_1E492429C;
          aBlock[5] = v30;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1E4923F24;
          aBlock[3] = &block_descriptor_9;
          v32 = _Block_copy(aBlock);
          v33 = v29;
          v34 = [v31 initWithDynamicProvider_];

          _Block_release(v32);

          return v34;
        }
      }
    }
  }

  else
  {
    v25 = v18;
  }

  return v39;
}

uint64_t sub_1E494B83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1E499892C();
  sub_1E4997F5C();
  v7 = sub_1E499896C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1E499884C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_1E494B934()
{
  v1 = [v0 subviews];
  sub_1E48D8F04();
  result = sub_1E49980BC();
  v3 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView;
  v4 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = result;
  v6 = v4;

  v32 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v31 = &v32;
  v9 = sub_1E49964FC(sub_1E494BD6C, v30, v5);

  if ((v9 & 1) == 0)
  {
    if (!*&v0[v3])
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    [v0 addSubview_];
  }

  v10 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
  if (v10)
  {
    v11 = v10;
    v12 = [v0 subviews];
    v13 = sub_1E49980BC();

    v32 = v11;
    MEMORY[0x1EEE9AC00](v14, v15);
    v31 = &v32;
    LOBYTE(v12) = sub_1E49964FC(sub_1E494BF58, v30, v13);

    if ((v12 & 1) == 0)
    {
      [v0 addSubview_];
    }
  }

  v16 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView];
  if (v16)
  {
    v17 = v16;
    v18 = [v0 subviews];
    v19 = sub_1E49980BC();

    v32 = v17;
    MEMORY[0x1EEE9AC00](v20, v21);
    v31 = &v32;
    LOBYTE(v18) = sub_1E49964FC(sub_1E494BF58, v30, v19);

    if ((v18 & 1) == 0)
    {
      [v0 addSubview_];
    }
  }

  v22 = [v0 subviews];
  result = sub_1E49980BC();
  v23 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView;
  v24 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView];
  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = result;
  v26 = v24;

  v32 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v32;
  v29 = sub_1E49964FC(sub_1E494BF58, v30, v25);

  if (v29)
  {
    return result;
  }

  if (!*&v0[v23])
  {
LABEL_21:
    __break(1u);
    return result;
  }

  return [v0 addSubview_];
}

id sub_1E494BC88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalogClockFaceView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E494BDC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E494A7D0(a1, v4, v5, v6);
}

id sub_1E494BE74()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  return sub_1E494AF64(v0[2]);
}

void sub_1E494BE84()
{
  v1 = v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView____lazy_storage___scaler;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_redMode) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_overrideStreamTask) = 0;
  sub_1E49986DC();
  __break(1u);
}

Swift::Void __swiftcall UIView.cp_applyFullscreenConstraints(inContainer:)(UIView *inContainer)
{
  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E49A3EC0;
  v6 = [(UIView *)inContainer leadingAnchor];
  v7 = [v2 leadingAnchor];
  v8 = [(NSLayoutXAxisAnchor *)v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [(UIView *)inContainer trailingAnchor];
  v10 = [v2 trailingAnchor];
  v11 = [(NSLayoutXAxisAnchor *)v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [(UIView *)inContainer topAnchor];
  v13 = [v2 topAnchor];
  v14 = [(NSLayoutYAxisAnchor *)v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [(UIView *)inContainer bottomAnchor];
  v16 = [v2 bottomAnchor];
  v17 = [(NSLayoutYAxisAnchor *)v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_1E494C1CC();
  v18 = sub_1E499809C();

  [v4 activateConstraints_];
}

unint64_t sub_1E494C1CC()
{
  result = qword_1ECF80BE8;
  if (!qword_1ECF80BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF80BE8);
  }

  return result;
}

UIEdgeInsets __swiftcall UIView.cp_safeAreaInsets(centering:)(Swift::Bool centering)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v40 - v7;
  v9 = sub_1E499708C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  *&v13 = MEMORY[0x1EEE9AC00](v9, v12).n128_u64[0];
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 safeAreaInsets];
  v17.f64[1] = v16;
  v19.f64[1] = v18;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v17, *MEMORY[0x1E69DDCE0]), vceqq_f64(v19, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    [v1 safeAreaInsets];
    v20 = v28;
    goto LABEL_25;
  }

  v20 = 24.0;
  if (!SBUIIsSystemApertureEnabled())
  {
    *&v29 = 64.0;
    goto LABEL_24;
  }

  v21 = [objc_opt_self() sharedInstanceForEmbeddedDisplay];
  [v21 interSensorRegionInWindowSpace];
  v22 = CGRectGetMaxY(v41) + 1.0;
  v23 = [objc_opt_self() mainScreen];
  v24 = sub_1E494C660();

  if (v24 != 4)
  {
    if (v24 == 3)
    {

      v25 = v22;
      if (centering)
      {
        v26 = v22;
      }

      else
      {
        v26 = 64.0;
      }

      v27 = 24.0;
      goto LABEL_25;
    }

    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v30 = qword_1EE2BB458;
    v31 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
    swift_beginAccess();
    sub_1E48CC978(v30 + v31, v8);
    v32 = *(v10 + 48);
    if (v32(v8, 1, v9) == 1)
    {
      sub_1E4904BF4(v15);
      if (v32(v8, 1, v9) != 1)
      {
        sub_1E48C1338(v8, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v10 + 32))(v15, v8, v9);
    }

    v33 = v2;
    v34 = sub_1E499706C();
    v35 = sub_1E499830C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138543618;
      *(v36 + 4) = v33;
      *v37 = v33;
      *(v36 + 12) = 2050;
      *(v36 + 14) = v24;
      v38 = v33;
      _os_log_impl(&dword_1E48B0000, v34, v35, "[%{public}@] Unsupported interface orientation %{public}ld.", v36, 0x16u);
      sub_1E48C1338(v37, &qword_1ECF7F718, &unk_1E499CA90);
      MEMORY[0x1E691CED0](v37, -1, -1);
      MEMORY[0x1E691CED0](v36, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
    *&v29 = 49.0;
LABEL_24:
    v25 = *&v29;
    v27 = 24.0;
    v26 = *&v29;
    goto LABEL_25;
  }

  v26 = v22;
  if (centering)
  {
    v25 = v22;
  }

  else
  {
    v25 = 64.0;
  }

  v27 = 24.0;
LABEL_25:
  v39 = v20;
  result.right = v26;
  result.bottom = v27;
  result.left = v25;
  result.top = v39;
  return result;
}

uint64_t sub_1E494C660()
{
  [objc_msgSend(v0 coordinateSpace)];
  v2 = v1;
  v4 = v3;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = 4;
  if (v4 == 0.0)
  {
    v5 = 1;
  }

  v6 = 2;
  if (v4 == 0.0)
  {
    v6 = 3;
  }

  if (v2 == 0.0)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

double sub_1E494C710()
{
  [v0 frame];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  MinY = CGRectGetMinY(v32);
  CGFloatMax(24.0 - MinY);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MinX = CGRectGetMinX(v33);
  v31 = CGFloatMax(64.0 - MinX);
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v34.origin.x = v10;
  v34.origin.y = v12;
  v34.size.width = v14;
  v34.size.height = v16;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v18 = CGRectGetMaxY(v35);
  v19 = [v7 mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v36.origin.x = v21;
  v36.origin.y = v23;
  v36.size.width = v25;
  v36.size.height = v27;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v29 = CGRectGetMaxX(v37);
  CGFloatMax(v29 - MaxX + 64.0);
  [v0 frame];
  CGRectGetWidth(v38);
  [v0 frame];
  CGRectGetHeight(v39);
  return v31;
}

void *sub_1E494C904(void *__src, uint64_t a2, void *__dst)
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

void sub_1E494C94C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

id sub_1E494C9C0(double a1)
{
  v2 = *MEMORY[0x1E69DDD58];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 preferredFontDescriptorWithTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1D8, &qword_1E499B698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499B670;
  v7 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80BF0, &unk_1E49A5FB0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1E499B670;
  v9 = *MEMORY[0x1E69DB990];
  *(v8 + 32) = *MEMORY[0x1E69DB990];
  *(v8 + 40) = *MEMORY[0x1E69DB970];
  v10 = v5;
  v11 = v7;
  v12 = v9;
  v13 = sub_1E494975C(v8);
  swift_setDeallocating();
  sub_1E48C1338(v8 + 32, &qword_1ECF80BF8, &unk_1E49A3EE0);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C00, &unk_1E49A5FC0);
  *(inited + 40) = v13;
  sub_1E4949234(inited);
  swift_setDeallocating();
  sub_1E48C1338(inited + 32, &qword_1ECF7F1E8, &qword_1E49A3DF0);
  type metadata accessor for AttributeName(0);
  sub_1E48C3FBC();
  v14 = sub_1E4997E2C();

  v15 = [v10 fontDescriptorByAddingAttributes_];

  v16 = objc_allocWithZone(MEMORY[0x1E69946A8]);
  v17 = v15;
  v18 = [v16 init];
  v19 = [objc_opt_self() fontWithDescriptor:v17 size:a1];

  [v18 setFont_];
  [v18 setUppercase_];

  return v18;
}

id sub_1E494CC58()
{
  type metadata accessor for ClockFaceController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1ECF819A8 = result;
  return result;
}

uint64_t sub_1E494CCB0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1E4997EEC();
    v4 = v3;

    if (v2 == 0xD000000000000024 && 0x80000001E49A84E0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1E499884C();
    }
  }

  return v1 & 1;
}

uint64_t sub_1E494CDB8@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  *a3 = 0x403E000000000000;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C48, &qword_1E49A40C0) + 44);
  v6 = a2 & 1;
  sub_1E4961FB8(a1, a2 & 1);
  v7 = sub_1E4953174();

  sub_1E4952DFC(v7);

  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v8 + 25) = HIBYTE(a2) & 1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E494DD28;
  *(v9 + 24) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C50, &qword_1E49A40E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C58, &qword_1E49A40F0);
  sub_1E48C1B44(&qword_1ECF80C60, &qword_1ECF80C50, &qword_1E49A40E8);
  sub_1E48C1B44(&qword_1ECF80C68, &qword_1ECF80C58, &qword_1E49A40F0);
  v10 = sub_1E4997C8C();
  v11 = MEMORY[0x1E691B530](v10, 0.5, 1.0, 0.0);
  sub_1E4961FB8(a1, v6);
  v12 = sub_1E4953174();

  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C70, &qword_1E49A40F8) + 36));
  *v13 = v11;
  v13[1] = v12;
  v14 = sub_1E499734C();
  LOBYTE(v12) = sub_1E49977CC();
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C78, &qword_1E49A4100) + 36);
  *v15 = v14;
  v15[8] = v12;
  if (qword_1ECF7EAF0 != -1)
  {
    swift_once();
  }

  v16 = qword_1ECF81920;
  v17 = sub_1E499782C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C80, &qword_1E49A4138);
  v20 = (a3 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = v17;
  return result;
}

uint64_t sub_1E494D0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W4>, uint64_t a5@<X8>)
{
  v9 = (a1 == 2) & (a4 >> 8);
  type metadata accessor for PlayViewModel();
  sub_1E494EF48(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  v10 = sub_1E49971EC();
  v12 = v11;
  v13 = objc_opt_self();

  v14 = [v13 mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  Height = CGRectGetHeight(v27);
  MEMORY[0x1E691AA70](0.0, Height);
  MEMORY[0x1E691AA70](0.0, -Height);
  v24 = sub_1E499724C();

  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a1;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  *(a5 + 40) = v12 & 1;
  *(a5 + 48) = v24;
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;
}

uint64_t sub_1E494D258@<X0>(void *a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1E494CDB8(*v1, v2 | *(v1 + 8), a1);
}

double sub_1E494D280(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_1E494D2B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E499716C();
  return sub_1E48C2910;
}

uint64_t sub_1E494D338@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  v5 = *v1;
  v6 = v1[1];
  v17 = v5;
  v18 = v6;
  v19 = (v4 & 1) == 0;
  sub_1E494E210();
  sub_1E494E264();

  sub_1E499772C();
  sub_1E4961FB8(v2[4], *(v2 + 40));
  v7 = sub_1E4950D30();

  v9 = v2[2];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v7 + 16))
  {
    v10 = *(v7 + 8 * v9 + 32);

    v13[2] = a1;
    KeyPath = swift_getKeyPath();
    v15 = KeyPath;
    v16 = v10;
    MEMORY[0x1E691B530](2.0, 0.6, 0.0);
    sub_1E4997D0C();

    v13[1] = v13;
    MEMORY[0x1EEE9AC00](v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80CF0, &qword_1E49A4368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80CF8, &qword_1E49A4370);
    sub_1E494E2C0();
    sub_1E494E488();
    sub_1E49979AC();

    sub_1E494E540();
  }

  __break(1u);
  return result;
}

uint64_t sub_1E494D578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E4961FB8(*(a2 + 32), *(a2 + 40));
  sub_1E495072C();
  v7 = v6;

  v9 = *(a2 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v7 + 16))
  {
    v10 = *(v7 + 8 * v9 + 32);

    sub_1E4997DAC();
    v12 = v11;
    v14 = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D38, &qword_1E49A4390);
    (*(*(v15 - 8) + 16))(a3, a1, v15);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80CF8, &qword_1E49A4370);
    v16 = (a3 + *(result + 36));
    *v16 = v10;
    v16[1] = v12;
    v16[2] = v14;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E494D688@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return sub_1E494D338(a1);
}

uint64_t sub_1E494D6C4@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  KeyPath = swift_getKeyPath();
  sub_1E48D2EE4();

  v6 = sub_1E49978DC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80DA0, &qword_1E49A4508) + 36);
  v14 = *MEMORY[0x1E6981DF8];
  v15 = sub_1E4997D4C();
  result = (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1E494D7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D80, &qword_1E49A44B8);
  v6 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40, v7);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37[-v12];
  KeyPath = swift_getKeyPath();
  v44 = a1;
  v39 = a1;
  v45 = a2;
  sub_1E48D2EE4();
  swift_bridgeObjectRetain_n();
  v41 = sub_1E49978DC();
  v42 = v14;
  v16 = v15;
  v38 = v17;
  sub_1E4997A6C();
  v18 = sub_1E4997A8C();

  if (qword_1ECF7EB48 != -1)
  {
    swift_once();
  }

  v19 = qword_1ECF819A8;
  v20 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D88, &qword_1E49A44F0) + 36);
  v21 = v19;
  sub_1E4997CDC();

  LOBYTE(v19) = sub_1E49977CC();
  v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D90, &qword_1E49A44F8) + 36)] = v19;
  *v13 = v18;
  v13[1] = 0xBFF0000000000000;
  v22 = swift_getKeyPath();
  v44 = v39;
  v45 = a2;
  v23 = sub_1E49978DC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_1E4997A3C();
  v31 = v13 + *(v40 + 36);
  *v31 = v23;
  *(v31 + 1) = v25;
  v31[16] = v27 & 1;
  *(v31 + 3) = v29;
  *(v31 + 4) = v22;
  v31[40] = 0;
  *(v31 + 6) = v30;
  sub_1E494EFE8(v13, v9);
  v33 = v41;
  v32 = v42;
  *a3 = v41;
  *(a3 + 8) = v16;
  LOBYTE(v22) = v38 & 1;
  *(a3 + 16) = v38 & 1;
  v34 = KeyPath;
  *(a3 + 24) = v32;
  *(a3 + 32) = v34;
  *(a3 + 40) = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D98, &qword_1E49A4500);
  sub_1E494EFE8(v9, a3 + *(v35 + 48));
  sub_1E48C14F4(v33, v16, v22);

  j__swift_retain();
  sub_1E48C1338(v13, &qword_1ECF80D80, &qword_1E49A44B8);
  sub_1E48C1338(v9, &qword_1ECF80D80, &qword_1E49A44B8);
  sub_1E48C1564(v33, v16, v22);

  return j__swift_release();
}

uint64_t sub_1E494DAEC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_1E4997CEC();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D70, &qword_1E49A44A8);
  sub_1E494D7C4(v4, v3, a1 + *(v6 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D78, &qword_1E49A44B0);
  *(a1 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1E494DB68@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PlayViewModel();
  sub_1E494EF48(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  result = sub_1E49971EC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E494DBE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E4997CEC();
  v4 = v3;
  type metadata accessor for PlayViewModel();
  sub_1E494EF48(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  result = sub_1E49971EC();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = result;
  *(a1 + 24) = v6 & 1;
  *(a1 + 25) = 1;
  return result;
}

unint64_t sub_1E494DC80(uint64_t a1)
{
  result = sub_1E494DCA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E494DCA8()
{
  result = qword_1ECF80C28;
  if (!qword_1ECF80C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80C28);
  }

  return result;
}

uint64_t sub_1E494DD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(v4 + 16);
  if (*(v4 + 25))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_1E494D0AC(a1, a2, a3, v6 | *(v4 + 24), a4);
}

uint64_t sub_1E494DD50(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2]);
}

uint64_t sub_1E494DD84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1E494DDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E494DE38()
{
  result = qword_1ECF80C88;
  if (!qword_1ECF80C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80C80, &qword_1E49A4138);
    sub_1E494DEF0();
    sub_1E48C1B44(&qword_1ECF7F698, &qword_1ECF7F688, &qword_1E499C148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80C88);
  }

  return result;
}

unint64_t sub_1E494DEF0()
{
  result = qword_1ECF80C90;
  if (!qword_1ECF80C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80C78, &qword_1E49A4100);
    sub_1E494DF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80C90);
  }

  return result;
}

unint64_t sub_1E494DF7C()
{
  result = qword_1ECF80C98;
  if (!qword_1ECF80C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80C70, &qword_1E49A40F8);
    sub_1E494E034();
    sub_1E48C1B44(&qword_1ECF80CC8, &qword_1ECF80CD0, &unk_1E49A4210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80C98);
  }

  return result;
}

unint64_t sub_1E494E034()
{
  result = qword_1ECF80CA0;
  if (!qword_1ECF80CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80C48, &qword_1E49A40C0);
    sub_1E48C1B44(&qword_1ECF80CA8, &qword_1ECF80CB0, &qword_1E49A4200);
    sub_1E494E0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80CA0);
  }

  return result;
}

unint64_t sub_1E494E0EC()
{
  result = qword_1ECF80CB8;
  if (!qword_1ECF80CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80CC0, &qword_1E49A4208);
    sub_1E48C1B44(&qword_1ECF80C68, &qword_1ECF80C58, &qword_1E49A40F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80CB8);
  }

  return result;
}

unint64_t sub_1E494E1A0()
{
  result = qword_1ECF80CD8;
  if (!qword_1ECF80CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80CD8);
  }

  return result;
}

unint64_t sub_1E494E210()
{
  result = qword_1ECF80CE0;
  if (!qword_1ECF80CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80CE0);
  }

  return result;
}

unint64_t sub_1E494E264()
{
  result = qword_1ECF80CE8;
  if (!qword_1ECF80CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80CE8);
  }

  return result;
}

unint64_t sub_1E494E2C0()
{
  result = qword_1ECF80D00;
  if (!qword_1ECF80D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80CF0, &qword_1E49A4368);
    sub_1E494E378();
    sub_1E48C1B44(&qword_1ECF7EED8, &qword_1ECF7EEE0, &qword_1E499B038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80D00);
  }

  return result;
}

unint64_t sub_1E494E378()
{
  result = qword_1ECF80D08;
  if (!qword_1ECF80D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80D10, &qword_1E49A4378);
    sub_1E494E3FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80D08);
  }

  return result;
}

unint64_t sub_1E494E3FC()
{
  result = qword_1ECF80D18;
  if (!qword_1ECF80D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80D20, &unk_1E49A4380);
    sub_1E494E210();
    sub_1E494E264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80D18);
  }

  return result;
}

unint64_t sub_1E494E488()
{
  result = qword_1ECF80D28;
  if (!qword_1ECF80D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80CF8, &qword_1E49A4370);
    sub_1E48C1B44(&qword_1ECF80D30, &qword_1ECF80D38, &qword_1E49A4390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80D28);
  }

  return result;
}

uint64_t sub_1E494E548(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, __n128 a6)
{
  v124 = a6;
  v123 = a5;
  v122 = a4;
  v121 = a3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D40, &qword_1E49A4398);
  v8 = *(v120 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v120, v10);
  v12 = (&v108 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D48, &qword_1E49A43A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v118 = &v108 - v20;
  v21 = sub_1E49972DC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v126 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D50, &qword_1E49A43A8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v119 = &v108 - v29;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D58, &qword_1E49A43B0);
  v30 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117, v31);
  v109 = &v108 - v32;
  v128 = sub_1E49972CC();
  v115 = *(v128 - 8);
  v33 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v128, v34);
  v113 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v108 - v38;
  v40 = sub_1E494EF48(qword_1ECF7F5A8, MEMORY[0x1E697E3C0]);
  v41 = sub_1E499828C();
  v42 = MEMORY[0x1E69E7CC0];
  v127 = v17;
  v125 = v39;
  v114 = v12;
  if (v41)
  {
    v43 = v41;
    v116 = v22;
    v131 = MEMORY[0x1E69E7CC0];
    sub_1E4906F38(0, v41 & ~(v41 >> 63), 0);
    v44 = v131;
    v45 = a1;
    result = sub_1E499827C();
    if (v43 < 0)
    {
      goto LABEL_30;
    }

    v112 = v8;
    v47 = (v115 + 16);
    v48 = (v115 + 8);
    do
    {
      v49 = v45;
      v50 = sub_1E49982CC();
      v51 = v125;
      v52 = v128;
      (*v47)(v125);
      v50(v130, 0);
      sub_1E499735C();
      LOBYTE(v130[0]) = v53 & 1;
      v129 = v54 & 1;
      sub_1E49972AC();
      v56 = v55;
      v58 = v57;
      (*v48)(v51, v52);
      v131 = v44;
      v59 = v21;
      v61 = *(v44 + 16);
      v60 = *(v44 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1E4906F38((v60 > 1), v61 + 1, 1);
        v44 = v131;
      }

      *(v44 + 16) = v61 + 1;
      v62 = v44 + 16 * v61;
      *(v62 + 32) = v56;
      *(v62 + 40) = v58;
      v45 = v49;
      sub_1E49982BC();
      --v43;
      v21 = v59;
    }

    while (v43);
    a1 = v49;
    v17 = v127;
    v39 = v125;
    v42 = v44;
    v8 = v112;
    v22 = v116;
  }

  v63 = *(v42 + 16);
  v64 = v124.n128_f64[0];
  if (v63)
  {
    if (v63 > 4)
    {
      v66 = *(v42 + 16) & 3;
      if ((v63 & 3) == 0)
      {
        v66 = 4;
      }

      v65 = v63 - v66;
      v67 = vdupq_lane_s64(v124.n128_i64[0], 0);
      v68 = (v42 + 64);
      v69 = v65;
      v64 = v124.n128_f64[0];
      do
      {
        v70 = v68 - 4;
        v71 = vld2q_f64(v70);
        v72 = vld2q_f64(v68);
        v73 = vsubq_f64(v71, v67);
        v74 = vsubq_f64(v72, v67);
        v64 = v64 + v73.f64[0] + v73.f64[1] + v74.f64[0] + v74.f64[1];
        v68 += 8;
        v69 -= 4;
      }

      while (v69);
    }

    else
    {
      v65 = 0;
      v64 = v124.n128_f64[0];
    }

    v75 = v63 - v65;
    v76 = (v42 + 16 * v65 + 32);
    do
    {
      v77 = *v76;
      v76 += 2;
      v64 = v64 + v77 - v124.n128_f64[0];
      --v75;
    }

    while (v75);
  }

  v132.origin.x = a2;
  v132.origin.y = v121;
  v132.size.width = v122;
  v132.size.height = v123;
  v78 = v42;
  v79 = (CGRectGetWidth(v132) - v64) * 0.5;
  v80 = v119;
  (*(v22 + 16))(v119, a1, v21);
  (*(v22 + 32))(v126, v80, v21);
  sub_1E494EF48(&qword_1ECF80D60, MEMORY[0x1E697E3C0]);
  v81 = v109;
  v119 = v21;
  sub_1E499805C();
  v111 = *(v117 + 36);
  *(v81 + v111) = 0;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D68, &qword_1E49A43B8);
  v117 = 0;
  v83 = *(v82 + 36);
  v112 = (v115 + 16);
  v126 = (v115 + 32);
  v84 = (v8 + 7);
  v85 = (v8 + 6);
  v116 = v78;
  v86 = v78 + 32;
  v87 = v83;
  v115 += 8;
  v110 = v86;
  while (1)
  {
    sub_1E49982AC();
    if (*(v81 + v87) == v130[0])
    {
      v88 = v120;
      (*v84)(v17, 1, 1, v120);
    }

    else
    {
      v89 = v85;
      v90 = v84;
      v91 = sub_1E49982CC();
      v92 = v113;
      v93 = v128;
      (*v112)(v113);
      v91(v130, 0);
      v94 = v40;
      sub_1E49982BC();
      v88 = v120;
      v95 = *(v120 + 48);
      v96 = v114;
      v97 = v117;
      *v114 = v117;
      result = (*v126)(v96 + v95, v92, v93);
      v98 = __OFADD__(v97, 1);
      v99 = v97 + 1;
      if (v98)
      {
        goto LABEL_29;
      }

      v117 = v99;
      *(v81 + v111) = v99;
      v100 = v96;
      v17 = v127;
      sub_1E48C15C8(v100, v127, &qword_1ECF80D40, &qword_1E49A4398);
      v84 = v90;
      (*v90)(v17, 0, 1, v88);
      v39 = v125;
      v40 = v94;
      v85 = v89;
      v86 = v110;
    }

    v101 = v17;
    v102 = v118;
    sub_1E48C15C8(v101, v118, &qword_1ECF80D48, &qword_1E49A43A0);
    if ((*v85)(v102, 1, v88) == 1)
    {
      sub_1E48C1338(v81, &qword_1ECF80D58, &qword_1E49A43B0);
    }

    v103 = v102;
    v104 = *v102;
    result = (*v126)(v39, &v103[*(v88 + 48)], v128);
    if ((v104 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v104 >= *(v116 + 16))
    {
      goto LABEL_28;
    }

    v105 = *(v86 + 16 * v104);
    v133.origin.x = a2;
    v133.origin.y = v121;
    v133.size.width = v122;
    v133.size.height = v123;
    CGRectGetHeight(v133);
    sub_1E4997DAC();
    sub_1E499735C();
    LOBYTE(v130[0]) = v106 & 1;
    LOBYTE(v131) = v107 & 1;
    sub_1E49972BC();
    (*v115)(v39, v128);
    v79 = v79 + v105 - v124.n128_f64[0];
    v17 = v127;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1E494EF48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E494EFE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D80, &qword_1E49A44B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E494F058()
{
  result = qword_1ECF80DA8;
  if (!qword_1ECF80DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80D78, &qword_1E49A44B0);
    sub_1E48C1B44(&qword_1ECF80DB0, &qword_1ECF80DB8, &unk_1E49A4510);
    sub_1E48C1B44(&qword_1ECF80478, &qword_1ECF80480, &qword_1E49A2568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80DA8);
  }

  return result;
}

unint64_t sub_1E494F13C()
{
  result = qword_1ECF80DC0;
  if (!qword_1ECF80DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80DA0, &qword_1E49A4508);
    sub_1E494F1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80DC0);
  }

  return result;
}

unint64_t sub_1E494F1C8()
{
  result = qword_1ECF80DC8;
  if (!qword_1ECF80DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80DC8);
  }

  return result;
}

uint64_t sub_1E494F21C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  return sub_1E49184D8(v3 + v4, a2);
}

uint64_t sub_1E494F2E4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for TimeString(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E49184D8(a1, v8);
  v9 = *a2;
  return sub_1E48B8534(v8);
}

uint64_t sub_1E494F370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E18, &qword_1E49A48D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E49530CC();
  sub_1E49989BC();
  if (!v2)
  {
    sub_1E48EB55C();
    sub_1E499878C();
    (*(v6 + 8))(v10, v5);
    v12 = v25;
    v31 = v24;
    v32 = v25;
    v13 = v26;
    v33 = v26;
    v14 = v20;
    v15 = v21;
    v27 = v20;
    v28 = v21;
    v16 = v23;
    v17 = v22;
    v29 = v22;
    v30 = v23;
    *(a2 + 64) = v24;
    *(a2 + 80) = v12;
    *(a2 + 96) = v13;
    *a2 = v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = v17;
    *(a2 + 48) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1E494F528(uint64_t a1)
{
  v2 = sub_1E49530CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E494F564(uint64_t a1)
{
  v2 = sub_1E49530CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E494F5B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E28, &unk_1E49A48D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E49530CC();
  sub_1E49989CC();
  sub_1E48EB5B0();
  sub_1E49987DC();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_1E494F6FC(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E494F830(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (v6 = *(v2 + 32), (sub_1E499884C() & 1) != 0))
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E494F990(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 161) == v2)
  {
    *(v1 + 161) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
    sub_1E4996FBC();
  }

  return result;
}

uint64_t sub_1E494FAB4(uint64_t result)
{
  if (*(v1 + 162) == (result & 1))
  {
    *(v1 + 162) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
    sub_1E4996FBC();
  }

  return result;
}

uint64_t sub_1E494FBC4(uint64_t a1)
{
  swift_beginAccess();
  sub_1E48C9C40(v1 + 64, v7);
  v3 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C9D60(v7);
  if (v3)
  {
    sub_1E48C9C40(a1, v7);
    swift_beginAccess();
    sub_1E49543B0(v7, v1 + 64);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    v7[0] = v1;
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
    sub_1E4996FBC();
  }

  return sub_1E48C9D60(a1);
}

uint64_t sub_1E494FD38()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  v1 = *(v0 + 16);
}

uint64_t sub_1E494FDDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + 16);
}

uint64_t sub_1E494FE88()
{
  v1 = type metadata accessor for TimeString(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v18 = v0;
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  v6 = *(v0 + 16);
  swift_getKeyPath();
  v18 = v6;
  sub_1E495434C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);

  sub_1E4996FCC();

  v7 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  sub_1E49184D8(v6 + v7, v5);

  v8 = v5[6];
  v9 = v5[7];
  v10 = sub_1E4997F6C();
  v11 = *v5;
  v12 = v5[1];
  if (v10 == 2)
  {
    v13 = v5[1];
  }

  else
  {
    v16 = 9142498;
    v17 = 0xA300000000000000;
    MEMORY[0x1E691B7A0](v11, v12);
    v11 = v16;
  }

  sub_1E48DBE0C(v5);
  return v11;
}

uint64_t sub_1E4950070()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  v2 = *(v0 + 24);
  v1 = *(v4 + 32);

  return v2;
}

uint64_t sub_1E4950120@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1E49501CC()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  v1 = *(v0 + 40);
}

uint64_t sub_1E4950270@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + 40);
}

uint64_t sub_1E495031C(uint64_t a1)
{
  if (!*(v1 + 40))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
    sub_1E4996FBC();
  }

  if (!a1 || (sub_1E498DA54(*(v1 + 40), a1) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 40) = a1;
}

uint64_t sub_1E4950474()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  v1 = *(v0 + 48);
}

uint64_t sub_1E4950518@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + 48);
}

uint64_t sub_1E49505C4(uint64_t a1)
{
  if (!*(v1 + 48))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
    sub_1E4996FBC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 48);

  v5 = sub_1E498DAE4(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + 48);
LABEL_7:
  *(v1 + 48) = a1;
}

void sub_1E495072C()
{
  v1 = v0;
  v2 = sub_1E494FE88();
  v4 = v3;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  if (v2 == *(v0 + 24) && v4 == *(v0 + 32))
  {
  }

  else
  {
    v6 = sub_1E499884C();

    if ((v6 & 1) == 0)
    {
      if (*(v1 + 40))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v8);
        sub_1E4996FBC();
      }

      if (*(v1 + 48))
      {
        v9 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v9, v10);
        sub_1E4996FBC();
      }

      v11 = sub_1E494FE88();
      sub_1E494F830(v11, v12);
    }
  }

  swift_getKeyPath();
  sub_1E4996FCC();

  if (*(v1 + 48))
  {
    v13 = *(v1 + 48);
LABEL_18:

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD30, &unk_1E49A0DB0);
  v14 = swift_allocObject();
  v15 = _swift_stdlib_malloc_size(v14);
  v16 = v15 - 32;
  if (v15 < 32)
  {
    v16 = v15 - 25;
  }

  *(v14 + 16) = 10;
  *(v14 + 24) = 2 * (v16 >> 3);
  *(v14 + 32) = xmmword_1E49A4520;
  *(v14 + 48) = xmmword_1E49A4530;
  *(v14 + 64) = xmmword_1E49A4540;
  *(v14 + 80) = xmmword_1E499B670;
  *(v14 + 96) = xmmword_1E49A4550;
  sub_1E4952BC0();
  if (*(v14 + 16) >= 5uLL)
  {
    sub_1E4953FD8(v14 + 32, 0, 0xBuLL, sub_1E4950A5C);

    sub_1E49505C4(v17);
    goto LABEL_18;
  }

  __break(1u);
}

double sub_1E4950A5C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 0.0174532925;
  *a2 = result;
  return result;
}

uint64_t sub_1E4950A78()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  v1 = *(v0 + 56);
}

uint64_t sub_1E4950B1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + 56);
}

uint64_t sub_1E4950BC8(uint64_t a1)
{
  if (!*(v1 + 56))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
    sub_1E4996FBC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 56);

  v5 = sub_1E498D730(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + 56);
LABEL_7:
  *(v1 + 56) = a1;
}

uint64_t sub_1E4950D30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = (&v31 - v5);
  v7 = sub_1E499708C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v38[0] = v0;
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  if (*(v0 + 56))
  {
    v13 = *(v0 + 56);
LABEL_6:

    return v13;
  }

  v35 = v12;
  v36 = v7;
  v34 = v8;
  v14 = sub_1E495434C(&qword_1ECF80E10, type metadata accessor for PlayViewModel);
  v15 = *(v14 + 40);
  v16 = type metadata accessor for PlayViewModel();
  v15(v38, v16, v14);
  v17 = sub_1E4953710(v38);
  sub_1E48C8360(v38);
  sub_1E4950BC8(v17);
  swift_getKeyPath();
  v38[0] = v1;
  sub_1E4996FCC();

  if (!*(v1 + 56))
  {
    v31 = v16;
    v32 = v14;
    v33 = v15;
    if (qword_1EE2BB450 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  swift_getKeyPath();
  v38[0] = v1;
  sub_1E4996FCC();

  v13 = *(v1 + 56);
  if (v13)
  {
    v18 = *(v1 + 56);

    goto LABEL_6;
  }

  __break(1u);
LABEL_12:
  (*(v34 + 32))(v35, v6, v36);
  while (1)
  {

    v6 = sub_1E499706C();
    v23 = sub_1E499830C();

    if (os_log_type_enabled(v6, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136315138;
      v33(v38, v31, v32);
      v26 = sub_1E48C60D0();
      v28 = v27;
      sub_1E48C8360(v38);
      v29 = sub_1E48CA094(v26, v28, &v37);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1E48B0000, v6, v23, "unsupported look for Play: %s, choosing default", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x1E691CED0](v25, -1, -1);
      MEMORY[0x1E691CED0](v24, -1, -1);
    }

    (*(v34 + 8))(v35, v36);
    v30 = sub_1E48D5B04();
    if (*(v30 + 16))
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_8:
    v20 = qword_1EE2BB458;
    v21 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v20 + v21, v6);
    v22 = *(v34 + 48);
    if (v22(v6, 1, v36) != 1)
    {
      goto LABEL_12;
    }

    sub_1E4904BF4(v35);
    if (v22(v6, 1, v36) != 1)
    {
      sub_1E48EF578(v6);
    }
  }

  sub_1E48C8304(v30 + 32, v38);

  result = sub_1E49986DC();
  __break(1u);
  return result;
}

uint64_t sub_1E495126C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  return sub_1E48C9C40(v1 + 64, a1);
}

uint64_t sub_1E495132C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  return sub_1E48C9C40(v3 + 64, a2);
}

uint64_t sub_1E49513EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1E49543E8(a2, a1 + 64);
  return swift_endAccess();
}

uint64_t sub_1E49514A0()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  return *(v0 + 161);
}

uint64_t sub_1E4951554@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  result = swift_beginAccess();
  *a2 = *(v3 + 161);
  return result;
}

void (*sub_1E4951610(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11ClockPoster13PlayViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1E4996FEC();

  v4[7] = sub_1E4951450();
  return sub_1E4951748;
}

void sub_1E4951748(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1E4996FDC();

  free(v1);
}

uint64_t sub_1E49517DC()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  return *(v0 + 162);
}

uint64_t sub_1E495187C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + 162);
  return result;
}

uint64_t sub_1E4951924()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = *(v0 + 7);

  sub_1E48C9D60((v0 + 64));
  v6 = OBJC_IVAR____TtC11ClockPoster13PlayViewModel___observationRegistrar;
  v7 = sub_1E499700C();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayViewModel()
{
  result = qword_1ECF80DD8;
  if (!qword_1ECF80DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4951A44()
{
  result = sub_1E499700C();
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

unint64_t sub_1E4951B20(uint64_t a1)
{
  result = sub_1E4951B48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4951B48()
{
  result = qword_1ECF80DE8;
  if (!qword_1ECF80DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80DE8);
  }

  return result;
}

unint64_t sub_1E4951B9C(void *a1)
{
  a1[1] = sub_1E4951BDC();
  a1[2] = sub_1E4951C30();
  a1[3] = sub_1E4951C84();
  result = sub_1E4951CD8();
  a1[4] = result;
  return result;
}

unint64_t sub_1E4951BDC()
{
  result = qword_1ECF80DF0;
  if (!qword_1ECF80DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80DF0);
  }

  return result;
}

unint64_t sub_1E4951C30()
{
  result = qword_1ECF80DF8;
  if (!qword_1ECF80DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80DF8);
  }

  return result;
}

unint64_t sub_1E4951C84()
{
  result = qword_1ECF80E00;
  if (!qword_1ECF80E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80E00);
  }

  return result;
}

unint64_t sub_1E4951CD8()
{
  result = qword_1ECF80E08;
  if (!qword_1ECF80E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80E08);
  }

  return result;
}

void (*sub_1E4951D34(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1E4951610(v2);
  return sub_1E48C2910;
}

uint64_t sub_1E4951DA8(uint64_t a1)
{
  result = sub_1E495434C(&qword_1ECF80E10, type metadata accessor for PlayViewModel);
  *(a1 + 8) = result;
  return result;
}

char *sub_1E4951E00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E40, &qword_1E49A4A08);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E4951F30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E48, &qword_1E49A4A10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E4952050(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E50, &qword_1E49A4A18);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E495215C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E58, &unk_1E49A4A20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1E4952260(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD10, &unk_1E49A49F0);
  v10 = *(type metadata accessor for WorldViewModel.Pin(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WorldViewModel.Pin(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1E495245C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1E49525A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC10, &qword_1E499E578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1E49526A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD48, &unk_1E49A02A0);
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

char *sub_1E49527AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD80, &qword_1E49A02F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E49528A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF40, &qword_1E49A4B50);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E49529AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC08, &unk_1E499E510);
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

char *sub_1E4952ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD30, &unk_1E49A0DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_1E4952BC0()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v13 = 0;
      MEMORY[0x1E691CEE0](&v13, 8);
      v6 = (v13 * v2) >> 64;
      if (v2 > v13 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v13 * v2)
        {
          do
          {
            v13 = 0;
            MEMORY[0x1E691CEE0](&v13, 8);
          }

          while (v7 > v13 * v2);
          v6 = (v13 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v10 = *&v1[8 * v4 + 32];
        v11 = *&v1[8 * v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1E4952DE8(v1);
        }

        v12 = *(v1 + 2);
        if (v4 >= v12)
        {
          goto LABEL_21;
        }

        *&v1[8 * v4 + 32] = v11;
        if (v8 >= v12)
        {
          goto LABEL_22;
        }

        *&v1[8 * v8 + 32] = v10;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1E4952D08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E4952DFC(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    v6 = (result + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v4)
      {
        v9 = *v6;

        v10 = __OFSUB__(v4--, 1);
        if (v10)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v11 = v2[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E78, &qword_1E49A4B58);
        v14 = swift_allocObject();
        v15 = (_swift_stdlib_malloc_size(v14) - 32) / 24;
        v14[2] = v13;
        v14[3] = 2 * v15;
        v16 = v14 + 4;
        v17 = v2[3] >> 1;
        v5 = &v14[3 * v17 + 4];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (v2[2])
        {
          if (v14 != v2 || v16 >= &v2[3 * v17 + 4])
          {
            memmove(v16, v2 + 4, 24 * v17);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v14;
        v10 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v10)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v7;
      v5[2] = v8;
      v5 += 3;
      v6 += 2;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v20 = v2[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v10 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v10)
    {
      goto LABEL_30;
    }

    v2[2] = v22;
  }

  return v2;
}

uint64_t sub_1E4952FAC(uint64_t result)
{
  if (*(v1 + 162) == (result & 1))
  {
    *(v1 + 162) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
    sub_1E4996FBC();
  }

  return result;
}

unint64_t sub_1E49530CC()
{
  result = qword_1ECF80E20;
  if (!qword_1ECF80E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80E20);
  }

  return result;
}

uint64_t sub_1E4953120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 161) = v2;
  return result;
}

char *sub_1E4953174()
{
  v1 = v0;
  v2 = type metadata accessor for TimeString(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1E494FE88();
  v9 = v8;
  swift_getKeyPath();
  v45 = v0;
  v10 = sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel);
  sub_1E4996FCC();

  if (v7 == v0[3] && v9 == v0[4])
  {
  }

  else
  {
    v11 = sub_1E499884C();

    if ((v11 & 1) == 0)
    {
      if (v1[5])
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v13);
        *(&v39 - 2) = v1;
        *(&v39 - 1) = 0;
        v45 = v1;
        sub_1E4996FBC();
      }

      if (v1[6])
      {
        v14 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v14, v15);
        *(&v39 - 2) = v1;
        *(&v39 - 1) = 0;
        v45 = v1;
        sub_1E4996FBC();
      }

      v16 = sub_1E494FE88();
      sub_1E494F830(v16, v17);
    }
  }

  swift_getKeyPath();
  v45 = v1;
  sub_1E4996FCC();

  result = v1[5];
  if (!result)
  {
    swift_getKeyPath();
    v45 = v1;
    sub_1E4996FCC();

    v19 = v1[2];
    swift_getKeyPath();
    v45 = v19;
    sub_1E495434C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);

    sub_1E4996FCC();

    v20 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
    swift_beginAccess();
    sub_1E49184D8(v19 + v20, v6);

    v21 = v6[6];
    v22 = v6[7];
    v23 = sub_1E4997F6C();
    v25 = *v6;
    v24 = v6[1];
    if (v23 == 2)
    {
      v26 = v6[1];
    }

    else
    {
      v43 = 9142498;
      v44 = 0xA300000000000000;
      MEMORY[0x1E691B7A0](v25, v24);
    }

    sub_1E48DBE0C(v6);
    v27 = sub_1E4997F6C();
    if (v27)
    {
      v28 = v27;
      v41 = v10;
      v42 = 0;
      v43 = MEMORY[0x1E69E7CC0];
      result = sub_1E4906E58(0, v27 & ~(v27 >> 63), 0);
      if (v28 < 0)
      {
        __break(1u);
        goto LABEL_29;
      }

      v29 = v43;
      do
      {
        v30 = sub_1E499802C();
        v43 = v29;
        v33 = *(v29 + 16);
        v32 = *(v29 + 24);
        if (v33 >= v32 >> 1)
        {
          v40 = v30;
          v35 = v31;
          sub_1E4906E58((v32 > 1), v33 + 1, 1);
          v31 = v35;
          v30 = v40;
          v29 = v43;
        }

        *(v29 + 16) = v33 + 1;
        v34 = v29 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        sub_1E4997F7C();
        --v28;
      }

      while (v28);

      v36 = v1[5];
      if (!v36)
      {
        goto LABEL_25;
      }
    }

    else
    {

      v29 = MEMORY[0x1E69E7CC0];
      v36 = v1[5];
      if (!v36)
      {
        goto LABEL_25;
      }
    }

    if (sub_1E498DA54(v36, v29))
    {
      v1[5] = v29;

      goto LABEL_26;
    }

LABEL_25:
    v37 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v37, v38);
    *(&v39 - 2) = v1;
    *(&v39 - 1) = v29;
    v43 = v1;
    sub_1E4996FBC();

LABEL_26:
    swift_getKeyPath();
    v43 = v1;
    sub_1E4996FCC();

    result = v1[5];
    if (result)
    {
      return result;
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4953710(uint64_t a1)
{
  sub_1E48C8304(a1, v63);
  if (v65 == 2)
  {

    sub_1E48B7448(v63, v60);
    sub_1E48B7448(&v64, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E30, &qword_1E49A4910);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E49A4560;
    v26 = v61;
    v27 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v28 = (*(v27 + 56))(v26, v27);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = 0x4063200000000000;
    v30 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE188;
    v56 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_10;
    v31 = _Block_copy(&aBlock);
    [v30 initWithDynamicProvider_];
    _Block_release(v31);

    *(v1 + 32) = sub_1E49979DC();
    v32 = v58;
    v33 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v34 = (*(v33 + 40))(v32, v33);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = 0x4063200000000000;
    v36 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_72;
    v37 = _Block_copy(&aBlock);
    [v36 initWithDynamicProvider_];
    _Block_release(v37);

    *(v1 + 40) = sub_1E49979DC();
    *(v1 + 48) = sub_1E4997A4C();
    v38 = v61;
    v39 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v40 = (*(v39 + 40))(v38, v39);
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = 0x4063200000000000;
    v42 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_79;
    v43 = _Block_copy(&aBlock);
    [v42 initWithDynamicProvider_];
    _Block_release(v43);

    *(v1 + 56) = sub_1E49979DC();
    v44 = v58;
    v45 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v46 = (*(v45 + 56))(v44, v45);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    *(v47 + 24) = 0x4063200000000000;
    v48 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_86;
    v49 = _Block_copy(&aBlock);
    [v48 initWithDynamicProvider_];
    _Block_release(v49);

    *(v1 + 64) = sub_1E49979DC();
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
  }

  else
  {
    if (v65)
    {
      sub_1E48C8360(v63);
      return 0;
    }

    sub_1E48B7448(v63, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E30, &qword_1E49A4910);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E49A4560;
    v2 = v61;
    v3 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v4 = (*(v3 + 56))(v2, v3);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0x4063200000000000;
    v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_93;
    v7 = _Block_copy(&aBlock);
    [v6 initWithDynamicProvider_];
    _Block_release(v7);

    *(v1 + 32) = sub_1E49979DC();
    v8 = v61;
    v9 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v10 = (*(v9 + 40))(v8, v9);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0x4063200000000000;
    v12 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_100;
    v13 = _Block_copy(&aBlock);
    [v12 initWithDynamicProvider_];
    _Block_release(v13);

    *(v1 + 40) = sub_1E49979DC();
    *(v1 + 48) = sub_1E4997A4C();
    v14 = v61;
    v15 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v16 = (*(v15 + 56))(v14, v15);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = 0x4063200000000000;
    v18 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_107;
    v19 = _Block_copy(&aBlock);
    [v18 initWithDynamicProvider_];
    _Block_release(v19);

    *(v1 + 56) = sub_1E49979DC();
    v20 = v61;
    v21 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v22 = (*(v21 + 40))(v20, v21);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = 0x4063200000000000;
    v24 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_114;
    v25 = _Block_copy(&aBlock);
    [v24 initWithDynamicProvider_];
    _Block_release(v25);

    *(v1 + 64) = sub_1E49979DC();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  return v1;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4953F9C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  *(v1 + 56) = *(v0 + 24);
}

uint64_t sub_1E4953FD8(uint64_t result, uint64_t a2, unint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a3 >> 1;
  v5 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v7 = a2;
  v8 = result;
  v46 = a3 >> 1;
  if (v5)
  {
    if (v5 <= 0)
    {
      goto LABEL_40;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E38, &qword_1E49A4998);
    v9 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v9);
    v10 = result - 32;
    if (result < 32)
    {
      v10 = result - 25;
    }

    v9[2] = v5;
    v9[3] = 2 * (v10 >> 3);
    if (v5 < 0)
    {
LABEL_40:
      __break(1u);
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = v9[3];
      v14 = v9 + 4;
      if (v7 <= v4)
      {
        v15 = v4;
      }

      else
      {
        v15 = v7;
      }

      v16 = v15 - v7;
      v17 = v7;
      v18 = (v13 >> 1) | 0x8000000000000000;
      v45 = v8;
      v43 = v13 >> 1;
      v44 = v17;
      v19 = v8 + 8 * v17;
      while (v5 != v12)
      {
        if (v16 == v12)
        {
          goto LABEL_42;
        }

        v48 = *(v19 + 8 * v12);
        result = a4(&v47, &v48);
        if (v18 == v12)
        {
          goto LABEL_43;
        }

        v20 = v12 + 1;
        v14[v12] = v47;
        v11 -= 8;
        v12 = v20;
        if (v5 == v20)
        {
          v7 = v44;
          v21 = v43 - v20;
          v22 = &v14[v11 / 0xFFFFFFFFFFFFFFF8];
          v23 = v44 + v20;
          v8 = v45;
          goto LABEL_17;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v24 = *(MEMORY[0x1E69E7CC0] + 24);

  v22 = v9 + 4;
  v21 = v24 >> 1;
  v23 = v7;
LABEL_17:
  v25 = v46 - v23;
  if (v46 != v23)
  {
    if (v46 <= v23)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v23 < v7)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v26 = (v8 + 8 * v23);
    do
    {
      v27 = *v26++;
      v48 = v27;
      result = a4(&v47, &v48);
      v28 = v47;
      if (!v21)
      {
        v29 = v9[3];
        if (((v29 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_45;
        }

        v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
        if (v30 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = v30;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E38, &qword_1E49A4998);
        v32 = swift_allocObject();
        v33 = _swift_stdlib_malloc_size(v32);
        v34 = v33 - 32;
        if (v33 < 32)
        {
          v34 = v33 - 25;
        }

        v35 = v34 >> 3;
        v32[2] = v31;
        v32[3] = 2 * (v34 >> 3);
        v36 = (v32 + 4);
        v37 = v9[3] >> 1;
        if (v9[2])
        {
          v38 = v9 + 4;
          if (v32 != v9 || v36 >= v38 + 8 * v37)
          {
            memmove(v32 + 4, v38, 8 * v37);
          }

          v9[2] = 0;
        }

        v22 = (v36 + 8 * v37);
        v21 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - v37;

        v9 = v32;
      }

      v39 = __OFSUB__(v21--, 1);
      if (v39)
      {
        goto LABEL_44;
      }

      *v22++ = v28;
    }

    while (--v25);
  }

  v40 = v9[3];
  if (v40 < 2)
  {
    return v9;
  }

  v41 = v40 >> 1;
  v39 = __OFSUB__(v41, v21);
  v42 = v41 - v21;
  if (!v39)
  {
    v9[2] = v42;
    return v9;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t keypath_set_64Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1E495430C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 32);
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t sub_1E495434C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4954434()
{
  result = qword_1ECF80E60;
  if (!qword_1ECF80E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80E60);
  }

  return result;
}

unint64_t sub_1E495448C()
{
  result = qword_1ECF80E68;
  if (!qword_1ECF80E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80E68);
  }

  return result;
}

unint64_t sub_1E49544E4()
{
  result = qword_1ECF80E70;
  if (!qword_1ECF80E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80E70);
  }

  return result;
}

uint64_t sub_1E4954538()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  *(v1 + 48) = *(v0 + 24);
}

uint64_t sub_1E4954574()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

char *sub_1E4954630()
{
  v0 = type metadata accessor for WorldDataProvider();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1E4954670();
  qword_1ECF819B0 = result;
  return result;
}

char *sub_1E4954670()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80ED0, &qword_1E49A4C28);
  v1 = swift_allocObject();
  *(v1 + 16) = 1;
  type metadata accessor for CPUnfairLock();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  *(v0 + 2) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80ED8, &qword_1E49A4C30);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = *(*v7 + 96);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81570, &qword_1E49A4BF8);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  v10 = *(*v7 + 104);
  v11 = swift_allocObject();
  *(v7 + v10) = v11;
  *(v11 + 16) = 0;
  *(v7 + *(*v7 + 112)) = v3;
  *(v7 + *(*v7 + 120)) = 0;
  *(v0 + 3) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EE0, &qword_1E49A4C38);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CD0];
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v0 + 4) = v12;
  v15 = OBJC_IVAR____TtC11ClockPoster17WorldDataProvider_defaultCity;
  v16 = type metadata accessor for City();
  (*(*(v16 - 8) + 56))(&v0[v15], 1, 1, v16);
  return v0;
}

uint64_t sub_1E4954870@<X0>(uint64_t a1@<X8>)
{
  v36[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EB8, &qword_1E49A4C08);
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EC0, &unk_1E49A4C10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v39 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v36 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v36 - v17;
  v19 = *(v1 + 16);
  v20 = *(v19 + 24);
  swift_beginAccess();

  os_unfair_lock_lock(v20 + 4);
  swift_endAccess();
  if (*(v19 + 40))
  {
    v21 = *(v19 + 24);
    swift_beginAccess();
    os_unfair_lock_unlock(v21 + 4);
    swift_endAccess();
    v22 = 1;
  }

  else
  {
    *(v19 + 40) = 1;
    v23 = *(v19 + 24);
    swift_beginAccess();
    os_unfair_lock_unlock(v23 + 4);
    swift_endAccess();
    v40 = 1;
    sub_1E4954D1C();
    v24 = *(v1 + 32);
    v25 = *(v24 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v25 + 4);
    swift_endAccess();
    swift_beginAccess();
    v26 = *(v24 + 16);
    v22 = *(v24 + 24);
    swift_beginAccess();

    os_unfair_lock_unlock(v26 + 4);
    swift_endAccess();
  }

  v40 = v22;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8B8, &qword_1E499D7D0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v29(v18, 1, 1, v27);
  v30 = *(v19 + 24);
  swift_beginAccess();
  os_unfair_lock_lock(v30 + 4);
  v31 = swift_endAccess();
  v36[1] = v36;
  MEMORY[0x1EEE9AC00](v31, v32);
  v36[-2] = v19;
  v36[-1] = &v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EC8, &qword_1E49A4C20);
  (*(v37 + 104))(v6, *MEMORY[0x1E69E8650], v38);
  sub_1E49981BC();
  sub_1E48C1338(v18, &qword_1ECF80EC0, &unk_1E49A4C10);
  v29(v14, 0, 1, v27);
  sub_1E49583A8(v14, v18);
  v33 = *(v19 + 24);
  swift_beginAccess();
  os_unfair_lock_unlock(v33 + 4);
  swift_endAccess();
  v34 = v39;
  sub_1E48C12D0(v18, v39, &qword_1ECF80EC0, &unk_1E49A4C10);
  result = (*(v28 + 48))(v34, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1E48C1338(v18, &qword_1ECF80EC0, &unk_1E49A4C10);
    (*(v28 + 32))(v36[0], v34, v27);
    return sub_1E48EC714(v40);
  }

  return result;
}

void sub_1E4954D1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v126 - v10;
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v126 - v13;
  v151 = sub_1E499708C();
  v15 = *(v151 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v151, v17);
  v20 = (&v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v147 = &v126 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v126 - v25;
  v137 = type metadata accessor for City();
  v27 = *(*(v137 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v137, v28);
  v136 = (&v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v135 = &v126 - v33;
  MEMORY[0x1EEE9AC00](v32, v34);
  v134 = (&v126 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8, v38);
  v40 = &v126 - v39;
  v150 = sub_1E4996F4C();
  v41 = *(v150 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v150, v43);
  v146 = &v126 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [objc_opt_self() sharedManager];
  if (!v45)
  {
    if (qword_1EE2BB450 != -1)
    {
LABEL_42:
      swift_once();
    }

    v116 = qword_1EE2BB458;
    v117 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48C12D0(v116 + v117, v7, &qword_1ECF7F008, &qword_1E499B170);
    v118 = *(v15 + 48);
    if (v118(v7, 1, v151) == 1)
    {
      sub_1E4904BF4(v20);
      if (v118(v7, 1, v151) != 1)
      {
        sub_1E48C1338(v7, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v15 + 32))(v20, v7, v151);
    }

    v119 = sub_1E499706C();
    v120 = sub_1E499830C();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v154 = v122;
      *v121 = 136446210;
      v123 = sub_1E48C60F8();
      v125 = sub_1E48CA094(v123, v124, &v154);

      *(v121 + 4) = v125;
      _os_log_impl(&dword_1E48B0000, v119, v120, "[%{public}s] WorldClockManager is nil. Cannot fetch world clock data.", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v122);
      MEMORY[0x1E691CED0](v122, -1, -1);
      MEMORY[0x1E691CED0](v121, -1, -1);
    }

    (*(v15 + 8))(v20, v151);
    return;
  }

  v133 = v14;
  v46 = v45;
  [v45 loadCities];
  v20 = *(v1 + 32);
  isa = v20[2].isa;
  swift_beginAccess();

  os_unfair_lock_lock(isa + 4);
  swift_endAccess();
  swift_beginAccess();
  v48 = v20[3].isa;
  v20[3].isa = MEMORY[0x1E69E7CD0];

  v49 = v20[2].isa;
  swift_beginAccess();
  os_unfair_lock_unlock(v49 + 4);
  swift_endAccess();

  v127 = v46;
  v50 = [v46 cities];
  if (!v50)
  {
    goto LABEL_46;
  }

  v51 = v50;
  v52 = sub_1E49980BC();

  v149 = *(v52 + 16);
  if (!v149)
  {
LABEL_32:

    return;
  }

  v139 = v26;
  v54 = 0;
  v7 = (v52 + 32);
  v145 = (v15 + 48);
  v140 = (v15 + 32);
  v144 = (v15 + 8);
  v142 = (v41 + 48);
  v131 = (v41 + 32);
  v130 = (v41 + 16);
  v129 = (v41 + 8);
  *&v53 = 136446466;
  v128 = v53;
  *&v53 = 136446210;
  v132 = v53;
  v141 = v1;
  v143 = v11;
  v15 = v147;
  v138 = v40;
  v148 = v52;
  while (1)
  {
    if (v54 >= *(v52 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    sub_1E48CCF68(v7, &v153);
    sub_1E48D9CFC(0, &qword_1ECF80EA8, 0x1E69B2000);
    if (!swift_dynamicCast())
    {
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v66 = qword_1EE2BB458;
      v67 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      sub_1E48C12D0(v66 + v67, v11, &qword_1ECF7F008, &qword_1E499B170);
      v68 = *v145;
      if ((*v145)(v11, 1, v151) == 1)
      {
        sub_1E4904BF4(v15);
        if (v68(v11, 1, v151) != 1)
        {
          sub_1E48C1338(v11, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        (*v140)(v15, v11, v151);
      }

      v20 = sub_1E499706C();
      v69 = sub_1E499830C();

      if (os_log_type_enabled(v20, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v153 = v71;
        *v70 = v132;
        v72 = sub_1E48C60F8();
        v74 = sub_1E48CA094(v72, v73, &v153);

        *(v70 + 4) = v74;
        v15 = v147;
        _os_log_impl(&dword_1E48B0000, v20, v69, "[%{public}s] City from WorldClockManager is not the expected type, WorldClockCity.", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        v75 = v71;
        v11 = v143;
        MEMORY[0x1E691CED0](v75, -1, -1);
        MEMORY[0x1E691CED0](v70, -1, -1);
      }

      (*v144)(v15, v151);
      goto LABEL_6;
    }

    v20 = v152;
    v55 = [v152 timeZone];
    if (!v55)
    {
      break;
    }

    v56 = v55;
    sub_1E4997EEC();

    sub_1E4996EEC();

    v57 = v150;
    if ((*v142)(v40, 1, v150) == 1)
    {
      sub_1E48C1338(v40, &qword_1ECF7EC50, &qword_1E49A4BF0);
      v58 = v133;
      v59 = v145;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v60 = qword_1EE2BB458;
      v61 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      sub_1E48C12D0(v60 + v61, v58, &qword_1ECF7F008, &qword_1E499B170);
      v62 = *v59;
      if ((*v59)(v58, 1, v151) == 1)
      {
        v63 = v139;
        sub_1E4904BF4(v139);
        v64 = v62(v58, 1, v151);
        v65 = v63;
        if (v64 != 1)
        {
          sub_1E48C1338(v58, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        v65 = v139;
        (*v140)(v139, v58, v151);
      }

      v106 = v20;
      v20 = sub_1E499706C();
      v107 = sub_1E499830C();

      if (os_log_type_enabled(v20, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v153 = v110;
        *v108 = v128;
        v111 = sub_1E48C60F8();
        v113 = sub_1E48CA094(v111, v112, &v153);

        *(v108 + 4) = v113;
        *(v108 + 12) = 2114;
        *(v108 + 14) = v106;
        *v109 = v106;
        v114 = v106;
        _os_log_impl(&dword_1E48B0000, v20, v107, "[%{public}s] TimeZone for %{public}@ is invalid.", v108, 0x16u);
        sub_1E48C1338(v109, &qword_1ECF7F718, &unk_1E499CA90);
        v115 = v109;
        v40 = v138;
        MEMORY[0x1E691CED0](v115, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v110);
        MEMORY[0x1E691CED0](v110, -1, -1);
        MEMORY[0x1E691CED0](v108, -1, -1);

        (*v144)(v139, v151);
      }

      else
      {

        (*v144)(v65, v151);
      }

      v11 = v143;
      v15 = v147;
    }

    else
    {
      (*v131)(v146, v40, v57);
      v76 = [v20 alCity];
      if (!v76)
      {
        goto LABEL_45;
      }

      v77 = v76;
      [v76 latitude];
      v79 = v78;
      [v77 longitude];
      v81 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v79 longitude:v80];
      v82 = [v20 name];
      if (!v82)
      {
        goto LABEL_44;
      }

      v83 = v82;
      v84 = sub_1E4997EEC();
      v86 = v85;

      v87 = v134;
      (*v130)(v134 + *(v137 + 24), v146, v150);
      *v87 = v84;
      v87[1] = v86;
      v87[2] = v81;
      v88 = v136;
      sub_1E4956D64(v87, v136);
      v89 = v141;
      v90 = *(v141 + 32);
      v91 = *(v90 + 16);
      swift_beginAccess();

      os_unfair_lock_lock(v91 + 4);
      swift_endAccess();
      swift_beginAccess();
      v92 = *(v90 + 16);
      v93 = *(v90 + 24);
      swift_beginAccess();

      os_unfair_lock_unlock(v92 + 4);
      swift_endAccess();
      v152 = v93;
      v94 = v135;
      sub_1E4956EF8(v135, v88);
      sub_1E4956E2C(v94);
      v95 = v152;
      v96 = *(v90 + 16);
      swift_beginAccess();
      os_unfair_lock_lock(v96 + 4);
      swift_endAccess();
      v97 = *(v90 + 24);
      *(v90 + 24) = v95;

      v98 = *(v90 + 16);
      swift_beginAccess();
      os_unfair_lock_unlock(v98 + 4);
      swift_endAccess();

      v99 = *(v89 + 16);
      v100 = *(v89 + 32);
      v101 = *(v100 + 16);
      swift_beginAccess();

      os_unfair_lock_lock(v101 + 4);
      swift_endAccess();
      swift_beginAccess();
      v102 = *(v100 + 16);
      v103 = *(v100 + 24);
      swift_beginAccess();

      os_unfair_lock_unlock(v102 + 4);
      swift_endAccess();

      v104 = *(v99 + 24);
      swift_beginAccess();
      os_unfair_lock_lock(v104 + 4);
      swift_endAccess();
      sub_1E4974B14(v103);

      v105 = *(v99 + 24);
      swift_beginAccess();
      os_unfair_lock_unlock(v105 + 4);
      swift_endAccess();

      sub_1E4955EEC();

      sub_1E4956E2C(v87);
      (*v129)(v146, v150);
      v11 = v143;
      v15 = v147;
      v40 = v138;
    }

LABEL_6:
    v52 = v148;
    ++v54;
    v7 += 32;
    if (v149 == v54)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_1E4955DA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81570, &qword_1E49A4BF8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v12[-v4];
  v6 = *(v0 + 24);
  v7 = OBJC_IVAR____TtC11ClockPoster17WorldDataProvider_defaultCity;
  swift_beginAccess();
  sub_1E48C12D0(v0 + v7, v5, &qword_1ECF81570, &qword_1E49A4BF8);
  v8 = *(*v6 + 104);
  v9 = *(v6 + v8);
  swift_beginAccess();

  os_unfair_lock_lock(v9 + 4);
  swift_endAccess();
  sub_1E4973ED0(v5);
  v10 = *(v6 + v8);
  swift_beginAccess();
  os_unfair_lock_unlock(v10 + 4);
  swift_endAccess();
  sub_1E48C1338(v5, &qword_1ECF81570, &qword_1E49A4BF8);
}

uint64_t sub_1E4955EEC()
{
  v126 = type metadata accessor for City();
  v1 = *(v126 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v126, v3);
  v125 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v117 = &v105 - v7;
  v8 = sub_1E4996D8C();
  v123 = *(v8 - 8);
  v124 = v8;
  v9 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1E4996F4C();
  v113 = *(v115 - 8);
  v13 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v115, v14);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC78, &qword_1E499A388);
  v17 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107, v18);
  v114 = &v105 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v106 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v108 = &v105 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v109 = &v105 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81570, &qword_1E49A4BF8);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v30 - 8, v32);
  v110 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v116 = &v105 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v41 = &v105 - v40;
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v45 = &v105 - v44;
  MEMORY[0x1EEE9AC00](v43, v46);
  v48 = &v105 - v47;
  v49 = OBJC_IVAR____TtC11ClockPoster17WorldDataProvider_defaultCity;
  swift_beginAccess();
  v111 = v49;
  v112 = v0;
  sub_1E48C12D0(v0 + v49, v48, &qword_1ECF81570, &qword_1E49A4BF8);
  v50 = v1;
  v51 = v126;
  v121 = *(v1 + 48);
  v122 = v1 + 48;
  LODWORD(v1) = v121(v48, 1, v126);
  v52 = v48;
  v53 = v123;
  v54 = v124;
  sub_1E48C1338(v52, &qword_1ECF81570, &qword_1E49A4BF8);
  v118 = v41;
  v119 = v12;
  v120 = v50;
  if (v1 != 1)
  {
    v55 = v16;
    sub_1E48C12D0(v112 + v111, v45, &qword_1ECF81570, &qword_1E49A4BF8);
    v56 = 1;
    v57 = v121(v45, 1, v51);
    v58 = v115;
    v59 = v113;
    v60 = v109;
    if (!v57)
    {
      (*(v113 + 16))(v109, &v45[*(v51 + 24)], v115);
      v56 = 0;
    }

    sub_1E48C1338(v45, &qword_1ECF81570, &qword_1E49A4BF8);
    v61 = *(v59 + 56);
    v61(v60, v56, 1, v58);
    v62 = v108;
    sub_1E4996F3C();
    v61(v62, 0, 1, v58);
    v63 = *(v107 + 48);
    v64 = v114;
    sub_1E48C12D0(v60, v114, &qword_1ECF7EC50, &qword_1E49A4BF0);
    sub_1E48C12D0(v62, &v64[v63], &qword_1ECF7EC50, &qword_1E49A4BF0);
    v65 = *(v59 + 48);
    if (v65(v64, 1, v58) == 1)
    {
      sub_1E48C1338(v62, &qword_1ECF7EC50, &qword_1E49A4BF0);
      v66 = v114;
      sub_1E48C1338(v60, &qword_1ECF7EC50, &qword_1E49A4BF0);
      if (v65(&v66[v63], 1, v58) == 1)
      {
        v67 = &qword_1ECF7EC50;
        v68 = &qword_1E49A4BF0;
        v69 = v66;
        return sub_1E48C1338(v69, v67, v68);
      }
    }

    else
    {
      v70 = v106;
      sub_1E48C12D0(v64, v106, &qword_1ECF7EC50, &qword_1E49A4BF0);
      if (v65(&v64[v63], 1, v58) != 1)
      {
        (*(v59 + 32))(v55, &v64[v63], v58);
        sub_1E49571D8(&qword_1ECF7EC80, MEMORY[0x1E6969BC0]);
        LODWORD(v107) = sub_1E4997E9C();
        v104 = *(v59 + 8);
        v104(v55, v58);
        sub_1E48C1338(v62, &qword_1ECF7EC50, &qword_1E49A4BF0);
        sub_1E48C1338(v60, &qword_1ECF7EC50, &qword_1E49A4BF0);
        v104(v106, v58);
        result = sub_1E48C1338(v64, &qword_1ECF7EC50, &qword_1E49A4BF0);
        v51 = v126;
        v53 = v123;
        v54 = v124;
        v16 = v55;
        v41 = v118;
        v12 = v119;
        v50 = v120;
        if (v107)
        {
          return result;
        }

        goto LABEL_10;
      }

      sub_1E48C1338(v62, &qword_1ECF7EC50, &qword_1E49A4BF0);
      v66 = v114;
      sub_1E48C1338(v60, &qword_1ECF7EC50, &qword_1E49A4BF0);
      (*(v59 + 8))(v70, v58);
    }

    sub_1E48C1338(v66, &qword_1ECF7EC78, &qword_1E499A388);
    v51 = v126;
    v53 = v123;
    v54 = v124;
    v16 = v55;
    v41 = v118;
    v12 = v119;
    v50 = v120;
  }

LABEL_10:
  v71 = *(v50 + 56);
  v109 = (v50 + 56);
  v108 = v71;
  (v71)(v41, 1, 1, v51);
  sub_1E4996F3C();
  sub_1E4996D7C();
  v72 = sub_1E4996EFC();
  v74 = *(v53 + 8);
  v73 = v53 + 8;
  v114 = v74;
  (v74)(v12, v54);
  result = (*(v113 + 8))(v16, v115);
  v113 = v72 + 86400;
  if (__OFADD__(v72, 86400))
  {
    goto LABEL_39;
  }

  v76 = v73;
  v77 = *(v112 + 32);
  v78 = *(v77 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v78 + 4);
  swift_endAccess();
  swift_beginAccess();
  v79 = *(v77 + 16);
  v80 = *(v77 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v79 + 4);
  swift_endAccess();

  v115 = 0;
  v81 = 0;
  v83 = v80 + 56;
  v82 = *(v80 + 56);
  v123 = v80;
  v84 = 1 << *(v80 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & v82;
  v87 = (v84 + 63) >> 6;
  v88 = &qword_1ECF81570;
  v89 = v116;
  while (1)
  {
    v90 = v81;
    if (!v86)
    {
      break;
    }

    v91 = v88;
    v92 = v76;
LABEL_20:
    v93 = v117;
    sub_1E4956D64(*(v123 + 48) + *(v120 + 72) * (__clz(__rbit64(v86)) | (v81 << 6)), v117);
    sub_1E4956DC8(v93, v125);
    v94 = *(v126 + 24);
    v95 = v119;
    sub_1E4996D7C();
    v96 = sub_1E4996EFC();
    v76 = v92;
    result = (v114)(v95, v124);
    v97 = v96 + 86400;
    if (__OFADD__(v96, 86400))
    {
      goto LABEL_36;
    }

    v98 = v97 - v113;
    if (__OFSUB__(v97, v113))
    {
      goto LABEL_37;
    }

    v41 = v118;
    if (v98 < 0)
    {
      v99 = __OFSUB__(0, v98);
      v98 = v113 - v97;
      if (v99)
      {
        goto LABEL_38;
      }
    }

    v86 &= v86 - 1;
    v88 = v91;
    sub_1E48C12D0(v118, v89, v91, &qword_1E49A4BF8);
    if (v121(v89, 1, v126) == 1)
    {
      sub_1E48C1338(v41, v91, &qword_1E49A4BF8);
      v100 = v89;
      goto LABEL_29;
    }

    sub_1E48C1338(v89, v91, &qword_1E49A4BF8);
    if (v98 < v115)
    {
      v100 = v41;
LABEL_29:
      sub_1E48C1338(v100, v91, &qword_1E49A4BF8);
      sub_1E4956DC8(v125, v41);
      result = (v108)(v41, 0, 1, v126);
      v115 = v98;
    }

    else
    {
      result = sub_1E4956E2C(v125);
    }
  }

  while (1)
  {
    v81 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    if (v81 >= v87)
    {

      v101 = v110;
      sub_1E48C12D0(v41, v110, &qword_1ECF81570, &qword_1E49A4BF8);
      v102 = v112;
      v103 = v111;
      swift_beginAccess();
      sub_1E4956E88(v101, v102 + v103);
      swift_endAccess();
      sub_1E4955DA0();
      sub_1E48C1338(v101, &qword_1ECF81570, &qword_1E49A4BF8);
      v69 = v41;
      v67 = &qword_1ECF81570;
      v68 = &qword_1E49A4BF8;
      return sub_1E48C1338(v69, v67, v68);
    }

    v86 = *(v83 + 8 * v81);
    ++v90;
    if (v86)
    {
      v91 = v88;
      v92 = v76;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1E4956ADC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster17WorldDataProvider_defaultCity, &qword_1ECF81570, &qword_1E49A4BF8);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorldDataProvider()
{
  result = qword_1ECF80E88;
  if (!qword_1ECF80E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4956BBC()
{
  sub_1E4956C60();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1E4956C60()
{
  if (!qword_1ECF80E98)
  {
    type metadata accessor for City();
    v0 = sub_1E49984BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF80E98);
    }
  }
}

uint64_t sub_1E4956CB8(uint64_t a1)
{
  swift_getWitnessTable();

  return CustomStringConvertibleViaMirror.description.getter(a1);
}

uint64_t sub_1E4956D0C(uint64_t a1)
{
  result = sub_1E49571D8(&qword_1ECF80EA0, type metadata accessor for WorldDataProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4956D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for City();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4956DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for City();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4956E2C(uint64_t a1)
{
  v2 = type metadata accessor for City();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}