void *sub_1D173E91C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_1D1E66A7C();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_1D1E68BAC();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

char *sub_1D173EB94()
{
  v1 = v0;
  v32 = sub_1D1E66A7C();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429F8, &unk_1D1E6E750);
  v4 = *v0;
  v5 = sub_1D1E68BAC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1D173EE04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429E0, &qword_1D1E6E738);
  v2 = *v0;
  v3 = sub_1D1E68BAC();
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
        v18 = *(v2 + 56) + 40 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 32);
        v22 = *(v18 + 16);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = *(v4 + 56) + 40 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v22;
        *(v23 + 32) = v21;

        swift_unknownObjectRetain();
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

id sub_1D173EFB4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_1D1E66A7C();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_1D1E68BAC();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        result = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

char *sub_1D173F24C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v51 = a1;
  v52 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v40 - v10;
  v48 = sub_1D1E66A7C();
  v53 = *(v48 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *v4;
  v14 = sub_1D1E68BAC();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v41 = v4;
    v42 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v54 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = v52;
    v43 = v53 + 32;
    v44 = v53 + 16;
    v45 = v24;
    v46 = v13;
    v26 = v48;
    if (v23)
    {
      do
      {
        v27 = __clz(__rbit64(v23));
        v55 = (v23 - 1) & v23;
LABEL_14:
        v30 = v27 | (v19 << 6);
        v31 = v53;
        v32 = *(v53 + 72) * v30;
        v33 = v47;
        (*(v53 + 16))(v47, *(v13 + 48) + v32, v26);
        v34 = v49;
        v35 = *(v50 + 72) * v30;
        v36 = *(v13 + 56) + v35;
        v37 = v51;
        sub_1D1741C08(v36, v49, v51, v25);
        v38 = v54;
        (*(v31 + 32))(*(v54 + 48) + v32, v33, v26);
        v39 = v37;
        v13 = v46;
        result = sub_1D1741A90(v34, *(v38 + 56) + v35, v39, v25);
        v24 = v45;
        v23 = v55;
      }

      while (v55);
    }

    v28 = v19;
    v15 = v54;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v41;
        goto LABEL_18;
      }

      v29 = *(v42 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v55 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v15;
  }

  return result;
}

uint64_t _s13HomeDataModel0A18AnalyticsUtilitiesO010PredictionD13ScoringValuesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = *(a2 + 25);
  v9 = *(a2 + 41);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v11 = *(a2 + 24);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v4 == 4)
  {
    if (v8 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 4 || v8 != v4)
    {
      return result;
    }
  }

  if (v6)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == *(a2 + 32))
    {
      v13 = *(a2 + 40);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v7 == 3)
  {
    if (v9 != 3)
    {
      return 0;
    }
  }

  else if (v9 == 3 || v7 != v9)
  {
    return 0;
  }

  return 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D173F6DC()
{
  result = qword_1EC642540;
  if (!qword_1EC642540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642540);
  }

  return result;
}

unint64_t sub_1D173F730()
{
  result = qword_1EC642548;
  if (!qword_1EC642548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642548);
  }

  return result;
}

unint64_t sub_1D173F784()
{
  result = qword_1EC642550;
  if (!qword_1EC642550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642550);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1D173F824()
{
  result = qword_1EC642560;
  if (!qword_1EC642560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642560);
  }

  return result;
}

unint64_t sub_1D173F878()
{
  result = qword_1EC642568;
  if (!qword_1EC642568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642568);
  }

  return result;
}

uint64_t sub_1D173F8CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6974636964657270 && a2 == 0xEF65726F63536E6FLL;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EB84C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EB84E0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974636964657270 && a2 == 0xEF7865646E496E6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EB8500 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t _s13HomeDataModel0A18AnalyticsUtilitiesO010PredictionD7ContextV2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 18);
  if (a1[2])
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] != a2[1])
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (v3 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }

    goto LABEL_14;
  }

  result = 0;
  if (v6 != 2 && ((v6 ^ v3) & 1) == 0)
  {
LABEL_14:
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        return 1;
      }
    }

    else if (v7 != 2 && ((v7 ^ v4) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D173FB30()
{
  result = qword_1EC642580;
  if (!qword_1EC642580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642580);
  }

  return result;
}

BOOL sub_1D173FB84(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *a1;
  v6 = *a2;
  v7 = *(v4 + 40);
  v8 = v7(v3, v4);
  return v7(v3, v4) < v8;
}

uint64_t sub_1D173FC14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D173FC5C()
{
  result = qword_1EC642598;
  if (!qword_1EC642598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642598);
  }

  return result;
}

unint64_t sub_1D173FCB0()
{
  result = qword_1EC6425A0;
  if (!qword_1EC6425A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6425A0);
  }

  return result;
}

uint64_t sub_1D173FD04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7441734972657375 && a2 == 0xEC000000656D6F48;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EB8520 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001D1EB8540 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001D1EB8570 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D173FE78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1D173FEB0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1D173FEE8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1D173FF24()
{
  result = qword_1EC642610;
  if (!qword_1EC642610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642610);
  }

  return result;
}

unint64_t sub_1D173FF78()
{
  result = qword_1EC642618;
  if (!qword_1EC642618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642618);
  }

  return result;
}

unint64_t sub_1D173FFD0()
{
  result = qword_1EC642620;
  if (!qword_1EC642620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642620);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D174003C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 42))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 41);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 41);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1D1740090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 3;
    }
  }

  return result;
}

uint64_t _s32PredictionAnalyticsScoringValuesV17PlacementCategoryOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s32PredictionAnalyticsScoringValuesV17PlacementCategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t _s26PredictionAnalyticsContextVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[19])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s26PredictionAnalyticsContextVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
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

uint64_t storeEnumTagSinglePayload for RGBColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WidgetRefreshOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WidgetRefreshOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PredictionsRelevanceLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PredictionsRelevanceLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s32PredictionAnalyticsScoringValuesV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s32PredictionAnalyticsScoringValuesV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D17408D8()
{
  result = qword_1EC642750;
  if (!qword_1EC642750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642750);
  }

  return result;
}

unint64_t sub_1D1740930()
{
  result = qword_1EC642758;
  if (!qword_1EC642758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642758);
  }

  return result;
}

unint64_t sub_1D17413B8()
{
  result = qword_1EC642890;
  if (!qword_1EC642890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642890);
  }

  return result;
}

unint64_t sub_1D1741650()
{
  result = qword_1EC6428D8;
  if (!qword_1EC6428D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6428D8);
  }

  return result;
}

unint64_t sub_1D17416A8()
{
  result = qword_1EC6428E0;
  if (!qword_1EC6428E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6428E0);
  }

  return result;
}

unint64_t sub_1D1741700()
{
  result = qword_1EC6428E8;
  if (!qword_1EC6428E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6428E8);
  }

  return result;
}

unint64_t sub_1D1741758()
{
  result = qword_1EC6428F0;
  if (!qword_1EC6428F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6428F0);
  }

  return result;
}

uint64_t sub_1D1741808(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_1D174181C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_1D1741830(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_1D1741854(result, a2);
  }

  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1D1741854(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1D17418A8()
{
  result = qword_1EC6429B0;
  if (!qword_1EC6429B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6429B0);
  }

  return result;
}

uint64_t sub_1D17418FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  return result;
}

uint64_t sub_1D1741970(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D17419CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D1741A30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D1741A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D1741AF8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 3 <= 1)
  {
  }

  return result;
}

