uint64_t storeEnumTagSinglePayload for ItemExposureEntity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateZoneChangeOrigin(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrivateZoneChangeOrigin(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B645B7B0()
{
  result = qword_1EB950E20[0];
  if (!qword_1EB950E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB950E20);
  }

  return result;
}

unint64_t sub_1B645B808()
{
  result = qword_1EB9510B0[0];
  if (!qword_1EB9510B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9510B0);
  }

  return result;
}

unint64_t sub_1B645B860()
{
  result = qword_1EB951340[0];
  if (!qword_1EB951340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB951340);
  }

  return result;
}

unint64_t sub_1B645B8B8()
{
  result = qword_1EB951450;
  if (!qword_1EB951450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB951450);
  }

  return result;
}

unint64_t sub_1B645B910()
{
  result = qword_1EB951458[0];
  if (!qword_1EB951458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB951458);
  }

  return result;
}

unint64_t sub_1B645B968()
{
  result = qword_1EB9514E0;
  if (!qword_1EB9514E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9514E0);
  }

  return result;
}

unint64_t sub_1B645B9C0()
{
  result = qword_1EB9514E8[0];
  if (!qword_1EB9514E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9514E8);
  }

  return result;
}

unint64_t sub_1B645BA18()
{
  result = qword_1EB951570;
  if (!qword_1EB951570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB951570);
  }

  return result;
}

unint64_t sub_1B645BA70()
{
  result = qword_1EB951578;
  if (!qword_1EB951578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB951578);
  }

  return result;
}

uint64_t sub_1B645BB38()
{
  result = sub_1B67D964C();
  qword_1EB95A8A8 = result;
  unk_1EB95A8B0 = v1;
  return result;
}

uint64_t sub_1B645BB68()
{
  result = sub_1B67D964C();
  qword_1EB95A8B8 = result;
  unk_1EB95A8C0 = v1;
  return result;
}

uint64_t sub_1B645BBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[35] = a4;
  v5[36] = v4;
  v5[33] = a1;
  v5[34] = a3;
  v6 = type metadata accessor for FeedItemPruningPolicy(0);
  v5[37] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v9 = sub_1B67D877C();
  v5[40] = v9;
  v10 = *(v9 - 8);
  v5[41] = v10;
  v11 = *(v10 + 64) + 15;
  v5[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B645BD14, 0, 0);
}

uint64_t sub_1B645BD14()
{
  v1 = v0[42];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  sub_1B67D876C();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  v0[43] = v5;
  *(v5 + 16) = v6;
  v7 = *(v2 + 16);
  v0[22] = v4;
  v0[23] = v3;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B645C7A8;
  v0[21] = &block_descriptor_1;
  v8 = _Block_copy(v0 + 18);
  v0[44] = v8;
  v9 = v0[23];

  v0[28] = sub_1B645C34C;
  v0[29] = v5;
  v0[24] = MEMORY[0x1E69E9820];
  v0[25] = 1107296256;
  v0[26] = sub_1B645C7A8;
  v0[27] = &block_descriptor_3;
  v10 = _Block_copy(v0 + 24);
  v0[45] = v10;
  v11 = v0[29];

  v0[2] = v0;
  v0[3] = sub_1B645BF64;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B900, qword_1B6810C80);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B645C474;
  v0[13] = &block_descriptor_6;
  v0[14] = v12;
  [v7 fetchFeedItemsWithCursor:0 feedItemHandler:v8 networkEventHandler:v10 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B645BF64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_1B645C268;
  }

  else
  {
    v3 = sub_1B645C074;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B645C074()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  v12 = v7;
  v14 = *(v0 + 264);
  _Block_release(*(v0 + 360));
  _Block_release(v1);
  v13 = sub_1B645C624(MEMORY[0x1E69E7CC0]);
  v8 = *(v4 + 16);
  v8(v7, v2, v5);
  (*(v4 + 56))(v7, 0, 1, v5);
  swift_beginAccess();
  v9 = *(v3 + 16);
  v8(v6, v2, v5);
  swift_storeEnumTagMultiPayload();
  sub_1B645C75C(&unk_1EDB1EFA0);
  sub_1B645C75C(&unk_1EDB1EFC0);

  sub_1B65074D8(v13, v12, v9, v6, v14);

  (*(v4 + 8))(v2, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1B645C268()
{
  v1 = v0[45];
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[38];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  _Block_release(v1);
  _Block_release(v3);

  v10 = v0[1];
  v11 = v0[46];

  return v10();
}

uint64_t sub_1B645C34C(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x1B8C949F0]();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B67D97FC();
  }

  sub_1B67D983C();
  return swift_endAccess();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B645C40C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1B645C474(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  return sub_1B6458B54(a2 + 32, a1 + 32);
}

{
  return sub_1B6458B54(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_5(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t sub_1B645C538()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B645C570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B642694C;

  return sub_1B645BBE8(a1, v10, a3, a4);
}

unint64_t sub_1B645C624(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A800, &qword_1B6810CE0);
    v3 = sub_1B67DA0EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B6456E70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_1B645C75C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B67D877C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B645C7AC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 16));
  v5 = swift_allocObject();
  v6 = (v2 + 24);
  v7 = *(v2 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1B645DD98(0, v7[2] + 1, 1, v7);
    *v6 = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1B645DD98((v9 > 1), v10 + 1, 1, v7);
    *v6 = v7;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = &unk_1B6810CF0;
  v11[5] = v5;
  os_unfair_lock_unlock((v2 + 16));
  os_unfair_lock_lock((v2 + 16));
  sub_1B645D508((v2 + 24));

  os_unfair_lock_unlock((v2 + 16));
}

uint64_t sub_1B645C8C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B642694C;

  return v6();
}

uint64_t sub_1B645C9B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B642694C;

  return sub_1B645C8C8(a1, v5);
}

uint64_t sub_1B645CA68()
{
  v1[6] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B645CB10, 0, 0);
}

uint64_t sub_1B645CB10()
{
  v1 = v0[6];
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  os_unfair_lock_unlock((v1 + 16));
  if (v3)
  {
LABEL_2:
    v0[9] = v2;
    v0[10] = v3;
    v4 = *(MEMORY[0x1E69E86C0] + 4);

    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_1B645CF84;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    while (*(v2 + 16))
    {
      v11 = v0[6];
      os_unfair_lock_lock((v11 + 16));
      v10 = v0[6];
      if (!*(v11 + 32))
      {
        v12 = *(v10 + 24);
        v13 = v12[2];
        if (v13)
        {
          v14 = v12[4];
          v15 = v12[5];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v10 + 24) = v12;
          if (!isUniquelyReferenced_nonNull_native || (v13 - 1) > v12[3] >> 1)
          {
            v17 = v0[6];
            v12 = sub_1B645DD98(isUniquelyReferenced_nonNull_native, v13, 1, v12);
            *(v17 + 24) = v12;
          }

          v18 = v0[7];
          v19 = v0[8];
          v20 = v0[6];
          v21 = v12[5];

          v22 = v12[2];
          memmove(v12 + 4, v12 + 6, 16 * v22 - 16);
          v12[2] = v22 - 1;
          *(v20 + 24) = v12;
          v23 = swift_allocObject();
          *(v23 + 16) = v14;
          *(v23 + 24) = v15;
          v24 = sub_1B67D993C();
          v25 = *(v24 - 8);
          (*(v25 + 56))(v19, 1, 1, v24);
          v26 = swift_allocObject();
          swift_weakInit();
          v27 = swift_allocObject();
          v27[2] = 0;
          v27[3] = 0;
          v27[4] = v26;
          v27[5] = &unk_1B6810D08;
          v27[6] = v23;
          sub_1B644C200(v19, v18);
          LODWORD(v19) = (*(v25 + 48))(v18, 1, v24);

          v28 = v0[7];
          if (v19 == 1)
          {
            sub_1B644C270(v0[7]);
          }

          else
          {
            sub_1B67D992C();
            (*(v25 + 8))(v28, v24);
          }

          v29 = v27[2];
          v30 = v27[3];
          swift_unknownObjectRetain();

          if (v29)
          {
            swift_getObjectType();
            v31 = sub_1B67D989C();
            v33 = v32;
            swift_unknownObjectRelease();
          }

          else
          {
            v31 = 0;
            v33 = 0;
          }

          v34 = swift_allocObject();
          *(v34 + 16) = &unk_1B6810D18;
          *(v34 + 24) = v27;
          if (v33 | v31)
          {
            v0[2] = 0;
            v0[3] = 0;
            v0[4] = v31;
            v0[5] = v33;
          }

          v6 = v0[8];
          v7 = v0[6];
          v8 = swift_task_create();

          sub_1B644C270(v6);
          v9 = *(v7 + 32);
          *(v7 + 32) = v8;

          v10 = v0[6];
        }
      }

      os_unfair_lock_unlock((v10 + 16));

      os_unfair_lock_lock((v10 + 16));
      v2 = *(v10 + 24);
      v3 = *(v10 + 32);

      os_unfair_lock_unlock((v10 + 16));
      if (v3)
      {
        goto LABEL_2;
      }
    }

    v36 = v0[7];
    v35 = v0[8];

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_1B645CF84()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B645D080, 0, 0);
}

uint64_t sub_1B645D080()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[6];
  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);

  os_unfair_lock_unlock((v3 + 16));
  if (v5)
  {
LABEL_2:
    v0[9] = v4;
    v0[10] = v5;
    v6 = *(MEMORY[0x1E69E86C0] + 4);

    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_1B645CF84;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    while (*(v4 + 16))
    {
      v13 = v0[6];
      os_unfair_lock_lock((v13 + 16));
      v12 = v0[6];
      if (!*(v13 + 32))
      {
        v14 = *(v12 + 24);
        v15 = v14[2];
        if (v15)
        {
          v16 = v14[4];
          v17 = v14[5];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v12 + 24) = v14;
          if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > v14[3] >> 1)
          {
            v19 = v0[6];
            v14 = sub_1B645DD98(isUniquelyReferenced_nonNull_native, v15, 1, v14);
            *(v19 + 24) = v14;
          }

          v20 = v0[7];
          v21 = v0[8];
          v22 = v0[6];
          v23 = v14[5];

          v24 = v14[2];
          memmove(v14 + 4, v14 + 6, 16 * v24 - 16);
          v14[2] = v24 - 1;
          *(v22 + 24) = v14;
          v25 = swift_allocObject();
          *(v25 + 16) = v16;
          *(v25 + 24) = v17;
          v26 = sub_1B67D993C();
          v27 = *(v26 - 8);
          (*(v27 + 56))(v21, 1, 1, v26);
          v28 = swift_allocObject();
          swift_weakInit();
          v29 = swift_allocObject();
          v29[2] = 0;
          v29[3] = 0;
          v29[4] = v28;
          v29[5] = &unk_1B6810D08;
          v29[6] = v25;
          sub_1B644C200(v21, v20);
          LODWORD(v21) = (*(v27 + 48))(v20, 1, v26);

          v30 = v0[7];
          if (v21 == 1)
          {
            sub_1B644C270(v0[7]);
          }

          else
          {
            sub_1B67D992C();
            (*(v27 + 8))(v30, v26);
          }

          v31 = v29[2];
          v32 = v29[3];
          swift_unknownObjectRetain();

          if (v31)
          {
            swift_getObjectType();
            v33 = sub_1B67D989C();
            v35 = v34;
            swift_unknownObjectRelease();
          }

          else
          {
            v33 = 0;
            v35 = 0;
          }

          v36 = swift_allocObject();
          *(v36 + 16) = &unk_1B6810D18;
          *(v36 + 24) = v29;
          if (v35 | v33)
          {
            v0[2] = 0;
            v0[3] = 0;
            v0[4] = v33;
            v0[5] = v35;
          }

          v8 = v0[8];
          v9 = v0[6];
          v10 = swift_task_create();

          sub_1B644C270(v8);
          v11 = *(v9 + 32);
          *(v9 + 32) = v10;

          v12 = v0[6];
        }
      }

      os_unfair_lock_unlock((v12 + 16));

      os_unfair_lock_lock((v12 + 16));
      v4 = *(v12 + 24);
      v5 = *(v12 + 32);

      os_unfair_lock_unlock((v12 + 16));
      if (v5)
      {
        goto LABEL_2;
      }
    }

    v38 = v0[7];
    v37 = v0[8];

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_1B645D508(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v15 - v5;
  if (!a1[1])
  {
    v7 = *a1;
    if (*(*a1 + 16))
    {
      v9 = *(v7 + 32);
      v8 = *(v7 + 40);

      sub_1B645E130(0, 1);
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      v11 = sub_1B67D993C();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v12;
      v13[5] = &unk_1B6810D90;
      v13[6] = v10;

      v14 = sub_1B645DAC0(0, 0, v6, &unk_1B6810D98, v13);

      result = sub_1B644C270(v6);
      a1[1] = v14;
    }
  }

  return result;
}

