uint64_t sub_1E590CE38(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutAction();
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

uint64_t sub_1E590CE9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActiveWorkoutPlanWorkout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E590CF10()
{
  sub_1E590CF78();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1E590CF78()
{
  if (!qword_1ECFFD518)
  {
    type metadata accessor for ActiveWorkoutPlanWorkout();
    v0 = sub_1E5A2BD84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECFFD518);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActiveWorkoutPlanWorkoutAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActiveWorkoutPlanWorkoutAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E590D174()
{
  result = qword_1ECFFD520;
  if (!qword_1ECFFD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD520);
  }

  return result;
}

unint64_t sub_1E590D1CC()
{
  result = qword_1ECFFD528;
  if (!qword_1ECFFD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD528);
  }

  return result;
}

unint64_t sub_1E590D224()
{
  result = qword_1ECFFD530;
  if (!qword_1ECFFD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD530);
  }

  return result;
}

unint64_t sub_1E590D27C()
{
  result = qword_1ECFFD538;
  if (!qword_1ECFFD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD538);
  }

  return result;
}

unint64_t sub_1E590D2D4()
{
  result = qword_1ECFFD540;
  if (!qword_1ECFFD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD540);
  }

  return result;
}

unint64_t sub_1E590D32C()
{
  result = qword_1ECFFD548;
  if (!qword_1ECFFD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD548);
  }

  return result;
}

unint64_t sub_1E590D384()
{
  result = qword_1ECFFD550;
  if (!qword_1ECFFD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD550);
  }

  return result;
}

unint64_t sub_1E590D3DC()
{
  result = qword_1ECFFD558;
  if (!qword_1ECFFD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD558);
  }

  return result;
}

unint64_t sub_1E590D434()
{
  result = qword_1ECFFD560;
  if (!qword_1ECFFD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD560);
  }

  return result;
}

unint64_t sub_1E590D48C()
{
  result = qword_1ECFFD568;
  if (!qword_1ECFFD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD568);
  }

  return result;
}

unint64_t sub_1E590D4E4()
{
  result = qword_1ECFFD570;
  if (!qword_1ECFFD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD570);
  }

  return result;
}

unint64_t sub_1E590D53C()
{
  result = qword_1ECFFD578;
  if (!qword_1ECFFD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD578);
  }

  return result;
}

unint64_t sub_1E590D594()
{
  result = qword_1ECFFD580;
  if (!qword_1ECFFD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD580);
  }

  return result;
}

unint64_t sub_1E590D5EC()
{
  result = qword_1ECFFD588;
  if (!qword_1ECFFD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD588);
  }

  return result;
}

unint64_t sub_1E590D644()
{
  result = qword_1ECFFD590;
  if (!qword_1ECFFD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD590);
  }

  return result;
}

uint64_t sub_1E590D698(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F576863746566 && a2 == 0xEC00000074756F6BLL;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5A46590 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001E5A465B0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

unint64_t sub_1E590D870()
{
  result = qword_1ECFFD598;
  if (!qword_1ECFFD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD598);
  }

  return result;
}

unint64_t PersonalizedWorkoutPlanCandidateTreatment.dictionary()()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5A0, &qword_1E5A359D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A303B0;
  *(inited + 32) = 0x644961657261;
  *(inited + 40) = 0xE600000000000000;

  sub_1E5A2BE14();
  *(inited + 88) = 0x74656B637562;
  *(inited + 96) = 0xE600000000000000;
  sub_1E5A2BE14();
  *(inited + 144) = 0x6E656D7461657274;
  *(inited + 152) = 0xEB00000000644974;
  sub_1E5A2BE14();
  v7 = sub_1E590E504(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5A8, &qword_1E5A359E0);
  swift_arrayDestroy();
  return v7;
}