uint64_t sub_1D1741B10(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D1741C08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_1D1741C70(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D1741C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1741CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1741D50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s16SnapshotIntervalVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16SnapshotIntervalVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1D1741FCC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1D17421D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32[-v12];
  v14 = sub_1D1E669FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v32[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v32[-v20];
  v34 = [a1 homeLocationStatus];
  sub_1D174A548(a2, v13);
  v22 = *(v15 + 48);
  v33 = v22(v13, 1, v14);
  if (v33 == 1)
  {
    sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
    v23 = 0.0;
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    sub_1D1E6697C();
    v23 = fabs(v24);
    (*(v15 + 8))(v21, v14);
  }

  sub_1D174A548(v35, v11);
  if (v22(v11, 1, v14) == 1)
  {
    result = sub_1D1741A30(v11, &qword_1EC642570, &qword_1D1E6C6A0);
    v26 = 2;
    v27 = 2;
  }

  else
  {
    (*(v15 + 32))(v19, v11, v14);
    sub_1D1E6697C();
    v27 = fabs(v28) < 120.0;
    sub_1D1E6697C();
    v30 = fabs(v29);
    result = (*(v15 + 8))(v19, v14);
    v26 = v30 < 604800.0;
  }

  v31 = v33 == 1;
  *a4 = v34 == 1;
  *(a4 + 8) = v23;
  *(a4 + 16) = v31;
  *(a4 + 17) = v27;
  *(a4 + 18) = v26;
  return result;
}

uint64_t sub_1D17424D8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98);
  v6 = *(v5 + 168);
  v7 = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v8 = v6(v7, v5);
  if (v8 >> 62)
  {
    v9 = sub_1D1E6873C();

    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = off_1EE079C50(v7, &protocol witness table for HMHome);
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_5;
  }

LABEL_14:
  v11 = sub_1D1E6873C();

  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_5:
  v11 += v9;
  if (v11 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

LABEL_17:
  v12 = sub_1D1E6873C();
LABEL_8:
  if (v12)
  {
    v13 = 2 * (v11 < 5);
  }

  else
  {
    v13 = 1;
  }

  return sub_1D1742680(a1, v13, a3);
}

uint64_t sub_1D1742680(unint64_t a1, int a2, uint64_t a3)
{
  v122 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v117 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v130 = &v117 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v117 - v15;
  v16 = sub_1D1E66A7C();
  v134 = *(v16 - 8);
  v17 = v134[8];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v120 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v119 = &v117 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v126 = &v117 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v117 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v141 = &v117 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v142 = &v117 - v29;

  v150 = sub_1D17499C8(v30, sub_1D1808600, sub_1D18D3160);
  sub_1D1747E90(&v150);
  v31 = v150;
  if (a1 >> 62)
  {
LABEL_75:
    v32 = sub_1D1E6873C();
    if (v31 < 0)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v150 < 0)
    {
LABEL_76:
      v33 = sub_1D1E6873C();
      goto LABEL_5;
    }
  }

  if ((v31 & 0x4000000000000000) != 0)
  {
    goto LABEL_76;
  }

  v33 = *(v31 + 16);
LABEL_5:
  v34 = 20;
  if (v32 > 20)
  {
    v34 = v32;
  }

  if (!v33)
  {
    v138 = MEMORY[0x1E69E7CC8];
LABEL_68:

    return v138;
  }

  v118 = v9;
  v35 = 0;
  v133 = v31 & 0xC000000000000001;
  v132 = v31 + 32;
  v136 = (v134 + 7);
  v36 = (v134 + 6);
  v123 = (v134 + 4);
  v143 = (v134 + 2);
  v144 = a3 + 56;
  v9 = (v134 + 1);
  v37 = v34;
  v138 = MEMORY[0x1E69E7CC8];
  v128 = v12;
  v127 = v31;
  v131 = v33;
  v135 = v134 + 6;
  while (1)
  {
    v125 = v35;
    while (1)
    {
      if (v133)
      {
        v38 = MEMORY[0x1D3891EF0](v35, v31);
      }

      else
      {
        if (v35 >= *(v31 + 16))
        {
          goto LABEL_70;
        }

        v38 = *(v132 + 8 * v35);
      }

      v140 = v38;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v139 = v35 + 1;
      if (!a3)
      {
        v137 = v125;
        goto LABEL_40;
      }

      v137 = v35;
      v39 = [v140 targetServiceUUID];
      if (v39)
      {
        v40 = v130;
        v41 = v39;
        sub_1D1E66A5C();

        v42 = 0;
      }

      else
      {
        v42 = 1;
        v40 = v130;
      }

      v43 = v129;
      (*v136)(v40, v42, 1, v16);
      sub_1D1741A90(v40, v43, &qword_1EC642590, qword_1D1E71260);
      v44 = *v36;
      if ((*v36)(v43, 1, v16) == 1)
      {
        break;
      }

      (*v123)(v142, v43, v16);
      if (*(a3 + 16))
      {
        goto LABEL_26;
      }

LABEL_30:
      v54 = *v9;
      (*v9)(v142, v16);
      v55 = [v140 predictionTargetUUID];
      sub_1D1E66A5C();

      if (*(a3 + 16))
      {
        v56 = *(a3 + 40);
        sub_1D174A5FC(qword_1EE07DD78);
        v57 = sub_1D1E676DC();
        v58 = -1 << *(a3 + 32);
        v59 = v57 & ~v58;
        if ((*(v144 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
        {
          v60 = ~v58;
          v61 = v134[9];
          v62 = v134[2];
          while (1)
          {
            v62(v26, *(a3 + 48) + v61 * v59, v16);
            sub_1D174A5FC(&qword_1EE07D170);
            v63 = sub_1D1E6775C();
            v54(v26, v16);
            if (v63)
            {
              break;
            }

            v59 = (v59 + 1) & v60;
            if (((*(v144 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          v54(v141, v16);
          goto LABEL_39;
        }
      }

LABEL_11:
      v54(v141, v16);

      v35 = v139;
      v12 = v128;
      v31 = v127;
      v36 = v135;
      if (v139 == v131)
      {
        goto LABEL_68;
      }
    }

    sub_1D1E66A6C();
    if (v44(v43, 1, v16) != 1)
    {
      sub_1D1741A30(v43, &qword_1EC642590, qword_1D1E71260);
    }

    if (!*(a3 + 16))
    {
      goto LABEL_30;
    }

LABEL_26:
    v45 = *(a3 + 40);
    sub_1D174A5FC(qword_1EE07DD78);
    v46 = sub_1D1E676DC();
    v47 = -1 << *(a3 + 32);
    v48 = v46 & ~v47;
    if (((*(v144 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
    {
      goto LABEL_30;
    }

    v49 = ~v47;
    v50 = v134[9];
    v51 = v134[2];
    while (1)
    {
      v51(v26, *(a3 + 48) + v50 * v48, v16);
      sub_1D174A5FC(&qword_1EE07D170);
      v52 = sub_1D1E6775C();
      v53 = *v9;
      (*v9)(v26, v16);
      if (v52)
      {
        break;
      }

      v48 = (v48 + 1) & v49;
      if (((*(v144 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v53(v142, v16);
LABEL_39:
    v12 = v128;
    v31 = v127;
LABEL_40:
    v64 = v140;
    [v140 predictionScore];
    v66 = v65;
    LOBYTE(v150) = 0;
    v146 = 0;
    v145 = 0;
    v124 = 0;
    LODWORD(v125) = 0;
    v67 = [v64 predictionTargetUUID];
    v68 = v126;
    sub_1D1E66A5C();

    v69 = v138;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v150 = v69;
    v72 = sub_1D1742188(v68);
    v73 = *(v69 + 16);
    v74 = (v71 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_71;
    }

    v76 = v71;
    if (*(v69 + 24) < v75)
    {
      break;
    }

    v79 = v139;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1733D98();
      v79 = v139;
    }

LABEL_46:
    v80 = 1.0 - v79 / v37;
    v81 = v150;
    v138 = v150;
    if (v76)
    {
      v82 = *(v150 + 56) + 48 * v72;
      *v82 = v66;
      *(v82 + 8) = 0;
      *(v82 + 9) = v149[0];
      *(v82 + 12) = *(v149 + 3);
      *(v82 + 16) = v80;
      *(v82 + 24) = v124;
      *(v82 + 25) = v122;
      *(v82 + 26) = v147;
      *(v82 + 30) = v148;
      *(v82 + 32) = v137;
      *(v82 + 40) = v125;
      *(v82 + 41) = 3;
      v83 = *v9;
      (*v9)(v126, v16);
    }

    else
    {
      *(v150 + 8 * (v72 >> 6) + 64) |= 1 << v72;
      v84 = v134;
      v85 = v126;
      (v134[2])(*(v81 + 48) + v134[9] * v72, v126, v16);
      v86 = *(v138 + 56) + 48 * v72;
      *v86 = v66;
      *(v86 + 8) = 0;
      *(v86 + 12) = *(v149 + 3);
      *(v86 + 9) = v149[0];
      *(v86 + 16) = v80;
      *(v86 + 24) = v124;
      *(v86 + 25) = v122;
      *(v86 + 30) = v148;
      *(v86 + 26) = v147;
      *(v86 + 32) = v137;
      *(v86 + 40) = v125;
      *(v86 + 41) = 3;
      v83 = v84[1];
      v83(v85, v16);
      v87 = *(v138 + 16);
      v88 = __OFADD__(v87, 1);
      v89 = v87 + 1;
      if (v88)
      {
        goto LABEL_72;
      }

      *(v138 + 16) = v89;
    }

    v121 = v83;
    v90 = [v140 targetServiceUUID];
    v36 = v135;
    if (v90)
    {
      v91 = v118;
      v92 = v90;
      sub_1D1E66A5C();

      v93 = 0;
    }

    else
    {
      v93 = 1;
      v91 = v118;
    }

    (*v136)(v91, v93, 1, v16);
    sub_1D1741A90(v91, v12, &qword_1EC642590, qword_1D1E71260);
    if ((*v36)(v12, 1, v16) != 1)
    {
      v94 = v119;
      (*v123)(v119, v12, v16);
      v95 = *v143;
      v96 = v120;
      (*v143)(v120, v94, v16);
      v97 = v138;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150 = v97;
      v98 = sub_1D1742188(v96);
      v100 = v97;
      v101 = *(v97 + 16);
      v102 = (v99 & 1) == 0;
      v88 = __OFADD__(v101, v102);
      v103 = v101 + v102;
      if (!v88)
      {
        v104 = v99;
        if (*(v100 + 24) >= v103)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v115 = v98;
            sub_1D1733D98();
            v98 = v115;
          }
        }

        else
        {
          sub_1D17208D8(v103, isUniquelyReferenced_nonNull_native);
          v98 = sub_1D1742188(v120);
          if ((v104 & 1) != (v105 & 1))
          {
            goto LABEL_77;
          }
        }

        v106 = v150;
        v138 = v150;
        if (v104)
        {
          v107 = *(v150 + 56) + 48 * v98;
          *v107 = v66;
          *(v107 + 8) = 0;
          *(v107 + 9) = v149[0];
          *(v107 + 12) = *(v149 + 3);
          *(v107 + 16) = v80;
          *(v107 + 24) = v124;
          *(v107 + 25) = v122;
          *(v107 + 26) = v147;
          *(v107 + 30) = v148;
          *(v107 + 32) = v137;
          *(v107 + 40) = v125;
          *(v107 + 41) = 3;

          v108 = v121;
          v121(v120, v16);
          v108(v119, v16);
          goto LABEL_64;
        }

        *(v150 + 8 * (v98 >> 6) + 64) |= 1 << v98;
        v109 = v98;
        v110 = v120;
        v95((*(v106 + 48) + v134[9] * v98), v120, v16);
        v111 = *(v138 + 56) + 48 * v109;
        *v111 = v66;
        *(v111 + 8) = 0;
        *(v111 + 12) = *(v149 + 3);
        *(v111 + 9) = v149[0];
        *(v111 + 16) = v80;
        *(v111 + 24) = v124;
        *(v111 + 25) = v122;
        *(v111 + 30) = v148;
        *(v111 + 26) = v147;
        *(v111 + 32) = v137;
        *(v111 + 40) = v125;
        *(v111 + 41) = 3;

        v112 = v121;
        v121(v110, v16);
        v112(v119, v16);
        v113 = *(v138 + 16);
        v88 = __OFADD__(v113, 1);
        v114 = v113 + 1;
        if (!v88)
        {
          *(v138 + 16) = v114;
LABEL_64:
          v36 = v135;
          v35 = v139;
          if (v139 != v131)
          {
            continue;
          }

          goto LABEL_68;
        }

LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
    v35 = v139;
    if (v139 == v131)
    {
      goto LABEL_68;
    }
  }

  sub_1D17208D8(v75, isUniquelyReferenced_nonNull_native);
  v77 = sub_1D1742188(v126);
  if ((v76 & 1) == (v78 & 1))
  {
    v72 = v77;
    v79 = v139;
    goto LABEL_46;
  }

LABEL_77:
  sub_1D1E690FC();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t PredictableInteractionEvent.eventName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PredictableInteractionEvent.processName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

__n128 PredictableInteractionEvent.predictionScores.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  result = *(v1 + 48);
  v5 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

void PredictableInteractionEvent.predictionContext.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 113);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

HomeDataModel::PredictableInteractionEvent::InteractionType_optional __swiftcall PredictableInteractionEvent.InteractionType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

__n128 PredictableInteractionEvent.init(elementType:interactionType:isShownInPredictionUI:predictionScores:predictionContext:)@<Q0>(char *a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *(a4 + 32);
  v11 = *(a4 + 40);
  v12 = *a5;
  v13 = *(a5 + 1);
  v14 = a5[16];
  v22 = *(a5 + 17);
  *a6 = 0xD00000000000001BLL;
  *(a6 + 8) = 0x80000001D1E6EFF0;
  *(a6 + 16) = v8;
  *(a6 + 17) = v9;
  v15 = [objc_opt_self() processInfo];
  v16 = [v15 processName];

  v17 = sub_1D1E6781C();
  v19 = v18;

  *(a6 + 24) = v17;
  *(a6 + 32) = v19;
  *(a6 + 40) = a3;
  result = *a4;
  v21 = *(a4 + 16);
  *(a6 + 48) = *a4;
  *(a6 + 64) = v21;
  *(a6 + 80) = v10;
  *(a6 + 88) = v11;
  *(a6 + 96) = v12;
  *(a6 + 104) = v13;
  *(a6 + 112) = v14;
  *(a6 + 113) = v22;
  return result;
}

__n128 PredictableInteractionEvent.init(tileInteractionEvent:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v33 = a1[8];
  *v34 = v3;
  *&v34[15] = *(a1 + 159);
  v4 = a1[5];
  v29 = a1[4];
  v30 = v4;
  v5 = a1[7];
  v31 = a1[6];
  v32 = v5;
  v6 = a1[1];
  v25 = *a1;
  v26 = v6;
  v7 = a1[3];
  v27 = a1[2];
  v28 = v7;
  if (v6 == 1 && BYTE3(v26) <= 1u && (v8 = v34[0], v34[0] != 2))
  {
    v10 = v34[16];
    v23 = HIBYTE(*&v34[16]);
    v24 = v34[18];
    v11 = BYTE8(v27);
    v12 = BYTE11(v30);
    v21 = v33;
    v22 = *&v34[8];
    v13 = WORD4(v33);
    v14 = [objc_opt_self() processInfo];
    v15 = [v14 processName];

    v16 = sub_1D1E6781C();
    v18 = v17;
    v19 = v32;
    v20 = v31;
    sub_1D1749A6C(&v25);

    *a2 = 0xD00000000000001BLL;
    *(a2 + 8) = 0x80000001D1E6EFF0;
    *(a2 + 16) = v11;
    *(a2 + 17) = 0;
    *(a2 + 24) = v16;
    *(a2 + 32) = v18;
    *(a2 + 40) = v12;
    result = v20;
    *(a2 + 48) = v20;
    *(a2 + 64) = v19;
    *(a2 + 80) = v21;
    *(a2 + 88) = v13;
    *(a2 + 96) = v8 & 1;
    *(a2 + 104) = v22;
    *(a2 + 112) = v10 & 1;
    *(a2 + 113) = v23;
    *(a2 + 114) = v24;
  }

  else
  {
    sub_1D1749A6C(&v25);
    result.n128_u64[0] = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 111) = 0;
  }

  return result;
}

uint64_t sub_1D1743988()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x54746E656D656C65;
    if (v1 != 1)
    {
      v5 = 0x7463617265746E69;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6D614E746E657665;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (v1 == 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000015;
    if (v1 == 3)
    {
      v3 = 0x4E737365636F7270;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D1743A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D174A158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1743AB8(uint64_t a1)
{
  v2 = sub_1D1749AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1743AF4(uint64_t a1)
{
  v2 = sub_1D1749AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictableInteractionEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642D38, &qword_1D1E6F030);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v34 = *(v1 + 16);
  v28 = *(v1 + 17);
  v10 = v1[3];
  v26 = v1[4];
  v27 = v10;
  v25 = *(v1 + 40);
  v11 = *(v1 + 3);
  v23 = *(v1 + 4);
  v24 = v11;
  v21 = v1[10];
  v22 = *(v1 + 44);
  HIDWORD(v16) = *(v1 + 96);
  v17 = v1[13];
  LODWORD(v10) = *(v1 + 112);
  v20 = *(v1 + 113);
  LODWORD(v6) = *(v1 + 114);
  v18 = v10;
  v19 = v6;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1749AC0();
  sub_1D1E6930C();
  LOBYTE(v30) = 0;
  v13 = v29;
  sub_1D1E68ECC();
  if (!v13)
  {
    v14 = v28;
    LOBYTE(v30) = v34;
    v35 = 1;
    sub_1D1749B14();
    sub_1D1E68F1C();
    LOBYTE(v30) = v14;
    v35 = 2;
    sub_1D1749B68();
    sub_1D1E68F1C();
    LOBYTE(v30) = 3;
    sub_1D1E68ECC();
    LOBYTE(v30) = 4;
    sub_1D1E68EDC();
    v31 = v23;
    v30 = v24;
    v32 = v21;
    v33 = v22;
    v35 = 5;
    sub_1D1749BBC();
    sub_1D1E68E5C();
    LOBYTE(v30) = BYTE4(v16);
    *(&v30 + 1) = v17;
    LOBYTE(v31) = v18;
    BYTE1(v31) = v20;
    BYTE2(v31) = v19;
    v35 = 6;
    sub_1D1749C10();
    sub_1D1E68F1C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D1743E60()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PredictableInteractionEvent.init(ids:elementType:interactionType:isPredictionUI:homeID:homeStateStream:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 176) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 177) = *a3;
  *(v7 + 178) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D1743F80, 0, 0);
}

uint64_t sub_1D1743F80()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;
  *(v0 + 112) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1744018, v1, 0);
}

uint64_t sub_1D1744018()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 120) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D17440A0, 0, 0);
}

uint64_t sub_1D17440A0()
{
  if (v0[15])
  {
    v1 = v0[14];

    return MEMORY[0x1EEE6DFA0](sub_1D17441C0, v1, 0);
  }

  else
  {
    v2 = v0[10];
    v3 = v0[11];
    v4 = v0[9];
    v5 = sub_1D1E66A7C();
    (*(*(v5 - 8) + 8))(v2, v5);

    v6 = v0[8];
    *(v6 + 111) = 0;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *v6 = 0u;
    v8 = v0[12];
    v7 = v0[13];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1D17441C0()
{
  v9 = v0;
  v1 = *(v0[11] + 64);
  if (v1)
  {
    v2 = [v1 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v8 = sub_1D17499C8(v3, sub_1D1808600, sub_1D18D2FC0);
    sub_1D1747DDC(&v8);

    v4 = v8;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = v0[10];
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  v0[16] = sub_1D1747CC8(sub_1D1749C64, v6, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D1744354, 0, 0);
}

uint64_t sub_1D1744354()
{
  v1 = v0[15];
  if (v0[16])
  {
    v0[17] = *(v0[11] + 160);

    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1D17444E0;
    v3 = v0[10];

    return (sub_1D1744A40)(v1, v3);
  }

  else
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = sub_1D1E66A7C();
    (*(*(v7 - 8) + 8))(v5, v7);

    v8 = v0[8];
    *(v8 + 111) = 0;
    *(v8 + 80) = 0u;
    *(v8 + 96) = 0u;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *v8 = 0u;
    v10 = v0[12];
    v9 = v0[13];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1D17444E0(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1744600, 0, 0);
}

uint64_t sub_1D1744600()
{
  v1 = *(*(v0 + 88) + 160);
  *(v0 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1744624, v1, 0);
}

uint64_t sub_1D1744624()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  *(v0 + 168) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D17446AC, 0, 0);
}

uint64_t sub_1D17446AC()
{
  v45 = v0;
  if (*(*(v0 + 168) + 16))
  {
    v1 = sub_1D1742188(*(v0 + 80));
    if (v2)
    {
      v3 = v1;
      v4 = *(v0 + 104);
      v5 = *(*(v0 + 168) + 56);
      v6 = sub_1D1E669FC();
      v7 = *(v6 - 8);
      (*(v7 + 16))(v4, v5 + *(v7 + 72) * v3, v6);

      v8 = 0;
      goto LABEL_7;
    }

    v10 = *(v0 + 168);
  }

  else
  {
    v9 = *(v0 + 168);
  }

  v6 = sub_1D1E669FC();
  v7 = *(v6 - 8);
  v8 = 1;
LABEL_7:
  v11 = *(v0 + 152);
  v12 = *(v0 + 128);
  v33 = *(v0 + 120);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v36 = *(v0 + 88);
  v37 = *(v0 + 80);
  v38 = *(v0 + 176);
  v39 = *(v0 + 177);
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  (*(v7 + 56))(v13, v8, 1, v6);
  v17 = sub_1D17424D8(v11, v12, v16);

  sub_1D1745950(v17, &v40);

  v35 = v42;
  v34 = v43;
  sub_1D1741B10(0, &qword_1EC642D68, 0x1E695E000);
  v31 = v41;
  v32 = v40;
  static NSUserDefaults.recommendationUILastOpenedDate.getter(v14);
  sub_1D17421D4(v12, v13, v14, &v40);
  sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
  v18 = v40;
  v30 = *(&v40 + 1);
  LOBYTE(v17) = v41;
  LOWORD(v11) = *(&v41 + 1);
  v19 = [objc_opt_self() processInfo];
  v20 = [v19 processName];

  v21 = sub_1D1E6781C();
  v23 = v22;

  sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
  v44 = v17;
  v24 = sub_1D1E66A7C();
  (*(*(v24 - 8) + 8))(v37, v24);
  v25 = v44;
  *v15 = 0xD00000000000001BLL;
  *(v15 + 8) = 0x80000001D1E6EFF0;
  *(v15 + 16) = v39;
  *(v15 + 24) = v21;
  *(v15 + 32) = v23;
  *(v15 + 40) = v38;
  *(v15 + 48) = v32;
  *(v15 + 64) = v31;
  *(v15 + 80) = v35;
  *(v15 + 88) = v34;
  *(v15 + 96) = v18;
  *(v15 + 104) = v30;
  *(v15 + 112) = v25;
  *(v15 + 113) = v11;
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1D1744A40(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v3[35] = v5;
  v6 = *(v5 - 8);
  v3[36] = v6;
  v7 = *(v6 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1744B54, v2, 0);
}

uint64_t sub_1D1744B54()
{
  v58 = v0;
  v1 = v0[33];
  swift_beginAccess();
  v2 = *(v1 + 144);
  if (*(v2 + 16))
  {
    v3 = v0[32];

    v4 = sub_1D1742188(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);

      if (qword_1EE07A0C8 != -1)
      {
        swift_once();
      }

      v7 = v0[39];
      v8 = v0[35];
      v9 = v0[36];
      v10 = v0[32];
      v11 = v0[33];
      v12 = v0[31];
      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0D0);
      (*(v9 + 16))(v7, v10, v8);
      swift_bridgeObjectRetain_n();
      v14 = v12;

      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6835C();

      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[39];
      if (v17)
      {
        v19 = v0[31];
        v20 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57[0] = v56;
        *v20 = 136315394;
        v21 = sub_1D174A5B8(&qword_1EC642DB8, &unk_1EC649E60, 0x1E696CBA0);
        swift_getObjectType();
        (*(v21 + 48))();
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DC0, &qword_1D1E6F378);
        v22 = sub_1D1E68AAC();

        v23 = swift_task_alloc();
        *(v23 + 16) = v18;
        v24 = sub_1D1746A6C(sub_1D174A6DC, v23, v22);
        v26 = v25;

        if (v24)
        {
          ObjectType = swift_getObjectType();
          v28 = (*(*(v26 + 16) + 136))(ObjectType);
          v30 = v29;
          swift_unknownObjectRelease();
        }

        else
        {
          v30 = 0xEC000000656D6F68;
          v28 = 0x206E776F6E6B6E75;
        }

        (*(v0[36] + 8))(v0[39], v0[35]);
        v44 = sub_1D1B1312C(v28, v30, v57);

        *(v20 + 4) = v44;
        *(v20 + 12) = 2080;
        v45 = sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
        v46 = MEMORY[0x1D3891260](v6, v45);
        v48 = v47;
        swift_bridgeObjectRelease_n();
        v49 = sub_1D1B1312C(v46, v48, v57);

        *(v20 + 14) = v49;
        _os_log_impl(&dword_1D16EC000, v15, v16, "%s existing predictions: %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v56, -1, -1);
        MEMORY[0x1D3893640](v20, -1, -1);
      }

      else
      {
        v42 = v0[35];
        v43 = v0[36];
        swift_bridgeObjectRelease_n();

        (*(v43 + 8))(v18, v42);
      }

      goto LABEL_21;
    }
  }

  v31 = v0[33];
  swift_beginAccess();
  if (!*(*(v31 + 136) + 16) || (v32 = v0[32], v33 = *(v31 + 136), , sub_1D1742188(v32), LOBYTE(v32) = v34, , (v32 & 1) == 0) || (v35 = *(v31 + 136), !*(v35 + 16)))
  {
LABEL_18:
    v6 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v51 = v0[38];
    v50 = v0[39];
    v52 = v0[37];
    v53 = v0[34];

    v54 = v0[1];

    return v54(v6);
  }

  v36 = v0[32];
  v37 = *(v31 + 136);

  v38 = sub_1D1742188(v36);
  if ((v39 & 1) == 0)
  {

    goto LABEL_18;
  }

  v40 = *(*(v35 + 56) + 8 * v38);
  v0[40] = v40;
  v41 = v40;

  return MEMORY[0x1EEE6DFA0](sub_1D17450A8, 0, 0);
}

uint64_t sub_1D17450A8()
{
  v1 = v0[40];
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_1D17451C4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6497B0, &qword_1D1E6F370);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D1E55558;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 fetchPredictionsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D17451C4()
{
  v1 = *(*v0 + 264);
  v3 = *v0;
  *(*v0 + 328) = *(*v0 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1D17452D0, v1, 0);
}

uint64_t sub_1D17452D0()
{
  v49 = v0;
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[34];
  v4 = *(v0[36] + 16);
  v4(v1, v0[32], v0[35]);
  sub_1D1E669EC();
  v5 = sub_1D1E669FC();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  swift_beginAccess();
  sub_1D1B0C97C(v3, v1);
  swift_endAccess();
  if (qword_1EE07A0C8 != -1)
  {
    swift_once();
  }

  v6 = v0[41];
  v7 = v0[37];
  v8 = v0[35];
  v9 = v0[32];
  v10 = v0[33];
  v11 = v0[31];
  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EE07A0D0);
  v4(v7, v9, v8);
  swift_bridgeObjectRetain_n();
  v13 = v11;

  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[37];
    v17 = v0[31];
    v18 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48[0] = v47;
    *v18 = 136315394;
    v19 = sub_1D174A5B8(&qword_1EC642DB8, &unk_1EC649E60, 0x1E696CBA0);
    swift_getObjectType();
    (*(v19 + 48))();
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DC0, &qword_1D1E6F378);
    v20 = sub_1D1E68AAC();

    v21 = swift_task_alloc();
    *(v21 + 16) = v16;
    v22 = sub_1D1746A6C(sub_1D174A6A4, v21, v20);
    v24 = v23;

    if (v22)
    {
      ObjectType = swift_getObjectType();
      v26 = (*(*(v24 + 16) + 136))(ObjectType);
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0xEC000000656D6F68;
      v26 = 0x206E776F6E6B6E75;
    }

    v33 = v0[41];
    (*(v0[36] + 8))(v0[37], v0[35]);
    v34 = sub_1D1B1312C(v26, v28, v48);

    *(v18 + 4) = v34;
    *(v18 + 12) = 2080;
    v35 = sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
    v36 = MEMORY[0x1D3891260](v33, v35);
    v38 = v37;
    swift_bridgeObjectRelease_n();
    v39 = sub_1D1B1312C(v36, v38, v48);

    *(v18 + 14) = v39;
    _os_log_impl(&dword_1D16EC000, v14, v15, "%s freshly fetched predictions: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v47, -1, -1);
    MEMORY[0x1D3893640](v18, -1, -1);
  }

  else
  {
    v29 = v0[41];
    v31 = v0[36];
    v30 = v0[37];
    v32 = v0[35];
    swift_bridgeObjectRelease_n();

    (*(v31 + 8))(v30, v32);
  }

  v40 = v0[41];
  v41 = v0[32];
  v42 = v0[33];
  swift_beginAccess();

  v43 = *(v42 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48[0] = *(v42 + 144);
  *(v42 + 144) = 0x8000000000000000;
  sub_1D1752984(v40, v41, isUniquelyReferenced_nonNull_native);
  *(v42 + 144) = v48[0];
  swift_endAccess();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v45 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D17457F8, v45, 0);
}

uint64_t sub_1D17457F8()
{
  v1 = v0[33];
  v0[42] = swift_unknownObjectWeakLoadStrong();
  v0[43] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D1745870, v1, 0);
}

uint64_t sub_1D1745870()
{
  if (*(v0 + 336))
  {
    v1 = *(v0 + 344);
    v3 = *(v0 + 320);
    v2 = *(v0 + 328);
    v4 = *(v0 + 336);
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(v2, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v6 = *(v0 + 328);
  v8 = *(v0 + 304);
  v7 = *(v0 + 312);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);

  v11 = *(v0 + 8);

  return v11(v6);
}

int64_t sub_1D1745950@<X0>(int64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result + 64;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v9 = (v3 + 63) >> 6;
    do
    {
      if (v9 - 1 == v11)
      {
        *(a2 + 32) = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 40) = 1024;
        return result;
      }

      v6 = v11 + 1;
      v12 = *(result + 72 + 8 * v11);
      v10 -= 64;
      ++v11;
    }

    while (!v12);
    v8 = (v12 - 1) & v12;
    v7 = __clz(__rbit64(v12)) - v10;
  }

  v13 = *(result + 56);
  v14 = v13 + 48 * v7;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = v16;
  while (v8)
  {
LABEL_15:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = v13 + 48 * (v18 | (v6 << 6));
    if (v17)
    {
      v16 = *(v19 + 8);
      v17 = v16;
LABEL_20:
      v15 = *v19;
      v14 = v19;
    }

    else if ((*(v19 + 8) & 1) == 0 && v15 < *v19)
    {
      v17 = 0;
      v16 = *(v19 + 8);
      goto LABEL_20;
    }
  }

  while (1)
  {
    result = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (result >= v9)
    {
      v20 = *(v14 + 40);
      v21 = *(v14 + 32);
      v22 = *(v14 + 16);
      v23 = (*(v14 + 9) << 8) | ((*(v14 + 13) | (*(v14 + 15) << 16)) << 40) | v16;
      *a2 = v15;
      *(a2 + 8) = v23;
      *(a2 + 16) = v22;
      *(a2 + 32) = v21;
      *(a2 + 40) = v20;
      return result;
    }

    v8 = *(v2 + 8 * result);
    ++v6;
    if (v8)
    {
      v6 = result;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1745ACC(uint64_t a1)
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
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

int64_t sub_1D1745B10(uint64_t a1)
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

uint64_t sub_1D1745BC4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[4];
  v3 = a1[5];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 7;
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (sub_1D1E6934C())
      {
        v2 = v6;
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return v2;
}

uint64_t PredictableInteractionEvent.init(ids:elementType:interactionType:isPredictionUI:homeID:dataModel:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 224) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 225) = *a3;
  *(v7 + 226) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D1745D2C, 0, 0);
}

uint64_t sub_1D1745D2C()
{
  *(v0 + 112) = sub_1D1E67E1C();
  *(v0 + 120) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1745DC4, v2, v1);
}

uint64_t sub_1D1745DC4()
{
  v1 = v0[15];
  v2 = v0[11];

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v0[16] = v4;
  v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1745E60, 0, 0);
}

uint64_t sub_1D1745E60()
{
  v1 = v0[10];
  if (v0[16])
  {
    v2 = v0[14];
    v0[17] = sub_1D1E66A2C();
    v0[18] = sub_1D1E67E0C();
    v4 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1745FB4, v4, v3);
  }

  else
  {
    v5 = v0[11];
    v6 = v0[9];
    v7 = sub_1D1E66A7C();
    (*(*(v7 - 8) + 8))(v1, v7);

    v8 = v0[8];
    *(v8 + 111) = 0;
    *(v8 + 80) = 0u;
    *(v8 + 96) = 0u;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *v8 = 0u;
    v10 = v0[12];
    v9 = v0[13];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1D1745FB4()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[11];

  v0[19] = [v3 homeFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D1746044, 0, 0);
}

uint64_t sub_1D1746044()
{
  if (v0[19])
  {
    v1 = v0[14];
    v0[20] = sub_1D1E67E0C();
    v3 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1746194, v3, v2);
  }

  else
  {
    v4 = v0[16];
    v5 = v0[10];
    v6 = v0[11];
    v7 = v0[9];
    v8 = sub_1D1E66A7C();
    (*(*(v8 - 8) + 8))(v5, v8);

    v9 = v0[8];
    *(v9 + 111) = 0;
    *(v9 + 80) = 0u;
    *(v9 + 96) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = 0u;
    v11 = v0[12];
    v10 = v0[13];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1D1746194()
{
  v1 = *(v0 + 160);

  if (qword_1EE07B500 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D174622C, 0, 0);
}

uint64_t sub_1D174622C()
{
  v1 = *(v0 + 112);
  *(v0 + 168) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17462B8, v3, v2);
}

uint64_t sub_1D17462B8()
{
  v1 = v0[21];
  v2 = v0[16];

  v0[22] = qword_1EE07B508;
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_1D1746368;
  v4 = v0[10];

  return RecommendationsModerator.currentUserActionPredictions(manager:for:)(v2, v4);
}

uint64_t sub_1D1746368(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1746468, 0, 0);
}

uint64_t sub_1D1746468()
{
  v1 = *(v0 + 112);
  *(v0 + 200) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17464F4, v3, v2);
}

uint64_t sub_1D17464F4()
{
  v1 = *(v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1D174655C, 0, 0);
}

uint64_t sub_1D174655C()
{
  v1 = *(v0 + 112);
  *(v0 + 208) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17465E8, v3, v2);
}

uint64_t sub_1D17465E8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D1746654, v2, 0);
}

uint64_t sub_1D1746654()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  *(v0 + 216) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D17466DC, 0, 0);
}

