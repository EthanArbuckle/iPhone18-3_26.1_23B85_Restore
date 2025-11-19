uint64_t sub_1B4A02140(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutPropertiesQuery();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B00, &qword_1B4D1F9B8);
  result = sub_1B4D1891C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v11 = 0;
    v12 = *(v7 + 56);
    v36 = v7 + 56;
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v37 = result + 56;
    v38 = v16;
    v40 = v7;
    v41 = v4;
    v39 = result;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_16:
      v25 = *(v7 + 48);
      v43 = *(v42 + 72);
      v26 = v45;
      sub_1B4A053A4(v25 + v43 * (v22 | (v11 << 6)), v45, type metadata accessor for WorkoutPropertiesQuery);
      v27 = v10[5];
      sub_1B4D18E8C();
      DateRangeDescriptor.hash(into:)();
      v28 = (v26 + *(v4 + 20));
      v29 = v28[1];
      v46 = *v28;
      v47 = v29;
      v48 = v28[2];
      WorkoutPropertyDimensionsFilters.hash(into:)(v49);
      v30 = *(v26 + *(v4 + 24));
      v31 = *(v30 + 16);
      MEMORY[0x1B8C7D290](v31);
      if (v31)
      {
        v32 = (v30 + 32);
        do
        {
          v33 = *v32++;
          sub_1B4D1820C();

          --v31;
        }

        while (v31);
      }

      v17 = v41;
      v18 = v45;
      sub_1B49C4754(v49, *(v45 + *(v41 + 28)));
      sub_1B4D18EDC();
      v10 = v39;
      v19 = -1 << *(v39 + 32);
      v20 = v37;
      v21 = sub_1B4D188FC();
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v4 = v17;
      result = sub_1B4A0546C(v18, v10[6] + v21 * v43, type metadata accessor for WorkoutPropertiesQuery);
      ++v10[2];
      v7 = v40;
      v16 = v38;
      v15 = v44;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v35;
        goto LABEL_22;
      }

      v24 = *(v36 + 8 * v11);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v44 = (v24 - 1) & v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1B4A02570(uint64_t a1)
{
  v2 = v1;
  v56 = type metadata accessor for FitnessPlusPropertiesQuery();
  v50 = *(v56 - 1);
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v7 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AF8, &qword_1B4D1F9B0);
  result = sub_1B4D1891C();
  v9 = result;
  if (*(v6 + 16))
  {
    v44 = v1;
    v10 = 0;
    v11 = *(v6 + 56);
    v45 = v6 + 56;
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v58 = 0x80000001B4D48BA0;
    v59 = 0x80000001B4D48DB0;
    v46 = result + 56;
    v47 = v15;
    v48 = result;
    v49 = v6;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v55 = (v14 - 1) & v14;
LABEL_16:
      v22 = *(v6 + 48);
      v54 = *(v50 + 72);
      v23 = v57;
      sub_1B4A053A4(v22 + v54 * (v19 | (v10 << 6)), v57, type metadata accessor for FitnessPlusPropertiesQuery);
      v24 = v9[5];
      sub_1B4D18E8C();
      DateRangeDescriptor.hash(into:)();
      v25 = (v23 + v56[5]);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[3];
      v51 = v25[2];
      v52 = v28;
      v53 = v25[4];
      sub_1B49C28E8(v60, v26);
      v29 = *(v27 + 16);
      MEMORY[0x1B8C7D290](v29);
      if (v29)
      {
        v30 = (v27 + 32);
        do
        {
          v31 = *v30++;
          sub_1B4D1820C();

          --v29;
        }

        while (v29);
      }

      v32 = v51;
      MEMORY[0x1B8C7D290](*(v51 + 16));
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = (v32 + 32);
        do
        {
          v35 = *v34++;
          MEMORY[0x1B8C7D2C0](v35);
          --v33;
        }

        while (v33);
      }

      sub_1B49C551C(v60, v52);
      sub_1B49C5454(v60, v53);
      v36 = *(v57 + v56[6]);
      MEMORY[0x1B8C7D290](*(v36 + 16));
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = (v36 + 32);
        do
        {
          v39 = *v38++;
          sub_1B4D1820C();

          --v37;
        }

        while (v37);
      }

      v40 = *(v57 + v56[7]);
      MEMORY[0x1B8C7D290](*(v40 + 16));
      v41 = *(v40 + 16);
      if (v41)
      {
        v42 = (v40 + 32);
        do
        {
          v43 = *v42++;
          sub_1B4D1820C();

          --v41;
        }

        while (v41);
      }

      sub_1B4D18EDC();
      v9 = v48;
      v16 = -1 << *(v48 + 32);
      v17 = v46;
      v18 = sub_1B4D188FC();
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1B4A0546C(v57, v9[6] + v18 * v54, type metadata accessor for FitnessPlusPropertiesQuery);
      ++v9[2];
      v6 = v49;
      v15 = v47;
      v14 = v55;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v44;
        goto LABEL_31;
      }

      v21 = *(v45 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v55 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v9;
  }

  return result;
}