uint64_t sub_1B645D6B4(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6422E9C;

  return v5();
}

uint64_t sub_1B645D79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B645D7C0, 0, 0);
}

uint64_t sub_1B645D7C0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v8 = (v0[6] + *v0[6]);
    v3 = *(v0[6] + 4);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1B645D904;
    v5 = v0[7];

    return v8();
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1B645D904()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {

    v3 = sub_1B645E2E0;
  }

  else
  {
    v3 = sub_1B645DA20;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B645DA20()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;

  os_unfair_lock_unlock((v1 + 16));
  os_unfair_lock_lock((v1 + 16));
  sub_1B645D508((v1 + 24));
  v3 = *(v0 + 64);
  os_unfair_lock_unlock((v1 + 16));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B645DAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1B644C200(a3, v27 - v11);
  v13 = sub_1B67D993C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B644C270(v12);
  }

  else
  {
    sub_1B67D992C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B67D989C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B67D965C() + 32;
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

uint64_t sub_1B645DD60()
{
  sub_1B645E020(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_1B645DD98(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A068, &unk_1B6810DA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A060, &qword_1B6810DA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B645DECC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B6422E9C;

  return sub_1B645D6B4(v2);
}

uint64_t sub_1B645DF78()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B6422E9C;

  return sub_1B645D79C(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_1B645E060(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A060, &qword_1B6810DA0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B645E130(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1B645DD98(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1B645E060(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t objectdestroy_10Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B645E238()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B642694C;

  return sub_1B645D79C(v5, v6, v7, v2, v3, v4);
}

uint64_t FCFeedPersonalizing.score(items:options:)(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_32:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A0D0, &qword_1B6810DB8);
    v45 = sub_1B67DA08C();

    v3 = v45;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1B67DA2EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A0D0, &qword_1B6810DB8);
    if (!swift_dynamicCastMetatype())
    {
      v42 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
        v43 = (v4 + 32);
        while (1)
        {
          v44 = *v43;
          v53 = &unk_1F2E7BC00;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          ++v43;
          if (!--v42)
          {
            goto LABEL_3;
          }
        }

        v3 = v4 | 1;
      }
    }
  }

LABEL_3:
  v5 = FCFeedPersonalizing.sort(items:options:)(v3, a2);

  v6 = [v5 scoreProfiles];

  v7 = [v6 dictionaryRepresentation];
  sub_1B645EB6C();
  v8 = sub_1B67D954C();

  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    while (1)
    {
      if (!v11)
      {
        while (1)
        {
          a2 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (a2 >= v12)
          {

            return v14;
          }

          v11 = *(v8 + 64 + 8 * a2);
          ++v13;
          if (v11)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

      a2 = v13;
LABEL_11:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (a2 << 6);
      sub_1B645EBB8(*(v8 + 48) + 40 * v16, v51);
      v17 = *(*(v8 + 56) + 8 * v16);
      v52 = v17;
      sub_1B645EC14(v51, v49);
      v18 = v50;
      v19 = v17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A0D0, &qword_1B6810DB8);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_1B645EC84(v51);
      v13 = a2;
    }

    v20 = [v48 itemID];
    v21 = sub_1B67D964C();
    v23 = v22;

    sub_1B645EC14(v51, v49);
    v47 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v14;
    v46 = v21;
    v25 = sub_1B6456E70(v21, v23);
    v27 = v14[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v14[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = v25;
        sub_1B645EF90();
        v25 = v40;
      }

      v32 = v23;
      if (v31)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1B645ECEC(v30, isUniquelyReferenced_nonNull_native);
      v32 = v23;
      v25 = sub_1B6456E70(v46, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_35;
      }

      if (v31)
      {
LABEL_17:
        v34 = v25;

        v35 = v14[7];
        v36 = *(v35 + 8 * v34);
        *(v35 + 8 * v34) = v47;
        swift_unknownObjectRelease();

        sub_1B645EC84(v51);
        goto LABEL_23;
      }
    }

    v14[(v25 >> 6) + 8] |= 1 << v25;
    v37 = (v14[6] + 16 * v25);
    *v37 = v46;
    v37[1] = v32;
    *(v14[7] + 8 * v25) = v47;
    swift_unknownObjectRelease();
    sub_1B645EC84(v51);
    v38 = v14[2];
    v29 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v29)
    {
      goto LABEL_34;
    }

    v14[2] = v39;
LABEL_23:
    sub_1B645F0FC(v49);
    v13 = a2;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1B67DA34C();
  __break(1u);
  return result;
}

id FCFeedPersonalizing.sort(items:options:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A0D0, &qword_1B6810DB8);
  v4 = sub_1B67D97AC();
  v5 = [v2 sortItems:v4 options:a2 configurationSet:0];

  return v5;
}

uint64_t FCFeedPersonalizing.score(items:options:configurationSet:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A0D0, &qword_1B6810DB8);
  v6 = sub_1B67D97AC();
  v7 = [v3 sortItems:v6 options:a2 configurationSet:a3];

  v8 = [v7 scoreProfiles];
  v9 = [v8 dictionaryRepresentation];

  sub_1B645EB6C();
  v10 = sub_1B67D954C();

  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v16 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v17 = v15;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v15 << 6);
    sub_1B645EBB8(*(v10 + 48) + 40 * v19, v50);
    v20 = *(*(v10 + 56) + 8 * v19);
    v51 = v20;
    sub_1B645EC14(v50, v48);
    v21 = v49;
    v22 = v20;

    if (swift_dynamicCast())
    {
      v23 = [v47 itemID];
      v46 = sub_1B67D964C();
      v25 = v24;

      sub_1B645EC14(v50, v48);
      v44 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v16;
      v45 = v25;
      v27 = sub_1B6456E70(v46, v25);
      v29 = v16[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_23;
      }

      v33 = v28;
      if (v16[3] >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = v27;
          sub_1B645EF90();
          v27 = v42;
        }

        v34 = v45;
        if (v33)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1B645ECEC(v32, isUniquelyReferenced_nonNull_native);
        v34 = v45;
        v27 = sub_1B6456E70(v46, v45);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_25;
        }

        if (v33)
        {
LABEL_14:
          v36 = v27;

          v37 = v16[7];
          v38 = *(v37 + 8 * v36);
          *(v37 + 8 * v36) = v44;
          swift_unknownObjectRelease();

          sub_1B645EC84(v50);
          goto LABEL_20;
        }
      }

      v16[(v27 >> 6) + 8] |= 1 << v27;
      v39 = (v16[6] + 16 * v27);
      *v39 = v46;
      v39[1] = v34;
      *(v16[7] + 8 * v27) = v44;
      swift_unknownObjectRelease();
      sub_1B645EC84(v50);
      v40 = v16[2];
      v31 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v31)
      {
        goto LABEL_24;
      }

      v16[2] = v41;
LABEL_20:
      sub_1B645F0FC(v48);
    }

    else
    {
      sub_1B645EC84(v50);
    }
  }

  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      return v16;
    }

    v13 = *(v10 + 64 + 8 * v15);
    ++v17;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1B67DA34C();
  __break(1u);
  return result;
}

unint64_t sub_1B645EB6C()
{
  result = qword_1EDB1F008;
  if (!qword_1EDB1F008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB1F008);
  }

  return result;
}

uint64_t sub_1B645EC14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A0E0, &qword_1B6810DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B645EC84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A0E0, &qword_1B6810DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B645ECEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A0E8, &qword_1B6810DC8);
  v39 = a2;
  result = sub_1B67DA0CC();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1B67DA3DC();
      sub_1B67D967C();
      result = sub_1B67DA41C();
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
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
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

id sub_1B645EF90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A0E8, &qword_1B6810DC8);
  v2 = *v0;
  v3 = sub_1B67DA0BC();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t sub_1B645F150(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(v4 + 1);
    v7 = v4[16];
  }

  else
  {
    v8 = *(a1 + 16);
    v7 = v4[*(swift_getTupleTypeMetadata2() + 48)];
    (*(*(v8 - 8) + 8))(v4, v8);
  }

  return v7;
}

unint64_t PrivateZoneChange.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v10;
    v13 = *(v10 + 1);
    v14 = v10[16];
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1B67D9EFC();

    v23 = 0xD000000000000011;
    v24 = 0x80000001B6828690;
    MEMORY[0x1B8C94910](v12, v13);

    MEMORY[0x1B8C94910](0x6E696769726F202CLL, 0xE90000000000003ALL);
    if (v14)
    {
      v15 = 0x65746F6D6572;
    }

    else
    {
      v15 = 0x6C61636F6CLL;
    }

    if (v14)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    MEMORY[0x1B8C94910](v15, v16);

    MEMORY[0x1B8C94910](62, 0xE100000000000000);
    return v23;
  }

  else
  {
    v18 = v10[*(swift_getTupleTypeMetadata2() + 48)];
    (*(v3 + 32))(v7, v10, v2);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1B67D9EFC();

    v23 = 0xD000000000000019;
    v24 = 0x80000001B68286B0;
    v19 = PrivateZoneModel.identifier.getter(v2, *(a1 + 24));
    MEMORY[0x1B8C94910](v19);

    MEMORY[0x1B8C94910](0x6E696769726F202CLL, 0xE90000000000003ALL);
    if (v18)
    {
      v20 = 0x65746F6D6572;
    }

    else
    {
      v20 = 0x6C61636F6CLL;
    }

    if (v18)
    {
      v21 = 0xE600000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x1B8C94910](v20, v21);

    MEMORY[0x1B8C94910](62, 0xE100000000000000);
    v17 = v23;
    (*(v3 + 8))(v7, v2);
  }

  return v17;
}

uint64_t static PrivateZoneChange<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a1;
  v45 = a2;
  v6 = *(a3 - 8);
  v41[1] = a5;
  v42 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v41[0] = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PrivateZoneChange();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v41 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = v41 - v21;
  v23 = v41 + *(v20 + 48) - v21;
  v43 = v10;
  v24 = *(v10 + 16);
  v24(v41 - v21, v44, v9);
  v24(v23, v45, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24(v14, v22, v9);
    v26 = *v14;
    v25 = *(v14 + 1);
    v27 = v14[16];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v23[16];
      if (v26 == *v23 && v25 == *(v23 + 1))
      {
        v40 = *(v23 + 1);

LABEL_18:
        v38 = v27 ^ v28;
        goto LABEL_19;
      }

      v30 = *(v23 + 1);
      v31 = sub_1B67DA2DC();

      if (v31)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_12:
    (*(v18 + 8))(v22, TupleTypeMetadata2);
    return 0;
  }

  v24(v16, v22, v9);
  v32 = *(swift_getTupleTypeMetadata2() + 48);
  v33 = v16[v32];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v42 + 8))(v16, a3);
    goto LABEL_12;
  }

  LODWORD(v45) = v23[v32];
  v34 = v42;
  v35 = v41[0];
  (*(v42 + 32))(v41[0], v23, a3);
  v36 = sub_1B67D962C();
  v37 = *(v34 + 8);
  v37(v35, a3);
  v37(v16, a3);
  if ((v36 & 1) == 0)
  {
LABEL_15:
    (*(v43 + 8))(v22, v9);
    return 0;
  }

  v38 = v33 ^ v45;
LABEL_19:
  (*(v43 + 8))(v22, v9);
  return v38 ^ 1u;
}

uint64_t PrivateZoneChange<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v12;
    v16 = *(v12 + 1);
    v17 = v12[16];
    MEMORY[0x1B8C95640](1);
    sub_1B67D967C();

    return MEMORY[0x1B8C95640](v17);
  }

  else
  {
    v19 = v12[*(swift_getTupleTypeMetadata2() + 48)];
    (*(v4 + 32))(v8, v12, v3);
    MEMORY[0x1B8C95640](0);
    sub_1B67D95DC();
    MEMORY[0x1B8C95640](v19);
    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t PrivateZoneChange<>.hashValue.getter(uint64_t a1)
{
  sub_1B67DA3DC();
  PrivateZoneChange<>.hash(into:)(v3, a1);
  return sub_1B67DA41C();
}

uint64_t sub_1B645FC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1B67DA3DC();
  PrivateZoneChange<>.hash(into:)(v6, a2);
  return sub_1B67DA41C();
}