uint64_t sub_1D17466DC()
{
  v44 = v0;
  if (*(*(v0 + 216) + 16))
  {
    v1 = sub_1D1742188(*(v0 + 80));
    if (v2)
    {
      v3 = v1;
      v4 = *(v0 + 104);
      v5 = *(*(v0 + 216) + 56);
      v6 = sub_1D1E669FC();
      v7 = *(v6 - 8);
      (*(v7 + 16))(v4, v5 + *(v7 + 72) * v3, v6);

      v8 = 0;
      goto LABEL_7;
    }

    v10 = *(v0 + 216);
  }

  else
  {
    v9 = *(v0 + 216);
  }

  v6 = sub_1D1E669FC();
  v7 = *(v6 - 8);
  v8 = 1;
LABEL_7:
  v11 = *(v0 + 192);
  v12 = *(v0 + 152);
  v33 = *(v0 + 128);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v36 = *(v0 + 88);
  v37 = *(v0 + 80);
  v38 = *(v0 + 224);
  v39 = *(v0 + 225);
  v16 = *(v0 + 64);
  v15 = *(v0 + 72);
  (*(v7 + 56))(v13, v8, 1, v6);
  v17 = sub_1D17424D8(v11, v12, v15);

  sub_1D1745950(v17, &v40);

  v35 = v42;
  v34 = v43;
  sub_1D1741B10(0, &qword_1EC642D68, 0x1E695E000);
  v31 = v41;
  v32 = v40;
  static NSUserDefaults.recommendationUILastOpenedDate.getter(v14);
  sub_1D17421D4(v12, v13, v14, &v40);
  sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
  LOBYTE(v17) = v40;
  v18 = *(&v40 + 1);
  v19 = v41;
  v30 = *(&v41 + 1);
  v20 = [objc_opt_self() processInfo];
  v21 = [v20 processName];

  v22 = sub_1D1E6781C();
  v24 = v23;

  v25 = sub_1D1E66A7C();
  (*(*(v25 - 8) + 8))(v37, v25);
  sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
  *v16 = 0xD00000000000001BLL;
  *(v16 + 8) = 0x80000001D1E6EFF0;
  *(v16 + 16) = v39;
  *(v16 + 24) = v22;
  *(v16 + 32) = v24;
  *(v16 + 40) = v38;
  *(v16 + 48) = v32;
  *(v16 + 64) = v31;
  *(v16 + 80) = v35;
  *(v16 + 88) = v34;
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  *(v16 + 112) = v19;
  *(v16 + 113) = v30;
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1D1746A6C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 32); ; ++i)
  {
    v10 = *i;
    v7 = v10;
    swift_unknownObjectRetain();
    v8 = a1(&v10);
    if (v3)
    {
      break;
    }

    if (v8)
    {
      return v7;
    }

    swift_unknownObjectRelease();
    if (!--v4)
    {
      return 0;
    }
  }

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1D1746BCC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v31 = a5;
  v28 = a1;
  v29 = a4;
  v27 = a6;
  v26 = a3(0);
  v30 = *(v26 - 8);
  v8 = *(v30 + 64);
  v9 = MEMORY[0x1EEE9AC00](v26);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 64);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_8:
      sub_1D174A418(*(a2 + 56) + *(v30 + 72) * (__clz(__rbit64(v16)) | (v20 << 6)), v13, v29);
      sub_1D174A480(v13, v11, v31);
      v21 = v28(v11);
      if (v6)
      {
        sub_1D174A4E8(v11, v31);
      }

      if (v21)
      {
        break;
      }

      v16 &= v16 - 1;
      result = sub_1D174A4E8(v11, v31);
      v19 = v20;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v24 = v27;
    sub_1D174A480(v11, v27, v31);
    v23 = v24;
    v22 = 0;
    return (*(v30 + 56))(v23, v22, 1, v26);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        v22 = 1;
        v23 = v27;
        return (*(v30 + 56))(v23, v22, 1, v26);
      }

      v16 = *(a2 + 64 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D1746E10(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
    sub_1D174A5B8(&qword_1EE079CE8, &qword_1EE079CF0, 0x1E696CBB8);
    sub_1D1E681BC();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_1D1E6877C())
        {
          sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_1D1716918();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D1747128@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v31 = a5;
  v28 = a1;
  v29 = a4;
  v27 = a6;
  v26 = a3(0);
  v30 = *(v26 - 8);
  v8 = *(v30 + 64);
  v9 = MEMORY[0x1EEE9AC00](v26);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 56);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_8:
      sub_1D174A418(*(a2 + 48) + *(v30 + 72) * (__clz(__rbit64(v16)) | (v20 << 6)), v13, v29);
      sub_1D174A480(v13, v11, v31);
      v21 = v28(v11);
      if (v6)
      {
        sub_1D174A4E8(v11, v31);
      }

      if (v21)
      {
        break;
      }

      v16 &= v16 - 1;
      result = sub_1D174A4E8(v11, v31);
      v19 = v20;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v24 = v27;
    sub_1D174A480(v11, v27, v31);
    v23 = v24;
    v22 = 0;
    return (*(v30 + 56))(v23, v22, 1, v26);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        v22 = 1;
        v23 = v27;
        return (*(v30 + 56))(v23, v22, 1, v26);
      }

      v16 = *(a2 + 56 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D174736C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v35 = a2;
  v36 = a1;
  v33 = a4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v32 = *(v37 - 8);
  v7 = *(v32 + 64);
  v8 = MEMORY[0x1EEE9AC00](v37);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v31 - v11;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v38 = a3;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v10;
      v39 = v5;
      v20 = v18;
LABEL_9:
      v21 = __clz(__rbit64(v15)) | (v20 << 6);
      v22 = v38;
      v23 = *(v38 + 48);
      v24 = sub_1D1E66A7C();
      v25 = v34;
      (*(*(v24 - 8) + 16))(v34, v23 + *(*(v24 - 8) + 72) * v21, v24);
      v26 = *(v22 + 56);
      v27 = type metadata accessor for StaticService(0);
      sub_1D174A418(v26 + *(*(v27 - 8) + 72) * v21, v25 + *(v37 + 48), type metadata accessor for StaticService);
      v10 = v19;
      sub_1D1741A90(v25, v19, &qword_1EC642DB0, &unk_1D1E6F360);
      v28 = v39;
      v29 = v36(v19);
      v5 = v28;
      if (v28)
      {
        sub_1D1741A30(v19, &qword_1EC642DB0, &unk_1D1E6F360);
      }

      if (v29)
      {
        break;
      }

      v15 &= v15 - 1;
      result = sub_1D1741A30(v19, &qword_1EC642DB0, &unk_1D1E6F360);
      v18 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v30 = v33;
    sub_1D1741A90(v10, v33, &qword_1EC642DB0, &unk_1D1E6F360);
    return (*(v32 + 56))(v30, 0, 1, v37);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        return (*(v32 + 56))(v33, 1, 1, v37);
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v19 = v10;
        v39 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D17476A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v8 = result;
    v9 = a2 + 32;
    while (1)
    {
      sub_1D17419CC(v9, v11);
      v10 = v8(v11);
      if (v4)
      {
        return __swift_destroy_boxed_opaque_existential_1(v11);
      }

      if (v10)
      {
        return a3(v11, a4);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v11);
      v9 += 40;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D1747818@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v12 = a3(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - v16;
  v18 = *(a2 + 16);
  if (v18)
  {
    v24 = v15;
    v25 = v14;
    v26 = a6;
    v19 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = *(v15 + 72);
    while (1)
    {
      sub_1D174A418(v19, v17, a4);
      v21 = a1(v17);
      if (v6)
      {
        return sub_1D174A4E8(v17, a5);
      }

      if (v21)
      {
        break;
      }

      sub_1D174A4E8(v17, a5);
      v19 += v20;
      if (!--v18)
      {
        v22 = 1;
        a6 = v26;
        goto LABEL_10;
      }
    }

    a6 = v26;
    sub_1D174A480(v17, v26, a5);
    v22 = 0;
LABEL_10:
    v15 = v24;
    v14 = v25;
  }

  else
  {
    v22 = 1;
  }

  return (*(v15 + 56))(a6, v22, 1, v14);
}

uint64_t sub_1D17479B4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = sub_1D1E66A7C();
  v6 = *(*(v39 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D1747CC8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_1D1747DDC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1E0D7A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D1747F44(v6, &qword_1EE07B620, 0x1E696CB98, sub_1D1748338, sub_1D1748070);
  return sub_1D1E6897C();
}

uint64_t sub_1D1747E90(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1E0D7A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D1747F44(v6, &qword_1EE07B650, 0x1E696CCA8, sub_1D1748BB4, sub_1D174823C);
  return sub_1D1E6897C();
}

uint64_t sub_1D1747F44(uint64_t a1, unint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_1D1E68F9C();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D1741B10(0, a2, a3);
        v14 = sub_1D1E67C8C();
        *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFF8;
      v16[0] = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v16[1] = v13;
      a4(v16, v17, a1, v12);
      *(v15 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

void sub_1D1748070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v30 = *a4;
LABEL_6:
    v28 = v5;
    v29 = a3;
    v8 = *(v4 + 8 * a3);
    v27 = v6;
    while (1)
    {
      v9 = *v5;
      v10 = v8;
      v11 = v9;
      v12 = [v10 v7[47]];
      if (v12 == [v11 v7[47]])
      {
        v14 = [v10 name];
        v15 = sub_1D1E6781C();
        v17 = v16;

        v18 = [v11 name];
        v19 = sub_1D1E6781C();
        v21 = v20;

        if (v15 == v19 && v17 == v21)
        {

          v4 = v30;
          v7 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
LABEL_5:
          a3 = v29 + 1;
          v5 = v28 + 8;
          v6 = v27 - 1;
          if (v29 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v23 = sub_1D1E6904C();

        v4 = v30;
        v7 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        if ((v23 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v13 = [v10 v7[47]];

        if ((v13 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v24 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v24;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D174823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 predictionScore];
      v15 = v14;
      [v13 predictionScore];
      v17 = v16;

      if (v17 >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D1748338(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    while (1)
    {
      v10 = v7;
      v11 = v7 + 1;
      if (v7 + 1 < v6)
      {
        break;
      }

LABEL_32:
      v35 = a3[1];
      v7 = v11;
      if (v11 >= v35)
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_143;
      }

      if (v11 - v10 >= a4)
      {
LABEL_40:
        v7 = v11;
LABEL_41:
        if (v7 < v10)
        {
          goto LABEL_142;
        }

        goto LABEL_42;
      }

      v36 = v10 + a4;
      if (__OFADD__(v10, a4))
      {
        goto LABEL_145;
      }

      if (v36 >= v35)
      {
        v36 = a3[1];
      }

      if (v36 < v10)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      if (v11 == v36)
      {
        goto LABEL_40;
      }

      v110 = v8;
      v5 = *a3;
      v4 = *a3 + 8 * v11 - 8;
      v107 = v10;
      v83 = v10 - v11;
      v112 = v36;
      v120 = *a3;
      while (2)
      {
        v114 = v4;
        v116 = v11;
        v84 = *(v5 + 8 * v11);
        v113 = v83;
        while (1)
        {
          v85 = *v4;
          v86 = v84;
          v87 = v85;
          LODWORD(v85) = [v86 v9[47]];
          if (v85 != [v87 v9[47]])
          {
            v88 = [v86 v9[47]];

            if ((v88 & 1) == 0)
            {
              goto LABEL_93;
            }

            goto LABEL_103;
          }

          v89 = [v86 name];
          v90 = sub_1D1E6781C();
          v92 = v91;

          v93 = [v87 name];
          v94 = sub_1D1E6781C();
          v96 = v95;

          if (v90 == v94 && v92 == v96)
          {
            break;
          }

          v98 = sub_1D1E6904C();

          v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
          v5 = v120;
          if ((v98 & 1) == 0)
          {
            goto LABEL_93;
          }

LABEL_103:
          if (!v5)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          v99 = *v4;
          v84 = *(v4 + 8);
          *v4 = v84;
          *(v4 + 8) = v99;
          v4 -= 8;
          if (__CFADD__(v83++, 1))
          {
            goto LABEL_93;
          }
        }

        v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        v5 = v120;
LABEL_93:
        v11 = v116 + 1;
        v4 = v114 + 8;
        v83 = v113 - 1;
        if (v116 + 1 != v112)
        {
          continue;
        }

        break;
      }

      v7 = v112;
      v8 = v110;
      v10 = v107;
      if (v112 < v107)
      {
        goto LABEL_142;
      }

LABEL_42:
      v37 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v37;
      }

      else
      {
        v8 = sub_1D177D070(0, *(v37 + 2) + 1, 1, v37);
      }

      v4 = *(v8 + 2);
      v38 = *(v8 + 3);
      v39 = v4 + 1;
      if (v4 >= v38 >> 1)
      {
        v8 = sub_1D177D070((v38 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v39;
      v40 = &v8[16 * v4];
      *(v40 + 4) = v10;
      *(v40 + 5) = v7;
      v41 = *a1;
      if (!*a1)
      {
        goto LABEL_152;
      }

      if (v4)
      {
        while (2)
        {
          v42 = v39 - 1;
          if (v39 >= 4)
          {
            v47 = &v8[16 * v39 + 32];
            v48 = *(v47 - 64);
            v49 = *(v47 - 56);
            v53 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            if (v53)
            {
              goto LABEL_129;
            }

            v52 = *(v47 - 48);
            v51 = *(v47 - 40);
            v53 = __OFSUB__(v51, v52);
            v45 = v51 - v52;
            v46 = v53;
            if (v53)
            {
              goto LABEL_130;
            }

            v54 = &v8[16 * v39];
            v56 = *v54;
            v55 = *(v54 + 1);
            v53 = __OFSUB__(v55, v56);
            v57 = v55 - v56;
            if (v53)
            {
              goto LABEL_132;
            }

            v53 = __OFADD__(v45, v57);
            v58 = v45 + v57;
            if (v53)
            {
              goto LABEL_135;
            }

            if (v58 >= v50)
            {
              v76 = &v8[16 * v42 + 32];
              v78 = *v76;
              v77 = *(v76 + 1);
              v53 = __OFSUB__(v77, v78);
              v79 = v77 - v78;
              if (v53)
              {
                goto LABEL_139;
              }

              if (v45 < v79)
              {
                v42 = v39 - 2;
              }
            }

            else
            {
LABEL_61:
              if (v46)
              {
                goto LABEL_131;
              }

              v59 = &v8[16 * v39];
              v61 = *v59;
              v60 = *(v59 + 1);
              v62 = __OFSUB__(v60, v61);
              v63 = v60 - v61;
              v64 = v62;
              if (v62)
              {
                goto LABEL_134;
              }

              v65 = &v8[16 * v42 + 32];
              v67 = *v65;
              v66 = *(v65 + 1);
              v53 = __OFSUB__(v66, v67);
              v68 = v66 - v67;
              if (v53)
              {
                goto LABEL_137;
              }

              if (__OFADD__(v63, v68))
              {
                goto LABEL_138;
              }

              if (v63 + v68 < v45)
              {
                goto LABEL_75;
              }

              if (v45 < v68)
              {
                v42 = v39 - 2;
              }
            }
          }

          else
          {
            if (v39 == 3)
            {
              v43 = *(v8 + 4);
              v44 = *(v8 + 5);
              v53 = __OFSUB__(v44, v43);
              v45 = v44 - v43;
              v46 = v53;
              goto LABEL_61;
            }

            v69 = &v8[16 * v39];
            v71 = *v69;
            v70 = *(v69 + 1);
            v53 = __OFSUB__(v70, v71);
            v63 = v70 - v71;
            v64 = v53;
LABEL_75:
            if (v64)
            {
              goto LABEL_133;
            }

            v72 = &v8[16 * v42];
            v74 = *(v72 + 4);
            v73 = *(v72 + 5);
            v53 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v53)
            {
              goto LABEL_136;
            }

            if (v75 < v63)
            {
              break;
            }
          }

          v4 = v42 - 1;
          if (v42 - 1 >= v39)
          {
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
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

          if (!*a3)
          {
            goto LABEL_149;
          }

          v5 = v8;
          v80 = *&v8[16 * v4 + 32];
          v81 = *&v8[16 * v42 + 40];
          sub_1D174922C((*a3 + 8 * v80), (*a3 + 8 * *&v8[16 * v42 + 32]), (*a3 + 8 * v81), v41);
          if (v118)
          {
            goto LABEL_123;
          }

          if (v81 < v80)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1D1E0BE44(v5);
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_128;
          }

          v82 = v5 + 16 * v4;
          *(v82 + 32) = v80;
          *(v82 + 40) = v81;
          v123 = v5;
          sub_1D1E0BDB8(v42);
          v8 = v123;
          v39 = *(v123 + 16);
          if (v39 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_112;
      }
    }

    v109 = v8;
    v4 = *a3;
    v122 = *(*a3 + 8 * v11);
    v121 = *(v4 + 8 * v7);
    v12 = v121;
    v13 = v122;
    v14 = v12;
    v119 = sub_1D1A84004(&v122, &v121);
    if (v118)
    {

      return;
    }

    v5 = v10 + 2;
    if (v10 + 2 >= v6)
    {
      v8 = v109;
      if ((v119 & 1) == 0)
      {
LABEL_31:
        v11 = v5;
        goto LABEL_32;
      }
    }

    else
    {
      v106 = v10;
      v4 += 8 * v10 + 16;
      v115 = v6;
      do
      {
        v16 = *(v4 - 8);
        v17 = *v4;
        v18 = v16;
        v19 = [v17 v9[47]];
        if (v19 == [v18 v9[47]])
        {
          v20 = [v17 name];
          v21 = sub_1D1E6781C();
          v23 = v22;

          v24 = [v18 name];
          v25 = sub_1D1E6781C();
          v27 = v26;

          if (v21 == v25 && v23 == v27)
          {

            v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            v6 = v115;
            if (v119)
            {
              v8 = v109;
              v10 = v106;
              goto LABEL_23;
            }
          }

          else
          {
            v29 = sub_1D1E6904C();

            v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            v6 = v115;
            if ((v119 ^ v29))
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          v15 = [v17 v9[47]];

          if ((v119 ^ v15))
          {
            goto LABEL_22;
          }
        }

        v4 += 8;
        ++v5;
      }

      while (v6 != v5);
      v5 = v6;
LABEL_22:
      v8 = v109;
      v10 = v106;
      if ((v119 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_23:
    if (v5 < v10)
    {
      goto LABEL_144;
    }

    if (v10 < v5)
    {
      v30 = 8 * v5 - 8;
      v31 = 8 * v10;
      v11 = v5;
      v32 = v10;
      while (1)
      {
        if (v32 != --v5)
        {
          v34 = *a3;
          if (!*a3)
          {
            goto LABEL_150;
          }

          v33 = *(v34 + v31);
          *(v34 + v31) = *(v34 + v30);
          *(v34 + v30) = v33;
        }

        ++v32;
        v30 -= 8;
        v31 += 8;
        if (v32 >= v5)
        {
          goto LABEL_32;
        }
      }
    }

    goto LABEL_31;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_112:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_153;
  }

  v4 = v8;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v101 = v4;
  }

  else
  {
LABEL_147:
    v101 = sub_1D1E0BE44(v4);
  }

  v123 = v101;
  v4 = *(v101 + 2);
  if (v4 < 2)
  {
LABEL_123:

    return;
  }

  while (*a3)
  {
    v102 = *&v101[16 * v4];
    v103 = v101;
    v104 = *&v101[16 * v4 + 24];
    sub_1D174922C((*a3 + 8 * v102), (*a3 + 8 * *&v101[16 * v4 + 16]), (*a3 + 8 * v104), v5);
    if (v118)
    {
      goto LABEL_123;
    }

    if (v104 < v102)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_1D1E0BE44(v103);
    }

    if (v4 - 2 >= *(v103 + 2))
    {
      goto LABEL_141;
    }

    v105 = &v103[16 * v4];
    *v105 = v102;
    *(v105 + 1) = v104;
    v123 = v103;
    sub_1D1E0BDB8(v4 - 1);
    v101 = v123;
    v4 = *(v123 + 16);
    if (v4 <= 1)
    {
      goto LABEL_123;
    }
  }

LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

void sub_1D1748BB4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_1D1E0BE44(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_1D17496B0((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D1E0BE44(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_1D1E0BDB8(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 predictionScore];
      v19 = v18;
      [v17 predictionScore];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 predictionScore];
        v27 = v26;
        [v25 predictionScore];
        v29 = v28;

        ++v22;
        ++v14;
        if (v21 < v19 == v29 >= v27)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v21 < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D177D070(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_1D177D070((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
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

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_1D17496B0((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D1E0BE44(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_1D1E0BDB8(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 predictionScore];
    v48 = v47;
    [v46 predictionScore];
    v50 = v49;

    if (v50 >= v48)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
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

uint64_t sub_1D174922C(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v33 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v33;
    }

    v32 = a2;
    v14 = &v4[v11];
    if (v9 >= 8 && a2 > __src)
    {
      v34 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      v53 = v4;
LABEL_35:
      v35 = v32 - 1;
      --v5;
      v36 = v14;
      v54 = v32 - 1;
      __dsta = v32;
      do
      {
        v37 = *--v36;
        v38 = *v35;
        v39 = v37;
        v40 = v38;
        LODWORD(v38) = [v39 v34[47]];
        if (v38 == [v40 v34[47]])
        {
          v60 = v14;
          v42 = [v39 name];
          v43 = sub_1D1E6781C();
          v45 = v44;

          v46 = [v40 name];
          v47 = sub_1D1E6781C();
          v49 = v48;

          if (v43 == v47 && v45 == v49)
          {

            v4 = v53;
            v35 = v54;
            v14 = v60;
            v34 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
          }

          else
          {
            v51 = sub_1D1E6904C();

            v4 = v53;
            v35 = v54;
            v14 = v60;
            v34 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            if (v51)
            {
LABEL_49:
              if (v5 + 1 != __dsta)
              {
                *v5 = *v35;
              }

              if (v14 <= v4 || (v32 = v35, v35 <= __src))
              {
                v32 = v35;
                goto LABEL_55;
              }

              goto LABEL_35;
            }
          }
        }

        else
        {
          v41 = [v39 v34[47]];

          if (v41)
          {
            goto LABEL_49;
          }
        }

        if (v5 + 1 != v14)
        {
          *v5 = *v36;
        }

        --v5;
        v14 = v36;
      }

      while (v36 > v4);
      v14 = v36;
      v32 = __dsta;
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v14 = &v4[v8];
    if (v6 >= 8 && v12 < v5)
    {
      v15 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      v59 = v14;
      do
      {
        v16 = *v4;
        v17 = *v12;
        v18 = v16;
        LODWORD(v16) = [v17 v15[47]];
        if (v16 == [v18 v15[47]])
        {
          __dst = v12;
          v57 = v13;
          v20 = v4;
          v21 = [v17 name];
          v22 = sub_1D1E6781C();
          v24 = v23;

          v25 = [v18 name];
          v26 = sub_1D1E6781C();
          v28 = v27;

          v29 = v22 == v26 && v24 == v28;
          if (v29)
          {

            v4 = v20;
            v12 = __dst;
            v13 = v57;
            v14 = v59;
            v15 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
LABEL_24:
            v31 = v4;
            v29 = v13 == v4++;
            if (v29)
            {
              goto LABEL_26;
            }

LABEL_25:
            *v13 = *v31;
            goto LABEL_26;
          }

          v30 = sub_1D1E6904C();

          v4 = v20;
          v12 = __dst;
          v13 = v57;
          v14 = v59;
          v15 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
          if ((v30 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v19 = [v17 v15[47]];

          if ((v19 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v31 = v12;
        v29 = v13 == v12++;
        if (!v29)
        {
          goto LABEL_25;
        }

LABEL_26:
        ++v13;
      }

      while (v4 < v14 && v12 < v5);
    }

    v32 = v13;
  }

LABEL_55:
  if (v32 != v4 || v32 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v32, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1D17496B0(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 predictionScore];
        v35 = v34;
        [v33 predictionScore];
        v37 = v36;

        if (v37 < v35)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 predictionScore];
        v19 = v18;
        [v17 predictionScore];
        v21 = v20;

        if (v21 >= v19)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1D17499C8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1D1E6873C();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1D1749AC0()
{
  result = qword_1EC642D40;
  if (!qword_1EC642D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D40);
  }

  return result;
}

unint64_t sub_1D1749B14()
{
  result = qword_1EC642D48;
  if (!qword_1EC642D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D48);
  }

  return result;
}

unint64_t sub_1D1749B68()
{
  result = qword_1EC642D50;
  if (!qword_1EC642D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D50);
  }

  return result;
}

unint64_t sub_1D1749BBC()
{
  result = qword_1EC642D58;
  if (!qword_1EC642D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D58);
  }

  return result;
}

unint64_t sub_1D1749C10()
{
  result = qword_1EC642D60;
  if (!qword_1EC642D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D60);
  }

  return result;
}

unint64_t sub_1D1749C88()
{
  result = qword_1EC642D70;
  if (!qword_1EC642D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D70);
  }

  return result;
}

unint64_t sub_1D1749CE0()
{
  result = qword_1EC642D78;
  if (!qword_1EC642D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC642D80, &qword_1D1E6F148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D1749D8C(uint64_t a1)
{
  result = sub_1D1749DB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1749DB4()
{
  result = qword_1EC642D88;
  if (!qword_1EC642D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D88);
  }

  return result;
}

__n128 __swift_memcpy115_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D1749E34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 115))
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

uint64_t sub_1D1749E7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 114) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 115) = 1;
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

    *(result + 115) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictableInteractionEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PredictableInteractionEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D174A054()
{
  result = qword_1EC642D90;
  if (!qword_1EC642D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D90);
  }

  return result;
}

unint64_t sub_1D174A0AC()
{
  result = qword_1EC642D98;
  if (!qword_1EC642D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642D98);
  }

  return result;
}

unint64_t sub_1D174A104()
{
  result = qword_1EC642DA0;
  if (!qword_1EC642DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DA0);
  }

  return result;
}

uint64_t sub_1D174A158(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54746E656D656C65 && a2 == 0xEB00000000657079 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E737365636F7270 && a2 == 0xEB00000000656D61 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EB85A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EB85C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EB85E0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1D174A3C4()
{
  result = qword_1EC642DA8;
  if (!qword_1EC642DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DA8);
  }

  return result;
}

uint64_t sub_1D174A418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D174A480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D174A4E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D174A548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D174A5B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D1741B10(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D174A5FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D1E66A7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static PredictionsRelevanceLevel.analyze<A>(predictions:totalPredictableCount:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  sub_1D1E67D1C();
  swift_getWitnessTable();
  result = sub_1D1E682AC();
  v5 = 2 * (a1 < 5);
  if (result)
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

unint64_t PredictionsRelevanceLevel.description.getter()
{
  v1 = 0x746E6176656C6572;
  v2 = 0xD000000000000025;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = 0x6369646572506F6ELL;
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

HomeDataModel::PredictionsRelevanceLevel_optional __swiftcall PredictionsRelevanceLevel.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 2) >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = 1 - rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D174A860()
{
  result = qword_1EC642DC8;
  if (!qword_1EC642DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DC8);
  }

  return result;
}

uint64_t sub_1D174A8B4()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](1 - v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D174A934()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](1 - v1);
  return sub_1D1E6926C();
}

unint64_t sub_1D174A998()
{
  v1 = 0x746E6176656C6572;
  v2 = 0xD000000000000025;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = 0x6369646572506F6ELL;
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

unint64_t sub_1D174AAEC()
{
  result = qword_1EC642DD0;
  if (!qword_1EC642DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DD0);
  }

  return result;
}

uint64_t TileInteractionEvent.eventName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TileInteractionEvent.itemClassName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t TileInteractionEvent.processName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t TileInteractionEvent.sourceViewControllerClassName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

__n128 TileInteractionEvent.predictionScores.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  result = *(v1 + 96);
  v5 = *(v1 + 112);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

__n128 TileInteractionEvent.predictionContext.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[10].n128_u16[0];
  v3 = v1[10].n128_u8[2];
  result = v1[9];
  *a1 = result;
  a1[1].n128_u8[2] = v3;
  a1[1].n128_u16[0] = v2;
  return result;
}

HomeDataModel::TileInteractionEvent::InteractionType_optional __swiftcall TileInteractionEvent.InteractionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeDataModel::TileInteractionEvent::ResultPriority_optional __swiftcall TileInteractionEvent.ResultPriority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if ((rawValue + 1) < 4)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D174AE28()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1 - 1);
  return sub_1D1E6926C();
}

uint64_t sub_1D174AEA0()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1 - 1);
  return sub_1D1E6926C();
}

__n128 TileInteractionEvent.init(interactionType:itemClassName:type:tileState:tileInteractionArea:sourceViewControllerClassName:displayedTileContext:tileIsEditing:itemPriority:numberOfRepresentedHomeKitObjects:isServiceLikeItem:isSuggestedScenesEnabled:isShownAsPrediction:isShownInPredictionUI:predictionScores:predictionContext:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char a11, char *a12, uint64_t a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t *a19)
{
  v31 = *a1;
  v35 = *a4;
  v20 = *a6;
  v39 = *a10;
  v33 = *a12;
  v34 = *a5;
  v41 = *(a18 + 32);
  v40 = *(a18 + 40);
  if (a3)
  {
    v21 = a2;
  }

  else
  {
    v21 = 0x6E776F6E6B6E55;
  }

  v37 = a19[1];
  v38 = *a19;
  if (a3)
  {
    v22 = a3;
  }

  else
  {
    v22 = 0xE700000000000000;
  }

  v36 = *(a19 + 8);
  if (a8)
  {
    v23 = a7;
  }

  else
  {
    v23 = 7104878;
  }

  v32 = *(a19 + 18);
  if (a8)
  {
    v24 = a8;
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  v25 = [objc_opt_self() processInfo];
  v26 = [v25 processName];

  v27 = sub_1D1E6781C();
  v29 = v28;

  *a9 = 0x65746E49656C6954;
  *(a9 + 8) = 0xEF6E6F6974636172;
  *(a9 + 16) = v31;
  *(a9 + 17) = a14;
  *(a9 + 18) = a11;
  *(a9 + 19) = v20;
  *(a9 + 24) = v21;
  *(a9 + 32) = v22;
  *(a9 + 40) = v35;
  *(a9 + 41) = v34;
  *(a9 + 42) = v33;
  *(a9 + 48) = a13;
  *(a9 + 56) = v27;
  *(a9 + 64) = v29;
  *(a9 + 72) = v23;
  *(a9 + 80) = v24;
  *(a9 + 88) = v39;
  *(a9 + 89) = a15;
  *(a9 + 90) = a16;
  *(a9 + 91) = a17;
  result = *(a18 + 16);
  *(a9 + 96) = *a18;
  *(a9 + 112) = result;
  *(a9 + 128) = v41;
  *(a9 + 136) = v40;
  *(a9 + 144) = v38;
  *(a9 + 152) = v37;
  *(a9 + 162) = v32;
  *(a9 + 160) = v36;
  return result;
}

Swift::Void __swiftcall TileInteractionEvent.transform(payload:)(Swift::OpaquePointer *payload)
{
  v3 = v1[40];
  v4 = v1[41];
  v5 = v1[88];
  if (v1[19] <= 2u)
  {
    v1[19];
    v6 = sub_1D1E677EC();

    rawValue = payload->_rawValue;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = payload->_rawValue;
    sub_1D175263C(v6, 0xD000000000000013, 0x80000001D1EB86B0, isUniquelyReferenced_nonNull_native);
    payload->_rawValue = v24;
  }

  v9 = sub_1D1E6821C();
  v10 = payload->_rawValue;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v25 = payload->_rawValue;
  sub_1D175263C(v9, 0xD000000000000010, 0x80000001D1EB8670, v11);
  payload->_rawValue = v25;
  v12 = sub_1D1E67D2C();
  v13 = payload->_rawValue;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v26 = payload->_rawValue;
  sub_1D175263C(v12, 0x6172656D61437369, 0xEC0000006D657449, v14);
  payload->_rawValue = v26;
  v15 = sub_1D1E67D2C();
  v16 = payload->_rawValue;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v27 = payload->_rawValue;
  sub_1D175263C(v15, 0x6E6F697463417369, 0xEF6D657449746553, v17);
  payload->_rawValue = v27;
  v18 = sub_1D1E67D2C();
  v19 = payload->_rawValue;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v28 = payload->_rawValue;
  sub_1D175263C(v18, 0x7375746174537369, 0xEC0000006D657449, v20);
  payload->_rawValue = v28;
  v21 = sub_1D1E67D2C();
  v22 = payload->_rawValue;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = payload->_rawValue;
  sub_1D175263C(v21, 0x61446D6F6F527369, 0xEF6472616F626873, v23);
  payload->_rawValue = v29;
}

unint64_t sub_1D174B498(char a1)
{
  result = 0x6D614E746E657665;
  switch(a1)
  {
    case 1:
      result = 0x7463617265746E69;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x64457349656C6974;
      break;
    case 4:
    case 15:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x73616C436D657469;
      break;
    case 6:
      result = 1701869940;
      break;
    case 7:
      result = 0x74617453656C6974;
      break;
    case 8:
      result = 0x6F6972506D657469;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0x4E737365636F7270;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D174B6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D174C7C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D174B700(uint64_t a1)
{
  v2 = sub_1D174C128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D174B73C(uint64_t a1)
{
  v2 = sub_1D174C128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TileInteractionEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DD8, &qword_1D1E6F4E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - v6;
  v8 = *v1;
  v9 = v1[1];
  v56 = *(v1 + 16);
  v10 = *(v1 + 17);
  v49 = *(v1 + 18);
  v50 = v10;
  v48 = *(v1 + 19);
  v11 = v1[3];
  v46 = v1[4];
  v47 = v11;
  LODWORD(v11) = *(v1 + 40);
  v44 = *(v1 + 41);
  v45 = v11;
  v43 = *(v1 + 42);
  v12 = v1[6];
  v13 = v1[7];
  v14 = v1[9];
  v41 = v1[8];
  v42 = v12;
  v38 = v14;
  v39 = v1[10];
  v40 = v13;
  LODWORD(v12) = *(v1 + 88);
  v36 = *(v1 + 89);
  v37 = v12;
  LODWORD(v12) = *(v1 + 90);
  v34 = *(v1 + 91);
  v35 = v12;
  v15 = *(v1 + 6);
  v32 = *(v1 + 7);
  v33 = v15;
  v30 = v1[16];
  v31 = *(v1 + 68);
  v16 = v1[19];
  *&v29 = v1[18];
  *(&v29 + 1) = v16;
  v28 = *(v1 + 162);
  v17 = *(v1 + 80);
  v19 = a1[3];
  v18 = a1[4];
  v20 = a1;
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v19);
  sub_1D174C128();
  sub_1D1E6930C();
  LOBYTE(v52) = 0;
  v23 = v7;
  v24 = v51;
  sub_1D1E68ECC();
  if (v24)
  {
    return (*(v4 + 8))(v7, v22);
  }

  v26 = v48;
  LODWORD(v51) = v17;
  LOBYTE(v52) = v56;
  v57 = 1;
  sub_1D174C17C();
  sub_1D1E68F1C();
  LOBYTE(v52) = 2;
  sub_1D1E68EDC();
  LOBYTE(v52) = 3;
  sub_1D1E68E1C();
  LOBYTE(v52) = v26;
  v57 = 4;
  sub_1D174C1D0();
  sub_1D1E68E5C();
  LOBYTE(v52) = 5;
  sub_1D1E68ECC();
  LOBYTE(v52) = v45;
  v57 = 6;
  sub_1D1749B14();
  sub_1D1E68F1C();
  LOBYTE(v52) = v44;
  v57 = 7;
  sub_1D174C224();
  sub_1D1E68F1C();
  LOBYTE(v52) = v43;
  v57 = 8;
  sub_1D174C278();
  sub_1D1E68E5C();
  LOBYTE(v52) = 9;
  sub_1D1E68F0C();
  LOBYTE(v52) = 10;
  sub_1D1E68ECC();
  LOBYTE(v52) = 11;
  sub_1D1E68ECC();
  LOBYTE(v52) = v37;
  v57 = 12;
  sub_1D174C2CC();
  sub_1D1E68E5C();
  LOBYTE(v52) = 13;
  sub_1D1E68E1C();
  LOBYTE(v52) = 14;
  sub_1D1E68EDC();
  LOBYTE(v52) = 15;
  sub_1D1E68EDC();
  v53 = v32;
  v52 = v33;
  v54 = v30;
  v55 = v31;
  v57 = 16;
  sub_1D1749BBC();
  sub_1D1E68E5C();
  v52 = v29;
  BYTE2(v53) = (v51 | (v28 << 16)) >> 16;
  LOWORD(v53) = v51;
  v57 = 17;
  sub_1D1749C10();
  sub_1D1E68E5C();
  return (*(v4 + 8))(v23, v22);
}

uint64_t TileInteractionEvent.init<A>(tileInfo:interactionType:tileInteractionArea:sourceViewControllerClassName:isRoomDashboard:displayedTileContext:itemPriority:numberOfRepresentedHomeKitObjects:isShownAsPrediction:isShownInPredictionUI:predictionScores:predictionContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X8>, uint64_t a5, unsigned __int8 a6, unsigned __int8 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *(a10 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v17) = *v20;
  v52 = *v19;
  v53 = v17;
  v22 = *v21;
  v54 = *v23;
  v55 = v22;
  v25 = *v24;
  v61 = v24[1];
  v62 = v25;
  v59 = *(v24 + 4);
  v58 = *(v24 + 20);
  v27 = *v26;
  v56 = v26[1];
  v57 = v27;
  v60 = *(v26 + 8) | (*(v26 + 18) << 16);
  if ((*(a11 + 176))(a10, a11))
  {
    if ((*(a11 + 152))(a10, a11))
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    v51 = v28;
  }

  else
  {
    v51 = 0;
  }

  v48 = a6;
  v49 = a7;
  v50 = a5;
  TileInfoBearer.analyticsElementType.getter(a10, v64);
  v29 = LOBYTE(v64[0]);
  v63 = v15;
  (*(v15 + 16))(v18, a1, a10);
  if (swift_dynamicCast())
  {
    sub_1D17419CC(v64[0] + 16, v64);
    __swift_project_boxed_opaque_existential_1(v64, v64[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v64);
    v47 = sub_1D1E6940C();
    v46 = v30;
  }

  else
  {
    swift_getDynamicType();
    v47 = sub_1D1E6940C();
    v46 = v31;
  }

  if (a3)
  {
    v32 = a2;
  }

  else
  {
    v32 = 7104878;
  }

  if (a3)
  {
    v33 = a3;
  }

  else
  {
    v33 = 0xE300000000000000;
  }

  v34 = [objc_opt_self() processInfo];
  v35 = [v34 processName];

  v36 = sub_1D1E6781C();
  v38 = v37;

  v39 = v48 & 1;
  *a4 = 0x65746E49656C6954;
  *(a4 + 8) = 0xEF6E6F6974636172;
  v40 = v49 & 1;
  v41 = v53;
  *(a4 + 16) = v52;
  *(a4 + 17) = v29 != 55;
  *(a4 + 18) = 2;
  *(a4 + 19) = v41;
  *(a4 + 24) = v47;
  *(a4 + 32) = v46;
  *(a4 + 40) = v29;
  *(a4 + 41) = v51;
  *(a4 + 42) = v54;
  *(a4 + 48) = v50;
  *(a4 + 56) = v36;
  *(a4 + 64) = v38;
  *(a4 + 72) = v32;
  *(a4 + 80) = v33;
  *(a4 + 88) = v55;
  *(a4 + 89) = 2;
  *(a4 + 90) = v39;
  *(a4 + 91) = v40;
  v42 = v61;
  *(a4 + 96) = v62;
  *(a4 + 112) = v42;
  *(a4 + 128) = v59;
  *(a4 + 136) = v58;
  v43 = v56;
  *(a4 + 144) = v57;
  *(a4 + 152) = v43;
  v44 = v60;
  *(a4 + 162) = BYTE2(v60);
  *(a4 + 160) = v44;
  return (*(v63 + 8))(a1, a10);
}

unint64_t sub_1D174C128()
{
  result = qword_1EC642DE0;
  if (!qword_1EC642DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DE0);
  }

  return result;
}

unint64_t sub_1D174C17C()
{
  result = qword_1EC642DE8;
  if (!qword_1EC642DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DE8);
  }

  return result;
}

unint64_t sub_1D174C1D0()
{
  result = qword_1EC642DF0;
  if (!qword_1EC642DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DF0);
  }

  return result;
}

unint64_t sub_1D174C224()
{
  result = qword_1EC642DF8;
  if (!qword_1EC642DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642DF8);
  }

  return result;
}

unint64_t sub_1D174C278()
{
  result = qword_1EC642E00;
  if (!qword_1EC642E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E00);
  }

  return result;
}

unint64_t sub_1D174C2CC()
{
  result = qword_1EC642E08;
  if (!qword_1EC642E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E08);
  }

  return result;
}

unint64_t sub_1D174C324()
{
  result = qword_1EC642E10;
  if (!qword_1EC642E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E10);
  }

  return result;
}

unint64_t sub_1D174C37C()
{
  result = qword_1EC642E18;
  if (!qword_1EC642E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E18);
  }

  return result;
}

unint64_t sub_1D174C3D0(uint64_t a1)
{
  result = sub_1D174C3F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D174C3F8()
{
  result = qword_1EC642E20;
  if (!qword_1EC642E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E20);
  }

  return result;
}

__n128 __swift_memcpy163_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 159) = *(a2 + 159);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D174C488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 163))
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

uint64_t sub_1D174C4D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 162) = 0;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 163) = 1;
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

    *(result + 163) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TileInteractionEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TileInteractionEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D174C6C4()
{
  result = qword_1EC642E28;
  if (!qword_1EC642E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E28);
  }

  return result;
}

unint64_t sub_1D174C71C()
{
  result = qword_1EC642E30;
  if (!qword_1EC642E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E30);
  }

  return result;
}

unint64_t sub_1D174C774()
{
  result = qword_1EC642E38;
  if (!qword_1EC642E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E38);
  }

  return result;
}

uint64_t sub_1D174C7C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EB8730 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64457349656C6974 && a2 == 0xED0000676E697469 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EB8750 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73616C436D657469 && a2 == 0xED0000656D614E73 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74617453656C6974 && a2 == 0xE900000000000065 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F6972506D657469 && a2 == 0xEC00000079746972 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D1EB8770 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4E737365636F7270 && a2 == 0xEB00000000656D61 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EB87A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EB87C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EB87E0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EB8800 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EB85A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EB85C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EB85E0 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_1D174CD78()
{
  result = qword_1EC642E40;
  if (!qword_1EC642E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E40);
  }

  return result;
}

unint64_t sub_1D174CDCC()
{
  result = qword_1EC642E48;
  if (!qword_1EC642E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642E48);
  }

  return result;
}