unint64_t Array<A>.metrics()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v52 = MEMORY[0x1E69E7CC0];
  sub_1E590DE88(0, v1, 0);
  v2 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5B0, &qword_1E5A359E8);
  for (i = (a1 + 64); ; i += 5)
  {
    v43 = v2;
    v5 = *(i - 4);
    v6 = *(i - 3);
    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v49[0] = 0x644961657261;
    v49[1] = 0xE600000000000000;
    v44 = v5;
    v45 = v6;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1E5A2BE14();
    v50[0] = 0x74656B637562;
    v50[1] = 0xE600000000000000;
    v44 = v7;
    sub_1E5A2BE14();
    v51[0] = 0x6E656D7461657274;
    v51[1] = 0xEB00000000644974;
    v44 = v8;
    v45 = v9;
    sub_1E5A2BE14();
    v10 = sub_1E5A2BF14();

    sub_1E58BABA0(v49, &v44, &qword_1ECFFD5A8, &qword_1E5A359E0);
    v11 = v44;
    v12 = v45;
    result = sub_1E58EF508(v44, v45);
    if (v14)
    {
      break;
    }

    v15 = v10 + 8;
    *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v16 = (v10[6] + 16 * result);
    *v16 = v11;
    v16[1] = v12;
    v17 = v10[7] + 40 * result;
    v18 = v46;
    v19 = v47;
    *(v17 + 32) = v48;
    *v17 = v18;
    *(v17 + 16) = v19;
    v20 = v10[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_14;
    }

    v10[2] = v22;
    sub_1E58BABA0(v50, &v44, &qword_1ECFFD5A8, &qword_1E5A359E0);
    v23 = v44;
    v24 = v45;
    result = sub_1E58EF508(v44, v45);
    if (v25)
    {
      break;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v26 = (v10[6] + 16 * result);
    *v26 = v23;
    v26[1] = v24;
    v27 = v10[7] + 40 * result;
    v28 = v46;
    v29 = v47;
    *(v27 + 32) = v48;
    *v27 = v28;
    *(v27 + 16) = v29;
    v30 = v10[2];
    v21 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v21)
    {
      goto LABEL_14;
    }

    v10[2] = v31;
    sub_1E58BABA0(v51, &v44, &qword_1ECFFD5A8, &qword_1E5A359E0);
    v32 = v44;
    v33 = v45;
    result = sub_1E58EF508(v44, v45);
    if (v34)
    {
      break;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v35 = (v10[6] + 16 * result);
    *v35 = v32;
    v35[1] = v33;
    v36 = v10[7] + 40 * result;
    v37 = v46;
    v38 = v47;
    *(v36 + 32) = v48;
    *v36 = v37;
    *(v36 + 16) = v38;
    v39 = v10[2];
    v21 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v21)
    {
      goto LABEL_14;
    }

    v10[2] = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5A8, &qword_1E5A359E0);
    swift_arrayDestroy();

    v2 = v43;
    v52 = v43;
    v42 = *(v43 + 16);
    v41 = *(v43 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_1E590DE88((v41 > 1), v42 + 1, 1);
      v2 = v52;
    }

    *(v2 + 16) = v42 + 1;
    *(v2 + 8 * v42 + 32) = v10;
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void *sub_1E590DE08(void *a1, int64_t a2, char a3)
{
  result = sub_1E5A212A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E590DE28(char *a1, int64_t a2, char a3)
{
  result = sub_1E5A21540(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E590DE48(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5A2165C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E590DE68(char *a1, int64_t a2, char a3)
{
  result = sub_1E5A21834(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E590DE88(void *a1, int64_t a2, char a3)
{
  result = sub_1E5A21938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E590DEA8(char *a1, int64_t a2, char a3)
{
  result = sub_1E5A21CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E590DEC8(char *a1, int64_t a2, char a3)
{
  result = sub_1E5A212C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E590DEE8(char *a1, int64_t a2, char a3)
{
  result = sub_1E5A21DC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E590DF08(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5A21ED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E590DF28(char *a1, int64_t a2, char a3)
{
  result = sub_1E5A223DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1E590DF48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5B8, &unk_1E5A44C50);
    v3 = sub_1E5A2BF14();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E58BABA0(v4, &v13, &qword_1ECFFB560, &unk_1E5A30500);
      v5 = v13;
      v6 = v14;
      result = sub_1E58EF508(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E590E63C(&v15, (v3[7] + 32 * result));
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

void *sub_1E590E078(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
  v3 = sub_1E5A2BF14();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1E58EF8CC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1E58EF8CC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E590E188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE60, &qword_1E5A340F0);
  v3 = sub_1E5A2BF14();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1E58EF8CC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1E58EF8CC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E590E29C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE68, &qword_1E5A340F8);
  v3 = sub_1E5A2BF14();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = sub_1E58EF458(v4, v5, v6, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v8;
  v13 = a1 + 13;
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = (v3[6] + 32 * v11);
    *v14 = v4;
    v14[1] = v5;
    v14[2] = v6;
    v14[3] = v7;
    *(v3[7] + 8 * v11) = result;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 4);
    v5 = *(v13 - 3);
    v6 = *(v13 - 2);
    v7 = *(v13 - 1);
    v19 = *v13;

    v11 = sub_1E58EF458(v4, v5, v6, v7);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E590E3DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE70, &qword_1E5A34100);
    v3 = sub_1E5A2BF14();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = sub_1E58EF508(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v9;
      v14[3] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_1E590E504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5B0, &qword_1E5A359E8);
    v3 = sub_1E5A2BF14();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E58BABA0(v4, &v16, &qword_1ECFFD5A8, &qword_1E5A359E0);
      v5 = v16;
      v6 = v17;
      result = sub_1E58EF508(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

_OWORD *sub_1E590E63C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1E590E64C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE78, &qword_1E5A34108);
  v3 = sub_1E5A2BF14();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_1E58BABA0(&v24, v23, &qword_1ECFFD5C0, &qword_1E5A359F0);
  result = sub_1E58EF508(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_1E58BABA0(&v24, v23, &qword_1ECFFD5C0, &qword_1E5A359F0);
    result = sub_1E58EF508(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

double static LinearGradient.pinkGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4A0 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = sub_1E5A2B744();
  *(v2 + 40) = v3;
  if (qword_1ECFFB498 != -1)
  {
    swift_once();
  }

  *(v2 + 48) = sub_1E5A2B744();
  *(v2 + 56) = v4;
  if (qword_1ECFFB4A8 != -1)
  {
    swift_once();
  }

  *(v2 + 64) = sub_1E5A2B744();
  *(v2 + 72) = v5;
  sub_1E5A2B754();
  sub_1E5A2A614();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

double static LinearGradient.blueGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4B8 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = sub_1E5A2B744();
  *(v2 + 40) = v3;
  if (qword_1ECFFB4B0 != -1)
  {
    swift_once();
  }

  *(v2 + 48) = sub_1E5A2B744();
  *(v2 + 56) = v4;
  if (qword_1ECFFB490 != -1)
  {
    swift_once();
  }

  *(v2 + 64) = sub_1E5A2B744();
  *(v2 + 72) = v5;
  sub_1E5A2B754();
  sub_1E5A2A614();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

double static LinearGradient.goldGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4C8 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = sub_1E5A2B744();
  *(v2 + 40) = v3;
  if (qword_1ECFFB4C0 != -1)
  {
    swift_once();
  }

  *(v2 + 48) = sub_1E5A2B744();
  *(v2 + 56) = v4;
  if (qword_1ECFFB4D0 != -1)
  {
    swift_once();
  }

  *(v2 + 64) = sub_1E5A2B744();
  *(v2 + 72) = v5;
  sub_1E5A2B754();
  sub_1E5A2A614();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

double static LinearGradient.backgroundGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4D8 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = sub_1E5A2B744();
  *(v2 + 40) = v3;
  if (qword_1ECFFB4E0 != -1)
  {
    swift_once();
  }

  *(v2 + 48) = sub_1E5A2B744();
  *(v2 + 56) = v4;
  sub_1E5A2B754();
  sub_1E5A2A614();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

double static LinearGradient.darkScrimGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4E8 != -1)
  {
    swift_once();
  }

  sub_1E5A2B434();
  *(v2 + 32) = sub_1E5A2B744();
  *(v2 + 40) = v3;
  sub_1E5A2B434();
  *(v2 + 48) = sub_1E5A2B744();
  *(v2 + 56) = v4;
  sub_1E5A2B434();
  *(v2 + 64) = sub_1E5A2B744();
  *(v2 + 72) = v5;
  sub_1E5A2B754();
  sub_1E5A2A614();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

double static LinearGradient.lightScrimGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4E8 != -1)
  {
    swift_once();
  }

  sub_1E5A2B434();
  *(v2 + 32) = sub_1E5A2B744();
  *(v2 + 40) = v3;
  sub_1E5A2B434();
  *(v2 + 48) = sub_1E5A2B744();
  *(v2 + 56) = v4;
  sub_1E5A2B754();
  sub_1E5A2A614();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_1E590F070(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_1E5A2BAF4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1E5A29EB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2BB14();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  if (a3)
  {
    v36 = a2;
    if (a3 == 1)
    {
      v15 = 1 << *(a1 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      a2 = v16 & *(a1 + 64);
      v17 = (v15 + 63) >> 6;

      v18 = 0;
      v19 = 0;
      while (a2)
      {
        v20 = v18;
LABEL_12:
        v21 = __clz(__rbit64(a2));
        a2 &= a2 - 1;
        v22 = *(*(*(a1 + 56) + ((v20 << 11) | (32 * v21)) + 24) + 16);
        v23 = __OFADD__(v19, v22);
        v19 += v22;
        if (v23)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v17)
        {
          goto LABEL_30;
        }

        a2 = *(a1 + 64 + 8 * v20);
        ++v18;
        if (a2)
        {
          v18 = v20;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }

    else
    {
      v25 = 1 << *(a1 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & *(a1 + 64);
      v28 = (v25 + 63) >> 6;

      v29 = 0;
      v19 = 0;
      do
      {
        if (!v27)
        {
          while (1)
          {
            v30 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              goto LABEL_34;
            }

            if (v30 >= v28)
            {
              goto LABEL_30;
            }

            v27 = *(a1 + 64 + 8 * v30);
            ++v29;
            if (v27)
            {
              v29 = v30;
              goto LABEL_27;
            }
          }
        }

        v30 = v29;
LABEL_27:
        v31 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v32 = *(*(*(a1 + 56) + ((v30 << 11) | (32 * v31)) + 16) + 16);
        v23 = __OFADD__(v19, v32);
        v19 += v32;
      }

      while (!v23);
      __break(1u);
LABEL_30:

      sub_1E5A2BAE4();
      sub_1E5A2BAD4();
      v37 = v19;
      sub_1E5A2BAB4();
      sub_1E5A2BAD4();
      sub_1E5A2BB04();
      if (qword_1EE2CFA28 != -1)
      {
        goto LABEL_35;
      }
    }

    v24 = qword_1EE2D33E0;
    (*(v9 + 16))(v12, v36, v8);
  }

  else
  {
LABEL_15:
    sub_1E5A2BA84();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v24 = qword_1EE2D33E0;
    (*(v9 + 16))(v12, a2, v8);
  }

  v33 = v24;
  return sub_1E5A2BB64();
}

uint64_t WorkoutPlansLayout.init(contentMargins:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5A2A2F4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t WorkoutPlansLayout.contentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A2A2F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E590F5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5A2C114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E590F634(uint64_t a1)
{
  v2 = sub_1E590F810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590F670(uint64_t a1)
{
  v2 = sub_1E590F810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlansLayout.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5D0, &qword_1E5A35A00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E590F810();
  sub_1E5A2C224();
  sub_1E5A2A2F4();
  sub_1E590FB1C(&qword_1ECFFD5E0);
  sub_1E5A2C0B4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E590F810()
{
  result = qword_1ECFFD5D8;
  if (!qword_1ECFFD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD5D8);
  }

  return result;
}

uint64_t WorkoutPlansLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1E5A2A2F4();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5E8, &qword_1E5A35A08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for WorkoutPlansLayout();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E590F810();
  v16 = v23;
  sub_1E5A2C214();
  if (!v16)
  {
    v17 = v21;
    sub_1E590FB1C(&qword_1ECFFD5F0);
    sub_1E5A2BFE4();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_1E58FD628(v14, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for WorkoutPlansLayout()
{
  result = qword_1ECFFD5F8;
  if (!qword_1ECFFD5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E590FB1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E5A2A2F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E590FB78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5D0, &qword_1E5A35A00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E590F810();
  sub_1E5A2C224();
  sub_1E5A2A2F4();
  sub_1E590FB1C(&qword_1ECFFD5E0);
  sub_1E5A2C0B4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E590FD08()
{
  result = sub_1E5A2A2F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E590FD88()
{
  result = qword_1ECFFD608;
  if (!qword_1ECFFD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD608);
  }

  return result;
}

unint64_t sub_1E590FDE0()
{
  result = qword_1ECFFD610;
  if (!qword_1ECFFD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD610);
  }

  return result;
}

unint64_t sub_1E590FE38()
{
  result = qword_1ECFFD618;
  if (!qword_1ECFFD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD618);
  }

  return result;
}

uint64_t sub_1E590FE8C()
{
  sub_1E5A2AB24();
  sub_1E591B4FC(&qword_1EE2CFAF0, MEMORY[0x1E697FCB0]);
  return sub_1E5A2C264();
}

uint64_t TrainerPreferenceView.init(store:artworkViewBuilder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  result = sub_1E5A2A654();
  *a4 = result;
  a4[1] = v9;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

uint64_t sub_1E590FFB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v6 = *(v15 + 16) + 1;
  v7 = (v15 + 48);
  while (--v6)
  {
    v8 = *(v7 - 2);
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[5];
    v12 = v7[6];
    if (*(v7 - 1) != a1 || *v7 != a2)
    {
      v7 += 9;
      if ((sub_1E5A2C114() & 1) == 0)
      {
        continue;
      }
    }

    return v9;
  }

  return 0;
}

__n128 sub_1E59100FC@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v8 = *(v21 + 16);
  if (v8)
  {
    v9 = 32;
    while (1)
    {
      v16 = *(v21 + v9);
      v11 = *(v21 + v9 + 32);
      v10 = *(v21 + v9 + 48);
      v12 = *(v21 + v9 + 16);
      v20 = *(v21 + v9 + 64);
      v18 = v11;
      v19 = v10;
      v17 = v12;
      if (__PAIR128__(v12, *(&v16 + 1)) == __PAIR128__(a2, a1) || (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v9 += 72;
      if (!--v8)
      {
        goto LABEL_6;
      }
    }

    sub_1E591B3E0(&v16, v15);

    v14 = v19;
    *(a3 + 32) = v18;
    *(a3 + 48) = v14;
    *(a3 + 64) = v20;
    result = v17;
    *a3 = v16;
    *(a3 + 16) = result;
  }

  else
  {
LABEL_6:

    *(a3 + 64) = 0;
    result.n128_u64[0] = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E5910224(uint64_t a1, uint64_t a2)
{
  v28 = *v2;
  v27 = *(v2 + 1);
  v26 = v2[3];
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v10;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (*(a1 + 48) + ((v10 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    *v33 = v28;
    *&v33[8] = v27;
    *&v33[24] = v26;
    type metadata accessor for TrainerPreferenceView();
    sub_1E59100FC(v14, v15, &v37);

    if (v37)
    {
      v34 = v39;
      v35 = v40;
      v36 = v41;
      *v33 = v37;
      *&v33[16] = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1E58E6CF4(0, *(v25 + 2) + 1, 1, v25);
      }

      v19 = *(v25 + 2);
      v18 = *(v25 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v23 = sub_1E58E6CF4((v18 > 1), v19 + 1, 1, v25);
        v20 = v19 + 1;
        v25 = v23;
      }

      v32 = v36;
      v30 = v34;
      v31 = v35;
      v21 = *v33;
      v29 = *&v33[16];
      *(v25 + 2) = v20;
      v22 = &v25[72 * v19];
      *(v22 + 2) = v21;
      *(v22 + 12) = v32;
      *(v22 + 4) = v30;
      *(v22 + 5) = v31;
      *(v22 + 3) = v29;
    }

    else
    {
      v34 = v39;
      v35 = v40;
      v36 = v41;
      *v33 = v37;
      *&v33[16] = v38;
      sub_1E58BAD14(v33, &qword_1ECFFD7D8, &qword_1E5A35E50);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      *&v37 = v25;

      sub_1E59199C8(&v37, sub_1E5A226D0, &type metadata for WorkoutPlanModality, sub_1E5919D7C, sub_1E5919B74);

      return v37;
    }

    v8 = *(v5 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  MEMORY[0x1E69331F0](a2);

  __break(1u);
  return result;
}

uint64_t sub_1E5910500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v28[0] = v24;
  v28[1] = v25;
  v28[2] = v26;
  v28[3] = v27;

  result = sub_1E58F011C(v28);
  v6 = 0;
  v7 = 1 << *(*(&v27 + 1) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*(&v27 + 1) + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_9:
    v12 = (*(*(&v27 + 1) + 48) + 56 * (__clz(__rbit64(v9)) | (v6 << 6)));
    v13 = *v12;
    v14 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    v17 = v12[4];
    v21 = v12[5];
    v18 = v12[6];
    if (v14 == a1 && v16 == a2)
    {
      v14 = a1;
LABEL_17:

      *a3 = v13;
      a3[1] = v14;
      a3[2] = v16;
      a3[3] = v15;
      a3[4] = v17;
      a3[5] = v21;
      a3[6] = v18;
      return result;
    }

    v9 &= v9 - 1;
    result = sub_1E5A2C114();
    if (result)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      a3[6] = 0;
      *(a3 + 1) = 0u;
      *(a3 + 2) = 0u;
      *a3 = 0u;
      return result;
    }

    v9 = *(*(&v27 + 1) + 56 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E59106C8(uint64_t a1, uint64_t a2)
{
  v40 = *v2;
  v39 = *(v2 + 8);
  v5 = *(v2 + 24);
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (*(a1 + 48) + ((v11 << 10) | (16 * v13)));
    v15 = *v14;
    v16 = v14[1];

    v17 = *(a2 + 16);
    v18 = *(a2 + 24);
    v41[7] = v40;
    v42 = v39;
    v43 = v5;
    type metadata accessor for TrainerPreferenceView();
    sub_1E5910500(v15, v16, v41);

    v19 = v41[0];
    if (v41[0])
    {
      v36 = v41[1];
      v37 = v41[2];
      v34 = v41[3];
      v35 = v41[4];
      v20 = v41[5];
      v33 = v41[6];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1E58E6E1C(0, *(v38 + 2) + 1, 1, v38);
      }

      v21 = v37;
      v23 = *(v38 + 2);
      v22 = *(v38 + 3);
      v24 = v23 + 1;
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      if (v23 >= v22 >> 1)
      {
        v31 = sub_1E58E6E1C((v22 > 1), v23 + 1, 1, v38);
        v24 = v23 + 1;
        v25 = v33;
        v28 = v36;
        v21 = v37;
        v26 = v34;
        v27 = v35;
        v29 = v20;
        v38 = v31;
      }

      else
      {
        v29 = v20;
      }

      *(v38 + 2) = v24;
      v30 = &v38[56 * v23];
      *(v30 + 4) = v19;
      *(v30 + 5) = v28;
      *(v30 + 6) = v21;
      *(v30 + 7) = v26;
      *(v30 + 8) = v27;
      *(v30 + 9) = v29;
      *(v30 + 10) = v25;
    }

    else
    {
      sub_1E591B72C(0);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      v41[0] = v38;

      sub_1E59199C8(v41, sub_1E5A226E4, &type metadata for WorkoutPlanTrainer, sub_1E591A3BC, sub_1E5919C7C);

      return v41[0];
    }

    v9 = *(v6 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  MEMORY[0x1E69331F0](a1);

  __break(1u);
  return result;
}

uint64_t sub_1E5910968(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(v2 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  if (*(v13 + 16) && (v8 = sub_1E58EF508(v5, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v13 + 56) + 32 * v8 + 24);

    v11 = sub_1E59E8F3C(v3, v4, v10);
  }

  else
  {

    v11 = 0;
  }

  return v11 & 1;
}

uint64_t TrainerPreferenceView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v74 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  v3 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v69 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD620, &qword_1E5A35BC8);
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD628, &qword_1E5A35BD0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  v83 = *(a1 + 16);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v76 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x1E697E5D8];
  v111 = WitnessTable;
  v112 = MEMORY[0x1E697E5D8];
  v7 = swift_getWitnessTable();
  v8 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
  v109 = v7;
  v110 = v8;
  v9 = swift_getWitnessTable();
  v10 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0);
  v107 = v9;
  v108 = v10;
  swift_getWitnessTable();
  v11 = sub_1E5A2B594();
  v12 = swift_getWitnessTable();
  v102 = v11;
  v103 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = v11;
  v103 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_1E58EFCE8();
  v102 = OpaqueTypeMetadata2;
  v103 = &type metadata for WorkoutPlanCreationButtonStyle;
  v104 = OpaqueTypeConformance2;
  v105 = v15;
  swift_getOpaqueTypeMetadata2();
  v16 = sub_1E5A2A6C4();
  v17 = sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0);
  v102 = v75;
  v103 = MEMORY[0x1E69E6158];
  v104 = v16;
  v105 = v17;
  v106 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  v102 = OpaqueTypeMetadata2;
  v103 = &type metadata for WorkoutPlanCreationButtonStyle;
  v104 = OpaqueTypeConformance2;
  v105 = v15;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v6;
  v99 = swift_getWitnessTable();
  swift_getWitnessTable();
  v18 = sub_1E5A2B834();
  v19 = swift_getWitnessTable();
  v102 = v18;
  v103 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  v102 = v18;
  v103 = v19;
  v98 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v20 = sub_1E5A2A4B4();
  v21 = swift_getWitnessTable();
  v102 = v20;
  v103 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = sub_1E5A2AD04();
  v102 = v20;
  v103 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v102 = v22;
  v103 = v23;
  v25 = MEMORY[0x1E697CC08];
  v104 = v24;
  v105 = MEMORY[0x1E697CC08];
  v26 = swift_getOpaqueTypeMetadata2();
  v102 = v22;
  v103 = v23;
  v104 = v24;
  v105 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v102 = v26;
  v103 = v27;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD668, &qword_1E5A35C00);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v28 = sub_1E5A2B604();
  v29 = sub_1E58CD164(&qword_1ECFFD670, &qword_1ECFFD628, &qword_1E5A35BD0);
  v102 = v78;
  v103 = MEMORY[0x1E69E6158];
  v104 = v28;
  v105 = v29;
  v106 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2BD84();
  sub_1E5A2B734();
  v30 = sub_1E5911818();
  v97 = swift_getWitnessTable();
  v96 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v93 = v30;
  v94 = v31;
  v95 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  v32 = sub_1E5A2B604();
  v73 = *(v32 - 8);
  v33 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v69 - v34;
  v36 = swift_getWitnessTable();
  v37 = sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
  v102 = v32;
  v103 = v84;
  v70 = v36;
  v104 = v36;
  v105 = v37;
  v72 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v77 = *(v38 - 8);
  v39 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v69 - v40;
  v78 = v42;
  v43 = sub_1E5A2A6C4();
  v79 = *(v43 - 8);
  v44 = *(v79 + 64);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v75 = &v69 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v76 = &v69 - v47;
  v48 = *v81;
  v49 = v81[1];
  v51 = v81[2];
  v50 = v81[3];
  sub_1E5A2AA34();
  v52 = *(v80 + 24);
  v85 = v83;
  v69 = v52;
  v86 = v52;
  v80 = v48;
  v87 = v48;
  v88 = v49;
  v71 = v51;
  v89 = v51;
  v81 = v50;
  v90 = v50;
  sub_1E5A2B5F4();
  v53 = *MEMORY[0x1E697E728];
  v54 = sub_1E5A2A684();
  v55 = v82;
  (*(*(v54 - 8) + 104))(v82, v53, v54);
  sub_1E591B4FC(&qword_1ECFFBF40, MEMORY[0x1E697E730]);
  result = sub_1E5A2BA74();
  if (result)
  {
    v57 = v84;
    v58 = v70;
    v59 = v72;
    sub_1E5A2B164();
    sub_1E58BAD14(v55, &qword_1ECFFCE80, &qword_1E5A35BC0);
    (*(v73 + 8))(v35, v32);
    v60 = swift_allocObject();
    v61 = v69;
    v60[2] = v83;
    v60[3] = v61;
    v60[4] = v80;
    v60[5] = v49;
    v62 = v81;
    v60[6] = v71;
    v60[7] = v62;

    v102 = v32;
    v103 = v57;
    v104 = v58;
    v105 = v59;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = v75;
    v65 = v78;
    sub_1E5A2B364();

    (*(v77 + 8))(v41, v65);
    v91 = v63;
    v92 = MEMORY[0x1E69805D0];
    v66 = swift_getWitnessTable();
    v67 = v76;
    sub_1E58B41DC(v64, v43, v66);
    v68 = *(v79 + 8);
    v68(v64, v43);
    sub_1E58B41DC(v67, v43, v66);
    return (v68)(v67, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E5911818()
{
  result = qword_1ECFFD678;
  if (!qword_1ECFFD678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD620, &qword_1E5A35BC8);
    sub_1E58CD164(&qword_1ECFFD680, qword_1ECFFD688, &qword_1E5A35C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD678);
  }

  return result;
}

uint64_t sub_1E59118D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v28 = a3;
  v24 = a5;
  v25 = a1;
  v29 = a4;
  v30 = a7;
  v26 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD620, &qword_1E5A35BC8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD628, &qword_1E5A35BD0);
  v22[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v22[1] = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  v33[27] = swift_getWitnessTable();
  v33[28] = MEMORY[0x1E697E5D8];
  v33[25] = swift_getWitnessTable();
  v33[26] = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
  v33[23] = swift_getWitnessTable();
  v33[24] = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0);
  swift_getWitnessTable();
  sub_1E5A2B594();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E58EFCE8();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2B6F4();
  v33[16] = swift_getOpaqueTypeConformance2();
  v33[17] = MEMORY[0x1E697E5D8];
  v33[15] = swift_getWitnessTable();
  v22[0] = MEMORY[0x1E69819D0];
  swift_getWitnessTable();
  sub_1E5A2B834();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  v33[14] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AD04();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD668, &qword_1E5A35C00);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v7 = sub_1E5A2B604();
  v8 = sub_1E58CD164(&qword_1ECFFD670, &qword_1ECFFD628, &qword_1E5A35BD0);
  v33[18] = v23;
  v33[19] = MEMORY[0x1E69E6158];
  v33[20] = v7;
  v33[21] = v8;
  v33[22] = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2BD84();
  v9 = sub_1E5A2B734();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v22 - v15;
  v33[2] = v24;
  v33[3] = v27;
  v33[4] = v25;
  v33[5] = v26;
  v33[6] = v28;
  v33[7] = v29;
  v32[2] = v24;
  v32[3] = v27;
  v32[4] = v25;
  v32[5] = v26;
  v32[6] = v28;
  v32[7] = v29;
  v17 = sub_1E5911818();
  v33[13] = swift_getWitnessTable();
  v33[12] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_1E59B66BC(sub_1E591AF48, v33, sub_1E591AF60, v32, v31);
  v33[9] = v17;
  v33[10] = WitnessTable;
  v33[11] = MEMORY[0x1E6981E60];
  v19 = swift_getWitnessTable();
  sub_1E58B41DC(v14, v9, v19);
  v20 = *(v10 + 8);
  v20(v14, v9);
  sub_1E58B41DC(v16, v9, v19);
  return (v20)(v16, v9);
}

uint64_t sub_1E5912204@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a6;
  v54 = a4;
  v53 = a3;
  v59 = a2;
  v50 = a1;
  v60 = a7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD628, &qword_1E5A35BD0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  v51 = a5;
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v56 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1E697E5D8];
  v79 = WitnessTable;
  v80 = MEMORY[0x1E697E5D8];
  v77 = swift_getWitnessTable();
  v78 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
  v75 = swift_getWitnessTable();
  v76 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0);
  swift_getWitnessTable();
  sub_1E5A2B594();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E58EFCE8();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2B6F4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = v9;
  v67 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2B834();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  v66 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AD04();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD668, &qword_1E5A35C00);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v10 = sub_1E5A2B604();
  v11 = sub_1E58CD164(&qword_1ECFFD670, &qword_1ECFFD628, &qword_1E5A35BD0);
  v70 = v58;
  v71 = MEMORY[0x1E69E6158];
  v72 = v10;
  v73 = v11;
  v74 = MEMORY[0x1E69E6168];
  v12 = sub_1E5A2B6F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v46 - v17;
  v18 = sub_1E5A2BD84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v58 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  swift_getKeyPath();
  v25 = v59;

  sub_1E5A2B934();

  v26 = v70;
  if (v70)
  {
    v48 = v19;
    v27 = v51;
    v55 = v10;
    v28 = v52;
    v29 = type metadata accessor for TrainerPreferenceView();
    v62 = v26;
    v30 = WorkoutPlanSchedule.modalityIdentifiers()();
    v49 = v18;
    v31 = v30;

    v47 = v24;
    v32 = v50;
    v70 = v50;
    v71 = v25;
    v46 = v13;
    v33 = v53;
    v34 = v54;
    v72 = v53;
    v73 = v54;
    sub_1E5910224(v31, v29);
    v35 = swift_allocObject();
    v35[2] = v27;
    v35[3] = v28;
    v19 = v48;
    v35[4] = v32;
    v35[5] = v25;
    v24 = v47;
    v35[6] = v33;
    v35[7] = v34;
    v35[8] = v31;

    v36 = swift_getWitnessTable();
    sub_1E591AFC4();
    sub_1E591B018();
    v37 = v57;
    sub_1E5A2B6D4();
    v61 = v36;
    v38 = swift_getWitnessTable();
    v39 = v56;
    sub_1E58B41DC(v37, v12, v38);
    v40 = v46;
    v41 = *(v46 + 8);
    v41(v37, v12);
    sub_1E58B41DC(v39, v12, v38);
    v41(v39, v12);
    v18 = v49;
    v42 = v58;
    (*(v40 + 32))(v58, v37, v12);
    (*(v40 + 56))(v42, 0, 1, v12);
  }

  else
  {
    v42 = v58;
    (*(v13 + 56))(v58, 1, 1, v12);
    v65 = swift_getWitnessTable();
    swift_getWitnessTable();
  }

  sub_1E598D20C(v42, v24);
  v43 = *(v19 + 8);
  v43(v42, v18);
  v64 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  sub_1E58B41DC(v24, v18, v44);
  return (v43)(v24, v18);
}

uint64_t sub_1E5912E30@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v25 = a8;
  v31 = a6;
  v32 = a7;
  v29 = a1;
  v30 = a5;
  v27 = a3;
  v28 = a4;
  v33 = a9;
  v26 = a10;
  v24[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v24[1] = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v52 = MEMORY[0x1E697E5D8];
  v49 = swift_getWitnessTable();
  v50 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
  v47 = swift_getWitnessTable();
  v48 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0);
  swift_getWitnessTable();
  sub_1E5A2B594();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E58EFCE8();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0);
  *&v55 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = MEMORY[0x1E697E5D8];
  v44 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2B834();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  v43 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AD04();
  *&v54 = swift_getOpaqueTypeConformance2();
  *(&v54 + 1) = MEMORY[0x1E697CC08];
  *&v53 = swift_getOpaqueTypeMetadata2();
  *(&v53 + 1) = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD668, &qword_1E5A35C00);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v11 = sub_1E5A2B604();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v24 - v17;
  v19 = a2[3];
  v55 = a2[2];
  v56 = v19;
  v57 = *(a2 + 8);
  v20 = a2[1];
  v53 = *a2;
  v54 = v20;
  sub_1E5A2AA34();
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v38 = v30;
  v39 = v31;
  v40 = &v53;
  v41 = v29;
  v42 = v32;
  sub_1E5A2B5F4();
  v21 = swift_getWitnessTable();
  sub_1E58B41DC(v16, v11, v21);
  v22 = *(v12 + 8);
  v22(v16, v11);
  sub_1E58B41DC(v18, v11, v21);
  return (v22)(v18, v11);
}

uint64_t sub_1E591364C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v66 = a8;
  v74 = a7;
  v75 = a6;
  v71 = a4;
  v72 = a5;
  v69 = a2;
  v70 = a3;
  v68 = a1;
  v79 = a9;
  v67 = a10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD740, &unk_1E5A35D60);
  v76 = *(v73 - 8);
  v10 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v63 = &v63 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD668, &qword_1E5A35C00);
  v12 = *(*(v77 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v77);
  v78 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v63 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v94 = MEMORY[0x1E697E5D8];
  v16 = swift_getWitnessTable();
  v17 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
  v91 = v16;
  v92 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0);
  v89 = v18;
  v90 = v19;
  swift_getWitnessTable();
  v20 = sub_1E5A2B594();
  v21 = swift_getWitnessTable();
  v84 = v20;
  v85 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = v20;
  v85 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_1E58EFCE8();
  v84 = OpaqueTypeMetadata2;
  v85 = &type metadata for WorkoutPlanCreationButtonStyle;
  v86 = OpaqueTypeConformance2;
  v87 = v24;
  swift_getOpaqueTypeMetadata2();
  v25 = sub_1E5A2A6C4();
  v26 = sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0);
  v84 = v64;
  v85 = MEMORY[0x1E69E6158];
  v86 = v25;
  v87 = v26;
  v88 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  v84 = OpaqueTypeMetadata2;
  v85 = &type metadata for WorkoutPlanCreationButtonStyle;
  v86 = OpaqueTypeConformance2;
  v87 = v24;
  v83[7] = swift_getOpaqueTypeConformance2();
  v83[8] = MEMORY[0x1E697E5D8];
  v83[6] = swift_getWitnessTable();
  swift_getWitnessTable();
  v27 = sub_1E5A2B834();
  v28 = swift_getWitnessTable();
  v84 = v27;
  v85 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  v84 = v27;
  v85 = v28;
  v83[5] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v29 = sub_1E5A2A4B4();
  v30 = swift_getWitnessTable();
  v84 = v29;
  v85 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = sub_1E5A2AD04();
  v84 = v29;
  v85 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v84 = v31;
  v85 = v32;
  v34 = MEMORY[0x1E697CC08];
  v86 = v33;
  v87 = MEMORY[0x1E697CC08];
  v35 = swift_getOpaqueTypeMetadata2();
  v84 = v31;
  v85 = v32;
  v86 = v33;
  v87 = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v84 = v35;
  v85 = v36;
  swift_getOpaqueTypeMetadata2();
  v37 = v65;
  v38 = sub_1E5A2B734();
  v64 = *(v38 - 8);
  v39 = *(v64 + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v63 - v43;
  v82[2] = v66;
  v82[3] = v67;
  v82[4] = v68;
  v82[5] = v69;
  v82[6] = v70;
  v82[7] = v71;
  v82[8] = v72;
  v81[2] = v66;
  v81[3] = v67;
  v81[4] = v72;
  v81[5] = v68;
  v81[6] = v69;
  v81[7] = v70;
  v81[8] = v71;
  v45 = sub_1E591B0D0();
  v84 = v35;
  v85 = v36;
  v46 = swift_getOpaqueTypeConformance2();
  sub_1E59B66BC(sub_1E591B0A4, v82, sub_1E591B0BC, v81, v37);
  v83[2] = v45;
  v83[3] = v46;
  v47 = v73;
  v83[4] = MEMORY[0x1E6981E60];
  v48 = swift_getWitnessTable();
  v49 = v44;
  v50 = v64;
  v72 = v48;
  sub_1E58B41DC(v42, v38, v48);
  v51 = *(v50 + 8);
  v51(v42, v38);
  v52 = 1;
  if (*(v74 + 16) - 1 != v75)
  {
    v53 = v63;
    sub_1E5A2B6B4();
    v54 = sub_1E5A2ADF4();
    sub_1E5A2A424();
    v55 = v53 + *(v47 + 36);
    *v55 = v54;
    *(v55 + 8) = v56;
    *(v55 + 16) = v57;
    *(v55 + 24) = v58;
    *(v55 + 32) = v59;
    *(v55 + 40) = 0;
    sub_1E591B1B8(v53, v80);
    v52 = 0;
  }

  v60 = v80;
  (*(v76 + 56))(v80, v52, 1, v47);
  (*(v50 + 16))(v42, v49, v38);
  v84 = v42;
  v61 = v78;
  sub_1E58BABA0(v60, v78, &qword_1ECFFD668, &qword_1E5A35C00);
  v85 = v61;
  v83[0] = v38;
  v83[1] = v77;
  v82[9] = v72;
  v82[10] = sub_1E591B228();
  sub_1E597DC00(&v84, 2uLL, v83);
  sub_1E58BAD14(v60, &qword_1ECFFD668, &qword_1E5A35C00);
  v51(v49, v38);
  sub_1E58BAD14(v61, &qword_1ECFFD668, &qword_1E5A35C00);
  return (v51)(v42, v38);
}

uint64_t sub_1E5914078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a7;
  v74 = a6;
  v80 = a5;
  v79 = a4;
  v77 = a3;
  v76 = a2;
  v75 = a1;
  v89 = a8;
  v88 = sub_1E5A2AAC4();
  v87 = *(v88 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v86 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A2ACE4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v84 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1E5A2AD04();
  v85 = *(v91 - 8);
  v13 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v83 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1E5A2AC64();
  v81 = *(v82 - 8);
  v15 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v90 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v113 = MEMORY[0x1E697E5D8];
  v18 = swift_getWitnessTable();
  v19 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
  v110 = v18;
  v111 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0);
  v108 = v20;
  v109 = v21;
  swift_getWitnessTable();
  v22 = sub_1E5A2B594();
  v23 = swift_getWitnessTable();
  v103 = v22;
  v104 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v103 = v22;
  v104 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_1E58EFCE8();
  v103 = OpaqueTypeMetadata2;
  v104 = &type metadata for WorkoutPlanCreationButtonStyle;
  v105 = OpaqueTypeConformance2;
  v106 = v26;
  swift_getOpaqueTypeMetadata2();
  v27 = sub_1E5A2A6C4();
  v28 = sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0);
  v103 = v17;
  v104 = MEMORY[0x1E69E6158];
  v105 = v27;
  v106 = v28;
  v107 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  v103 = OpaqueTypeMetadata2;
  v104 = &type metadata for WorkoutPlanCreationButtonStyle;
  v105 = OpaqueTypeConformance2;
  v106 = v26;
  v101 = swift_getOpaqueTypeConformance2();
  v102 = MEMORY[0x1E697E5D8];
  v100 = swift_getWitnessTable();
  swift_getWitnessTable();
  v29 = sub_1E5A2B834();
  v30 = swift_getWitnessTable();
  v103 = v29;
  v104 = v30;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  v103 = v29;
  v104 = v30;
  v99 = swift_getOpaqueTypeConformance2();
  v66[0] = swift_getWitnessTable();
  v31 = sub_1E5A2A4B4();
  v71 = *(v31 - 8);
  v32 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = v66 - v33;
  v35 = swift_getWitnessTable();
  v103 = v31;
  v104 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v69 = *(v36 - 8);
  v37 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = v66 - v38;
  v103 = v31;
  v104 = v35;
  v66[2] = v35;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v91;
  v103 = v36;
  v104 = v91;
  v42 = MEMORY[0x1E697CC08];
  v105 = v40;
  v106 = MEMORY[0x1E697CC08];
  v43 = swift_getOpaqueTypeMetadata2();
  v73 = *(v43 - 8);
  v44 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v70 = v66 - v45;
  v103 = v36;
  v104 = v41;
  v66[1] = v40;
  v105 = v40;
  v106 = v42;
  v46 = swift_getOpaqueTypeConformance2();
  v103 = v43;
  v104 = v46;
  v68 = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v72 = *(v47 - 8);
  v48 = *(v72 + 64);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = v66 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v67 = v66 - v52;
  sub_1E5A2AD64();
  v92 = v74;
  v93 = v78;
  v94 = v75;
  v95 = v76;
  v96 = v77;
  v97 = v79;
  v98 = v80;
  v80 = v34;
  sub_1E594320C();
  sub_1E5A2AC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD770, &qword_1E5A35D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C930;
  LOBYTE(v40) = sub_1E5A2AD84();
  *(inited + 32) = v40;
  v54 = sub_1E5A2AD64();
  *(inited + 33) = v54;
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v40)
  {
    sub_1E5A2AD74();
  }

  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v54)
  {
    sub_1E5A2AD74();
  }

  v55 = v70;
  v56 = v90;
  v57 = v80;
  sub_1E5A2B1B4();
  (*(v81 + 8))(v56, v82);
  (*(v71 + 8))(v57, v31);
  sub_1E5A2ACD4();
  v58 = v83;
  sub_1E5A2ACF4();
  v59 = v91;
  sub_1E5A2B244();
  (*(v85 + 8))(v58, v59);
  (*(v69 + 8))(v39, v36);
  v60 = v86;
  sub_1E5A2AAB4();
  LOBYTE(v59) = sub_1E5A2AD64();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v59)
  {
    sub_1E5A2AD74();
  }

  v61 = v68;
  sub_1E5A2B234();
  (*(v87 + 8))(v60, v88);
  (*(v73 + 8))(v55, v43);
  v103 = v43;
  v104 = v61;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v67;
  sub_1E58B41DC(v51, v47, v62);
  v64 = *(v72 + 8);
  v64(v51, v47);
  sub_1E58B41DC(v63, v47, v62);
  return (v64)(v63, v47);
}

uint64_t sub_1E5914E24@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v88 = a7;
  v90 = a5;
  v89 = a4;
  v87 = a3;
  v95 = a2;
  v84 = a1;
  v93 = a8;
  v9 = sub_1E5A2AB24();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v86 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1E5A2B764();
  v82 = *(v83 - 1);
  v12 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v81 = (&v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1E5A2B774();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v80 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  v85 = a6;
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v18 = MEMORY[0x1E697E5D8];
  v109 = WitnessTable;
  v110 = MEMORY[0x1E697E5D8];
  v19 = swift_getWitnessTable();
  v20 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
  v107 = v19;
  v108 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0);
  v105 = v21;
  v106 = v22;
  swift_getWitnessTable();
  v23 = sub_1E5A2B594();
  v24 = swift_getWitnessTable();
  v100 = v23;
  v101 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v100 = v23;
  v101 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_1E58EFCE8();
  v100 = OpaqueTypeMetadata2;
  v101 = &type metadata for WorkoutPlanCreationButtonStyle;
  v102 = OpaqueTypeConformance2;
  v103 = v27;
  swift_getOpaqueTypeMetadata2();
  v28 = sub_1E5A2A6C4();
  v29 = sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0);
  v100 = v94;
  v101 = MEMORY[0x1E69E6158];
  v102 = v28;
  v103 = v29;
  v104 = MEMORY[0x1E69E6168];
  v30 = sub_1E5A2B6F4();
  v100 = OpaqueTypeMetadata2;
  v101 = &type metadata for WorkoutPlanCreationButtonStyle;
  v102 = OpaqueTypeConformance2;
  v103 = v27;
  v98 = swift_getOpaqueTypeConformance2();
  v99 = v18;
  v97 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v79 = v30;
  v32 = sub_1E5A2B834();
  v78 = *(v32 - 8);
  v33 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v76 = &v74 - v34;
  v35 = swift_getWitnessTable();
  v100 = v32;
  v101 = v35;
  v94 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v77 = &v74 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v74 = &v74 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v75 = &v74 - v43;
  v44 = sub_1E5A2BD84();
  v92 = *(v44 - 8);
  v45 = *(v92 + 64);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v74 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v91 = &v74 - v49;
  swift_getKeyPath();

  sub_1E5A2B934();

  v50 = v100;
  if (*(v100 + 16) && (v51 = sub_1E58EF508(*(v90 + 8), *(v90 + 16)), (v52 & 1) != 0))
  {
    v53 = *(*(v50 + 56) + (v51 << 6) + 56);

    v54 = v81;
    *v81 = xmmword_1E5A317E0;
    (*(v82 + 104))(v54, *MEMORY[0x1E697D748], v83);
    v55 = v80;
    sub_1E5A2B784();
    if (*(v53 + 16) <= 1uLL)
    {
      v56 = 1;
    }

    else
    {
      v56 = 2;
    }

    v82 = sub_1E59E9100(v55, v56);
    v81 = sub_1E5A2A934();
    v83 = &v74;
    MEMORY[0x1EEE9AC00](v81);
    v57 = v88;
    *(&v74 - 8) = v85;
    *(&v74 - 7) = v57;
    v58 = v95;
    *(&v74 - 6) = v84;
    *(&v74 - 5) = v58;
    v59 = v89;
    *(&v74 - 4) = v87;
    *(&v74 - 3) = v59;
    v73 = v90;
    sub_1E590FE8C();
    v72 = v31;
    v60 = v76;
    sub_1E5A2B824();

    v61 = v74;
    v62 = v94;
    sub_1E5A2B204();
    (*(v78 + 8))(v60, v32);
    v100 = v32;
    v101 = v62;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = v75;
    sub_1E58B41DC(v61, v36, v63);
    v65 = *(v37 + 8);
    v65(v61, v36);
    v66 = v77;
    sub_1E58B41DC(v64, v36, v63);
    v65(v64, v36);
    (*(v37 + 32))(v48, v66, v36);
    (*(v37 + 56))(v48, 0, 1, v36);
    v67 = v94;
  }

  else
  {

    (*(v37 + 56))(v48, 1, 1, v36);
    v67 = v94;
    v100 = v32;
    v101 = v94;
    swift_getOpaqueTypeConformance2();
  }

  v68 = v91;
  sub_1E598D20C(v48, v91);
  v69 = *(v92 + 8);
  v69(v48, v44);
  v100 = v32;
  v101 = v67;
  v96 = swift_getOpaqueTypeConformance2();
  v70 = swift_getWitnessTable();
  sub_1E58B41DC(v68, v44, v70);
  return (v69)(v68, v44);
}