uint64_t PrivateZoneChangeOrigin.description.getter()
{
  if (*v0)
  {
    result = 0x65746F6D6572;
  }

  else
  {
    result = 0x6C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t PrivateZoneChangeOrigin.hashValue.getter()
{
  v1 = *v0;
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](v1);
  return sub_1B67DA41C();
}

uint64_t sub_1B645FD5C()
{
  if (*v0)
  {
    result = 0x65746F6D6572;
  }

  else
  {
    result = 0x6C61636F6CLL;
  }

  *v0;
  return result;
}

unint64_t sub_1B645FDDC()
{
  result = qword_1EB94A0F0;
  if (!qword_1EB94A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94A0F0);
  }

  return result;
}

uint64_t sub_1B645FE30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = 17;
  if ((v3 + 1) > 0x11)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1B645FF4C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if ((v5 + 1) > 0x11)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 17;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_40:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_40;
          }
        }

LABEL_37:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_26:
      a1[v6] = -a2;
      return;
    }

LABEL_25:
    if (!a2)
    {
      return;
    }

    goto LABEL_26;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_25;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_26;
  }
}

uint64_t sub_1B6460118()
{
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](0);
  return sub_1B67DA41C();
}

uint64_t sub_1B6460184()
{
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](0);
  return sub_1B67DA41C();
}

void sub_1B64601C4(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 96));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  sub_1B67D8A1C();
  sub_1B67D9DFC();
  v6 = sub_1B67D8A3C();
  sub_1B646027C(v4 + *(v6 + 28), v5, a1);
  sub_1B67D9DFC();

  os_unfair_lock_unlock(v4);
}

uint64_t sub_1B646027C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B67D8A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = sub_1B67D9DFC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  (*(v7 + 32))(v10, v14, v6);
  sub_1B67D89FC();
  return (*(v7 + 8))(v10, v6);
}

void *sub_1B6460470()
{
  v1 = *v0;
  v2 = v0[3];

  v3 = v0 + *(*v0 + 96);
  v4 = *(v1 + 80);
  sub_1B67D8A1C();
  sub_1B67D9DFC();
  v5 = *(sub_1B67D8A3C() + 28);
  v6 = *(sub_1B67D8A4C() + 16);
  sub_1B67D9DDC();
  return v0;
}

uint64_t sub_1B6460514()
{
  sub_1B6460470();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B64605A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B6422E9C;

  return sub_1B641633C(a1, v5);
}

uint64_t AsyncLazy.value.getter(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = v2[1];
  *(v3 + 40) = *v2;
  *(v3 + 56) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1B646069C, 0, 0);
}

uint64_t sub_1B646069C()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = *(v1 + 16);
  v4 = *(v0 + 40);
  v14 = *(v0 + 56);
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 40) = v14;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B920, &qword_1B6811070);
  v6 = MEMORY[0x1E69E7288];
  sub_1B67D99EC();
  sub_1B67D9DFC();
  v7 = *(*v14 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v8));
  sub_1B6461FD0((v14 + v7), (v0 + 16));
  os_unfair_lock_unlock((v14 + v8));

  v9 = *(v0 + 16);
  *(v0 + 72) = v9;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1B6460844;
  v12 = *(v0 + 24);

  return MEMORY[0x1EEE6DA10](v12, v9, v3, v5, v6);
}

uint64_t sub_1B6460844()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1B64609BC;
  }

  else
  {
    v3 = sub_1B6460958;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6460958()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B64609BC()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1B6460A20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v22 - v16;
  if (*a1)
  {
    v18 = *a1;
  }

  else
  {
    v19 = sub_1B67D993C();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a6;
    v20[5] = a2;
    v20[6] = a3;
    v20[7] = a4;
    v20[8] = a5;

    v18 = sub_1B6461570(0, 0, v17, &unk_1B68111E0, v20);
    *a1 = v18;
  }

  *a7 = v18;
}

uint64_t sub_1B6460B98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v7 + 24) = v9;
  *v9 = v7;
  v9[1] = sub_1B6460C84;

  return v11();
}

uint64_t sub_1B6460C84()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1B6460E18;
  }

  else
  {
    v3 = sub_1B6460D98;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6460D98()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 0;
  }

  os_unfair_lock_unlock((v1 + 20));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B6460E30(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a1;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v8[5] = v11;
  *v11 = v8;
  v11[1] = sub_1B6460F30;

  return v13(a1);
}

uint64_t sub_1B6460F30()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6461064, 0, 0);
  }
}

uint64_t sub_1B6461064()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_1B67D9DFC();
  v6 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v7));
  sub_1B64622D8((v2 + v6));
  os_unfair_lock_unlock((v2 + v7));

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B6461160(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B67D9DFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  (*(v7 + 16))(&v15 - v9, a1, v6);
  v11 = *(a3 - 8);
  v12 = (*(v11 + 48))(v10, 1, a3);
  v13 = *(v7 + 8);
  result = v13(v10, v6);
  if (v12 == 1)
  {
    v13(a1, v6);
    (*(v11 + 16))(a1, a2, a3);
    return (*(v11 + 56))(a1, 0, 1, a3);
  }

  return result;
}

uint64_t sub_1B6461304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = v23 - v9;
  sub_1B644C200(a3, v23 - v9);
  v11 = sub_1B67D993C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B644C270(v10);
  }

  else
  {
    sub_1B67D992C();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B67D989C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B67D965C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1B644C270(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B644C270(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B6461570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_1B644C200(a3, &v26[-1] - v11);
  v13 = sub_1B67D993C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B644C270(v12);
  }

  else
  {
    sub_1B67D992C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B67D989C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B67D965C();
      v22 = *(v21 + 16);
      sub_1B6461DA8(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_1B644C270(a3);

      return v23;
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

  sub_1B644C270(a3);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

void AsyncLazy.valueIfLoaded.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v7 = *(a1 + 16);
  sub_1B67D9DFC();
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1B6462304(v4 + v5, a2);
  os_unfair_lock_unlock((v4 + v6));
}

uint64_t AsyncLazy.loadedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1B67D9DFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = *(v2 + 24);
  v16 = v4;
  v11 = *(*v10 + *MEMORY[0x1E69E6B68] + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v12));
  sub_1B6462004(v10 + v11, v9);
  os_unfair_lock_unlock((v10 + v12));
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v9, 1, v4) != 1)
  {
    return (*(v13 + 32))(a2, v9, v4);
  }

  (*(v6 + 8))(v9, v5);
  type metadata accessor for AsyncLazy.Errors();
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

uint64_t AsyncLazy<>.callAsFunction()()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1B6461AA0, 0, 0);
}

uint64_t sub_1B6461AA0()
{
  v12 = v0;
  v1 = swift_task_alloc();
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v2;
  v3 = v2;
  os_unfair_lock_lock((v2 + 24));
  sub_1B64620A8((v3 + 16), &v11);
  os_unfair_lock_unlock((v3 + 24));
  v4 = v11;
  *(v0 + 48) = v11;

  v5 = *(MEMORY[0x1E69E86A8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  *v6 = v0;
  v6[1] = sub_1B6461BCC;
  v8 = MEMORY[0x1E69E7288];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v7, v4, v9, v7, v8);
}

uint64_t sub_1B6461BCC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1B6461D44;
  }

  else
  {
    v3 = sub_1B6461CE0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6461CE0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B6461D44()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1B6461DA8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6461E64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - v14;
  if (*a1)
  {
    v16 = *a1;
  }

  else
  {
    v17 = sub_1B67D993C();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a2;
    v18[5] = a3;
    v18[6] = a4;
    v18[7] = a5;

    v16 = sub_1B6461304(0, 0, v15, &unk_1B68111D0, v18);
    *a1 = v16;
  }

  *a6 = v16;
}

uint64_t sub_1B646201C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = sub_1B67D9DFC();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

uint64_t sub_1B64620C8(uint64_t *a1, int a2)
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

uint64_t sub_1B6462110(uint64_t result, int a2, int a3)
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

uint64_t sub_1B646216C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B6422E9C;

  return sub_1B6460B98(v5, v6, v7, v2, v3, v8, v4);
}

uint64_t sub_1B6462214(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B642694C;

  return sub_1B6460E30(a1, v8, v9, v5, v6, v10, v7, v4);
}

uint64_t sub_1B646231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[40] = a5;
  v6[41] = v5;
  v6[38] = a3;
  v6[39] = a4;
  v6[36] = a1;
  v6[37] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B6462344, 0, 0);
}