uint64_t HomeProtocol.analyticsTileCountValue.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 16) + 168))(a1, *(a2 + 16));
  swift_getAssociatedTypeWitness();
  v4 = sub_1D1E67CBC();

  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    (*(*(a2 + 8) + 40))(a1, *(a2 + 8));
    swift_getAssociatedTypeWitness();
    v6 = sub_1D1E67CBC();

    if ((v6 & 0x8000000000000000) == 0)
    {
      return v6 + v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D174CF7C@<X0>(uint64_t a1@<X8>)
{
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t AnalyticsEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

id sub_1D174D05C()
{
  v6 = v0[4];
  v7 = v0[5];
  *v8 = v0[6];
  *&v8[15] = *(v0 + 111);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1D1B1C9B8();
}

uint64_t AnalyticsEvent.payload()(uint64_t a1, uint64_t a2)
{
  v81[4] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v68 - v7;
  v8 = sub_1D1E669FC();
  v77 = *(v8 - 8);
  v9 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E65F8C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1D1E65F7C();
  v15 = a2;
  v16 = *(a2 + 8);
  v17 = v2;
  v18 = v78;
  v19 = sub_1D1E65F6C();
  v21 = v20;

  if (v18)
  {
    goto LABEL_22;
  }

  v78 = 0;
  v74 = a1;
  v75 = v11;
  v23 = objc_opt_self();
  v24 = sub_1D1E6688C();
  v81[0] = 0;
  v25 = [v23 JSONObjectWithData:v24 options:4 error:v81];

  v26 = v21;
  v27 = v19;
  if (!v25)
  {
    v42 = v81[0];
    sub_1D1E6656C();

LABEL_21:
    swift_willThrow();
    result = sub_1D174E7C4(v27, v26);
    goto LABEL_22;
  }

  v28 = v81[0];
  sub_1D1E6866C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
  if (!swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    goto LABEL_21;
  }

  v70 = v8;
  v71 = v19;
  v29 = v79;
  v80 = v79;
  v30 = v15;
  v31 = *(v15 + 40);
  v32 = v74;
  v33 = v31(v74, v30);
  v72 = v26;
  if (v33)
  {
    v68 = v17;
    v69 = v30;
    v34 = v78;
    sub_1D174E20C(v29);
    v78 = v34;
    v36 = 0;
    v73 = v35;
    v37 = 1 << *(v35 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v35 + 64;
    v40 = v38 & *(v35 + 64);
    v41 = (v37 + 63) >> 6;
    while (1)
    {
      v45 = v75;
      if (!v40)
      {
        break;
      }

LABEL_16:
      v47 = __clz(__rbit64(v40)) | (v36 << 6);
      v48 = (*(v73 + 48) + 16 * v47);
      v49 = *v48;
      v50 = v48[1];
      v51 = *(*(v73 + 56) + 8 * v47);

      v52 = sub_1D171D2F0(v49, v50);
      if (v53)
      {
        v54 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81[0] = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D1734030();
          v29 = v81[0];
        }

        v56 = *(v29[6] + 16 * v54 + 8);

        v57 = *(v29[7] + 8 * v54);
        sub_1D174F220(v54, v29);
      }

      else
      {
      }

      v40 &= v40 - 1;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v81[0] = v29;
      v44 = v78;
      sub_1D1757628(v51, sub_1D17575DC, 0, v43, v81);
      v78 = v44;

      v29 = v81[0];
    }

    while (1)
    {
      v46 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
      }

      if (v46 >= v41)
      {
        break;
      }

      v40 = *(v39 + 8 * v46);
      ++v36;
      if (v40)
      {
        v36 = v46;
        goto LABEL_16;
      }
    }

    v80 = v29;

    v30 = v69;
    v32 = v74;
  }

  else
  {
    v45 = v75;
  }

  v59 = v76;
  (*(v30 + 32))(v32, v30);
  v60 = v77;
  v61 = v70;
  if ((*(v77 + 48))(v59, 1, v70) == 1)
  {
    sub_1D1741A30(v59, &qword_1EC642570, &qword_1D1E6C6A0);
  }

  else
  {
    (*(v60 + 32))(v45, v59, v61);
    v62 = v30;
    v63 = v60;
    sub_1D1E6699C();
    v64 = v45;
    v65 = sub_1D1E680EC();
    v66 = v80;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v81[0] = v66;
    sub_1D175263C(v65, 0x6D617473656D6974, 0xE900000000000070, v67);
    v80 = v81[0];
    (*(v63 + 8))(v64, v61);
    v30 = v62;
  }

  (*(v30 + 56))(&v80, v32, v30);
  sub_1D174E7C4(v71, v72);
  result = v80;
LABEL_22:
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D174D70C()
{
  v10 = v0[8];
  *v11 = v0[9];
  *&v11[15] = *(v0 + 159);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1D1B1CF14();
}

uint64_t AnalyticsEvent.effectiveEventName.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  if (!v5)
  {
    return (*(a2 + 16))(a1, a2);
  }

  v10 = v4;

  MEMORY[0x1D3890F70](46, 0xE100000000000000);

  v6 = (*(a2 + 16))(a1, a2);
  v8 = v7;

  MEMORY[0x1D3890F70](v6, v8);

  return v10;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnalyticsEvent.send()()
{
  v3 = v1;
  v4 = v0;
  v5 = (*(v1 + 48))();
  if (v2)
  {
    sub_1D174DD78(v2, v4, v3);
    swift_willThrow();
  }

  else
  {
    v6 = v5;
    sub_1D174DA38(v5, v4, v3);
    if (qword_1EE07AE68 != -1)
    {
      swift_once();
    }

    if (byte_1EE081450 == 1)
    {
      AnalyticsEvent.effectiveEventName.getter(v4, v3);
      v7 = sub_1D1E677EC();

      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      v10[4] = sub_1D17578C4;
      v10[5] = v8;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1107296256;
      v10[2] = sub_1D174DCDC;
      v10[3] = &block_descriptor_0;
      v9 = _Block_copy(v10);

      AnalyticsSendEventLazy();
      _Block_release(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_1D174DA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE07AE68 != -1)
  {
    swift_once();
  }

  if (byte_1EE081450 != 1)
  {
    if (qword_1EE079BB0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (qword_1EE079BB0 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_7:
  sub_1D1E6835C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D1E6F900;
  v7 = sub_1D1E6940C();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D1757D20();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v12 = AnalyticsEvent.effectiveEventName.getter(a2, a3);
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;
  *(v6 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
  *(v6 + 144) = sub_1D1757D74();
  *(v6 + 112) = a1;

  sub_1D1E66F9C();
}

id sub_1D174DCDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
    v5 = sub_1D1E675DC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1D174DD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE079BB0 != -1)
  {
    swift_once();
  }

  sub_1D1E6833C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D1E6F900;
  v6 = sub_1D1E6940C();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D1757D20();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v11 = AnalyticsEvent.effectiveEventName.getter(a2, a3);
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  swift_getErrorValue();
  v13 = sub_1D1E6915C();
  *(v5 + 136) = v9;
  *(v5 + 144) = v10;
  *(v5 + 112) = v13;
  *(v5 + 120) = v14;
  sub_1D1E66F9C();
}

Swift::Void __swiftcall AnalyticsEvent.sendLazy()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x1EEE9AC00])();
  v8 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  v11 = *(v5 + 16);
  v11(aBlock - v9, v2, v4);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v3;
  (*(v5 + 32))(v13 + v12, v10, v4);
  if (qword_1EE07AE68 != -1)
  {
    swift_once();
  }

  if (byte_1EE081450 == 1)
  {
    (*(v5 + 8))(v8, v4);
    AnalyticsEvent.effectiveEventName.getter(v4, v3);
    v14 = sub_1D1E677EC();

    aBlock[4] = sub_1D17578E4;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D174DCDC;
    aBlock[3] = &block_descriptor_6;
    v15 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v15);
  }

  else
  {
    sub_1D174E17C(v8, v4, v3);

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1D174E17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 48))(a2, a3);
  sub_1D174DA38(v5, a2, a3);
  return v5;
}

void sub_1D174E20C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = 0;

  while (v5)
  {
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(v1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(v1 + 56) + 8 * v10);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);

      v15 = v14;
      sub_1D1E675EC();

      v1 = v16;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  __break(1u);
}