uint64_t sub_1E59159FC@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a8;
  v43 = a7;
  v50 = a6;
  v49 = a5;
  v47 = a4;
  v46 = a3;
  v45 = a2;
  v44 = a1;
  v51 = a9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v66 = MEMORY[0x1E697E5D8];
  v9 = MEMORY[0x1E697E858];
  v63 = swift_getWitnessTable();
  v64 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
  v42 = v9;
  v61 = swift_getWitnessTable();
  v62 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0);
  swift_getWitnessTable();
  sub_1E5A2B594();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_1E58EFCE8();
  v35 = MEMORY[0x1E697CDC0];
  swift_getOpaqueTypeMetadata2();
  v33 = sub_1E5A2A6C4();
  v36 = sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0);
  v55 = v39;
  v56 = MEMORY[0x1E69E6158];
  v57 = v33;
  v58 = v36;
  v59 = MEMORY[0x1E69E6168];
  v10 = sub_1E5A2B6F4();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v32 - v15;
  v16 = v44;
  v17 = v45;
  v55 = v44;
  v56 = v45;
  v18 = v46;
  v19 = v47;
  v57 = v46;
  v58 = v47;
  v20 = v43;
  v21 = v48;
  v22 = type metadata accessor for TrainerPreferenceView();
  v60 = sub_1E59106C8(v49, v22);
  swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v21;
  *(v23 + 32) = v16;
  *(v23 + 40) = v17;
  *(v23 + 48) = v18;
  *(v23 + 56) = v19;
  v24 = v50;
  v25 = *(v50 + 48);
  *(v23 + 96) = *(v50 + 32);
  *(v23 + 112) = v25;
  *(v23 + 128) = *(v24 + 64);
  v26 = *(v24 + 16);
  *(v23 + 64) = *v24;
  *(v23 + 80) = v26;

  sub_1E591B3E0(v24, &v55);
  v55 = OpaqueTypeMetadata2;
  v56 = &type metadata for WorkoutPlanCreationButtonStyle;
  v57 = OpaqueTypeConformance2;
  v58 = v37;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = MEMORY[0x1E697E5D8];
  v31 = swift_getWitnessTable();
  sub_1E5A2B6E4();
  v52 = v31;
  v27 = swift_getWitnessTable();
  v28 = v34;
  sub_1E58B41DC(v14, v10, v27);
  v29 = *(v41 + 8);
  v29(v14, v10);
  sub_1E58B41DC(v28, v10, v27);
  return (v29)(v28, v10);
}

uint64_t sub_1E59160FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a8;
  v72 = a5;
  v67 = a7;
  v68 = a2;
  v73 = a6;
  v74 = a9;
  v69 = a3;
  v70 = a4;
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  v10 = sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v94 = MEMORY[0x1E697E5D8];
  v11 = MEMORY[0x1E697E858];
  v91 = swift_getWitnessTable();
  v92 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
  v66 = v11;
  v89 = swift_getWitnessTable();
  v90 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0);
  v64 = v10;
  v63 = swift_getWitnessTable();
  v12 = sub_1E5A2B594();
  v65 = *(v12 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = swift_getWitnessTable();
  v85 = v12;
  v86 = v16;
  v17 = v16;
  v58 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v57 = &v53 - v20;
  v85 = v12;
  v86 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = OpaqueTypeConformance2;
  v55 = sub_1E58EFCE8();
  v85 = OpaqueTypeMetadata2;
  v86 = &type metadata for WorkoutPlanCreationButtonStyle;
  v87 = OpaqueTypeConformance2;
  v88 = v55;
  v59 = MEMORY[0x1E697CDC0];
  v54 = swift_getOpaqueTypeMetadata2();
  v60 = *(v54 - 8);
  v22 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v24 = &v53 - v23;
  v25 = sub_1E5A2A6C4();
  v61 = *(v25 - 8);
  v26 = *(v61 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v53 = &v53 - v30;
  v31 = *(a1 + 16);
  v95[0] = *a1;
  v95[1] = v31;
  v95[2] = *(a1 + 32);
  v96 = *(a1 + 48);
  v32 = swift_allocObject();
  v34 = v67;
  v33 = v68;
  v35 = v70;
  v36 = v71;
  *(v32 + 16) = v67;
  *(v32 + 24) = v36;
  *(v32 + 32) = v33;
  v37 = v69;
  *(v32 + 40) = v69;
  *(v32 + 48) = v35;
  v38 = v72;
  *(v32 + 56) = v72;
  v39 = *(a1 + 16);
  *(v32 + 64) = *a1;
  *(v32 + 80) = v39;
  *(v32 + 96) = *(a1 + 32);
  *(v32 + 112) = *(a1 + 48);
  v40 = v73;
  v41 = v73[1];
  *(v32 + 120) = *v73;
  v42 = *(v40 + 32);
  v43 = *(v40 + 48);
  *(v32 + 184) = *(v40 + 64);
  *(v32 + 168) = v43;
  *(v32 + 152) = v42;
  *(v32 + 136) = v41;
  v75 = v34;
  v76 = v36;
  v77 = v95;
  v78 = v33;
  v79 = v37;
  v80 = v35;
  v81 = v38;
  v82 = v40;

  sub_1E591B46C(v95, &v85);
  sub_1E591B3E0(v40, &v85);
  sub_1E5A2B574();
  sub_1E5A2AD64();
  sub_1E5A2B7F4();
  v44 = v57;
  sub_1E5A2B274();
  (*(v65 + 8))(v15, v12);
  v46 = v55;
  v45 = v56;
  sub_1E5A2B0C4();
  (*(v62 + 8))(v44, OpaqueTypeMetadata2);
  sub_1E5A2ADF4();
  v85 = OpaqueTypeMetadata2;
  v86 = &type metadata for WorkoutPlanCreationButtonStyle;
  v87 = v45;
  v88 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v54;
  sub_1E5A2B334();
  (*(v60 + 8))(v24, v48);
  v83 = v47;
  v84 = MEMORY[0x1E697E5D8];
  v49 = swift_getWitnessTable();
  v50 = v53;
  sub_1E58B41DC(v29, v25, v49);
  v51 = *(v61 + 8);
  v51(v29, v25);
  sub_1E58B41DC(v50, v25, v49);
  return (v51)(v50, v25);
}

uint64_t sub_1E59168DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a5;
  v19 = *(a5 + 16);
  v20 = v8;
  v18 = *(a5 + 32);
  v9 = *(a5 + 48);
  v10 = type metadata accessor for WorkoutPlanCreationAction();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v19;
  *v13 = v20;
  *(v13 + 1) = v14;
  *(v13 + 2) = v18;
  *(v13 + 6) = v9;
  v15 = *a6;
  *(v13 + 72) = *(a6 + 16);
  v16 = *(a6 + 48);
  *(v13 + 88) = *(a6 + 32);
  *(v13 + 104) = v16;
  *(v13 + 15) = *(a6 + 64);
  *(v13 + 56) = v15;
  swift_storeEnumTagMultiPayload();

  sub_1E591B46C(a5, v21);
  sub_1E591B3E0(a6, v21);
  sub_1E5A2B954();

  return sub_1E591B678(v13, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5916A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v106 = a1;
  v107 = a8;
  v86 = a6;
  v104 = a4;
  v105 = a5;
  v102 = a2;
  v103 = a3;
  v99 = a9;
  v88 = sub_1E5A2A9B4();
  v108 = *(v88 - 8);
  v10 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v97 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD778, &unk_1E5A35DE0);
  v12 = *(*(v89 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v89);
  v98 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v83 - v15;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD780, &unk_1E5A37DE0);
  v16 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v83 - v17;
  v87 = sub_1E5A2B6A4();
  v18 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a7;
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v21 = sub_1E5A2B5B4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v83 - v24;
  v26 = sub_1E5A2A6C4();
  v85 = *(v26 - 8);
  v27 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v83 = &v83 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  v29 = sub_1E5A2A6C4();
  v91 = *(v29 - 8);
  v30 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v101 = &v83 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  v93 = v29;
  v32 = sub_1E5A2A6C4();
  v94 = *(v32 - 8);
  v95 = v32;
  v33 = *(v94 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v90 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v92 = &v83 - v36;
  sub_1E5A2A934();
  v96 = v20;
  v37 = v86;
  v111 = v20;
  v112 = v107;
  v113 = v106;
  v114 = v102;
  v115 = v103;
  v116 = v104;
  v117 = v105;
  v118 = v86;
  sub_1E5A2B5A4();
  WitnessTable = swift_getWitnessTable();
  sub_1E5A2B324();
  (*(v22 + 8))(v25, v21);
  v39 = *MEMORY[0x1E697F468];
  v40 = *(v108 + 104);
  v41 = v84;
  v42 = v88;
  v40(v84, v39, v88);
  v134 = WitnessTable;
  v135 = MEMORY[0x1E697E5D8];
  v43 = swift_getWitnessTable();
  sub_1E591B4FC(&qword_1ECFFD788, MEMORY[0x1E6981998]);
  v44 = v41;
  v87 = v43;
  v45 = v83;
  sub_1E5A2B104();
  sub_1E591B678(v44, MEMORY[0x1E6981998]);
  v46 = v26;
  v47 = v100;
  (*(v85 + 8))(v45, v46);
  v40(v47, v39, v42);
  if (qword_1ECFFB488 != -1)
  {
    swift_once();
  }

  v48 = v89;
  *(v47 + *(v89 + 52)) = qword_1ED0264A8;
  *(v47 + *(v48 + 56)) = 256;
  v49 = qword_1ECFFB478;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = qword_1ED026498;
  v130 = v102;
  v131 = v103;
  v132 = v104;
  v133 = v105;
  v51 = *(v106 + 16);
  v128[0] = *v106;
  v128[1] = v51;
  v128[2] = *(v106 + 32);
  v129 = *(v106 + 48);
  v52 = v37[3];
  v125 = v37[2];
  v126 = v52;
  v127 = *(v37 + 8);
  v53 = v37[1];
  v123 = *v37;
  v124 = v53;
  type metadata accessor for TrainerPreferenceView();
  sub_1E5910968(v128, &v123);
  sub_1E5A2A514();
  v54 = v98;
  sub_1E58BABA0(v47, v98, &qword_1ECFFD778, &unk_1E5A35DE0);
  v55 = v109;
  sub_1E591B610(v47, v109, MEMORY[0x1E6981998]);
  v56 = v97;
  v40(v97, *MEMORY[0x1E697F480], v42);
  v57 = sub_1E5A2A9A4();
  (*(v108 + 8))(v56, v42);
  v58 = v123;
  v59 = v124;
  v60 = v55;
  v61 = COERCE_UNSIGNED_INT64(*&v123 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v57 & 1) == 0);
  v108 = *(&v124 + 1);
  v62 = v125;
  v63 = v60 + *(v110 + 68);
  v64 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD790, &unk_1E5A35DF0) + 36);
  sub_1E58BABA0(v54, v64, &qword_1ECFFD778, &unk_1E5A35DE0);
  v65 = v50;

  v66 = sub_1E5A2B7E4();
  v68 = v67;
  sub_1E58BAD14(v54, &qword_1ECFFD778, &unk_1E5A35DE0);
  sub_1E58BAD14(v100, &qword_1ECFFD778, &unk_1E5A35DE0);
  v69 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD798, &qword_1E5A37DF0) + 36));
  *v69 = v66;
  v69[1] = v68;
  *v63 = v61;
  v70 = *(&v123 + 1);
  *(v63 + 8) = v58;
  *(v63 + 16) = v70;
  *(v63 + 24) = v59;
  *(v63 + 32) = v108;
  *(v63 + 40) = v62;
  *(v63 + 48) = v65;
  *(v63 + 56) = 256;
  sub_1E5A2B7E4();
  v71 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
  v121 = v87;
  v122 = v71;
  v72 = v93;
  v73 = swift_getWitnessTable();
  sub_1E58CD164(&qword_1ECFFD7A0, &qword_1ECFFD780, &unk_1E5A37DE0);
  v74 = v90;
  v75 = v109;
  v76 = v101;
  sub_1E5A2B064();
  sub_1E589D264(v75);
  (*(v91 + 8))(v76, v72);
  v77 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0);
  v119 = v73;
  v120 = v77;
  v78 = v95;
  v79 = swift_getWitnessTable();
  v80 = v92;
  sub_1E58B41DC(v74, v78, v79);
  v81 = *(v94 + 8);
  v81(v74, v78);
  sub_1E58B41DC(v80, v78, v79);
  return (v81)(v80, v78);
}