uint64_t sub_1B6462344()
{
  v1 = v0[41];
  v2 = [*(v1 + 24) rankedAllSubscribedTagIDs];
  v3 = sub_1B67D97BC();

  v4 = [*(v1 + 16) tagController];
  v0[42] = v4;
  sub_1B6462BFC(v3);

  v5 = sub_1B67D97AC();
  v0[43] = v5;

  v6 = FCCurrentQoS();
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_1B6462508;
  v7 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A380, &qword_1B6814A20);
  v0[20] = MEMORY[0x1E69E9820];
  v0[21] = 1107296256;
  v0[22] = sub_1B6462CFC;
  v0[23] = &block_descriptor_51;
  v0[24] = v7;
  [v4 fetchTagsForTagIDs:v5 maximumCachedAge:v6 qualityOfService:v0 + 20 completionHandler:1.79769313e308];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B6462508()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_1B6462B0C;
  }

  else
  {
    v3 = sub_1B6462618;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6462618()
{
  v30 = v0;
  if (!*(v0 + 280))
  {
    sub_1B64676E4(MEMORY[0x1E69E7CC0]);
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 288);

  v4 = sub_1B64668B0(v3);
  *(v0 + 360) = v4;

  v5 = [v2 respondsToSelector_];
  v6 = 0;
  if (v5)
  {
    v6 = [*(v0 + 288) maxTagESLArticleListsToQuery];
  }

  sub_1B64677E8(v6, v4, v0 + 224);

  v7 = *(v0 + 224);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);
  v10 = *(v0 + 248);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  v13 = sub_1B64671E0(v7, v8, v9, v10, v11, v12, *(v0 + 272));
  if (v13)
  {
    v14 = v13;
    v15 = sub_1B646682C(v13, 0);
    sub_1B6467DFC(v7, v8, v9);
    sub_1B6467DFC(v10, v11, v12);

    v16 = sub_1B64672F8(v0 + 80, v15 + 4, v14);
    sub_1B6418AB4(v0 + 80, &qword_1EB94A388, &qword_1B6811320);
    if (v16 != v14)
    {
      __break(1u);
      return MEMORY[0x1EEE6DE38]();
    }
  }

  sub_1B6467E08(v7, v8, v9);
  sub_1B6467E08(v10, v11, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A390, &qword_1B6812ED0);
  v17 = sub_1B67D956C();

  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = sub_1B64667A4(*(v17 + 16), 0);
    v20 = sub_1B6466F28(&v29, v19 + 4, v18, v17);
    sub_1B6449D40();
    if (v20 == v18)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_11:
  *(v0 + 368) = v19;
  v22 = *(v0 + 320);
  v21 = *(v0 + 328);
  v23 = swift_task_alloc();
  *(v0 + 376) = v23;
  v24 = *(v0 + 288);
  v25 = *(v0 + 304);
  *(v23 + 16) = v19;
  *(v23 + 24) = v21;
  *(v23 + 32) = v24;
  *(v23 + 48) = v25;
  *(v23 + 64) = v22;
  v26 = *(MEMORY[0x1E69E8920] + 4);
  v27 = swift_task_alloc();
  *(v0 + 384) = v27;
  *v27 = v0;
  v27[1] = sub_1B6462984;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B6462984()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v8 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_1B6462B84;
  }

  else
  {
    v5 = *(v2 + 368);
    v6 = *(v2 + 376);

    v4 = sub_1B6462AA8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6462AA8()
{
  v1 = *(v0 + 360);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B6462B0C()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  swift_willThrow();

  v4 = v0[44];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B6462B84()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];

  v4 = v0[49];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B6462BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B6466DF8(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B6466DF8((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_1B644A4F0(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B6462CFC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A390, &qword_1B6812ED0);
      v9 = sub_1B67D954C();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void sub_1B6462E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *a1), char *a6, uint64_t a7, uint64_t a8)
{
  v51 = a7;
  v52 = a8;
  v53 = a5;
  v48 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
  v49 = *(v11 - 8);
  v50 = v11;
  v46 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v46 - v12;
  v13 = sub_1B67D8A9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 16);
  v19 = *(a3 + 32);
  v20 = objc_allocWithZone(FCTagCuratedESLArticlesOperation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A390, &qword_1B6812ED0);
  v21 = sub_1B67D97AC();
  v22 = [v20 initWithTags:v21 context:v18 configuration:a4 bundleSubscriptionManager:{v19, v46}];

  v58 = v53;
  v59 = a6;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1B645C7A8;
  v57 = &block_descriptor_56;
  v23 = _Block_copy(&aBlock);

  [v22 setFeedItemHandler_];
  v24 = v23;
  v25 = v13;
  _Block_release(v24);
  v26 = sub_1B6471680();
  (*(v14 + 16))(v17, v26, v13);
  v27 = v22;
  v28 = sub_1B67D8A7C();
  v29 = sub_1B67D9C9C();
  if (!os_log_type_enabled(v28, v29))
  {

    (*(v14 + 8))(v17, v25);
    goto LABEL_5;
  }

  v53 = v25;
  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  aBlock = v31;
  *v30 = 136446210;
  v32 = [v27 shortOperationDescription];

  if (v32)
  {
    v33 = sub_1B67D964C();
    v35 = v34;

    v36 = sub_1B6456540(v33, v35, &aBlock);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1B63EF000, v28, v29, "will fetch tag ESL feed items from CK with operation: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1B8C96DF0](v31, -1, -1);
    MEMORY[0x1B8C96DF0](v30, -1, -1);

    (*(v14 + 8))(v17, v53);
LABEL_5:
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = v49;
    v39 = v47;
    v40 = v50;
    (*(v49 + 16))(v47, v48, v50);
    v41 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v42 = swift_allocObject();
    v43 = v51;
    v44 = v52;
    *(v42 + 2) = v37;
    *(v42 + 3) = v43;
    *(v42 + 4) = v44;
    (*(v38 + 32))(&v42[v41], v39, v40);
    v58 = sub_1B6467E40;
    v59 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = sub_1B64632F0;
    v57 = &block_descriptor_65;
    v45 = _Block_copy(&aBlock);

    [v27 setCompletionHandler_];
    _Block_release(v45);
    [v27 start];

    return;
  }

  __break(1u);
}

void sub_1B64632F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1B646335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A7F0, &qword_1B6811318);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A310, &unk_1B6812A70);
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v12 = *(*(type metadata accessor for SmarterFetchRequest(0) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v13 = sub_1B67D8A9C();
  v5[18] = v13;
  v14 = *(v13 - 8);
  v5[19] = v14;
  v15 = *(v14 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v16 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B6463558, 0, 0);
}

uint64_t sub_1B6463558()
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = sub_1B6471680();
  v0[22] = v4;
  v5 = *(v3 + 16);
  v0[23] = v5;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_1B67D8A7C();
  v7 = sub_1B67D9C9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B63EF000, v6, v7, "will fetch tag ESL feed items from Smarter Fetch", v8, 2u);
    MEMORY[0x1B8C96DF0](v8, -1, -1);
  }

  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  v12 = v0[17];
  v13 = v0[10];

  v14 = *(v11 + 8);
  v0[25] = v14;
  v14(v9, v10);
  v15 = v13[8];
  v16 = v13[9];
  __swift_project_boxed_opaque_existential_1(v13 + 5, v15);
  (*(v16 + 24))(v15, v16);
  v17 = v0[16];
  v18 = v0[17];
  v20 = v0[12];
  v19 = v0[13];
  v21 = v0[10];
  v22 = v0[11];
  v23 = v21[13];
  v24 = v21[14];
  __swift_project_boxed_opaque_existential_1(v21 + 10, v23);
  (*(v24 + 8))(v18, v23, v24);
  sub_1B67D9A9C();
  (*(v20 + 8))(v19, v22);
  v25 = *(MEMORY[0x1E69E87A8] + 4);
  v26 = swift_task_alloc();
  v0[26] = v26;
  *v26 = v0;
  v26[1] = sub_1B646384C;
  v27 = v0[16];
  v28 = v0[14];
  v29 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v28, v0 + 4);
}

uint64_t sub_1B646384C()
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 208);
  v7 = *v1;

  if (v0)
  {
    v3 = sub_1B6463CF0;
  }

  else
  {
    v3 = sub_1B6463988;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6463988()
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  if (*(v0 + 24) <= 1u)
  {
    if (*(v0 + 24))
    {
      v5 = *(*(v0 + 80) + 120);
      *(v0 + 40) = 0;
      v6 = [v5 feedItemFromPBRecord:v1 error:v0 + 40];
      v7 = *(v0 + 40);
      if (v6)
      {
        v8 = v6;
        v10 = *(v0 + 48);
        v9 = *(v0 + 56);
        v11 = v7;
        [v8 setSurfacedByFlags_];
        [v8 markAsEvergreen];
        v10(v8);
        sub_1B6449D2C(v1, 1);
      }

      else
      {
        v31 = v7;
        v32 = sub_1B67D855C();

        swift_willThrow();
        sub_1B6449D2C(v1, 1);
      }

LABEL_15:
      v33 = *(MEMORY[0x1E69E87A8] + 4);
      v34 = swift_task_alloc();
      *(v0 + 208) = v34;
      *v34 = v0;
      v34[1] = sub_1B646384C;
      v35 = *(v0 + 128);
      v36 = *(v0 + 112);
      v37 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DB90](v0 + 16, 0, 0, v36, v0 + 32);
    }

    v2 = *(v0 + 16);
    v3 = 0;
LABEL_6:
    sub_1B6449D2C(v2, v3);
    goto LABEL_15;
  }

  if (*(v0 + 24) == 2)
  {
    v4 = *(v0 + 72);
    (*(v0 + 64))(v1);
    sub_1B6449D2C(v1, 2);
    v2 = v1;
    v3 = 2;
    goto LABEL_6;
  }

  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v14 = *(v0 + 176);
  v15 = *(v0 + 160);
  v16 = *(v0 + 144);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v13(v15, v14, v16);
  v17 = sub_1B67D8A7C();
  v18 = sub_1B67D9C9C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1B63EF000, v17, v18, "did fetch tag ESL feed items from Smarter Fetch", v19, 2u);
    MEMORY[0x1B8C96DF0](v19, -1, -1);
  }

  v20 = *(v0 + 200);
  v22 = *(v0 + 160);
  v21 = *(v0 + 168);
  v23 = *(v0 + 144);
  v24 = *(v0 + 152);
  v26 = *(v0 + 128);
  v25 = *(v0 + 136);
  v27 = *(v0 + 104);

  v20(v22, v23);
  sub_1B6467DA0(v25);

  v28 = *(v0 + 8);
  v29 = *MEMORY[0x1E69E9840];

  return v28();
}

uint64_t sub_1B6463CF0()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_1B6467DA0(v1);
  v2 = v0[4];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[13];

  v8 = v0[1];
  v9 = *MEMORY[0x1E69E9840];

  return v8();
}

uint64_t sub_1B6463DD8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v4 = v0[15];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B6463EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a1;
  v5[29] = a3;
  v5[32] = *v4;
  v6 = type metadata accessor for FeedItemPruningPolicy(0);
  v5[33] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v9 = sub_1B67D8A9C();
  v5[36] = v9;
  v10 = *(v9 - 8);
  v5[37] = v10;
  v11 = *(v10 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v12 = sub_1B67D877C();
  v5[40] = v12;
  v13 = *(v12 - 8);
  v5[41] = v13;
  v14 = *(v13 + 64) + 15;
  v5[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64640B4, 0, 0);
}

uint64_t sub_1B64640B4()
{
  v1 = v0[42];
  v2 = v0[31];
  sub_1B67D876C();
  v3 = *(v2 + 16);
  v0[43] = v3;
  v4 = [v3 configurationManager];
  v0[44] = v4;
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1B64641FC;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AE60, &qword_1B68149F0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B6465578;
  v0[13] = &block_descriptor_2;
  v0[14] = v5;
  [v4 fetchConfigurationIfNeededWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B64641FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  if (v2)
  {
    v3 = sub_1B6464B78;
  }

  else
  {
    v3 = sub_1B646430C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1B646430C()
{
  v1 = v0[27];
  v0[46] = v1;
  if (v1)
  {
    v3 = v0[43];
    v2 = v0[44];
    v4 = v0[29];
    v5 = v0[30];
    swift_unknownObjectRelease();
    v6 = swift_allocObject();
    v0[47] = v6;
    *(v6 + 16) = 0;
    v7 = swift_allocObject();
    v0[48] = v7;
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v5;
    v8 = swift_allocObject();
    v0[49] = v8;
    *(v8 + 16) = MEMORY[0x1E69E7CC0];

    v9 = *sub_1B644E4E8();

    v10 = [objc_msgSend(v3 appConfigurationManager)];
    swift_unknownObjectRelease();
    if ([v10 respondsToSelector_])
    {
      [v10 isSmarterFetchEnabledForESL];
    }

    swift_unknownObjectRelease();
    v11 = v0[31];
    v12 = v0[32];
    sub_1B6467954(qword_1EDB1EED0, v13, type metadata accessor for TagESLService);
    LOBYTE(v11) = sub_1B67D880C();

    if (v11)
    {
      v14 = swift_task_alloc();
      v0[50] = v14;
      *v14 = v0;
      v14[1] = sub_1B6464620;
      v15 = v0[31];

      sub_1B646335C(sub_1B6465678, v7, sub_1B645C34C, v8);
    }

    else
    {
      v16 = swift_task_alloc();
      v0[52] = v16;
      *v16 = v0;
      v16[1] = sub_1B6464A64;
      v17 = v0[31];

      sub_1B646231C(v1, sub_1B6465678, v7, sub_1B645C34C, v8);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B6464620()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1B6464C44;
  }

  else
  {
    v3 = sub_1B6464734;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6464734()
{
  v1 = v0[47];
  v2 = v0[39];
  v3 = v0[36];
  v4 = v0[37];
  v5 = sub_1B6471680();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B67D8A7C();
  v7 = sub_1B67D9C9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[47];
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    swift_beginAccess();
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_1B63EF000, v6, v7, "did fetch %{public}ld tag ESL feed items", v9, 0xCu);
    MEMORY[0x1B8C96DF0](v9, -1, -1);
  }

  else
  {
    v10 = v0[47];
  }

  v11 = v0[49];
  v27 = v0[48];
  v28 = v0[46];
  v13 = v0[41];
  v12 = v0[42];
  v14 = v0[39];
  v15 = v0[40];
  v29 = v0[47];
  v30 = v0[38];
  v17 = v0[35];
  v16 = v0[36];
  v18 = v0[34];
  v24 = v0[33];
  v26 = v0[28];
  (*(v0[37] + 8))();
  v25 = sub_1B645C624(MEMORY[0x1E69E7CC0]);
  v19 = *(v13 + 16);
  v19(v17, v12, v15);
  (*(v13 + 56))(v17, 0, 1, v15);
  swift_beginAccess();
  v20 = *(v11 + 16);
  v19(v18, v12, v15);
  swift_storeEnumTagMultiPayload();
  v21 = MEMORY[0x1E6969530];
  sub_1B6467954(&unk_1EDB1EFA0, 255, MEMORY[0x1E6969530]);
  sub_1B6467954(&unk_1EDB1EFC0, 255, v21);

  sub_1B65074D8(v25, v17, v20, v18, v26);

  swift_unknownObjectRelease();
  (*(v13 + 8))(v12, v15);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1B6464A64()
{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_1B6465484;
  }

  else
  {
    v3 = sub_1B6468084;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6464B78()
{
  v1 = v0[44];
  v2 = v0[45];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[40];
  swift_willThrow();
  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();
  v6 = v0[45];
  v7 = v0[42];
  v9 = v0[38];
  v8 = v0[39];
  v11 = v0[34];
  v10 = v0[35];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B6464C44()
{
  v1 = v0[51];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = sub_1B6471680();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B67D8A7C();
  v8 = sub_1B67D9C8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[51];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B63EF000, v7, v8, "failed fetch tag ESL feed items from Smarter Fetch, falling back to CK, error=%{public}@", v10, 0xCu);
    sub_1B6418AB4(v11, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v11, -1, -1);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
  }

  v14 = v0[47];
  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[36];

  (*(v16 + 8))(v15, v17);
  swift_beginAccess();
  if (*(v14 + 16))
  {
    v18 = v0[51];
    v19 = v0[48];
    v20 = v0[49];
    v22 = v0[46];
    v21 = v0[47];
    v24 = v0[41];
    v23 = v0[42];
    v25 = v0[40];
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v24 + 8))(v23, v25);

    v26 = v0[51];
    v27 = v0[42];
    v29 = v0[38];
    v28 = v0[39];
    v31 = v0[34];
    v30 = v0[35];

    v32 = v0[1];

    return v32();
  }

  else
  {
    v34 = v0[46];
    v35 = swift_task_alloc();
    v0[54] = v35;
    *v35 = v0;
    v35[1] = sub_1B6464F38;
    v36 = v0[48];
    v37 = v0[49];
    v38 = v0[31];

    return sub_1B646231C(v34, sub_1B6465678, v36, sub_1B645C34C, v37);
  }
}

uint64_t sub_1B6464F38()
{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_1B6465384;
  }

  else
  {
    v3 = sub_1B646504C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B646504C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = sub_1B6471680();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B67D8A7C();
  v7 = sub_1B67D9C9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 376);
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    swift_beginAccess();
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_1B63EF000, v6, v7, "did fetch %{public}ld tag ESL feed items", v9, 0xCu);
    MEMORY[0x1B8C96DF0](v9, -1, -1);
  }

  else
  {
    v10 = *(v0 + 376);
  }

  v11 = *(v0 + 392);
  v27 = *(v0 + 384);
  v28 = *(v0 + 368);
  v13 = *(v0 + 328);
  v12 = *(v0 + 336);
  v14 = *(v0 + 312);
  v15 = *(v0 + 320);
  v29 = *(v0 + 376);
  v30 = *(v0 + 304);
  v17 = *(v0 + 280);
  v16 = *(v0 + 288);
  v18 = *(v0 + 272);
  v24 = *(v0 + 264);
  v26 = *(v0 + 224);
  (*(*(v0 + 296) + 8))();
  v25 = sub_1B645C624(MEMORY[0x1E69E7CC0]);
  v19 = *(v13 + 16);
  v19(v17, v12, v15);
  (*(v13 + 56))(v17, 0, 1, v15);
  swift_beginAccess();
  v20 = *(v11 + 16);
  v19(v18, v12, v15);
  swift_storeEnumTagMultiPayload();
  v21 = MEMORY[0x1E6969530];
  sub_1B6467954(&unk_1EDB1EFA0, 255, MEMORY[0x1E6969530]);
  sub_1B6467954(&unk_1EDB1EFC0, 255, v21);

  sub_1B65074D8(v25, v17, v20, v18, v26);

  swift_unknownObjectRelease();
  (*(v13 + 8))(v12, v15);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1B6465384()
{
  v1 = v0[51];
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[40];

  swift_unknownObjectRelease();

  (*(v7 + 8))(v6, v8);

  v9 = v0[55];
  v10 = v0[42];
  v12 = v0[38];
  v11 = v0[39];
  v14 = v0[34];
  v13 = v0[35];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B6465484()
{
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];

  swift_unknownObjectRelease();
  (*(v6 + 8))(v5, v7);

  v8 = v0[53];
  v9 = v0[42];
  v11 = v0[38];
  v10 = v0[39];
  v13 = v0[34];
  v12 = v0[35];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B6465578(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    swift_unknownObjectRetain();

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1B6465678(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  result = swift_beginAccess();
  v7 = *(v4 + 16);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v9;
    return v3(a1);
  }

  return result;
}

uint64_t sub_1B64656E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B642694C;

  return sub_1B6463EF8(a1, v10, a3, a4);
}

uint64_t sub_1B6465798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A110, &qword_1B6811218);
  v6[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6465884, 0, 0);
}