uint64_t sub_1B4A02B8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AF0, &qword_1B4D1F9A8);
  result = sub_1B4D1891C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D2C0](v17);
      result = sub_1B4D18EDC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_1B4A02DAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8C7CA00](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B49FA73C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B4A02E44(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B4A05294();
  result = MEMORY[0x1B8C7CA00](v2, &type metadata for DeviceInferenceAvailability.UnavailableReason, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B49FA88C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B4A02EB8(uint64_t a1)
{
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest();
  v3 = *(Request - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1B4A0535C(&qword_1EB8A7B18, type metadata accessor for FitnessContextCoalescedQueryRequest);
  result = MEMORY[0x1B8C7CA00](v10, Request, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1B4A053A4(v13, v6, type metadata accessor for FitnessContextCoalescedQueryRequest);
      sub_1B49FAC08(v9, v6);
      sub_1B4A0540C(v9, type metadata accessor for FitnessContextCoalescedQueryRequest);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1B4A03048(uint64_t a1)
{
  Request = type metadata accessor for FitnessContextQueryRequest();
  v3 = *(Request - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1B4A0535C(&qword_1EB8A7B10, type metadata accessor for FitnessContextQueryRequest);
  result = MEMORY[0x1B8C7CA00](v10, Request, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1B4A053A4(v13, v6, type metadata accessor for FitnessContextQueryRequest);
      sub_1B49FAEC4(v9, v6);
      sub_1B4A0540C(v9, type metadata accessor for FitnessContextQueryRequest);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1B4A031D8(uint64_t a1)
{
  v2 = type metadata accessor for RingsPropertiesQuery();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1B4A0535C(&qword_1EDC39548, type metadata accessor for RingsPropertiesQuery);
  result = MEMORY[0x1B8C7CA00](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1B4A053A4(v13, v6, type metadata accessor for RingsPropertiesQuery);
      sub_1B49FB19C(v9, v6);
      sub_1B4A0540C(v9, type metadata accessor for RingsPropertiesQuery);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1B4A03368(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPropertiesQuery();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1B4A0535C(&qword_1EDC39158, type metadata accessor for WorkoutPropertiesQuery);
  result = MEMORY[0x1B8C7CA00](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1B4A053A4(v13, v6, type metadata accessor for WorkoutPropertiesQuery);
      sub_1B49FB718(v9, v6);
      sub_1B4A0540C(v9, type metadata accessor for WorkoutPropertiesQuery);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1B4A034F8(uint64_t a1)
{
  v2 = type metadata accessor for FitnessPlusPropertiesQuery();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1B4A0535C(&qword_1EDC39A98, type metadata accessor for FitnessPlusPropertiesQuery);
  result = MEMORY[0x1B8C7CA00](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1B4A053A4(v13, v6, type metadata accessor for FitnessPlusPropertiesQuery);
      sub_1B49FBF90(v9, v6);
      sub_1B4A0540C(v9, type metadata accessor for FitnessPlusPropertiesQuery);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1B4A03688(uint64_t a1)
{
  v4 = *(type metadata accessor for RingsPropertiesQuery() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4983F3C;

  return sub_1B49F9A3C(a1, v6, v1 + v5);
}

uint64_t sub_1B4A0376C(uint64_t a1)
{
  v4 = *(type metadata accessor for RingsPropertiesQuery() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9AEC(a1, v6, v1 + v5);
}

uint64_t sub_1B4A03850(uint64_t a1)
{
  v4 = *(type metadata accessor for RingsPropertiesQuery() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9AEC(a1, v6, v1 + v5);
}

uint64_t sub_1B4A03934(uint64_t a1)
{
  v4 = *(type metadata accessor for RingsPropertiesQuery() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9AEC(a1, v6, v1 + v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for RingsPropertiesQuery();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  type metadata accessor for DateRangeDescriptor();
  if (swift_getEnumCaseMultiPayload() <= 0xF)
  {
    v7 = sub_1B4D1777C();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = (v6 + v1[5]);
  v9 = *v8;

  v10 = v8[1];

  v11 = v8[2];

  v12 = *(v6 + v1[6]);

  v13 = *(v6 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4A03B5C(uint64_t a1)
{
  v4 = *(type metadata accessor for RingsPropertiesQuery() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9AEC(a1, v6, v1 + v5);
}

uint64_t sub_1B4A03C40(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B4A03C50(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPropertiesQuery() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9B9C(a1, v6, v1 + v5);
}

uint64_t sub_1B4A03D34(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPropertiesQuery() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9B9C(a1, v6, v1 + v5);
}

uint64_t sub_1B4A03E18(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPropertiesQuery() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9B9C(a1, v6, v1 + v5);
}

uint64_t sub_1B4A03EFC(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPropertiesQuery() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9B9C(a1, v6, v1 + v5);
}

uint64_t objectdestroy_75Tm()
{
  v1 = type metadata accessor for WorkoutPropertiesQuery();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  type metadata accessor for DateRangeDescriptor();
  if (swift_getEnumCaseMultiPayload() <= 0xF)
  {
    v7 = sub_1B4D1777C();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = (v6 + v1[5]);
  v9 = *v8;

  v10 = v8[1];

  v11 = v8[2];

  v12 = v8[3];

  v13 = v8[4];

  v14 = v8[5];

  v15 = *(v6 + v1[6]);

  v16 = *(v6 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4A0413C(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPropertiesQuery() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9B9C(a1, v6, v1 + v5);
}

uint64_t dispatch thunk of SnapshotClientProtocol.triggerSnapshotProcessing(reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SnapshotClientProtocol.invalidateSnapshots(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SnapshotClientProtocol.listAllCacheIndexes()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49D9398;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SnapshotClientProtocol.mostRecentCacheIndex(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B49DA364;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SnapshotClientProtocol.prewarmSnapshotRetriever()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SnapshotClientProtocol.execute(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B49DA364;

  return v13(a1, a2, a3, a4);
}

{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B49DA364;

  return v13(a1, a2, a3, a4);
}

{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B49DA364;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SnapshotClientProtocol.execute(queries:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4A054D8;

  return v11(a1, a2, a3);
}

{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4A054D8;

  return v11(a1, a2, a3);
}

{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4A054D8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SnapshotClientProtocol.querySnapshot(date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 96);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B49DA364;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SnapshotClientProtocol.query(date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 104);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B49DA364;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SnapshotClientProtocol.query(cacheIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 112);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B49DA364;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_1B4A05294()
{
  result = qword_1EDC3CC50;
  if (!qword_1EDC3CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CC50);
  }

  return result;
}

uint64_t sub_1B4A052E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B498E1E8();
  result = MEMORY[0x1B8C7CA00](v2, &type metadata for CacheIndex, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B49FC5E8(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B4A0535C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4A053A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A0540C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A0546C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FitnessPlusCatalogWorkout.catalogWorkoutIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_1B4A05544()
{
  v1 = 0x7372656E69617274;
  if (*v0 != 1)
  {
    v1 = 0x7974696C61646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1B4A055AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4A05F74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4A055D4(uint64_t a1)
{
  v2 = sub_1B4A05C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4A05610(uint64_t a1)
{
  v2 = sub_1B4A05C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FitnessPlusCatalogWorkout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B28, &unk_1B4D1F9E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v15 = v1[2];
  v18 = *(v1 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4A05C44();
  sub_1B4D18EFC();
  v22 = 0;
  v11 = v16;
  sub_1B4D18CBC();
  if (!v11)
  {
    v12 = v18;
    v17 = v15;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
    sub_1B4A05CEC(&qword_1EB8A7B40);
    sub_1B4D18D0C();
    v20 = v12;
    v19 = 2;
    sub_1B4A05C98();
    sub_1B4D18D0C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t FitnessPlusCatalogWorkout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B50, &qword_1B4D1F9F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4A05C44();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = 0;
  v11 = sub_1B4D18BBC();
  v13 = v12;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
  v23 = 1;
  sub_1B4A05CEC(&qword_1EB8A7B58);
  sub_1B4D18C0C();
  v18 = v20;
  v21 = 2;
  sub_1B4A05D58();
  sub_1B4D18C0C();
  (*(v6 + 8))(v9, v5);
  v14 = v22;
  v15 = v18;
  *a2 = v19;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t _s19FitnessIntelligence0A18PlusCatalogWorkoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (sub_1B4D18DCC()) && (sub_1B4A0C158(v2, v4))
  {
    v7 = FitnessPlusModalityKind.rawValue.getter();
    v9 = v8;
    if (v7 == FitnessPlusModalityKind.rawValue.getter() && v9 == v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1B4D18DCC();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_1B4A05C44()
{
  result = qword_1EB8A7B30;
  if (!qword_1EB8A7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B30);
  }

  return result;
}

unint64_t sub_1B4A05C98()
{
  result = qword_1EB8A7B48;
  if (!qword_1EB8A7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B48);
  }

  return result;
}

uint64_t sub_1B4A05CEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7B38, &qword_1B4D36300);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4A05D58()
{
  result = qword_1EB8A7B60;
  if (!qword_1EB8A7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B60);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B4A05DC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B4A05E08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B4A05E70()
{
  result = qword_1EB8A7B68;
  if (!qword_1EB8A7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B68);
  }

  return result;
}

unint64_t sub_1B4A05EC8()
{
  result = qword_1EB8A7B70;
  if (!qword_1EB8A7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B70);
  }

  return result;
}

unint64_t sub_1B4A05F20()
{
  result = qword_1EB8A7B78;
  if (!qword_1EB8A7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B78);
  }

  return result;
}

uint64_t sub_1B4A05F74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001B4D5F9B0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372656E69617274 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xEC000000646E694BLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t WorkoutBestMetricPropertyValue.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v16[1] = *a1;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B80, &unk_1B4D1FBE0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  v12 = sub_1B4A061EC();
  v13 = sub_1B498D2F0(sub_1B4A061B4, v15, v10, a2, v11, v12, MEMORY[0x1E69E7288], v16);
  sub_1B4A08AC8(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);

  if (!v6)
  {
    *a6 = v13;
  }

  return result;
}

uint64_t sub_1B4A061B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B4A06250(a1, v3[2], v3[3], v3[4], v3[5], a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

unint64_t sub_1B4A061EC()
{
  result = qword_1EB8A7B88;
  if (!qword_1EB8A7B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7B80, &unk_1B4D1FBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B88);
  }

  return result;
}

uint64_t sub_1B4A06250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a3;
  v32 = a5;
  v28[1] = a6;
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B4D1880C();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v30 = *(AssociatedTypeWitness - 8);
  v14 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v28 - v19;
  v21 = v34;
  result = sub_1B4A06C08(a1, v33);
  if (!v21)
  {
    v23 = v29;
    v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v24 = swift_dynamicCast();
    v25 = v30;
    v26 = *(v30 + 56);
    if (v24)
    {
      v26(v13, 0, 1, AssociatedTypeWitness);
      (*(v25 + 32))(v20, v13, AssociatedTypeWitness);
      (*(v25 + 16))(v17, v20, AssociatedTypeWitness);
      (*(v8 + 40))(v17, a2, v8);
      return (*(v25 + 8))(v20, AssociatedTypeWitness);
    }

    else
    {
      v26(v13, 1, 1, AssociatedTypeWitness);
      (*(v23 + 8))(v13, v10);
      sub_1B4A089F0();
      swift_allocError();
      *v27 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t WorkoutBestMetricPropertyValue.protobuf()(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  sub_1B4A08E34(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A0660C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[2] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v8 = sub_1B4D184BC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1B498D2F0(sub_1B4A08DEC, v15, v8, v9, v10, WitnessTable, MEMORY[0x1E69E7288], v16);

  if (!v6)
  {
    v14 = *a1;

    *a1 = v12;
  }

  return result;
}

uint64_t sub_1B4A06748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
  sub_1B4A08E34(qword_1EDC3A998, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
  result = sub_1B4D17DAC();
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_1B4A06834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a1;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - v21;
  v23 = v37;
  result = (*(v14 + 32))(a3, v14, v20);
  if (!v23)
  {
    v25 = v10;
    v26 = v34;
    v37 = 0;
    v27 = AssociatedTypeWitness;
    (*(v15 + 16))(v18, v22, AssociatedTypeWitness);
    if (swift_dynamicCast())
    {
      v28 = *(v15 + 8);
      v28(v22, v27);
      v29 = v26;
      sub_1B4975024(v26, &qword_1EB8A7BC8, &unk_1B4D1FD60);
      sub_1B4A08E7C(v35, v26, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
LABEL_6:
      v30 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
      return (v28)(v18, AssociatedTypeWitness);
    }

    if (swift_dynamicCast())
    {
      v28 = *(v15 + 8);
      v28(v22, v27);
      v29 = v26;
      sub_1B4975024(v26, &qword_1EB8A7BC8, &unk_1B4D1FD60);
      sub_1B4A08E7C(v25, v26, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
      goto LABEL_6;
    }

    sub_1B4A089F0();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
    v32 = *(v15 + 8);
    v32(v22, v27);
    return (v32)(v18, v27);
  }

  return result;
}

uint64_t sub_1B4A06C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - v14;
  sub_1B4974FBC(a1, &v21 - v14, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  result = (*(*(v16 - 8) + 48))(v15, 1, v16);
  if (result == 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry;
      sub_1B4A08E7C(v15, v11, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
      *(a2 + 24) = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v20 = v11;
    }

    else
    {
      v18 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry;
      sub_1B4A08E7C(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      *(a2 + 24) = v4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v20 = v7;
    }

    return sub_1B4A08E7C(v20, boxed_opaque_existential_1, v18);
  }

  return result;
}

uint64_t DistanceSampleIntervalRecord.init(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(a1 + 16);
  v5 = objc_opt_self();
  v6 = [v5 meters];
  v7 = type metadata accessor for DistanceSampleIntervalRecord();
  v8 = v7[6];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();
  v9 = *(a1 + 24);
  v10 = [v5 meters];
  v11 = a2 + v7[7];
  sub_1B4D1741C();
  v12 = *(a1 + 32);
  v13 = [objc_opt_self() seconds];
  v14 = v7[8];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  return sub_1B4A08AC8(a1, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
}

uint64_t DistanceSampleIntervalRecord.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  sub_1B4A08E34(qword_1EDC3AF70, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A07088(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;
  v4 = type metadata accessor for DistanceSampleIntervalRecord();
  v5 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4D1742C();
  *(a1 + 16) = v6;
  v7 = a2 + v4[7];
  sub_1B4D1742C();
  *(a1 + 24) = v8;
  v9 = v4[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  result = sub_1B4D1742C();
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_1B4A07154()
{
  type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  sub_1B4A08E34(qword_1EDC3AF70, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  return sub_1B4D17DAC();
}

uint64_t BestWorkoutRecordEntry.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a3;
  v98 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v86 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v86 - v12;
  v103 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v90 = *(v103 - 8);
  v13 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for LocalizedDate();
  v15 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v97 = (&v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v102 = &v86 - v19;
  v20 = sub_1B4D1880C();
  v95 = *(v20 - 8);
  v96 = v20;
  v21 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v86 - v22;
  v23 = *(a2 - 8);
  v24 = v23[8];
  MEMORY[0x1EEE9AC00](v25);
  v99 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = (&v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v86 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v86 - v36;
  v89 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  sub_1B4974FBC(a1 + *(v89 + 20), v37, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v38 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
  v93 = v9;
  if (v39 == 1)
  {
    v107 = 0u;
    v108 = 0u;
  }

  else
  {
    v87 = v33;
    sub_1B4A08E7C(v37, v33, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    sub_1B4A08A44(v33, v30);
    v40 = type metadata accessor for DistanceSampleIntervalRecord();
    *(&v108 + 1) = v40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
    *boxed_opaque_existential_1 = *v30;
    boxed_opaque_existential_1[1] = v30[1];
    v42 = v30[2];
    v43 = objc_opt_self();
    v88 = a1;
    v44 = v43;
    v45 = [v43 meters];
    v100 = v23;
    v46 = a2;
    v47 = v40[6];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    a2 = v46;
    sub_1B4D1741C();
    v48 = v30[3];
    a1 = v88;
    v49 = [v44 meters];
    v50 = boxed_opaque_existential_1 + v40[7];
    sub_1B4D1741C();
    v51 = v30[4];
    v52 = [objc_opt_self() seconds];
    v53 = v40[8];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v23 = v100;
    sub_1B4D1741C();
    sub_1B4A08AC8(v30, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    sub_1B4A08AC8(v87, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  }

  sub_1B4974FBC(&v107, v106, &qword_1EB8A6DE8, &qword_1B4D1FC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  v54 = v101;
  v55 = swift_dynamicCast();
  v56 = v23[7];
  v58 = v103;
  v57 = v104;
  v59 = v102;
  if (v55)
  {
    v56(v54, 0, 1, a2);
    v60 = v23[4];
    v100 = v23 + 4;
    v60(v99, v54, a2);
    v61 = *a1;
    v62 = a1[1];
    sub_1B4D1778C();
    v63 = sub_1B4D177CC();
    v64 = *(v63 - 8);
    result = (*(v64 + 48))(v59, 1, v63);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v64 + 32))(v98, v59, v63);
      v66 = v91;
      sub_1B4974FBC(a1 + *(v89 + 28), v91, &qword_1EB8A7158, &unk_1B4D20310);
      v67 = *(v90 + 48);
      if (v67(v66, 1, v58) == 1)
      {
        *v57 = 0;
        *(v57 + 8) = 0;
        *(v57 + 16) = 0;
        v68 = v57 + *(v58 + 36);
        sub_1B4D17BBC();
        v69 = (v57 + *(v58 + 40));
        *v69 = 0;
        v69[1] = 0;
        v70 = v67(v66, 1, v58) == 1;
        v71 = v66;
        v72 = v93;
        if (!v70)
        {
          sub_1B4975024(v71, &qword_1EB8A7158, &unk_1B4D20310);
        }
      }

      else
      {
        sub_1B4A08E7C(v66, v57, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v72 = v93;
      }

      v75 = *(v57 + 8);
      *&v76 = *v57;
      *(&v76 + 1) = HIDWORD(*v57);
      v77 = v76;
      *&v76 = v75;
      *(&v76 + 1) = SHIDWORD(v75);
      v78 = v97;
      *v97 = v77;
      v78[1] = v76;
      *(v78 + 4) = *(v57 + 16);
      v79 = (v57 + *(v58 + 40));
      if (v79[1])
      {
        v80 = *v79;
        v81 = v79[1];

        sub_1B4D1797C();

        sub_1B4A08AC8(v57, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      }

      else
      {
        sub_1B4A08AC8(v57, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v82 = sub_1B4D179BC();
        (*(*(v82 - 8) + 56))(v72, 1, 1, v82);
      }

      v83 = v97;
      sub_1B4995980(v72, v97 + *(v92 + 36));
      sub_1B4975024(&v107, &qword_1EB8A6DE8, &qword_1B4D1FC10);
      sub_1B4A08AC8(a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      v84 = type metadata accessor for BestWorkoutRecordEntry();
      v85 = v98;
      sub_1B4A08E7C(v83, v98 + *(v84 + 36), type metadata accessor for LocalizedDate);
      return (v60)(v85 + *(v84 + 40), v99, a2);
    }
  }

  else
  {
    v56(v54, 1, 1, a2);
    (*(v95 + 8))(v54, v96);
    sub_1B4A089F0();
    v73 = swift_allocError();
    *v74 = 0;
    v105 = v73;
    swift_willThrow();
    sub_1B4975024(&v107, &qword_1EB8A6DE8, &qword_1B4D1FC10);
    return sub_1B4A08AC8(a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  }

  return result;
}

uint64_t BestWorkoutRecordEntry.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v3 = *(a1 + 16);
  sub_1B4A08E34(qword_1EDC3BB10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A07CC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  v8 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a4 + 8);
  v48 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v47 = AssociatedTypeWitness;
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v43 - v14;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  v21 = sub_1B4D1779C();
  v23 = v22;
  v24 = a1[1];

  *a1 = v21;
  a1[1] = v23;
  v25 = type metadata accessor for BestWorkoutRecordEntry();
  v26 = v20;
  v51 = v20 + *(v25 + 36);
  sub_1B4A08E34(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v27 = v50;
  sub_1B4D17DAC();
  v28 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v29 = *(v28 + 28);
  sub_1B4975024(a1 + v29, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4A08E7C(v19, a1 + v29, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v16 + 56))(a1 + v29, 0, 1, v15);
  v30 = v49;
  v31 = v26 + *(v25 + 40);
  result = (*(v52 + 32))(v48);
  if (!v27)
  {
    v33 = v28;
    v35 = v45;
    v34 = v46;
    v36 = v47;
    (*(v46 + 16))(v45, v30, v47);
    v37 = v44;
    if (swift_dynamicCast())
    {
      v38 = *(v34 + 8);
      v38(v30, v36);
      v39 = *(v33 + 20);
      sub_1B4975024(a1 + v39, &qword_1EB8A7B90, &unk_1B4D3B2C0);
      sub_1B4A08E7C(v37, a1 + v39, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
      v40 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
      (*(*(v40 - 8) + 56))(a1 + v39, 0, 1, v40);
      return (v38)(v35, v36);
    }

    else
    {
      sub_1B4A089F0();
      swift_allocError();
      *v41 = 0;
      swift_willThrow();
      v42 = *(v34 + 8);
      v42(v30, v36);
      return (v42)(v35, v36);
    }
  }

  return result;
}

uint64_t BestWorkoutMeasurementEntry.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v51 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for LocalizedDate();
  v16 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v47 - v21;
  v23 = *a1;
  v24 = a1[1];
  sub_1B4D1778C();
  v25 = sub_1B4D177CC();
  v26 = *(v25 - 8);
  result = (*(v26 + 48))(v22, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v26 + 32))(v51, v22, v25);
    v28 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
    sub_1B4974FBC(a1 + *(v28 + 28), v10, &qword_1EB8A7158, &unk_1B4D20310);
    v29 = *(v12 + 48);
    v30 = a1;
    if (v29(v10, 1, v11) == 1)
    {
      *v15 = 0;
      *(v15 + 1) = 0;
      *(v15 + 4) = 0;
      v31 = &v15[*(v11 + 36)];
      sub_1B4D17BBC();
      v32 = &v15[*(v11 + 40)];
      *v32 = 0;
      *(v32 + 1) = 0;
      v33 = v29(v10, 1, v11);
      v34 = v49;
      if (v33 != 1)
      {
        sub_1B4975024(v10, &qword_1EB8A7158, &unk_1B4D20310);
      }
    }

    else
    {
      sub_1B4A08E7C(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v34 = v49;
    }

    v35 = *(v15 + 1);
    *&v36 = *v15;
    *(&v36 + 1) = HIDWORD(*v15);
    v37 = v36;
    *&v36 = v35;
    *(&v36 + 1) = SHIDWORD(v35);
    *v18 = v37;
    *(v18 + 1) = v36;
    *(v18 + 4) = *(v15 + 4);
    v38 = &v15[*(v11 + 40)];
    v39 = v51;
    if (*(v38 + 1))
    {
      v40 = *v38;
      v41 = *(v38 + 1);

      sub_1B4D1797C();

      sub_1B4A08AC8(v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    }

    else
    {
      sub_1B4A08AC8(v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v42 = sub_1B4D179BC();
      (*(*(v42 - 8) + 56))(v34, 1, 1, v42);
    }

    sub_1B4995980(v34, &v18[*(v48 + 36)]);
    v43 = type metadata accessor for BestWorkoutMeasurementEntry();
    sub_1B4A08E7C(v18, v39 + *(v43 + 28), type metadata accessor for LocalizedDate);
    v44 = *(v30 + 16);
    v45 = [swift_getObjCClassFromMetadata() baseUnit];
    v46 = v39 + *(v43 + 32);
    sub_1B4D1741C();
    return sub_1B4A08AC8(v30, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  }

  return result;
}

uint64_t BestWorkoutMeasurementEntry.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v3 = *(a1 + 16);
  sub_1B4A08E34(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A086F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26[0] = a3;
  v5 = sub_1B4D1746C();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = a2;
  v14 = sub_1B4D1779C();
  v16 = v15;
  v17 = a1[1];

  *a1 = v14;
  a1[1] = v16;
  v18 = type metadata accessor for BestWorkoutMeasurementEntry();
  v29 = a2 + *(v18 + 28);
  sub_1B4A08E34(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v19 = v27;
  sub_1B4D17DAC();
  v27 = v19;
  v20 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 28);
  sub_1B4975024(a1 + v20, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4A08E7C(v13, a1 + v20, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v10 + 56))(a1 + v20, 0, 1, v9);
  v21 = *(v18 + 32);
  v22 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v24 = v23;
  result = (*(v28 + 8))(v8, v5);
  a1[2] = v24;
  return result;
}

unint64_t sub_1B4A089F0()
{
  result = qword_1EB8A7B98;
  if (!qword_1EB8A7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B98);
  }

  return result;
}

uint64_t sub_1B4A08A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A08AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B4A08D98()
{
  result = qword_1EB8A7BC0;
  if (!qword_1EB8A7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7BC0);
  }

  return result;
}

uint64_t sub_1B4A08E34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4A08E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t HourOfDay.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4D1794C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v9 = sub_1B4D1796C();
  __swift_project_value_buffer(v9, qword_1EDC3CE48);
  (*(v5 + 104))(v8, *MEMORY[0x1E6969A58], v4);
  v10 = sub_1B4D1795C();
  v11 = sub_1B4D1777C();
  (*(*(v11 - 8) + 8))(a1, v11);
  result = (*(v5 + 8))(v8, v4);
  *a2 = v10;
  *(a2 + 8) = 0;
  return result;
}

void HourOfDay.init(rawValue:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  if (a1 >= 0x18)
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B4D17F6C();
    __swift_project_value_buffer(v5, qword_1EDC3CED0);
    v6 = sub_1B4D17F5C();
    v7 = sub_1B4D1871C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_1B4953000, v6, v7, "Invalid hourOfDay: %lld", v8, 0xCu);
      MEMORY[0x1B8C7DDA0](v8, -1, -1);
    }

    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = a1 > 0x17;
}

uint64_t sub_1B4A09278()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A092EC()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](v1);
  return sub_1B4D18EDC();
}

unint64_t sub_1B4A0933C()
{
  result = qword_1EB8A7BD0;
  if (!qword_1EB8A7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7BD0);
  }

  return result;
}

unint64_t sub_1B4A093A0()
{
  result = qword_1EB8A7BD8;
  if (!qword_1EB8A7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7BD8);
  }

  return result;
}

void RingsPropertiesQuery.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE0, &qword_1B4D1FE90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *&v65 = &v61 - v5;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v61 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DateRangeDescriptor();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v66 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v68 = &v61 - v23;
  v24 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v25 = *(v24 + 28);
  v71 = a1;
  sub_1B4974FBC(a1 + v25, v13, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v26 = *(v15 + 48);
  if (v26(v13, 1, v14) == 1)
  {
    *v18 = 0;
    v18[8] = -1;
    v27 = &v18[*(v14 + 20)];
    sub_1B4D17BBC();
    if (v26(v13, 1, v14) != 1)
    {
      sub_1B4975024(v13, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    }
  }

  else
  {
    sub_1B4A1F750(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  }

  v28 = v67;
  DateRangeDescriptor.init(_:)(v18);
  if (!v28)
  {
    v29 = v65;
    sub_1B4974FBC(v71 + *(v24 + 32), v65, &qword_1EB8A7BE0, &qword_1B4D1FE90);
    v30 = v64;
    v31 = *(v63 + 48);
    if (v31(v29, 1, v64) == 1)
    {
      v32 = MEMORY[0x1E69E7CC0];
      *v9 = MEMORY[0x1E69E7CC0];
      v9[1] = v32;
      v9[2] = v32;
      v33 = v9 + *(v30 + 28);
      sub_1B4D17BBC();
      if (v31(v29, 1, v30) != 1)
      {
        sub_1B4975024(v29, &qword_1EB8A7BE0, &qword_1B4D1FE90);
      }
    }

    else
    {
      sub_1B4A1F750(v29, v9, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
    }

    RingsPropertyDimensionsFilters.init(_:)(v9, &v69);
    v34 = 0;
    v65 = v69;
    v64 = v70;
    v35 = *v71;
    v36 = *(*v71 + 16);
    v67 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v37 = (v35 + 40 + 16 * v34);
    while (v36 != v34)
    {
      if (v34 >= *(v35 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      ++v34;
      v38 = v37 + 2;
      v40 = *(v37 - 1);
      v39 = *v37;

      v41 = sub_1B4D18B1C();

      v37 = v38;
      if (v41 < 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_1B4A1EDC0(0, *(v67 + 2) + 1, 1, v67, &qword_1EB8A7F40, &qword_1B4D20470);
        }

        v43 = *(v67 + 2);
        v42 = *(v67 + 3);
        if (v43 >= v42 >> 1)
        {
          v67 = sub_1B4A1EDC0((v42 > 1), v43 + 1, 1, v67, &qword_1EB8A7F40, &qword_1B4D20470);
        }

        v44 = v67;
        *(v67 + 2) = v43 + 1;
        v44[v43 + 32] = v41;
        goto LABEL_11;
      }
    }

    v45 = v71[1];
    sub_1B4A1F5E8(v68, v66, type metadata accessor for DateRangeDescriptor);
    v46 = *(v45 + 16);
    if (v46)
    {
      v47 = 0;
      v48 = v45 + 40;
      v61 = v46 - 1;
      v49 = MEMORY[0x1E69E7CC0];
      v63 = v45 + 40;
LABEL_22:
      v50 = (v48 + 16 * v47);
      v51 = v47;
      while (v51 < *(v45 + 16))
      {
        v47 = v51 + 1;
        v52 = *(v50 - 1);
        v53 = *v50;

        v54._countAndFlagsBits = v52;
        v54._object = v53;
        RingsPropertyKind.init(rawValue:)(v54);
        v55 = v69;
        if (v69 != 26)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_1B4A1EDC0(0, *(v49 + 2) + 1, 1, v49, &qword_1EB8A7F38, &qword_1B4D20468);
          }

          v57 = *(v49 + 2);
          v56 = *(v49 + 3);
          if (v57 >= v56 >> 1)
          {
            v49 = sub_1B4A1EDC0((v56 > 1), v57 + 1, 1, v49, &qword_1EB8A7F38, &qword_1B4D20468);
          }

          *(v49 + 2) = v57 + 1;
          v49[v57 + 32] = v55;
          v48 = v63;
          if (v61 != v51)
          {
            goto LABEL_22;
          }

          goto LABEL_34;
        }

        v50 += 2;
        ++v51;
        if (v46 == v47)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_37;
    }

    v49 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v58 = v62;
    sub_1B4A1F750(v66, v62, type metadata accessor for DateRangeDescriptor);
    sub_1B4A1F650(v68, type metadata accessor for DateRangeDescriptor);
    v59 = type metadata accessor for RingsPropertiesQuery();
    v60 = v58 + v59[5];
    *v60 = v65;
    *(v60 + 16) = v64;
    *(v58 + v59[6]) = v67;
    *(v58 + v59[7]) = v49;
  }

  sub_1B4A1F650(v71, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
}

uint64_t RingsPropertiesQuery.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  sub_1B4A1F7D4(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A09B98(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = (a2 + 64);
      v4 = (a1 + 64);
      while (1)
      {
        if (!v2)
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
        }

        v7 = *(v4 - 16);
        v8 = *v4;
        v39 = v4;
        v40 = v3;
        v9 = *(v3 - 16);
        v10 = *v3;
        v41 = *(v4 - 1);
        v42 = *(v3 - 1);
        v11 = *(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3);
        if (!v11 && (sub_1B4D18DCC() & 1) == 0)
        {
          goto LABEL_67;
        }

        v38 = v2;
        v43[0] = v7;
        v44 = v9;
        v12 = FactType.rawValue.getter();
        v14 = v13;
        if (v12 == FactType.rawValue.getter() && v14 == v15)
        {

          v16 = v41;
          v17 = v8;
          sub_1B498FC0C(v41, v8);

          v18 = v10;
          sub_1B498FC0C(v42, v10);
          v19 = v17;
        }

        else
        {
          v20 = sub_1B4D18DCC();

          v16 = v41;
          v19 = v8;
          sub_1B498FC0C(v41, v8);

          v18 = v10;
          sub_1B498FC0C(v42, v10);

          if ((v20 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        v21 = v19 >> 62;
        v22 = v18 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v29 = *(v16 + 16);
            v28 = *(v16 + 24);
            v26 = __OFSUB__(v28, v29);
            v23 = v28 - v29;
            if (v26)
            {
              goto LABEL_72;
            }

            goto LABEL_35;
          }

          v23 = 0;
          if (v22 <= 1)
          {
            goto LABEL_36;
          }
        }

        else if (v21)
        {
          LODWORD(v23) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_73;
          }

          v23 = v23;
          if (v22 <= 1)
          {
LABEL_36:
            if (v22)
            {
              LODWORD(v27) = HIDWORD(v42) - v42;
              if (__OFSUB__(HIDWORD(v42), v42))
              {
                goto LABEL_70;
              }

              v27 = v27;
            }

            else
            {
              v27 = BYTE6(v18);
            }

            goto LABEL_40;
          }
        }

        else
        {
          v23 = BYTE6(v19);
          if (v22 <= 1)
          {
            goto LABEL_36;
          }
        }

LABEL_29:
        if (v22 != 2)
        {
          if (v23)
          {
            goto LABEL_66;
          }

LABEL_6:

          sub_1B49DDD2C(v42, v18);

          v5 = v16;
          v6 = v19;
LABEL_7:
          sub_1B49DDD2C(v5, v6);
          goto LABEL_8;
        }

        v25 = *(v42 + 16);
        v24 = *(v42 + 24);
        v26 = __OFSUB__(v24, v25);
        v27 = v24 - v25;
        if (v26)
        {
          goto LABEL_71;
        }

LABEL_40:
        if (v23 != v27)
        {
LABEL_66:

          sub_1B49DDD2C(v42, v18);

          sub_1B49DDD2C(v16, v19);
          goto LABEL_67;
        }

        if (v23 < 1)
        {
          goto LABEL_6;
        }

        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v32 = *(v16 + 16);
            v31 = *(v16 + 24);
            sub_1B498FC0C(v42, v18);
            v33 = sub_1B4D1750C();
            if (v33)
            {
              v34 = sub_1B4D1752C();
              if (__OFSUB__(v32, v34))
              {
                goto LABEL_76;
              }

              v33 += v32 - v34;
            }

            if (__OFSUB__(v31, v32))
            {
              goto LABEL_75;
            }

            goto LABEL_60;
          }

          *&v43[6] = 0;
          *v43 = 0;
          v30 = v42;
          sub_1B498FC0C(v42, v18);
        }

        else
        {
          if (v21)
          {
            if (v16 >> 32 < v16)
            {
              goto LABEL_74;
            }

            sub_1B498FC0C(v42, v18);
            v33 = sub_1B4D1750C();
            if (v33)
            {
              v35 = sub_1B4D1752C();
              if (__OFSUB__(v16, v35))
              {
                goto LABEL_77;
              }

              v33 += v16 - v35;
            }

LABEL_60:
            sub_1B4D1751C();
            sub_1B4A1CB14(v33, v42, v18, v43);
            sub_1B49DDD2C(v42, v18);

            sub_1B49DDD2C(v42, v18);

            sub_1B49DDD2C(v41, v19);
            if ((v43[0] & 1) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_8;
          }

          *v43 = v16;
          *&v43[8] = v19;
          v43[10] = BYTE2(v19);
          v43[11] = BYTE3(v19);
          v43[12] = BYTE4(v19);
          v43[13] = BYTE5(v19);
          v30 = v42;
          sub_1B498FC0C(v42, v18);
        }

        sub_1B4A1CB14(v43, v30, v18, &v44);
        sub_1B49DDD2C(v30, v18);

        sub_1B49DDD2C(v30, v18);

        sub_1B49DDD2C(v16, v19);
        if ((v44 & 1) == 0)
        {
          goto LABEL_67;
        }

LABEL_8:
        v4 = v39 + 5;
        v3 = v40 + 5;
        v2 = v38 - 1;
        if (v38 == 1)
        {
          goto LABEL_65;
        }
      }

      v23 = 0;
      if (!v16 && v19 == 0xC000000000000000 && v18 >> 62 == 3)
      {
        v23 = 0;
        if (!v42 && v18 == 0xC000000000000000)
        {

          sub_1B49DDD2C(0, 0xC000000000000000);

          v5 = 0;
          v6 = 0xC000000000000000;
          goto LABEL_7;
        }
      }

LABEL_35:
      if (v22 <= 1)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    }

LABEL_65:
    result = 1;
  }

  else
  {
LABEL_67:
    result = 0;
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B4A0A164(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A0A1C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 5)
      {
        if (*v3 > 8u)
        {
          if (v6 == 10)
          {
            v9 = 0x7265626D65766F6ELL;
          }

          else
          {
            v9 = 0x7265626D65636564;
          }

          if (v6 == 9)
          {
            v8 = 0x7265626F74636FLL;
          }

          else
          {
            v8 = v9;
          }

          if (v6 == 9)
          {
            v7 = 0xE700000000000000;
          }

          else
          {
            v7 = 0xE800000000000000;
          }
        }

        else if (v6 == 6)
        {
          v7 = 0xE400000000000000;
          v8 = 2037151082;
        }

        else if (v6 == 7)
        {
          v7 = 0xE600000000000000;
          v8 = 0x747375677561;
        }

        else
        {
          v8 = 0x65626D6574706573;
          v7 = 0xE900000000000072;
        }
      }

      else if (*v3 > 2u)
      {
        if (v6 == 3)
        {
          v7 = 0xE500000000000000;
          v8 = 0x6C69727061;
        }

        else if (v6 == 4)
        {
          v7 = 0xE300000000000000;
          v8 = 7954797;
        }

        else
        {
          v7 = 0xE400000000000000;
          v8 = 1701737834;
        }
      }

      else if (*v3)
      {
        if (v6 == 1)
        {
          v7 = 0xE800000000000000;
          v8 = 0x7972617572626566;
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x686372616DLL;
        }
      }

      else
      {
        v7 = 0xE700000000000000;
        v8 = 0x797261756E616ALL;
      }

      v10 = *v4;
      if (v10 > 5)
      {
        if (*v4 > 8u)
        {
          if (v10 == 9)
          {
            v11 = 0xE700000000000000;
            if (v8 != 0x7265626F74636FLL)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v11 = 0xE800000000000000;
            if (v10 == 10)
            {
              if (v8 != 0x7265626D65766F6ELL)
              {
                goto LABEL_5;
              }
            }

            else if (v8 != 0x7265626D65636564)
            {
              goto LABEL_5;
            }
          }
        }

        else if (v10 == 6)
        {
          v11 = 0xE400000000000000;
          if (v8 != 2037151082)
          {
            goto LABEL_5;
          }
        }

        else if (v10 == 7)
        {
          v11 = 0xE600000000000000;
          if (v8 != 0x747375677561)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xE900000000000072;
          if (v8 != 0x65626D6574706573)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 > 2u)
      {
        if (v10 == 3)
        {
          v11 = 0xE500000000000000;
          if (v8 != 0x6C69727061)
          {
            goto LABEL_5;
          }
        }

        else if (v10 == 4)
        {
          v11 = 0xE300000000000000;
          if (v8 != 7954797)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xE400000000000000;
          if (v8 != 1701737834)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4)
      {
        if (v10 == 1)
        {
          v11 = 0xE800000000000000;
          if (v8 != 0x7972617572626566)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xE500000000000000;
          if (v8 != 0x686372616DLL)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v11 = 0xE700000000000000;
        if (v8 != 0x797261756E616ALL)
        {
          goto LABEL_5;
        }
      }

      if (v7 != v11)
      {
LABEL_5:
        v5 = sub_1B4D18DCC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0A568(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0x7961646E7573;
      if (v6 == 5)
      {
        v8 = 0x7961647275746173;
        v9 = 0xE800000000000000;
      }

      else
      {
        v9 = 0xE600000000000000;
      }

      v10 = 0x7961647372756874;
      if (v6 == 3)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v10 = 0x796164697266;
        v11 = 0xE600000000000000;
      }

      if (*v3 <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      v12 = 0x616473656E646577;
      if (v6 == 1)
      {
        v12 = 0x79616473657574;
      }

      v13 = 0xE900000000000079;
      if (v6 == 1)
      {
        v13 = 0xE700000000000000;
      }

      if (!*v3)
      {
        v12 = 0x7961646E6F6DLL;
        v13 = 0xE600000000000000;
      }

      if (*v3 <= 2u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v8;
      }

      if (*v3 <= 2u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v9;
      }

      if (*v4 <= 2u)
      {
        if (*v4)
        {
          if (v7 == 1)
          {
            v16 = 0xE700000000000000;
            if (v14 != 0x79616473657574)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v16 = 0xE900000000000079;
            if (v14 != 0x616473656E646577)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v16 = 0xE600000000000000;
          if (v14 != 0x7961646E6F6DLL)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 > 4u)
      {
        if (v7 == 5)
        {
          v16 = 0xE800000000000000;
          v17 = 0x647275746173;
LABEL_37:
          if (v14 != (v17 & 0xFFFFFFFFFFFFLL | 0x7961000000000000))
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        }

        v16 = 0xE600000000000000;
        if (v14 != 0x7961646E7573)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v16 = 0xE800000000000000;
          v17 = 0x647372756874;
          goto LABEL_37;
        }

        v16 = 0xE600000000000000;
        if (v14 != 0x796164697266)
        {
          goto LABEL_5;
        }
      }

LABEL_46:
      if (v15 != v16)
      {
LABEL_5:
        v5 = sub_1B4D18DCC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0A7D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 2 || ((v5 ^ v7) & 1) != 0)
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0A844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4D179BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7078, &qword_1B4D1CCB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v15 = type metadata accessor for WorkoutMilestoneEntry();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v42 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v49 = (v5 + 48);
  v50 = (&v42 - v21);
  v43 = (v5 + 32);
  v44 = (v5 + 8);
  v46 = *(v20 + 72);
  v47 = v15;
  v48 = v11;
  while (1)
  {
    sub_1B4A1F5E8(v25, v22, type metadata accessor for WorkoutMilestoneEntry);
    sub_1B4A1F5E8(v26, v18, type metadata accessor for WorkoutMilestoneEntry);
    if (*v22 != *v18 || (v28 = *(v15 + 20), (sub_1B4D177AC() & 1) == 0) || (v29 = *(v15 + 24), v30 = (v22 + v29), v31 = (v18 + v29), *(v22 + v29) != *(v18 + v29)) || v30[1] != v31[1] || v30[2] != v31[2] || v30[3] != v31[3] || v30[4] != v31[4])
    {
      sub_1B4A1F650(v18, type metadata accessor for WorkoutMilestoneEntry);
      sub_1B4A1F650(v22, type metadata accessor for WorkoutMilestoneEntry);
      return 0;
    }

    v51 = v25;
    v32 = v4;
    v33 = *(type metadata accessor for LocalizedDate() + 36);
    v34 = *(v11 + 48);
    sub_1B4974FBC(v30 + v33, v14, &qword_1EB8A6C20, &unk_1B4D1FBF0);
    v35 = v31 + v33;
    v4 = v32;
    sub_1B4974FBC(v35, &v14[v34], &qword_1EB8A6C20, &unk_1B4D1FBF0);
    v36 = *v49;
    if ((*v49)(v14, 1, v32) != 1)
    {
      break;
    }

    sub_1B4A1F650(v18, type metadata accessor for WorkoutMilestoneEntry);
    v22 = v50;
    sub_1B4A1F650(v50, type metadata accessor for WorkoutMilestoneEntry);
    if (v36(&v14[v34], 1, v4) != 1)
    {
      goto LABEL_24;
    }

    sub_1B4975024(v14, &qword_1EB8A6C20, &unk_1B4D1FBF0);
LABEL_8:
    v15 = v47;
    v26 += v46;
    v25 = v51 + v46;
    result = 1;
    --v23;
    v11 = v48;
    if (!v23)
    {
      return result;
    }
  }

  v37 = v53;
  sub_1B4974FBC(v14, v53, &qword_1EB8A6C20, &unk_1B4D1FBF0);
  if (v36(&v14[v34], 1, v32) != 1)
  {
    v38 = &v14[v34];
    v39 = v52;
    (*v43)(v52, v38, v32);
    sub_1B4A1F7D4(&qword_1EB8A7080, MEMORY[0x1E6969BC0]);
    v45 = sub_1B4D1816C();
    v40 = *v44;
    (*v44)(v39, v32);
    sub_1B4A1F650(v18, type metadata accessor for WorkoutMilestoneEntry);
    v41 = v50;
    sub_1B4A1F650(v50, type metadata accessor for WorkoutMilestoneEntry);
    v40(v37, v32);
    v4 = v32;
    v22 = v41;
    sub_1B4975024(v14, &qword_1EB8A6C20, &unk_1B4D1FBF0);
    if ((v45 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  sub_1B4A1F650(v18, type metadata accessor for WorkoutMilestoneEntry);
  sub_1B4A1F650(v50, type metadata accessor for WorkoutMilestoneEntry);
  (*v44)(v37, v32);
LABEL_24:
  sub_1B4975024(v14, &qword_1EB8A7078, &qword_1B4D1CCB8);
  return 0;
}

uint64_t sub_1B4A0AE54(uint64_t a1, uint64_t a2)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C8, &unk_1B4D1D780);
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v15 = *(v4 + 72);
      do
      {
        sub_1B4974FBC(v13, v10, &qword_1EB8A72C8, &unk_1B4D1D780);
        sub_1B4974FBC(v14, v7, &qword_1EB8A72C8, &unk_1B4D1D780);
        v16 = *(v20 + 32);
        sub_1B4A1F6B0(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
        v17 = sub_1B4D1816C();
        sub_1B4975024(v7, &qword_1EB8A72C8, &unk_1B4D1D780);
        sub_1B4975024(v10, &qword_1EB8A72C8, &unk_1B4D1D780);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B4A0B05C(uint64_t a1, uint64_t a2)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C0, &unk_1B4D1D770);
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      v15 = *(v4 + 72);
      do
      {
        sub_1B4974FBC(v13, v10, &qword_1EB8A72C0, &unk_1B4D1D770);
        sub_1B4974FBC(v14, v7, &qword_1EB8A72C0, &unk_1B4D1D770);
        v16 = *(v20 + 32);
        sub_1B4A1F6B0(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
        v17 = sub_1B4D1816C();
        sub_1B4975024(v7, &qword_1EB8A72C0, &unk_1B4D1D770);
        sub_1B4975024(v10, &qword_1EB8A72C0, &unk_1B4D1D770);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B4A0B264(uint64_t a1, uint64_t a2)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70);
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      v15 = *(v4 + 72);
      do
      {
        sub_1B4974FBC(v13, v10, &qword_1EB8A6CF0, &unk_1B4D1BC70);
        sub_1B4974FBC(v14, v7, &qword_1EB8A6CF0, &unk_1B4D1BC70);
        v16 = *(v20 + 32);
        sub_1B4A1F6B0(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
        v17 = sub_1B4D1816C();
        sub_1B4975024(v7, &qword_1EB8A6CF0, &unk_1B4D1BC70);
        sub_1B4975024(v10, &qword_1EB8A6CF0, &unk_1B4D1BC70);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B4A0B46C(uint64_t a1, uint64_t a2)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      v15 = *(v4 + 72);
      do
      {
        sub_1B4974FBC(v13, v10, &qword_1EB8A6818, &unk_1B4D1AB30);
        sub_1B4974FBC(v14, v8, &qword_1EB8A6818, &unk_1B4D1AB30);
        v16 = *(v20 + 32);
        sub_1B4A1F6B0(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
        v17 = sub_1B4D1816C();
        sub_1B4975024(v8, &qword_1EB8A6818, &unk_1B4D1AB30);
        sub_1B4975024(v10, &qword_1EB8A6818, &unk_1B4D1AB30);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B4A0B674(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_14:
    v20 = 0;
    return v20 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v22 = *(v8 + 72);
    v23 = v6;
    v24 = &v22 - v9;
    while (1)
    {
      sub_1B4974FBC(v13, v10, &qword_1EB8A6CE8, &qword_1B4D44B80);
      sub_1B4974FBC(v14, v6, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v15 = *(v25 + 40);
      if (*&v10[v15] != *&v6[v15])
      {
        break;
      }

      if (*&v10[v15 + 8] != *&v6[v15 + 8])
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      v16 = type metadata accessor for DistanceSampleIntervalRecord();
      v17 = v16[6];
      sub_1B4A1F6B0(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
      if ((sub_1B4D1816C() & 1) == 0)
      {
        break;
      }

      v18 = v16[7];
      if ((sub_1B4D1816C() & 1) == 0)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      v19 = v16[8];
      sub_1B4A1F6B0(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
      v20 = sub_1B4D1816C();
      v6 = v23;
      sub_1B4975024(v23, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v10 = v24;
      sub_1B4975024(v24, &qword_1EB8A6CE8, &qword_1B4D44B80);
      if (v20)
      {
        v14 += v22;
        v13 += v22;
        if (--v11)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1B4975024(v23, &qword_1EB8A6CE8, &qword_1B4D44B80);
    sub_1B4975024(v24, &qword_1EB8A6CE8, &qword_1B4D44B80);
    goto LABEL_14;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1B4A0B978(uint64_t a1, uint64_t a2)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72E0, &unk_1B4D1D790);
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      v15 = *(v4 + 72);
      do
      {
        sub_1B4974FBC(v13, v10, &qword_1EB8A72E0, &unk_1B4D1D790);
        sub_1B4974FBC(v14, v7, &qword_1EB8A72E0, &unk_1B4D1D790);
        v16 = *(v20 + 32);
        sub_1B4A1F6B0(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
        v17 = sub_1B4D1816C();
        sub_1B4975024(v7, &qword_1EB8A72E0, &unk_1B4D1D790);
        sub_1B4975024(v10, &qword_1EB8A72E0, &unk_1B4D1D790);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B4A0BB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriendWorkout();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v41 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_20:
    v39 = 0;
    return v39 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v39 = 1;
    return v39 & 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  v41 = v4;
  v42 = v16;
  v17 = 0x1E6985000uLL;
  while (1)
  {
    result = sub_1B4A1F5E8(v14, v11, type metadata accessor for ActivitySharingFriendWorkout);
    if (!v12)
    {
      break;
    }

    sub_1B4A1F5E8(v15, v7, type metadata accessor for ActivitySharingFriendWorkout);
    v19 = *v11;
    v20 = *v7;
    v21 = *(v17 + 3136);
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22 && (v23 = v17, v24 = v22, v25 = *(v23 + 3136), objc_opt_self(), (v26 = swift_dynamicCastObjCClass()) != 0))
    {
      v27 = v26;
      v28 = v19;
      v29 = v20;
      [v24 coordinate];
      v31 = v30;
      [v27 coordinate];
      if (v31 != v32)
      {

LABEL_19:
        sub_1B4A1F650(v7, type metadata accessor for ActivitySharingFriendWorkout);
        sub_1B4A1F650(v11, type metadata accessor for ActivitySharingFriendWorkout);
        goto LABEL_20;
      }

      [v24 coordinate];
      v34 = v33;
      [v27 coordinate];
      v36 = v35;

      v4 = v41;
      if (v34 != v36)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_1B49DF540();
      if ((sub_1B4D187AC() & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v37 = *(v4 + 20);
    if ((sub_1B4D1774C() & 1) == 0)
    {
      goto LABEL_19;
    }

    v38 = *(v4 + 24);
    v39 = sub_1B4D1774C();
    sub_1B4A1F650(v7, type metadata accessor for ActivitySharingFriendWorkout);
    sub_1B4A1F650(v11, type metadata accessor for ActivitySharingFriendWorkout);
    if (v39)
    {
      v15 += v42;
      v14 += v42;
      v40 = v12-- == 1;
      v17 = 0x1E6985000;
      if (!v40)
      {
        continue;
      }
    }

    return v39 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A0BED8(uint64_t a1, uint64_t a2)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
      v15 = *(v4 + 72);
      do
      {
        sub_1B4974FBC(v13, v10, &qword_1EB8A6CF8, &unk_1B4D1BC80);
        sub_1B4974FBC(v14, v7, &qword_1EB8A6CF8, &unk_1B4D1BC80);
        v16 = *(v20 + 32);
        sub_1B4A1F6B0(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
        v17 = sub_1B4D1816C();
        sub_1B4975024(v7, &qword_1EB8A6CF8, &unk_1B4D1BC80);
        sub_1B4975024(v10, &qword_1EB8A6CF8, &unk_1B4D1BC80);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B4A0C0E0(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_s64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_1B4A0C158(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B4D18DCC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B4A0C1E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 32);
      v7 = *(a1 + v5 + 40);
      v8 = *(a1 + v5 + 42);
      v9 = *(a1 + v5 + 48);
      v10 = *(a1 + v5 + 56);
      v11 = *(a1 + v5 + 64);
      v12 = *(a2 + v5 + 32);
      v13 = *(a2 + v5 + 40);
      v14 = *(a2 + v5 + 42);
      v16 = *(a2 + v5 + 48);
      v15 = *(a2 + v5 + 56);
      v17 = *(a2 + v5 + 64);
      if (*(a1 + v5 + 41) == 1)
      {
        v18 = *(a1 + v5 + 40);
        if (v6 <= 1)
        {
          if (v6 | v18)
          {
            if (!*(a2 + v5 + 41) || v12 ^ 1 | v13)
            {
              return 0;
            }
          }

          else if (!*(a2 + v5 + 41) || v12 | v13)
          {
            return 0;
          }
        }

        else if (v6 ^ 2 | v18)
        {
          if (v6 ^ 3 | v18)
          {
            if (!*(a2 + v5 + 41) || __PAIR128__(v13, v12) < 4)
            {
              return 0;
            }
          }

          else if (!*(a2 + v5 + 41) || v12 ^ 3 | v13)
          {
            return 0;
          }
        }

        else if (!*(a2 + v5 + 41) || v12 ^ 2 | v13)
        {
          return 0;
        }
      }

      else
      {
        if (*(a2 + v5 + 41))
        {
          return 0;
        }

        if (*(a1 + v5 + 40))
        {
          if ((v13 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if ((v13 & 1) != 0 || v6 != v12)
          {
            return result;
          }
        }
      }

      if (v8 == 3)
      {
        if (v14 != 3)
        {
          return 0;
        }

        goto LABEL_34;
      }

      if (v14 == 3)
      {
        return 0;
      }

      if (*(a1 + v5 + 42))
      {
        if (v8 == 1)
        {
          v20 = 0xE700000000000000;
          v21 = 0x746E6572727563;
          v24 = *(a2 + v5 + 56);
          if (!*(a2 + v5 + 42))
          {
            goto LABEL_51;
          }
        }

        else
        {
          v21 = 0x20676E696C6C6F72;
          v20 = 0xEF65676172657661;
          v24 = *(a2 + v5 + 56);
          if (!*(a2 + v5 + 42))
          {
LABEL_51:
            v22 = 0xE700000000000000;
            if (v21 != 0x65676172657661)
            {
              goto LABEL_61;
            }

            goto LABEL_56;
          }
        }
      }

      else
      {
        v20 = 0xE700000000000000;
        v21 = 0x65676172657661;
        v24 = *(a2 + v5 + 56);
        if (!*(a2 + v5 + 42))
        {
          goto LABEL_51;
        }
      }

      if (v14 == 1)
      {
        v22 = 0xE700000000000000;
        if (v21 != 0x746E6572727563)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v22 = 0xEF65676172657661;
        if (v21 != 0x20676E696C6C6F72)
        {
          goto LABEL_61;
        }
      }

LABEL_56:
      if (v20 != v22)
      {
LABEL_61:
        v23 = sub_1B4D18DCC();

        v15 = v24;
        if ((v23 & 1) == 0)
        {
          return 0;
        }

LABEL_34:
        if (!v11)
        {
          goto LABEL_58;
        }

        goto LABEL_35;
      }

      v15 = v24;
      if (!v11)
      {
LABEL_58:
        result = 0;
        if (v17 || v9 != v16)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_35:
      if (v11 == 1)
      {
        if (v17 != 1)
        {
          return 0;
        }

        result = 0;
        if (v9 != v16 || v10 != v15)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v17 != 2 || *&v15 | *&v16)
        {
          return result;
        }
      }

LABEL_5:
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_1B4A0C530(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v8 = *v3;
      v9 = *v4;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10 && (v11 = v10, objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
      {
        v13 = v12;
        v14 = v8;
        v15 = v9;
        v16 = v14;
        v17 = v15;
        [v11 coordinate];
        v19 = v18;
        [v13 coordinate];
        if (v19 != v20)
        {

          return;
        }

        [v11 coordinate];
        v22 = v21;
        [v13 coordinate];
        v24 = v23;

        if (v22 != v24)
        {
          return;
        }
      }

      else
      {
        sub_1B49DF540();
        v5 = v8;
        v6 = v9;
        v7 = sub_1B4D187AC();

        if ((v7 & 1) == 0)
        {
          return;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1B4A0C6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationCoordinate();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v20 = *(v9 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v14, v11, type metadata accessor for LocationCoordinate);
      sub_1B4A1F5E8(v15, v7, type metadata accessor for LocationCoordinate);
      if ((sub_1B4D1774C() & 1) == 0 || *&v11[v4[5]] != *&v7[v4[5]] || *&v11[v4[6]] != *&v7[v4[6]])
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      v16 = v4[7];
      sub_1B4A1F6B0(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
      v17 = sub_1B4D1816C();
      sub_1B4A1F650(v7, type metadata accessor for LocationCoordinate);
      sub_1B4A1F650(v11, type metadata accessor for LocationCoordinate);
      if (v17)
      {
        v15 += v20;
        v14 += v20;
        if (--v12)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1B4A1F650(v7, type metadata accessor for LocationCoordinate);
    sub_1B4A1F650(v11, type metadata accessor for LocationCoordinate);
    goto LABEL_13;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1B4A0C94C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A0C9A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = *v4;
      v7 = 0xE800000000000000;
      v8 = 0x6E776F646C6F6F63;
      switch(*v3)
      {
        case 1:
          v7 = 0xE400000000000000;
          v8 = 1701998435;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x676E696C637963;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x65636E6164;
          break;
        case 4:
          v7 = 0xE90000000000006ELL;
          v8 = 0x7552646564697567;
          break;
        case 5:
          v7 = 0xEA00000000006B6CLL;
          v8 = 0x6157646564697567;
          break;
        case 6:
          v7 = 0xE400000000000000;
          v8 = 1953065320;
          break;
        case 7:
          v8 = 0x69786F626B63696BLL;
          v7 = 0xEA0000000000676ELL;
          break;
        case 8:
          v7 = 0xEA00000000006E6FLL;
          v8 = 0x697461746964656DLL;
          break;
        case 9:
          v7 = 0xE700000000000000;
          v8 = 0x736574616C6970;
          break;
        case 0xA:
          v7 = 0xE600000000000000;
          v8 = 0x676E69776F72;
          break;
        case 0xB:
          v8 = 0x6874676E65727473;
          break;
        case 0xC:
          v8 = 0x6C696D6461657274;
          v7 = 0xE90000000000006CLL;
          break;
        case 0xD:
          v7 = 0xE400000000000000;
          v8 = 1634168697;
          break;
        case 0xE:
          v7 = 0xE500000000000000;
          v8 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x6E776F646C6F6F63;
      switch(*v4)
      {
        case 1:
          v9 = 0xE400000000000000;
          if (v8 == 1701998435)
          {
            goto LABEL_49;
          }

          goto LABEL_5;
        case 2:
          v9 = 0xE700000000000000;
          if (v8 != 0x676E696C637963)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 3:
          v9 = 0xE500000000000000;
          if (v8 != 0x65636E6164)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 4:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x7552646564697567)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 5:
          v9 = 0xEA00000000006B6CLL;
          if (v8 != 0x6157646564697567)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 6:
          v9 = 0xE400000000000000;
          if (v8 != 1953065320)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 7:
          v9 = 0xEA0000000000676ELL;
          if (v8 != 0x69786F626B63696BLL)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 8:
          v9 = 0xEA00000000006E6FLL;
          if (v8 != 0x697461746964656DLL)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 9:
          v9 = 0xE700000000000000;
          if (v8 != 0x736574616C6970)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 0xA:
          v9 = 0xE600000000000000;
          v10 = 0x676E69776F72;
          goto LABEL_48;
        case 0xB:
          if (v8 != 0x6874676E65727473)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 0xC:
          v9 = 0xE90000000000006CLL;
          if (v8 != 0x6C696D6461657274)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 0xD:
          v9 = 0xE400000000000000;
          if (v8 != 1634168697)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        case 0xE:
          v9 = 0xE500000000000000;
          if (v8 != 0x726568746FLL)
          {
            goto LABEL_5;
          }

          goto LABEL_49;
        default:
LABEL_48:
          if (v8 != v10)
          {
            goto LABEL_5;
          }

LABEL_49:
          if (v7 == v9)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_1B4D18DCC();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1B4A0CDB8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = *(v4 + 8 * v3);
    v7 = *(v5 + 8 * v3);
    v8 = *(v6 + 16);
    v9 = *(v7 + 16);
    v10 = v8 == v9;
    if (v8 != v9)
    {
      return v10;
    }

    if (v8)
    {
      v11 = v6 == v7;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v6 + 40);
      v13 = (v7 + 40);
      while (v8)
      {
        result = *(v12 - 1);
        if (result != *(v13 - 1) || *v12 != *v13)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v12 += 2;
        v13 += 2;
        if (!--v8)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A0CEAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v6 = *v3;
      v7 = *i;
      v8 = 0xE900000000000079;
      v9 = 0xD000000000000012;
      if (v6 == 3)
      {
        v9 = 0x7974696C61646F6DLL;
      }

      v10 = 0xEC000000646E694BLL;
      if (v6 != 3)
      {
        v10 = 0x80000001B4D48DB0;
      }

      if (v6 == 2)
      {
        v9 = 0x6144664F72756F68;
      }

      else
      {
        v8 = v10;
      }

      v11 = 0x656557664F796164;
      if (*v3)
      {
        v12 = 0xE90000000000006BLL;
      }

      else
      {
        v11 = 0x59664F68746E6F6DLL;
        v12 = 0xEB00000000726165;
      }

      v13 = *v3 <= 1u ? v11 : v9;
      v14 = *v3 <= 1u ? v12 : v8;
      if (*i <= 1u)
      {
        break;
      }

      if (v7 == 2)
      {
        v15 = 0xE900000000000079;
        v16 = 0x6144664F72756F68;
LABEL_32:
        if (v13 != v16)
        {
          goto LABEL_5;
        }

        goto LABEL_33;
      }

      if (v7 == 3)
      {
        v15 = 0xEC000000646E694BLL;
        if (v13 != 0x7974696C61646F6DLL)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = 0x80000001B4D48DB0;
        if (v13 != 0xD000000000000012)
        {
LABEL_5:
          v5 = sub_1B4D18DCC();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

LABEL_33:
      if (v14 != v15)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }

    v16 = 0x59664F68746E6F6DLL;
    v15 = 0xEB00000000726165;
    if (*i)
    {
      v15 = 0xE90000000000006BLL;
      if (v13 != 0x656557664F796164)
      {
        goto LABEL_5;
      }

      goto LABEL_33;
    }

    goto LABEL_32;
  }

  return 1;
}

uint64_t sub_1B4A0D0D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0x756F436C61746F74;
      if (v6 == 4)
      {
        v8 = 0x547942746E756F63;
      }

      v9 = 0xEE0072656E696172;
      if (v6 != 4)
      {
        v9 = 0xEA0000000000746ELL;
      }

      if (v6 == 3)
      {
        v8 = 0x6B726F5774736562;
        v9 = 0xEB0000000074756FLL;
      }

      v10 = 0xD00000000000001ALL;
      if (v6 == 1)
      {
        v11 = 0x80000001B4D48B80;
      }

      else
      {
        v11 = 0x80000001B4D48BA0;
      }

      if (*v3)
      {
        v10 = 0xD000000000000012;
      }

      else
      {
        v11 = 0x80000001B4D48B40;
      }

      if (*v3 <= 2u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*v3 <= 2u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*v4 > 2u)
      {
        if (v7 == 3)
        {
          v14 = 0xEB0000000074756FLL;
          if (v12 != 0x6B726F5774736562)
          {
            goto LABEL_5;
          }
        }

        else if (v7 == 4)
        {
          v14 = 0xEE0072656E696172;
          if (v12 != 0x547942746E756F63)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0xEA0000000000746ELL;
          if (v12 != 0x756F436C61746F74)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4)
      {
        if (v7 == 1)
        {
          v14 = 0x80000001B4D48B80;
          if (v12 != 0xD000000000000012)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0x80000001B4D48BA0;
          if (v12 != 0xD000000000000012)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v14 = 0x80000001B4D48B40;
        if (v12 != 0xD00000000000001ALL)
        {
          goto LABEL_5;
        }
      }

      if (v13 != v14)
      {
LABEL_5:
        v5 = sub_1B4D18DCC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0D340(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 1)
      {
        v8 = 0x656557664F796164;
      }

      else
      {
        v8 = 0x646573756170;
      }

      if (v6 == 1)
      {
        v9 = 0xE90000000000006BLL;
      }

      else
      {
        v9 = 0xE600000000000000;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x59664F68746E6F6DLL;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xEB00000000726165;
      }

      if (v7 == 1)
      {
        v12 = 0x656557664F796164;
      }

      else
      {
        v12 = 0x646573756170;
      }

      if (v7 == 1)
      {
        v13 = 0xE90000000000006BLL;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x59664F68746E6F6DLL;
      }

      if (*v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xEB00000000726165;
      }

      if (v10 == v14 && v11 == v15)
      {
      }

      else
      {
        v5 = sub_1B4D18DCC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0D49C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = *v4;
      v7 = 0xEA00000000006B61;
      v8 = 0x6572745365766F6DLL;
      switch(*v3)
      {
        case 1:
          v8 = 0x6573696372657865;
          v7 = 0xEE006B6165727453;
          break;
        case 2:
          v8 = 0x727453646E617473;
          v7 = 0xEB000000006B6165;
          break;
        case 3:
          v8 = 0xD000000000000013;
          v7 = 0x80000001B4D48800;
          break;
        case 4:
          v8 = 0xD000000000000012;
          v7 = 0x80000001B4D48820;
          break;
        case 5:
          v8 = 0xD000000000000018;
          v7 = 0x80000001B4D48840;
          break;
        case 6:
          v8 = 0xD000000000000016;
          v7 = 0x80000001B4D48860;
          break;
        case 7:
          v8 = 0xD000000000000013;
          v7 = 0x80000001B4D48880;
          break;
        case 8:
          v8 = 0x6174537370657473;
          v7 = 0xEF73636974736974;
          break;
        case 9:
          v8 = 0xD000000000000011;
          v7 = 0x80000001B4D488B0;
          break;
        case 0xA:
          v8 = 0xD000000000000012;
          v7 = 0x80000001B4D488D0;
          break;
        case 0xB:
          v8 = 0xD000000000000015;
          v7 = 0x80000001B4D488F0;
          break;
        case 0xC:
          v8 = 0xD000000000000019;
          v7 = 0x80000001B4D48910;
          break;
        case 0xD:
          v8 = 0xD000000000000016;
          v7 = 0x80000001B4D48930;
          break;
        case 0xE:
          v8 = 0xD00000000000001ELL;
          v7 = 0x80000001B4D48950;
          break;
        case 0xF:
          v8 = 0xD000000000000011;
          v7 = 0x80000001B4D48970;
          break;
        case 0x10:
          v8 = 0xD000000000000014;
          v7 = 0x80000001B4D48990;
          break;
        case 0x11:
          v8 = 0xD000000000000011;
          v7 = 0x80000001B4D489B0;
          break;
        case 0x12:
          v8 = 0x616F47646E617473;
          v7 = 0xEE0061746C65446CLL;
          break;
        case 0x13:
          v8 = 0xD000000000000011;
          v7 = 0x80000001B4D489E0;
          break;
        case 0x14:
          v8 = 0xD000000000000015;
          v7 = 0x80000001B4D48A00;
          break;
        case 0x15:
          v8 = 0xD000000000000012;
          v7 = 0x80000001B4D48A20;
          break;
        case 0x16:
          v8 = 0xD000000000000016;
          v7 = 0x80000001B4D48A40;
          break;
        case 0x17:
          v8 = 0xD000000000000015;
          v7 = 0x80000001B4D48A60;
          break;
        case 0x18:
          v8 = 0xD000000000000014;
          v7 = 0x80000001B4D48A80;
          break;
        case 0x19:
          v7 = 0xEA0000000000746ELL;
          v8 = 0x756F436C61746F74;
          break;
        default:
          break;
      }

      v9 = 0x6572745365766F6DLL;
      v10 = 0xEA00000000006B61;
      switch(*v4)
      {
        case 1:
          v11 = 0x6573696372657865;
          v12 = 0x6B6165727453;
          goto LABEL_72;
        case 2:
          v10 = 0xEB000000006B6165;
          if (v8 != 0x727453646E617473)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 3:
          v10 = 0x80000001B4D48800;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 4:
          v10 = 0x80000001B4D48820;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 5:
          v10 = 0x80000001B4D48840;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 6:
          v10 = 0x80000001B4D48860;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 7:
          v10 = 0x80000001B4D48880;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 8:
          v10 = 0xEF73636974736974;
          if (v8 != 0x6174537370657473)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 9:
          v10 = 0x80000001B4D488B0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0xA:
          v10 = 0x80000001B4D488D0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0xB:
          v10 = 0x80000001B4D488F0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0xC:
          v10 = 0x80000001B4D48910;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0xD:
          v10 = 0x80000001B4D48930;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0xE:
          v10 = 0x80000001B4D48950;
          if (v8 != 0xD00000000000001ELL)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0xF:
          v10 = 0x80000001B4D48970;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x10:
          v10 = 0x80000001B4D48990;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x11:
          v10 = 0x80000001B4D489B0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x12:
          v11 = 0x616F47646E617473;
          v12 = 0x61746C65446CLL;
LABEL_72:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v11)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x13:
          v9 = 0xD000000000000011;
          v10 = 0x80000001B4D489E0;
          goto LABEL_81;
        case 0x14:
          v10 = 0x80000001B4D48A00;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x15:
          v10 = 0x80000001B4D48A20;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x16:
          v10 = 0x80000001B4D48A40;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x17:
          v10 = 0x80000001B4D48A60;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x18:
          v10 = 0x80000001B4D48A80;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        case 0x19:
          v10 = 0xEA0000000000746ELL;
          if (v8 != 0x756F436C61746F74)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        default:
LABEL_81:
          if (v8 != v9)
          {
            goto LABEL_5;
          }

LABEL_82:
          if (v7 == v10)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_1B4D18DCC();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1B4A0DB60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 <= 1)
      {
        if (*v3)
        {
          v7 = 0x726F6F646E69;
        }

        else
        {
          v7 = 0x6E776F6E6B6E75;
        }

        if (*v3)
        {
          v8 = 0xE600000000000000;
        }

        else
        {
          v8 = 0xE700000000000000;
        }
      }

      else if (v6 == 2)
      {
        v8 = 0xE700000000000000;
        v7 = 0x726F6F6474756FLL;
      }

      else if (v6 == 3)
      {
        v7 = 0x657461576E65706FLL;
        v8 = 0xE900000000000072;
      }

      else
      {
        v7 = 0x676E696D6D697773;
        v8 = 0xEC0000006C6F6F50;
      }

      v9 = *v4;
      if (v9 <= 1)
      {
        if (*v4)
        {
          v11 = 0x726F6F646E69;
        }

        else
        {
          v11 = 0x6E776F6E6B6E75;
        }

        if (*v4)
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE700000000000000;
        }

        if (v7 != v11)
        {
LABEL_5:
          v5 = sub_1B4D18DCC();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0xE700000000000000;
        if (v7 != 0x726F6F6474756FLL)
        {
          goto LABEL_5;
        }
      }

      else if (v9 == 3)
      {
        v10 = 0xE900000000000072;
        if (v7 != 0x657461576E65706FLL)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0xEC0000006C6F6F50;
        if (v7 != 0x676E696D6D697773)
        {
          goto LABEL_5;
        }
      }

      if (v8 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0DD68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0xD000000000000010;
      if (v6 == 4)
      {
        v8 = 0x6E6F697461636F6CLL;
        v9 = 0xEC00000065707954;
      }

      else
      {
        v9 = 0x80000001B4D48D10;
      }

      if (v6 == 3)
      {
        v8 = 0x7974697669746361;
        v9 = 0xEC00000065707954;
      }

      v10 = 0xE900000000000079;
      v11 = 0x656557664F796164;
      if (v6 == 1)
      {
        v10 = 0xE90000000000006BLL;
      }

      else
      {
        v11 = 0x6144664F72756F68;
      }

      if (!*v3)
      {
        v11 = 0x59664F68746E6F6DLL;
        v10 = 0xEB00000000726165;
      }

      if (*v3 <= 2u)
      {
        v12 = v11;
      }

      else
      {
        v12 = v8;
      }

      if (*v3 <= 2u)
      {
        v13 = v10;
      }

      else
      {
        v13 = v9;
      }

      if (*v4 > 2u)
      {
        if (v7 == 3)
        {
          v15 = 0x7974697669746361;
LABEL_34:
          v14 = 0xEC00000065707954;
          if (v12 != v15)
          {
            goto LABEL_5;
          }

          goto LABEL_39;
        }

        if (v7 == 4)
        {
          v15 = 0x6E6F697461636F6CLL;
          goto LABEL_34;
        }

        v14 = 0x80000001B4D48D10;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_5;
        }
      }

      else if (*v4)
      {
        if (v7 == 1)
        {
          v14 = 0xE90000000000006BLL;
          if (v12 != 0x656557664F796164)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0xE900000000000079;
          if (v12 != 0x6144664F72756F68)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v14 = 0xEB00000000726165;
        if (v12 != 0x59664F68746E6F6DLL)
        {
          goto LABEL_5;
        }
      }

LABEL_39:
      if (v13 != v14)
      {
LABEL_5:
        v5 = sub_1B4D18DCC();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B4A0DFD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = *v4;
      v7 = 0xEE00736369747369;
      v8 = 0x7461745365636170;
      switch(*v3)
      {
        case 1:
          v8 = 0xD000000000000012;
          v7 = 0x80000001B4D488D0;
          break;
        case 2:
          break;
        case 3:
          v8 = 0xD000000000000017;
          v7 = 0x80000001B4D48B20;
          break;
        case 4:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001B4D48B40;
          break;
        case 5:
          v8 = 0xD000000000000013;
          v7 = 0x80000001B4D48B60;
          break;
        case 6:
          v8 = 0xD000000000000012;
          v7 = 0x80000001B4D48B80;
          break;
        case 7:
          v8 = 0xD000000000000012;
          v7 = 0x80000001B4D48BA0;
          break;
        case 8:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000001B4D48BC0;
          break;
        case 9:
          v8 = 0xD000000000000015;
          v7 = 0x80000001B4D48BE0;
          break;
        case 0xA:
          v8 = 0xD000000000000017;
          v7 = 0x80000001B4D48C00;
          break;
        case 0xB:
          v8 = 0xD000000000000013;
          v7 = 0x80000001B4D48C20;
          break;
        case 0xC:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000001B4D48C40;
          break;
        case 0xD:
          v8 = 0xD000000000000018;
          v7 = 0x80000001B4D48C60;
          break;
        case 0xE:
          v8 = 0xD000000000000017;
          v7 = 0x80000001B4D48C80;
          break;
        case 0xF:
          v8 = 0xD000000000000017;
          v7 = 0x80000001B4D48CA0;
          break;
        case 0x10:
          v8 = 0xD000000000000017;
          v7 = 0x80000001B4D48CC0;
          break;
        case 0x11:
          v8 = 0xD000000000000016;
          v7 = 0x80000001B4D48CE0;
          break;
        case 0x12:
          v8 = 0x756F436C61746F74;
          v7 = 0xEA0000000000746ELL;
          break;
        default:
          v8 = 0xD000000000000011;
          v7 = 0x80000001B4D48AF0;
          break;
      }

      v9 = 0x7461745365636170;
      v10 = 0xEE00736369747369;
      switch(*v4)
      {
        case 1:
          v10 = 0x80000001B4D488D0;
          if (v8 == 0xD000000000000012)
          {
            goto LABEL_61;
          }

          goto LABEL_5;
        case 2:
          goto LABEL_60;
        case 3:
          v10 = 0x80000001B4D48B20;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 4:
          v10 = 0x80000001B4D48B40;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 5:
          v10 = 0x80000001B4D48B60;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 6:
          v10 = 0x80000001B4D48B80;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 7:
          v10 = 0x80000001B4D48BA0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 8:
          v10 = 0x80000001B4D48BC0;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 9:
          v10 = 0x80000001B4D48BE0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0xA:
          v9 = 0xD000000000000017;
          v10 = 0x80000001B4D48C00;
LABEL_60:
          if (v8 == v9)
          {
            goto LABEL_61;
          }

          goto LABEL_5;
        case 0xB:
          v10 = 0x80000001B4D48C20;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0xC:
          v10 = 0x80000001B4D48C40;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0xD:
          v10 = 0x80000001B4D48C60;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0xE:
          v10 = 0x80000001B4D48C80;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0xF:
          v10 = 0x80000001B4D48CA0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0x10:
          v10 = 0x80000001B4D48CC0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0x11:
          v10 = 0x80000001B4D48CE0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        case 0x12:
          v10 = 0xEA0000000000746ELL;
          if (v8 != 0x756F436C61746F74)
          {
            goto LABEL_5;
          }

          goto LABEL_61;
        default:
          v10 = 0x80000001B4D48AF0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_5;
          }

LABEL_61:
          if (v7 == v10)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_1B4D18DCC();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1B4A0E52C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_1B4A1F5E8(v21, v18, a4);
        sub_1B4A1F5E8(v22, v14, a4);
        v24 = a5(v18, v14);
        sub_1B4A1F650(v14, a6);
        sub_1B4A1F650(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1B4A0E6CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_23:
    v23 = 0;
    return v23 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v28 = a1 + v14;
  v15 = a2 + v14;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_1B4A1F5E8(v28 + v16 * v13, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    if (v13 == v12)
    {
      break;
    }

    result = sub_1B4A1F5E8(v15 + v16 * v13, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    v18 = *v11;
    v19 = *v7;
    v20 = *(*v11 + 16);
    if (v20 != *(*v7 + 16))
    {
LABEL_22:
      sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
      sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
      goto LABEL_23;
    }

    if (v20)
    {
      v21 = v18 == v19;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v24 = (v18 + 40);
      v25 = (v19 + 40);
      while (v20)
      {
        result = *(v24 - 1);
        if (result != *(v25 - 1) || *v24 != *v25)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v24 += 2;
        v25 += 2;
        if (!--v20)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    v22 = *(v4 + 20);
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v23 = sub_1B4D1816C();
    sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    if ((v23 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A0E980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v79 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB0, &unk_1B4D202A0);
  v11 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v98 = &v79 - v12;
  v100 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v13 = *(v100 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v88 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v92 = &v79 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC0, &qword_1B4D202B0);
  v19 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v21 = &v79 - v20;
  v97 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v22 = *(v97 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v90 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v102 = &v79 - v27;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD0, &unk_1B4D202C0);
  v28 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v30 = &v79 - v29;
  v103 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  v31 = *(*(v103 - 1) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v99 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v79 - v35);
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
LABEL_36:
    v76 = 0;
    return v76 & 1;
  }

  if (!v37 || a1 == a2)
  {
    v76 = 1;
    return v76 & 1;
  }

  v84 = v30;
  v80 = v4;
  v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v39 = a1 + v38;
  v40 = a2 + v38;
  v85 = (v22 + 48);
  v79 = (v5 + 48);
  v81 = *(v34 + 72);
  v41 = v88;
  v42 = v102;
  v43 = v99;
  v91 = v21;
  v83 = (v13 + 48);
  v82 = &v79 - v35;
  while (1)
  {
    v101 = v37;
    v94 = v39;
    result = sub_1B4A1F5E8(v39, v36, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
    if (!v101)
    {
      break;
    }

    v93 = v40;
    sub_1B4A1F5E8(v40, v43, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
    if (*v36 != *v43 || v36[1] != v43[1])
    {
      goto LABEL_35;
    }

    v45 = v42;
    v46 = v103[7];
    v47 = *(v96 + 48);
    v48 = v43;
    v49 = v84;
    sub_1B4974FBC(v36 + v46, v84, &qword_1EB8A7DC8, &qword_1B4D202B8);
    sub_1B4974FBC(v48 + v46, v49 + v47, &qword_1EB8A7DC8, &qword_1B4D202B8);
    v50 = *v85;
    v51 = v97;
    if ((*v85)(v49, 1, v97) == 1)
    {
      if (v50(v49 + v47, 1, v51) != 1)
      {
        goto LABEL_28;
      }

      sub_1B4975024(v49, &qword_1EB8A7DC8, &qword_1B4D202B8);
      v52 = v83;
      v43 = v99;
      v53 = v91;
    }

    else
    {
      sub_1B4974FBC(v49, v45, &qword_1EB8A7DC8, &qword_1B4D202B8);
      if (v50(v49 + v47, 1, v51) == 1)
      {
        sub_1B4A1F650(v45, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
LABEL_28:
        sub_1B4975024(v49, &qword_1EB8A7DD0, &unk_1B4D202C0);
        v43 = v99;
        goto LABEL_35;
      }

      v54 = v90;
      sub_1B4A1F750(v49 + v47, v90, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      v55 = static Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.== infix(_:_:)(v102, v54);
      sub_1B4A1F650(v54, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      sub_1B4A1F650(v102, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      sub_1B4975024(v49, &qword_1EB8A7DC8, &qword_1B4D202B8);
      v52 = v83;
      v43 = v99;
      v53 = v91;
      if ((v55 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v56 = v103[8];
    v57 = *(v95 + 48);
    sub_1B4974FBC(v36 + v56, v53, &qword_1EB8A7DB8, &unk_1B4D27B10);
    sub_1B4974FBC(v43 + v56, v53 + v57, &qword_1EB8A7DB8, &unk_1B4D27B10);
    v58 = *v52;
    v59 = v100;
    if ((*v52)(v53, 1, v100) == 1)
    {
      v60 = v58(v53 + v57, 1, v59);
      v36 = v82;
      if (v60 != 1)
      {
        goto LABEL_30;
      }

      sub_1B4975024(v53, &qword_1EB8A7DB8, &unk_1B4D27B10);
      v42 = v102;
    }

    else
    {
      v61 = v92;
      sub_1B4974FBC(v53, v92, &qword_1EB8A7DB8, &unk_1B4D27B10);
      if (v58(v53 + v57, 1, v59) == 1)
      {
        sub_1B4A1F650(v61, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
        v36 = v82;
LABEL_30:
        v77 = &qword_1EB8A7DC0;
        v78 = &qword_1B4D202B0;
        goto LABEL_34;
      }

      sub_1B4A1F750(v53 + v57, v41, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
      v62 = *(v89 + 48);
      v63 = v98;
      sub_1B4974FBC(v61, v98, &qword_1EB8A6D38, &qword_1B4D1BCB8);
      sub_1B4974FBC(v41, v63 + v62, &qword_1EB8A6D38, &qword_1B4D1BCB8);
      v64 = *v79;
      v65 = v63;
      v66 = v80;
      v67 = (*v79)(v65, 1, v80);
      v36 = v82;
      if (v67 == 1)
      {
        v68 = v61;
        v69 = v41;
        if (v64(v98 + v62, 1, v66) != 1)
        {
          goto LABEL_32;
        }

        sub_1B4975024(v98, &qword_1EB8A6D38, &qword_1B4D1BCB8);
        v53 = v91;
      }

      else
      {
        v70 = v98;
        v71 = v87;
        sub_1B4974FBC(v98, v87, &qword_1EB8A6D38, &qword_1B4D1BCB8);
        if (v64(v70 + v62, 1, v66) == 1)
        {
          sub_1B4A1F650(v71, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
          v69 = v88;
          v68 = v92;
LABEL_32:
          sub_1B4975024(v98, &qword_1EB8A7DB0, &unk_1B4D202A0);
          v53 = v91;
LABEL_33:
          sub_1B4A1F650(v69, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
          sub_1B4A1F650(v68, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
          v77 = &qword_1EB8A7DB8;
          v78 = &unk_1B4D27B10;
LABEL_34:
          sub_1B4975024(v53, v77, v78);
LABEL_35:
          sub_1B4A1F650(v43, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
          sub_1B4A1F650(v36, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
          goto LABEL_36;
        }

        v72 = v86;
        sub_1B4A1F750(v70 + v62, v86, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
        v73 = static Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType.== infix(_:_:)(v71, v72);
        sub_1B4A1F650(v72, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
        sub_1B4A1F650(v71, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
        sub_1B4975024(v70, &qword_1EB8A6D38, &qword_1B4D1BCB8);
        v69 = v88;
        v53 = v91;
        v68 = v92;
        if ((v73 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v74 = *(v100 + 20);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      LOBYTE(v74) = sub_1B4D1816C();
      v41 = v69;
      sub_1B4A1F650(v69, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
      sub_1B4A1F650(v68, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
      sub_1B4975024(v53, &qword_1EB8A7DB8, &unk_1B4D27B10);
      v42 = v102;
      if ((v74 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v75 = v103[6];
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v76 = sub_1B4D1816C();
    sub_1B4A1F650(v43, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
    sub_1B4A1F650(v36, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
    if (v76)
    {
      v37 = v101 - 1;
      v40 = v93 + v81;
      v39 = v94 + v81;
      if (v101 != 1)
      {
        continue;
      }
    }

    return v76 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A0F598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v150 = (&v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v149 = (&v133 - v8);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E48, &qword_1B4D20348);
  v9 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v133 - v10;
  v154 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v162 = *(v154 - 8);
  v11 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v13 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v151 = &v133 - v16;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E50, &unk_1B4D28FE0);
  v17 = *(*(v153 - 8) + 64);
  MEMORY[0x1EEE9AC00](v153);
  v170 = &v133 - v18;
  v171 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v146 = *(v171 - 8);
  v19 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v163 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v164 = &v133 - v23;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E58, &unk_1B4D28FD0);
  v24 = *(*(v165 - 8) + 64);
  MEMORY[0x1EEE9AC00](v165);
  v26 = &v133 - v25;
  v145 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  v27 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v157 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v156 = &v133 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E60, &unk_1B4D20360);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v152 = &v133 - v33;
  v160 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  v34 = *(v160 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v155 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v158 = &v133 - v39;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E68, &unk_1B4D20370);
  v40 = *(*(v159 - 8) + 64);
  MEMORY[0x1EEE9AC00](v159);
  v42 = &v133 - v41;
  v172 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v43 = *(v172 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v166 = &v133 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v169 = &v133 - v48;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E70, &unk_1B4D20380);
  v49 = *(*(v167 - 8) + 64);
  MEMORY[0x1EEE9AC00](v167);
  v51 = &v133 - v50;
  v173 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  v52 = *(*(v173 - 8) + 64);
  MEMORY[0x1EEE9AC00](v173);
  v175 = &v133 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v133 - v56;
  v58 = *(a1 + 16);
  if (v58 != *(a2 + 16))
  {
LABEL_58:
    v126 = 0;
    return v126 & 1;
  }

  if (!v58 || a1 == a2)
  {
    v126 = 1;
    return v126 & 1;
  }

  v161 = v51;
  v134 = v4;
  v59 = 0;
  v60 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v144 = a1 + v60;
  v143 = a2 + v60;
  v142 = (v43 + 48);
  v138 = (v34 + 48);
  v140 = (v146 + 48);
  v137 = (v162 + 48);
  v146 = *(v55 + 72);
  v136 = v31;
  v139 = v42;
  v135 = v13;
  v61 = v169;
  v174 = &v133 - v56;
  v168 = v58;
  v141 = v26;
  while (1)
  {
    v62 = v146 * v59;
    v63 = v57;
    result = sub_1B4A1F5E8(v144 + v146 * v59, v57, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
    if (v59 == v168)
    {
      break;
    }

    v162 = v59;
    v65 = v175;
    sub_1B4A1F5E8(v143 + v62, v175, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
    v66 = *(v173 + 20);
    v67 = *(v167 + 48);
    v68 = v161;
    sub_1B4974FBC(&v63[v66], v161, &qword_1EB8A6DB0, &unk_1B4D462F0);
    sub_1B4974FBC(v65 + v66, v68 + v67, &qword_1EB8A6DB0, &unk_1B4D462F0);
    v69 = *v142;
    v70 = v172;
    if ((*v142)(v68, 1, v172) == 1)
    {
      if (v69(v68 + v67, 1, v70) != 1)
      {
        goto LABEL_44;
      }

      sub_1B4975024(v68, &qword_1EB8A6DB0, &unk_1B4D462F0);
    }

    else
    {
      sub_1B4974FBC(v68, v61, &qword_1EB8A6DB0, &unk_1B4D462F0);
      v71 = v69(v68 + v67, 1, v70);
      v72 = v139;
      if (v71 == 1)
      {
        sub_1B4A1F650(v61, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
LABEL_44:
        v127 = &qword_1EB8A7E70;
        v128 = &unk_1B4D20380;
        goto LABEL_55;
      }

      v73 = v166;
      sub_1B4A1F750(v68 + v67, v166, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
      v74 = *(v159 + 48);
      sub_1B4974FBC(v61, v72, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
      sub_1B4974FBC(v73, v72 + v74, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
      v75 = *v138;
      v76 = v160;
      if ((*v138)(v72, 1, v160) == 1)
      {
        if (v75(v72 + v74, 1, v76) != 1)
        {
          goto LABEL_48;
        }

        sub_1B4975024(v72, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
        v61 = v169;
      }

      else
      {
        v77 = v158;
        sub_1B4974FBC(v72, v158, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
        if (v75(v72 + v74, 1, v76) == 1)
        {
          sub_1B4A1F650(v77, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
LABEL_48:
          sub_1B4975024(v72, &qword_1EB8A7E68, &unk_1B4D20370);
          v61 = v169;
          goto LABEL_49;
        }

        v78 = v155;
        sub_1B4A1F750(v72 + v74, v155, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
        v79 = *(v136 + 48);
        v80 = v152;
        sub_1B4A1F5E8(v77, v152, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
        sub_1B4A1F5E8(v78, v80 + v79, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
        v81 = v156;
        sub_1B4A1F750(v80, v156, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
        v82 = v80 + v79;
        v83 = v157;
        sub_1B4A1F750(v82, v157, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
        v84 = *v81;
        v85 = *v83;
        v86 = *(*v81 + 16);
        v61 = v169;
        if (v86 != *(*v83 + 16))
        {
          goto LABEL_42;
        }

        if (v86 && v84 != v85)
        {
          v87 = (v84 + 40);
          v88 = (v85 + 40);
          while (1)
          {
            v89 = *(v87 - 1) == *(v88 - 1) && *v87 == *v88;
            if (!v89 && (sub_1B4D18DCC() & 1) == 0)
            {
              break;
            }

            v87 += 2;
            v88 += 2;
            if (!--v86)
            {
              goto LABEL_25;
            }
          }

LABEL_42:
          sub_1B4A1F650(v157, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
          sub_1B4A1F650(v156, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
          sub_1B4A1F650(v155, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
          sub_1B4A1F650(v158, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
          sub_1B4975024(v139, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
LABEL_49:
          sub_1B4A1F650(v166, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
          sub_1B4A1F650(v61, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
          v127 = &qword_1EB8A6DB0;
          v128 = &unk_1B4D462F0;
          v129 = v161;
LABEL_56:
          sub_1B4975024(v129, v127, v128);
LABEL_57:
          sub_1B4A1F650(v175, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
          sub_1B4A1F650(v174, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
          goto LABEL_58;
        }

LABEL_25:
        v90 = *(v145 + 20);
        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v91 = v61;
        v93 = v156;
        v92 = v157;
        LOBYTE(v90) = sub_1B4D1816C();
        sub_1B4A1F650(v92, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
        v94 = v93;
        v61 = v91;
        sub_1B4A1F650(v94, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
        sub_1B4A1F650(v155, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
        sub_1B4A1F650(v158, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
        sub_1B4975024(v139, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
        if ((v90 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      v95 = *(v172 + 20);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v96 = v166;
      LOBYTE(v95) = sub_1B4D1816C();
      sub_1B4A1F650(v96, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
      sub_1B4A1F650(v61, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
      sub_1B4975024(v161, &qword_1EB8A6DB0, &unk_1B4D462F0);
      if ((v95 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    v97 = v61;
    v98 = *(v173 + 24);
    v99 = *(v165 + 48);
    v68 = v141;
    sub_1B4974FBC(&v174[v98], v141, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
    sub_1B4974FBC(v175 + v98, v68 + v99, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
    v100 = *v140;
    v101 = v171;
    if ((*v140)(v68, 1, v171) == 1)
    {
      if (v100(v68 + v99, 1, v101) != 1)
      {
        goto LABEL_46;
      }

      sub_1B4975024(v68, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
      v61 = v97;
      v102 = v162;
    }

    else
    {
      v103 = v164;
      sub_1B4974FBC(v68, v164, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
      if (v100(v68 + v99, 1, v101) == 1)
      {
        sub_1B4A1F650(v103, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
LABEL_46:
        v127 = &qword_1EB8A7E58;
        v128 = &unk_1B4D28FD0;
        goto LABEL_55;
      }

      v104 = v163;
      sub_1B4A1F750(v68 + v99, v163, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
      v105 = *(v153 + 48);
      v106 = v170;
      sub_1B4974FBC(v103, v170, &qword_1EB8A6DC8, &unk_1B4D20350);
      sub_1B4974FBC(v104, v106 + v105, &qword_1EB8A6DC8, &unk_1B4D20350);
      v107 = *v137;
      v108 = v154;
      if ((*v137)(v106, 1, v154) == 1)
      {
        v109 = v107(v170 + v105, 1, v108);
        v102 = v162;
        if (v109 != 1)
        {
          goto LABEL_51;
        }

        sub_1B4975024(v170, &qword_1EB8A6DC8, &unk_1B4D20350);
      }

      else
      {
        v110 = v170;
        v111 = v151;
        sub_1B4974FBC(v170, v151, &qword_1EB8A6DC8, &unk_1B4D20350);
        v112 = v107(v110 + v105, 1, v108);
        v102 = v162;
        if (v112 == 1)
        {
          sub_1B4A1F650(v111, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
LABEL_51:
          v130 = &qword_1EB8A7E50;
          v131 = &unk_1B4D28FE0;
          v132 = v170;
          goto LABEL_53;
        }

        v113 = v170;
        v114 = v135;
        sub_1B4A1F750(v170 + v105, v135, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
        v115 = *(v148 + 48);
        v116 = v147;
        sub_1B4A1F5E8(v111, v147, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
        sub_1B4A1F5E8(v114, v116 + v115, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
        v117 = v149;
        sub_1B4A1F750(v116, v149, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v118 = v116 + v115;
        v119 = v150;
        sub_1B4A1F750(v118, v150, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        if (*v117 != *v119)
        {
          sub_1B4A1F650(v119, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
          sub_1B4A1F650(v117, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
          sub_1B4A1F650(v114, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
          sub_1B4A1F650(v111, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
          v130 = &qword_1EB8A6DC8;
          v131 = &unk_1B4D20350;
          v132 = v113;
LABEL_53:
          sub_1B4975024(v132, v130, v131);
LABEL_54:
          sub_1B4A1F650(v163, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
          sub_1B4A1F650(v164, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
          v127 = &qword_1EB8A6DC0;
          v128 = &unk_1B4D1BDD0;
LABEL_55:
          v129 = v68;
          goto LABEL_56;
        }

        v120 = *(v134 + 20);
        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        LOBYTE(v120) = sub_1B4D1816C();
        sub_1B4A1F650(v119, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        sub_1B4A1F650(v117, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        sub_1B4A1F650(v114, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
        sub_1B4A1F650(v111, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
        sub_1B4975024(v113, &qword_1EB8A6DC8, &unk_1B4D20350);
        if ((v120 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      v121 = *(v171 + 20);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v122 = v163;
      v123 = v164;
      LOBYTE(v121) = sub_1B4D1816C();
      sub_1B4A1F650(v122, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
      sub_1B4A1F650(v123, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
      sub_1B4975024(v68, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
      v61 = v169;
      if ((v121 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v124 = v174;
    v125 = v175;
    v126 = sub_1B4D1816C();
    sub_1B4A1F650(v125, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
    sub_1B4A1F650(v124, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
    if (v126)
    {
      v59 = v102 + 1;
      v57 = v174;
      if (v59 != v168)
      {
        continue;
      }
    }

    return v126 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A10A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v100 = (&v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = (&v94 - v10);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  v11 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v94 - v12;
  v107 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v13 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v115 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v103 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EB0, &qword_1B4D27AF0);
  v18 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v119 = &v94 - v19;
  v114 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v20 = *(v114 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v104 = &v94 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v112 = &v94 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v94 - v30;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EB8, &qword_1B4D203C8);
  v32 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v34 = &v94 - v33;
  v111 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
  v35 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v37 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v120 = &v94 - v40;
  v41 = *(a1 + 16);
  if (v41 != *(a2 + 16))
  {
LABEL_56:
    v90 = 0;
    return v90 & 1;
  }

  if (!v41 || a1 == a2)
  {
    v90 = 1;
    return v90 & 1;
  }

  v110 = v31;
  v97 = v4;
  v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v43 = a1 + v42;
  v44 = a2 + v42;
  v45 = v5;
  v46 = (v20 + 48);
  v95 = (v45 + 48);
  v106 = *(v39 + 72);
  v108 = v23;
  v99 = v37;
  v96 = (v20 + 48);
  v98 = v34;
  while (1)
  {
    v116 = v43;
    v47 = v120;
    result = sub_1B4A1F5E8(v43, v120, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    if (!v41)
    {
      break;
    }

    v117 = v41;
    v118 = v44;
    sub_1B4A1F5E8(v44, v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    v49 = *(v113 + 48);
    v50 = v37;
    sub_1B4974FBC(v47, v34, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4974FBC(v37, &v34[v49], &qword_1EB8A7BC8, &unk_1B4D1FD60);
    v51 = *v46;
    v52 = v114;
    if ((*v46)(v34, 1, v114) == 1)
    {
      v53 = v51(&v34[v49], 1, v52);
      v54 = v117;
      v55 = v118;
      if (v53 != 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v56 = v110;
      sub_1B4974FBC(v34, v110, &qword_1EB8A7BC8, &unk_1B4D1FD60);
      if (v51(&v34[v49], 1, v52) == 1)
      {
        sub_1B4A1F650(v56, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
        v37 = v50;
LABEL_47:
        v91 = &qword_1EB8A7EB8;
        v92 = &qword_1B4D203C8;
        goto LABEL_55;
      }

      v57 = v112;
      sub_1B4A1F750(&v34[v49], v112, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      v58 = *(v109 + 48);
      v59 = v56;
      v60 = v119;
      sub_1B4A1F5E8(v59, v119, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      sub_1B4A1F5E8(v57, v60 + v58, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B4A1F5E8(v119, v23, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v55 = v118;
        if (EnumCaseMultiPayload != 1)
        {
          v93 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry;
          goto LABEL_50;
        }

        v62 = v115;
        sub_1B4A1F750(v119 + v58, v115, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        v63 = v110;
        v34 = v98;
        v54 = v117;
        if ((*v23 != *v62 || *(v23 + 1) != v62[1]) && (sub_1B4D18DCC() & 1) == 0)
        {
          goto LABEL_53;
        }

        v64 = *(v107 + 28);
        v65 = *(v102 + 48);
        v66 = v105;
        sub_1B4974FBC(&v23[v64], v105, &qword_1EB8A7158, &unk_1B4D20310);
        sub_1B4974FBC(v115 + v64, v66 + v65, &qword_1EB8A7158, &unk_1B4D20310);
        v67 = *v95;
        v68 = v97;
        if ((*v95)(v66, 1, v97) == 1)
        {
          v69 = v67(v66 + v65, 1, v68) == 1;
          v70 = v66;
          v63 = v110;
          if (!v69)
          {
            goto LABEL_52;
          }

          sub_1B4975024(v70, &qword_1EB8A7158, &unk_1B4D20310);
        }

        else
        {
          v75 = v101;
          sub_1B4974FBC(v66, v101, &qword_1EB8A7158, &unk_1B4D20310);
          if (v67(v66 + v65, 1, v68) == 1)
          {
            sub_1B4A1F650(v75, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
            v70 = v66;
            v63 = v110;
            v23 = v108;
LABEL_52:
            sub_1B4975024(v70, &qword_1EB8A7E20, &unk_1B4D2B450);
LABEL_53:
            sub_1B4A1F650(v115, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
            sub_1B4A1F650(v23, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
            sub_1B4A1F650(v119, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
            v37 = v99;
LABEL_54:
            sub_1B4A1F650(v112, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
            sub_1B4A1F650(v63, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
            v91 = &qword_1EB8A7BC8;
            v92 = &unk_1B4D1FD60;
LABEL_55:
            sub_1B4975024(v34, v91, v92);
            sub_1B4A1F650(v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
            sub_1B4A1F650(v120, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
            goto LABEL_56;
          }

          v76 = v100;
          sub_1B4A1F750(v66 + v65, v100, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          v77 = *v75;
          v78 = v75;
          v79 = v110;
          if (v77 != *v76 || v78[1] != v76[1] || v78[2] != v76[2] || v78[3] != v76[3] || v78[4] != v76[4])
          {
            goto LABEL_45;
          }

          v80 = *(v97 + 40);
          v81 = (v78 + v80);
          v82 = *(v78 + v80 + 8);
          v83 = (v76 + v80);
          v84 = v83[1];
          if (v82)
          {
            if (!v84 || (*v81 != *v83 || v82 != v84) && (sub_1B4D18DCC() & 1) == 0)
            {
LABEL_45:
              sub_1B4A1F650(v76, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
              sub_1B4A1F650(v78, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
              sub_1B4975024(v105, &qword_1EB8A7158, &unk_1B4D20310);
              v23 = v108;
              v63 = v79;
              goto LABEL_53;
            }
          }

          else if (v84)
          {
            goto LABEL_45;
          }

          v85 = *(v97 + 36);
          sub_1B4D17BCC();
          sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
          v86 = sub_1B4D1816C();
          sub_1B4A1F650(v76, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          sub_1B4A1F650(v78, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          sub_1B4975024(v105, &qword_1EB8A7158, &unk_1B4D20310);
          v23 = v108;
          v63 = v79;
          if ((v86 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        if (*(v23 + 2) != *(v115 + 16))
        {
          goto LABEL_53;
        }

        v87 = *(v107 + 24);
        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        if ((sub_1B4D1816C() & 1) == 0)
        {
          goto LABEL_53;
        }

        sub_1B4A1F650(v115, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        sub_1B4A1F650(v23, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        sub_1B4A1F650(v119, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
        v37 = v99;
      }

      else
      {
        v23 = v104;
        sub_1B4A1F5E8(v119, v104, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
        v71 = swift_getEnumCaseMultiPayload();
        v55 = v118;
        if (v71 == 1)
        {
          v93 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry;
LABEL_50:
          sub_1B4A1F650(v23, v93);
          v63 = v110;
          v37 = v99;
          v34 = v98;
          sub_1B4975024(v119, &qword_1EB8A7EB0, &qword_1B4D27AF0);
          goto LABEL_54;
        }

        v72 = v119;
        v73 = v103;
        sub_1B4A1F750(v119 + v58, v103, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
        v74 = static Apple_Fitness_Intelligence_BestWorkoutRecordEntry.== infix(_:_:)(v23, v73);
        sub_1B4A1F650(v73, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
        sub_1B4A1F650(v23, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
        sub_1B4A1F650(v72, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
        v63 = v110;
        v37 = v99;
        v34 = v98;
        v54 = v117;
        if ((v74 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      sub_1B4A1F650(v112, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      sub_1B4A1F650(v63, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      v46 = v96;
    }

    sub_1B4975024(v34, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    v88 = *(v111 + 20);
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v89 = v120;
    v90 = sub_1B4D1816C();
    sub_1B4A1F650(v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    sub_1B4A1F650(v89, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    if (v90)
    {
      v44 = v55 + v106;
      v43 = v116 + v106;
      v69 = v54 == 1;
      v41 = v54 - 1;
      v23 = v108;
      if (!v69)
      {
        continue;
      }
    }

    return v90 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A118C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v49 - v11);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  v13 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v49 - v14;
  v58 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v15 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v49 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_38:
    v45 = 0;
    return v45 & 1;
  }

  if (v22 && a1 != a2)
  {
    v55 = v4;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v51 = v17;
    v52 = (v5 + 48);
    v26 = *(v19 + 72);
    v49 = v8;
    v50 = v26;
    while (1)
    {
      sub_1B4A1F5E8(v24, v21, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      v53 = v24;
      sub_1B4A1F5E8(v25, v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      if (*v21 != *v17)
      {
        break;
      }

      v27 = v21[1] == v17[1] && v21[2] == v17[2];
      if (!v27 && (sub_1B4D18DCC() & 1) == 0)
      {
        break;
      }

      v54 = v25;
      v28 = *(v58 + 28);
      v29 = *(v57 + 48);
      v30 = v56;
      sub_1B4974FBC(v21 + v28, v56, &qword_1EB8A7158, &unk_1B4D20310);
      sub_1B4974FBC(v17 + v28, v30 + v29, &qword_1EB8A7158, &unk_1B4D20310);
      v31 = *v52;
      v32 = v55;
      if ((*v52)(v30, 1, v55) == 1)
      {
        v27 = v31(v30 + v29, 1, v32) == 1;
        v33 = v30;
        if (!v27)
        {
          goto LABEL_35;
        }

        sub_1B4975024(v30, &qword_1EB8A7158, &unk_1B4D20310);
        v34 = v54;
        v17 = v51;
      }

      else
      {
        sub_1B4974FBC(v30, v12, &qword_1EB8A7158, &unk_1B4D20310);
        if (v31(v30 + v29, 1, v32) == 1)
        {
          sub_1B4A1F650(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          v33 = v30;
LABEL_35:
          v46 = &qword_1EB8A7E20;
          v47 = &unk_1B4D2B450;
LABEL_36:
          sub_1B4975024(v33, v46, v47);
          v17 = v51;
          break;
        }

        v35 = v49;
        sub_1B4A1F750(v30 + v29, v49, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v34 = v54;
        if (*v12 != *v35 || v12[1] != v35[1] || v12[2] != v35[2] || v12[3] != v35[3] || v12[4] != v35[4])
        {
          goto LABEL_33;
        }

        v36 = *(v55 + 40);
        v37 = (v12 + v36);
        v38 = *(v12 + v36 + 8);
        v39 = (v35 + v36);
        v40 = v39[1];
        if (v38)
        {
          if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_1B4D18DCC() & 1) == 0)
          {
LABEL_33:
            sub_1B4A1F650(v35, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
            sub_1B4A1F650(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
            v46 = &qword_1EB8A7158;
            v47 = &unk_1B4D20310;
            v33 = v30;
            goto LABEL_36;
          }
        }

        else if (v40)
        {
          goto LABEL_33;
        }

        v41 = *(v55 + 36);
        sub_1B4D17BCC();
        v42 = v30;
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v43 = sub_1B4D1816C();
        sub_1B4A1F650(v35, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        sub_1B4A1F650(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        sub_1B4975024(v42, &qword_1EB8A7158, &unk_1B4D20310);
        v17 = v51;
        if ((v43 & 1) == 0)
        {
          break;
        }
      }

      v44 = *(v58 + 24);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v45 = sub_1B4D1816C();
      sub_1B4A1F650(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      sub_1B4A1F650(v21, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      if (v45)
      {
        v25 = v34 + v50;
        v24 = v53 + v50;
        if (--v22)
        {
          continue;
        }
      }

      return v45 & 1;
    }

    sub_1B4A1F650(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    sub_1B4A1F650(v21, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    goto LABEL_38;
  }

  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1B4A11F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v81 = &v73 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  v12 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v73 - v13;
  v90 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v14 = *(v90 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v17 = (&v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v88 = (&v73 - v20);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E78, &unk_1B4D20390);
  v21 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v73 - v22;
  v91 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  v23 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v25 = (&v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v73 - v28);
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_47:
    v68 = 0;
    return v68 & 1;
  }

  if (v30 && a1 != a2)
  {
    v76 = v25;
    v77 = v4;
    v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v32 = a1 + v31;
    v33 = a2 + v31;
    v73 = v8;
    v74 = (v5 + 48);
    v78 = *(v27 + 72);
    v79 = (v14 + 48);
    v75 = v17;
    v80 = &v73 - v28;
    while (1)
    {
      v86 = v32;
      sub_1B4A1F5E8(v32, v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
      sub_1B4A1F5E8(v33, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
      if (*v29 != *v25)
      {
        break;
      }

      v84 = v30;
      v85 = v33;
      v34 = v17;
      v35 = v29;
      v36 = v8;
      v37 = *(v91 + 24);
      v38 = *(v87 + 48);
      v39 = v89;
      sub_1B4974FBC(v35 + v37, v89, &qword_1EB8A7148, &unk_1B4D25C40);
      sub_1B4974FBC(v25 + v37, v39 + v38, &qword_1EB8A7148, &unk_1B4D25C40);
      v40 = *v79;
      v41 = v90;
      if ((*v79)(v39, 1, v90) == 1)
      {
        v42 = v40(v39 + v38, 1, v41) == 1;
        v43 = v39;
        if (!v42)
        {
          goto LABEL_40;
        }

        sub_1B4975024(v39, &qword_1EB8A7148, &unk_1B4D25C40);
        v8 = v36;
        v29 = v80;
        v44 = v84;
        v45 = v85;
      }

      else
      {
        v46 = v88;
        sub_1B4974FBC(v39, v88, &qword_1EB8A7148, &unk_1B4D25C40);
        if (v40(v39 + v38, 1, v41) == 1)
        {
          sub_1B4A1F650(v46, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
          v25 = v76;
          v43 = v39;
LABEL_40:
          sub_1B4975024(v43, &qword_1EB8A7E78, &unk_1B4D20390);
          goto LABEL_45;
        }

        sub_1B4A1F750(v39 + v38, v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
        v47 = v46;
        if (*v46 != *v17)
        {
          goto LABEL_44;
        }

        if (v46[1] != v17[1] || v46[2] != v17[2])
        {
          v48 = sub_1B4D18DCC();
          v47 = v88;
          if ((v48 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        v49 = *(v90 + 28);
        v50 = v81;
        v51 = *(v82 + 48);
        v52 = v83;
        sub_1B4974FBC(v47 + v49, v83, &qword_1EB8A7158, &unk_1B4D20310);
        sub_1B4974FBC(v34 + v49, v52 + v51, &qword_1EB8A7158, &unk_1B4D20310);
        v53 = *v74;
        v54 = v77;
        if ((*v74)(v52, 1, v77) == 1)
        {
          v42 = v53(v52 + v51, 1, v54) == 1;
          v55 = v52;
          v17 = v75;
          if (!v42)
          {
            goto LABEL_42;
          }

          sub_1B4975024(v52, &qword_1EB8A7158, &unk_1B4D20310);
          v8 = v73;
          v47 = v88;
        }

        else
        {
          sub_1B4974FBC(v52, v50, &qword_1EB8A7158, &unk_1B4D20310);
          if (v53(v52 + v51, 1, v54) == 1)
          {
            sub_1B4A1F650(v50, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
            v55 = v52;
            v17 = v75;
LABEL_42:
            v69 = &qword_1EB8A7E20;
            v70 = &unk_1B4D2B450;
            goto LABEL_43;
          }

          v8 = v73;
          sub_1B4A1F750(v52 + v51, v73, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          v17 = v75;
          if (*v50 != *v8 || v50[1] != v8[1] || v50[2] != v8[2] || v50[3] != v8[3] || v50[4] != v8[4])
          {
            goto LABEL_38;
          }

          v56 = *(v77 + 40);
          v57 = (v50 + v56);
          v58 = *(v50 + v56 + 8);
          v59 = (v8 + v56);
          v60 = v59[1];
          if (v58)
          {
            if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_1B4D18DCC() & 1) == 0)
            {
LABEL_38:
              sub_1B4A1F650(v8, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
              sub_1B4A1F650(v50, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
              v69 = &qword_1EB8A7158;
              v70 = &unk_1B4D20310;
              v55 = v52;
LABEL_43:
              sub_1B4975024(v55, v69, v70);
              v47 = v88;
LABEL_44:
              v71 = v47;
              sub_1B4A1F650(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
              sub_1B4A1F650(v71, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
              sub_1B4975024(v89, &qword_1EB8A7148, &unk_1B4D25C40);
              v25 = v76;
LABEL_45:
              v29 = v80;
              break;
            }
          }

          else if (v60)
          {
            goto LABEL_38;
          }

          v61 = *(v77 + 36);
          sub_1B4D17BCC();
          v62 = v52;
          sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
          v63 = sub_1B4D1816C();
          sub_1B4A1F650(v8, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          sub_1B4A1F650(v50, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          sub_1B4975024(v62, &qword_1EB8A7158, &unk_1B4D20310);
          v47 = v88;
          if ((v63 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        v64 = *(v90 + 24);
        v65 = v47;
        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v66 = sub_1B4D1816C();
        sub_1B4A1F650(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
        sub_1B4A1F650(v65, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
        sub_1B4975024(v89, &qword_1EB8A7148, &unk_1B4D25C40);
        v25 = v76;
        v29 = v80;
        v44 = v84;
        v45 = v85;
        if ((v66 & 1) == 0)
        {
          break;
        }
      }

      v67 = *(v91 + 20);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v68 = sub_1B4D1816C();
      sub_1B4A1F650(v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
      sub_1B4A1F650(v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
      if (v68)
      {
        v33 = v45 + v78;
        v32 = v86 + v78;
        v30 = v44 - 1;
        if (v30)
        {
          continue;
        }
      }

      return v68 & 1;
    }

    sub_1B4A1F650(v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
    sub_1B4A1F650(v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
    goto LABEL_47;
  }

  v68 = 1;
  return v68 & 1;
}

uint64_t sub_1B4A129A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      sub_1B4A1F5E8(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      if (*v11 != *v7 || v11[1] != v7[1])
      {
        break;
      }

      v17 = *(v4 + 24);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v18 = sub_1B4D1816C();
      sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
    sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
    goto LABEL_12;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1B4A12C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v89 = (&v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = (&v81 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v81 - v13;
  v97 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v14 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v101 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v81 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E28, &unk_1B4D20320);
  v18 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v81 - v19;
  v20 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v94 = &v81 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E38, &unk_1B4D20330);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v81 - v29;
  v98 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
  v31 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v102 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v103 = &v81 - v35;
  v36 = *(a1 + 16);
  if (v36 != *(a2 + 16))
  {
LABEL_43:
    v74 = 0;
    return v74 & 1;
  }

  if (!v36 || a1 == a2)
  {
    v74 = 1;
    return v74 & 1;
  }

  v83 = v11;
  v86 = v4;
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = a1 + v37;
  v39 = a2 + v37;
  v91 = (v21 + 48);
  v82 = (v5 + 48);
  v87 = *(v34 + 72);
  v88 = v27;
  v40 = v94;
  v84 = v30;
  v81 = v20;
  while (1)
  {
    v41 = v103;
    result = sub_1B4A1F5E8(v38, v103, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
    if (!v36)
    {
      break;
    }

    v100 = v36;
    v43 = v102;
    sub_1B4A1F5E8(v39, v102, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
    v44 = *(v27 + 48);
    sub_1B4974FBC(v41, v30, &qword_1EB8A7E30, &unk_1B4D29F60);
    sub_1B4974FBC(v43, &v30[v44], &qword_1EB8A7E30, &unk_1B4D29F60);
    v45 = *v91;
    if ((*v91)(v30, 1, v20) == 1)
    {
      if (v45(&v30[v44], 1, v20) != 1)
      {
        goto LABEL_36;
      }

      sub_1B4975024(v30, &qword_1EB8A7E30, &unk_1B4D29F60);
    }

    else
    {
      sub_1B4974FBC(v30, v40, &qword_1EB8A7E30, &unk_1B4D29F60);
      if (v45(&v30[v44], 1, v20) == 1)
      {
        sub_1B4A1F650(v40, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
LABEL_36:
        v78 = &qword_1EB8A7E38;
        v79 = &unk_1B4D20330;
        v80 = v30;
        goto LABEL_41;
      }

      v46 = v40;
      v47 = v99;
      sub_1B4A1F750(&v30[v44], v99, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
      v48 = v92;
      v49 = *(v93 + 48);
      sub_1B4A1F5E8(v46, v92, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
      sub_1B4A1F5E8(v47, v48 + v49, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
      v50 = v96;
      sub_1B4A1F750(v48, v96, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      v51 = v48 + v49;
      v52 = v101;
      sub_1B4A1F750(v51, v101, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      v53 = v95;
      if (*v50 != *v52)
      {
        goto LABEL_40;
      }

      v85 = v38;
      v54 = *(v97 + 28);
      v55 = *(v83 + 48);
      sub_1B4974FBC(v50 + v54, v95, &qword_1EB8A7158, &unk_1B4D20310);
      sub_1B4974FBC(v101 + v54, v53 + v55, &qword_1EB8A7158, &unk_1B4D20310);
      v56 = *v82;
      v57 = v86;
      if ((*v82)(v53, 1, v86) == 1)
      {
        if (v56(v53 + v55, 1, v57) != 1)
        {
          goto LABEL_38;
        }

        sub_1B4975024(v53, &qword_1EB8A7158, &unk_1B4D20310);
        v38 = v85;
      }

      else
      {
        v58 = v90;
        sub_1B4974FBC(v53, v90, &qword_1EB8A7158, &unk_1B4D20310);
        if (v56(v53 + v55, 1, v57) == 1)
        {
          sub_1B4A1F650(v58, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
          v50 = v96;
LABEL_38:
          v75 = &qword_1EB8A7E20;
          v76 = &unk_1B4D2B450;
          v77 = v53;
          goto LABEL_39;
        }

        v59 = v89;
        sub_1B4A1F750(v53 + v55, v89, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v50 = v96;
        v38 = v85;
        if (*v58 != *v59 || v58[1] != v59[1] || v58[2] != v59[2] || v58[3] != v59[3] || v58[4] != v59[4])
        {
          goto LABEL_34;
        }

        v60 = *(v86 + 40);
        v61 = (v58 + v60);
        v62 = *(v58 + v60 + 8);
        v63 = (v59 + v60);
        v64 = v63[1];
        if (v62)
        {
          if (!v64 || (*v61 != *v63 || v62 != v64) && (sub_1B4D18DCC() & 1) == 0)
          {
LABEL_34:
            sub_1B4A1F650(v59, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
            sub_1B4A1F650(v58, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
            v75 = &qword_1EB8A7158;
            v76 = &unk_1B4D20310;
            v77 = v95;
LABEL_39:
            sub_1B4975024(v77, v75, v76);
LABEL_40:
            sub_1B4A1F650(v101, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
            sub_1B4A1F650(v50, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
            sub_1B4A1F650(v99, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
            sub_1B4A1F650(v94, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
            v78 = &qword_1EB8A7E30;
            v79 = &unk_1B4D29F60;
            v80 = v84;
LABEL_41:
            sub_1B4975024(v80, v78, v79);
LABEL_42:
            sub_1B4A1F650(v102, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
            sub_1B4A1F650(v103, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
            goto LABEL_43;
          }
        }

        else if (v64)
        {
          goto LABEL_34;
        }

        v65 = *(v86 + 36);
        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v66 = sub_1B4D1816C();
        sub_1B4A1F650(v59, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        sub_1B4A1F650(v58, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        sub_1B4975024(v95, &qword_1EB8A7158, &unk_1B4D20310);
        if ((v66 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      if (*(v50 + 8) != *(v101 + 8))
      {
        goto LABEL_40;
      }

      v67 = *(v97 + 24);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v68 = v50;
      v69 = v101;
      v70 = sub_1B4D1816C();
      sub_1B4A1F650(v69, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      sub_1B4A1F650(v68, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      sub_1B4A1F650(v99, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
      v40 = v94;
      sub_1B4A1F650(v94, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
      v30 = v84;
      sub_1B4975024(v84, &qword_1EB8A7E30, &unk_1B4D29F60);
      v20 = v81;
      if ((v70 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v71 = *(v98 + 20);
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v73 = v102;
    v72 = v103;
    v74 = sub_1B4D1816C();
    sub_1B4A1F650(v73, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
    sub_1B4A1F650(v72, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
    if (v74)
    {
      v36 = v100 - 1;
      v27 = v88;
      v39 += v87;
      v38 += v87;
      if (v100 != 1)
      {
        continue;
      }
    }

    return v74 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A137D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      sub_1B4A1F5E8(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      if (*v11 != *v7)
      {
        break;
      }

      v17 = *(v4 + 20);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v18 = sub_1B4D1816C();
      sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
    sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
    goto LABEL_11;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1B4A13A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v42 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E40, &qword_1B4D20340);
  v13 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v15 = &v42 - v14;
  v51 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  v16 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v42 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_20:
    v40 = 0;
    return v40 & 1;
  }

  if (v23 && a1 != a2)
  {
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = v5;
    v26 = a1 + v24;
    v27 = a2 + v24;
    v47 = (v25 + 48);
    v48 = v4;
    v28 = *(v20 + 72);
    v44 = v12;
    v45 = v28;
    v42 = v8;
    v43 = v18;
    v46 = &v42 - v21;
    while (1)
    {
      sub_1B4A1F5E8(v26, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      sub_1B4A1F5E8(v27, v18, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      if (*v22 != *v18)
      {
        break;
      }

      v50 = v26;
      v29 = *(v51 + 24);
      v30 = *(v49 + 48);
      sub_1B4974FBC(v22 + v29, v15, &qword_1EB8A7818, &unk_1B4D29F40);
      sub_1B4974FBC(v18 + v29, &v15[v30], &qword_1EB8A7818, &unk_1B4D29F40);
      v31 = v48;
      v32 = *v47;
      if ((*v47)(v15, 1, v48) == 1)
      {
        v33 = v32(&v15[v30], 1, v31);
        v22 = v46;
        if (v33 != 1)
        {
          goto LABEL_17;
        }

        sub_1B4975024(v15, &qword_1EB8A7818, &unk_1B4D29F40);
        v34 = v50;
      }

      else
      {
        v35 = v44;
        sub_1B4974FBC(v15, v44, &qword_1EB8A7818, &unk_1B4D29F40);
        if (v32(&v15[v30], 1, v31) == 1)
        {
          sub_1B4A1F650(v35, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
          v18 = v43;
          v22 = v46;
LABEL_17:
          sub_1B4975024(v15, &qword_1EB8A7E40, &qword_1B4D20340);
          break;
        }

        v36 = v42;
        sub_1B4A1F750(&v15[v30], v42, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
        v22 = v46;
        if (*v35 != *v36)
        {
          sub_1B4A1F650(v36, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
          sub_1B4A1F650(v35, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
          sub_1B4975024(v15, &qword_1EB8A7818, &unk_1B4D29F40);
          v18 = v43;
          break;
        }

        v37 = *(v48 + 20);
        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v38 = sub_1B4D1816C();
        sub_1B4A1F650(v36, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
        sub_1B4A1F650(v35, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
        sub_1B4975024(v15, &qword_1EB8A7818, &unk_1B4D29F40);
        v18 = v43;
        v34 = v50;
        if ((v38 & 1) == 0)
        {
          break;
        }
      }

      v39 = *(v51 + 20);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v40 = sub_1B4D1816C();
      sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      sub_1B4A1F650(v22, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      if (v40)
      {
        v27 += v45;
        v26 = v34 + v45;
        if (--v23)
        {
          continue;
        }
      }

      return v40 & 1;
    }

    sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
    sub_1B4A1F650(v22, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
    goto LABEL_20;
  }

  v40 = 1;
  return v40 & 1;
}

uint64_t sub_1B4A14030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
      sub_1B4A1F5E8(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
      v17 = *v11 == *v7 && v11[1] == v7[1];
      if (!v17 && (sub_1B4D18DCC() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v7[2] && v11[3] == v7[3];
      if (!v18 && (sub_1B4D18DCC() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 24);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
      sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
    sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1B4A14308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC0, &qword_1B4D3F930);
  v13 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v40 - v14;
  v49 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  v16 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v40 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_24;
  }

  if (!v23 || a1 == a2)
  {
    v36 = 1;
    return v36 & 1;
  }

  v45 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v43 = (&v40 - v21);
  v44 = (v5 + 48);
  v41 = *(v20 + 72);
  v42 = v15;
  v40 = v8;
  while (1)
  {
    sub_1B4A1F5E8(v25, v22, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
    v46 = v26;
    v47 = v25;
    sub_1B4A1F5E8(v26, v18, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
    v27 = *(v49 + 28);
    v28 = *(v48 + 48);
    v29 = v42;
    sub_1B4974FBC(v22 + v27, v42, &qword_1EB8A7CB8, &unk_1B4D20170);
    sub_1B4974FBC(v18 + v27, v29 + v28, &qword_1EB8A7CB8, &unk_1B4D20170);
    v30 = v45;
    v31 = *v44;
    if ((*v44)(v29, 1, v45) != 1)
    {
      break;
    }

    if (v31(v29 + v28, 1, v30) != 1)
    {
      goto LABEL_21;
    }

    sub_1B4975024(v29, &qword_1EB8A7CB8, &unk_1B4D20170);
    v22 = v43;
LABEL_13:
    if (*v22 != *v18 || v22[1] != v18[1])
    {
      goto LABEL_23;
    }

    v35 = *(v49 + 24);
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v36 = sub_1B4D1816C();
    sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
    sub_1B4A1F650(v22, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
    if (v36)
    {
      v26 = v46 + v41;
      v25 = v47 + v41;
      if (--v23)
      {
        continue;
      }
    }

    return v36 & 1;
  }

  sub_1B4974FBC(v29, v12, &qword_1EB8A7CB8, &unk_1B4D20170);
  if (v31(v29 + v28, 1, v30) != 1)
  {
    v32 = v40;
    sub_1B4A1F750(v29 + v28, v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
    if (*v12 != *v32 || v12[4] != *(v32 + 4) || *(v12 + 2) != *(v32 + 8))
    {
      sub_1B4A1F650(v32, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      sub_1B4A1F650(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      v37 = &qword_1EB8A7CB8;
      v38 = &unk_1B4D20170;
      goto LABEL_22;
    }

    v33 = *(v45 + 28);
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v34 = sub_1B4D1816C();
    sub_1B4A1F650(v32, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
    sub_1B4A1F650(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
    sub_1B4975024(v29, &qword_1EB8A7CB8, &unk_1B4D20170);
    v22 = v43;
    if ((v34 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  sub_1B4A1F650(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
LABEL_21:
  v37 = &qword_1EB8A7CC0;
  v38 = &qword_1B4D3F930;
LABEL_22:
  sub_1B4975024(v29, v37, v38);
  v22 = v43;
LABEL_23:
  sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
  sub_1B4A1F650(v22, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
LABEL_24:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_1B4A14918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      sub_1B4A1F5E8(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v7[v17];
      if (v18 != v19)
      {
        v20 = *&v11[v17];

        v21 = sub_1B4C30F48(v18, v19);

        if ((v21 & 1) == 0)
        {
          break;
        }
      }

      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      if ((sub_1B4D1816C() & 1) == 0)
      {
        break;
      }

      sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
    sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  }

  return 0;
}

uint64_t sub_1B4A14B88(uint64_t a1, uint64_t a2)
{
  v90[3] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = &v76 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DA0, &unk_1B4D20280);
  v12 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v76 - v13;
  v88 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  v14 = *(*(v88 - 1) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v16 = (&v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v76 - v19);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    goto LABEL_79;
  }

  if (!v21 || a1 == a2)
  {
    v73 = 1;
    goto LABEL_80;
  }

  v77 = v8;
  v78 = 0;
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v80 = (v5 + 48);
  v81 = v4;
  v79 = *(v18 + 72);
  v25 = &qword_1EB8A7D98;
  while (1)
  {
    sub_1B4A1F5E8(v23, v20, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
    if (!v21)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
    }

    sub_1B4A1F5E8(v24, v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
    if (*v20 != *v16 || v20[1] != v16[1] || (v20[2] != v16[2] || v20[3] != v16[3]) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_78;
    }

    v26 = v20[4];
    v27 = v20[5];
    v28 = v16[4];
    v29 = v16[5];
    v30 = v27 >> 62;
    v31 = v29 >> 62;
    if (v27 >> 62 == 3)
    {
      v32 = 0;
      if (!v26 && v27 == 0xC000000000000000 && v29 >> 62 == 3)
      {
        v32 = 0;
        if (!v28 && v29 == 0xC000000000000000)
        {
          goto LABEL_61;
        }
      }

LABEL_27:
      if (v31 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v38 = *(v26 + 16);
        v37 = *(v26 + 24);
        v35 = __OFSUB__(v37, v38);
        v32 = v37 - v38;
        if (v35)
        {
          goto LABEL_85;
        }

        goto LABEL_27;
      }

      v32 = 0;
      if (v31 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v30)
    {
      LODWORD(v32) = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_84;
      }

      v32 = v32;
      if (v31 <= 1)
      {
LABEL_28:
        if (v31)
        {
          LODWORD(v36) = HIDWORD(v28) - v28;
          if (__OFSUB__(HIDWORD(v28), v28))
          {
            goto LABEL_82;
          }

          v36 = v36;
        }

        else
        {
          v36 = BYTE6(v29);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v32 = BYTE6(v27);
      if (v31 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_21:
    if (v31 != 2)
    {
      if (v32)
      {
        goto LABEL_78;
      }

      goto LABEL_61;
    }

    v34 = *(v28 + 16);
    v33 = *(v28 + 24);
    v35 = __OFSUB__(v33, v34);
    v36 = v33 - v34;
    if (v35)
    {
      goto LABEL_83;
    }

LABEL_34:
    if (v32 != v36)
    {
      goto LABEL_78;
    }

    if (v32 < 1)
    {
      goto LABEL_61;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        memset(v90, 0, 14);
LABEL_53:
        v51 = v78;
        sub_1B4A1CB14(v90, v28, v29, &v89);
        v78 = v51;
        if (!v89)
        {
          goto LABEL_78;
        }

        goto LABEL_61;
      }

      v40 = *(v26 + 16);
      v39 = *(v26 + 24);
      v84 = v40;
      v85 = v28;
      v83 = v39;
      v41 = sub_1B4D1750C();
      if (v41)
      {
        v42 = v41;
        v43 = sub_1B4D1752C();
        v44 = v84;
        if (__OFSUB__(v84, v43))
        {
          goto LABEL_88;
        }

        v76 = v84 - v43 + v42;
      }

      else
      {
        v76 = 0;
        v44 = v84;
      }

      if (__OFSUB__(v83, v44))
      {
        goto LABEL_87;
      }

      sub_1B4D1751C();
      v52 = v78;
      sub_1B4A1CB14(v76, v85, v29, v90);
      v78 = v52;
      if ((v90[0] & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (!v30)
      {
        v90[0] = v20[4];
        LOWORD(v90[1]) = v27;
        BYTE2(v90[1]) = BYTE2(v27);
        BYTE3(v90[1]) = BYTE3(v27);
        BYTE4(v90[1]) = BYTE4(v27);
        BYTE5(v90[1]) = BYTE5(v27);
        goto LABEL_53;
      }

      v45 = v26;
      v46 = v26 >> 32;
      v84 = v46 - v45;
      v85 = v28;
      if (v46 < v45)
      {
        goto LABEL_86;
      }

      v47 = sub_1B4D1750C();
      if (v47)
      {
        v48 = v47;
        v49 = sub_1B4D1752C();
        if (__OFSUB__(v45, v49))
        {
          goto LABEL_89;
        }

        v50 = v45 - v49 + v48;
      }

      else
      {
        v50 = 0;
      }

      sub_1B4D1751C();
      v53 = v78;
      sub_1B4A1CB14(v50, v85, v29, v90);
      v78 = v53;
      v25 = &qword_1EB8A7D98;
      if ((v90[0] & 1) == 0)
      {
        goto LABEL_78;
      }
    }

LABEL_61:
    v84 = v24;
    v85 = v21;
    v83 = v23;
    v54 = v88[8];
    v55 = *(v87 + 48);
    v56 = v25;
    v57 = v86;
    sub_1B4974FBC(v20 + v54, v86, v56, &qword_1B4D20278);
    sub_1B4974FBC(v16 + v54, v57 + v55, v56, &qword_1B4D20278);
    v58 = v81;
    v59 = *v80;
    if ((*v80)(v57, 1, v81) == 1)
    {
      if (v59(v57 + v55, 1, v58) != 1)
      {
        goto LABEL_77;
      }

      v60 = v57;
      v25 = v56;
      sub_1B4975024(v60, v56, &qword_1B4D20278);
      v62 = v83;
      v61 = v84;
      v63 = v85;
      goto LABEL_66;
    }

    v64 = v82;
    sub_1B4974FBC(v57, v82, v56, &qword_1B4D20278);
    if (v59(v57 + v55, 1, v58) == 1)
    {
      break;
    }

    v65 = v77;
    sub_1B4A1F750(v57 + v55, v77, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    v66 = _s19FitnessIntelligence06Apple_a1_B23_DatabasePropertyRecordV19OneOf_DimensionTypeO2eeoiySbAE_AEtFZ_0(v64, v65);
    sub_1B4A1F650(v65, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    sub_1B4A1F650(v64, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    sub_1B4975024(v57, v56, &qword_1B4D20278);
    v62 = v83;
    v61 = v84;
    v63 = v85;
    v25 = v56;
    if ((v66 & 1) == 0)
    {
      goto LABEL_78;
    }

LABEL_66:
    v67 = v88[10];
    v68 = (v20 + v67);
    v69 = *(v20 + v67 + 8);
    v70 = (v16 + v67);
    v71 = *(v16 + v67 + 8);
    if (v69)
    {
      if (!v71)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (*v68 != *v70)
      {
        LOBYTE(v71) = 1;
      }

      if (v71)
      {
        goto LABEL_78;
      }
    }

    v72 = v88[9];
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v73 = sub_1B4D1816C();
    sub_1B4A1F650(v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
    sub_1B4A1F650(v20, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
    if (v73)
    {
      v21 = v63 - 1;
      v24 = v61 + v79;
      v23 = v62 + v79;
      if (v63 != 1)
      {
        continue;
      }
    }

    goto LABEL_80;
  }

  sub_1B4A1F650(v64, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
LABEL_77:
  sub_1B4975024(v57, &qword_1EB8A7DA0, &unk_1B4D20280);
LABEL_78:
  sub_1B4A1F650(v16, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
  sub_1B4A1F650(v20, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord);
LABEL_79:
  v73 = 0;
LABEL_80:
  v74 = *MEMORY[0x1E69E9840];
  return v73 & 1;
}

uint64_t sub_1B4A15444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DA8, &unk_1B4D20290);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0);
  v15 = *(*(v46 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v46);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v18;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = v4;
  v27 = &qword_1EB8A6688;
  v40 = &v39 - v20;
  while (1)
  {
    result = sub_1B4A1F5E8(v24, v21, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    sub_1B4A1F5E8(v25, v18, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    v29 = *(v47 + 48);
    sub_1B4974FBC(v21, v14, v27, &qword_1B4D1A660);
    sub_1B4974FBC(v18, &v14[v29], v27, &qword_1B4D1A660);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      sub_1B4975024(v14, v31, &qword_1B4D1A660);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      sub_1B4974FBC(v14, v42, v31, &qword_1B4D1A660);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_1B4A1F650(v34, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
        v21 = v40;
        v18 = v41;
LABEL_16:
        sub_1B4975024(v14, &qword_1EB8A7DA8, &unk_1B4D20290);
LABEL_17:
        sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
        sub_1B4A1F650(v21, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
        goto LABEL_18;
      }

      v35 = v43;
      sub_1B4A1F750(&v14[v29], v43, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      v36 = static Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult.== infix(_:_:)(v34, v35);
      sub_1B4A1F650(v35, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      sub_1B4A1F650(v34, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      sub_1B4975024(v14, v31, &qword_1B4D1A660);
      v26 = v33;
      v21 = v40;
      v18 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v38 = sub_1B4D1816C();
    sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    sub_1B4A1F650(v21, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A15970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_1B4A1F5E8(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
        sub_1B4A1F5E8(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
        v17 = *(v4 + 20);
        v18 = v11[v17];
        v19 = v7[v17];
        if (v18 == 2)
        {
          if (v19 != 2)
          {
            goto LABEL_14;
          }
        }

        else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
        {
LABEL_14:
          sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
          sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
          goto LABEL_15;
        }

        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v20 = sub_1B4D1816C();
        sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
        sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
        if (v20)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v20 = 1;
  }

  else
  {
LABEL_15:
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1B4A15BE0(uint64_t a1, uint64_t a2)
{
  v66 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v4 = *(v66 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB0, &qword_1B4D20168);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - v14;
  v67 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  v16 = *(*(v67 - 1) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v56 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_55:
    v52 = 0;
    return v52 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v52 = 1;
    return v52 & 1;
  }

  v57 = v7;
  v58 = v11;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v61 = v12;
  v62 = a2 + v24;
  v59 = &v56 - v21;
  v60 = (v4 + 48);
  v63 = *(v20 + 72);
  v64 = a1 + v24;
  v25 = v15;
  v26 = 0;
  v65 = v23;
  while (1)
  {
    v27 = v63 * v26;
    result = sub_1B4A1F5E8(v64 + v63 * v26, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
    if (v26 == v65)
    {
      break;
    }

    sub_1B4A1F5E8(v62 + v27, v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
    v29 = *v22 == *v18 && *(v22 + 1) == *(v18 + 1);
    if (!v29 && (sub_1B4D18DCC() & 1) == 0 || *(v22 + 2) != *(v18 + 2) || *(v22 + 3) != *(v18 + 3) || *(v22 + 4) != *(v18 + 4) || (*(v22 + 5) != *(v18 + 5) || *(v22 + 6) != *(v18 + 6)) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_54;
    }

    v30 = v67[10];
    v31 = &v22[v30];
    v32 = *&v22[v30 + 8];
    v33 = &v18[v30];
    v34 = *(v33 + 1);
    if (v32)
    {
      if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_1B4D18DCC() & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (v34)
    {
      goto LABEL_54;
    }

    v35 = v67[11];
    v36 = *(v61 + 48);
    sub_1B4974FBC(&v22[v35], v25, &qword_1EB8A6A28, &qword_1B4D20160);
    sub_1B4974FBC(&v18[v35], v25 + v36, &qword_1EB8A6A28, &qword_1B4D20160);
    v37 = *v60;
    v38 = v66;
    if ((*v60)(v25, 1, v66) == 1)
    {
      if (v37(v25 + v36, 1, v38) != 1)
      {
        goto LABEL_52;
      }

      sub_1B4975024(v25, &qword_1EB8A6A28, &qword_1B4D20160);
    }

    else
    {
      v39 = v18;
      v40 = v38;
      v41 = v58;
      sub_1B4974FBC(v25, v58, &qword_1EB8A6A28, &qword_1B4D20160);
      if (v37(v25 + v36, 1, v40) == 1)
      {
        sub_1B4A1F650(v41, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
        v18 = v39;
        v22 = v59;
LABEL_52:
        v53 = &qword_1EB8A7CB0;
        v54 = &qword_1B4D20168;
        v55 = v25;
        goto LABEL_53;
      }

      v42 = v57;
      sub_1B4A1F750(v25 + v36, v57, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
      v18 = v39;
      v22 = v59;
      if ((*v41 != *v42 || v41[1] != v42[1]) && (sub_1B4D18DCC() & 1) == 0)
      {
        goto LABEL_50;
      }

      v43 = v41[2];
      v44 = v42[2];
      v45 = *(v43 + 16);
      if (v45 != *(v44 + 16))
      {
        goto LABEL_50;
      }

      if (v45 && v43 != v44)
      {
        v46 = (v43 + 40);
        v47 = (v44 + 40);
        while (1)
        {
          v48 = *(v46 - 1) == *(v47 - 1) && *v46 == *v47;
          if (!v48 && (sub_1B4D18DCC() & 1) == 0)
          {
            break;
          }

          v46 += 2;
          v47 += 2;
          if (!--v45)
          {
            goto LABEL_42;
          }
        }

LABEL_50:
        sub_1B4A1F650(v42, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
        sub_1B4A1F650(v41, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
        v53 = &qword_1EB8A6A28;
        v54 = &qword_1B4D20160;
        v55 = v25;
LABEL_53:
        sub_1B4975024(v55, v53, v54);
LABEL_54:
        sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
        sub_1B4A1F650(v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
        goto LABEL_55;
      }

LABEL_42:
      if ((v41[3] != v42[3] || v41[4] != v42[4]) && (sub_1B4D18DCC() & 1) == 0)
      {
        goto LABEL_50;
      }

      v49 = *(v66 + 28);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v50 = sub_1B4D1816C();
      sub_1B4A1F650(v42, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
      sub_1B4A1F650(v41, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
      sub_1B4975024(v25, &qword_1EB8A6A28, &qword_1B4D20160);
      if ((v50 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    v51 = v67[9];
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v52 = sub_1B4D1816C();
    sub_1B4A1F650(v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
    sub_1B4A1F650(v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
    if ((v52 & 1) != 0 && ++v26 != v65)
    {
      continue;
    }

    return v52 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A1633C(uint64_t a1, uint64_t a2)
{
  v68[3] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v63 = *(v9 + 72);
      v64 = 0;
      v62 = v4;
      while (1)
      {
        sub_1B4A1F5E8(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
        v65 = v15;
        v66 = v14;
        sub_1B4A1F5E8(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
        v16 = *v11 == *v7 && *(v11 + 1) == *(v7 + 1);
        if (!v16 && (sub_1B4D18DCC() & 1) == 0 || *(v11 + 4) != *(v7 + 4))
        {
LABEL_110:
          sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
          sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
          goto LABEL_111;
        }

        v17 = *(v11 + 3);
        v18 = *(v11 + 4);
        v20 = *(v7 + 3);
        v19 = *(v7 + 4);
        v21 = v18 >> 62;
        v22 = v19 >> 62;
        if (v18 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v29 = *(v17 + 16);
            v28 = *(v17 + 24);
            v26 = __OFSUB__(v28, v29);
            v23 = v28 - v29;
            if (v26)
            {
              goto LABEL_117;
            }

            goto LABEL_27;
          }

          v23 = 0;
          if (v22 <= 1)
          {
            goto LABEL_28;
          }
        }

        else if (v21)
        {
          LODWORD(v23) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_118;
          }

          v23 = v23;
          if (v22 <= 1)
          {
LABEL_28:
            if (v22)
            {
              LODWORD(v27) = HIDWORD(v20) - v20;
              if (__OFSUB__(HIDWORD(v20), v20))
              {
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
              }

              v27 = v27;
            }

            else
            {
              v27 = BYTE6(v19);
            }

            goto LABEL_34;
          }
        }

        else
        {
          v23 = BYTE6(v18);
          if (v22 <= 1)
          {
            goto LABEL_28;
          }
        }

LABEL_21:
        if (v22 != 2)
        {
          if (v23)
          {
            goto LABEL_110;
          }

          goto LABEL_58;
        }

        v25 = *(v20 + 16);
        v24 = *(v20 + 24);
        v26 = __OFSUB__(v24, v25);
        v27 = v24 - v25;
        if (v26)
        {
          goto LABEL_114;
        }

LABEL_34:
        if (v23 != v27)
        {
          goto LABEL_110;
        }

        if (v23 < 1)
        {
          goto LABEL_58;
        }

        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v31 = *(v17 + 16);
            v30 = *(v17 + 24);
            v32 = sub_1B4D1750C();
            if (v32)
            {
              v33 = sub_1B4D1752C();
              if (__OFSUB__(v31, v33))
              {
                goto LABEL_125;
              }

              v32 += v31 - v33;
            }

            if (__OFSUB__(v30, v31))
            {
              goto LABEL_122;
            }

            goto LABEL_54;
          }

          memset(v68, 0, 14);
        }

        else
        {
          if (v21)
          {
            v34 = v17;
            if (v17 >> 32 < v17)
            {
              goto LABEL_121;
            }

            v32 = sub_1B4D1750C();
            if (v32)
            {
              v35 = sub_1B4D1752C();
              if (__OFSUB__(v34, v35))
              {
                goto LABEL_126;
              }

              v32 += v34 - v35;
            }

LABEL_54:
            sub_1B4D1751C();
            v36 = v64;
            sub_1B4A1CB14(v32, v20, v19, v68);
            v64 = v36;
            v4 = v62;
            if ((v68[0] & 1) == 0)
            {
              goto LABEL_110;
            }

            goto LABEL_58;
          }

          v68[0] = *(v11 + 3);
          LOWORD(v68[1]) = v18;
          BYTE2(v68[1]) = BYTE2(v18);
          BYTE3(v68[1]) = BYTE3(v18);
          BYTE4(v68[1]) = BYTE4(v18);
          BYTE5(v68[1]) = BYTE5(v18);
        }

        v37 = v64;
        sub_1B4A1CB14(v68, v20, v19, &v67);
        v64 = v37;
        if (!v67)
        {
          goto LABEL_110;
        }

LABEL_58:
        if (*(v11 + 10) != *(v7 + 10))
        {
          goto LABEL_110;
        }

        v38 = *(v11 + 6);
        v39 = *(v11 + 7);
        v41 = *(v7 + 6);
        v40 = *(v7 + 7);
        v42 = v39 >> 62;
        v43 = v40 >> 62;
        if (v39 >> 62 == 3)
        {
          v44 = 0;
          if (!v38 && v39 == 0xC000000000000000 && v40 >> 62 == 3)
          {
            v44 = 0;
            if (!v41 && v40 == 0xC000000000000000)
            {
              goto LABEL_106;
            }
          }

LABEL_75:
          if (v43 > 1)
          {
            goto LABEL_69;
          }

          goto LABEL_76;
        }

        if (v42 > 1)
        {
          if (v42 == 2)
          {
            v49 = *(v38 + 16);
            v48 = *(v38 + 24);
            v26 = __OFSUB__(v48, v49);
            v44 = v48 - v49;
            if (v26)
            {
              goto LABEL_119;
            }

            goto LABEL_75;
          }

          v44 = 0;
          if (v43 > 1)
          {
            goto LABEL_69;
          }
        }

        else if (v42)
        {
          LODWORD(v44) = HIDWORD(v38) - v38;
          if (__OFSUB__(HIDWORD(v38), v38))
          {
            goto LABEL_120;
          }

          v44 = v44;
          if (v43 > 1)
          {
LABEL_69:
            if (v43 != 2)
            {
              if (v44)
              {
                goto LABEL_110;
              }

              goto LABEL_106;
            }

            v46 = *(v41 + 16);
            v45 = *(v41 + 24);
            v26 = __OFSUB__(v45, v46);
            v47 = v45 - v46;
            if (v26)
            {
              goto LABEL_115;
            }

            goto LABEL_82;
          }
        }

        else
        {
          v44 = BYTE6(v39);
          if (v43 > 1)
          {
            goto LABEL_69;
          }
        }

LABEL_76:
        if (v43)
        {
          LODWORD(v47) = HIDWORD(v41) - v41;
          if (__OFSUB__(HIDWORD(v41), v41))
          {
            goto LABEL_116;
          }

          v47 = v47;
        }

        else
        {
          v47 = BYTE6(v40);
        }

LABEL_82:
        if (v44 != v47)
        {
          goto LABEL_110;
        }

        if (v44 >= 1)
        {
          if (v42 > 1)
          {
            if (v42 != 2)
            {
              memset(v68, 0, 14);
LABEL_105:
              v57 = v64;
              sub_1B4A1CB14(v68, v41, v40, &v67);
              v64 = v57;
              if (!v67)
              {
                goto LABEL_110;
              }

              goto LABEL_106;
            }

            v51 = *(v38 + 16);
            v50 = *(v38 + 24);
            v52 = sub_1B4D1750C();
            if (v52)
            {
              v53 = sub_1B4D1752C();
              if (__OFSUB__(v51, v53))
              {
                goto LABEL_127;
              }

              v52 += v51 - v53;
            }

            if (__OFSUB__(v50, v51))
            {
              goto LABEL_124;
            }
          }

          else
          {
            if (!v42)
            {
              v68[0] = *(v11 + 6);
              LOWORD(v68[1]) = v39;
              BYTE2(v68[1]) = BYTE2(v39);
              BYTE3(v68[1]) = BYTE3(v39);
              BYTE4(v68[1]) = BYTE4(v39);
              BYTE5(v68[1]) = BYTE5(v39);
              goto LABEL_105;
            }

            v54 = v38;
            if (v38 >> 32 < v38)
            {
              goto LABEL_123;
            }

            v52 = sub_1B4D1750C();
            if (v52)
            {
              v55 = sub_1B4D1752C();
              if (__OFSUB__(v54, v55))
              {
                goto LABEL_128;
              }

              v52 += v54 - v55;
            }
          }

          sub_1B4D1751C();
          v56 = v64;
          sub_1B4A1CB14(v52, v41, v40, v68);
          v64 = v56;
          v4 = v62;
          if ((v68[0] & 1) == 0)
          {
            goto LABEL_110;
          }
        }

LABEL_106:
        v58 = *(v4 + 36);
        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v59 = sub_1B4D1816C();
        sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
        sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
        if (v59)
        {
          v15 = v65 + v63;
          v14 = v66 + v63;
          if (--v12)
          {
            continue;
          }
        }

        goto LABEL_112;
      }

      v23 = 0;
      if (!v17 && v18 == 0xC000000000000000 && v19 >> 62 == 3)
      {
        v23 = 0;
        if (!v20 && v19 == 0xC000000000000000)
        {
          goto LABEL_58;
        }
      }

LABEL_27:
      if (v22 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    v59 = 1;
  }

  else
  {
LABEL_111:
    v59 = 0;
  }

LABEL_112:
  v60 = *MEMORY[0x1E69E9840];
  return v59 & 1;
}