uint64_t sub_1E591757C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v66 = a8;
  v67 = a1;
  v61 = a6;
  *&v69 = a4;
  *(&v69 + 1) = a5;
  *&v68 = a2;
  *(&v68 + 1) = a3;
  v65 = a9;
  v57[2] = a7;
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  v63 = sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  v10 = sub_1E5A2B494();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v57 - v12;
  v14 = sub_1E5A2A6C4();
  v70 = *(v14 - 8);
  v15 = *(v70 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v57 - v19;
  v71 = a7;
  v72 = v66;
  v73 = v67;
  v74 = v68;
  v75 = v69;
  v118 = v66;
  v119 = MEMORY[0x1E697EBF8];
  WitnessTable = swift_getWitnessTable();
  v117 = MEMORY[0x1E697F568];
  v21 = swift_getWitnessTable();
  v22 = sub_1E58CD164(&qword_1ECFFD7A8, &qword_1ECFFD640, &qword_1E5A35BE8);
  v114 = v21;
  v115 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1E591B558();
  v112 = v23;
  v113 = v24;
  v25 = swift_getWitnessTable();
  sub_1E5A2B484();
  sub_1E5A2B7E4();
  v111 = v25;
  v26 = swift_getWitnessTable();
  sub_1E5A2B2D4();
  (*(v64 + 8))(v13, v10);
  v109 = v26;
  v110 = MEMORY[0x1E697E040];
  v27 = swift_getWitnessTable();
  v62 = v20;
  v58 = v27;
  sub_1E58B41DC(v18, v14, v27);
  v28 = *(v70 + 8);
  v63 = v18;
  v64 = v14;
  v59 = v28;
  v60 = v70 + 8;
  v28(v18, v14);
  v29 = v67;
  v30 = *(v67 + 6);
  *&v98 = *(v67 + 5);
  *(&v98 + 1) = v30;
  sub_1E58D1C80();

  v31 = sub_1E5A2AFD4();
  v33 = v32;
  LOBYTE(v10) = v34;
  sub_1E5A2AED4();
  sub_1E5A2AE24();

  v35 = sub_1E5A2AFA4();
  v37 = v36;
  v39 = v38;
  v57[1] = v40;

  sub_1E58B3C9C(v31, v33, v10 & 1);

  v79 = v68;
  v80 = v69;
  v41 = v29[1];
  v89 = *v29;
  v90 = v41;
  v91 = v29[2];
  *&v92 = *(v29 + 6);
  v42 = v61[3];
  v100 = v61[2];
  v101 = v42;
  *&v102 = *(v61 + 8);
  v43 = v61[1];
  v98 = *v61;
  v99 = v43;
  type metadata accessor for TrainerPreferenceView();
  if (sub_1E5910968(&v89, &v98))
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v44 = qword_1ED026498;
  }

  else
  {
    v44 = sub_1E5A2B444();
  }

  *&v98 = v44;
  v45 = sub_1E5A2AF84();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_1E58B3C9C(v35, v37, v39 & 1);

  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v108 = v49 & 1;
  *&v89 = v45;
  *(&v89 + 1) = v47;
  LOBYTE(v90) = v49 & 1;
  *(&v90 + 1) = *v107;
  DWORD1(v90) = *&v107[3];
  *(&v90 + 1) = v51;
  v53 = v62;
  v52 = v63;
  v54 = v64;
  (*(v70 + 16))(v63, v62, v64);
  v85 = v95;
  v86 = v96;
  v87 = v97;
  v81 = v91;
  v82 = v92;
  v83 = v93;
  v84 = v94;
  v79 = v89;
  v80 = v90;
  v88[0] = v52;
  v88[1] = &v79;
  sub_1E58BABA0(&v89, &v98, &qword_1ECFFB4F8, &unk_1E5A2C940);
  v78[0] = v54;
  v78[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  v76 = v58;
  v77 = sub_1E58B1D44();
  sub_1E597DC00(v88, 2uLL, v78);
  sub_1E58BAD14(&v89, &qword_1ECFFB4F8, &unk_1E5A2C940);
  v55 = v59;
  v59(v53, v54);
  v104 = v85;
  v105 = v86;
  v106 = v87;
  v100 = v81;
  v101 = v82;
  v102 = v83;
  v103 = v84;
  v98 = v79;
  v99 = v80;
  sub_1E58BAD14(&v98, &qword_1ECFFB4F8, &unk_1E5A2C940);
  return v55(v52, v54);
}