uint64_t sub_1B6465884()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = [v1 lastRefreshed];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v4 = v0[8];
        v5 = sub_1B67D877C();
        v6 = *(v5 - 8);
        v7 = *(v6 + 56);
        v7(v4, 1, 1, v5);
        sub_1B6467954(&qword_1EB94A118, 255, MEMORY[0x1E6969530]);
        sub_1B67DA11C();

        if ((*(v6 + 48))(v4, 1, v5) != 1)
        {
          v8 = v0[9];
          (*(v6 + 32))(v8, v0[8], v5);
          v7(v8, 0, 1, v5);
          goto LABEL_8;
        }
      }

      else
      {
      }
    }
  }

  v9 = v0[9];
  v10 = sub_1B67D877C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
LABEL_8:
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1B6465AEC;
  v13 = v0[11];
  v14 = v0[7];
  v15 = v0[3];
  v16 = v0[4];

  return sub_1B6463EF8(v13, v11, v15, v16);
}

uint64_t sub_1B6465AEC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 104) = v0;

  sub_1B6418AB4(v3, &unk_1EB94A100, &qword_1B680FD50);
  if (v0)
  {
    v4 = sub_1B6465D80;
  }

  else
  {
    v4 = sub_1B6465C2C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6465C2C()
{
  v1 = *(*(v0 + 88) + *(*(v0 + 80) + 48));
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B67DA04C())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1B8C95180](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = *(v0 + 48);
      (*(v0 + 40))(v4);

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  sub_1B6418AB4(*(v0 + 88), &qword_1EB94A110, &qword_1B6811218);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1B6465D80()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_1B6465FB0(void *a1, void *aBlock, const void *a3, const void *a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(a3);
  v5[4] = _Block_copy(a4);
  v11 = swift_allocObject();
  v5[5] = v11;
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v5[6] = v12;
  *(v12 + 16) = v10;
  v13 = a1;

  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_1B6466108;

  return sub_1B6465798(a1, sub_1B644DBF4, v11, sub_1B644DCAC, v12);
}

uint64_t sub_1B6466108()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  v11 = *(v3 + 32);
  if (v2)
  {
    v12 = sub_1B67D854C();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_1B64662E8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B6422E9C;

  return v7();
}

uint64_t sub_1B64663D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B642694C;

  return v8();
}

uint64_t sub_1B64664B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1B644C200(a3, v25 - v11);
  v13 = sub_1B67D993C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B6418AB4(v12, &unk_1EB94A300, &qword_1B68111C0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B67D992C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1B67D989C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1B67D965C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1B6418AB4(a3, &unk_1EB94A300, &qword_1B68111C0);

    return v23;
  }