uint64_t sub_1D174E4C4()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC642E50);
  __swift_project_value_buffer(v0, qword_1EC642E50);
  return sub_1D1E6708C();
}

uint64_t static Logger.analytics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642110 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  v3 = __swift_project_value_buffer(v2, qword_1EC642E50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1D174E5EC()
{
  if (sub_1D1D43CCC())
  {
    goto LABEL_10;
  }

  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    v7 = 1;
    goto LABEL_11;
  }

  v2 = sub_1D1E6781C();
  v4 = v3;

  if (v2 == 0xD00000000000001DLL && 0x80000001D1EB8880 == v4)
  {

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v6 = sub_1D1E6904C();

  v7 = v6 ^ 1;
LABEL_11:
  byte_1EE081450 = v7 & 1;
}

id sub_1D174E6E0()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1D1B1D4B0();
}

uint64_t sub_1D174E72C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1D171D2F0(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D1734030();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1D174F220(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_1D174E7C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D174E818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1D1742188(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D173419C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_1D1E669FC();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1D1751C94(v8, v11, MEMORY[0x1E6969530]);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1D1E669FC();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1D174EA74@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_1D1742188(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = sub_1D1E66A7C();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = a2(0);
    v31 = *(v24 - 8);
    sub_1D1757C54(v23 + *(v31 + 72) * v22, a6, a3);
    sub_1D1751C94(v22, v19, a4);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = a2(0);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

double sub_1D174EC88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1D171D2F0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D1738144();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1D16EEE38((*(v12 + 56) + 32 * v9), a3);
    sub_1D174FA50(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D174ED2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1D171D710(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D173859C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for StaticServiceCharacteristicDoublet();
    sub_1D1757BF8(v12 + *(*(v13 - 8) + 72) * v8);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for IconTextValueStringDataHolder();
    v22 = *(v15 - 8);
    sub_1D1757C54(v14 + *(v22 + 72) * v8, a2, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D174FC00(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for IconTextValueStringDataHolder();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_1D174EEB0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1D1742188(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    *&v19[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D1738E4C();
      v11 = *&v19[0];
    }

    v12 = *(v11 + 48);
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    memmove(a2, (*(v11 + 56) + (v8 << 7)), 0x80uLL);
    sub_1D17504B0(v8, v11);
    *v3 = v11;
    nullsub_2(a2);
  }

  else
  {
    sub_1D1757B00(v19);
    v15 = v23;
    a2[4] = v22;
    a2[5] = v15;
    v16 = v25;
    a2[6] = v24;
    a2[7] = v16;
    v17 = v19[1];
    *a2 = v19[0];
    a2[1] = v17;
    result = *&v20;
    v18 = v21;
    a2[2] = v20;
    a2[3] = v18;
  }

  return result;
}

uint64_t sub_1D174F0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1D171D2F0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D173E2D0();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for RoomType(0);
    v22 = *(v15 - 8);
    sub_1D1757C54(v14 + *(v22 + 72) * v9, a3, type metadata accessor for RoomType);
    sub_1D1752188(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for RoomType(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1D174F220(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1D1E6920C();

      sub_1D1E678EC();
      v13 = sub_1D1E6926C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D174F3D0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1D1E691FC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D174F5C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_1D1E6920C();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D174F8DC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 2 * v6);
      result = MEMORY[0x1D3892820](*(a2 + 40), *v10, 2);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 2 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D174FA50(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1D1E6920C();

      sub_1D1E678EC();
      v14 = sub_1D1E6926C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D174FC00(int64_t a1, uint64_t a2)
{
  v36 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v4 = *(v36 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v36);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_1D1E686AC() + 1) & ~v9;
    v13 = *(v4 + 72);
    v33 = a2;
    v34 = a2 + 64;
    v32 = v13;
    do
    {
      v14 = v13 * v10;
      v15 = *(a2 + 48) + v13 * v10;
      v16 = v35;
      sub_1D1757B28(v15, v35, type metadata accessor for StaticServiceCharacteristicDoublet);
      v17 = *(a2 + 40);
      sub_1D1E6920C();
      sub_1D1E66A7C();
      sub_1D17579AC();
      sub_1D1E676EC();
      v18 = v36;
      v19 = v16 + *(v36 + 20);
      sub_1D1E676EC();
      v20 = v16 + *(v18 + 24);
      StaticCharacteristic.hash(into:)(v37);
      v21 = sub_1D1E6926C();
      result = sub_1D1757BF8(v16);
      v22 = v21 & v11;
      if (a1 >= v12)
      {
        if (v22 < v12)
        {
          a2 = v33;
          v8 = v34;
          v13 = v32;
          goto LABEL_4;
        }

        v13 = v32;
        a2 = v33;
        if (a1 >= v22)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v32;
        a2 = v33;
        if (v22 >= v12 || a1 >= v22)
        {
LABEL_11:
          if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 * a1 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v23 = *(a2 + 56);
          v24 = *(*(type metadata accessor for IconTextValueStringDataHolder() - 8) + 72);
          v25 = v24 * a1;
          result = v23 + v24 * a1;
          v26 = v24 * v10;
          v27 = v23 + v24 * v10 + v24;
          v28 = v25 < v26 || result >= v27;
          v8 = v34;
          if (v28)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
          }

          else
          {
            a1 = v10;
            if (v25 != v26)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      v8 = v34;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}