uint64_t sub_1E5917CC0@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v107 = a5;
  v108 = a6;
  v89 = a3;
  v90 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  v8 = *(*(v85 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v85);
  v86 = &v84 - v10;
  v92 = *(a4 - 8);
  v11 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a4;
  v13 = sub_1E5A2A6C4();
  v93 = *(v13 - 8);
  v14 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v84 - v15;
  v106 = v16;
  v17 = sub_1E5A2A6C4();
  v94 = *(v17 - 8);
  v18 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v84 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  v105 = v17;
  v20 = sub_1E5A2A6C4();
  v97 = *(v20 - 8);
  v21 = *(v97 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v95 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v99 = &v84 - v24;
  v25 = type metadata accessor for WorkoutPlanArtwork();
  v109 = *(v25 - 8);
  v110 = v25;
  v26 = *(v109 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v84 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v84 = &v84 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v98 = &v84 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  v104 = v20;
  v100 = v36;
  v37 = sub_1E5A2AA84();
  v102 = *(v37 - 8);
  v103 = v37;
  v38 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v101 = &v84 - v39;
  v40 = *a1;
  v43 = *(*a1 + 56);
  v42 = *a1 + 56;
  v41 = v43;
  v44 = 1 << *(v40 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v41;
  v47 = (v44 + 63) >> 6;

  v48 = 0;
  if (v46)
  {
    while (1)
    {
      v49 = v48;
LABEL_8:
      sub_1E591B610(*(v40 + 48) + *(v109 + 72) * (__clz(__rbit64(v46)) | (v49 << 6)), v32, type metadata accessor for WorkoutPlanArtwork);
      sub_1E58BAB3C(v32, v29);
      if (v29[*(v110 + 20)] > 4u)
      {
        if (v29[*(v110 + 20)] > 8u)
        {
          goto LABEL_22;
        }
      }

      else if (v29[*(v110 + 20)] <= 1u)
      {
        v29[*(v110 + 20)];
      }

      v50 = sub_1E5A2C114();

      if (v50)
      {
        break;
      }

      v46 &= v46 - 1;
      sub_1E591B678(v29, type metadata accessor for WorkoutPlanArtwork);
      v48 = v49;
      if (!v46)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v49 >= v47)
      {

        v51 = sub_1E5A2AB94();
        sub_1E5A2B7E4();
        sub_1E5A2A764();
        *&v127[82] = v147;
        *&v127[98] = v148;
        *&v127[2] = v142;
        *&v127[18] = v143;
        *&v127[50] = v145;
        *&v127[66] = v146;
        *&v127[34] = v144;
        v117 = v51;
        v118 = 256;
        v123 = *&v127[64];
        v124 = *&v127[80];
        v125 = *&v127[96];
        v126 = HIWORD(v148);
        v119 = *v127;
        v120 = *&v127[16];
        v121 = *&v127[32];
        v122 = *&v127[48];
        v52 = v107;
        v115 = v107;
        v116 = MEMORY[0x1E697EBF8];
        WitnessTable = swift_getWitnessTable();
        v114 = MEMORY[0x1E697F568];
        v53 = swift_getWitnessTable();
        v54 = sub_1E58CD164(&qword_1ECFFD7A8, &qword_1ECFFD640, &qword_1E5A35BE8);
        v111 = v53;
        v112 = v54;
        v55 = v104;
        swift_getWitnessTable();
        sub_1E591B558();
        v56 = v101;
        sub_1E595ECB8(&v117, v55, v100);
        goto LABEL_18;
      }

      v46 = *(v42 + 8 * v49);
      ++v48;
      if (v46)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_22:
  }

  v64 = v84;
  sub_1E58BAB3C(v29, v84);
  v65 = v64;
  v66 = v98;
  sub_1E58BAB3C(v65, v98);
  v67 = *MEMORY[0x1E699DC58];
  v68 = sub_1E5A2A0D4();
  v69 = v86;
  (*(*(v68 - 8) + 104))(v86, v67, v68);
  swift_storeEnumTagMultiPayload();
  v70 = v87;
  v90(v66, v69, v66 + *(v110 + 24));
  sub_1E58BAD14(v69, &qword_1ECFFD7C8, &qword_1E5A35E28);
  sub_1E5A2B7E4();
  v52 = v107;
  v71 = v96;
  v72 = v88;
  sub_1E5A2B2E4();
  (*(v92 + 8))(v70, v71);
  v140 = v52;
  v141 = MEMORY[0x1E697EBF8];
  v73 = v106;
  v74 = swift_getWitnessTable();
  v75 = v91;
  sub_1E5A2B0F4();
  (*(v93 + 8))(v72, v73);
  v138 = v74;
  v139 = MEMORY[0x1E697F568];
  v76 = v105;
  v77 = swift_getWitnessTable();
  sub_1E591B6D8();
  v78 = v95;
  sub_1E5A2B3C4();
  (*(v94 + 8))(v75, v76);
  v79 = sub_1E58CD164(&qword_1ECFFD7A8, &qword_1ECFFD640, &qword_1E5A35BE8);
  v136 = v77;
  v137 = v79;
  v80 = v104;
  v81 = swift_getWitnessTable();
  v82 = v99;
  sub_1E58B41DC(v78, v80, v81);
  v83 = *(v97 + 8);
  v83(v78, v80);
  sub_1E58B41DC(v82, v80, v81);
  sub_1E591B558();
  v56 = v101;
  sub_1E595EBC0(v78, v80);
  v83(v78, v80);
  v83(v99, v80);
  sub_1E591B678(v98, type metadata accessor for WorkoutPlanArtwork);
LABEL_18:
  v134 = v52;
  v135 = MEMORY[0x1E697EBF8];
  v132 = swift_getWitnessTable();
  v133 = MEMORY[0x1E697F568];
  v57 = swift_getWitnessTable();
  v58 = sub_1E58CD164(&qword_1ECFFD7A8, &qword_1ECFFD640, &qword_1E5A35BE8);
  v130 = v57;
  v131 = v58;
  v59 = swift_getWitnessTable();
  v60 = sub_1E591B558();
  v128 = v59;
  v129 = v60;
  v61 = v103;
  v62 = swift_getWitnessTable();
  sub_1E58B41DC(v56, v61, v62);
  return (*(v102 + 8))(v56, v61);
}

uint64_t sub_1E591890C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a4;
  v24 = a5;
  v25 = a8;
  v26 = sub_1E5A2A9E4();
  v13 = *(v26 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC0F0, &unk_1E5A37CB0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v23 - v20;
  v34 = a1;
  v27 = a6;
  v28 = a7;
  v29 = a2;
  v30 = a3;
  v31 = v23;
  v32 = v24;
  v33 = a1;
  sub_1E5A2B504();
  sub_1E5A2A9D4();
  sub_1E58CD164(&qword_1ECFFC0F8, &qword_1ECFFC0F0, &unk_1E5A37CB0);
  sub_1E5A2B264();
  (*(v13 + 8))(v16, v26);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1E5918B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  sub_1E58D1C80();

  v3 = sub_1E5A2AFD4();
  v5 = v4;
  v7 = v6;
  sub_1E5A2AF14();
  sub_1E5A2AE24();

  v8 = sub_1E5A2AFA4();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_1E58B3C9C(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1E5918C48@<X0>(uint64_t a1@<X4>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  type metadata accessor for TrainerPreferenceView();
  sub_1E590FFB8(v3, v4);
  result = sub_1E5A2B4A4();
  *a2 = result;
  return result;
}

uint64_t sub_1E5918CB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_1E5A2AA24();
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD710, &qword_1E5A35CF0);
  sub_1E5918DA4(a1, a2 + *(v4 + 44));
  v5 = sub_1E5A2ADC4();
  sub_1E5A2A424();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD620, &qword_1E5A35BC8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_1E5918DA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_1E5A2AEB4();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v73 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5A2A9E4();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v70 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A29EB4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2BB14();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD718, &qword_1E5A35CF8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v76 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v78 = v69 - v21;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v22 = qword_1EE2D33E0;
  swift_getKeyPath();

  v23 = v22;
  sub_1E5A2B944();

  v24 = sub_1E5A2AF64();
  v26 = v25;
  v28 = v27;
  v69[3] = a1;
  sub_1E5A2AE84();
  v69[2] = v16;
  sub_1E5A2AE24();

  v29 = sub_1E5A2AFA4();
  v31 = v30;
  v69[1] = v12;
  v33 = v32;
  v35 = v34;

  sub_1E58B3C9C(v24, v26, v28 & 1);

  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v89 = v33 & 1;
  *&v82 = v29;
  *(&v82 + 1) = v31;
  LOBYTE(v83) = v33 & 1;
  *(&v83 + 1) = v35;
  v36 = v70;
  sub_1E5A2A9D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  sub_1E58B1D44();
  sub_1E5A2B264();
  (*(v71 + 8))(v36, v72);
  v88[5] = v84[3];
  v88[6] = v84[4];
  v88[7] = v84[5];
  v88[8] = v84[6];
  v88[2] = v84[0];
  v88[3] = v84[1];
  v88[4] = v84[2];
  v88[0] = v82;
  v88[1] = v83;
  sub_1E58BAD14(v88, &qword_1ECFFB4F8, &unk_1E5A2C940);
  sub_1E5A2BA84();
  v37 = qword_1EE2D33E0;
  swift_getKeyPath();

  v38 = v37;
  sub_1E5A2B944();

  v39 = sub_1E5A2AF64();
  v41 = v40;
  LOBYTE(v26) = v42;
  sub_1E5A2AE04();
  v44 = v73;
  v43 = v74;
  v45 = v75;
  (*(v74 + 104))(v73, *MEMORY[0x1E6980EA8], v75);
  sub_1E5A2AEE4();

  (*(v43 + 8))(v44, v45);
  v46 = sub_1E5A2AFA4();
  v48 = v47;
  LOBYTE(v43) = v49;

  sub_1E58B3C9C(v39, v41, v26 & 1);

  LODWORD(v82) = sub_1E5A2ABA4();
  v50 = sub_1E5A2AF84();
  v74 = v51;
  v75 = v50;
  LOBYTE(v29) = v52;
  v54 = v53;
  v73 = v53;
  sub_1E58B3C9C(v46, v48, v43 & 1);

  KeyPath = swift_getKeyPath();
  v72 = KeyPath;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *&v85[55] = v93;
  *&v85[71] = v94;
  *&v85[87] = v95;
  *&v85[103] = v96;
  *&v85[7] = v90;
  *&v85[23] = v91;
  v87 = v29 & 1;
  *&v85[39] = v92;
  v56 = v78;
  v57 = v76;
  sub_1E58BABA0(v78, v76, &qword_1ECFFD718, &qword_1E5A35CF8);
  v58 = v77;
  sub_1E58BABA0(v57, v77, &qword_1ECFFD718, &qword_1E5A35CF8);
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD720, &qword_1E5A35D50) + 48);
  *(v81 + 9) = *v85;
  *(&v81[4] + 9) = *&v85[64];
  v60 = (v58 + v59);
  v61 = v74;
  v62 = v75;
  *&v79 = v75;
  *(&v79 + 1) = v74;
  LOBYTE(v80) = v29 & 1;
  *(&v80 + 1) = *v86;
  DWORD1(v80) = *&v86[3];
  *(&v80 + 1) = v54;
  *&v81[0] = KeyPath;
  BYTE8(v81[0]) = 0;
  *(&v81[5] + 9) = *&v85[80];
  *(&v81[6] + 9) = *&v85[96];
  *(&v81[7] + 1) = *&v85[111];
  *(&v81[1] + 9) = *&v85[16];
  *(&v81[2] + 9) = *&v85[32];
  *(&v81[3] + 9) = *&v85[48];
  v63 = v81[5];
  v60[6] = v81[4];
  v60[7] = v63;
  v64 = v81[7];
  v60[8] = v81[6];
  v60[9] = v64;
  v65 = v81[1];
  v60[2] = v81[0];
  v60[3] = v65;
  v66 = v81[3];
  v60[4] = v81[2];
  v60[5] = v66;
  v67 = v80;
  *v60 = v79;
  v60[1] = v67;
  sub_1E58BABA0(&v79, &v82, &qword_1ECFFD728, &qword_1E5A35D58);
  sub_1E58BAD14(v56, &qword_1ECFFD718, &qword_1E5A35CF8);
  *(&v84[4] + 9) = *&v85[64];
  *(&v84[5] + 9) = *&v85[80];
  *(&v84[6] + 9) = *&v85[96];
  *(v84 + 9) = *v85;
  *(&v84[1] + 9) = *&v85[16];
  *(&v84[2] + 9) = *&v85[32];
  *&v82 = v62;
  *(&v82 + 1) = v61;
  LOBYTE(v83) = v29 & 1;
  *(&v83 + 1) = *v86;
  DWORD1(v83) = *&v86[3];
  *(&v83 + 1) = v73;
  *&v84[0] = v72;
  BYTE8(v84[0]) = 0;
  *(&v84[7] + 1) = *&v85[111];
  *(&v84[3] + 9) = *&v85[48];
  sub_1E58BAD14(&v82, &qword_1ECFFD728, &qword_1E5A35D58);
  return sub_1E58BAD14(v57, &qword_1ECFFD718, &qword_1E5A35CF8);
}

uint64_t sub_1E59196B0()
{
  swift_getKeyPath();

  sub_1E5A2B934();

  if (v10[0])
  {
    v10[2] = v10[0];
    v1 = WorkoutPlanSchedule.modalityIdentifiers()();

    v2 = 1 << v1[32];
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 7);
    v5 = (v2 + 63) >> 6;

    for (i = 0; v4; result = )
    {
      v7 = i;
LABEL_10:
      v8 = (*(v1 + 6) + ((v7 << 10) | (16 * __clz(__rbit64(v4)))));
      v9 = v8[1];
      v4 &= v4 - 1;
      v10[0] = *v8;
      v10[1] = v9;

      sub_1E5919890(v10);
    }

    while (1)
    {
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v7 >= v5)
      {
      }

      v4 = *&v1[8 * v7 + 56];
      ++i;
      if (v4)
      {
        i = v7;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E591983C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return sub_1E59196B0();
}

uint64_t sub_1E5919890(uint64_t *a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  v7 = a1[1];
  *v5 = v6;
  v5[1] = v7;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();

  return sub_1E591B678(v5, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5919968()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E59199C8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1E5919A64(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1E5919A64(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1E5A2C0E4();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1E5A2BC24();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1E5919B74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 72 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 48);
      v11 = result == *(v10 - 24) && *(v10 + 56) == *(v10 - 16);
      if (v11 || (result = sub_1E5A2C114(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 72;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = v10 - 72;
      v18 = *(v10 + 32);
      v19 = *(v10 + 48);
      v20 = *(v10 + 64);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 24);
      *(v10 + 32) = *(v10 - 40);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 8);
      v14 = *(v10 - 56);
      *v10 = *(v10 - 72);
      *(v10 + 16) = v14;
      *(v12 + 64) = v20;
      *(v12 + 32) = v18;
      *(v12 + 48) = v19;
      v10 -= 72;
      *v12 = v16;
      *(v12 + 16) = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5919C7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3 - 56;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 56 * v4;
    result = *(v9 + 40);
    v10 = *(v9 + 48);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 40) && v10 == *(v12 + 48);
      if (v13 || (result = sub_1E5A2C114(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 56;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 56);
      v15 = *(v12 + 72);
      result = *(v12 + 96);
      v10 = *(v12 + 104);
      v16 = *(v12 + 16);
      *(v12 + 56) = *v12;
      v17 = *(v12 + 80);
      *(v12 + 72) = v16;
      *(v12 + 88) = *(v12 + 32);
      *(v12 + 104) = *(v12 + 48);
      *v12 = v14;
      *(v12 + 16) = v15;
      *(v12 + 24) = v17;
      *(v12 + 40) = result;
      *(v12 + 48) = v10;
      v12 -= 56;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5919D7C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  __dst = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1E5A21290(v8);
      v8 = result;
    }

    v83 = v8 + 16;
    v84 = *(v8 + 2);
    if (v84 >= 2)
    {
      while (1)
      {
        v85 = *v5;
        if (!*v5)
        {
          goto LABEL_142;
        }

        v86 = &v8[16 * v84];
        v5 = *v86;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_1E591A9F0((v85 + 72 * *v86), (v85 + 72 * *v87), (v85 + 72 * v88), __dst);
        if (v4)
        {
        }

        if (v88 < v5)
        {
          goto LABEL_130;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_131;
        }

        *v86 = v5;
        *(v86 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_132;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        v5 = a3;
        if (v84 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 72 * v7;
      result = *(v11 + 48);
      v12 = *(v11 + 56);
      v13 = *v5 + 72 * v9;
      if (result == *(v13 + 48) && v12 == *(v13 + 56))
      {
        v15 = 0;
      }

      else
      {
        result = sub_1E5A2C114();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 72 * v9 + 200);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 10) && *v16 == *(v16 - 9))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E5A2C114();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 9;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v18 = 72 * v7 - 72;
          v19 = v9;
          v20 = 72 * v9;
          v21 = v7;
          v90 = v19;
          do
          {
            if (v19 != --v21)
            {
              v23 = *v5;
              if (!*v5)
              {
                goto LABEL_141;
              }

              v22 = v23 + v18;
              v99 = *(v23 + v20 + 32);
              v101 = *(v23 + v20 + 48);
              v103 = *(v23 + v20 + 64);
              v95 = *(v23 + v20);
              v97 = *(v23 + v20 + 16);
              result = memmove((v23 + v20), (v23 + v18), 0x48uLL);
              *(v22 + 32) = v99;
              *(v22 + 48) = v101;
              *(v22 + 64) = v103;
              *v22 = v95;
              *(v22 + 16) = v97;
            }

            ++v19;
            v18 -= 72;
            v20 += 72;
          }

          while (v19 < v21);
          v9 = v90;
        }
      }
    }

    v24 = v5[1];
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_136;
        }

        if (v9 + a4 >= v24)
        {
          v25 = v5[1];
        }

        else
        {
          v25 = v9 + a4;
        }

        if (v25 < v9)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (v7 != v25)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1E58E6258((v36 > 1), v37 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v38;
    v39 = &v8[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v7;
    v40 = *__dst;
    if (!*__dst)
    {
      goto LABEL_143;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_75:
          if (v45)
          {
            goto LABEL_121;
          }

          v58 = &v8[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_124;
          }

          v64 = &v8[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_128;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v68 = &v8[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_89:
        if (v63)
        {
          goto LABEL_123;
        }

        v71 = &v8[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_126;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_96:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
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
          goto LABEL_137;
        }

        if (!*v5)
        {
          goto LABEL_140;
        }

        v80 = *&v8[16 * v79 + 32];
        v81 = *&v8[16 * v41 + 40];
        sub_1E591A9F0((*v5 + 72 * v80), (*v5 + 72 * *&v8[16 * v41 + 32]), (*v5 + 72 * v81), v40);
        if (v4)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E5A21290(v8);
        }

        if (v79 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v82 = &v8[16 * v79];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        result = sub_1E5A21204(v41);
        v38 = *(v8 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v8[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_119;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_120;
      }

      v53 = &v8[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_122;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_125;
      }

      if (v57 >= v49)
      {
        v75 = &v8[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_129;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  v26 = *v5;
  v27 = *v5 + 72 * v7;
  v91 = v9;
  v28 = v9 - v7;
LABEL_44:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 48) == *(v30 - 24) && *(v30 + 56) == *(v30 - 16);
    if (v31 || (result = sub_1E5A2C114(), (result & 1) == 0))
    {
LABEL_43:
      ++v7;
      v27 += 72;
      --v28;
      if (v7 != v25)
      {
        goto LABEL_44;
      }

      v7 = v25;
      v5 = a3;
      v9 = v91;
      goto LABEL_55;
    }

    if (!v26)
    {
      break;
    }

    v32 = v30 - 72;
    v100 = *(v30 + 32);
    v102 = *(v30 + 48);
    v104 = *(v30 + 64);
    v96 = *v30;
    v98 = *(v30 + 16);
    v33 = *(v30 - 24);
    *(v30 + 32) = *(v30 - 40);
    *(v30 + 48) = v33;
    *(v30 + 64) = *(v30 - 8);
    v34 = *(v30 - 56);
    *v30 = *(v30 - 72);
    *(v30 + 16) = v34;
    *(v32 + 64) = v104;
    *(v32 + 32) = v100;
    *(v32 + 48) = v102;
    v30 -= 72;
    *v32 = v96;
    *(v32 + 16) = v98;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1E591A3BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v105 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v105 = *v105;
    if (!v105)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1E5A21290(v8);
      v8 = result;
    }

    v96 = v8 + 16;
    v97 = *(v8 + 2);
    if (v97 >= 2)
    {
      while (1)
      {
        v98 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v99 = &v8[16 * v97];
        v5 = *v99;
        v100 = &v96[2 * v97];
        v101 = v100[1];
        sub_1E591AC90((v98 + 56 * *v99), (v98 + 56 * *v100), v98 + 56 * v101, v105);
        if (v4)
        {
        }

        if (v101 < v5)
        {
          goto LABEL_129;
        }

        if (v97 - 2 >= *v96)
        {
          goto LABEL_130;
        }

        *v99 = v5;
        *(v99 + 1) = v101;
        v102 = *v96 - v97;
        if (*v96 < v97)
        {
          goto LABEL_131;
        }

        v97 = *v96 - 1;
        result = memmove(v100, v100 + 2, 16 * v102);
        *v96 = v97;
        v5 = a3;
        if (v97 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 56 * v7;
      result = *(v11 + 40);
      v12 = *(v11 + 48);
      v13 = *v5 + 56 * v9;
      if (result == *(v13 + 40) && v12 == *(v13 + 48))
      {
        v15 = 0;
      }

      else
      {
        result = sub_1E5A2C114();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 56 * v9 + 160);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 8) && *v16 == *(v16 - 7))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E5A2C114();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 7;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 56 * v7;
          v19 = 56 * v9 + 48;
          v20 = v7;
          v21 = v9;
          do
          {
            if (v21 != --v20)
            {
              v32 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = (v32 + v19);
              v23 = *(v32 + v19 - 48);
              v24 = v32 + v18;
              v25 = *(v22 - 4);
              v26 = *(v22 - 1);
              v27 = *v22;
              v28 = *(v22 - 3);
              v29 = *(v24 - 40);
              v30 = *(v24 - 24);
              v31 = *(v24 - 56);
              *v22 = *(v24 - 8);
              *(v22 - 2) = v29;
              *(v22 - 1) = v30;
              *(v22 - 3) = v31;
              *(v24 - 56) = v23;
              *(v24 - 40) = v25;
              *(v24 - 32) = v28;
              *(v24 - 16) = v26;
              *(v24 - 8) = v27;
            }

            ++v21;
            v18 -= 56;
            v19 += 56;
          }

          while (v21 < v20);
        }
      }
    }

    v33 = v5[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v33)
        {
          v34 = v5[1];
        }

        else
        {
          v34 = v9 + a4;
        }

        if (v34 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v34)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v50 = *(v8 + 2);
    v49 = *(v8 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_1E58E6258((v49 > 1), v50 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v51;
    v52 = &v8[16 * v50];
    *(v52 + 4) = v9;
    *(v52 + 5) = v7;
    v53 = *v105;
    if (!*v105)
    {
      goto LABEL_142;
    }

    if (v50)
    {
      while (1)
      {
        v54 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v55 = *(v8 + 4);
          v56 = *(v8 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_74:
          if (v58)
          {
            goto LABEL_120;
          }

          v71 = &v8[16 * v51];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_123;
          }

          v77 = &v8[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_127;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v51 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v81 = &v8[16 * v51];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_88:
        if (v76)
        {
          goto LABEL_122;
        }

        v84 = &v8[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_125;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_95:
        v92 = v54 - 1;
        if (v54 - 1 >= v51)
        {
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v93 = *&v8[16 * v92 + 32];
        v94 = *&v8[16 * v54 + 40];
        sub_1E591AC90((*v5 + 56 * v93), (*v5 + 56 * *&v8[16 * v54 + 32]), *v5 + 56 * v94, v53);
        if (v4)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E5A21290(v8);
        }

        if (v92 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v95 = &v8[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        result = sub_1E5A21204(v54);
        v51 = *(v8 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v8[16 * v51 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_118;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_119;
      }

      v66 = &v8[16 * v51];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_121;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_124;
      }

      if (v70 >= v62)
      {
        v88 = &v8[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_128;
        }

        if (v57 < v91)
        {
          v54 = v51 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v35 = *v5;
  v36 = *v5 + 56 * v7 - 56;
  v103 = v9;
  v37 = v9 - v7;
LABEL_43:
  v38 = v35 + 56 * v7;
  v39 = *(v38 + 40);
  v40 = *(v38 + 48);
  v41 = v37;
  v42 = v36;
  while (1)
  {
    v43 = v39 == *(v42 + 40) && v40 == *(v42 + 48);
    if (v43 || (result = sub_1E5A2C114(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v36 += 56;
      --v37;
      if (v7 != v34)
      {
        goto LABEL_43;
      }

      v7 = v34;
      v5 = a3;
      v9 = v103;
      goto LABEL_54;
    }

    if (!v35)
    {
      break;
    }

    v44 = *(v42 + 56);
    v45 = *(v42 + 72);
    v39 = *(v42 + 96);
    v40 = *(v42 + 104);
    v46 = *(v42 + 16);
    *(v42 + 56) = *v42;
    v47 = *(v42 + 80);
    *(v42 + 72) = v46;
    *(v42 + 88) = *(v42 + 32);
    *(v42 + 104) = *(v42 + 48);
    *v42 = v44;
    *(v42 + 16) = v45;
    *(v42 + 24) = v47;
    *(v42 + 40) = v39;
    *(v42 + 48) = v40;
    v42 -= 56;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1E591A9F0(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 72;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 72;
  if (v9 < v11)
  {
    if (__dst != __src || &__src[72 * v9] <= __dst)
    {
      memmove(__dst, __src, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 < 72 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v13 = *(v6 + 6) == *(v4 + 6) && *(v6 + 7) == *(v4 + 7);
      if (v13 || (sub_1E5A2C114() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 72;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 72;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 72;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v14, 0x48uLL);
    goto LABEL_17;
  }

  if (__dst != a2 || &a2[72 * v11] <= __dst)
  {
    memmove(__dst, a2, 72 * v11);
  }

  v12 = &v4[72 * v11];
  if (v10 >= 72 && v6 > v7)
  {
    do
    {
      v5 -= 72;
      while (1)
      {
        v15 = *(v12 - 3) == *(v6 - 3) && *(v12 - 2) == *(v6 - 2);
        if (!v15 && (sub_1E5A2C114() & 1) != 0)
        {
          break;
        }

        v16 = (v12 - 72);
        if (v5 + 72 != v12)
        {
          memmove(v5, v12 - 72, 0x48uLL);
        }

        v5 -= 72;
        v12 -= 72;
        if (v16 <= v4)
        {
          v12 = v16;
          goto LABEL_41;
        }
      }

      v17 = v6 - 72;
      if (v5 + 72 != v6)
      {
        memmove(v5, v6 - 72, 0x48uLL);
      }

      if (v12 <= v4)
      {
        break;
      }

      v6 -= 72;
    }

    while (v17 > v7);
    v6 = v17;
  }

LABEL_41:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[72 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

uint64_t sub_1E591AC90(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = *(v6 + 5) == *(v4 + 5) && *(v6 + 6) == *(v4 + 6);
      if (!v17 && (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v17 = v7 == v4;
      v4 += 56;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 56;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v17 = v7 == v6;
    v6 += 56;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v15;
    *(v7 + 2) = v16;
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[56 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[56 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_24:
    v5 -= 56;
    do
    {
      v18 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
      if (!v18 && (sub_1E5A2C114() & 1) != 0)
      {
        v23 = v6 - 56;
        if ((v5 + 56) != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 40);
          v26 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v25;
          *(v5 + 32) = v26;
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 56, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v19 = v12 - 56;
      if ((v5 + 56) != v12)
      {
        v20 = *v19;
        v21 = *(v12 - 40);
        v22 = *(v12 - 24);
        *(v5 + 48) = *(v12 - 1);
        *(v5 + 16) = v21;
        *(v5 + 32) = v22;
        *v5 = v20;
      }

      v5 -= 56;
      v12 -= 56;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_39:
  v27 = (v12 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[56 * v27])
  {
    memmove(v6, v4, 56 * v27);
  }

  return 1;
}

unint64_t sub_1E591AFC4()
{
  result = qword_1ECFFD730;
  if (!qword_1ECFFD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD730);
  }

  return result;
}

unint64_t sub_1E591B018()
{
  result = qword_1ECFFD738;
  if (!qword_1ECFFD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD738);
  }

  return result;
}

unint64_t sub_1E591B0D0()
{
  result = qword_1ECFFD748;
  if (!qword_1ECFFD748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
    sub_1E58CD164(&qword_1ECFFC0F8, &qword_1ECFFC0F0, &unk_1E5A37CB0);
    sub_1E591B4FC(&qword_1ECFFD750, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD748);
  }

  return result;
}

uint64_t sub_1E591B1B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD740, &unk_1E5A35D60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E591B228()
{
  result = qword_1ECFFD758;
  if (!qword_1ECFFD758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD668, &qword_1E5A35C00);
    sub_1E591B2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD758);
  }

  return result;
}

unint64_t sub_1E591B2AC()
{
  result = qword_1ECFFD760;
  if (!qword_1ECFFD760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD740, &unk_1E5A35D60);
    sub_1E591B4FC(&qword_1ECFFD768, MEMORY[0x1E697D6D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD760);
  }

  return result;
}

uint64_t sub_1E591B370@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return sub_1E5918C48(v1[8], a1);
}

uint64_t sub_1E591B43C()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_1E59168DC(v0[4], v0[5], v0[6], v0[7], (v0 + 8), (v0 + 15));
}

uint64_t sub_1E591B4FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E591B544@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return sub_1E5917CC0(*(v1 + 32), *(v1 + 56), *(v1 + 64), *(v1 + 16), *(v1 + 24), a1);
}

unint64_t sub_1E591B558()
{
  result = qword_1ECFFD7B0;
  if (!qword_1ECFFD7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
    sub_1E58CD164(&qword_1ECFFD7B8, &qword_1ECFFD7C0, &qword_1E5A35E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD7B0);
  }

  return result;
}

uint64_t sub_1E591B610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E591B678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E591B6D8()
{
  result = qword_1ECFFD7D0;
  if (!qword_1ECFFD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD7D0);
  }

  return result;
}

uint64_t sub_1E591B72C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t WorkoutPlanSchedule.itemsByWeekday.getter()
{
  v1 = sub_1E591B840(*v0);
  if (*(v1 + 16))
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
    v3 = sub_1E5A2BF14();
    v1 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v5 = v3;
  sub_1E591C604(v1, 1, &v5);
  return v5;
}

uint64_t sub_1E591B840(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1E590DE08(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  v6 = sub_1E5A2BDE4();
  v7 = 0;
  v26 = *(a1 + 36);
  v24 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v25 = v7;
    v10 = *(*(a1 + 48) + 32 * v6);
    v11 = *(*(a1 + 56) + 8 * v6);
    if (v10 > 6)
    {
      goto LABEL_28;
    }

    v12 = *(v27 + 16);
    v13 = *(v27 + 24);

    if (v12 >= v13 >> 1)
    {
      sub_1E590DE08((v13 > 1), v12 + 1, 1);
    }

    *(v27 + 16) = v12 + 1;
    v14 = v27 + 16 * v12;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_25;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_26;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1E5901D04(v6, v26, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1E5901D04(v6, v26, 0);
    }

LABEL_4:
    v7 = v25 + 1;
    v6 = v8;
    if (v25 + 1 == v24)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  sub_1E5A2BE64();

  v23 = sub_1E5A2C0F4();
  MEMORY[0x1E69327A0](v23);

  result = sub_1E5A2BEE4();
  __break(1u);
  return result;
}

uint64_t sub_1E591BB44(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutPlanScheduledItem();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v35 = v1;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1E590DE68(0, v7, 0);
    v44 = v45;
    v9 = a1 + 64;
    v10 = -1 << *(a1 + 32);
    result = sub_1E5A2BDE4();
    v11 = result;
    v12 = 0;
    v36 = a1 + 72;
    v37 = v7;
    v38 = a1;
    v40 = a1 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      v15 = 1 << v11;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_30;
      }

      v16 = *(a1 + 36);
      v17 = *(*(a1 + 56) + 8 * v11);
      v18 = *(v17 + 16);
      v43 = v12;
      if (v18)
      {
        v41 = 1 << v11;
        v42 = v16;
        v19 = v39;
        v20 = v17 + ((*(v39 + 80) + 32) & ~*(v39 + 80));

        v21 = 0;
        v22 = *(v19 + 72);
        while (1)
        {
          sub_1E58F2504(v20, v6);
          v23 = *v6;
          result = sub_1E58F2568(v6);
          v24 = __OFADD__(v21, v23);
          v21 += v23;
          if (v24)
          {
            break;
          }

          v20 += v22;
          if (!--v18)
          {

            v7 = v37;
            a1 = v38;
            v16 = v42;
            v12 = v43;
            v15 = v41;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v21 = 0;
LABEL_14:
      v25 = v44;
      v45 = v44;
      v27 = *(v44 + 16);
      v26 = *(v44 + 24);
      if (v27 >= v26 >> 1)
      {
        v41 = v15;
        v42 = v16;
        result = sub_1E590DE68((v26 > 1), v27 + 1, 1);
        v15 = v41;
        v16 = v42;
        v12 = v43;
        v25 = v45;
      }

      *(v25 + 16) = v27 + 1;
      *(v25 + 8 * v27 + 32) = v21;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_31;
      }

      v9 = v40;
      v28 = *(v40 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_32;
      }

      if (v16 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v29 = v28 & (-2 << (v11 & 0x3F));
      v44 = v25;
      if (v29)
      {
        v13 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v13 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_1E5901D04(v11, v16, 0);
            v13 = __clz(__rbit64(v33)) + v30;
            goto LABEL_25;
          }
        }

        result = sub_1E5901D04(v11, v16, 0);
LABEL_25:
        v12 = v43;
      }

      ++v12;
      v11 = v13;
      if (v12 == v7)
      {
        return v44;
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

char *WorkoutPlanSchedule.modalityIdentifiers()()
{
  v41 = type metadata accessor for WorkoutPlanScheduledItem();
  v37 = *(v41 - 8);
  v1 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = *v0 + 64;
  v6 = 1 << *(*v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*v0 + 64);
  v34 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v35 = v5;
  v36 = v4;
  while (v8)
  {
LABEL_10:
    v40 = v8;
    v13 = *(*(v4 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
    v14 = *(v13 + 16);
    if (v14)
    {
      v39 = v11;
      v42 = MEMORY[0x1E69E7CC0];

      sub_1E590DEA8(0, v14, 0);
      v15 = v42;
      v16 = *(v37 + 80);
      v38 = v13;
      v17 = v13 + ((v16 + 32) & ~v16);
      v18 = *(v37 + 72);
      do
      {
        sub_1E58F2504(v17, v3);
        v19 = &v3[*(v41 + 28)];
        v20 = *v19;
        v21 = *(v19 + 1);

        sub_1E58F2568(v3);
        v42 = v15;
        v23 = *(v15 + 16);
        v22 = *(v15 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1E590DEA8((v22 > 1), v23 + 1, 1);
          v15 = v42;
        }

        *(v15 + 16) = v23 + 1;
        v24 = v15 + 16 * v23;
        *(v24 + 32) = v20;
        *(v24 + 40) = v21;
        v17 += v18;
        --v14;
      }

      while (v14);

      v5 = v35;
      v4 = v36;
      v11 = v39;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v25 = *(v15 + 16);
    v26 = *(v11 + 16);
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_31;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v27 > *(v11 + 24) >> 1)
    {
      if (v26 <= v27)
      {
        v28 = v26 + v25;
      }

      else
      {
        v28 = v26;
      }

      result = sub_1E58E6F44(result, v28, 1, v11);
      v11 = result;
    }

    v8 = (v40 - 1) & v40;
    if (*(v15 + 16))
    {
      if ((*(v11 + 24) >> 1) - *(v11 + 16) < v25)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v25)
      {
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, v25);
        v31 = v29 + v25;
        if (v30)
        {
          goto LABEL_34;
        }

        *(v11 + 16) = v31;
      }
    }

    else
    {

      if (v25)
      {
        goto LABEL_32;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v34)
    {

      v32 = sub_1E591C978(v11);

      return v32;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

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

uint64_t WorkoutPlanSchedule.durationRange.getter()
{
  v1 = *v0;

  v3 = sub_1E591BB44(v2);

  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v6 = *(v3 + 32);
  v7 = v5 - 1;
  if (v5 == 1)
  {
LABEL_6:

    return v6;
  }

  if (v5 >= 5)
  {
    v10 = vdupq_n_s64(v6);
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v11 = (v3 + 56);
    v12 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = v10;
    do
    {
      v10 = vbslq_s8(vcgtq_s64(v10, v11[-1]), v11[-1], v10);
      v13 = vbslq_s8(vcgtq_s64(v13, *v11), *v11, v13);
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    v14 = vbslq_s8(vcgtq_s64(v13, v10), v10, v13);
    v15 = vextq_s8(v14, v14, 8uLL).u64[0];
    v9 = vbsl_s8(vcgtd_s64(v15, v14.i64[0]), *v14.i8, v15);
    if (v7 == (v7 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 1;
    v9 = *(v3 + 32);
  }

  v16 = v5 - v8;
  v17 = (v4 + 8 * v8 + 32);
  do
  {
    v19 = *v17++;
    v18 = v19;
    if (*&v19 < *&v9)
    {
      v9 = v18;
    }

    --v16;
  }

  while (v16);
LABEL_14:
  if (v5 >= 5)
  {
    v20 = v7 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v21 = vdupq_n_s64(v6);
    v22 = (v4 + 56);
    v23 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = v21;
    do
    {
      v21 = vbslq_s8(vcgtq_s64(v21, v22[-1]), v21, v22[-1]);
      v24 = vbslq_s8(vcgtq_s64(v24, *v22), v24, *v22);
      v22 += 2;
      v23 -= 4;
    }

    while (v23);
    v25 = vbslq_s8(vcgtq_s64(v21, v24), v21, v24);
    v26 = vextq_s8(v25, v25, 8uLL).u64[0];
    v6 = vbsl_s8(vcgtd_s64(v25.i64[0], v26), *v25.i8, v26);
    if (v7 == (v7 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v20 = 1;
  }

  v27 = v5 - v20;
  v28 = (v4 + 8 * v20 + 32);
  do
  {
    v30 = *v28++;
    v29 = v30;
    if (v6 <= v30)
    {
      v6 = v29;
    }

    --v27;
  }

  while (v27);
LABEL_23:

  if (v6 >= *&v9)
  {
    return v9;
  }

  __break(1u);
  return result;
}

int64_t sub_1E591C344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v10, v9.i64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

int64_t sub_1E591C3F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1E591C4AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E591CBE8();
  result = MEMORY[0x1E6932930](v2, &type metadata for WorkoutPlanModalityPreference, v3);
  v5 = 0;
  v18 = result;
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
    v12 = (*(a1 + 56) + ((v10 << 11) | (32 * v11)));
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];

    sub_1E592D0A8(&v17, v13, v14, v15, v16);
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

      return v18;
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

uint64_t sub_1E591C604(uint64_t a1, char a2, void *a3)
{
  v46 = *(a1 + 16);
  if (!v46)
  {
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = sub_1E58EF8CC(v6);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1E59007C8();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7F0, &unk_1E5A36530);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x1E69331F0](v20);
    }

    goto LABEL_29;
  }

  sub_1E5900F30(v13, a2 & 1);
  v17 = *a3;
  v18 = sub_1E58EF8CC(v6);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_28:
    sub_1E5A2C134();
    __break(1u);
LABEL_29:
    sub_1E5A2BE64();
    MEMORY[0x1E69327A0](0xD00000000000001BLL, 0x80000001E5A46670);
    sub_1E5A2BED4();
    MEMORY[0x1E69327A0](39, 0xE100000000000000);
    result = sub_1E5A2BEE4();
    __break(1u);
    return result;
  }

  v14 = v18;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v23 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v23[6] + v14) = v6;
  *(v23[7] + 8 * v14) = v7;
  v24 = v23[2];
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23[2] = v26;
  if (v46 != 1)
  {
    v27 = (a1 + 56);
    v28 = 1;
    while (v28 < *(a1 + 16))
    {
      v29 = *(v27 - 8);
      v30 = *v27;
      v31 = *a3;
      v32 = sub_1E58EF8CC(v29);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_25;
      }

      v37 = v32;
      v38 = v33;
      v39 = v31[3];

      if (v39 < v36)
      {
        sub_1E5900F30(v36, 1);
        v40 = *a3;
        v41 = sub_1E58EF8CC(v29);
        if ((v38 & 1) != (v42 & 1))
        {
          goto LABEL_28;
        }

        v37 = v41;
      }

      if (v38)
      {
        goto LABEL_9;
      }

      v43 = *a3;
      *(*a3 + 8 * (v37 >> 6) + 64) |= 1 << v37;
      *(v43[6] + v37) = v29;
      *(v43[7] + 8 * v37) = v30;
      v44 = v43[2];
      v25 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      ++v28;
      v43[2] = v45;
      v27 += 2;
      if (v46 == v28)
      {
      }
    }

    goto LABEL_27;
  }
}

uint64_t sub_1E591C978(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E6932930](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1E592CD80(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1E591CA10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E591CB94();
  result = MEMORY[0x1E6932930](v2, &type metadata for WorkoutPlanModalitySelection, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_1E592D2F4(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1E591CAE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E58B1CF0();
  result = MEMORY[0x1E6932930](v2, &type metadata for WorkoutPlanItemContext, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      sub_1E58B413C();
      sub_1E592D880(&v9, v8, v7, v6);
      sub_1E591CB8C();
      v5 += 24;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_1E591CB94()
{
  result = qword_1ECFFD7E0;
  if (!qword_1ECFFD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD7E0);
  }

  return result;
}

unint64_t sub_1E591CBE8()
{
  result = qword_1ECFFD7E8;
  if (!qword_1ECFFD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD7E8);
  }

  return result;
}

uint64_t sub_1E591CC68@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7F8, &unk_1E5A35EE0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - v7;
  sub_1E5A2B8A4();
  sub_1E5A2B894();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v9 = swift_allocObject();
  v38 = xmmword_1E5A2C930;
  *(v9 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4D8 != -1)
  {
    swift_once();
  }

  *(v9 + 32) = sub_1E5A2B744();
  *(v9 + 40) = v10;
  if (qword_1ECFFB4E0 != -1)
  {
    swift_once();
  }

  *(v9 + 48) = sub_1E5A2B744();
  *(v9 + 56) = v11;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v12 = *(sub_1E5A2ABB4() + 20);
  v13 = *MEMORY[0x1E697F468];
  v14 = sub_1E5A2A9B4();
  (*(*(v14 - 8) + 104))(&v8[v12], v13, v14);
  sub_1E5A2AAA4();
  *v8 = v15;
  *(v8 + 1) = v16;
  *(v8 + 2) = v17;
  *(v8 + 3) = v18;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4B8 != -1)
  {
    swift_once();
  }

  *(v19 + 32) = sub_1E5A2B744();
  *(v19 + 40) = v20;
  if (qword_1ECFFB4B0 != -1)
  {
    swift_once();
  }

  *(v19 + 48) = sub_1E5A2B744();
  *(v19 + 56) = v21;
  if (qword_1ECFFB490 != -1)
  {
    swift_once();
  }

  *(v19 + 64) = sub_1E5A2B744();
  *(v19 + 72) = v22;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD800, &qword_1E5A35EF0);
  v24 = &v8[*(v23 + 52)];
  v25 = v43;
  *v24 = v42;
  *(v24 + 1) = v25;
  *(v24 + 4) = v44;
  *&v8[*(v23 + 56)] = 256;
  sub_1E5A2A5F4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v26 = &v8[*(v2 + 36)];
  v27 = v46;
  *v26 = v45;
  *(v26 + 1) = v27;
  *(v26 + 2) = v47;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v28 = swift_allocObject();
  *(v28 + 16) = v38;
  if (qword_1ECFFB4E8 != -1)
  {
    swift_once();
  }

  sub_1E5A2B434();
  *(v28 + 32) = sub_1E5A2B744();
  *(v28 + 40) = v29;
  sub_1E5A2B434();
  *(v28 + 48) = sub_1E5A2B744();
  *(v28 + 56) = v30;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v31 = v39;
  sub_1E591D234(v8, v6);
  v32 = v48;
  *a1 = v31;
  v33 = v40;
  *(a1 + 24) = v41;
  *(a1 + 8) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD808, &qword_1E5A35EF8);
  sub_1E591D234(v6, a1 + *(v34 + 48));
  v35 = a1 + *(v34 + 64);
  *v35 = v32;
  v36 = v49;
  *(v35 + 24) = v50;
  *(v35 + 8) = v36;

  sub_1E591D2A4(v8);

  sub_1E591D2A4(v6);
}

uint64_t sub_1E591D1F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5A2B7E4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = sub_1E591CC68;
  a1[3] = 0;
  return result;
}

uint64_t sub_1E591D234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7F8, &unk_1E5A35EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E591D2A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7F8, &unk_1E5A35EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E591D30C()
{
  result = qword_1ECFFD810;
  if (!qword_1ECFFD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD818, &unk_1E5A35F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD810);
  }

  return result;
}

uint64_t static WorkoutPlanModality.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanModality.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t WorkoutPlanModality.imageName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t WorkoutPlanModality.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t WorkoutPlanModality.init(activityTypes:identifier:imageName:kind:name:supportedFilterKinds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *a6;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v10;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t sub_1E591D470()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 1684957547;
  v4 = 1701667182;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x6D614E6567616D69;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1E591D534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E591E714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E591D55C(uint64_t a1)
{
  v2 = sub_1E591D9EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E591D598(uint64_t a1)
{
  v2 = sub_1E591D9EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E591D5D4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E591D604(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E591D64C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E591D6A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E591D6C4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t WorkoutPlanModality.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD820, &qword_1E5A35F10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v23 = v1[2];
  v24 = v9;
  v21 = v1[4];
  v22 = v11;
  v20 = *(v1 + 40);
  v12 = v1[7];
  v18 = v1[6];
  v19 = v12;
  v17 = v1[8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E591D9EC();

  sub_1E5A2C224();
  v26 = v10;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD830, &qword_1E5A35F18);
  sub_1E591DF7C(&qword_1ECFFD838);
  sub_1E5A2C0B4();
  if (v2)
  {
  }

  else
  {
    v14 = v20;

    LOBYTE(v26) = 1;
    sub_1E5A2C064();
    LOBYTE(v26) = 2;
    sub_1E5A2C064();
    LOBYTE(v26) = v14;
    v25 = 3;
    sub_1E591DA40();
    sub_1E5A2C0B4();
    LOBYTE(v26) = 4;
    sub_1E5A2C064();
    v26 = v17;
    v25 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD848, &qword_1E5A35F20);
    sub_1E591E03C(&qword_1ECFFD850, sub_1E591DA94);
    sub_1E5A2C0B4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E591D9EC()
{
  result = qword_1ECFFD828;
  if (!qword_1ECFFD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD828);
  }

  return result;
}

unint64_t sub_1E591DA40()
{
  result = qword_1ECFFD840;
  if (!qword_1ECFFD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD840);
  }

  return result;
}

unint64_t sub_1E591DA94()
{
  result = qword_1ECFFD858;
  if (!qword_1ECFFD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD858);
  }

  return result;
}

uint64_t WorkoutPlanModality.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD860, &qword_1E5A35F28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E591D9EC();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD830, &qword_1E5A35F18);
  LOBYTE(v32) = 0;
  sub_1E591DF7C(&qword_1ECFFD868);
  sub_1E5A2BFE4();
  v11 = v37[0];
  LOBYTE(v37[0]) = 1;
  v29 = sub_1E5A2BF94();
  v31 = v12;
  LOBYTE(v37[0]) = 2;
  v13 = sub_1E5A2BF94();
  v30 = v14;
  v27 = v13;
  LOBYTE(v32) = 3;
  sub_1E591DFE8();
  sub_1E5A2BFE4();
  v26 = LOBYTE(v37[0]);
  LOBYTE(v37[0]) = 4;
  v25 = sub_1E5A2BF94();
  v28 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD848, &qword_1E5A35F20);
  v42 = 5;
  sub_1E591E03C(&qword_1ECFFD878, sub_1E591E0B4);
  sub_1E5A2BFE4();
  (*(v6 + 8))(v9, v5);
  v16 = v43;
  v17 = v29;
  *&v32 = v11;
  *(&v32 + 1) = v29;
  v19 = v30;
  v18 = v31;
  *&v33 = v31;
  *(&v33 + 1) = v27;
  *&v34 = v30;
  BYTE8(v34) = v26;
  v20 = v28;
  *&v35 = v25;
  *(&v35 + 1) = v28;
  v36 = v43;
  *(a2 + 64) = v43;
  v21 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v21;
  v22 = v33;
  *a2 = v32;
  *(a2 + 16) = v22;
  sub_1E591B3E0(&v32, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v11;
  v37[1] = v17;
  v37[2] = v18;
  v37[3] = v27;
  v37[4] = v19;
  v38 = v26;
  v39 = v25;
  v40 = v20;
  v41 = v16;
  return sub_1E58C3164(v37);
}

uint64_t sub_1E591DF7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD830, &qword_1E5A35F18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E591DFE8()
{
  result = qword_1ECFFD870;
  if (!qword_1ECFFD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD870);
  }

  return result;
}

uint64_t sub_1E591E03C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD848, &qword_1E5A35F20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E591E0B4()
{
  result = qword_1ECFFD880;
  if (!qword_1ECFFD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD880);
  }

  return result;
}

uint64_t WorkoutPlanModality.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  v9 = v1[6];
  v14 = v1[8];
  MEMORY[0x1E6932DE0](*(*v1 + 16));
  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = (v3 + 32);
    do
    {
      v12 = *v11++;
      MEMORY[0x1E6932DE0](v12);
      --v10;
    }

    while (v10);
  }

  sub_1E5A2BB74();
  sub_1E5A2BB74();
  WorkoutPlanCatalogModalityKind.rawValue.getter();
  sub_1E5A2BB74();

  sub_1E5A2BB74();

  return sub_1E58BAD7C(a1, v14);
}

uint64_t WorkoutPlanModality.hashValue.getter()
{
  sub_1E5A2C1B4();
  WorkoutPlanModality.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E591E284()
{
  sub_1E5A2C1B4();
  WorkoutPlanModality.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E591E2C8()
{
  sub_1E5A2C1B4();
  WorkoutPlanModality.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC8ModalityV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v23 = *(a1 + 48);
  v19 = *(a1 + 64);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v21 = *(a1 + 56);
  v22 = *(a2 + 48);
  v20 = *(a2 + 56);
  v18 = *(a2 + 64);
  if ((sub_1E595C8C0(*a1, *a2) & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1E5A2C114() & 1) == 0 || (v3 != v9 || v5 != v10) && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v12 = WorkoutPlanCatalogModalityKind.rawValue.getter();
  v14 = v13;
  if (v12 == WorkoutPlanCatalogModalityKind.rawValue.getter() && v14 == v15)
  {
  }

  else
  {
    v16 = sub_1E5A2C114();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v23 != v22 || v21 != v20) && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  return sub_1E58BAD74(v19, v18);
}

unint64_t sub_1E591E4D0()
{
  result = qword_1ECFFD888;
  if (!qword_1ECFFD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD888);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E591E554(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1E591E59C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E591E610()
{
  result = qword_1ECFFD890;
  if (!qword_1ECFFD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD890);
  }

  return result;
}

unint64_t sub_1E591E668()
{
  result = qword_1ECFFD898;
  if (!qword_1ECFFD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD898);
  }

  return result;
}

unint64_t sub_1E591E6C0()
{
  result = qword_1ECFFD8A0;
  if (!qword_1ECFFD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD8A0);
  }

  return result;
}

uint64_t sub_1E591E714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xED00007365707954;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A466F0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

BOOL sub_1E591E938(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1E591E968(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    v25 = MEMORY[0x1E69E7CC0];
    while (v4 < v2)
    {
      v6 = v5 + 72 * v4;
      v7 = *(v6 + 48);
      v29 = *(v6 + 32);
      v30 = v7;
      v31 = *(v6 + 64);
      v8 = *(v6 + 16);
      v27 = *v6;
      v28 = v8;
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_31;
      }

      result = type metadata accessor for WorkoutPlanCreationLocalState();
      if (*(a2 + *(result + 112)))
      {
        v32 = *(a2 + *(result + 112));
        sub_1E591B3E0(&v27, v26);

        v10 = WorkoutPlanSchedule.modalityIdentifiers()();

        v11 = 0;
        v12 = 1 << v10[32];
        if (v12 < 64)
        {
          v13 = ~(-1 << v12);
        }

        else
        {
          v13 = -1;
        }

        v14 = v13 & *(v10 + 7);
        v15 = (v12 + 63) >> 6;
        while (v14)
        {
LABEL_17:
          v17 = (*(v10 + 6) + ((v11 << 10) | (16 * __clz(__rbit64(v14)))));
          if (*v17 != *(&v27 + 1) || v17[1] != v28)
          {
            v14 &= v14 - 1;
            result = sub_1E5A2C114();
            if ((result & 1) == 0)
            {
              continue;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1E58E6CF4(0, *(v25 + 16) + 1, 1, v25);
            v25 = result;
          }

          v20 = *(v25 + 16);
          v19 = *(v25 + 24);
          if (v20 >= v19 >> 1)
          {
            result = sub_1E58E6CF4((v19 > 1), v20 + 1, 1, v25);
            v25 = result;
          }

          *(v25 + 16) = v20 + 1;
          v21 = v25 + 72 * v20;
          *(v21 + 32) = v27;
          v22 = v28;
          v23 = v29;
          v24 = v30;
          *(v21 + 96) = v31;
          *(v21 + 64) = v23;
          *(v21 + 80) = v24;
          *(v21 + 48) = v22;
          goto LABEL_4;
        }

        while (1)
        {
          v16 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v16 >= v15)
          {

            result = sub_1E58C3164(&v27);
            goto LABEL_4;
          }

          v14 = *&v10[8 * v16 + 56];
          ++v11;
          if (v14)
          {
            v11 = v16;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:
      if (v4 == v2)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E591EBAC(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_1E58BAAC0(v12, v13, v14))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(a1 + 48) + 24 * (v10 | (v9 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    sub_1E5932970(*v11, v13, v14);
    v15 = sub_1E593052C(v12, v13, v14);
    sub_1E5932988(v15, v16, v17);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E591ECCC(uint64_t a1, uint64_t a2)
{
  sub_1E5A2C1B4();
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v3 = 0;
        goto LABEL_17;
      case 1:
        v3 = 1;
        goto LABEL_17;
      case 2:
        v3 = 3;
LABEL_17:
        MEMORY[0x1E6932DE0](v3);
        return sub_1E5A2C204();
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_17;
    }

    if (a2 == 5)
    {
      v3 = 6;
      goto LABEL_17;
    }

    if (a2 == 6)
    {
      v3 = 7;
      goto LABEL_17;
    }
  }

  MEMORY[0x1E6932DE0](2);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E591EDD4()
{
  v1 = v0[1];
  if (v1 <= 2)
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        return MEMORY[0x1E6932DE0](v2);
      case 1:
        v2 = 1;
        return MEMORY[0x1E6932DE0](v2);
      case 2:
        v2 = 3;
        return MEMORY[0x1E6932DE0](v2);
    }
  }

  else
  {
    if (v1 <= 4)
    {
      if (v1 == 3)
      {
        v2 = 4;
      }

      else
      {
        v2 = 5;
      }

      return MEMORY[0x1E6932DE0](v2);
    }

    if (v1 == 5)
    {
      v2 = 6;
      return MEMORY[0x1E6932DE0](v2);
    }

    if (v1 == 6)
    {
      v2 = 7;
      return MEMORY[0x1E6932DE0](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1E6932DE0](2);

  return sub_1E5A2BB74();
}

uint64_t sub_1E591EEBC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5A2C1B4();
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_17;
      case 1:
        v3 = 1;
        goto LABEL_17;
      case 2:
        v3 = 3;
LABEL_17:
        MEMORY[0x1E6932DE0](v3);
        return sub_1E5A2C204();
    }
  }

  else
  {
    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_17;
    }

    if (v2 == 5)
    {
      v3 = 6;
      goto LABEL_17;
    }

    if (v2 == 6)
    {
      v3 = 7;
      goto LABEL_17;
    }
  }

  MEMORY[0x1E6932DE0](2);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

__n128 WorkoutPlanCreationFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

int *WorkoutPlanCreationFeature.reduce(localState:sharedState:sideEffects:action:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v430 = a3;
  v426 = a2;
  v431 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v428 = *(v6 - 8);
  v429 = v6;
  v7 = *(v428 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v424 = &v402 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v427 = &v402 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v402 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v402 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v402 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v402 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = (&v402 - v25);
  v425 = 0;
  v27 = type metadata accessor for WorkoutPlanCreationAction();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v402 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v4[5];
  v460 = v4[4];
  v461 = v31;
  v32 = v4[7];
  v462 = v4[6];
  v463 = v32;
  v33 = v4[1];
  v456 = *v4;
  v457 = v33;
  v34 = v4[3];
  v458 = v4[2];
  v459 = v34;
  sub_1E5932C30(a4, v30, type metadata accessor for WorkoutPlanCreationAction);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      sub_1E5932F40(v30, type metadata accessor for WorkoutPlanCreationAction);
      result = type metadata accessor for WorkoutPlanCreationLocalState();
      *(v431 + result[24]) = 1;
      return result;
    case 2:
      v97 = *v30;
      v96 = *(v30 + 1);
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v99 = v98[12];
      v100 = v98[16];
      v101 = v98[20];
      v102 = v427;
      v103 = (v427 + v98[24]);
      *&v432 = v97;
      *(&v432 + 1) = v96;
      sub_1E59307FC(&v456, &v443);
      sub_1E59306E4();

      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v104 = *MEMORY[0x1E6999B60];
      v105 = sub_1E5A2B924();
      (*(*(v105 - 8) + 104))(v102 + v100, v104, v105);
      v106 = *MEMORY[0x1E6999B40];
      v107 = sub_1E5A2B914();
      (*(*(v107 - 8) + 104))(v102 + v101, v106, v107);
      v108 = swift_allocObject();
      *(v108 + 16) = v97;
      *(v108 + 24) = v96;
      v109 = v453;
      *(v108 + 96) = v452;
      *(v108 + 112) = v109;
      v110 = v455;
      *(v108 + 128) = v454;
      *(v108 + 144) = v110;
      v111 = v449;
      *(v108 + 32) = v448;
      *(v108 + 48) = v111;
      v112 = v451;
      *(v108 + 64) = v450;
      *(v108 + 80) = v112;
      *v103 = &unk_1E5A36280;
      v103[1] = v108;
      v114 = v428;
      v113 = v429;
      (*(v428 + 104))(v102, *MEMORY[0x1E6999AD8], v429);
      v78 = v430;
      v79 = *v430;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_1E58E7254(0, v79[2] + 1, 1, v79);
      }

      v116 = v79[2];
      v115 = v79[3];
      if (v116 >= v115 >> 1)
      {
        v79 = sub_1E58E7254(v115 > 1, v116 + 1, 1, v79);
      }

      v79[2] = v116 + 1;
      result = (*(v114 + 32))(v79 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v116, v427, v113);
      goto LABEL_278;
    case 3:
      v156 = *v30;
      v157 = *(v30 + 1);
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      sub_1E5923B3C(v431, v156, v157, v430);

    case 4:
      v57 = *(v30 + 3);
      v58 = *(v30 + 5);
      v445 = *(v30 + 4);
      v446 = v58;
      v59 = *(v30 + 3);
      v443 = *(v30 + 2);
      v444 = v59;
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      v60 = *(v30 + 5);
      v434 = v445;
      v435 = v60;
      v61 = *v30;
      v62 = *(v30 + 1);
      v63 = *(v30 + 2);
      v64 = *(v30 + 3);
      v447 = *(v30 + 12);
      v437 = v61;
      v438 = v62;
      v439 = v63;
      v440 = v64;
      v436 = *(v30 + 12);
      v432 = v443;
      v433 = v57;
      sub_1E59240F0(v431, &v437, &v432);
      sub_1E58C3164(&v443);

    case 5:
      v51 = *v30;
      result = type metadata accessor for WorkoutPlanCreationLocalState();
      v52 = result[8];
      goto LABEL_37;
    case 6:
      v51 = *v30;
      result = type metadata accessor for WorkoutPlanCreationLocalState();
      v52 = result[9];
      goto LABEL_37;
    case 7:
      v53 = *v30;
      if (v30[1] == 3)
      {
        v54 = 0;
        v55 = 0;
        v56 = v431;
      }

      else
      {
        LOBYTE(v448) = v30[1];
        v183 = type metadata accessor for WorkoutPlanCreationLocalState();
        v56 = v431;
        v184 = *(*(v431 + *(v183 + 76)) + 16);
        v185 = type metadata accessor for WorkoutPlanCreationState();
        v54 = WorkoutPlanCreationError.localizedError(selectModalitiesCount:locale:)(v184, v426 + *(v185 + 24));
        v55 = v186;
      }

      v187 = type metadata accessor for WorkoutPlanCreationLocalState();
      v188 = (v56 + *(v187 + 44));
      v189 = v188[1];

      *v188 = v54;
      v188[1] = v55;
      *(v56 + *(v187 + 40)) = v53;
      return result;
    case 8:
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB900, &qword_1E5A36290);
      v140 = &v30[*(v139 + 64)];
      v141 = *v140;
      v142 = v140[8];
      v143 = v30[*(v139 + 48)];
      sub_1E58F0054(v30, v26, &qword_1ECFFB790, &qword_1E5A2D620);
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      v144 = sub_1E59222F4(v431, v26, v143, v141, v142);
      sub_1E5922AB0(v144);
      return sub_1E58C3420(v26);
    case 9:
      v51 = *v30;
      result = type metadata accessor for WorkoutPlanCreationLocalState();
      v52 = result[20];
      goto LABEL_37;
    case 10:
      v82 = *v30;
      *(v431 + *(type metadata accessor for WorkoutPlanCreationLocalState() + 84)) = v82;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v84 = v83[12];
      v85 = v83[16];
      v86 = v83[20];
      v87 = &v17[v83[24]];
      v448 = xmmword_1E5A36200;
      sub_1E59306E4();
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v88 = *MEMORY[0x1E6999B60];
      v89 = sub_1E5A2B924();
      (*(*(v89 - 8) + 104))(&v17[v85], v88, v89);
      v90 = *MEMORY[0x1E6999B40];
      v91 = sub_1E5A2B914();
      (*(*(v91 - 8) + 104))(&v17[v86], v90, v91);
      *v87 = &unk_1E5A36288;
      *(v87 + 1) = 0;
      v93 = v428;
      v92 = v429;
      (*(v428 + 104))(v17, *MEMORY[0x1E6999AD8], v429);
      v78 = v430;
      v79 = *v430;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_1E58E7254(0, v79[2] + 1, 1, v79);
      }

      v95 = v79[2];
      v94 = v79[3];
      if (v95 >= v94 >> 1)
      {
        v79 = sub_1E58E7254(v94 > 1, v95 + 1, 1, v79);
      }

      v79[2] = v95 + 1;
      result = (*(v93 + 32))(v79 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v95, v17, v92);
      goto LABEL_278;
    case 11:
      v43 = *v30;
      v42 = *(v30 + 1);
      v45 = *(v30 + 2);
      v44 = *(v30 + 3);
      v46 = *(v30 + 6);
      v47 = *(v30 + 72);
      v48 = *(v30 + 104);
      v445 = *(v30 + 88);
      v446 = v48;
      v447 = *(v30 + 15);
      v443 = *(v30 + 56);
      v444 = v47;
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      v437 = v43;
      v438 = v42;
      v439 = v45;
      v440 = v44;
      v430 = *(v30 + 2);
      v441 = v430;
      v442 = v46;
      v49 = *(v30 + 72);
      v50 = *(v30 + 104);
      v434 = *(v30 + 88);
      v435 = v50;
      v436 = *(v30 + 15);
      v432 = *(v30 + 56);
      v433 = v49;
      sub_1E5924278(v431, &v437, &v432);
      sub_1E58C3164(&v443);

    case 12:
      v117 = *(v30 + 4);
      v451 = *(v30 + 3);
      v452 = v117;
      v118 = *(v30 + 2);
      v449 = *(v30 + 1);
      v450 = v118;
      v448 = *v30;
      v119 = v117;
      v120 = type metadata accessor for WorkoutPlanCreationLocalState();
      v121 = v431;
      v122 = (v431 + v120[6]);
      v123 = v122[3];
      v445 = v122[2];
      v446 = v123;
      v124 = v122[1];
      v443 = *v122;
      v444 = v124;
      sub_1E5931DC4(&v448, &v432);

      sub_1E58F011C(&v443);
      v125 = v449;
      *v122 = v448;
      v122[1] = v125;
      v126 = v451;
      v122[2] = v450;
      v122[3] = v126;
      v127 = v120[18];
      v128 = *(v121 + v127);

      *(v121 + v127) = v119;
      v129 = v120[27];
      v130 = *(v121 + v129);

      result = sub_1E58C3068(&v448);
      *(v121 + v129) = *(&v119 + 1);
      *(v121 + v120[13]) = 3;
      return result;
    case 13:
      v145 = *v30;
      v146 = *(v30 + 1);
      v147 = *(v30 + 2);
      v443 = *(v30 + 1);
      v444 = v147;
      v148 = *(v30 + 4);
      v445 = *(v30 + 3);
      v446 = v148;
      v149 = *(type metadata accessor for WorkoutPlanCreationLocalState() + 56);

      sub_1E58BD154(&v443, &v448);
      v150 = v431;
      v151 = *(v431 + v149);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v448 = *(v150 + v149);
      sub_1E592CBF8(&v443, v145, v146, isUniquelyReferenced_nonNull_native);

      *(v150 + v149) = v448;
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      v432 = v443;
      v433 = v444;
      v434 = v445;
      v435 = v446;
      sub_1E5928D3C(v150, &v432);
      v153 = *(type metadata accessor for EditItem() + 32);
      if (*(v150 + v153))
      {
        *&v432 = *(v150 + v153);

        sub_1E58BD154(&v443, &v448);

        v155 = sub_1E5931788(v154, &v443);
        sub_1E58BD18C(&v443);
        sub_1E591EBAC(v155);

        result = sub_1E58BD18C(&v443);
        *(v150 + v153) = v432;
      }

      else
      {

        return sub_1E58BD18C(&v443);
      }

      return result;
    case 14:
      v159 = *v30;
      v161 = *(v30 + 1);
      v160 = *(v30 + 2);
      v162 = *(v30 + 3);
      v163 = v30[32];
      v164 = *(v30 + 5);
      v165 = *(v30 + 6);
      v415 = *(v30 + 7);
      v416 = *(v30 + 8);
      v417 = v160;
      v166 = *(v30 + 9);
      v14 = *(v30 + 10);
      v426 = v165;
      v427 = v166;
      v167 = *(v30 + 12);
      v413 = *(v30 + 11);
      v414 = v167;
      v168 = *(v30 + 13);
      v422 = *(v30 + 14);
      v423 = v164;
      v169 = *(v30 + 16);
      v409 = *(v30 + 15);
      v410 = v169;
      v170 = *(v30 + 18);
      v411 = *(v30 + 17);
      v412 = v170;
      v171 = *(v30 + 20);
      v420 = *(v30 + 19);
      v421 = v168;
      v172 = *(v30 + 22);
      v406 = *(v30 + 21);
      v407 = v172;
      v408 = *(v30 + 46);
      v77 = v431;
      if (v159 != 7)
      {
        *(v77 + *(type metadata accessor for EditItem() + 40)) = v159;
      }

      v418 = v171;
      v419 = v14;
      if (v417)
      {
        v173 = type metadata accessor for EditItem();
        v174 = v77;
        v175 = (v77 + v173[9]);
        v176 = v175[1];
        if (v176 && (v161 == *v175 && v417 == v176 || (v177 = v175[1], (sub_1E5A2C114() & 1) != 0)))
        {
          v405 = 0;
          v77 = v174;
        }

        else
        {
          v190 = v173[8];
          v404 = v161;
          v191 = v163;
          v192 = v162;
          v193 = *(v174 + v190);
          v194 = v417;

          v162 = v192;
          v163 = v191;

          *(v174 + v190) = MEMORY[0x1E69E7CD0];
          v195 = v174 + v173[7];
          *v195 = 0;
          v405 = 1;
          *(v195 + 8) = 1;
          *v175 = v404;
          v175[1] = v194;
          v77 = v174;
          v171 = v418;
          v14 = v419;
        }
      }

      else
      {
        v405 = 0;
      }

      if ((v163 & 1) == 0)
      {
        v196 = v77 + *(type metadata accessor for EditItem() + 28);
        v197 = (v162 == *v196) & ~*(v196 + 8);
        if (v197)
        {
          v198 = 0;
        }

        else
        {
          v198 = v162;
        }

        *v196 = v198;
        *(v196 + 8) = v197 & 1;
      }

      if (!v426)
      {
        goto LABEL_126;
      }

      v404 = *(type metadata accessor for EditItem() + 32);
      v199 = *(v77 + v404);
      if (v199)
      {
        v200 = *(v77 + v404);
      }

      else
      {
        v200 = MEMORY[0x1E69E7CD0];
      }

      *&v443 = v200;
      v201 = *(v200 + 16);
      v403 = v199;
      if (v201)
      {
        v202 = *(v200 + 40);
        sub_1E5A2C1B4();
        MEMORY[0x1E6932DE0](0);
        swift_bridgeObjectRetain_n();
        sub_1E5A2BB74();
        v203 = sub_1E5A2C204();
        v204 = v200 + 56;
        v205 = -1 << *(v200 + 32);
        v206 = v203 & ~v205;
        if ((*(v200 + 56 + ((v206 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v206))
        {
          v207 = ~v205;
          v208 = *(v200 + 48);
          while (1)
          {
            v209 = v208 + 24 * v206;
            if (!*(v209 + 16))
            {
              v210 = *v209 == v423 && *(v209 + 8) == v426;
              if (v210 || (sub_1E5A2C114() & 1) != 0)
              {
                break;
              }
            }

            v206 = (v206 + 1) & v207;
            if (((*(v204 + ((v206 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v206) & 1) == 0)
            {
              goto LABEL_96;
            }
          }

          v211 = *(v200 + 40);
          sub_1E5A2C1B4();
          MEMORY[0x1E6932DE0](0);
          sub_1E5A2BB74();
          v212 = sub_1E5A2C204();
          v213 = -1 << *(v200 + 32);
          v214 = v212 & ~v213;
          if (((*(v204 + ((v214 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v214) & 1) == 0)
          {
LABEL_284:

            *(v77 + v404) = v200;
            if (!v14)
            {
              goto LABEL_182;
            }

            goto LABEL_127;
          }

          v215 = ~v213;
          v216 = *(v200 + 48);
          while (1)
          {
            v217 = v216 + 24 * v214;
            if (!*(v217 + 16))
            {
              v218 = *v217 == v423 && *(v217 + 8) == v426;
              if (v218 || (sub_1E5A2C114() & 1) != 0)
              {
                break;
              }
            }

            v214 = (v214 + 1) & v215;
            if (((*(v204 + ((v214 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v214) & 1) == 0)
            {
              goto LABEL_284;
            }
          }

          v219 = swift_isUniquelyReferenced_nonNull_native();
          *&v448 = v200;
          if (!v219)
          {
            sub_1E592EF18();
            v200 = v448;
          }

          v220 = *(v200 + 48) + 24 * v214;
          v221 = *v220;
          v222 = *(v220 + 8);
          v223 = *(v220 + 16);
          sub_1E5930BA0(v214);
          sub_1E58BAAC0(v221, v222, v223);
LABEL_125:

          *(v77 + v404) = v448;
LABEL_126:
          if (!v14)
          {
            goto LABEL_182;
          }

LABEL_127:
          v404 = *(type metadata accessor for EditItem() + 32);
          v248 = *(v77 + v404);
          if (v248)
          {
            v249 = *(v77 + v404);
          }

          else
          {
            v249 = MEMORY[0x1E69E7CD0];
          }

          *&v443 = v249;
          v250 = *(v249 + 16);
          v403 = v248;
          if (v250)
          {
            v251 = *(v249 + 40);
            sub_1E5A2C1B4();
            MEMORY[0x1E6932DE0](1);
            swift_bridgeObjectRetain_n();
            sub_1E5A2BB74();
            v252 = sub_1E5A2C204();
            v253 = v249 + 56;
            v254 = -1 << *(v249 + 32);
            v255 = v252 & ~v254;
            if ((*(v249 + 56 + ((v255 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v255))
            {
              v256 = ~v254;
              v257 = *(v249 + 48);
              while (1)
              {
                v258 = v257 + 24 * v255;
                if (*(v258 + 16) == 1)
                {
                  v259 = *v258 == v427 && *(v258 + 8) == v14;
                  if (v259 || (sub_1E5A2C114() & 1) != 0)
                  {
                    break;
                  }
                }

                v255 = (v255 + 1) & v256;
                if (((*(v253 + ((v255 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v255) & 1) == 0)
                {
                  goto LABEL_153;
                }
              }

              v260 = *(v249 + 40);
              sub_1E5A2C1B4();
              MEMORY[0x1E6932DE0](1);
              sub_1E5A2BB74();
              v261 = sub_1E5A2C204();
              v262 = -1 << *(v249 + 32);
              v263 = v261 & ~v262;
              if (((*(v253 + ((v263 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v263) & 1) == 0)
              {
LABEL_281:

                *(v77 + v404) = v249;
                goto LABEL_182;
              }

              v264 = ~v262;
              v265 = *(v249 + 48);
              while (1)
              {
                v266 = v265 + 24 * v263;
                if (*(v266 + 16) == 1)
                {
                  v267 = *v266 == v427 && *(v266 + 8) == v14;
                  if (v267 || (sub_1E5A2C114() & 1) != 0)
                  {
                    break;
                  }
                }

                v263 = (v263 + 1) & v264;
                if (((*(v253 + ((v263 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v263) & 1) == 0)
                {
                  goto LABEL_281;
                }
              }

              v268 = swift_isUniquelyReferenced_nonNull_native();
              *&v448 = v249;
              if (!v268)
              {
                sub_1E592EF18();
                v249 = v448;
              }

              v269 = *(v249 + 48) + 24 * v263;
              v270 = *v269;
              v271 = *(v269 + 8);
              v272 = *(v269 + 16);
              sub_1E5930BA0(v263);
              sub_1E58BAAC0(v270, v271, v272);
              goto LABEL_181;
            }
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }

LABEL_153:

          v79 = (v249 + 56);
          v273 = -1 << *(v249 + 32);
          v274 = sub_1E5A2BDE4();
          v275 = 1 << *(v249 + 32);
          if (v274 != v275)
          {
            v78 = 24;
            v76 = -2;
            while (1)
            {
              if ((v274 & 0x8000000000000000) != 0 || v274 >= v275)
              {
                goto LABEL_291;
              }

              v276 = v274 >> 6;
              v277 = v79[v274 >> 6];
              if (((v277 >> v274) & 1) == 0)
              {
                goto LABEL_292;
              }

              v278 = *(v249 + 36);
              if (*(*(v249 + 48) + 24 * v274 + 16) == 1)
              {
                break;
              }

              v279 = v277 & (-2 << (v274 & 0x3F));
              if (v279)
              {
                v275 = __clz(__rbit64(v279)) | v274 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v77 = v276 << 6;
                v280 = v276 + 1;
                v281 = (v249 + 64 + 8 * v276);
                while (v280 < (v275 + 63) >> 6)
                {
                  v283 = *v281++;
                  v282 = v283;
                  v77 += 64;
                  ++v280;
                  if (v283)
                  {
                    sub_1E5901D04(v274, v278, 0);
                    v275 = __clz(__rbit64(v282)) + v77;
                    goto LABEL_167;
                  }
                }

                sub_1E5901D04(v274, v278, 0);
LABEL_167:
                v14 = v419;
              }

              v274 = v275;
              v275 = 1 << *(v249 + 32);
              if (v274 == v275)
              {
                goto LABEL_169;
              }
            }

            v284 = sub_1E5930DDC(v274, v278);
            sub_1E58BAAC0(v284, v285, v286);
          }

LABEL_169:
          v287 = v443;
          v288 = *(v443 + 40);
          sub_1E5A2C1B4();
          MEMORY[0x1E6932DE0](1);

          sub_1E5A2BB74();
          v289 = sub_1E5A2C204();
          v290 = -1 << *(v287 + 32);
          v291 = v289 & ~v290;
          if ((*(v287 + 56 + ((v291 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v291))
          {
            v292 = ~v290;
            v293 = *(v287 + 48);
            v77 = v431;
            v171 = v418;
            while (1)
            {
              v294 = v293 + 24 * v291;
              if (*(v294 + 16) == 1)
              {
                v295 = *v294 == v427 && *(v294 + 8) == v14;
                if (v295 || (sub_1E5A2C114() & 1) != 0)
                {
                  break;
                }
              }

              v291 = (v291 + 1) & v292;
              if (((*(v287 + 56 + ((v291 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v291) & 1) == 0)
              {
                goto LABEL_180;
              }
            }

            *(v77 + v404) = v287;
            goto LABEL_182;
          }

          v77 = v431;
          v171 = v418;
LABEL_180:
          v296 = swift_isUniquelyReferenced_nonNull_native();
          *&v448 = v287;
          sub_1E592E4B8(v427, v14, 1u, v291, v296);
LABEL_181:

          *(v77 + v404) = v448;
          goto LABEL_182;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

LABEL_96:

      v79 = (v200 + 56);
      v224 = -1 << *(v200 + 32);
      v225 = sub_1E5A2BDE4();
      v226 = 1 << *(v200 + 32);
      if (v225 == v226)
      {
        goto LABEL_112;
      }

      v78 = 24;
      v76 = -2;
      while (1)
      {
        if ((v225 & 0x8000000000000000) != 0 || v225 >= v226)
        {
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          v79 = sub_1E58E7254(0, v79[2] + 1, 1, v79);
LABEL_16:
          v81 = v79[2];
          v80 = v79[3];
          if (v81 >= v80 >> 1)
          {
            v79 = sub_1E58E7254(v80 > 1, v81 + 1, 1, v79);
          }

          v79[2] = v81 + 1;
          result = (*(v77 + 32))(v79 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v81, v14, v76);
LABEL_278:
          *v78 = v79;
          return result;
        }

        v227 = v225 >> 6;
        v228 = v79[v225 >> 6];
        if (((v228 >> v225) & 1) == 0)
        {
          goto LABEL_290;
        }

        v229 = *(v200 + 36);
        if (!*(*(v200 + 48) + 24 * v225 + 16))
        {
          break;
        }

        v230 = v228 & (-2 << (v225 & 0x3F));
        if (v230)
        {
          v226 = __clz(__rbit64(v230)) | v225 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v231 = v227 << 6;
          v232 = v227 + 1;
          v233 = (v200 + 64 + 8 * v227);
          while (v232 < (v226 + 63) >> 6)
          {
            v234 = *v233++;
            v77 = v234;
            v231 += 64;
            ++v232;
            if (v234)
            {
              sub_1E5901D04(v225, v229, 0);
              v226 = __clz(__rbit64(v77)) + v231;
              goto LABEL_110;
            }
          }

          sub_1E5901D04(v225, v229, 0);
LABEL_110:
          v14 = v419;
        }

        v225 = v226;
        v226 = 1 << *(v200 + 32);
        if (v225 == v226)
        {
          goto LABEL_112;
        }
      }

      v235 = sub_1E5930DDC(v225, v229);
      sub_1E58BAAC0(v235, v236, v237);
LABEL_112:
      v238 = v443;
      v239 = *(v443 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](0);

      sub_1E5A2BB74();
      v240 = sub_1E5A2C204();
      v241 = -1 << *(v238 + 32);
      v242 = v240 & ~v241;
      if (((*(v238 + 56 + ((v242 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v242) & 1) == 0)
      {
        v77 = v431;
        v171 = v418;
LABEL_124:
        v247 = swift_isUniquelyReferenced_nonNull_native();
        *&v448 = v238;
        sub_1E592E4B8(v423, v426, 0, v242, v247);
        goto LABEL_125;
      }

      v243 = ~v241;
      v244 = *(v238 + 48);
      v77 = v431;
      v171 = v418;
      while (1)
      {
        v245 = v244 + 24 * v242;
        if (!*(v245 + 16))
        {
          v246 = *v245 == v423 && *(v245 + 8) == v426;
          if (v246 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }
        }

        v242 = (v242 + 1) & v243;
        if (((*(v238 + 56 + ((v242 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v242) & 1) == 0)
        {
          goto LABEL_124;
        }
      }

      *(v77 + v404) = v238;
      if (v14)
      {
        goto LABEL_127;
      }

LABEL_182:
      if (!v422)
      {
        goto LABEL_227;
      }

      v297 = *(type metadata accessor for EditItem() + 32);
      v298 = *(v77 + v297);
      if (v298)
      {
        v299 = *(v77 + v297);
      }

      else
      {
        v299 = MEMORY[0x1E69E7CD0];
      }

      *&v443 = v299;
      v300 = *(v299 + 16);
      v403 = v298;
      v404 = v297;
      if (!v300)
      {
        swift_bridgeObjectRetain_n();
LABEL_210:

        v79 = (v299 + 56);
        v323 = -1 << *(v299 + 32);
        v324 = sub_1E5A2BDE4();
        v325 = 1 << *(v299 + 32);
        if (v324 != v325)
        {
          v78 = -2;
          v76 = 1;
          while (1)
          {
            if ((v324 & 0x8000000000000000) != 0 || v324 >= v325)
            {
              goto LABEL_293;
            }

            v326 = v324 >> 6;
            v327 = v79[v324 >> 6];
            if (((v327 >> v324) & 1) == 0)
            {
              goto LABEL_294;
            }

            v328 = *(v299 + 36);
            if (*(*(v299 + 48) + 24 * v324 + 16) == 2)
            {
              break;
            }

            v329 = v327 & (-2 << (v324 & 0x3F));
            if (v329)
            {
              v325 = __clz(__rbit64(v329)) | v324 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v330 = v326 << 6;
              v331 = v326 + 1;
              v332 = (v299 + 64 + 8 * v326);
              while (v331 < (v325 + 63) >> 6)
              {
                v333 = *v332++;
                v77 = v333;
                v330 += 64;
                ++v331;
                if (v333)
                {
                  sub_1E5901D04(v324, v328, 0);
                  v325 = __clz(__rbit64(v77)) + v330;
                  goto LABEL_224;
                }
              }

              sub_1E5901D04(v324, v328, 0);
LABEL_224:
              v14 = v419;
            }

            v324 = v325;
            v325 = 1 << *(v299 + 32);
            if (v324 == v325)
            {
              goto LABEL_226;
            }
          }

          v334 = sub_1E5930DDC(v324, v328);
          sub_1E58BAAC0(v334, v335, v336);
        }

LABEL_226:
        v337 = v422;

        sub_1E592D6A0(&v448, v421, v337, 2u);
        sub_1E58BAAC0(v448, *(&v448 + 1), v449);

        v77 = v431;
        *(v431 + v404) = v443;
        v171 = v418;
LABEL_227:
        if (!v171)
        {
          goto LABEL_272;
        }

LABEL_228:
        v338 = *(type metadata accessor for EditItem() + 32);
        v339 = *(v77 + v338);
        if (v339)
        {
          v340 = *(v77 + v338);
        }

        else
        {
          v340 = MEMORY[0x1E69E7CD0];
        }

        *&v443 = v340;
        v341 = *(v340 + 16);
        v403 = v339;
        v404 = v338;
        if (v341)
        {
          v342 = *(v340 + 40);
          sub_1E5A2C1B4();
          MEMORY[0x1E6932DE0](3);
          swift_bridgeObjectRetain_n();
          sub_1E5A2BB74();
          v343 = sub_1E5A2C204();
          v344 = v340 + 56;
          v345 = -1 << *(v340 + 32);
          v346 = v343 & ~v345;
          if ((*(v340 + 56 + ((v346 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v346))
          {
            v347 = ~v345;
            v348 = *(v340 + 48);
            while (1)
            {
              v349 = v348 + 24 * v346;
              if (*(v349 + 16) >= 3u)
              {
                v350 = *v349 == v420 && *(v349 + 8) == v171;
                if (v350 || (sub_1E5A2C114() & 1) != 0)
                {
                  break;
                }
              }

              v346 = (v346 + 1) & v347;
              if (((*(v344 + ((v346 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v346) & 1) == 0)
              {
                goto LABEL_254;
              }
            }

            v351 = *(v340 + 40);
            sub_1E5A2C1B4();
            MEMORY[0x1E6932DE0](3);
            sub_1E5A2BB74();
            v352 = sub_1E5A2C204();
            v353 = -1 << *(v340 + 32);
            v354 = v352 & ~v353;
            if (((*(v344 + ((v354 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v354) & 1) == 0)
            {

              v77 = v431;
LABEL_288:
              *(v77 + v404) = v340;
              goto LABEL_272;
            }

            v355 = ~v353;
            v356 = *(v340 + 48);
            v77 = v431;
            while (1)
            {
              v357 = v356 + 24 * v354;
              if (*(v357 + 16) >= 3u)
              {
                v358 = *v357 == v420 && *(v357 + 8) == v171;
                if (v358 || (sub_1E5A2C114() & 1) != 0)
                {
                  break;
                }
              }

              v354 = (v354 + 1) & v355;
              if (((*(v344 + ((v354 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v354) & 1) == 0)
              {

                goto LABEL_288;
              }
            }

            v359 = swift_isUniquelyReferenced_nonNull_native();
            *&v448 = v340;
            if (!v359)
            {
              sub_1E592EF18();
              v340 = v448;
            }

            v360 = *(v340 + 48) + 24 * v354;
            v361 = *v360;
            v362 = *(v360 + 8);
            v363 = *(v360 + 16);
            sub_1E5930BA0(v354);
            sub_1E58BAAC0(v361, v362, v363);

            v364 = v448;
LABEL_271:
            *(v77 + v404) = v364;
            goto LABEL_272;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
        }

LABEL_254:

        v79 = (v340 + 56);
        v365 = -1 << *(v340 + 32);
        v366 = sub_1E5A2BDE4();
        v367 = 1 << *(v340 + 32);
        if (v366 != v367)
        {
          v78 = -2;
          v76 = 1;
          while (1)
          {
            if ((v366 & 0x8000000000000000) != 0 || v366 >= v367)
            {
              goto LABEL_295;
            }

            v368 = v366 >> 6;
            v369 = v79[v366 >> 6];
            if (((v369 >> v366) & 1) == 0)
            {
              goto LABEL_296;
            }

            v370 = *(v340 + 36);
            if (*(*(v340 + 48) + 24 * v366 + 16) == 3)
            {
              break;
            }

            v371 = v369 & (-2 << (v366 & 0x3F));
            if (v371)
            {
              v367 = __clz(__rbit64(v371)) | v366 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v372 = v368 << 6;
              v373 = v368 + 1;
              v374 = (v340 + 64 + 8 * v368);
              while (v373 < (v367 + 63) >> 6)
              {
                v375 = *v374++;
                v77 = v375;
                v372 += 64;
                ++v373;
                if (v375)
                {
                  sub_1E5901D04(v366, v370, 0);
                  v367 = __clz(__rbit64(v77)) + v372;
                  goto LABEL_268;
                }
              }

              sub_1E5901D04(v366, v370, 0);
LABEL_268:
              v14 = v419;
            }

            v366 = v367;
            v367 = 1 << *(v340 + 32);
            if (v366 == v367)
            {
              goto LABEL_270;
            }
          }

          v376 = sub_1E5930DDC(v366, v370);
          sub_1E58BAAC0(v376, v377, v378);
        }

LABEL_270:
        v171 = v418;

        sub_1E592D6A0(&v448, v420, v171, 3u);
        sub_1E58BAAC0(v448, *(&v448 + 1), v449);

        v364 = v443;
        v77 = v431;
        goto LABEL_271;
      }

      v301 = *(v299 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](2);
      swift_bridgeObjectRetain_n();
      sub_1E5A2BB74();
      v302 = sub_1E5A2C204();
      v303 = v299 + 56;
      v304 = -1 << *(v299 + 32);
      v305 = v302 & ~v304;
      if (((*(v299 + 56 + ((v305 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v305) & 1) == 0)
      {
        goto LABEL_210;
      }

      v306 = ~v304;
      v307 = *(v299 + 48);
      while (1)
      {
        v308 = v307 + 24 * v305;
        if (*(v308 + 16) == 2)
        {
          v309 = *v308 == v421 && *(v308 + 8) == v422;
          if (v309 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }
        }

        v305 = (v305 + 1) & v306;
        if (((*(v303 + ((v305 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v305) & 1) == 0)
        {
          goto LABEL_210;
        }
      }

      v310 = *(v299 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](2);
      sub_1E5A2BB74();
      v311 = sub_1E5A2C204();
      v312 = -1 << *(v299 + 32);
      v313 = v311 & ~v312;
      if (((*(v303 + ((v313 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v313) & 1) == 0)
      {
LABEL_282:

        *(v77 + v404) = v299;
        if (!v171)
        {
          goto LABEL_272;
        }

        goto LABEL_228;
      }

      v314 = ~v312;
      v315 = *(v299 + 48);
      while (1)
      {
        v316 = v315 + 24 * v313;
        if (*(v316 + 16) == 2)
        {
          v317 = *v316 == v421 && *(v316 + 8) == v422;
          if (v317 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }
        }

        v313 = (v313 + 1) & v314;
        if (((*(v303 + ((v313 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v313) & 1) == 0)
        {
          goto LABEL_282;
        }
      }

      v318 = swift_isUniquelyReferenced_nonNull_native();
      *&v448 = v299;
      if (!v318)
      {
        sub_1E592EF18();
        v299 = v448;
      }

      v319 = *(v299 + 48) + 24 * v313;
      v320 = *v319;
      v321 = *(v319 + 8);
      v322 = *(v319 + 16);
      sub_1E5930BA0(v313);
      sub_1E58BAAC0(v320, v321, v322);

      *(v77 + v404) = v448;
      if (v171)
      {
        goto LABEL_228;
      }

LABEL_272:
      v379 = (v77 + *(type metadata accessor for EditItem() + 36));
      v380 = v379[1];
      if (v380)
      {
        v381 = *v379;
        v452 = v460;
        v453 = v461;
        v454 = v462;
        v455 = v463;
        v448 = v456;
        v449 = v457;
        v450 = v458;
        v451 = v459;

        v382 = sub_1E5925744(v77);
        v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
        v384 = v383[12];
        v385 = v383[16];
        v386 = v383[20];
        v387 = v424;
        v388 = &v424[v383[24]];
        *&v448 = v381;
        *(&v448 + 1) = v380;
        sub_1E59306E4();

        sub_1E5A2BE14();
        sub_1E5A2BC94();
        v389 = *MEMORY[0x1E6999B60];
        v390 = sub_1E5A2B924();
        (*(*(v390 - 8) + 104))(&v387[v385], v389, v390);
        v391 = *MEMORY[0x1E6999B40];
        v392 = sub_1E5A2B914();
        (*(*(v392 - 8) + 104))(&v387[v386], v391, v392);
        v393 = swift_allocObject();
        v394 = v461;
        *(v393 + 104) = v460;
        *(v393 + 120) = v394;
        v395 = v463;
        *(v393 + 136) = v462;
        *(v393 + 152) = v395;
        v396 = v457;
        *(v393 + 40) = v456;
        *(v393 + 56) = v396;
        v397 = v459;
        *(v393 + 72) = v458;
        *(v393 + 16) = v382;
        *(v393 + 24) = v381;
        *(v393 + 32) = v380;
        *(v393 + 88) = v397;
        *(v393 + 168) = v405;
        *v388 = &unk_1E5A36270;
        *(v388 + 1) = v393;
        v399 = v428;
        v398 = v429;
        (*(v428 + 104))(v387, *MEMORY[0x1E6999AD8], v429);
        v78 = v430;
        v79 = *v430;
        sub_1E59307FC(&v456, &v448);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_1E58E7254(0, v79[2] + 1, 1, v79);
        }

        v401 = v79[2];
        v400 = v79[3];
        if (v401 >= v400 >> 1)
        {
          v79 = sub_1E58E7254(v400 > 1, v401 + 1, 1, v79);
        }

        sub_1E58C2D88(v420, v418);
        sub_1E58C2DCC(v421, v422);
        sub_1E58C2D88(v427, v419);
        sub_1E58C2D88(v423, v426);
        v79[2] = v401 + 1;
        result = (*(v399 + 32))(v79 + ((*(v399 + 80) + 32) & ~*(v399 + 80)) + *(v399 + 72) * v401, v387, v398);
        goto LABEL_278;
      }

      sub_1E58C2D88(v420, v171);
      sub_1E58C2DCC(v421, v422);
      sub_1E58C2D88(v427, v14);
      return sub_1E58C2D88(v423, v426);
    case 15:
      v51 = *v30;
      result = type metadata accessor for WorkoutPlanCreationLocalState();
      v52 = result[5];
LABEL_37:
      *(v431 + v52) = v51;
      return result;
    case 16:
      v131 = *v30;
      v132 = *(v30 + 1);
      v133 = *(v30 + 2);
      v448 = *(v30 + 1);
      v449 = v133;
      v134 = *(v30 + 4);
      v450 = *(v30 + 3);
      v451 = v134;
      v135 = *(type metadata accessor for WorkoutPlanCreationLocalState() + 48);
      v136 = v431;
      v137 = *(v431 + v135);
      v138 = swift_isUniquelyReferenced_nonNull_native();
      *&v443 = *(v136 + v135);
      sub_1E592CBF8(&v448, v131, v132, v138);

      *(v136 + v135) = v443;
      return result;
    case 17:
      v158 = *v30;
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      *&v443 = v158;
      sub_1E59239C8(v431, &v443);

    case 18:
      v430 = *v30;
      v178 = *(v30 + 2);
      result = type metadata accessor for WorkoutPlanCreationLocalState();
      v179 = v431 + result[29];
      *v179 = v430;
      *(v179 + 16) = v178;
      *(v179 + 24) = 0;
      return result;
    case 19:
      v66 = *v30;
      *(v431 + *(type metadata accessor for WorkoutPlanCreationLocalState() + 88)) = v66;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v68 = v67[12];
      v69 = v67[16];
      v70 = v67[20];
      v71 = &v14[v67[24]];
      v448 = xmmword_1E5A36200;
      sub_1E59306E4();
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v72 = *MEMORY[0x1E6999B60];
      v73 = sub_1E5A2B924();
      (*(*(v73 - 8) + 104))(&v14[v69], v72, v73);
      v74 = *MEMORY[0x1E6999B40];
      v75 = sub_1E5A2B914();
      (*(*(v75 - 8) + 104))(&v14[v70], v74, v75);
      *v71 = &unk_1E5A36288;
      *(v71 + 1) = 0;
      v77 = v428;
      v76 = v429;
      (*(v428 + 104))(v14, *MEMORY[0x1E6999AD8], v429);
      v78 = v430;
      v79 = *v430;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      goto LABEL_297;
    case 20:
      v65 = *v30;
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      return sub_1E5923E20(v431, v65, v430);
    case 21:
    case 22:
    case 24:
    case 27:
    case 28:
      return result;
    case 23:
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      return sub_1E592163C(v431);
    case 25:
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      return sub_1E5921ED8(v431);
    case 26:
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      sub_1E59235E8(v431, v20);
      v37 = v430;
      v38 = *v430;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1E58E7254(0, v38[2] + 1, 1, v38);
      }

      v180 = v428;
      v182 = v38[2];
      v181 = v38[3];
      if (v182 >= v181 >> 1)
      {
        v38 = sub_1E58E7254(v181 > 1, v182 + 1, 1, v38);
      }

      v38[2] = v182 + 1;
      result = (*(v180 + 32))(v38 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v182, v20, v429);
      goto LABEL_56;
    case 29:
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      return sub_1E5924A3C(v431, v430);
    case 30:
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      return sub_1E5924400(v431, v430);
    default:
      v36 = *v30;
      v452 = v460;
      v453 = v461;
      v454 = v462;
      v455 = v463;
      v448 = v456;
      v449 = v457;
      v450 = v458;
      v451 = v459;
      sub_1E5922BE8(v431, v426, v36, v22);
      v37 = v430;
      v38 = *v430;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1E58E7254(0, v38[2] + 1, 1, v38);
      }

      v39 = v428;
      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_1E58E7254(v40 > 1, v41 + 1, 1, v38);
      }

      v38[2] = v41 + 1;
      result = (*(v39 + 32))(v38 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41, v22, v429);
LABEL_56:
      *v37 = v38;
      return result;
  }
}