LABEL_8:
  sub_1B6418AB4(a3, &unk_1EB94A300, &qword_1B68111C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *sub_1B64667A4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
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

void *sub_1B646682C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1B64668B0(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1B6466A10(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_1B6466B3C(v9, v4, v2);
  result = MEMORY[0x1B8C96DF0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *sub_1B6466A10(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 56) + 8 * v15) hasEvergreenArticleList];
    if (result)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1B6466BB4(v4, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1B6466BB4(v4, a2, v5, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1B6466B3C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1B6466A10(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1B6466BB4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3C0, &unk_1B6814BD0);
  result = sub_1B67DA0EC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_1B67DA3DC();

    swift_unknownObjectRetain();
    sub_1B67D967C();
    result = sub_1B67DA41C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

char *sub_1B6466DF8(char *a1, int64_t a2, char a3)
{
  result = sub_1B6466E18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B6466E18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3D0, qword_1B6811330);
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

void *sub_1B6466F28(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B646707C(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_1B6467DFC(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 64 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 72 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64671E0(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_30;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a5 != a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      if (a5 != a2)
      {
        goto LABEL_26;
      }

      v9 = v7 >> 6;
      v10 = *(a7 + 64 + 8 * (v7 >> 6));
      if ((v10 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 72 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_21;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_21:
      if (v7 == a4)
      {
        return result;
      }

      a2 = a5;
      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_1B64672F8(uint64_t result, void *a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!a2)
  {
LABEL_28:
    v29 = *(v3 + 16);
    *result = *v3;
    *(result + 16) = v29;
    *(result + 32) = *(v3 + 32);
    *(result + 48) = *(v3 + 48);
    *(result + 56) = v4;
    *(result + 64) = v5;
    *(result + 72) = v6;
    sub_1B6467DFC(v4, v5, v6 & 1);
    return 0;
  }

  v7 = a3;
  v40 = *(v3 + 16);
  if (!a3)
  {
    v30 = v6 & 1;
    v31 = result;
    sub_1B6467DFC(v4, v5, v30);
    v32 = v31;
    v33 = v40;
LABEL_32:
    v35 = *(v3 + 16);
    *v32 = *v3;
    *(v32 + 16) = v35;
    *(v32 + 32) = *(v3 + 32);
    *(v32 + 48) = *(v3 + 48);
    *(v32 + 56) = v4;
    *(v32 + 64) = v5;
    *(v32 + 72) = v33;
    return v7;
  }

  if (a3 < 0)
  {
LABEL_41:
    __break(1u);
  }

  else
  {
    v8 = a2;
    v37 = result;
    v46 = *(v3 + 24);
    v9 = *(v3 + 40);
    v45 = *(v3 + 32);
    v10 = *(v3 + 48);
    sub_1B6467DFC(v4, v5, v6 & 1);
    v11 = v10;
    result = 0;
    v43 = v10;
    v44 = v10 + 64;
    v41 = v9;
    v12 = v6 | v9;
    v38 = v10 + 72;
    v39 = v7;
    v13 = 1;
    v14 = v4;
    v15 = v5;
    v42 = v5;
    while ((v12 & 1) == 0)
    {
      if (v15 != v45)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v14 == v46)
      {
        v34 = *(v36 + 16);
        *v37 = *v36;
        *(v37 + 16) = v34;
        *(v37 + 32) = *(v36 + 32);
        *(v37 + 48) = *(v36 + 48);
        *(v37 + 56) = v46;
        *(v37 + 64) = v15;
        v7 = result;
        *(v37 + 72) = 0;
        return v7;
      }

      if (v6)
      {
        goto LABEL_43;
      }

      if (v14 < v4)
      {
        goto LABEL_35;
      }

      if (v45 != v5)
      {
        goto LABEL_36;
      }

      if (v14 >= v46)
      {
        goto LABEL_37;
      }

      if (v14 < 0)
      {
        goto LABEL_38;
      }

      v3 = v4;
      v16 = 1 << *(v11 + 32);
      if (v14 >= v16)
      {
        goto LABEL_38;
      }

      v17 = v14 >> 6;
      v18 = *(v44 + 8 * (v14 >> 6));
      if (((v18 >> v14) & 1) == 0)
      {
        goto LABEL_39;
      }

      if (*(v11 + 36) != v45)
      {
        goto LABEL_40;
      }

      v19 = (*(v11 + 48) + 16 * v14);
      v20 = *v19;
      v21 = v19[1];
      v22 = v18 & (-2 << (v14 & 0x3F));
      if (v22)
      {
        v14 = __clz(__rbit64(v22)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v17 << 6;
        v24 = v17 + 1;
        v25 = (v38 + 8 * v17);
        while (v24 < (v16 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {

            sub_1B6467E08(v14, v15, 0);
            v14 = __clz(__rbit64(v26)) + v23;
            goto LABEL_23;
          }
        }

        sub_1B6467E08(v14, v15, 0);
        v14 = v16;
LABEL_23:
        v7 = v39;
        v6 = v40;
      }

      v11 = v43;
      v15 = *(v43 + 36);
      *v8 = v20;
      v8[1] = v21;
      if (v13 == v7)
      {
        v33 = 0;
        v5 = v15;
        v4 = v14;
        v3 = v36;
        v32 = v37;
        goto LABEL_32;
      }

      v4 = v3;
      v8 += 2;
      result = v13;
      v12 = v41;
      v28 = __OFADD__(v13++, 1);
      v5 = v42;
      if (v28)
      {
        __break(1u);
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1B6467600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = -1 << *(a2 + 32);
  result = sub_1B67D9E6C();
  v8 = 1 << *(a2 + 32);
  if (v8 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a2 + 36);
  v10 = *(a1 + 8);
  if (v9 != v10)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = *(a1 + 32);
  if (v9 != v11)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 24);
  if (v8 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

unint64_t sub_1B64676E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3C0, &unk_1B6814BD0);
    v3 = sub_1B67DA0EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1B6456E70(v5, v6);
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

uint64_t sub_1B64677E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = -1 << *(a2 + 32);
    v7 = sub_1B67D9E6C();
    v8 = *(a2 + 36);
    v9 = -1 << *(a2 + 32);
    v10 = sub_1B646707C(v7, v8, 0, v4, -v9, *(a2 + 36), 0, a2);
    v12 = v11;
    v14 = v13;
    v15 = v13;
    result = sub_1B67D9E6C();
    if (v15 == 255)
    {
      v16 = -v9;
    }

    else
    {
      v16 = v10;
    }

    if (v15 == 255)
    {
      v17 = v8;
    }

    else
    {
      v17 = v12;
    }

    if (v15 != 255 && (v14 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= result)
      {
        v22[0] = result;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        result = sub_1B6467600(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B6467954(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B646799C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B642694C;

  return sub_1B6465FB0(v2, v3, v4, v5, v6);
}

uint64_t sub_1B6467A64()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B6422E9C;

  return sub_1B64662E8(v2, v3, v5);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B6467B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B6422E9C;

  return sub_1B64663D0(a1, v4, v5, v7);
}

uint64_t sub_1B6467C30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B6422E9C;

  return sub_1B641633C(a1, v5);
}

uint64_t sub_1B6467CE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B642694C;

  return sub_1B641633C(a1, v5);
}

uint64_t sub_1B6467DA0(uint64_t a1)
{
  Request = type metadata accessor for SmarterFetchRequest(0);
  (*(*(Request - 8) + 8))(a1, Request);
  return a1;
}

uint64_t sub_1B6467DFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B6467E08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B6467E40(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328) - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, v9 = [Strong networkEvents], v8, v9))
  {
    sub_1B646802C();
    v10 = sub_1B67D97BC();

    if (v10 >> 62)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
LABEL_4:
      v11 = sub_1B67DA04C();
      if (!v11)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (v11 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B8C95180](i, v10);
    }

    else
    {
      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    v5();
  }

LABEL_14:

  if (a1)
  {
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
    sub_1B67D98AC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
    sub_1B67D98BC();
  }
}

unint64_t sub_1B646802C()
{
  result = qword_1EDB1E570;
  if (!qword_1EDB1E570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB1E570);
  }

  return result;
}

id DropboxReadingHistory.__allocating_init(todayDropbox:articleExposureRegistry:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_lazyDropboxData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949C10, &qword_1B680FEE8);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  *&v5[v6] = v7;
  *&v5[OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_todayDropbox] = a1;
  *&v5[OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_articleExposureRegistry] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id DropboxReadingHistory.init(todayDropbox:articleExposureRegistry:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_lazyDropboxData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949C10, &qword_1B680FEE8);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  *&v2[v6] = v7;
  *&v2[OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_todayDropbox] = a1;
  *&v2[OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_articleExposureRegistry] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t DropboxReadingHistory.addInterest()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InterestToken();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = InterestToken.__allocating_init(_:)(sub_1B6468264, v3);
  a1[3] = v2;
  a1[4] = &protocol witness table for InterestToken;
  *a1 = result;
  return result;
}

uint64_t sub_1B6468264()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_lazyDropboxData);
    v2 = result;

    os_unfair_lock_lock((v1 + 24));
    v3 = *(v1 + 16);
    swift_unknownObjectRelease();
    *(v1 + 16) = 0;
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t sub_1B64682E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    v5 = 0;
    *a3 = v4;
LABEL_6:
    swift_unknownObjectRetain();
    return sub_1B644DCA4(v5);
  }

  v7 = *(a2 + OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_todayDropbox);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B644DC08;
  *(v9 + 24) = v8;
  v12[4] = sub_1B644DC48;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B644CB30;
  v12[3] = &block_descriptor_3;
  v10 = _Block_copy(v12);

  [v7 peekSyncWithAccessor_];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    result = *a1;
    if (*a1)
    {
      *a3 = result;
      swift_unknownObjectRetain();
      v5 = sub_1B644DC08;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t DropboxReadingHistory.mostRecentlyReadArticles(maxCount:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A520, &qword_1B6811348);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30[-v6];
  v8 = *(v1 + OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_lazyDropboxData);
  v31 = v1;
  os_unfair_lock_lock((v8 + 24));
  sub_1B64688D0((v8 + 16), &v32);
  os_unfair_lock_unlock((v8 + 24));
  v9 = [v32 recentlyReadHistoryItems];
  swift_unknownObjectRelease();
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A528, qword_1B6811350);
  v11 = sub_1B67D954C();

  v32 = v11;
  swift_getKeyPath();
  sub_1B64689AC();
  sub_1B67D84AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A538, &unk_1B6811390);
  sub_1B6413CCC(&qword_1EB94A540, &qword_1EB94A538, &unk_1B6811390);
  sub_1B6413CCC(&qword_1EB94A548, &qword_1EB94A520, &qword_1B6811348);
  v12 = &v32;
  v13 = sub_1B67D96EC();
  (*(v4 + 8))(v7, v3);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
    v7 = (v13 >> 62);
    if (!(v13 >> 62))
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15 >= a1)
      {
        v16 = a1;
      }

      else
      {
        v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a1)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v15 >= v17)
      {
        goto LABEL_11;
      }

      goto LABEL_45;
    }
  }

  if (v13 < 0)
  {
    v12 = v13;
  }

  else
  {
    v12 = v14;
  }

  v28 = sub_1B67DA04C();
  result = sub_1B67DA04C();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v28 >= a1)
    {
      v29 = a1;
    }

    else
    {
      v29 = v28;
    }

    if (v28 < 0)
    {
      v29 = a1;
    }

    if (a1)
    {
      v17 = v29;
    }

    else
    {
      v17 = 0;
    }

    if (sub_1B67DA04C() >= v17)
    {
LABEL_11:
      if ((v13 & 0xC000000000000001) != 0)
      {

        if (v17)
        {
          v18 = 0;
          do
          {
            v19 = v18 + 1;
            sub_1B67D9F0C();
            v18 = v19;
          }

          while (v17 != v19);
        }
      }

      else
      {
      }

      if (v7)
      {
        v12 = sub_1B67DA0AC();
        a1 = v21;
        v10 = v22;
        v17 = v23;

        if (v17)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v10 = 0;
        v12 = (v13 & 0xFFFFFFFFFFFFFF8);
        a1 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
        v17 = (2 * v17) | 1;
        if (v17)
        {
LABEL_23:
          sub_1B67DA2FC();
          swift_unknownObjectRetain_n();
          v25 = swift_dynamicCastClass();
          if (!v25)
          {
            swift_unknownObjectRelease();
            v25 = MEMORY[0x1E69E7CC0];
          }

          v26 = *(v25 + 16);

          if (!__OFSUB__(v17 >> 1, v10))
          {
            if (v26 == (v17 >> 1) - v10)
            {
              v20 = swift_dynamicCastClass();

              swift_unknownObjectRelease();
              if (!v20)
              {
                swift_unknownObjectRelease();
                v20 = MEMORY[0x1E69E7CC0];
              }

              swift_unknownObjectRelease();
              return v20;
            }

            goto LABEL_47;
          }

LABEL_46:
          __break(1u);
LABEL_47:
          swift_unknownObjectRelease_n();
        }
      }

      sub_1B646A3EC(v12, a1, v10, v17);
      v20 = v24;
      swift_unknownObjectRelease();

      return v20;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6468908@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 lastVisitedAt];
  if (v3)
  {
    v4 = v3;
    sub_1B67D874C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B67D877C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

unint64_t sub_1B64689AC()
{
  result = qword_1EDB1EFB0;
  if (!qword_1EDB1EFB0)
  {
    sub_1B67D877C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EFB0);
  }

  return result;
}

uint64_t DropboxReadingHistory.allReadArticleIDs.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_lazyDropboxData);
  os_unfair_lock_lock((v1 + 24));
  sub_1B646A5B8((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 24));
  v2 = [v5 recentlyReadHistoryItems];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A528, qword_1B6811350);
  v3 = sub_1B67D954C();

  return sub_1B6468B6C(v3);
}

uint64_t sub_1B6468B6C(uint64_t a1)
{
  result = MEMORY[0x1B8C94D60](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
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

    sub_1B6469928(&v13, v11, v12);
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

id sub_1B6468CA0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B67D9AEC();

  return v5;
}

char *DropboxReadingHistory.allSeenArticleIDs.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_lazyDropboxData);
  os_unfair_lock_lock((v2 + 24));
  sub_1B646A5B8((v2 + 16), &v21);
  os_unfair_lock_unlock((v2 + 24));
  v3 = [v21 recentlySeenHistoryItems];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A528, qword_1B6811350);
  v4 = sub_1B67D97BC();

  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_20:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v18 = [*(v1 + OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_articleExposureRegistry) allExposedItemIDs];
    v19 = sub_1B67D97BC();

    v21 = v7;
    sub_1B646A1EC(v19);
    v17 = sub_1B646A4DC(v21);

    return v17;
  }

  while (1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    result = sub_1B6456B24(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      break;
    }

    v20 = v1;
    v1 = 0;
    v7 = v21;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B8C95180](v1, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v1 + 32);
        swift_unknownObjectRetain();
      }

      v9 = [swift_unknownObjectRetain() articleID];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1B67D964C();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      swift_unknownObjectRelease_n();
      if (!v13)
      {
        break;
      }

      v21 = v7;
      v15 = v7[2];
      v14 = v7[3];
      if (v15 >= v14 >> 1)
      {
        sub_1B6456B24((v14 > 1), v15 + 1, 1);
        v7 = v21;
      }

      ++v1;
      v7[2] = v15 + 1;
      v16 = &v7[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      if (v5 == v1)
      {

        v1 = v20;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    v5 = sub_1B67DA04C();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t DropboxReadingHistory.firstSeenDate(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v10 = *(v3 + OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_lazyDropboxData);
  v36 = v3;
  os_unfair_lock_lock((v10 + 24));
  sub_1B646A5B8((v10 + 16), &v37);
  os_unfair_lock_unlock((v10 + 24));
  v11 = [v37 recentlySeenHistoryItems];
  swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_19:
    v24 = sub_1B67D877C();
    return (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A528, qword_1B6811350);
  v12 = sub_1B67D97BC();

  v33 = a3;
  if (v12 >> 62)
  {
LABEL_26:
    v13 = sub_1B67DA04C();
    v32 = v9;
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_27:

    v31 = sub_1B67D877C();
    return (*(*(v31 - 8) + 56))(v33, 1, 1, v31);
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = v9;
  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_4:
  v14 = 0;
  v35 = v12 & 0xC000000000000001;
  v9 = (v12 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v35)
    {
      v15 = MEMORY[0x1B8C95180](v14, v12);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_26;
      }

      v15 = *(v12 + 8 * v14 + 32);
      swift_unknownObjectRetain();
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_18;
      }
    }

    v17 = [v15 articleID];
    if (!v17)
    {
      goto LABEL_5;
    }

    a3 = a2;
    v18 = v17;
    v19 = sub_1B67D964C();
    v21 = v20;

    if (v19 == v34 && v21 == a3)
    {
      break;
    }

    a2 = a3;
    v23 = sub_1B67DA2DC();

    if (v23)
    {
      goto LABEL_21;
    }

LABEL_5:
    swift_unknownObjectRelease();
    ++v14;
    if (v16 == v13)
    {
      goto LABEL_27;
    }
  }

LABEL_21:

  v26 = [v15 firstSeenAt];
  swift_unknownObjectRelease();
  v28 = v32;
  v27 = v33;
  if (v26)
  {
    sub_1B67D874C();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = sub_1B67D877C();
  (*(*(v30 - 8) + 56))(v28, v29, 1, v30);
  return sub_1B6404758(v28, v27);
}

uint64_t DropboxReadingHistory.readDate(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v10 = *(v3 + OBJC_IVAR____TtC8NewsCore21DropboxReadingHistory_lazyDropboxData);
  v36 = v3;
  os_unfair_lock_lock((v10 + 24));
  sub_1B646A5B8((v10 + 16), &v37);
  os_unfair_lock_unlock((v10 + 24));
  v11 = [v37 recentlySeenHistoryItems];
  swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_19:
    v24 = sub_1B67D877C();
    return (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A528, qword_1B6811350);
  v12 = sub_1B67D97BC();

  v33 = a3;
  if (v12 >> 62)
  {
LABEL_26:
    v13 = sub_1B67DA04C();
    v32 = v9;
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_27:

    v31 = sub_1B67D877C();
    return (*(*(v31 - 8) + 56))(v33, 1, 1, v31);
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = v9;
  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_4:
  v14 = 0;
  v35 = v12 & 0xC000000000000001;
  v9 = (v12 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v35)
    {
      v15 = MEMORY[0x1B8C95180](v14, v12);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_26;
      }

      v15 = *(v12 + 8 * v14 + 32);
      swift_unknownObjectRetain();
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_18;
      }
    }

    v17 = [v15 articleID];
    if (!v17)
    {
      goto LABEL_5;
    }

    a3 = a2;
    v18 = v17;
    v19 = sub_1B67D964C();
    v21 = v20;

    if (v19 == v34 && v21 == a3)
    {
      break;
    }

    a2 = a3;
    v23 = sub_1B67DA2DC();

    if (v23)
    {
      goto LABEL_21;
    }

LABEL_5:
    swift_unknownObjectRelease();
    ++v14;
    if (v16 == v13)
    {
      goto LABEL_27;
    }
  }

LABEL_21:

  v26 = [v15 lastVisitedAt];
  swift_unknownObjectRelease();
  v28 = v32;
  v27 = v33;
  if (v26)
  {
    sub_1B67D874C();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = sub_1B67D877C();
  (*(*(v30 - 8) + 56))(v28, v29, 1, v30);
  return sub_1B6404758(v28, v27);
}

id sub_1B64696A0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_1B67D964C();
  v12 = v11;
  v13 = a1;
  a4(v10, v12);

  v14 = sub_1B67D877C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v9, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_1B67D86DC();
    (*(v15 + 8))(v9, v14);
    v17 = v18;
  }

  return v17;
}

id DropboxReadingHistory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DropboxReadingHistory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6469928(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B67DA3DC();
  sub_1B67D967C();
  v9 = sub_1B67DA41C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B67DA2DC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1B6469CD8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B6469A78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A900, &unk_1B6812FE0);
  result = sub_1B67D9ECC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1B67DA3DC();
      sub_1B67D967C();
      result = sub_1B67DA41C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B6469CD8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B6469A78(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B6469E58();
      goto LABEL_16;
    }

    sub_1B6469FB4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B67DA3DC();
  sub_1B67D967C();
  result = sub_1B67DA41C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B67DA2DC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B67DA33C();
  __break(1u);
  return result;
}

void *sub_1B6469E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A900, &unk_1B6812FE0);
  v2 = *v0;
  v3 = sub_1B67D9EBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1B6469FB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A900, &unk_1B6812FE0);
  result = sub_1B67D9ECC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1B67DA3DC();

      sub_1B67D967C();
      result = sub_1B67DA41C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B646A1EC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B646A2E0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B646A2E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
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

void sub_1B646A3EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A528, qword_1B6811350);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1B646A4DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8C94D60](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B6469928(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B646A5D0()
{
  v0 = sub_1B67D888C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B67D886C();
  qword_1EDB23DD0 = result;
  return result;
}

uint64_t *sub_1B646A628()
{
  if (qword_1EDB23DC8 != -1)
  {
    swift_once();
  }

  return &qword_1EDB23DD0;
}

uint64_t static AppGroup.newsCore.getter()
{
  if (qword_1EDB23DC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B646A710@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B67D8B4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B646A73C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];

  sub_1B67D8B5C();
}

uint64_t UserEventHistorySessionEntity.sessionID.getter()
{
  v1 = *(v0 + 8);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B646A894@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1B67D8B4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B646A8C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];

  sub_1B67D8B5C();
}

uint64_t UserEventHistorySessionEntity.sessionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(*(v1 + 16) + 32);

  sub_1B67D8DCC();

  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t UserEventHistorySessionEntity.sessionData.getter()
{
  v1 = *(*(v0 + 24) + 32);

  sub_1B67D8DCC();

  if (v4 >> 60 != 15)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t UserEventHistorySessionEntity.sessionDataSize.getter()
{
  v1 = *(v0 + 32);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if ((v4 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B646AB8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_1B67D8B4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B646ABB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];

  sub_1B67D8B5C();
}

uint64_t sub_1B646ACC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_1B67D8B4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B646ACF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];

  sub_1B67D8B5C();
}

uint64_t UserEventHistorySessionEntity.init(sessionID:sessionData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v111 = a3;
  v112 = a4;
  v108 = a1;
  v109 = a2;
  v100 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v102 = &v99 - v7;
  v101 = type metadata accessor for UserEventHistorySession.ID(0);
  v8 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v117 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v99 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v113 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v99 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v120 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v99 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v99 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v34 = *(*(v33 - 8) + 56);
  v34(v32, 1, 1, v33);
  v34(v30, 1, 1, v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v116 = sub_1B67D8B3C();
  v34(v32, 1, 1, v33);
  v34(v30, 1, 1, v33);
  v41 = *(v35 + 48);
  v42 = *(v35 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v43 = *(v38 + 48);
  v44 = *(v38 + 52);
  swift_allocObject();
  v115 = sub_1B67D8B3C();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v46 = *(*(v45 - 8) + 56);
  v104 = v25;
  v46(v25, 1, 1, v45);
  v46(v120, 1, 1, v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  v51 = sub_1B67D877C();
  sub_1B6421ED0();
  v103 = v51;
  v52 = sub_1B6421E80();
  v114 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v50, 0x446E6F6973736573, 0xEB00000000657461, v52 & 1);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v54 = *(*(v53 - 8) + 56);
  v54(v105, 1, 1, v53);
  v54(v113, 1, 1, v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v58 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C0, &qword_1B6811418);
  sub_1B64216F8();
  v59 = sub_1B6421E80();
  v113 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v58, 0x446E6F6973736573, 0xEB00000000617461, v59 & 1);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v61 = *(*(v60 - 8) + 56);
  v61(v106, 1, 1, v60);
  v61(v107, 1, 1, v60);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  v68 = sub_1B67D8B3C();
  v46(v104, 1, 1, v45);
  v69 = v45;
  v70 = v109;
  v46(v120, 1, 1, v69);
  v71 = v108;
  v72 = *(v47 + 48);
  v73 = *(v47 + 52);
  v74 = v117;
  swift_allocObject();
  sub_1B67D8DBC();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  v78 = sub_1B67D8B3C();

  v79 = v110;
  UserEventHistorySession.ID.init(_:)(v71, v70, v74);
  if (v79)
  {

    sub_1B645745C(v111, v112);
  }

  sub_1B67D8B4C();
  v118 = sub_1B64B4ECC();
  v119 = v81;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v118 = v71;
  v119 = v70;
  sub_1B67D8DDC();

  v82 = *(v114 + 32);
  v83 = v102;
  v84 = v103;
  v85 = *(v103 - 8);
  (*(v85 + 16))(v102, &v74[*(v101 + 20)], v103);
  v86 = *(v85 + 56);
  v86(v83, 0, 1, v84);

  v87 = v83;
  sub_1B67D8DDC();

  v88 = v112;
  v89 = *(v113 + 4);
  v90 = v111;
  v118 = v111;
  v119 = v112;

  sub_1B646B894(v90, v88);
  sub_1B67D8DDC();

  result = sub_1B67D8B4C();
  v91 = v88 >> 62;
  if ((v88 >> 62) > 1)
  {
    if (v91 != 2)
    {
      v92 = 0;
      goto LABEL_13;
    }

    v94 = *(v90 + 16);
    v93 = *(v90 + 24);
    v95 = __OFSUB__(v93, v94);
    v92 = v93 - v94;
    if (!v95)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v91)
  {
    v92 = BYTE6(v88);
    goto LABEL_13;
  }

  LODWORD(v92) = HIDWORD(v90) - v90;
  if (__OFSUB__(HIDWORD(v90), v90))
  {
    __break(1u);
    return result;
  }

  v92 = v92;
LABEL_13:
  v118 = v92;
  LOBYTE(v119) = 0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  sub_1B67D876C();
  v86(v87, 0, 1, v103);
  sub_1B67D8DDC();

  sub_1B645745C(v90, v88);
  result = sub_1B646B8E8(v117);
  v96 = v100;
  v97 = v115;
  *v100 = v116;
  v96[1] = v97;
  v98 = v113;
  v96[2] = v114;
  v96[3] = v98;
  v96[4] = v68;
  v96[5] = v78;
  return result;
}

uint64_t sub_1B646B894(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B646B8E8(uint64_t a1)
{
  v2 = type metadata accessor for UserEventHistorySession.ID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserEventHistorySessionEntity.didInitFromCK()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v33 - v3;
  v5 = sub_1B67D877C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UserEventHistorySession.ID(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v0;
  v14 = v0[1];
  v17 = v0[2];
  v16 = v0[3];
  v33[1] = v0[4];
  v34 = v16;
  v35 = sub_1B67D8B4C();
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (!v37)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = *(v17 + 32);

  sub_1B67D8DCC();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  (*(v6 + 32))(v9, v4, v5);
  v19 = v38;
  UserEventHistorySession.ID.init(uuidString:date:)(v9, v13);
  if (v19)
  {
LABEL_16:

    return;
  }

  v20 = UserEventHistorySession.ID.rawValue.getter();
  v22 = v21;
  sub_1B646B8E8(v13);
  v36 = v20;
  v37 = v22;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v23 = *(v34 + 32);

  sub_1B67D8DCC();

  v24 = v37;
  if (v37 >> 60 != 15)
  {
    v25 = v36;
    v26 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v26 != 2)
      {
        sub_1B6457448(v36, v37);
        v28 = 0;
        goto LABEL_15;
      }

      v30 = *(v36 + 16);
      v29 = *(v36 + 24);
      v25 = sub_1B6457448(v36, v37);
      v28 = v29 - v30;
      if (!__OFSUB__(v29, v30))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v26)
    {
      v27 = BYTE6(v37);
      sub_1B6457448(v36, v37);
      v28 = v27;
LABEL_15:
      v36 = v28;
      LOBYTE(v37) = 0;
      sub_1B67D8DDC();
      goto LABEL_16;
    }

    v31 = HIDWORD(v25);
    v32 = v25;
    sub_1B6457448(v25, v24);
    LODWORD(v28) = v31 - v32;
    if (!__OFSUB__(v31, v32))
    {
      v28 = v28;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

uint64_t UserEventHistorySessionEntity.fastEntity.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *v0;
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  v7 = sub_1B67D8B8C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_1B67D8BBC();
}

uint64_t sub_1B646BD48()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F69737365735FLL;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x6465696669646F6DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F69737365735FLL;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B646BE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B646D53C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B646BE3C(uint64_t a1)
{
  v2 = sub_1B646C2C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B646BE78(uint64_t a1)
{
  v2 = sub_1B646C2C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserEventHistorySessionEntity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5E0, &qword_1B6811460);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v20 = v1[2];
  v21 = v9;
  v12 = v1[5];
  v18 = v1[4];
  v19 = v11;
  v17 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B646C2C0();

  sub_1B67DA47C();
  v23 = v10;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290);
  v14 = v4;
  sub_1B67DA24C();
  if (v2)
  {
  }

  else
  {
    v15 = v20;

    v23 = v21;
    v22 = 1;
    sub_1B67DA24C();
    v23 = v15;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
    sub_1B6413CCC(&qword_1EB94A5F0, &qword_1EB94A5B8, &unk_1B6812390);
    sub_1B67DA24C();
    v23 = v19;
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C0, &qword_1B6811418);
    sub_1B6413CCC(&qword_1EB94A5F8, &qword_1EB94A5C0, &qword_1B6811418);
    sub_1B67DA24C();
    v23 = v18;
    v22 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
    sub_1B6413CCC(&qword_1EB94A600, &qword_1EB94A010, &unk_1B6810300);
    sub_1B67DA24C();
    v23 = v17;
    v22 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA24C();
  }

  return (*(v5 + 8))(v8, v14);
}

unint64_t sub_1B646C2C0()
{
  result = qword_1EB951D20[0];
  if (!qword_1EB951D20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB951D20);
  }

  return result;
}

uint64_t UserEventHistorySessionEntity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v82[0] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A610, &qword_1B6811468);
  v83 = *(v2 - 8);
  v84 = v2;
  v3 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v90 = v82 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v87 = v82 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v94 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v86 = v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v96 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v82 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v29 = *(*(v28 - 8) + 56);
  v29(v27, 1, 1, v28);
  v29(v25, 1, 1, v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v95 = sub_1B67D8B3C();
  v29(v27, 1, 1, v28);
  v29(v25, 1, 1, v28);
  v36 = *(v30 + 48);
  v37 = *(v30 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v38 = *(v33 + 48);
  v39 = *(v33 + 52);
  v82[2] = v33;
  swift_allocObject();
  v93 = sub_1B67D8B3C();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v41 = *(*(v40 - 8) + 56);
  v85 = v20;
  v41(v20, 1, 1, v40);
  v41(v96, 1, 1, v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = sub_1B67D8DBC();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  sub_1B67D877C();
  sub_1B6421ED0();
  v47 = sub_1B6421E80();
  v82[1] = v46;
  v92 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v45, 0x446E6F6973736573, 0xEB00000000657461, v47 & 1);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v49 = *(*(v48 - 8) + 56);
  v49(v86, 1, 1, v48);
  v49(v94, 1, 1, v48);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_1B67D8DBC();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C0, &qword_1B6811418);
  sub_1B64216F8();
  v55 = sub_1B6421E80();
  v86 = v54;
  v94 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v53, 0x446E6F6973736573, 0xEB00000000617461, v55 & 1);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v57 = *(*(v56 - 8) + 56);
  v57(v87, 1, 1, v56);
  v57(v88, 1, 1, v56);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  v88 = sub_1B67D8B3C();
  v41(v85, 1, 1, v40);
  v41(v96, 1, 1, v40);
  v64 = *(v42 + 48);
  v65 = *(v42 + 52);
  v66 = v89;
  swift_allocObject();
  sub_1B67D8DBC();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  v96 = sub_1B67D8B3C();
  v70 = v66[4];
  __swift_project_boxed_opaque_existential_1(v66, v66[3]);
  sub_1B646C2C0();
  v71 = v91;
  v72 = v90;
  sub_1B67DA46C();
  if (!v71)
  {
    v73 = v83;
    v97 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290);
    sub_1B67DA1CC();

    v95 = v98;
    v97 = 1;
    sub_1B67DA1CC();

    v75 = v98;
    v97 = 2;
    sub_1B6413CCC(&qword_1EB94A620, &qword_1EB94A5B8, &unk_1B6812390);
    sub_1B67DA1CC();
    v76 = v73;

    v77 = v98;
    v97 = 3;
    sub_1B6413CCC(&qword_1EB94A628, &qword_1EB94A5C0, &qword_1B6811418);
    sub_1B67DA1CC();

    v94 = v98;
    v97 = 4;
    sub_1B6413CCC(&qword_1EB94A630, &qword_1EB94A010, &unk_1B6810300);
    sub_1B67DA1CC();

    v78 = v98;
    v97 = 5;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA1CC();
    (*(v76 + 8))(v72, v84);

    v79 = v98;
    v80 = v82[0];
    v81 = v94;
    *v82[0] = v95;
    v80[1] = v75;
    v80[2] = v77;
    v80[3] = v81;
    v80[4] = v78;
    v80[5] = v79;
  }

  __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_1B646CFB8(uint64_t a1)
{
  v2 = sub_1B641A7E0();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B646D004(uint64_t a1)
{
  v2 = sub_1B641A7E0();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B646D050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B641A7E0();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B646D0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B641A7E0();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B646D100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B641A7E0();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B646D154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B641A7E0();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B646D1B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = *(a1 + 32);
  sub_1B67D8DCC();
  v9 = sub_1B67D877C();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v7, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B646D2BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B646D744();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B646D344()
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v2)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B646D394()
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if ((v2 & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B646D3E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B646DA58();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1B646D410@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B646DE14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B646D450()
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v2 >> 60 != 15)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B646D4A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B646E058();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B646D4D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = v3[1];
  v6 = *v3;
  sub_1B67D8B6C();
  a3();
  v7 = sub_1B67D8B8C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_1B67D8BFC();
}

uint64_t sub_1B646D53C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69737365735FLL && a2 == 0xEA00000000004449 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69737365735FLL && a2 == 0xEC00000065746144 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69737365735FLL && a2 == 0xEC00000061746144 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B68289C0 == a2 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B646D744()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1B67D8B3C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 1, 1, v23);
  v24(v4, 1, 1, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  sub_1B67D877C();
  sub_1B6421ED0();
  v29 = sub_1B6421E80();
  CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v28, 0x446E6F6973736573, 0xEB00000000657461, v29 & 1);
  return v22;
}

uint64_t sub_1B646DA58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v36 = sub_1B67D8B3C();
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  v22 = *(v16 + 48);
  v23 = *(v16 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v24 = *(v19 + 48);
  v25 = *(v19 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v27 = *(*(v26 - 8) + 56);
  v27(v6, 1, 1, v26);
  v27(v4, 1, 1, v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  return v36;
}

uint64_t sub_1B646DE14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1B67D8B3C();
  v8(v6, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v16 = *(v9 + 48);
  v17 = *(v9 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v18 = *(v12 + 48);
  v19 = *(v12 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  return v15;
}

uint64_t sub_1B646E058()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1B67D8B3C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 1, 1, v23);
  v24(v4, 1, 1, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  return v22;
}

unint64_t sub_1B646E35C()
{
  result = qword_1EDB1E760;
  if (!qword_1EDB1E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E760);
  }

  return result;
}

unint64_t sub_1B646E3B4()
{
  result = qword_1EDB1E770;
  if (!qword_1EDB1E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E770);
  }

  return result;
}

unint64_t sub_1B646E40C()
{
  result = qword_1EDB1E740;
  if (!qword_1EDB1E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E740);
  }

  return result;
}

unint64_t sub_1B646E464()
{
  result = qword_1EDB1E758;
  if (!qword_1EDB1E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E758);
  }

  return result;
}

unint64_t sub_1B646E4BC()
{
  result = qword_1EDB1E7A8;
  if (!qword_1EDB1E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7A8);
  }

  return result;
}

unint64_t sub_1B646E514()
{
  result = qword_1EDB1E798;
  if (!qword_1EDB1E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E798);
  }

  return result;
}

unint64_t sub_1B646E56C()
{
  result = qword_1EDB1E778;
  if (!qword_1EDB1E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E778);
  }

  return result;
}

unint64_t sub_1B646E5C4()
{
  result = qword_1EDB1E790;
  if (!qword_1EDB1E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E790);
  }

  return result;
}

unint64_t sub_1B646E68C()
{
  result = qword_1EB951E30[0];
  if (!qword_1EB951E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB951E30);
  }

  return result;
}

unint64_t sub_1B646E6E4()
{
  result = qword_1EB951F40;
  if (!qword_1EB951F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB951F40);
  }

  return result;
}

unint64_t sub_1B646E73C()
{
  result = qword_1EB951F48[0];
  if (!qword_1EB951F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB951F48);
  }

  return result;
}

uint64_t sub_1B646E794()
{
  v1 = *v0;
  v2 = 0x444964656566;
  v3 = 0x746E756F4378616DLL;
  v4 = 0x646E657078457369;
  if (v1 != 3)
  {
    v4 = 0x6E4F646568636163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E615264656566;
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

uint64_t sub_1B646E83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B646F26C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B646E870(uint64_t a1)
{
  v2 = sub_1B646EC24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B646E8AC(uint64_t a1)
{
  v2 = sub_1B646EC24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1B646E8E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = Decodable<>.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id Decodable<>.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A648, &qword_1B6811B78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B646EC24();
  sub_1B67DA46C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v24 = 0;
    v3 = v11;
    sub_1B67DA19C();
    v12 = sub_1B67D963C();

    [v3 setFeedID_];

    sub_1B646EC78();
    v23 = 1;
    sub_1B646EFD0(&qword_1EB94A658);
    sub_1B67DA1CC();
    v13 = v19;
    [v3 setFeedRange_];

    v22 = 2;
    v14 = sub_1B67DA17C();
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    [v3 setMaxCount_];
    v21 = 3;
    [v3 setIsExpendable_];
    v20 = 4;
    [v3 setCachedOnly_];
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t sub_1B646EC24()
{
  result = qword_1EB951FD0[0];
  if (!qword_1EB951FD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB951FD0);
  }

  return result;
}

unint64_t sub_1B646EC78()
{
  result = qword_1EB94A650;
  if (!qword_1EB94A650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB94A650);
  }

  return result;
}

uint64_t Encodable<>.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A660, qword_1B6811B80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B646EC24();
  sub_1B67DA47C();
  v11 = [v3 feedID];
  sub_1B67D964C();

  v16 = 0;
  sub_1B67DA20C();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v13 = [v3 feedRange];
    v15 = v13;
    v14[15] = 1;
    sub_1B646EC78();
    sub_1B646EFD0(&qword_1EB94A668);
    sub_1B67DA24C();

    if ([v3 maxCount])
    {
      [v3 maxCount];
      v14[14] = 2;
      sub_1B67DA23C();
    }

    if ([v3 isExpendable])
    {
      [v3 isExpendable];
      v14[12] = 3;
      sub_1B67DA21C();
    }

    if ([v3 cachedOnly])
    {
      [v3 cachedOnly];
      v14[13] = 4;
      sub_1B67DA21C();
    }

    return (*(v6 + 8))(v9, v5);
  }
}

{
  v2 = v1;
  v4 = sub_1B67D877C();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A678, &unk_1B6811D08);
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v37 - v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B646F9FC();
  sub_1B67DA47C();
  v38 = v2;
  v18 = [v2 startDate];
  v37 = v7;
  if (v18)
  {
    v19 = v18;
    sub_1B67D874C();

    v21 = v40;
    v20 = v41;
    (*(v40 + 32))(v13, v7, v41);
    v22 = 0;
  }

  else
  {
    v22 = 1;
    v21 = v40;
    v20 = v41;
  }

  v23 = *(v21 + 56);
  v23(v13, v22, 1, v20);
  v46 = 0;
  sub_1B645B440();
  v24 = v20;
  v25 = v44;
  v26 = v42;
  sub_1B67DA24C();
  sub_1B646FA50(v13);
  if (v26)
  {
    return (*(v43 + 8))(v25, v14);
  }

  v42 = v14;
  v28 = v21;
  v29 = [v38 endDate];
  if (v29)
  {
    v30 = v37;
    v31 = v29;
    sub_1B67D874C();

    v32 = *(v28 + 32);
    v33 = v39;
    v32(v39, v30, v24);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v39;
  }

  v23(v33, v34, 1, v24);
  v45 = 1;
  v35 = v42;
  v36 = v44;
  sub_1B67DA24C();
  sub_1B646FA50(v33);
  return (*(v43 + 8))(v36, v35);
}

{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A688, &unk_1B6811E90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6470488();
  sub_1B67DA47C();
  [v3 maxOrder];
  v12[15] = 0;
  sub_1B67DA25C();
  if (!v2)
  {
    [v3 minOrder];
    v12[14] = 1;
    sub_1B67DA25C();
  }

  return (*(v6 + 8))(v9, v5);
}

{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A698, qword_1B6812010);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6470C08();
  sub_1B67DA47C();
  v11 = [v3 channelID];
  if (v11)
  {
    v12 = v11;
    sub_1B67D964C();

    v18[12] = 0;
    sub_1B67DA20C();
    if (v2)
    {
      goto LABEL_9;
    }
  }

  v13 = [v3 sectionID];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  sub_1B67D964C();

  v18[13] = 1;
  sub_1B67DA20C();
  if (v2)
  {
LABEL_9:
    (*(v6 + 8))(v9, v5);
  }

LABEL_7:
  v15 = [v3 topicID];
  if (v15)
  {
    v16 = v15;
    sub_1B67D964C();

    v18[14] = 2;
    sub_1B67DA20C();
    if (v2)
    {
      goto LABEL_9;
    }
  }

  if ([v3 flags])
  {
    [v3 flags];
    v18[15] = 3;
    sub_1B67DA22C();
  }

  return (*(v6 + 8))(v9, v5);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC28, &qword_1B6813BE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6496468();
  sub_1B67DA47C();
  sub_1B67DA22C();
  return (*(v3 + 8))(v6, v2);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B458, &qword_1B68158C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B7754();
  sub_1B67DA47C();
  sub_1B67DA25C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1B646EFD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B646EC78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}