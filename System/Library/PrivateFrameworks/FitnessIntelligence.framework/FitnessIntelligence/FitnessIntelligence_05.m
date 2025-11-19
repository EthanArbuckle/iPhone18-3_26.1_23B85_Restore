uint64_t sub_1B49BD054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v5 = type metadata accessor for StatisticsPropertyValue();
  v6 = sub_1B4D1880C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  (*(v7 + 16))(v10, a1, v6, v14);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    (*(v11 + 16))(a3, v20, v5);
  }

  else
  {
    (*(v11 + 32))(v16, v10, v5);
    v17 = v21;
    static StatisticsPropertyValue.add(_:_:)(v16, v20, a3);
    if (v17)
    {
      return (*(v11 + 8))(v16, v5);
    }

    (*(v11 + 8))(v16, v5);
  }

  return (*(v11 + 56))(a3, 0, 1, v5);
}

unint64_t sub_1B49BD2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1B4D1807C();

  return sub_1B49BD354(a1, v9, a2, a3);
}

unint64_t sub_1B49BD354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1B4D1816C();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1B49BD4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00]();
  v12 = v23 - v11;
  if (sub_1B4D1847C())
  {
    sub_1B4D18AFC();
    v13 = sub_1B4D18AEC();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1B4D1847C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1B4D1845C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1B4D1898C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1B49BD2F8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_1B49BD818()
{
  result = qword_1EB8A71A0;
  if (!qword_1EB8A71A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7198, &qword_1B4D1D1E8);
    sub_1B49BD8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A71A0);
  }

  return result;
}

unint64_t sub_1B49BD8A4()
{
  result = qword_1EB8A71A8;
  if (!qword_1EB8A71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A71A8);
  }

  return result;
}

uint64_t sub_1B49BD960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  type metadata accessor for StatisticsPropertyValue();
  v6 = sub_1B4D1880C();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

uint64_t sub_1B49BDA18(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B49BDA80(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1B4D1746C();
  sub_1B498E1E8();
  result = sub_1B4D1801C();
  if (v3 <= 0x3F)
  {
    type metadata accessor for StatisticsPropertyValue();
    result = sub_1B4D1880C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B49BDB78()
{
  result = qword_1EB8A71B8;
  if (!qword_1EB8A71B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A71B0, &qword_1B4D1D2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A71B8);
  }

  return result;
}

unint64_t sub_1B49BDBDC()
{
  result = qword_1EDC3CE28;
  if (!qword_1EDC3CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CE28);
  }

  return result;
}

uint64_t sub_1B49BDC68(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  v4 = [objc_opt_self() seconds];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  return sub_1B4D1741C();
}

uint64_t sub_1B49BDD40(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  v4 = [objc_opt_self() milesPerHour];
  sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
  return sub_1B4D1741C();
}

uint64_t AverageWorkoutPaceFact.paceDeltaFromBaseline.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AverageWorkoutPaceFact() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AverageWorkoutPaceFact()
{
  result = qword_1EB8A7210;
  if (!qword_1EB8A7210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AverageWorkoutPaceFact.speedDeltaFromBaseline.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AverageWorkoutPaceFact() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AverageWorkoutPaceFact.init(activityType:paceDeltaFromBaseline:speedDeltaFromBaseline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for AverageWorkoutPaceFact();
  v8 = *(v7 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  v10 = *(v7 + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

uint64_t static AverageWorkoutPaceFact.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = v4, objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v7 = v6;
    v8 = v2;
    v9 = v3;
    [v5 coordinate];
    v11 = v10;
    [v7 coordinate];
    if (v11 != v12)
    {

      return 0;
    }

    [v5 coordinate];
    v14 = v13;
    [v7 coordinate];
    v16 = v15;

    if (v14 != v16)
    {
      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      return 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v17 = type metadata accessor for AverageWorkoutPaceFact();
  v18 = *(v17 + 20);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  if (sub_1B4D1816C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
    v19 = *(v17 + 24);
    sub_1B49B0578(&qword_1EB8A71D0, &qword_1EB8A71C0, &unk_1B4D40CF0);
    return sub_1B4D1816C() & 1;
  }

  return 0;
}

unint64_t sub_1B49BE254()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_1B49BE2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B49BF05C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B49BE2D4(uint64_t a1)
{
  v2 = sub_1B49BE600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49BE310(uint64_t a1)
{
  v2 = sub_1B49BE600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AverageWorkoutPaceFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71D8, &unk_1B4D1D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49BE600();
  sub_1B4D18EFC();
  v19 = *v3;
  v18 = 0;
  v11 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B4D18D0C();

  if (!v2)
  {
    v15 = type metadata accessor for AverageWorkoutPaceFact();
    v12 = *(v15 + 20);
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B49B0578(&qword_1EB8A71E8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B4D18D0C();
    v13 = *(v15 + 24);
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
    sub_1B49B0578(&qword_1EB8A71F0, &qword_1EB8A71C0, &unk_1B4D40CF0);
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B49BE600()
{
  result = qword_1EB8A71E0;
  if (!qword_1EB8A71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A71E0);
  }

  return result;
}

void AverageWorkoutPaceFact.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v29 = *(v32 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71F8, &qword_1B4D1D2E0);
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = type metadata accessor for AverageWorkoutPaceFact();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1B49BE600();
  v35 = v14;
  v21 = v36;
  sub_1B4D18EEC();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    v36 = v15;
    v27 = v5;
    v28 = v18;
    v22 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v40 = 0;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    v23 = v33;
    sub_1B4D18C0C();
    v24 = v28;
    *v28 = v41;
    v39 = 1;
    sub_1B49B0578(&qword_1EB8A7200, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B4D18C0C();
    (*(v31 + 32))(&v24[*(v36 + 20)], v9, v6);
    v38 = 2;
    sub_1B49B0578(&qword_1EB8A7208, &qword_1EB8A71C0, &unk_1B4D40CF0);
    v25 = v27;
    sub_1B4D18C0C();
    (*(v34 + 8))(v35, v23);
    v26 = v28;
    (*(v29 + 32))(&v28[*(v36 + 24)], v25, v22);
    sub_1B49BEB50(v26, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    sub_1B49BEBB4(v26);
  }
}

uint64_t sub_1B49BEB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AverageWorkoutPaceFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49BEBB4(uint64_t a1)
{
  v2 = type metadata accessor for AverageWorkoutPaceFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B49BEC40(void **a1, void **a2, uint64_t a3)
{
  if (!sub_1B49B0864(*a1, *a2))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v4 = *(a3 + 20);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  if ((sub_1B4D1816C() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v5 = *(a3 + 24);
  sub_1B49B0578(&qword_1EB8A71D0, &qword_1EB8A71C0, &unk_1B4D40CF0);
  return sub_1B4D1816C() & 1;
}

void sub_1B49BED90()
{
  sub_1B49BEEDC(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
  if (v0 <= 0x3F)
  {
    sub_1B49BEE84();
    if (v1 <= 0x3F)
    {
      sub_1B49BEEDC(319, &qword_1EB8A7228, &qword_1EB8A7230, 0x1E696B078, MEMORY[0x1E6968070]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B49BEE84()
{
  if (!qword_1EB8A7220)
  {
    type metadata accessor for UnitPace();
    v0 = sub_1B4D1746C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8A7220);
    }
  }
}

void sub_1B49BEEDC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B498AFB8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B49BEF58()
{
  result = qword_1EB8A7238;
  if (!qword_1EB8A7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7238);
  }

  return result;
}

unint64_t sub_1B49BEFB0()
{
  result = qword_1EB8A7240;
  if (!qword_1EB8A7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7240);
  }

  return result;
}

unint64_t sub_1B49BF008()
{
  result = qword_1EB8A7248;
  if (!qword_1EB8A7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7248);
  }

  return result;
}

uint64_t sub_1B49BF05C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4D4F220 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4D4F240 == a2)
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

uint64_t sub_1B49BF180(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B49BF1D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1B49BF228(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B49BF270()
{
  result = qword_1EB8A7250;
  if (!qword_1EB8A7250)
  {
    type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7250);
  }

  return result;
}

unint64_t sub_1B49BF2CC()
{
  result = qword_1EB8A7258;
  if (!qword_1EB8A7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7258);
  }

  return result;
}

uint64_t sub_1B49BF324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B49BF3C4, 0, 0);
}

uint64_t sub_1B49BF3C4()
{
  v1 = v0[6];
  sub_1B49BFE58(v0[4], v1, type metadata accessor for WorkoutState);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B49BF4D4;
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[2];
  v6 = v0[3];

  return sub_1B49DB7C8(v7, v6, v4, v5);
}

uint64_t sub_1B49BF4D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  sub_1B4975024(*(v4 + 48), &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49BF654, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_1B49BF654()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

unint64_t sub_1B49BF6B8(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor();
  v77 = *(v2 - 8);
  v3 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v65 - v10;
  v11 = type metadata accessor for WorkoutPropertiesQuery();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4D1777C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WorkoutState();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49BFE58(a1, v23, type metadata accessor for WorkoutState);
  v24 = sub_1B4CAC70C(v23);
  v25 = *(v24 + 2);
  v26 = 32;
  do
  {
    if (!v25)
    {

      sub_1B49BFEC0(v23, type metadata accessor for WorkoutState);
      return sub_1B4C952F4(MEMORY[0x1E69E7CC0]);
    }

    v27 = *&v24[v26];
    v26 += 8;
    --v25;
  }

  while (v27 != 3);
  v72 = v5;

  v28 = *(v20 + 36);
  v74 = v16;
  v29 = *(v16 + 16);
  v66 = v29;
  v29(v19, &v23[v28], v15);
  v29(v14, v19, v15);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B4D1A800;
  v31 = *&v23[*(v20 + 24)];
  sub_1B49BFEC0(v23, type metadata accessor for WorkoutState);
  v32 = [v31 effectiveTypeIdentifier];

  *(v30 + 32) = v32;
  v33 = *(v11 + 20);
  v34 = MEMORY[0x1E69E7CC0];
  v35 = v11;
  v36 = v15;
  v37 = v19;
  v38 = v14;
  v39 = &v14[v33];
  *v39 = MEMORY[0x1E69E7CC0];
  *(v39 + 1) = v34;
  *(v39 + 2) = v34;
  *(v39 + 3) = v30;
  *(v39 + 4) = v34;
  *(v39 + 5) = v34;
  *(v38 + *(v35 + 24)) = &unk_1F2CB8998;
  v70 = v35;
  *(v38 + *(v35 + 28)) = &unk_1F2CB89C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7260, &qword_1B4D1D588);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7268, &qword_1B4D1D590);
  v41 = *(*(v40 - 8) + 72);
  v42 = (*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1B4D1AA70;
  v68 = v43;
  v69 = v40;
  v44 = (v43 + v42);
  v45 = *(v40 + 48);
  *v44 = 0;
  sub_1B49BFE58(v38, &v44[v45], type metadata accessor for WorkoutPropertiesQuery);
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  swift_storeEnumTagMultiPayload();
  v46 = &v44[v41];
  *v46 = 1;
  v47 = v78;
  v71 = v37;
  v75 = v36;
  v66(v78, v37, v36);
  swift_storeEnumTagMultiPayload();
  v48 = v77;
  (*(v77 + 56))(v47, 0, 1, v2);
  v49 = v47;
  v50 = v76;
  sub_1B49BFDE8(v49, v76);
  v51 = *(v48 + 48);
  v52 = v51(v50, 1, v2);
  v73 = v38;
  if (v52 == 1)
  {
    v53 = v72;
    sub_1B49BFE58(v38, v72, type metadata accessor for DateRangeDescriptor);
    if (v51(v50, 1, v2) != 1)
    {
      sub_1B4975024(v50, &qword_1EB8A67A8, &qword_1B4D1E060);
    }
  }

  else
  {
    v53 = v72;
    sub_1B4993450(v50, v72);
  }

  v55 = &v46[*(v69 + 48)];
  v57 = *v39;
  v56 = *(v39 + 1);
  v58 = *(v39 + 2);
  v59 = *(v39 + 3);
  v60 = *(v39 + 4);
  v61 = *(v39 + 5);
  sub_1B49BFE58(v53, v55, type metadata accessor for DateRangeDescriptor);

  sub_1B49BFEC0(v53, type metadata accessor for DateRangeDescriptor);
  v62 = v70;
  v63 = (v55 + *(v70 + 20));
  *v63 = v57;
  v63[1] = v56;
  v63[2] = v58;
  v63[3] = v59;
  v63[4] = v60;
  v63[5] = v61;
  *(v55 + *(v62 + 24)) = &unk_1F2CB8998;
  *(v55 + *(v62 + 28)) = &unk_1F2CB89C0;
  sub_1B4975024(v78, &qword_1EB8A67A8, &qword_1B4D1E060);
  swift_storeEnumTagMultiPayload();
  v64 = sub_1B4C952F4(v68);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B49BFEC0(v73, type metadata accessor for WorkoutPropertiesQuery);
  (*(v74 + 8))(v71, v75);
  return v64;
}

uint64_t sub_1B49BFDE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49BFE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49BFEC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CurrentDayFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B49BFF94()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49BFFF0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49C0038@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t static CurrentDayFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49C016C;

  return sub_1B49C0448(a1, a3);
}

uint64_t sub_1B49C016C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1B49C0284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49C0344;

  return sub_1B49C0448(a1, a3);
}

uint64_t sub_1B49C0344(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1B49C0448(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_1B4D1777C();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutState();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B49C05A8, 0, 0);
}

uint64_t sub_1B49C05A8()
{
  v31 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1B49B4670(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4975024(v0[7], &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_5:
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v4 = v0[10];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  sub_1B49B46E0(v0[7], v4);
  v10 = *(v4 + *(v5 + 48));
  v11 = v4 + *(v5 + 36);
  sub_1B4D1770C();
  v12 = *(v9 + 16);
  v12(v7, v6, v8);
  DayOfWeek.init(from:)(v7, &v30);
  v13 = v30;
  v14 = v0[10];
  v15 = v0[6];
  v16 = v0[3];
  v17 = v0[4];
  if (v30 == 7)
  {
    (*(v17 + 8))(v0[6], v0[3]);
    sub_1B49C1314(v14, type metadata accessor for WorkoutState);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72A0, &unk_1B4D46B00);
  v29 = v14;
  v19 = (type metadata accessor for CurrentDayFact() - 8);
  v20 = *(*v19 + 72);
  v21 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B4D1A800;
  v22 = v18 + v21;
  v12(v22, v15, v16);
  *(v22 + v19[7]) = v13;
  (*(v17 + 8))(v15, v16);
  sub_1B49C1314(v29, type metadata accessor for WorkoutState);
LABEL_7:
  v23 = v0[10];
  v24 = v0[6];
  v25 = v0[7];
  v26 = v0[5];

  v27 = v0[1];

  return v27(v18);
}

uint64_t _s19FitnessIntelligence14CurrentDayFactV10makePrompt15promptFormatterSSAA0gI0C_tF_0()
{
  v1 = type metadata accessor for CurrentDayFact();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  v12 = sub_1B4D1777C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v61 - v24;
  v72 = 0;
  v73 = 0xE000000000000000;
  (*(v13 + 16))(&v61 - v24, v0, v12, v23);
  DayOfWeek.init(from:)(v25, &v70);
  v26 = v70;
  if (v70 == 7)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v32 = sub_1B4D17F6C();
    __swift_project_value_buffer(v32, qword_1EDC36F00);
    sub_1B49C1268(v0, v4);
    v33 = sub_1B4D17F5C();
    v34 = sub_1B4D186FC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v70 = v36;
      *v35 = 136315138;
      sub_1B49C12CC(&qword_1EB8A6B58, MEMORY[0x1E6969530]);
      v37 = sub_1B4D18D5C();
      v39 = v38;
      sub_1B49C1314(v4, type metadata accessor for CurrentDayFact);
      v40 = sub_1B49558AC(v37, v39, &v70);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1B4953000, v33, v34, "Failed to create day fact. Today: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1B8C7DDA0](v36, -1, -1);
      MEMORY[0x1B8C7DDA0](v35, -1, -1);
    }

    else
    {

      sub_1B49C1314(v4, type metadata accessor for CurrentDayFact);
    }

    return 0;
  }

  else
  {
    Date.endOfWeek()(v11);
    v62 = v16;
    v27 = v13;
    v65 = *(v13 + 56);
    v63 = v13 + 56;
    v65(v11, 0, 1, v12);
    v28 = v12;
    v29 = *(v27 + 32);
    v64 = v21;
    v30 = v21;
    v31 = v29;
    v29(v30, v11, v12);
    v66 = v0;
    Date.middleOfWeek()(v8);
    v61 = v27;
    v42 = v64;
    v65(v8, 0, 1, v12);
    v31(v67, v8, v12);
    v43 = 0xE600000000000000;
    v44 = 0xE800000000000000;
    v70 = 0x7369207961646F54;
    v71 = 0xE900000000000020;
    v45 = 0x7961647275746173;
    if (v26 != 5)
    {
      v45 = 0x7961646E7573;
      v44 = 0xE600000000000000;
    }

    v46 = 0xE800000000000000;
    v47 = 0x7961647372756874;
    if (v26 != 3)
    {
      v47 = 0x796164697266;
      v46 = 0xE600000000000000;
    }

    if (v26 <= 4)
    {
      v45 = v47;
      v44 = v46;
    }

    v48 = 0xE700000000000000;
    v49 = 0x79616473657574;
    if (v26 != 1)
    {
      v49 = 0x616473656E646577;
      v48 = 0xE900000000000079;
    }

    if (v26)
    {
      v43 = v48;
    }

    else
    {
      v49 = 0x7961646E6F6DLL;
    }

    if (v26 > 2)
    {
      v50 = v44;
    }

    else
    {
      v45 = v49;
      v50 = v43;
    }

    v68 = v45;
    v69 = v50;
    sub_1B4955758();
    v51 = sub_1B4D1885C();
    v53 = v52;

    MEMORY[0x1B8C7C620](v51, v53);

    MEMORY[0x1B8C7C620](46, 0xE100000000000000);
    MEMORY[0x1B8C7C620](v70, v71);

    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v54 = sub_1B4D1796C();
    __swift_project_value_buffer(v54, qword_1EDC3CE48);
    v55 = sub_1B4D178AC();
    v56 = " It is a weekday.";
    if (v55)
    {
      v56 = " It is a weekend.";
    }

    MEMORY[0x1B8C7C620](0xD000000000000011, (v56 - 32) | 0x8000000000000000);
    if (sub_1B4D1785C())
    {
      MEMORY[0x1B8C7C620](0xD000000000000021, 0x80000001B4D4F300);
    }

    if (sub_1B4D1785C())
    {
      MEMORY[0x1B8C7C620](0xD000000000000030, 0x80000001B4D4F2C0);
    }

    v57 = sub_1B4D178CC();
    v58 = sub_1B4D1771C();
    v59 = [v57 hk:v58 startOfFitnessWeekBeforeDate:?];

    sub_1B4D1775C();
    if (sub_1B4D1785C())
    {
      MEMORY[0x1B8C7C620](0xD000000000000031, 0x80000001B4D4F280);
    }

    v60 = *(v61 + 8);
    v60(v62, v28);
    v60(v67, v28);
    v60(v42, v28);
    return v72;
  }
}

unint64_t sub_1B49C1050()
{
  result = qword_1EB8A7270;
  if (!qword_1EB8A7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7270);
  }

  return result;
}

unint64_t sub_1B49C10A4(uint64_t a1)
{
  *(a1 + 8) = sub_1B49C10D4();
  result = sub_1B49C1128();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B49C10D4()
{
  result = qword_1EB8A7278;
  if (!qword_1EB8A7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7278);
  }

  return result;
}

unint64_t sub_1B49C1128()
{
  result = qword_1EB8A7280;
  if (!qword_1EB8A7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7280);
  }

  return result;
}

unint64_t sub_1B49C1180()
{
  result = qword_1EB8A7288;
  if (!qword_1EB8A7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7288);
  }

  return result;
}

uint64_t sub_1B49C11D4(uint64_t a1)
{
  *(a1 + 8) = sub_1B49C12CC(&qword_1EB8A7290, type metadata accessor for CurrentDayFact);
  result = sub_1B49C12CC(&qword_1EB8A7298, type metadata accessor for CurrentDayFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B49C1268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentDayFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49C12CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B49C1314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49C1374(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4 = *(v3 - 8);
  v64 = v3;
  v65 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v59 - v6;
  v67 = type metadata accessor for LocationCoordinate();
  v7 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - v10;
  v12 = type metadata accessor for RingsPropertiesQuery();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v63 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v59 - v16;
  v17 = type metadata accessor for WorkoutPropertiesQuery();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v61 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v59 - v21;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v23 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v59 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v59 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7300, &unk_1B4D1D7A0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v59 - v34;
  v37 = *(v36 + 56);
  v69 = v1;
  sub_1B49C685C(v1, &v59 - v34, type metadata accessor for FitnessContextQueryDescriptor);
  v70 = a1;
  sub_1B49C685C(a1, &v35[v37], type metadata accessor for FitnessContextQueryDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 9:
      v47 = v66;
      v46 = v67;
      v48 = v68;
      sub_1B49C685C(v35, v25, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v39 = type metadata accessor for LocationCoordinate;
        v40 = v25;
        goto LABEL_12;
      }

      v49 = v11;
      sub_1B49C6600(v25, v11, type metadata accessor for LocationCoordinate);
      sub_1B49C6600(&v35[v37], v47, type metadata accessor for LocationCoordinate);
      v50 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*&v11[*(v46 + 20)] longitude:*&v11[*(v46 + 24)]];
      v51 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v47 + *(v46 + 20)) longitude:*(v47 + *(v46 + 24))];
      [v50 distanceFromLocation_];
      v52 = [objc_opt_self() meters];
      sub_1B499221C();
      sub_1B4D1741C();

      v53 = v64;
      sub_1B4D1742C();
      v55 = v54;
      (*(v65 + 8))(v48, v53);
      sub_1B49C690C(v47, type metadata accessor for LocationCoordinate);
      sub_1B49C690C(v49, type metadata accessor for LocationCoordinate);
      DescriptorO2eeoiySbAC_ACtFZ_0 = v55 < 500.0;
LABEL_16:
      sub_1B49C690C(v35, type metadata accessor for FitnessContextQueryDescriptor);
      return DescriptorO2eeoiySbAC_ACtFZ_0 & 1;
    case 1:
      sub_1B49C685C(v35, v28, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v39 = type metadata accessor for RingsPropertiesQuery;
        v40 = v28;
        goto LABEL_12;
      }

      v41 = v62;
      sub_1B49C6600(v28, v62, type metadata accessor for RingsPropertiesQuery);
      v42 = v63;
      sub_1B49C6600(&v35[v37], v63, type metadata accessor for RingsPropertiesQuery);
      DescriptorO2eeoiySbAC_ACtFZ_0 = sub_1B49CB224(v42);
      sub_1B49C690C(v42, type metadata accessor for RingsPropertiesQuery);
      v44 = v41;
      v45 = type metadata accessor for RingsPropertiesQuery;
      goto LABEL_15;
    case 0:
      sub_1B49C685C(v35, v31, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload())
      {
        v39 = type metadata accessor for WorkoutPropertiesQuery;
        v40 = v31;
LABEL_12:
        sub_1B49C690C(v40, v39);
        break;
      }

      v56 = v60;
      sub_1B49C6600(v31, v60, type metadata accessor for WorkoutPropertiesQuery);
      v57 = v61;
      sub_1B49C6600(&v35[v37], v61, type metadata accessor for WorkoutPropertiesQuery);
      DescriptorO2eeoiySbAC_ACtFZ_0 = sub_1B49CAFFC(v57);
      sub_1B49C690C(v57, type metadata accessor for WorkoutPropertiesQuery);
      v44 = v56;
      v45 = type metadata accessor for WorkoutPropertiesQuery;
LABEL_15:
      sub_1B49C690C(v44, v45);
      goto LABEL_16;
  }

  DescriptorO2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v69, v70);
  sub_1B4975024(v35, &qword_1EB8A7300, &unk_1B4D1D7A0);
  return DescriptorO2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t FitnessContextQueryDescriptor.analyticsKey.getter()
{
  v1 = type metadata accessor for RingsPropertiesQuery();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutPropertiesQuery();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v10 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49C685C(v0, v12, type metadata accessor for FitnessContextQueryDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v23 = sub_1B4D1777C();
        (*(*(v23 - 8) + 8))(v12, v23);
        return 0xD000000000000013;
      }

      v17 = sub_1B4D174EC();
      (*(*(v17 - 8) + 8))(v12, v17);
      v18 = 0x736472617761;
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload != 8)
        {
          sub_1B49C690C(v12, type metadata accessor for LocationCoordinate);
          return 0x6E6F697461636F6CLL;
        }

        v15 = 0xD000000000000016;
        goto LABEL_15;
      }

      v20 = sub_1B4D1777C();
      (*(*(v20 - 8) + 8))(v12, v20);
      v18 = 0x736C61746976;
    }

    return v18 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v14 = sub_1B4D1777C();
        (*(*(v14 - 8) + 8))(v12, v14);
        return 0xD000000000000012;
      }

      else
      {
        v21 = sub_1B4D1777C();
        (*(*(v21 - 8) + 8))(v12, v21);
        return 0xD000000000000014;
      }
    }

    v15 = 0xD000000000000016;
LABEL_15:
    v19 = sub_1B4D1777C();
    (*(*(v19 - 8) + 8))(v12, v19);
    return v15;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1B49C6600(v12, v4, type metadata accessor for RingsPropertiesQuery);
    v25 = 0x5F73676E6972;
    v26 = 0xE600000000000000;
    v22 = DateRangeDescriptor.analyticsKey.getter();
    MEMORY[0x1B8C7C620](v22);

    v15 = v25;
    sub_1B49C690C(v4, type metadata accessor for RingsPropertiesQuery);
  }

  else
  {
    sub_1B49C6600(v12, v8, type metadata accessor for WorkoutPropertiesQuery);
    v25 = 0x7374756F6B726F77;
    v26 = 0xE90000000000005FLL;
    v16 = DateRangeDescriptor.analyticsKey.getter();
    MEMORY[0x1B8C7C620](v16);

    v15 = v25;
    sub_1B49C690C(v8, type metadata accessor for WorkoutPropertiesQuery);
  }

  return v15;
}

uint64_t type metadata accessor for FitnessContextQueryDescriptor()
{
  result = qword_1EDC377B0;
  if (!qword_1EDC377B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FitnessContextQueryDescriptor.hash(into:)(uint64_t a1)
{
  v46 = a1;
  v2 = type metadata accessor for LocationCoordinate();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4D174EC();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4D1777C();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RingsPropertiesQuery();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WorkoutPropertiesQuery();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v22 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49C685C(v1, v24, type metadata accessor for FitnessContextQueryDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v27 = v43;
        v26 = v44;
        v28 = v45;
        (*(v44 + 32))(v43, v24, v45);
        v29 = 2;
      }

      else
      {
        v27 = v43;
        v26 = v44;
        v28 = v45;
        if (EnumCaseMultiPayload == 3)
        {
          (*(v44 + 32))(v43, v24, v45);
          v29 = 3;
        }

        else
        {
          (*(v44 + 32))(v43, v24, v45);
          v29 = 4;
        }
      }

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1B49C6600(v24, v16, type metadata accessor for RingsPropertiesQuery);
      v37 = v46;
      MEMORY[0x1B8C7D290](1);
      DateRangeDescriptor.hash(into:)();
      v38 = &v16[v13[5]];
      v39 = v38[1];
      v40 = v38[2];
      sub_1B49C28E8(v37, *v38);
      sub_1B49C27B8(v37, v39);
      sub_1B49C2A9C(v37, v40);
      sub_1B49C4F70(v37, *&v16[v13[6]]);
      sub_1B49C4BA0(v37, *&v16[v13[7]]);
      v33 = type metadata accessor for RingsPropertiesQuery;
      v34 = v16;
    }

    else
    {
      sub_1B49C6600(v24, v20, type metadata accessor for WorkoutPropertiesQuery);
      v30 = v46;
      MEMORY[0x1B8C7D290](0);
      DateRangeDescriptor.hash(into:)();
      v31 = &v20[v17[5]];
      v32 = *(v31 + 1);
      v47 = *v31;
      v48 = v32;
      v49 = *(v31 + 2);
      WorkoutPropertyDimensionsFilters.hash(into:)(v30);
      sub_1B49C4A60(v30, *&v20[v17[6]]);
      sub_1B49C4754(v30, *&v20[v17[7]]);
      v33 = type metadata accessor for WorkoutPropertiesQuery;
      v34 = v20;
    }

    return sub_1B49C690C(v34, v33);
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v35 = v42;
      (*(v42 + 32))(v9, v24, v6);
      MEMORY[0x1B8C7D290](5);
      sub_1B49C68C4(&qword_1EB8A72B0, MEMORY[0x1E6968130]);
      sub_1B4D1808C();
      return (*(v35 + 8))(v9, v6);
    }

    v27 = v43;
    v26 = v44;
    v28 = v45;
    (*(v44 + 32))(v43, v24, v45);
    v29 = 6;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v27 = v43;
    v26 = v44;
    v28 = v45;
    (*(v44 + 32))(v43, v24, v45);
    v29 = 7;
  }

  else
  {
    if (EnumCaseMultiPayload != 8)
    {
      sub_1B49C6600(v24, v5, type metadata accessor for LocationCoordinate);
      MEMORY[0x1B8C7D290](9);
      LocationCoordinate.hash(into:)();
      v33 = type metadata accessor for LocationCoordinate;
      v34 = v5;
      return sub_1B49C690C(v34, v33);
    }

    v27 = v43;
    v26 = v44;
    v28 = v45;
    (*(v44 + 32))(v43, v24, v45);
    v29 = 8;
  }

LABEL_21:
  MEMORY[0x1B8C7D290](v29);
  sub_1B49C68C4(&qword_1EB8A72A8, MEMORY[0x1E6969530]);
  sub_1B4D1808C();
  return (*(v26 + 8))(v27, v28);
}

uint64_t FitnessContextQueryDescriptor.hashValue.getter()
{
  sub_1B4D18E8C();
  FitnessContextQueryDescriptor.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49C2624()
{
  sub_1B4D18E8C();
  FitnessContextQueryDescriptor.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49C2668()
{
  sub_1B4D18E8C();
  FitnessContextQueryDescriptor.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49C26A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C27B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C28E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C2A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      if (v6 != 2)
      {
        sub_1B4D18EAC();
      }

      result = sub_1B4D18EAC();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C2B0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B4D179BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for WorkoutMilestoneEntry();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v17, v14);
  if (v17)
  {
    v19 = *(v11 + 24);
    v30 = *(v11 + 20);
    v20 = v4;
    v21 = (v16 + v19);
    v22 = *(type metadata accessor for LocalizedDate() + 36);
    v23 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v28 = *(v12 + 72);
    v29 = v22;
    v25 = (v20 + 8);
    v26 = (v20 + 32);
    do
    {
      sub_1B49C685C(v23, v16, type metadata accessor for WorkoutMilestoneEntry);
      MEMORY[0x1B8C7D2C0](*v16);
      sub_1B4D177CC();
      sub_1B49C68C4(&qword_1EB8A72D8, MEMORY[0x1E69695A8]);
      sub_1B4D1808C();
      MEMORY[0x1B8C7D290](*v21);
      MEMORY[0x1B8C7D290](v21[1]);
      MEMORY[0x1B8C7D290](v21[2]);
      MEMORY[0x1B8C7D290](v21[3]);
      MEMORY[0x1B8C7D290](v21[4]);
      sub_1B4974FBC(v21 + v29, v10, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      if ((*(v20 + 48))(v10, 1, v3) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v24 = v27;
        (*v26)(v27, v10, v3);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0]);
        sub_1B4D1808C();
        (*v25)(v24, v3);
      }

      result = sub_1B49C690C(v16, type metadata accessor for WorkoutMilestoneEntry);
      v23 += v28;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_1B49C2EB4(uint64_t a1, uint64_t a2)
{
  v32 = sub_1B4D179BC();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C8, &unk_1B4D1D780);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v24 - v13);
  v15 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v15, v12);
  if (v15)
  {
    v17 = (v14 + *(v9 + 28));
    v18 = type metadata accessor for LocalizedDate();
    v19 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v20 = *(v18 + 36);
    v30 = *(v9 + 32);
    v31 = v20;
    v26 = (v3 + 8);
    v27 = (v3 + 32);
    v29 = *(v10 + 72);
    v25 = v14;
    do
    {
      sub_1B4974FBC(v19, v14, &qword_1EB8A72C8, &unk_1B4D1D780);
      MEMORY[0x1B8C7D2C0](*v14);
      MEMORY[0x1B8C7D290](*v17);
      MEMORY[0x1B8C7D290](v17[1]);
      MEMORY[0x1B8C7D290](v17[2]);
      MEMORY[0x1B8C7D290](v17[3]);
      MEMORY[0x1B8C7D290](v17[4]);
      v21 = v33;
      sub_1B4974FBC(v17 + v31, v33, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v22 = v32;
      if ((*(v3 + 48))(v21, 1, v32) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v23 = v28;
        (*v27)(v28, v33, v22);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0]);
        sub_1B4D1808C();
        v14 = v25;
        (*v26)(v23, v22);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      sub_1B49B0578(&qword_1EB8A72D0, &qword_1EB8A6870, &unk_1B4D1C2C0);
      sub_1B4D1808C();
      result = sub_1B4975024(v14, &qword_1EB8A72C8, &unk_1B4D1D780);
      v19 += v29;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_1B49C3278(uint64_t a1, uint64_t a2)
{
  v32 = sub_1B4D179BC();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C0, &unk_1B4D1D770);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v24 - v13);
  v15 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v15, v12);
  if (v15)
  {
    v17 = (v14 + *(v9 + 28));
    v18 = type metadata accessor for LocalizedDate();
    v19 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v20 = *(v18 + 36);
    v30 = *(v9 + 32);
    v31 = v20;
    v26 = (v3 + 8);
    v27 = (v3 + 32);
    v29 = *(v10 + 72);
    v25 = v14;
    do
    {
      sub_1B4974FBC(v19, v14, &qword_1EB8A72C0, &unk_1B4D1D770);
      MEMORY[0x1B8C7D2C0](*v14);
      MEMORY[0x1B8C7D290](*v17);
      MEMORY[0x1B8C7D290](v17[1]);
      MEMORY[0x1B8C7D290](v17[2]);
      MEMORY[0x1B8C7D290](v17[3]);
      MEMORY[0x1B8C7D290](v17[4]);
      v21 = v33;
      sub_1B4974FBC(v17 + v31, v33, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v22 = v32;
      if ((*(v3 + 48))(v21, 1, v32) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v23 = v28;
        (*v27)(v28, v33, v22);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0]);
        sub_1B4D1808C();
        v14 = v25;
        (*v26)(v23, v22);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40);
      sub_1B4D1808C();
      result = sub_1B4975024(v14, &qword_1EB8A72C0, &unk_1B4D1D770);
      v19 += v29;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_1B49C363C(uint64_t a1, uint64_t a2)
{
  v32 = sub_1B4D179BC();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - v13;
  v15 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v15, v12);
  if (v15)
  {
    v17 = &v14[*(v9 + 28)];
    v18 = type metadata accessor for LocalizedDate();
    v19 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v20 = *(v18 + 36);
    v30 = *(v9 + 32);
    v31 = v20;
    v26 = (v3 + 8);
    v27 = (v3 + 32);
    v29 = *(v10 + 72);
    v25 = v14;
    do
    {
      sub_1B4974FBC(v19, v14, &qword_1EB8A6CF0, &unk_1B4D1BC70);
      sub_1B4D177CC();
      sub_1B49C68C4(&qword_1EB8A72D8, MEMORY[0x1E69695A8]);
      sub_1B4D1808C();
      MEMORY[0x1B8C7D290](*v17);
      MEMORY[0x1B8C7D290](*(v17 + 1));
      MEMORY[0x1B8C7D290](*(v17 + 2));
      MEMORY[0x1B8C7D290](*(v17 + 3));
      MEMORY[0x1B8C7D290](*(v17 + 4));
      v21 = v33;
      sub_1B4974FBC(&v17[v31], v33, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v22 = v32;
      if ((*(v3 + 48))(v21, 1, v32) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v23 = v28;
        (*v27)(v28, v33, v22);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0]);
        sub_1B4D1808C();
        v14 = v25;
        (*v26)(v23, v22);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
      sub_1B4D1808C();
      result = sub_1B4975024(v14, &qword_1EB8A6CF0, &unk_1B4D1BC70);
      v19 += v29;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_1B49C3A4C(uint64_t a1, uint64_t a2)
{
  v31 = sub_1B4D179BC();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v14);
  if (v14)
  {
    v16 = &v13[*(v9 + 28)];
    v17 = type metadata accessor for LocalizedDate();
    v18 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v17 + 36);
    v29 = *(v9 + 32);
    v30 = v19;
    v25 = (v3 + 8);
    v26 = (v3 + 32);
    v28 = *(v10 + 72);
    v24 = v13;
    do
    {
      sub_1B4974FBC(v18, v13, &qword_1EB8A6818, &unk_1B4D1AB30);
      sub_1B4D177CC();
      sub_1B49C68C4(&qword_1EB8A72D8, MEMORY[0x1E69695A8]);
      sub_1B4D1808C();
      MEMORY[0x1B8C7D290](*v16);
      MEMORY[0x1B8C7D290](*(v16 + 1));
      MEMORY[0x1B8C7D290](*(v16 + 2));
      MEMORY[0x1B8C7D290](*(v16 + 3));
      MEMORY[0x1B8C7D290](*(v16 + 4));
      v20 = v32;
      sub_1B4974FBC(&v16[v30], v32, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v21 = v31;
      if ((*(v3 + 48))(v20, 1, v31) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v22 = v27;
        (*v26)(v27, v32, v21);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0]);
        sub_1B4D1808C();
        v13 = v24;
        (*v25)(v22, v21);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40);
      sub_1B4D1808C();
      result = sub_1B4975024(v13, &qword_1EB8A6818, &unk_1B4D1AB30);
      v18 += v28;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1B49C3E5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B4D179BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v28 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - v14;
  v16 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v16, v13);
  if (v16)
  {
    v18 = a2;
    v19 = &v15[*(v10 + 36)];
    v37 = *(type metadata accessor for LocalizedDate() + 36);
    v20 = &v15[*(v10 + 40)];
    v21 = type metadata accessor for DistanceSampleIntervalRecord();
    v22 = v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v23 = v21[7];
    v35 = v21[6];
    v36 = (v4 + 48);
    v33 = v21[8];
    v34 = v23;
    v32 = *(v11 + 72);
    v29 = (v4 + 8);
    v30 = (v4 + 32);
    v38 = v3;
    do
    {
      sub_1B4974FBC(v22, v15, &qword_1EB8A6CE8, &qword_1B4D44B80);
      sub_1B4D177CC();
      sub_1B49C68C4(&qword_1EB8A72D8, MEMORY[0x1E69695A8]);
      sub_1B4D1808C();
      MEMORY[0x1B8C7D290](*v19);
      MEMORY[0x1B8C7D290](*(v19 + 1));
      MEMORY[0x1B8C7D290](*(v19 + 2));
      MEMORY[0x1B8C7D290](*(v19 + 3));
      MEMORY[0x1B8C7D290](*(v19 + 4));
      v26 = v39;
      sub_1B4974FBC(&v19[v37], v39, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      if ((*v36)(v26, 1, v3) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v27 = v31;
        (*v30)(v31, v26, v3);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0]);
        sub_1B4D1808C();
        (*v29)(v27, v3);
      }

      v24 = *v20;
      if (*v20 == 0.0)
      {
        v24 = 0.0;
      }

      MEMORY[0x1B8C7D2C0](*&v24);
      v25 = v20[1];
      if (v25 == 0.0)
      {
        v25 = 0.0;
      }

      MEMORY[0x1B8C7D2C0](*&v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40);
      sub_1B4D1808C();
      sub_1B4D1808C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10);
      sub_1B4D1808C();
      result = sub_1B4975024(v15, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v22 += v32;
      --v16;
      v3 = v38;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_1B49C4344(uint64_t a1, uint64_t a2)
{
  v32 = sub_1B4D179BC();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72E0, &unk_1B4D1D790);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - v13;
  v15 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v15, v12);
  if (v15)
  {
    v17 = &v14[*(v9 + 28)];
    v18 = type metadata accessor for LocalizedDate();
    v19 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v20 = *(v18 + 36);
    v30 = *(v9 + 32);
    v31 = v20;
    v26 = (v3 + 8);
    v27 = (v3 + 32);
    v29 = *(v10 + 72);
    v25 = v14;
    do
    {
      sub_1B4974FBC(v19, v14, &qword_1EB8A72E0, &unk_1B4D1D790);
      sub_1B4D177CC();
      sub_1B49C68C4(&qword_1EB8A72D8, MEMORY[0x1E69695A8]);
      sub_1B4D1808C();
      MEMORY[0x1B8C7D290](*v17);
      MEMORY[0x1B8C7D290](*(v17 + 1));
      MEMORY[0x1B8C7D290](*(v17 + 2));
      MEMORY[0x1B8C7D290](*(v17 + 3));
      MEMORY[0x1B8C7D290](*(v17 + 4));
      v21 = v33;
      sub_1B4974FBC(&v17[v31], v33, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v22 = v32;
      if ((*(v3 + 48))(v21, 1, v32) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v23 = v28;
        (*v27)(v28, v33, v22);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0]);
        sub_1B4D1808C();
        v14 = v25;
        (*v26)(v23, v22);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10);
      sub_1B4D1808C();
      result = sub_1B4975024(v14, &qword_1EB8A72E0, &unk_1B4D1D790);
      v19 += v29;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_1B49C4754(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C4A60(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C4BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C4F70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C5044(uint64_t a1, uint64_t a2)
{
  v32 = sub_1B4D179BC();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - v13;
  v15 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v15, v12);
  if (v15)
  {
    v17 = &v14[*(v9 + 28)];
    v18 = type metadata accessor for LocalizedDate();
    v19 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v20 = *(v18 + 36);
    v30 = *(v9 + 32);
    v31 = v20;
    v26 = (v3 + 8);
    v27 = (v3 + 32);
    v29 = *(v10 + 72);
    v25 = v14;
    do
    {
      sub_1B4974FBC(v19, v14, &qword_1EB8A6CF8, &unk_1B4D1BC80);
      sub_1B4D177CC();
      sub_1B49C68C4(&qword_1EB8A72D8, MEMORY[0x1E69695A8]);
      sub_1B4D1808C();
      MEMORY[0x1B8C7D290](*v17);
      MEMORY[0x1B8C7D290](*(v17 + 1));
      MEMORY[0x1B8C7D290](*(v17 + 2));
      MEMORY[0x1B8C7D290](*(v17 + 3));
      MEMORY[0x1B8C7D290](*(v17 + 4));
      v21 = v33;
      sub_1B4974FBC(&v17[v31], v33, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v22 = v32;
      if ((*(v3 + 48))(v21, 1, v32) == 1)
      {
        sub_1B4D18EAC();
      }

      else
      {
        v23 = v28;
        (*v27)(v28, v33, v22);
        sub_1B4D18EAC();
        sub_1B49C68C4(&qword_1EB8A7040, MEMORY[0x1E6969BC0]);
        sub_1B4D1808C();
        v14 = v25;
        (*v26)(v23, v22);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
      sub_1B49B0578(&qword_1EB8A72F8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
      sub_1B4D1808C();
      result = sub_1B4975024(v14, &qword_1EB8A6CF8, &unk_1B4D1BC80);
      v19 += v29;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_1B49C5454(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x1B8C7D290](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {

        v9 = (v7 + 40);
        do
        {
          v10 = *(v9 - 1);
          v11 = *v9;

          sub_1B4D1820C();

          v9 += 2;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1B49C551C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C571C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B49C585C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8C7D290](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4D1820C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v112 = a2;
  v101 = type metadata accessor for LocationCoordinate();
  v3 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4D174EC();
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  v110 = v8;
  v111 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v99 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v92 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v92 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v92 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v95 = &v92 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v94 = &v92 - v21;
  v22 = type metadata accessor for RingsPropertiesQuery();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v93 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for WorkoutPropertiesQuery();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v92 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v29 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v109 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v108 = &v92 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v107 = &v92 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v106 = &v92 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v105 = &v92 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v92 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v92 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v92 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v92 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v92 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7300, &unk_1B4D1D7A0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v57 = &v92 - v56;
  v59 = *(v58 + 56);
  sub_1B49C685C(a1, &v92 - v56, type metadata accessor for FitnessContextQueryDescriptor);
  sub_1B49C685C(v112, &v57[v59], type metadata accessor for FitnessContextQueryDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1B49C685C(v57, v44, type metadata accessor for FitnessContextQueryDescriptor);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v61 = v111;
            v62 = *(v111 + 32);
            v63 = &v57[v59];
            v64 = v95;
            goto LABEL_34;
          }

          goto LABEL_37;
        }

        sub_1B49C685C(v57, v41, type metadata accessor for FitnessContextQueryDescriptor);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v77 = v111;
          v78 = v96;
          v79 = v110;
          (*(v111 + 32))(v96, &v57[v59], v110);
          V2eeoiySbAC_ACtFZ_0 = sub_1B4D1774C();
          v80 = *(v77 + 8);
          v80(v78, v79);
          v80(v41, v79);
          goto LABEL_36;
        }

        (*(v111 + 8))(v41, v110);
LABEL_45:
        sub_1B4975024(v57, &qword_1EB8A7300, &unk_1B4D1D7A0);
LABEL_46:
        V2eeoiySbAC_ACtFZ_0 = 0;
        return V2eeoiySbAC_ACtFZ_0 & 1;
      }

      sub_1B49C685C(v57, v47, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v111 + 8))(v47, v110);
        goto LABEL_45;
      }

      v74 = v110;
      v73 = v111;
      v75 = v94;
      (*(v111 + 32))(v94, &v57[v59], v110);
      V2eeoiySbAC_ACtFZ_0 = sub_1B4D1774C();
      v76 = *(v73 + 8);
      v76(v75, v74);
      v76(v47, v74);
LABEL_36:
      sub_1B49C690C(v57, type metadata accessor for FitnessContextQueryDescriptor);
      return V2eeoiySbAC_ACtFZ_0 & 1;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1B49C685C(v57, v50, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v87 = v93;
        sub_1B49C6600(&v57[v59], v93, type metadata accessor for RingsPropertiesQuery);
        V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence20RingsPropertiesQueryV2eeoiySbAC_ACtFZ_0(v50, v87);
        sub_1B49C690C(v87, type metadata accessor for RingsPropertiesQuery);
        sub_1B49C690C(v50, type metadata accessor for RingsPropertiesQuery);
        goto LABEL_36;
      }

      v65 = type metadata accessor for RingsPropertiesQuery;
      v66 = v50;
    }

    else
    {
      sub_1B49C685C(v57, v53, type metadata accessor for FitnessContextQueryDescriptor);
      if (!swift_getEnumCaseMultiPayload())
      {
        v91 = v92;
        sub_1B49C6600(&v57[v59], v92, type metadata accessor for WorkoutPropertiesQuery);
        V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence22WorkoutPropertiesQueryV2eeoiySbAC_ACtFZ_0(v53, v91);
        sub_1B49C690C(v91, type metadata accessor for WorkoutPropertiesQuery);
        sub_1B49C690C(v53, type metadata accessor for WorkoutPropertiesQuery);
        sub_1B49C690C(v57, type metadata accessor for FitnessContextQueryDescriptor);
        return V2eeoiySbAC_ACtFZ_0 & 1;
      }

      v65 = type metadata accessor for WorkoutPropertiesQuery;
      v66 = v53;
    }

LABEL_44:
    sub_1B49C690C(v66, v65);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v67 = v105;
      sub_1B49C685C(v57, v105, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v103 + 8))(v67, v104);
        goto LABEL_45;
      }

      v69 = v103;
      v68 = v104;
      v70 = v100;
      (*(v103 + 32))(v100, &v57[v59], v104);
      V2eeoiySbAC_ACtFZ_0 = sub_1B4D1749C();
      v72 = *(v69 + 8);
      v72(v70, v68);
      v72(v67, v68);
      goto LABEL_36;
    }

    v44 = v106;
    sub_1B49C685C(v57, v106, type metadata accessor for FitnessContextQueryDescriptor);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_37;
    }

    v61 = v111;
    v62 = *(v111 + 32);
    v63 = &v57[v59];
    v64 = v97;
LABEL_34:
    v88 = v110;
    v62(v64, v63, v110);
    V2eeoiySbAC_ACtFZ_0 = sub_1B4D1774C();
    v89 = *(v61 + 8);
    v89(v64, v88);
    v89(v44, v88);
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v44 = v107;
    sub_1B49C685C(v57, v107, type metadata accessor for FitnessContextQueryDescriptor);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      goto LABEL_37;
    }

    v61 = v111;
    v62 = *(v111 + 32);
    v63 = &v57[v59];
    v64 = v98;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v44 = v108;
    sub_1B49C685C(v57, v108, type metadata accessor for FitnessContextQueryDescriptor);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v61 = v111;
      v62 = *(v111 + 32);
      v63 = &v57[v59];
      v64 = v99;
      goto LABEL_34;
    }

LABEL_37:
    (*(v111 + 8))(v44, v110);
    goto LABEL_45;
  }

  v81 = v109;
  sub_1B49C685C(v57, v109, type metadata accessor for FitnessContextQueryDescriptor);
  if (swift_getEnumCaseMultiPayload() != 9)
  {
    v65 = type metadata accessor for LocationCoordinate;
    v66 = v81;
    goto LABEL_44;
  }

  v82 = v102;
  sub_1B49C6600(&v57[v59], v102, type metadata accessor for LocationCoordinate);
  v83 = sub_1B4D1774C();
  v84 = v101;
  if ((v83 & 1) == 0 || *(v81 + *(v101 + 20)) != *(v82 + *(v101 + 20)) || *(v81 + *(v101 + 24)) != *(v82 + *(v101 + 24)))
  {
    sub_1B49C690C(v82, type metadata accessor for LocationCoordinate);
    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v85 = *(v84 + 28);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  v86 = sub_1B4D1816C();
  sub_1B49C690C(v82, type metadata accessor for LocationCoordinate);
  if ((v86 & 1) == 0)
  {
LABEL_49:
    sub_1B49C690C(v81, type metadata accessor for LocationCoordinate);
    sub_1B49C690C(v57, type metadata accessor for FitnessContextQueryDescriptor);
    goto LABEL_46;
  }

  sub_1B49C690C(v81, type metadata accessor for LocationCoordinate);
  sub_1B49C690C(v57, type metadata accessor for FitnessContextQueryDescriptor);
  V2eeoiySbAC_ACtFZ_0 = 1;
  return V2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t sub_1B49C6600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B49C6700()
{
  type metadata accessor for WorkoutPropertiesQuery();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RingsPropertiesQuery();
    if (v1 <= 0x3F)
    {
      sub_1B49C6810(319, &unk_1EDC37830, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        sub_1B49C6810(319, &qword_1EDC37860, MEMORY[0x1E6968130]);
        if (v3 <= 0x3F)
        {
          sub_1B49C6810(319, &qword_1EDC37280, type metadata accessor for LocationCoordinate);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B49C6810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

uint64_t sub_1B49C685C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49C68C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B49C690C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t MomentType.description.getter()
{
  v1 = *v0;
  v2 = 0x6D6F74737563;
  if (v1 == 4)
  {
    v2 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000015;
  v4 = 0xD000000000000013;
  if (v1 == 1)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B49C6A44()
{
  v1 = *v0;
  v2 = 0x6D6F74737563;
  if (v1 == 4)
  {
    v2 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  *v0;
  if (*v0 <= 2u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B49C6B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B49C88B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B49C6B40(uint64_t a1)
{
  v2 = sub_1B49C7474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6B7C(uint64_t a1)
{
  v2 = sub_1B49C7474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B49C6BC4(uint64_t a1)
{
  v2 = sub_1B49C74C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6C00(uint64_t a1)
{
  v2 = sub_1B49C74C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B49C6C3C(uint64_t a1)
{
  v2 = sub_1B49C7570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6C78(uint64_t a1)
{
  v2 = sub_1B49C7570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B49C6CB4(uint64_t a1)
{
  v2 = sub_1B49C766C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6CF0(uint64_t a1)
{
  v2 = sub_1B49C766C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B49C6D2C(uint64_t a1)
{
  v2 = sub_1B49C751C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6D68(uint64_t a1)
{
  v2 = sub_1B49C751C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B49C6DA4(uint64_t a1)
{
  v2 = sub_1B49C7618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6DE0(uint64_t a1)
{
  v2 = sub_1B49C7618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B49C6E1C(uint64_t a1)
{
  v2 = sub_1B49C75C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49C6E58(uint64_t a1)
{
  v2 = sub_1B49C75C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MomentType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7308, &qword_1B4D1D7B0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7310, &qword_1B4D1D7B8);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7318, &qword_1B4D1D7C0);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7320, &qword_1B4D1D7C8);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7328, &qword_1B4D1D7D0);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7330, &qword_1B4D1D7D8);
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7338, &qword_1B4D1D7E0);
  v22 = *(v50 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v25 = &v34 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49C7474();
  sub_1B4D18EFC();
  v28 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v54 = 3;
      sub_1B49C7570();
      v29 = v41;
      v30 = v50;
      sub_1B4D18C5C();
      v32 = v42;
      v31 = v43;
    }

    else if (v26 == 4)
    {
      v55 = 4;
      sub_1B49C751C();
      v29 = v44;
      v30 = v50;
      sub_1B4D18C5C();
      v32 = v45;
      v31 = v46;
    }

    else
    {
      v56 = 5;
      sub_1B49C74C8();
      v29 = v47;
      v30 = v50;
      sub_1B4D18C5C();
      v32 = v48;
      v31 = v49;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v52 = 1;
      sub_1B49C7618();
      v29 = v35;
      v30 = v50;
      sub_1B4D18C5C();
      v32 = v36;
      v31 = v37;
    }

    else
    {
      v53 = 2;
      sub_1B49C75C4();
      v29 = v38;
      v30 = v50;
      sub_1B4D18C5C();
      v32 = v39;
      v31 = v40;
    }

LABEL_12:
    (*(v32 + 8))(v29, v31);
    return (*v28)(v25, v30);
  }

  v51 = 0;
  sub_1B49C766C();
  v30 = v50;
  sub_1B4D18C5C();
  (*(v34 + 8))(v21, v18);
  return (*v28)(v25, v30);
}

unint64_t sub_1B49C7474()
{
  result = qword_1EB8A7340;
  if (!qword_1EB8A7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7340);
  }

  return result;
}

unint64_t sub_1B49C74C8()
{
  result = qword_1EB8A7348;
  if (!qword_1EB8A7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7348);
  }

  return result;
}

unint64_t sub_1B49C751C()
{
  result = qword_1EB8A7350;
  if (!qword_1EB8A7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7350);
  }

  return result;
}

unint64_t sub_1B49C7570()
{
  result = qword_1EB8A7358;
  if (!qword_1EB8A7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7358);
  }

  return result;
}

unint64_t sub_1B49C75C4()
{
  result = qword_1EB8A7360;
  if (!qword_1EB8A7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7360);
  }

  return result;
}

unint64_t sub_1B49C7618()
{
  result = qword_1EB8A7368;
  if (!qword_1EB8A7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7368);
  }

  return result;
}

unint64_t sub_1B49C766C()
{
  result = qword_1EB8A7370;
  if (!qword_1EB8A7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7370);
  }

  return result;
}

uint64_t MomentType.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t MomentType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7378, &qword_1B4D1D7E8);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v52[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7380, &qword_1B4D1D7F0);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v52[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7388, &qword_1B4D1D7F8);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v52[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7390, &qword_1B4D1D800);
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v52[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7398, &qword_1B4D1D808);
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73A0, &qword_1B4D1D810);
  v55 = *(v21 - 8);
  v22 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v52[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73A8, &qword_1B4D1D818);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v52[-v28];
  v30 = a1[3];
  v31 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1B49C7474();
  v32 = v71;
  sub_1B4D18EEC();
  if (!v32)
  {
    v54 = v21;
    v33 = v20;
    v35 = v69;
    v34 = v70;
    v71 = v26;
    v36 = v29;
    v37 = sub_1B4D18C2C();
    if (*(v37 + 16) != 1 || (v38 = *(v37 + 32), v38 == 6))
    {
      v41 = sub_1B4D189BC();
      swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820) + 48);
      *v43 = &type metadata for MomentType;
      sub_1B4D18B5C();
      sub_1B4D189AC();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrow();
      (*(v71 + 8))(v36, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = *(v37 + 32);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v48 = v68;
          v76 = 3;
          sub_1B49C7570();
          sub_1B4D18B4C();
          v49 = v71;
          (*(v61 + 8))(v34, v60);
          (*(v49 + 8))(v29, v25);
          swift_unknownObjectRelease();
          v45 = v48;
        }

        else
        {
          v45 = v68;
          v46 = v71;
          if (v38 == 4)
          {
            v77 = 4;
            sub_1B49C751C();
            v47 = v66;
            sub_1B4D18B4C();
            (*(v63 + 8))(v47, v62);
          }

          else
          {
            v78 = 5;
            sub_1B49C74C8();
            v50 = v67;
            sub_1B4D18B4C();
            (*(v64 + 8))(v50, v65);
          }

          (*(v46 + 8))(v29, v25);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v38)
        {
          if (v38 == 1)
          {
            v74 = 1;
            sub_1B49C7618();
            v39 = v33;
            sub_1B4D18B4C();
            v40 = v71;
            (*(v56 + 8))(v39, v57);
          }

          else
          {
            v75 = 2;
            sub_1B49C75C4();
            sub_1B4D18B4C();
            v40 = v71;
            (*(v58 + 8))(v35, v59);
          }
        }

        else
        {
          v73 = 0;
          sub_1B49C766C();
          sub_1B4D18B4C();
          (*(v55 + 8))(v24, v54);
          v40 = v71;
        }

        (*(v40 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v45 = v68;
      }

      *v45 = v53;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v72);
}

uint64_t sub_1B49C7F78()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B49C7FAC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B49C7FE0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B49C8014()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B49C8048()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 16;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B49C8080()
{
  result = qword_1EB8A73B8;
  if (!qword_1EB8A73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73B8);
  }

  return result;
}

unint64_t sub_1B49C8104()
{
  v1 = *v0;
  v2 = 0x6D6F74737563;
  if (v1 == 4)
  {
    v2 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000015;
  v4 = 0xD000000000000013;
  if (v1 == 1)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for WorkoutPropertyDimensionsField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPropertyDimensionsField(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B49C838C()
{
  result = qword_1EB8A73C0;
  if (!qword_1EB8A73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73C0);
  }

  return result;
}

unint64_t sub_1B49C83E4()
{
  result = qword_1EB8A73C8;
  if (!qword_1EB8A73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73C8);
  }

  return result;
}

unint64_t sub_1B49C843C()
{
  result = qword_1EB8A73D0;
  if (!qword_1EB8A73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73D0);
  }

  return result;
}

unint64_t sub_1B49C8494()
{
  result = qword_1EB8A73D8;
  if (!qword_1EB8A73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73D8);
  }

  return result;
}

unint64_t sub_1B49C84EC()
{
  result = qword_1EB8A73E0;
  if (!qword_1EB8A73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73E0);
  }

  return result;
}

unint64_t sub_1B49C8544()
{
  result = qword_1EB8A73E8;
  if (!qword_1EB8A73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73E8);
  }

  return result;
}

unint64_t sub_1B49C859C()
{
  result = qword_1EB8A73F0;
  if (!qword_1EB8A73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73F0);
  }

  return result;
}

unint64_t sub_1B49C85F4()
{
  result = qword_1EB8A73F8;
  if (!qword_1EB8A73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A73F8);
  }

  return result;
}

unint64_t sub_1B49C864C()
{
  result = qword_1EB8A7400;
  if (!qword_1EB8A7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7400);
  }

  return result;
}

unint64_t sub_1B49C86A4()
{
  result = qword_1EB8A7408;
  if (!qword_1EB8A7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7408);
  }

  return result;
}

unint64_t sub_1B49C86FC()
{
  result = qword_1EB8A7410;
  if (!qword_1EB8A7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7410);
  }

  return result;
}

unint64_t sub_1B49C8754()
{
  result = qword_1EB8A7418;
  if (!qword_1EB8A7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7418);
  }

  return result;
}

unint64_t sub_1B49C87AC()
{
  result = qword_1EB8A7420;
  if (!qword_1EB8A7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7420);
  }

  return result;
}

unint64_t sub_1B49C8804()
{
  result = qword_1EB8A7428;
  if (!qword_1EB8A7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7428);
  }

  return result;
}

unint64_t sub_1B49C885C()
{
  result = qword_1EB8A7430;
  if (!qword_1EB8A7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7430);
  }

  return result;
}

uint64_t sub_1B49C88B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001B4D4F460 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D4F480 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D4F4A0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4D4F4C0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D4F4E0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t static PropertyRecordProtocol.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v40 = AssociatedTypeWitness;
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v19 = a4[7];
  v19(&v45, a3, a4, v16);
  v20 = v45;
  v43 = a2;
  (v19)(&v44, a3, a4);
  if (v20 != v44)
  {
    goto LABEL_5;
  }

  v21 = a4[8];
  v21(&v45, a3, a4);
  v22 = v45;
  v21(&v44, a3, a4);
  if (v22 != v44)
  {
    goto LABEL_5;
  }

  v23 = a4[9];
  v23(a3, a4);
  v24 = v41;
  v23(a3, a4);
  v25 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
  v26 = sub_1B4D1816C();
  v27 = *(v42 + 8);
  v27(v24, v12);
  v27(v18, v12);
  if (v26)
  {
    v28 = a4[10];
    v29 = v37;
    v28(a3, a4);
    v30 = v38;
    v28(a3, a4);
    v31 = v40;
    v32 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v33 = sub_1B4D1816C();
    v34 = *(v39 + 8);
    v34(v30, v31);
    v34(v29, v31);
  }

  else
  {
LABEL_5:
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t AwardsContext.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AwardsContext() + 20);
  v4 = sub_1B4D174EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AwardsContext()
{
  result = qword_1EB8A7438;
  if (!qword_1EB8A7438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardsContext.init(earnedAchievements:dateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for AwardsContext() + 20);
  v6 = sub_1B4D174EC();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

void sub_1B49C915C()
{
  sub_1B49C91E0();
  if (v0 <= 0x3F)
  {
    sub_1B4D174EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B49C91E0()
{
  if (!qword_1EB8A7448)
  {
    type metadata accessor for ActivityAchievementAward();
    v0 = sub_1B4D184BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8A7448);
    }
  }
}

uint64_t sub_1B49C9238(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1 > 36)
  {
    switch(a1)
    {
      case '4':
        if (a2)
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "you(assistant) and the user.";
          v7 = 0xD0000000000008E5;
        }

        else
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "you (assistant) and the user.";
          v7 = 0xD00000000000081CLL;
        }

        break;
      case ',':
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = " mention the same media again.";
        v7 = 0xD0000000000005C8;
        break;
      case '%':
        if (a2)
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "assistant) and the user.";
          v7 = 0xD000000000000820;
        }

        else
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "assistant) and the user.";
          v7 = 0xD000000000000758;
        }

        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    if (a1 != 13)
    {
      if (a1 == 16)
      {
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = "assistant) and the user.";
        v7 = 0xD0000000000005C4;
        goto LABEL_21;
      }

      if (a1 == 24)
      {
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = "stant) and the user.";
        v7 = 0xD00000000000081DLL;
        goto LABEL_21;
      }

LABEL_15:
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "xt at the *progress* moment:\n\n{";
      v7 = 0xD0000000000005BELL;
      goto LABEL_21;
    }

    if (a2)
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "n you(assistant) and the user.";
      v7 = 0xD0000000000005C8;
    }

    else
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003FLL, 0x80000001B4D4F5E0);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "istant) and the user.";
      v7 = 0xD00000000000077ELL;
    }
  }

LABEL_21:
  MEMORY[0x1B8C7C620](v7, v6 | 0x8000000000000000);
  return 0;
}

uint64_t SnapshotQuery.with(range:filters:groupBy:propertyKinds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a7;
  v49 = a4;
  v47 = a3;
  v44 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1B4D1880C();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v43 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v43 - v20;
  v22 = type metadata accessor for DateRangeDescriptor();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49BFDE8(a1, v21);
  v27 = *(v23 + 48);
  v28 = v27(v21, 1, v22);
  v52 = v7;
  v45 = v26;
  if (v28 == 1)
  {
    v29 = a5;
    (*(a6 + 96))(a5, a6);
    if (v27(v21, 1, v22) != 1)
    {
      sub_1B49C9AE8(v21);
    }
  }

  else
  {
    v30 = v26;
    v29 = a5;
    sub_1B4993450(v21, v30);
  }

  (*(v50 + 16))(v15, v44, v51);
  v31 = *(AssociatedTypeWitness - 8);
  v32 = *(v31 + 48);
  v33 = v32(v15, 1, AssociatedTypeWitness);
  v34 = v46;
  if (v33 == 1)
  {
    v35 = v29;
    (*(a6 + 104))(v29, a6);
    v36 = v32(v15, 1, AssociatedTypeWitness);
    v37 = v49;
    if (v36 != 1)
    {
      (*(v50 + 8))(v15, v51);
    }
  }

  else
  {
    (*(v31 + 32))(v46, v15, AssociatedTypeWitness);
    v35 = v29;
    v37 = v49;
  }

  (*(v31 + 56))(v34, 0, 1, AssociatedTypeWitness);
  if (!v47)
  {
    v38 = (*(a6 + 112))(v35, a6);
    if (v37)
    {
      goto LABEL_11;
    }

LABEL_13:
    v40 = *(a6 + 120);

    v39 = v40(v35, a6);
    goto LABEL_14;
  }

  v38 = v47;
  if (!v37)
  {
    goto LABEL_13;
  }

LABEL_11:

  v39 = v37;
LABEL_14:
  v41 = *(a6 + 128);

  return v41(v45, v34, v38, v39, v35, a6);
}

uint64_t sub_1B49C9AE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SnapshotQuery.includes(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for DateRangeDescriptor();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v21 = a3[12];
  v37 = v3;
  v21(a2, a3, v18);
  v38 = a1;
  (v21)(a2, a3);
  v22 = _s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v20, v16);
  sub_1B49CA284(v16);
  sub_1B49CA284(v20);
  if ((v22 & 1) == 0)
  {
    goto LABEL_5;
  }

  v23 = a3[13];
  v23(a2, a3);
  v24 = v35;
  v23(a2, a3);
  v25 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v26 = sub_1B4D1816C();
  v27 = *(v36 + 8);
  v27(v24, AssociatedTypeWitness);
  v27(v12, AssociatedTypeWitness);
  if ((v26 & 1) == 0)
  {
    goto LABEL_5;
  }

  v28 = a3[14];
  v28(a2, a3);
  v28(a2, a3);
  swift_getAssociatedTypeWitness();
  v29 = *(swift_getAssociatedConformanceWitness() + 16);
  v30 = sub_1B4D184DC();

  if (v30)
  {
    v31 = a3[15];
    v40 = v31(a2, a3);
    v39 = v31(a2, a3);
    swift_getAssociatedTypeWitness();
    sub_1B4D184BC();
    swift_getWitnessTable();
    v32 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v33 = sub_1B4D1865C();
  }

  else
  {
LABEL_5:
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t SnapshotQuery.analyticsKey.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateRangeDescriptor();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0xE000000000000000;
  (*(a2 + 88))(&v18, a1, a2, v6);
  v9 = 0xE800000000000000;
  v10 = 0x7374756F6B726F77;
  if (v18 != 1)
  {
    v10 = 0x507373656E746966;
    v9 = 0xEB0000000073756CLL;
  }

  if (v18)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x73676E6972;
  }

  if (v18)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1B8C7C620](v11, v12);

  MEMORY[0x1B8C7C620](95, 0xE100000000000000);
  (*(a2 + 96))(a1, a2);
  v13 = DateRangeDescriptor.analyticsKey.getter();
  v15 = v14;
  sub_1B49CA284(v8);
  MEMORY[0x1B8C7C620](v13, v15);

  return v19;
}

uint64_t SnapshotQueryPlan.init(steps:query:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  Plan = type metadata accessor for SnapshotQueryPlan();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(Plan + 36);

  return v8(v9, a2, a3);
}

uint64_t sub_1B49CA240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = DateRangeDescriptor.analyticsKey.getter();
  MEMORY[0x1B8C7C620](v3);

  return a3;
}

uint64_t sub_1B49CA284(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B49CA384(uint64_t a1)
{
  sub_1B49CA7E0();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B49CA40C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1B49CA590(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_1B49CA7E0()
{
  if (!qword_1EDC378F0)
  {
    v0 = sub_1B4D184BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC378F0);
    }
  }
}

uint64_t sub_1B49CA830(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1B4BA3834(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1B49DA04C(a2, type metadata accessor for FitnessContextQueryDescriptor);
    *v2 = v19;
  }

  else
  {
    v9 = *v2;
    v10 = sub_1B49E9FEC(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v20 = *v3;
      if (!v14)
      {
        sub_1B4989318();
        v15 = v20;
      }

      v16 = *(v15 + 48);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      sub_1B49DA04C(v16 + *(*(Descriptor - 8) + 72) * v12, type metadata accessor for FitnessContextQueryDescriptor);
      v18 = *(*(v15 + 56) + 8 * v12);

      sub_1B4B7ED64(v12, v15);
      result = sub_1B49DA04C(a2, type metadata accessor for FitnessContextQueryDescriptor);
      *v3 = v15;
    }

    else
    {
      return sub_1B49DA04C(a2, type metadata accessor for FitnessContextQueryDescriptor);
    }
  }

  return result;
}

uint64_t sub_1B49CA980(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B0, &unk_1B4D1AA60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v11 = *(Descriptor - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](Descriptor);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, Descriptor, v13) == 1)
  {
    sub_1B4975024(a1, &qword_1EB8A67B0, &unk_1B4D1AA60);
    v16 = *v3;
    v17 = sub_1B49EA0C0(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1B49896A4();
        v22 = v27;
      }

      sub_1B49DA2F8(*(v22 + 56) + *(v11 + 72) * v19, v9, type metadata accessor for FitnessContextQueryDescriptor);
      sub_1B4B7F020(v19, v22);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, Descriptor);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, Descriptor);
    }

    return sub_1B4975024(v9, &qword_1EB8A67B0, &unk_1B4D1AA60);
  }

  else
  {
    sub_1B49DA2F8(a1, v15, type metadata accessor for FitnessContextQueryDescriptor);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_1B4BA39C4(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

uint64_t sub_1B49CABD4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for WorkoutState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1B4975024(a1, &qword_1EB8A6A98, &unk_1B4D1CBE0);
    v16 = *v3;
    v17 = sub_1B49EA4A8(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1B4989D04();
        v22 = v27;
      }

      sub_1B49DA2F8(*(v22 + 56) + *(v11 + 72) * v19, v9, type metadata accessor for WorkoutState);
      sub_1B4B7F24C(v19, v22);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1B4975024(v9, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  }

  else
  {
    sub_1B49DA2F8(a1, v15, type metadata accessor for WorkoutState);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_1B4BA3C68(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

uint64_t sub_1B49CAE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74E8, &qword_1B4D1E2D8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for WorkoutMetadata();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1B4975024(a1, &qword_1EB8A74E8, &qword_1B4D1E2D8);
    sub_1B49D3004(a2, a3, v10);

    return sub_1B4975024(v10, &qword_1EB8A74E8, &qword_1B4D1E2D8);
  }

  else
  {
    sub_1B49DA2F8(a1, v15, type metadata accessor for WorkoutMetadata);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1B4BA3DC4(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

uint64_t sub_1B49CAFFC(uint64_t a1)
{
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v1, a1) & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = type metadata accessor for WorkoutPropertiesQuery();
  v18 = v1;
  v3 = (v1 + v17[5]);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v22[0] = *v3;
  v22[1] = v4;
  v22[2] = v5;
  v22[3] = v6;
  v22[4] = v7;
  v22[5] = v8;
  v19 = a1;
  v9 = (a1 + v17[5]);
  v10 = v9[1];
  v12 = v9[2];
  v11 = v9[3];
  v13 = v9[4];
  v20 = v9[5];
  v21[0] = *v9;
  v21[1] = v10;
  v21[2] = v12;
  v21[3] = v11;
  v21[4] = v13;
  v21[5] = v20;

  LOBYTE(v4) = _s19FitnessIntelligence32WorkoutPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(v22, v21);

  if ((v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (sub_1B4A0DD68(*(v18 + v17[6]), *(v19 + v17[6])))
  {
    v14 = v17[7];
    v22[0] = *(v18 + v14);
    v21[0] = *(v19 + v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74D0, &qword_1B4D1E2D0);
    sub_1B49DA0AC(&qword_1EB8A74D8, &qword_1EB8A74D0, &qword_1B4D1E2D0);
    sub_1B49DA100();
    v15 = sub_1B4D1865C();
  }

  else
  {
LABEL_5:
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B49CB224(uint64_t a1)
{
  v2 = v1;
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v2, a1) & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = type metadata accessor for RingsPropertiesQuery();
  v5 = v4[5];
  v6 = *(v2 + v5);
  v7 = *(v2 + v5 + 8);
  v8 = *(v2 + v5 + 16);
  v9 = (a1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];

  if ((sub_1B4A0A1C0(v6, v10) & 1) == 0 || (sub_1B4A0A568(v7, v11) & 1) == 0)
  {

LABEL_8:
    v15 = 0;
    return v15 & 1;
  }

  v13 = sub_1B4A0A7D0(v8, v12);

  if ((v13 & 1) == 0 || (sub_1B4A0D340(*(v2 + v4[6]), *(a1 + v4[6])) & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = v4[7];
  v17 = *(a1 + v14);
  v18 = *(v2 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B8, &qword_1B4D3FD60);
  sub_1B49DA0AC(&qword_1EB8A74C0, &qword_1EB8A74B8, &qword_1B4D3FD60);
  sub_1B49D9FF8();
  v15 = sub_1B4D1865C();
  return v15 & 1;
}

uint64_t sub_1B49CB3F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
}

uint64_t sub_1B49CB458@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 128);
}

uint64_t sub_1B49CB4A0(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = v2;
}

void *WorkoutVoiceSession.__allocating_init(connection:unitManager:mode:transcript:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1B4D1777C();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for WorkoutVoiceSession.Mode();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = *a1;
  v21 = *a4;
  swift_defaultActor_initialize();
  v19[28] = 0;
  *&v54 = &protocol witness table for InferenceClient;
  *(&v53 + 1) = &type metadata for InferenceClient;
  *&v52 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7450, &qword_1B4D1E140);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  *(&v52 + 1) = sub_1B4D17ADC();
  sub_1B496F398(&v52, (v19 + 22));
  v25 = MEMORY[0x1E69E7CC0];
  v19[14] = MEMORY[0x1E69E7CC0];
  v26 = sub_1B4C95838(v25);
  v19[27] = a2;
  v19[15] = v26;
  v19[16] = v21;
  sub_1B49D9F90(a3, v18, type metadata accessor for WorkoutVoiceSession.Mode);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7458, &qword_1B4D1E148);
  if ((*(*(v27 - 8) + 48))(v18, 1, v27) == 1)
  {
    sub_1B49DA04C(a3, type metadata accessor for WorkoutVoiceSession.Mode);
    v19[20] = &type metadata for FitnessContextClient;
    v19[21] = &protocol witness table for FitnessContextClient;
    v19[17] = v20;
  }

  else
  {
    v46 = a3;
    v47 = a2;

    v45 = *&v18[*(v27 + 48)];
    v28 = &v18[*(v27 + 64)];
    v29 = *(v28 + 11);
    v62 = *(v28 + 10);
    v63 = v29;
    v64 = *(v28 + 24);
    v30 = *(v28 + 7);
    v58 = *(v28 + 6);
    v59 = v30;
    v31 = *(v28 + 9);
    v60 = *(v28 + 8);
    v61 = v31;
    v32 = *(v28 + 3);
    v54 = *(v28 + 2);
    v33 = *(v28 + 4);
    v57 = *(v28 + 5);
    v55 = v32;
    v56 = v33;
    v34 = *v28;
    v53 = *(v28 + 1);
    v52 = v34;
    v35 = v48;
    (*(v48 + 32))(v14, v18, v8);
    v36 = *(v35 + 16);
    v36(v11, v14, v8);
    v37 = type metadata accessor for FitnessContextDemoClient();
    v50 = v37;
    v51 = &off_1F2CBDF28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v49);
    v36(boxed_opaque_existential_1 + v37[5], v11, v8);
    v39 = boxed_opaque_existential_1 + v37[7];
    *v39 = v52;
    *(v39 + 4) = v56;
    *(v39 + 3) = v55;
    *(v39 + 2) = v54;
    *(v39 + 1) = v53;
    *(v39 + 8) = v60;
    *(v39 + 7) = v59;
    *(v39 + 6) = v58;
    *(v39 + 5) = v57;
    *(v39 + 24) = v64;
    *(v39 + 11) = v63;
    *(v39 + 10) = v62;
    *(v39 + 9) = v61;
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v40 = *(v35 + 8);
    v40(v11, v8);
    v41 = sub_1B4D1796C();
    v42 = __swift_project_value_buffer(v41, qword_1EDC3CE48);
    (*(*(v41 - 8) + 16))(boxed_opaque_existential_1, v42, v41);

    *(boxed_opaque_existential_1 + v37[6]) = v45;
    sub_1B49DA04C(v46, type metadata accessor for WorkoutVoiceSession.Mode);
    v40(v14, v8);
    sub_1B496F398(&v49, (v19 + 17));
  }

  return v19;
}

void *WorkoutVoiceSession.init(connection:unitManager:mode:transcript:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = sub_1B4D1777C();
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = type metadata accessor for WorkoutVoiceSession.Mode();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = *a4;
  swift_defaultActor_initialize();
  v5[28] = 0;
  *&v55 = &protocol witness table for InferenceClient;
  *(&v54 + 1) = &type metadata for InferenceClient;
  *&v53 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7450, &qword_1B4D1E140);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();

  *(&v53 + 1) = sub_1B4D17ADC();
  sub_1B496F398(&v53, (v5 + 22));
  v26 = MEMORY[0x1E69E7CC0];
  v5[14] = MEMORY[0x1E69E7CC0];
  v27 = sub_1B4C95838(v26);
  v5[27] = a2;
  v5[15] = v27;
  v5[16] = v22;
  sub_1B49D9F90(a3, v20, type metadata accessor for WorkoutVoiceSession.Mode);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7458, &qword_1B4D1E148);
  if ((*(*(v28 - 8) + 48))(v20, 1, v28) == 1)
  {
    sub_1B49DA04C(a3, type metadata accessor for WorkoutVoiceSession.Mode);
    v5[20] = &type metadata for FitnessContextClient;
    v5[21] = &protocol witness table for FitnessContextClient;
    v5[17] = v21;
  }

  else
  {
    v48 = a3;
    v47 = a2;

    v46 = *&v20[*(v28 + 48)];
    v29 = &v20[*(v28 + 64)];
    v30 = *(v29 + 11);
    v63 = *(v29 + 10);
    v64 = v30;
    v65 = *(v29 + 24);
    v31 = *(v29 + 7);
    v59 = *(v29 + 6);
    v60 = v31;
    v32 = *(v29 + 9);
    v61 = *(v29 + 8);
    v62 = v32;
    v33 = *(v29 + 3);
    v55 = *(v29 + 2);
    v34 = *(v29 + 4);
    v58 = *(v29 + 5);
    v56 = v33;
    v57 = v34;
    v35 = *v29;
    v54 = *(v29 + 1);
    v53 = v35;
    v36 = v49;
    (*(v49 + 32))(v16, v20, v10);
    v37 = *(v36 + 16);
    v37(v13, v16, v10);
    v38 = type metadata accessor for FitnessContextDemoClient();
    v51 = v38;
    v52 = &off_1F2CBDF28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
    v37(boxed_opaque_existential_1 + v38[5], v13, v10);
    v40 = boxed_opaque_existential_1 + v38[7];
    *v40 = v53;
    *(v40 + 4) = v57;
    *(v40 + 3) = v56;
    *(v40 + 2) = v55;
    *(v40 + 1) = v54;
    *(v40 + 8) = v61;
    *(v40 + 7) = v60;
    *(v40 + 6) = v59;
    *(v40 + 5) = v58;
    *(v40 + 24) = v65;
    *(v40 + 11) = v64;
    *(v40 + 10) = v63;
    *(v40 + 9) = v62;
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v41 = *(v36 + 8);
    v41(v13, v10);
    v42 = sub_1B4D1796C();
    v43 = __swift_project_value_buffer(v42, qword_1EDC3CE48);
    (*(*(v42 - 8) + 16))(boxed_opaque_existential_1, v43, v42);

    *(boxed_opaque_existential_1 + v38[6]) = v46;
    sub_1B49DA04C(v48, type metadata accessor for WorkoutVoiceSession.Mode);
    v41(v16, v10);
    sub_1B496F398(&v50, (v5 + 17));
  }

  return v5;
}

uint64_t type metadata accessor for WorkoutVoiceSession.Mode()
{
  result = qword_1EB8A7480;
  if (!qword_1EB8A7480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *WorkoutVoiceSession.__allocating_init(connection:unitManager:)(uint64_t *a1, void *a2)
{
  v4 = sub_1B4D1777C();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v44 - v9;
  v10 = type metadata accessor for WorkoutVoiceSession.Mode();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = *a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7458, &qword_1B4D1E148);
  v19 = *(v18 - 8);
  (*(v19 + 56))(v16, 1, 1, v18);
  type metadata accessor for WorkoutVoiceSession();
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  v20[28] = 0;
  *&v52 = &protocol witness table for InferenceClient;
  *(&v51 + 1) = &type metadata for InferenceClient;
  *&v50 = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7450, &qword_1B4D1E140);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  *(&v50 + 1) = sub_1B4D17ADC();
  sub_1B496F398(&v50, (v20 + 22));
  v24 = MEMORY[0x1E69E7CC0];
  v20[14] = MEMORY[0x1E69E7CC0];
  v25 = sub_1B4C95838(v24);
  v20[27] = a2;
  v20[15] = v25;
  v20[16] = v24;
  sub_1B49D9F90(v16, v13, type metadata accessor for WorkoutVoiceSession.Mode);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1B49DA04C(v16, type metadata accessor for WorkoutVoiceSession.Mode);
    v20[20] = &type metadata for FitnessContextClient;
    v20[21] = &protocol witness table for FitnessContextClient;
    v20[17] = v17;
  }

  else
  {
    v44 = a2;

    v26 = *&v13[*(v18 + 48)];
    v27 = &v13[*(v18 + 64)];
    v28 = *(v27 + 11);
    v60 = *(v27 + 10);
    v61 = v28;
    v62 = *(v27 + 24);
    v29 = *(v27 + 7);
    v56 = *(v27 + 6);
    v57 = v29;
    v30 = *(v27 + 9);
    v58 = *(v27 + 8);
    v59 = v30;
    v31 = *(v27 + 3);
    v52 = *(v27 + 2);
    v32 = *(v27 + 4);
    v55 = *(v27 + 5);
    v53 = v31;
    v54 = v32;
    v33 = *v27;
    v51 = *(v27 + 1);
    v50 = v33;
    v34 = v46;
    v35 = v45;
    (*(v46 + 32))(v45, v13, v4);
    v36 = *(v34 + 16);
    v36(v7, v35, v4);
    v37 = type metadata accessor for FitnessContextDemoClient();
    v48 = v37;
    v49 = &off_1F2CBDF28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
    v36(boxed_opaque_existential_1 + v37[5], v7, v4);
    v39 = boxed_opaque_existential_1 + v37[7];
    *v39 = v50;
    *(v39 + 4) = v54;
    *(v39 + 3) = v53;
    *(v39 + 2) = v52;
    *(v39 + 1) = v51;
    *(v39 + 8) = v58;
    *(v39 + 7) = v57;
    *(v39 + 6) = v56;
    *(v39 + 5) = v55;
    *(v39 + 24) = v62;
    *(v39 + 11) = v61;
    *(v39 + 10) = v60;
    *(v39 + 9) = v59;
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v40 = *(v46 + 8);
    v40(v7, v4);
    v41 = sub_1B4D1796C();
    v42 = __swift_project_value_buffer(v41, qword_1EDC3CE48);
    (*(*(v41 - 8) + 16))(boxed_opaque_existential_1, v42, v41);

    *(boxed_opaque_existential_1 + v37[6]) = v26;
    v40(v45, v4);
    sub_1B49DA04C(v16, type metadata accessor for WorkoutVoiceSession.Mode);
    sub_1B496F398(&v47, (v20 + 17));
  }

  return v20;
}

uint64_t sub_1B49CC4F8(_BYTE *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  v5 = *(type metadata accessor for WorkoutState() - 8);
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 + 64);
  *(v3 + 48) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7460, &qword_1B4D1E158) - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 89) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B49CC600, v2, 0);
}

uint64_t sub_1B49CC600()
{
  v33 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 224);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = qword_1EDC3CEC8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_1B4D17F6C();
    __swift_project_value_buffer(v4, qword_1EDC3CED0);
    v5 = sub_1B4D17F5C();
    v6 = sub_1B4D1873C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 89);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32 = v9;
      *v8 = 136315138;
      *(v0 + 88) = v7;
      v10 = sub_1B4D181AC();
      v12 = sub_1B49558AC(v10, v11, &v32);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B4953000, v5, v6, "[WorkoutVoiceSession] Waiting for current fetching context task to finish before fetching context for %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1B8C7DDA0](v9, -1, -1);
      MEMORY[0x1B8C7DDA0](v8, -1, -1);
    }

    v13 = *(MEMORY[0x1E69E86A8] + 4);
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    *v14 = v0;
    v14[1] = sub_1B49CC974;
    v16 = MEMORY[0x1E69E7288];
    v17 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v15, v2, v17, v15, v16);
  }

  else
  {
    v18 = *(v0 + 89);
    v20 = *(v0 + 48);
    v19 = *(v0 + 56);
    v22 = *(v0 + 32);
    v21 = *(v0 + 40);
    v23 = *(v0 + 16);
    sub_1B4D1855C();
    v24 = sub_1B4D1858C();
    (*(*(v24 - 8) + 56))(v19, 0, 1, v24);
    sub_1B49D9F90(v23, v20, type metadata accessor for WorkoutState);
    v25 = sub_1B49D918C();
    v26 = (*(v22 + 80) + 41) & ~*(v22 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = v25;
    *(v27 + 32) = v1;
    *(v27 + 40) = v18;
    sub_1B49DA2F8(v20, v27 + v26, type metadata accessor for WorkoutState);
    swift_retain_n();
    v28 = sub_1B49CCEB8(0, 0, v19, &unk_1B4D1E168, v27);
    v29 = *(v1 + 224);
    *(v1 + 224) = v28;

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1B49CC974()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1B49CCC40;
  }

  else
  {
    v6 = sub_1B49CCAA0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B49CCAA0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 89);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  sub_1B4D1855C();
  v9 = sub_1B4D1858C();
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  sub_1B49D9F90(v8, v4, type metadata accessor for WorkoutState);
  v10 = sub_1B49D918C();
  v11 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v10;
  *(v12 + 32) = v7;
  *(v12 + 40) = v2;
  sub_1B49DA2F8(v4, v12 + v11, type metadata accessor for WorkoutState);
  swift_retain_n();
  v13 = sub_1B49CCEB8(0, 0, v3, &unk_1B4D1E168, v12);
  v14 = *(v7 + 224);
  *(v7 + 224) = v13;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1B49CCC40()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_1B49CCCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 16) = a4;
  *(v6 + 40) = a5;
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_1B49CCD6C;

  return sub_1B49D1FD4((v6 + 40), a6);
}

uint64_t sub_1B49CCD6C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1B49CCEA0, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B49CCEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7460, &qword_1B4D1E158);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1B4974FBC(a3, v24 - v10, &qword_1EB8A7460, &qword_1B4D1E158);
  v12 = sub_1B4D1858C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B4975024(v11, &qword_1EB8A7460, &qword_1B4D1E158);
  }

  else
  {
    sub_1B4D1857C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B4D184FC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B4D181DC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1B4975024(a3, &qword_1EB8A7460, &qword_1B4D1E158);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B4975024(a3, &qword_1EB8A7460, &qword_1B4D1E158);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1B49CD164(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v5 = *(a1 + 8);
  if (v5 <= 1)
  {
    if (*(a1 + 8))
    {
      *(v3 + 90) = 1;
      v6 = (v3 + 90);
      v7 = swift_task_alloc();
      *(v3 + 40) = v7;
      *v7 = v3;
      v8 = sub_1B49CD478;
    }

    else
    {
      *(v3 + 91) = 0;
      v6 = (v3 + 91);
      v7 = swift_task_alloc();
      *(v3 + 24) = v7;
      *v7 = v3;
      v8 = sub_1B49CD344;
    }

LABEL_12:
    v7[1] = v8;

    return sub_1B49CC4F8(v6, a2);
  }

  if (v5 == 2)
  {
    *(v3 + 89) = 2;
    v6 = (v3 + 89);
    v7 = swift_task_alloc();
    *(v3 + 56) = v7;
    *v7 = v3;
    v8 = sub_1B49CD5AC;
    goto LABEL_12;
  }

  if (v5 == 3)
  {
    *(v3 + 88) = 3;
    v6 = (v3 + 88);
    v7 = swift_task_alloc();
    *(v3 + 72) = v7;
    *v7 = v3;
    v8 = sub_1B49CD6E0;
    goto LABEL_12;
  }

  v9 = *(v3 + 8);

  return v9();
}

uint64_t sub_1B49CD344()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD814, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B49CD478()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD82C, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B49CD5AC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD844, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B49CD6E0()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD85C, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B49CD874(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  v6 = sub_1B4D177CC();
  *(v4 + 64) = v6;
  v7 = *(v6 - 8);
  *(v4 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v9 = sub_1B4D17F0C();
  *(v4 + 88) = v9;
  v10 = *(v9 - 8);
  *(v4 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v13 = sub_1B4D1777C();
  *(v4 + 120) = v13;
  v14 = *(v13 - 8);
  *(v4 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v16 = sub_1B4D17ECC();
  *(v4 + 160) = v16;
  v17 = *(v16 - 8);
  *(v4 + 168) = v17;
  v18 = *(v17 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 314) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B49CDAC8, v3, 0);
}

uint64_t sub_1B49CDAC8()
{
  if (qword_1EDC36F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = sub_1B4D17EFC();
  *(v0 + 200) = __swift_project_value_buffer(v2, qword_1EDC36F40);
  sub_1B4D17EBC();
  v3 = sub_1B4D17EEC();
  v4 = sub_1B4D1877C();
  if (sub_1B4D187DC())
  {
    v5 = *(v0 + 192);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1B4D17EAC();
    _os_signpost_emit_with_name_impl(&dword_1B4953000, v3, v4, v7, "requestMoment", "", v6, 2u);
    MEMORY[0x1B8C7DDA0](v6, -1, -1);
  }

  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  v12 = *(v0 + 56);

  (*(v11 + 16))(v8, v9, v10);
  v13 = sub_1B4D17F3C();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 208) = sub_1B4D17F2C();
  v16 = *(v11 + 8);
  *(v0 + 216) = v16;
  *(v0 + 224) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v9, v10);
  v17 = *(v12 + 224);
  *(v0 + 232) = v17;
  if (v17)
  {
    v18 = *(MEMORY[0x1E69E86A8] + 4);

    v19 = swift_task_alloc();
    *(v0 + 240) = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    *v19 = v0;
    v19[1] = sub_1B49CDD88;
    v21 = MEMORY[0x1E69E7288];
    v22 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v20, v17, v22, v20, v21);
  }

  else
  {
    *(v0 + 312) = *(v0 + 314);
    v23 = swift_task_alloc();
    *(v0 + 256) = v23;
    *v23 = v0;
    v23[1] = sub_1B49CDF58;
    v24 = *(v0 + 48);
    v25 = *(v0 + 56);

    return sub_1B49D1FD4((v0 + 312), v24);
  }
}

uint64_t sub_1B49CDD88()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v9 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = *(v2 + 232);
    v5 = *(v2 + 56);

    v6 = sub_1B49CE8A4;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 56);
    v6 = sub_1B49CDEB0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1B49CDEB0()
{
  v1 = *(v0 + 232);

  *(v0 + 312) = *(v0 + 314);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_1B49CDF58;
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);

  return sub_1B49D1FD4((v0 + 312), v3);
}

uint64_t sub_1B49CDF58()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1B49CE984;
  }

  else
  {
    v5 = sub_1B49CE070;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B49CE070()
{
  v9 = v0;
  v1 = v0[19].u8[10];
  v2 = v0[9].i64[1];
  v7 = v0[3];
  sub_1B4D1776C();
  v8 = v1;
  v3 = sub_1B4A6A1F8(&v8);
  v0[17].i64[0] = v3;
  v4 = swift_task_alloc();
  v0[17].i64[1] = v4;
  v4[1] = vextq_s8(v7, v7, 8uLL);
  v4[2].i8[0] = v1;
  v5 = swift_task_alloc();
  v0[18].i64[0] = v5;
  *v5 = v0;
  v5[1] = sub_1B49CE17C;

  return sub_1B49CF548(&unk_1B4D1E1A0, v4, v3);
}

uint64_t sub_1B49CE17C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  v4[37] = a1;
  v4[38] = v1;

  v7 = v3[35];
  if (v1)
  {
    v8 = v4[34];
    v9 = v4[7];

    v10 = sub_1B49CEA64;
  }

  else
  {
    v9 = v4[7];

    v10 = sub_1B49CE2D4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1B49CE2D4()
{
  v87 = v0;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = sub_1B4D17F6C();
  __swift_project_value_buffer(v6, qword_1EDC3CED0);
  (*(v5 + 16))(v3, v2, v4);

  v7 = sub_1B4D17F5C();
  v8 = sub_1B4D1873C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 272);
  if (v9)
  {
    v11 = *(v0 + 314);
    v12 = *(v0 + 136);
    v13 = *(v0 + 128);
    v82 = *(v0 + 144);
    v84 = *(v0 + 120);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v86 = v15;
    *v14 = 134218498;
    v16 = *(v10 + 16);

    *(v14 + 4) = v16;

    *(v14 + 12) = 2080;
    *(v0 + 313) = v11;
    v17 = sub_1B4D181AC();
    v19 = sub_1B49558AC(v17, v18, &v86);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2048;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v21 = v20;
    v22 = *(v13 + 8);
    v22(v12, v84);
    v22(v82, v84);
    *(v14 + 24) = v21;
    _os_log_impl(&dword_1B4953000, v7, v8, "[WorkoutVoiceSession] Analyzed %ld facts for %s in %fs", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B8C7DDA0](v15, -1, -1);
    MEMORY[0x1B8C7DDA0](v14, -1, -1);
  }

  else
  {
    v23 = *(v0 + 144);
    v24 = *(v0 + 120);
    v25 = *(v0 + 128);
    v26 = *(v0 + 272);
    swift_bridgeObjectRelease_n();

    v22 = *(v25 + 8);
    v22(v23, v24);
  }

  v27 = *(v0 + 200);
  v28 = *(v0 + 208);
  v29 = *(v0 + 176);
  v30 = *(v0 + 112);
  v31 = *(v0 + 56);
  v32 = *(v0 + 314);
  sub_1B49D9F90(*(v0 + 48), v30, type metadata accessor for WorkoutState);
  v33 = type metadata accessor for WorkoutState();
  (*(*(v33 - 8) + 56))(v30, 0, 1, v33);
  swift_beginAccess();
  sub_1B49CABD4(v30, v32);
  swift_endAccess();
  v34 = sub_1B4D17EEC();
  sub_1B4D17F1C();
  v35 = sub_1B4D1876C();
  if (sub_1B4D187DC())
  {
    v36 = *(v0 + 208);
    v38 = *(v0 + 96);
    v37 = *(v0 + 104);
    v39 = *(v0 + 88);

    sub_1B4D17F4C();

    if ((*(v38 + 88))(v37, v39) == *MEMORY[0x1E69E93E8])
    {
      v40 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      v40 = "";
    }

    v41 = *(v0 + 176);
    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = sub_1B4D17EAC();
    _os_signpost_emit_with_name_impl(&dword_1B4953000, v34, v35, v43, "requestMoment", v40, v42, 2u);
    MEMORY[0x1B8C7DDA0](v42, -1, -1);
  }

  v44 = *(v0 + 296);
  v46 = *(v0 + 216);
  v45 = *(v0 + 224);
  v47 = *(v0 + 176);
  v48 = *(v0 + 160);

  v46(v47, v48);
  v49 = *(v0 + 296);
  v50 = *(v0 + 208);
  if (*(v44 + 16))
  {
    v85 = *(v0 + 314);
    v80 = v22;
    v81 = *(v0 + 152);
    v78 = *(v0 + 128);
    v79 = *(v0 + 120);
    v51 = *(v0 + 72);
    v52 = *(v0 + 80);
    v53 = *(v0 + 64);
    v83 = *(v0 + 40);
    v54 = *(*(v0 + 48) + *(v33 + 24));
    v55 = [v54 effectiveTypeIdentifier];
    v56 = [v54 isIndoor];
    sub_1B4D177BC();
    v57 = sub_1B4D1779C();
    v59 = v58;

    (*(v51 + 8))(v52, v53);
    v80(v81, v79);
    v60 = v57;
    v61 = v55;
    v62 = v56;
    *v83 = v85;
    v63 = v49;
  }

  else
  {
    v64 = *(v0 + 40);
    v65 = *(v0 + 128) + 8;
    v22(*(v0 + 152), *(v0 + 120));

    v61 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v59 = 0;
    *v64 = 0;
  }

  v67 = *(v0 + 184);
  v66 = *(v0 + 192);
  v68 = *(v0 + 176);
  v70 = *(v0 + 144);
  v69 = *(v0 + 152);
  v71 = *(v0 + 136);
  v72 = *(v0 + 104);
  v73 = *(v0 + 112);
  v74 = *(v0 + 80);
  v75 = *(v0 + 40);
  v75[1] = v61;
  v75[2] = v62;
  v75[3] = v63;
  v75[4] = v60;
  v75[5] = v59;

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_1B49CE8A4()
{
  v1 = v0[26];

  v2 = v0[31];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B49CE984()
{
  v1 = v0[26];

  v2 = v0[33];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B49CEA64()
{
  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];

  (*(v4 + 8))(v2, v3);
  v5 = v0[38];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[17];
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B49CEB64(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 192) = a4;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v7 = sub_1B4D1777C();
  *(v4 + 88) = v7;
  v8 = *(v7 - 8);
  *(v4 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B49CEC84, 0, 0);
}

uint64_t sub_1B49CEC84()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  sub_1B4D1776C();

  return MEMORY[0x1EEE6DFA0](sub_1B49CECF0, v2, 0);
}

uint64_t sub_1B49CECF0()
{
  *(v0 + 144) = *(*(v0 + 64) + 112);

  return MEMORY[0x1EEE6DFA0](sub_1B49CED64, 0, 0);
}

uint64_t sub_1B49CED64()
{
  v1 = v0[8];
  v0[7] = v0[18];
  v0[19] = *(v1 + 216);
  return MEMORY[0x1EEE6DFA0](sub_1B49CED90, v1, 0);
}

uint64_t sub_1B49CED90()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  *(v0 + 160) = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1B49CEE18, 0, 0);
}

uint64_t sub_1B49CEE18()
{
  if (*(*(v0 + 160) + 16))
  {
    v1 = sub_1B49EA4A8(*(v0 + 192));
    v2 = *(v0 + 80);
    if (v3)
    {
      v4 = v1;
      v5 = *(*(v0 + 160) + 56);
      v6 = type metadata accessor for WorkoutState();
      v7 = *(v6 - 8);
      sub_1B49D9F90(v5 + *(v7 + 72) * v4, v2, type metadata accessor for WorkoutState);

      (*(v7 + 56))(v2, 0, 1, v6);
    }

    else
    {
      v11 = *(v0 + 160);

      v12 = type metadata accessor for WorkoutState();
      (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
    }
  }

  else
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 160);

    v10 = type metadata accessor for WorkoutState();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_1B49CF014;
  v14 = *(v0 + 152);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v17 = *(v0 + 72);
  v18 = *(v0 + 80);

  return sub_1B4BE4ED0((v0 + 56), v14, v17, v18, v15, v16);
}

uint64_t sub_1B49CF014(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = v1;

  v7 = v4[10];
  if (v1)
  {
    sub_1B4975024(v7, &qword_1EB8A6A98, &unk_1B4D1CBE0);
    v8 = v4[7];

    v9 = sub_1B49CF4A4;
  }

  else
  {
    v4[23] = a1;
    sub_1B4975024(v7, &qword_1EB8A6A98, &unk_1B4D1CBE0);
    v10 = v4[7];

    v9 = sub_1B49CF18C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B49CF18C()
{
  v41 = v0;
  v1 = v0[23];
  v3 = v0[16];
  v2 = v0[17];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7498, &qword_1B4D1E2B0);
  v4 = sub_1B4D18A7C();

  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v9 = sub_1B4D17F6C();
  __swift_project_value_buffer(v9, qword_1EDC3CED0);
  (*(v7 + 16))(v6, v5, v8);
  v10 = sub_1B4D17F5C();
  v11 = sub_1B4D1873C();
  if (os_log_type_enabled(v10, v11))
  {
    v13 = v0[16];
    v12 = v0[17];
    v14 = v0[14];
    v16 = v0[12];
    v15 = v0[13];
    v37 = v0[11];
    v38 = v0[15];
    v39 = v4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136315394;
    v0[5] = swift_getMetatypeMetadata();
    v0[6] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74A0, &qword_1B4D1E2B8);
    v19 = sub_1B4D181CC();
    v21 = sub_1B49558AC(v19, v20, &v40);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v23 = v22;
    v24 = *(v16 + 8);
    v24(v15, v37);
    v24(v14, v37);
    *(v17 + 14) = v23;
    _os_log_impl(&dword_1B4953000, v10, v11, "[WorkoutVoiceSession] Analyzed %s in %fs", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1B8C7DDA0](v18, -1, -1);
    v25 = v17;
    v4 = v39;
    MEMORY[0x1B8C7DDA0](v25, -1, -1);

    v24(v38, v37);
  }

  else
  {
    v26 = v0[14];
    v27 = v0[15];
    v28 = v0[11];
    v29 = v0[12];

    v30 = *(v29 + 8);
    v30(v26, v28);
    v30(v27, v28);
  }

  v32 = v0[14];
  v31 = v0[15];
  v33 = v0[13];
  v34 = v0[10];

  v35 = v0[1];

  return v35(v4);
}

uint64_t sub_1B49CF4A4()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[10];
  (*(v0[12] + 8))(v0[15], v0[11]);

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_1B49CF548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B49CF56C, 0, 0);
}

uint64_t sub_1B49CF56C()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = *(v0 + 32);
    *(v0 + 64) = MEMORY[0x1E69E7CC0];
    *(v0 + 72) = 0;
    *(v0 + 16) = *(v1 + 32);
    v10 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_1B49CF6C8;
    v6 = *(v0 + 40);

    return v10(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 8);
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1B49CF6C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v8 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v5 = v3[8];

    v6 = sub_1B49DA360;
  }

  else
  {
    v6 = sub_1B49CF7E4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1B49CF7E4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  if (!v1)
  {
    goto LABEL_15;
  }

  v3 = *(v1 + 16);
  v4 = v2[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = *(v0 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 64);
  if (isUniquelyReferenced_nonNull_native && v5 <= v2[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v11 = v4 + v3;
    }

    else
    {
      v11 = v4;
    }

    v2 = sub_1B4A1DA24(isUniquelyReferenced_nonNull_native, v11, 1, *(v0 + 64));
    if (*(v1 + 16))
    {
LABEL_6:
      if ((v2[3] >> 1) - v2[2] >= v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7498, &qword_1B4D1E2B0);
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_15;
        }

        v8 = v2[2];
        v9 = __OFADD__(v8, v3);
        v10 = v8 + v3;
        if (!v9)
        {
          v2[2] = v10;
          goto LABEL_15;
        }

LABEL_25:
        __break(1u);
        return;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  if (v3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  v12 = *(v0 + 72) + 1;
  if (v12 == *(v0 + 56))
  {
    v13 = *(v0 + 8);

    v13(v2);
  }

  else
  {
    *(v0 + 64) = v2;
    *(v0 + 72) = v12;
    v14 = *(v0 + 32);
    *(v0 + 16) = *(*(v0 + 48) + 16 * v12 + 32);
    v18 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_1B49CF6C8;
    v17 = *(v0 + 40);

    v18(v0 + 16);
  }
}

uint64_t sub_1B49CFA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B49CFA54, 0, 0);
}

uint64_t sub_1B49CFA54()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = *(v0 + 32);
    *(v0 + 64) = MEMORY[0x1E69E7CC0];
    *(v0 + 72) = 0;
    *(v0 + 16) = *(v1 + 32);
    v10 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_1B49CFBB0;
    v6 = *(v0 + 40);

    return v10(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 8);
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1B49CFBB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v8 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v5 = v3[8];

    v6 = sub_1B49CFF08;
  }

  else
  {
    v6 = sub_1B49CFCCC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1B49CFCCC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  if (!v1)
  {
    goto LABEL_15;
  }

  v3 = *(v1 + 16);
  v4 = *(v2 + 2);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = *(v0 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 64);
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v2 + 3) >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v11 = v4 + v3;
    }

    else
    {
      v11 = v4;
    }

    v2 = sub_1B4A1EC78(isUniquelyReferenced_nonNull_native, v11, 1, *(v0 + 64));
    if (*(v1 + 16))
    {
LABEL_6:
      if ((*(v2 + 3) >> 1) - *(v2 + 2) >= v3)
      {
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_15;
        }

        v8 = *(v2 + 2);
        v9 = __OFADD__(v8, v3);
        v10 = v8 + v3;
        if (!v9)
        {
          *(v2 + 2) = v10;
          goto LABEL_15;
        }

LABEL_25:
        __break(1u);
        return;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  if (v3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  v12 = *(v0 + 72) + 1;
  if (v12 == *(v0 + 56))
  {
    v13 = *(v0 + 8);

    v13(v2);
  }

  else
  {
    *(v0 + 64) = v2;
    *(v0 + 72) = v12;
    v14 = *(v0 + 32);
    *(v0 + 16) = *(*(v0 + 48) + 16 * v12 + 32);
    v18 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_1B49CFBB0;
    v17 = *(v0 + 40);

    v18(v0 + 16);
  }
}

uint64_t sub_1B49CFF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 108) = *(a2 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1B49CFF4C, v3, 0);
}

uint64_t sub_1B49CFF4C()
{
  v1 = *(v0 + 108);
  if (v1 <= 1)
  {
    if (*(v0 + 108))
    {
      *(v0 + 106) = 1;
      v2 = (v0 + 106);
      v3 = swift_task_alloc();
      *(v0 + 56) = v3;
      *v3 = v0;
      v4 = sub_1B49D0270;
    }

    else
    {
      *(v0 + 107) = 0;
      v2 = (v0 + 107);
      v3 = swift_task_alloc();
      *(v0 + 40) = v3;
      *v3 = v0;
      v4 = sub_1B49D013C;
    }

LABEL_12:
    v3[1] = v4;
    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    v10 = *(v0 + 16);

    return sub_1B49CD874(v10, v2, v8);
  }

  if (v1 == 2)
  {
    *(v0 + 105) = 2;
    v2 = (v0 + 105);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v4 = sub_1B49D03A4;
    goto LABEL_12;
  }

  if (v1 == 3)
  {
    *(v0 + 104) = 3;
    v2 = (v0 + 104);
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v4 = sub_1B49D04D8;
    goto LABEL_12;
  }

  v5 = *(v0 + 16);
  v5[1] = 0u;
  v5[2] = 0u;
  *v5 = 0u;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B49D013C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD82C, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B49D0270()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD844, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B49D03A4()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_1B49CD85C, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B49D04D8()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_1B49D060C, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B49D0624(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v4 + 440) = a1;
  *(v4 + 448) = v3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0) - 8) + 64) + 15;
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  v8 = type metadata accessor for InferenceResult();
  *(v4 + 472) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();
  v10 = *(*(sub_1B4D179BC() - 8) + 64) + 15;
  *(v4 + 504) = swift_task_alloc();
  v11 = sub_1B4D1777C();
  *(v4 + 512) = v11;
  v12 = *(v11 - 8);
  *(v4 + 520) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 156) = *a2;
  *(v4 + 552) = *(a2 + 8);
  *(v4 + 157) = *(a2 + 16);
  *(v4 + 560) = *(a2 + 24);
  *(v4 + 576) = *(a2 + 40);
  v14 = a3[1];
  *(v4 + 584) = *a3;
  *(v4 + 600) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1B49D0800, v3, 0);
}

uint64_t sub_1B49D0800()
{
  v83 = v0;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 576);
  v2 = *(v0 + 560);
  v3 = sub_1B4D17F6C();
  *(v0 + 616) = __swift_project_value_buffer(v3, qword_1EDC3CED0);

  v4 = sub_1B4D17F5C();
  v5 = sub_1B4D1873C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 156);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v77 = v8;
    *v7 = 136315138;
    *(v0 + 155) = v6;
    v9 = sub_1B4D181AC();
    v11 = sub_1B49558AC(v9, v10, &v77);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1B4953000, v4, v5, "[WorkoutVoiceSession] Announcing %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B8C7DDA0](v8, -1, -1);
    MEMORY[0x1B8C7DDA0](v7, -1, -1);
  }

  v12 = *(v0 + 560);
  v13 = *(v0 + 156);
  v14 = *(v0 + 544);
  v15 = *(v0 + 504);
  v16 = *(v0 + 448);
  sub_1B4D1776C();
  v17 = *(v16 + 216);
  sub_1B4D179AC();
  v18 = type metadata accessor for PromptFormatter();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = PromptFormatter.init(unitManager:timeZone:)(v17, v15);
  *(v0 + 624) = v21;
  v22 = sub_1B4C6E9B0(v12, v21);
  v24 = v23;
  v25 = *(v0 + 157);
  v26 = *(v0 + 552);
  v74 = v22;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v27 = sub_1B49C9238(v26, v25, v22, v24);
    }

    else
    {
      v27 = sub_1B4C64110(v26, v25, v22, v24);
    }
  }

  else if (v13)
  {
    v27 = sub_1B49DA600(v26, v25, v22, v24);
  }

  else
  {
    v27 = sub_1B49DD038(v26, v25, v22, v24);
  }

  v29 = v27;
  v30 = v28;
  v31 = *(v0 + 448);
  swift_beginAccess();
  v77 = *(v31 + 128);

  v32 = sub_1B4CD17C0();
  v34 = v33;

  v77 = v32;
  v78 = v34;

  MEMORY[0x1B8C7C620](v29, v30);

  v72 = v78;
  v73 = v77;
  swift_beginAccess();
  v35 = *(v31 + 128);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + 128) = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_1B4A1E1FC(0, *(v35 + 2) + 1, 1, v35);
    *(v31 + 128) = v35;
  }

  v38 = *(v35 + 2);
  v37 = *(v35 + 3);
  v39 = v38 + 1;
  v40 = v24;
  if (v38 >= v37 >> 1)
  {
    v67 = sub_1B4A1E1FC((v37 > 1), v38 + 1, 1, v35);
    v39 = v38 + 1;
    v35 = v67;
  }

  v41 = *(v0 + 576);
  v42 = *(v0 + 157);
  v43 = *(v0 + 552);
  v44 = *(v0 + 156);
  v45 = &v35[24 * v38];
  v69 = *(v0 + 584);
  v70 = *(v0 + 560);
  v68 = *(v0 + 600);
  *(v35 + 2) = v39;
  v45[32] = 1;
  *(v45 + 5) = v74;
  *(v45 + 6) = v40;
  *(v31 + 128) = v35;
  swift_endAccess();

  LOBYTE(v77) = v44;
  v78 = v43;
  v79 = v42;
  v80 = v70;
  v81 = v41;
  v82[1] = v68;
  v82[0] = v69;
  sub_1B49D1D08(&v77, v82, v0 + 304);
  v71 = *(v0 + 320);
  v75 = *(v0 + 304);
  v46 = *&aIntro_0[8 * v44];
  v47 = *(v0 + 336);
  v48 = *&aBreakthr[8 * v44 + 8];
  v49 = *(v0 + 576);
  v50 = qword_1EB8A6498;

  if (v50 != -1)
  {
    swift_once();
    v49 = *(v0 + 576);
  }

  v51 = *(v0 + 568);
  v52 = *(v0 + 448);
  v54 = qword_1EB8AC698;
  v53 = unk_1EB8AC6A0;

  v55 = sub_1B4BC2B00();
  *(v0 + 16) = v73;
  *(v0 + 24) = v72;
  *(v0 + 32) = v75;
  *(v0 + 48) = v71;
  *(v0 + 64) = v47;
  *(v0 + 72) = v54;
  *(v0 + 80) = v53;
  *(v0 + 88) = xmmword_1B4D1E130;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = v46;
  *(v0 + 128) = v48;
  *(v0 + 136) = v51;
  *(v0 + 144) = v49;
  *(v0 + 152) = v55 & 1;
  v56 = v52[25];
  v57 = v52[26];
  __swift_project_boxed_opaque_existential_1(v52 + 22, v56);
  v58 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v58;
  *(v0 + 281) = *(v0 + 137);
  v59 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v59;
  v60 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v60;
  v61 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v61;
  v62 = *(v57 + 8);
  v76 = (v62 + *v62);
  v63 = v62[1];
  v64 = swift_task_alloc();
  *(v0 + 632) = v64;
  *v64 = v0;
  v64[1] = sub_1B49D0DC4;
  v65 = *(v0 + 440);

  return v76(v65, v0 + 160, v56, v57);
}

uint64_t sub_1B49D0DC4()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v8 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v4 = *(v2 + 448);
    v5 = sub_1B49D15E4;
  }

  else
  {
    v6 = *(v2 + 448);
    sub_1B49D962C(v2 + 16);
    v5 = sub_1B49D0EEC;
    v4 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B49D0EEC()
{
  v93 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = v1[1];
  v87 = *v1;
  swift_beginAccess();
  v4 = *(v2 + 128);
  v89 = v3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 128) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v85 = *(v0 + 448);
    v4 = sub_1B4A1E1FC(0, *(v4 + 2) + 1, 1, v4);
    *(v85 + 128) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1B4A1E1FC((v6 > 1), v7 + 1, 1, v4);
  }

  v86 = *(v0 + 616);
  v8 = *(v0 + 576);
  v9 = *(v0 + 560);
  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 520);
  v13 = *(v0 + 512);
  v14 = *(v0 + 448);
  *(v4 + 2) = v7 + 1;
  v15 = &v4[24 * v7];
  v15[32] = 0;
  *(v15 + 5) = v87;
  *(v15 + 6) = v89;
  *(v14 + 128) = v4;
  swift_endAccess();
  (*(v12 + 16))(v11, v10, v13);

  v16 = sub_1B4D17F5C();
  v17 = sub_1B4D1873C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 156);
    v90 = *(v0 + 536);
    v19 = *(v0 + 528);
    v20 = *(v0 + 520);
    v21 = *(v0 + 512);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v92 = v23;
    *v22 = 136315394;
    *(v0 + 154) = v18;
    v24 = sub_1B4D181AC();
    v26 = sub_1B49558AC(v24, v25, &v92);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2048;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v28 = v27;
    v29 = *(v20 + 8);
    v29(v19, v21);
    v29(v90, v21);
    *(v22 + 14) = v28;
    _os_log_impl(&dword_1B4953000, v16, v17, "[WorkoutVoiceSession] Announced %s in %fs", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1B8C7DDA0](v23, -1, -1);
    MEMORY[0x1B8C7DDA0](v22, -1, -1);
  }

  else
  {
    v30 = *(v0 + 536);
    v31 = *(v0 + 520);
    v32 = *(v0 + 512);

    v29 = *(v31 + 8);
    v29(v30, v32);
  }

  v33 = *(v0 + 616);
  v34 = *(v0 + 576);
  v35 = *(v0 + 560);
  v36 = *(v0 + 488);
  v37 = *(v0 + 480);
  v38 = *(v0 + 440);
  sub_1B49D9F90(v38, *(v0 + 496), type metadata accessor for InferenceResult);
  sub_1B49D9F90(v38, v36, type metadata accessor for InferenceResult);
  sub_1B49D9F90(v38, v37, type metadata accessor for InferenceResult);

  v39 = sub_1B4D17F5C();
  v40 = sub_1B4D1873C();

  if (os_log_type_enabled(v39, v40))
  {
    v91 = v29;
    v41 = *(v0 + 156);
    v42 = *(v0 + 488);
    v43 = *(v0 + 496);
    v45 = *(v0 + 464);
    v44 = *(v0 + 472);
    v46 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v92 = v88;
    *v46 = 136315906;
    *(v0 + 153) = v41;
    v47 = sub_1B4D181AC();
    v49 = sub_1B49558AC(v47, v48, &v92);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2048;
    v50 = *(v43 + 16);
    sub_1B49DA04C(v43, type metadata accessor for InferenceResult);
    *(v46 + 14) = v50;
    *(v46 + 22) = 2048;
    sub_1B4974FBC(v42 + *(v44 + 24), v45, &qword_1EB8A6948, qword_1B4D1E1C0);
    sub_1B49DA04C(v42, type metadata accessor for InferenceResult);
    v51 = type metadata accessor for AnnounceUtteranceResult();
    v52 = *(*(v51 - 8) + 48);
    v53 = v52(v45, 1, v51);
    v54 = *(v0 + 464);
    if (v53 == 1)
    {
      sub_1B4975024(v54, &qword_1EB8A6948, qword_1B4D1E1C0);
      v55 = 0;
    }

    else
    {
      v55 = *v54;
      sub_1B49DA04C(v54, type metadata accessor for AnnounceUtteranceResult);
    }

    v65 = *(v0 + 480);
    v66 = *(v0 + 456);
    *(v46 + 24) = v55;
    *(v46 + 32) = 2048;
    sub_1B4974FBC(v65 + *(v44 + 24), v66, &qword_1EB8A6948, qword_1B4D1E1C0);
    sub_1B49DA04C(v65, type metadata accessor for InferenceResult);
    v67 = v52(v66, 1, v51);
    v68 = *(v0 + 456);
    if (v67 == 1)
    {
      sub_1B4975024(v68, &qword_1EB8A6948, qword_1B4D1E1C0);
      v69 = 0;
    }

    else
    {
      v69 = *(v68 + 24);
      sub_1B49DA04C(v68, type metadata accessor for AnnounceUtteranceResult);
    }

    v29 = v91;
    v70 = *(v0 + 624);
    v71 = *(v0 + 544);
    v72 = *(v0 + 520);
    v73 = *(v0 + 512);
    *(v46 + 34) = v69;
    _os_log_impl(&dword_1B4953000, v39, v40, "[WorkoutVoiceSession] Statistics for %s: inference=%fs, synthesis=%fs, playback=%fs", v46, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    MEMORY[0x1B8C7DDA0](v88, -1, -1);
    MEMORY[0x1B8C7DDA0](v46, -1, -1);

    v63 = v71;
    v64 = v73;
  }

  else
  {
    v56 = *(v0 + 624);
    v57 = *(v0 + 544);
    v58 = *(v0 + 520);
    v59 = *(v0 + 512);
    v61 = *(v0 + 488);
    v60 = *(v0 + 496);
    v62 = *(v0 + 480);

    sub_1B49DA04C(v62, type metadata accessor for InferenceResult);
    sub_1B49DA04C(v61, type metadata accessor for InferenceResult);
    sub_1B49DA04C(v60, type metadata accessor for InferenceResult);
    v63 = v57;
    v64 = v59;
  }

  v29(v63, v64);
  v74 = *(v0 + 544);
  v75 = *(v0 + 536);
  v76 = *(v0 + 528);
  v78 = *(v0 + 496);
  v77 = *(v0 + 504);
  v80 = *(v0 + 480);
  v79 = *(v0 + 488);
  v82 = *(v0 + 456);
  v81 = *(v0 + 464);

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_1B49D15E4()
{
  v1 = v0[80];
  v2 = v0[77];
  sub_1B49D962C((v0 + 2));
  v3 = v1;
  v4 = sub_1B4D17F5C();
  v5 = sub_1B4D1871C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[80];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B4953000, v4, v5, "Inference failed: %@", v7, 0xCu);
    sub_1B4975024(v8, &qword_1EB8A7478, &qword_1B4D1F190);
    MEMORY[0x1B8C7DDA0](v8, -1, -1);
    MEMORY[0x1B8C7DDA0](v7, -1, -1);
  }

  v11 = v0[56];

  swift_beginAccess();
  v12 = *(v11 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 128) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = v0[56];
    v12 = sub_1B4A1E1FC(0, *(v12 + 2) + 1, 1, v12);
    *(v27 + 128) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1B4A1E1FC((v14 > 1), v15 + 1, 1, v12);
  }

  v16 = v0[80];
  v17 = v0[78];
  v18 = v0[68];
  v19 = v0[67];
  v20 = v0[65];
  v21 = v0[64];
  v28 = v0[66];
  v29 = v0[63];
  v30 = v0[62];
  v31 = v0[61];
  v32 = v0[60];
  v33 = v0[58];
  v34 = v0[57];
  v22 = v0[56];
  *(v12 + 2) = v15 + 1;
  v23 = &v12[24 * v15];
  v23[32] = 0;
  strcpy(v23 + 40, "No response.");
  v23[53] = 0;
  *(v23 + 27) = -5120;
  *(v22 + 128) = v12;
  swift_endAccess();
  swift_willThrow();

  (*(v20 + 8))(v18, v21);

  v24 = v0[1];
  v25 = v0[80];

  return v24();
}

uint64_t sub_1B49D18B0(uint64_t a1)
{
  *(v2 + 32) = v1;
  *(v2 + 82) = *a1;
  *(v2 + 40) = *(a1 + 24);
  *(v2 + 56) = *(a1 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1B49D18E8, v1, 0);
}

uint64_t sub_1B49D18E8()
{
  v25 = v0;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = sub_1B4D17F6C();
  __swift_project_value_buffer(v3, qword_1EDC3CED0);

  v4 = sub_1B4D17F5C();
  v5 = sub_1B4D1873C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 82);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v0 + 81) = v8;
    v11 = sub_1B4D181AC();
    v13 = sub_1B49558AC(v11, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1B49558AC(v7, v6, &v24);
    _os_log_impl(&dword_1B4953000, v4, v5, "[WorkoutVoiceSession] Cancelling announcement for %s (%s)", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C7DDA0](v10, -1, -1);
    MEMORY[0x1B8C7DDA0](v9, -1, -1);
  }

  v15 = *(v0 + 48);
  v14 = *(v0 + 56);
  v16 = *(v0 + 32);
  v17 = v16[25];
  v18 = v16[26];
  __swift_project_boxed_opaque_existential_1(v16 + 22, v17);
  *(v0 + 16) = v15;
  *(v0 + 24) = v14;
  v19 = *(v18 + 16);
  v23 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  *(v0 + 64) = v21;
  *v21 = v0;
  v21[1] = sub_1B49D1BB8;

  return v23(v0 + 80, v0 + 16, v17, v18);
}

uint64_t sub_1B49D1BB8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1B49D1CEC;
  }

  else
  {
    v5 = sub_1B49D1CD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

void sub_1B49D1D08(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  if (v4 == 1)
  {
    *a3 = xmmword_1B4D1A640;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    return;
  }

  v5 = *a1;
  v6 = a1[3];
  v7 = a1[5];
  v8 = *a2;
  v9 = a2[2];
  v10 = a1[1] - 24;
  v11 = v10 > 0x2E;
  v12 = (1 << v10) & 0x400010000001;
  if (v11 || v12 == 0)
  {
    v14 = 2 * (v5 == 3);
  }

  else
  {
    v14 = v5 != 3;
  }

  v34 = v14;
  v35 = a2[3];
  sub_1B49B3D28(v8, v4);
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v15 = sub_1B4D17F6C();
  __swift_project_value_buffer(v15, qword_1EDC3CED0);

  v16 = sub_1B4D17F5C();
  v17 = sub_1B4D1873C();

  if (!os_log_type_enabled(v16, v17))
  {

    v29 = v34;
    goto LABEL_15;
  }

  v33 = v8;
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v36 = v19;
  *v18 = 136315650;
  v20 = sub_1B4D181AC();
  v22 = sub_1B49558AC(v20, v21, &v36);

  *(v18 + 4) = v22;
  *(v18 + 12) = 2080;
  v23 = FILocalizedNameForIndoorAgnosticActivityType();
  if (v23)
  {
    v24 = v23;
    v25 = sub_1B4D1818C();
    v27 = v26;

    v28 = sub_1B49558AC(v25, v27, &v36);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    v29 = v34;
    v30 = sub_1B4D181AC();
    v32 = sub_1B49558AC(v30, v31, &v36);

    *(v18 + 24) = v32;
    _os_log_impl(&dword_1B4953000, v16, v17, "[WorkoutVoiceSession] Announcing %s for workout type %s with intensity %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C7DDA0](v19, -1, -1);
    MEMORY[0x1B8C7DDA0](v18, -1, -1);

    v8 = v33;
LABEL_15:
    *a3 = v8;
    *(a3 + 8) = v4;
    *(a3 + 16) = v9;
    *(a3 + 24) = v35;
    *(a3 + 32) = v29;
    return;
  }

  __break(1u);
}

uint64_t sub_1B49D1FD4(_BYTE *a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  v5 = sub_1B4D1777C();
  *(v3 + 48) = v5;
  v6 = *(v5 - 8);
  *(v3 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v8 = *(type metadata accessor for FitnessContextQueryRequest() - 8);
  *(v3 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 146) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B49D2124, v2, 0);
}

uint64_t sub_1B49D2124()
{
  v68 = v0;
  if (qword_1EDC3CEC8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = sub_1B4D17F6C();
    *(v0 + 112) = __swift_project_value_buffer(v1, qword_1EDC3CED0);
    v2 = sub_1B4D17F5C();
    v3 = sub_1B4D1873C();
    v65 = v0;
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 146);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v67[0] = v6;
      *v5 = 136315138;
      *(v0 + 145) = v4;
      v7 = sub_1B4D181AC();
      v9 = sub_1B49558AC(v7, v8, v67);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1B4953000, v2, v3, "[WorkoutVoiceSession] Fetching context for %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1B8C7DDA0](v6, -1, -1);
      MEMORY[0x1B8C7DDA0](v5, -1, -1);
    }

    v12 = *(v0 + 32);
    v11 = *(v0 + 40);
    LOBYTE(v67[0]) = *(v0 + 146);
    v10 = v67[0];
    v13 = sub_1B4A6A1F8(v67);
    v14 = swift_task_alloc();
    *(v14 + 16) = v11;
    *(v14 + 24) = v12;
    *(v14 + 32) = v10;
    v15 = sub_1B4CB3E98(sub_1B49D9F70, v14, v13);

    v16 = sub_1B4A03048(v15);

    *(v0 + 16) = *(v11 + 112);

    v18 = sub_1B49D4BD8(v17, v0 + 16);
    sub_1B49A9A10(v18);
    if (*(v18 + 16) <= *(v16 + 16) >> 3)
    {
      v67[0] = v16;
      sub_1B49D31F8(v18);

      v19 = v67[0];
    }

    else
    {
      v19 = sub_1B49D3400(v18, v16);
    }

    *(v0 + 120) = v19;
    if (!*(v19 + 16))
    {
      break;
    }

    v20 = v19 + 56;
    v21 = *(v0 + 88);
    v62 = *(v0 + 96);
    v22 = -1;
    v23 = -1 << *(v19 + 32);
    if (-v23 < 64)
    {
      v22 = ~(-1 << -v23);
    }

    v24 = v22 & *(v19 + 56);
    v25 = (63 - v23) >> 6;

    v26 = 0;
    v63 = v19;
    v61 = v21;
    if (v24)
    {
      while (2)
      {
        v27 = v26;
LABEL_17:
        v29 = *(v0 + 96);
        v28 = *(v0 + 104);
        v30 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        sub_1B49D9F90(*(v19 + 48) + *(v21 + 72) * (v30 | (v27 << 6)), v28, type metadata accessor for FitnessContextQueryRequest);
        sub_1B49DA2F8(v28, v29, type metadata accessor for FitnessContextQueryRequest);
        v31 = sub_1B4D17F5C();
        v32 = sub_1B4D1873C();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 96);
        if (v33)
        {
          v35 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v67[0] = v64;
          *v35 = 136315138;
          v36 = *v34;
          v37 = *(v62 + 8);

          sub_1B49DA04C(v34, type metadata accessor for FitnessContextQueryRequest);
          v38 = sub_1B49558AC(v36, v37, v67);
          v19 = v63;

          *(v35 + 4) = v38;
          v21 = v61;
          _os_log_impl(&dword_1B4953000, v31, v32, "[WorkoutVoiceSession] Found %s to query", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v64);
          MEMORY[0x1B8C7DDA0](v64, -1, -1);
          v39 = v35;
          v0 = v65;
          MEMORY[0x1B8C7DDA0](v39, -1, -1);

          v26 = v27;
          if (v24)
          {
            continue;
          }
        }

        else
        {

          sub_1B49DA04C(v34, type metadata accessor for FitnessContextQueryRequest);
          v26 = v27;
          if (v24)
          {
            continue;
          }
        }

        break;
      }
    }

    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {

        v40 = sub_1B4D17F5C();
        v41 = sub_1B4D1873C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 134217984;
          *(v42 + 4) = *(v19 + 16);

          _os_log_impl(&dword_1B4953000, v40, v41, "[WorkoutVoiceSession] Overall found %ld requests to query, requesting new context", v42, 0xCu);
          MEMORY[0x1B8C7DDA0](v42, -1, -1);
        }

        else
        {
        }

        v54 = *(v0 + 80);
        v55 = *(v0 + 40);
        sub_1B4D1776C();
        v56 = v55[20];
        v57 = v55[21];
        __swift_project_boxed_opaque_existential_1(v55 + 17, v56);
        v58 = *(v57 + 8);
        v66 = (v58 + *v58);
        v59 = v58[1];
        v60 = swift_task_alloc();
        *(v0 + 128) = v60;
        *v60 = v0;
        v60[1] = sub_1B49D2854;

        return v66(v0 + 24, v19, v56, v57);
      }

      v24 = *(v20 + 8 * v27);
      ++v26;
      if (v24)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  v43 = sub_1B4D17F5C();
  v44 = sub_1B4D1873C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1B4953000, v43, v44, "[WorkoutVoiceSession] Found no requests to query. Skipping context update", v45, 2u);
    MEMORY[0x1B8C7DDA0](v45, -1, -1);
  }

  v46 = *(v0 + 96);
  v47 = *(v0 + 104);
  v49 = *(v0 + 72);
  v48 = *(v0 + 80);
  v50 = *(v0 + 64);
  v51 = *(v0 + 16);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1B49D2854()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 40);

  if (v0)
  {
    v7 = sub_1B49D2C50;
  }

  else
  {
    v7 = sub_1B49D299C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B49D299C()
{
  v41 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 146);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v40 = *(v0 + 24);
  v8 = v40;
  v39 = v2;
  sub_1B49D9494(&v40, &v39);
  sub_1B49975EC(v8);
  v9 = *(v7 + 112);
  *(v7 + 112) = *(v0 + 16);

  (*(v6 + 16))(v4, v3, v5);
  v10 = sub_1B4D17F5C();
  v11 = sub_1B4D1873C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 146);
    v13 = *(v0 + 72);
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    v37 = *(v0 + 48);
    v38 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136315394;
    *(v0 + 144) = v12;
    v18 = sub_1B4D181AC();
    v20 = sub_1B49558AC(v18, v19, &v40);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v22 = v21;
    v23 = *(v15 + 8);
    v23(v14, v37);
    v23(v13, v37);
    *(v16 + 14) = v22;
    _os_log_impl(&dword_1B4953000, v10, v11, "[WorkoutVoiceSession] Fetched context for %s in %fs", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B8C7DDA0](v17, -1, -1);
    MEMORY[0x1B8C7DDA0](v16, -1, -1);

    v23(v38, v37);
  }

  else
  {
    v25 = *(v0 + 72);
    v24 = *(v0 + 80);
    v26 = *(v0 + 48);
    v27 = *(v0 + 56);

    v28 = *(v27 + 8);
    v28(v25, v26);
    v28(v24, v26);
  }

  v29 = *(v0 + 96);
  v30 = *(v0 + 104);
  v32 = *(v0 + 72);
  v31 = *(v0 + 80);
  v33 = *(v0 + 64);
  v34 = *(v0 + 16);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1B49D2C50()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[8];
  (*(v0[7] + 8))(v0[10], v0[6]);
  v5 = v0[2];

  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

uint64_t sub_1B49D2D10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  result = sub_1B49DA154(v7, a2, &v10, v7, v8);
  *a4 = result;
  return result;
}

uint64_t sub_1B49D2DB0@<X0>(uint64_t a1@<X1>, Swift::String *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = FitnessContextQueryIdentifier.makeQueryKey()();
  Request = type metadata accessor for FitnessContextQueryRequest();
  result = sub_1B49D9F90(a1, a2 + *(Request + 20), type metadata accessor for FitnessContextQueryDescriptor);
  *a2 = v4;
  return result;
}

uint64_t sub_1B49D2E80(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for FitnessContextQueryDescriptor();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t WorkoutVoiceSession.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

  v4 = *(v0 + 224);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t WorkoutVoiceSession.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

  v4 = *(v0 + 224);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B49D3004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B49E9EC4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B498A3C8();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for WorkoutMetadata();
    v22 = *(v15 - 8);
    sub_1B49DA2F8(v14 + *(v22 + 72) * v9, a3, type metadata accessor for WorkoutMetadata);
    sub_1B4B7FC18(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for WorkoutMetadata();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

void *sub_1B49D3170(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1B49D6FC8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1B49D31F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74A8, &qword_1B4D1E2C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  Request = type metadata accessor for FitnessContextQueryRequest();
  v8 = *(Request - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](Request - 8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      sub_1B49D9F90(*(a1 + 48) + *(v8 + 72) * (v18 | (v17 << 6)), v11, type metadata accessor for FitnessContextQueryRequest);
      sub_1B49D3F0C(v11, v6);
      sub_1B49DA04C(v11, type metadata accessor for FitnessContextQueryRequest);
      sub_1B4975024(v6, &qword_1EB8A74A8, &qword_1B4D1E2C0);
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B49D3400(uint64_t a1, uint64_t a2)
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74A8, &qword_1B4D1E2C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v82 - v10;
  Request = type metadata accessor for FitnessContextQueryRequest();
  v12 = *(Request - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](Request);
  v15 = (&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v99 = (&v82 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v82 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v96 = (&v82 - v22);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
LABEL_64:
    v75 = *MEMORY[0x1E69E9840];
    return a2;
  }

  v87 = v8;
  v83 = 0;
  v24 = a1 + 56;
  v23 = *(a1 + 56);
  v25 = -1 << *(a1 + 32);
  v94 = ~v25;
  if (-v25 < 64)
  {
    v26 = ~(-1 << -v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v23;
  v88 = (63 - v25) >> 6;
  v93 = (v12 + 7);
  v92 = (v12 + 6);
  v101 = (a2 + 56);

  v29 = 0;
  v85 = v12;
  v91 = a1;
  v100 = Request;
  for (i = a2; ; a2 = i)
  {
    v30 = v27;
    v31 = v29;
    v102 = v27;
    v98 = v29;
    if (v27)
    {
LABEL_16:
      v35 = (v30 - 1) & v30;
      v36 = v84;
      sub_1B49D9F90(*(a1 + 48) + v12[9] * (__clz(__rbit64(v30)) | (v31 << 6)), v84, type metadata accessor for FitnessContextQueryRequest);
      v37 = 0;
      v33 = v31;
    }

    else
    {
      if (v88 <= v29 + 1)
      {
        v32 = v29 + 1;
      }

      else
      {
        v32 = v88;
      }

      v33 = v32 - 1;
      v34 = v29;
      while (1)
      {
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_67;
        }

        if (v31 >= v88)
        {
          break;
        }

        v30 = *(v24 + 8 * v31);
        ++v34;
        if (v30)
        {
          v12 = v85;
          goto LABEL_16;
        }
      }

      v35 = 0;
      v37 = 1;
      v36 = v84;
    }

    v90 = *v93;
    v90(v36, v37, 1, Request);
    v104 = a1;
    v105 = v24;
    v106 = v94;
    v107 = v33;
    v108 = v35;
    v89 = *v92;
    if (v89(v36, 1, Request) == 1)
    {
      sub_1B4975024(v36, &qword_1EB8A74A8, &qword_1B4D1E2C0);
      sub_1B49B75FC();
      goto LABEL_64;
    }

    v98 = v35;
    v38 = v96;
    sub_1B49DA2F8(v36, v96, type metadata accessor for FitnessContextQueryRequest);
    v39 = *(a2 + 40);
    sub_1B4D18E8C();
    v40 = *v38;
    v41 = a2;
    v42 = v38[1];
    sub_1B4D1820C();
    v95 = *(Request + 20);
    FitnessContextQueryDescriptor.hash(into:)(v103);
    v43 = sub_1B4D18EDC();
    v44 = -1 << *(v41 + 32);
    v27 = v43 & ~v44;
    v2 = v27 >> 6;
    v31 = 1 << v27;
    if (((1 << v27) & v101[v27 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1B49DA04C(v96, type metadata accessor for FitnessContextQueryRequest);
    v29 = v33;
    v27 = v98;
    Request = v100;
    v12 = v85;
    a1 = v91;
  }

  v45 = ~v44;
  v102 = v85[9];
  while (1)
  {
    sub_1B49D9F90(*(i + 48) + v102 * v27, v20, type metadata accessor for FitnessContextQueryRequest);
    v46 = *v20 == v40 && v20[1] == v42;
    if (v46 || (sub_1B4D18DCC()) && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v20 + *(v100 + 20), v96 + v95))
    {
      break;
    }

    sub_1B49DA04C(v20, type metadata accessor for FitnessContextQueryRequest);
    v27 = (v27 + 1) & v45;
    v2 = v27 >> 6;
    v31 = 1 << v27;
    if ((v101[v27 >> 6] & (1 << v27)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_1B49DA04C(v20, type metadata accessor for FitnessContextQueryRequest);
  v47 = sub_1B49DA04C(v96, type metadata accessor for FitnessContextQueryRequest);
  a2 = i;
  v48 = *(i + 32);
  v84 = ((1 << v48) + 63) >> 6;
  v28 = 8 * v84;
  a1 = v91;
  if ((v48 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v85 = &v82;
    MEMORY[0x1EEE9AC00](v47);
    v50 = &v82 - ((v49 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v50, v101, v49);
    v51 = *&v50[8 * v2] & ~v31;
    v52 = *(a2 + 16);
    v96 = v50;
    *&v50[8 * v2] = v51;
    v53 = v52 - 1;
    v31 = v87;
    v27 = v100;
    v54 = v88;
    v55 = v98;
    v86 = v24;
LABEL_31:
    v95 = v53;
    while (v55)
    {
      v56 = v33;
LABEL_43:
      v59 = __clz(__rbit64(v55));
      v60 = (v55 - 1) & v55;
      sub_1B49D9F90(*(a1 + 48) + (v59 | (v56 << 6)) * v102, v31, type metadata accessor for FitnessContextQueryRequest);
      v61 = 0;
LABEL_44:
      v90(v31, v61, 1, v27);
      v104 = a1;
      v105 = v24;
      v106 = v94;
      v107 = v33;
      v108 = v60;
      if (v89(v31, 1, v27) == 1)
      {
        sub_1B4975024(v31, &qword_1EB8A74A8, &qword_1B4D1E2C0);
        a2 = sub_1B49D463C(v96, v84, v95, a2);
        goto LABEL_62;
      }

      v98 = v60;
      v62 = v99;
      sub_1B49DA2F8(v31, v99, type metadata accessor for FitnessContextQueryRequest);
      v63 = *(a2 + 40);
      sub_1B4D18E8C();
      v64 = *v62;
      v2 = v62[1];
      sub_1B4D1820C();
      v65 = *(v27 + 20);
      FitnessContextQueryDescriptor.hash(into:)(v103);
      v66 = sub_1B4D18EDC();
      v67 = a2;
      v68 = -1 << *(a2 + 32);
      v69 = v66 & ~v68;
      v70 = v69 >> 6;
      v71 = 1 << v69;
      if (((1 << v69) & v101[v69 >> 6]) != 0)
      {
        v72 = ~v68;
        while (1)
        {
          sub_1B49D9F90(*(v67 + 48) + v69 * v102, v15, type metadata accessor for FitnessContextQueryRequest);
          v73 = *v15 == v64 && v15[1] == v2;
          if (v73 || (sub_1B4D18DCC()) && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v15 + *(v100 + 20), v99 + v65))
          {
            break;
          }

          sub_1B49DA04C(v15, type metadata accessor for FitnessContextQueryRequest);
          v69 = (v69 + 1) & v72;
          v70 = v69 >> 6;
          v71 = 1 << v69;
          if ((v101[v69 >> 6] & (1 << v69)) == 0)
          {
            goto LABEL_32;
          }
        }

        sub_1B49DA04C(v15, type metadata accessor for FitnessContextQueryRequest);
        sub_1B49DA04C(v99, type metadata accessor for FitnessContextQueryRequest);
        v74 = v96[v70];
        v96[v70] = v74 & ~v71;
        v46 = (v74 & v71) == 0;
        a2 = v67;
        a1 = v91;
        v24 = v86;
        v31 = v87;
        v27 = v100;
        v54 = v88;
        v55 = v98;
        if (!v46)
        {
          v53 = v95 - 1;
          if (__OFSUB__(v95, 1))
          {
            __break(1u);
          }

          if (v95 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_31;
        }
      }

      else
      {
LABEL_32:
        sub_1B49DA04C(v99, type metadata accessor for FitnessContextQueryRequest);
        a2 = v67;
        a1 = v91;
        v24 = v86;
        v31 = v87;
        v27 = v100;
        v54 = v88;
        v55 = v98;
      }
    }

    v57 = v54 <= v33 + 1 ? v33 + 1 : v54;
    v58 = v57 - 1;
    while (1)
    {
      v56 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v56 >= v54)
      {
        v60 = 0;
        v61 = 1;
        v33 = v58;
        goto LABEL_44;
      }

      v55 = *(v24 + 8 * v56);
      ++v33;
      if (v55)
      {
        v33 = v56;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v77 = v28;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v78 = swift_slowAlloc();
  memcpy(v78, v101, v77);
  v79 = v83;
  sub_1B49D41A4(v78, v84, a2, v27, &v104);
  v81 = v80;

  if (!v79)
  {

    MEMORY[0x1B8C7DDA0](v78, -1, -1);
    v94 = v106;
    a2 = v81;
LABEL_62:
    sub_1B49B75FC();
    goto LABEL_64;
  }

  result = MEMORY[0x1B8C7DDA0](v78, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B49D3F0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  Request = type metadata accessor for FitnessContextQueryRequest();
  v27 = *(Request - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = v2;
  v8 = *v2;
  v9 = *(*v2 + 40);
  sub_1B4D18E8C();
  v10 = *a1;
  v11 = a1[1];
  sub_1B4D1820C();
  v28 = a1;
  v29 = Request;
  v12 = *(Request + 20);
  FitnessContextQueryDescriptor.hash(into:)(v30);
  v13 = sub_1B4D18EDC();
  v14 = -1 << *(v8 + 32);
  v15 = v13 & ~v14;
  if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return (*(v27 + 56))(v26, 1, 1, v29);
  }

  v16 = ~v14;
  v17 = *(v27 + 72);
  while (1)
  {
    sub_1B49D9F90(*(v8 + 48) + v17 * v15, v7, type metadata accessor for FitnessContextQueryRequest);
    v18 = *v7 == v10 && v7[1] == v11;
    if (v18 || (sub_1B4D18DCC()) && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v7 + *(v29 + 20), v28 + v12))
    {
      break;
    }

    sub_1B49DA04C(v7, type metadata accessor for FitnessContextQueryRequest);
    v15 = (v15 + 1) & v16;
    if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return (*(v27 + 56))(v26, 1, 1, v29);
    }
  }

  sub_1B49DA04C(v7, type metadata accessor for FitnessContextQueryRequest);
  v20 = v25;
  v21 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v20;
  v30[0] = *v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B4A00884();
    v23 = v30[0];
  }

  v24 = v26;
  sub_1B49DA2F8(*(v23 + 48) + v17 * v15, v26, type metadata accessor for FitnessContextQueryRequest);
  sub_1B49D4920(v15);
  *v20 = v30[0];
  return (*(v27 + 56))(v24, 0, 1, v29);
}

void sub_1B49D41A4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v51 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74A8, &qword_1B4D1E2C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v51 - v11;
  Request = type metadata accessor for FitnessContextQueryRequest();
  v13 = *(*(Request - 8) + 64);
  MEMORY[0x1EEE9AC00](Request);
  v15 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v60 = (&v51 - v17);
  v18 = *(a3 + 16);
  v19 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v20 = *(a1 + v19) & ((-1 << a4) - 1);
  v53 = a1;
  v54 = v12;
  *(a1 + v19) = v20;
  v21 = v18 - 1;
  v57 = (v22 + 56);
  v58 = v22;
  v55 = a5;
  v56 = (v22 + 48);
  v63 = a3;
  v61 = a3 + 56;
  while (2)
  {
    v52 = v21;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_14;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_33;
        }

        v28 = a5[3];
LABEL_13:
        v32 = (v27 - 1) & v27;
        sub_1B49D9F90(*(v23 + 48) + *(v58 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, type metadata accessor for FitnessContextQueryRequest);
        v33 = 0;
        v31 = v28;
LABEL_14:
        v34 = Request;
        (*v57)(v12, v33, 1, Request);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v56)(v12, 1, v34) == 1)
        {
          sub_1B4975024(v12, &qword_1EB8A74A8, &qword_1B4D1E2C0);
          v50 = v63;

          sub_1B49D463C(v53, v51, v52, v50);
          return;
        }

        v35 = v60;
        sub_1B49DA2F8(v12, v60, type metadata accessor for FitnessContextQueryRequest);
        v36 = v63;
        v37 = *(v63 + 40);
        sub_1B4D18E8C();
        v38 = *v35;
        v39 = v35[1];
        sub_1B4D1820C();
        v40 = *(v34 + 20);
        FitnessContextQueryDescriptor.hash(into:)(v62);
        v41 = sub_1B4D18EDC();
        v42 = -1 << *(v36 + 32);
        v43 = v41 & ~v42;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v61 + 8 * (v43 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_1B49DA04C(v60, type metadata accessor for FitnessContextQueryRequest);
        v12 = v54;
        a5 = v55;
      }

      v46 = ~v42;
      v47 = *(v58 + 72);
      while (1)
      {
        sub_1B49D9F90(*(v63 + 48) + v47 * v43, v15, type metadata accessor for FitnessContextQueryRequest);
        v48 = *v15 == v38 && v15[1] == v39;
        if (v48 || (sub_1B4D18DCC()) && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v15 + *(Request + 20), v60 + v40))
        {
          break;
        }

        sub_1B49DA04C(v15, type metadata accessor for FitnessContextQueryRequest);
        v43 = (v43 + 1) & v46;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if ((*(v61 + 8 * (v43 >> 6)) & (1 << v43)) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_1B49DA04C(v15, type metadata accessor for FitnessContextQueryRequest);
      sub_1B49DA04C(v60, type metadata accessor for FitnessContextQueryRequest);
      v12 = v54;
      v49 = v53[v44];
      v53[v44] = v49 & ~v45;
      a5 = v55;
    }

    while ((v49 & v45) == 0);
    v21 = v52 - 1;
    if (__OFSUB__(v52, 1))
    {
LABEL_33:
      __break(1u);
      return;
    }

    if (v52 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1B49D463C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Request = type metadata accessor for FitnessContextQueryRequest();
  v36 = *(Request - 8);
  v37 = Request;
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B0, &qword_1B4D1E2C8);
  result = sub_1B4D1892C();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v35 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = *(a4 + 48);
    v21 = *(v36 + 72);
    sub_1B49D9F90(v20 + v21 * (v17 | (v15 << 6)), v11, type metadata accessor for FitnessContextQueryRequest);
    v22 = *(v12 + 40);
    sub_1B4D18E8C();
    v23 = *v11;
    v24 = v11[1];
    sub_1B4D1820C();
    v25 = v11 + *(v37 + 20);
    FitnessContextQueryDescriptor.hash(into:)(v38);
    result = sub_1B4D18EDC();
    v26 = -1 << *(v12 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = sub_1B49DA2F8(v11, *(v12 + 48) + v29 * v21, type metadata accessor for FitnessContextQueryRequest);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
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

void sub_1B49D4920(unint64_t a1)
{
  Request = type metadata accessor for FitnessContextQueryRequest();
  v4 = *(Request - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = sub_1B4D188EC();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v28 = v9;
      v15 = (v14 + 1) & v12;
      v16 = *(v4 + 72);
      while (1)
      {
        v17 = v16 * v11;
        sub_1B49D9F90(*(v8 + 48) + v16 * v11, v7, type metadata accessor for FitnessContextQueryRequest);
        v18 = *(v8 + 40);
        sub_1B4D18E8C();
        v19 = *v7;
        v20 = v7[1];
        sub_1B4D1820C();
        v21 = v7 + *(Request + 20);
        FitnessContextQueryDescriptor.hash(into:)(v29);
        v22 = sub_1B4D18EDC();
        sub_1B49DA04C(v7, type metadata accessor for FitnessContextQueryRequest);
        v23 = v22 & v12;
        if (a1 >= v15)
        {
          break;
        }

        if (v23 < v15)
        {
          goto LABEL_11;
        }

LABEL_12:
        v24 = v16 * a1;
        if ((v16 * a1) < v17 || *(v8 + 48) + v16 * a1 >= *(v8 + 48) + v17 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v11;
          if (v24 == v17)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v11;
LABEL_6:
        v11 = (v11 + 1) & v12;
        if (((*(v28 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          v9 = v28;
          goto LABEL_19;
        }
      }

      if (v23 < v15)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v23)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_19:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v25 = *(v8 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v27;
    ++*(v8 + 36);
  }
}

uint64_t sub_1B49D4BD8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v193 = a2;
  v223 = *MEMORY[0x1E69E9840];
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v199 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v198 = v173 - v7;
  v197 = type metadata accessor for LocationCoordinate();
  v8 = *(*(v197 - 8) + 64);
  MEMORY[0x1EEE9AC00](v197);
  v196 = v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v195 = v173 - v11;
  v189 = type metadata accessor for RingsPropertiesQuery();
  v12 = *(*(v189 - 1) + 64);
  MEMORY[0x1EEE9AC00](v189);
  v207 = v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v208 = v173 - v15;
  v185 = type metadata accessor for WorkoutPropertiesQuery();
  v16 = *(*(v185 - 8) + 64);
  MEMORY[0x1EEE9AC00](v185);
  v203 = v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v173 - v19;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v21 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v23 = v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v210 = v173 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v173 - v27;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7300, &unk_1B4D1D7A0);
  v29 = *(*(v209 - 8) + 64);
  MEMORY[0x1EEE9AC00](v209);
  v31 = v173 - v30;
  v32 = type metadata accessor for FitnessContextQueryResult();
  v212 = *(v32 - 8);
  v213 = v32;
  v33 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v219 = v173 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for FitnessContextQueryRequest();
  v192 = *(Request - 8);
  v35 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v217 = v173 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v37) = *(a1 + 32);
  v174 = ((1 << v37) + 63) >> 6;
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_362;
  }

LABEL_2:
  v173[2] = v3;
  v173[1] = v173;
  MEMORY[0x1EEE9AC00](v36);
  v184 = v173 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v184, v38);
  v190 = 0;
  v39 = 0;
  v40 = *(a1 + 56);
  v183 = a1 + 56;
  v41 = 1 << *(a1 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v40;
  v182 = (v41 + 63) >> 6;
  v194 = (v5 + 8);
  v202 = v20;
  v191 = a1;
  v205 = v23;
  v204 = v28;
  v220 = v31;
  while (1)
  {
    while (1)
    {
      if (v43)
      {
        v200 = (v43 - 1) & v43;
        v201 = v39;
        v5 = __clz(__rbit64(v43)) | (v39 << 6);
      }

      else
      {
        v44 = v39;
        do
        {
          v45 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_361;
          }

          if (v45 >= v182)
          {
            goto LABEL_358;
          }

          v46 = *(v183 + 8 * v45);
          ++v44;
        }

        while (!v46);
        v200 = (v46 - 1) & v46;
        v201 = v45;
        v5 = __clz(__rbit64(v46)) | (v45 << 6);
      }

      sub_1B49D9F90(*(a1 + 48) + *(v192 + 72) * v5, v217, type metadata accessor for FitnessContextQueryRequest);
      v47 = *(*v193 + 16);

      v215 = v47;
      if (v47)
      {
        break;
      }

LABEL_5:

      sub_1B49DA04C(v217, type metadata accessor for FitnessContextQueryRequest);
      a1 = v191;
      v39 = v201;
      v43 = v200;
    }

    v188 = v5;
    v49 = 0;
    v28 = v209;
    v214 = v48;
LABEL_17:
    if (v49 >= *(v48 + 16))
    {
      __break(1u);
LABEL_361:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_362:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        goto LABEL_365;
      }

      goto LABEL_2;
    }

    v59 = v48 + ((*(v212 + 80) + 32) & ~*(v212 + 80));
    v60 = *(v212 + 72);
    v218 = v49;
    v61 = v219;
    sub_1B49D9F90(v59 + v60 * v49, v219, type metadata accessor for FitnessContextQueryResult);
    v3 = *(v213 + 20);
    a1 = *(Request + 20);
    v62 = *(v28 + 12);
    v63 = v61 + v3;
    v31 = v220;
    sub_1B49D9F90(v63, v220, type metadata accessor for FitnessContextQueryDescriptor);
    sub_1B49D9F90(v217 + a1, &v31[v62], type metadata accessor for FitnessContextQueryDescriptor);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 9)
    {
      break;
    }

    v31 = v220;
    v23 = v205;
    sub_1B49D9F90(v220, v205, type metadata accessor for FitnessContextQueryDescriptor);
    if (swift_getEnumCaseMultiPayload() != 9)
    {
      v75 = type metadata accessor for LocationCoordinate;
      v76 = v23;
      goto LABEL_103;
    }

    v50 = v195;
    sub_1B49DA2F8(v23, v195, type metadata accessor for LocationCoordinate);
    v51 = v196;
    sub_1B49DA2F8(&v31[v62], v196, type metadata accessor for LocationCoordinate);
    v52 = v197;
    v53 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v50 + *(v197 + 20)) longitude:*(v50 + *(v197 + 24))];
    v3 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v51 + *(v52 + 20)) longitude:*(v51 + *(v52 + 24))];
    [v53 distanceFromLocation_];
    a1 = [objc_opt_self() meters];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v54 = v198;
    sub_1B4D1741C();

    v5 = v199;
    sub_1B4D1742C();
    v56 = v55;
    v57 = v54;
    v20 = v202;
    (*v194)(v57, v5);
    v58 = v51;
    v28 = v209;
    sub_1B49DA04C(v58, type metadata accessor for LocationCoordinate);
    sub_1B49DA04C(v50, type metadata accessor for LocationCoordinate);
    sub_1B49DA04C(v31, type metadata accessor for FitnessContextQueryDescriptor);
    sub_1B49DA04C(v219, type metadata accessor for FitnessContextQueryResult);
    if (v56 >= 500.0)
    {
      goto LABEL_16;
    }

LABEL_355:

    sub_1B49DA04C(v217, type metadata accessor for FitnessContextQueryRequest);
    *&v184[(v188 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v188;
    v168 = __OFADD__(v190++, 1);
    a1 = v191;
    v39 = v201;
    v43 = v200;
    if (v168)
    {
      __break(1u);
LABEL_358:
      result = sub_1B49D463C(v184, v174, v190, a1);
      goto LABEL_359;
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
LABEL_104:
      v5 = v219;
      DescriptorO2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v219 + v3, v217 + a1);
      sub_1B4975024(v220, &qword_1EB8A7300, &unk_1B4D1D7A0);
      v88 = v5;
LABEL_105:
      sub_1B49DA04C(v88, type metadata accessor for FitnessContextQueryResult);
      if ((DescriptorO2eeoiySbAC_ACtFZ_0 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_355;
    }

    v31 = v220;
    v65 = v204;
    sub_1B49D9F90(v220, v204, type metadata accessor for FitnessContextQueryDescriptor);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B49DA04C(v65, type metadata accessor for WorkoutPropertiesQuery);
      v28 = v209;
      goto LABEL_104;
    }

    sub_1B49DA2F8(v65, v20, type metadata accessor for WorkoutPropertiesQuery);
    v89 = &v31[v62];
    v5 = v203;
    sub_1B49DA2F8(v89, v203, type metadata accessor for WorkoutPropertiesQuery);
    if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v20, v5) & 1) == 0)
    {
      v28 = v209;
      goto LABEL_277;
    }

    v90 = *(v185 + 20);
    v91 = &v20[v90];
    v92 = *&v20[v90];
    v93 = (v203 + v90);
    v31 = *v93;
    v206 = v92;
    v94 = *(v92 + 16);
    v28 = v209;
    if (v94 != *(v31 + 2))
    {
      goto LABEL_277;
    }

    v95 = *(v91 + 1);
    v96 = *(v91 + 2);
    a1 = *(v91 + 3);
    v97 = *(v91 + 4);
    v175 = *(v91 + 5);
    v99 = v93[1];
    v98 = v93[2];
    v3 = v93[3];
    v187 = v93[4];
    v186 = v93[5];
    v180 = v96;
    v177 = v99;
    v176 = v98;
    v181 = v3;
    v178 = a1;
    v179 = v97;
    if (v94)
    {

      v173[0] = v95;

      v23 = v175;

      if (v206 != v31)
      {
        v5 = 32;
        v95 = v173[0];
        while (1)
        {
          v100 = *(v206 + v5);
          if (v100 > 5)
          {
            if (*(v206 + v5) > 8u)
            {
              v106 = 0x7265626D65766F6ELL;
              if (v100 != 10)
              {
                v106 = 0x7265626D65636564;
              }

              if (v100 == 9)
              {
                v105 = 0x7265626F74636FLL;
              }

              else
              {
                v105 = v106;
              }

              if (v100 == 9)
              {
                a1 = 0xE700000000000000;
              }

              else
              {
                a1 = 0xE800000000000000;
              }
            }

            else if (v100 == 6)
            {
              a1 = 0xE400000000000000;
              v105 = 2037151082;
            }

            else if (v100 == 7)
            {
              a1 = 0xE600000000000000;
              v105 = 0x747375677561;
            }

            else
            {
              v105 = 0x65626D6574706573;
              a1 = 0xE900000000000072;
            }
          }

          else
          {
            v101 = 1701737834;
            if (v100 == 4)
            {
              v101 = 7954797;
            }

            v102 = 0xE300000000000000;
            if (v100 != 4)
            {
              v102 = 0xE400000000000000;
            }

            if (v100 == 3)
            {
              v101 = 0x6C69727061;
              v102 = 0xE500000000000000;
            }

            v103 = 0x7972617572626566;
            if (v100 != 1)
            {
              v103 = 0x686372616DLL;
            }

            v104 = 0xE800000000000000;
            if (v100 != 1)
            {
              v104 = 0xE500000000000000;
            }

            if (!*(v206 + v5))
            {
              v103 = 0x797261756E616ALL;
              v104 = 0xE700000000000000;
            }

            if (*(v206 + v5) <= 2u)
            {
              v105 = v103;
            }

            else
            {
              v105 = v101;
            }

            if (*(v206 + v5) <= 2u)
            {
              a1 = v104;
            }

            else
            {
              a1 = v102;
            }
          }

          v107 = v31[v5];
          if (v107 > 5)
          {
            if (v31[v5] > 8u)
            {
              if (v107 == 9)
              {
                v108 = 0xE700000000000000;
                if (v105 != 0x7265626F74636FLL)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v108 = 0xE800000000000000;
                if (v107 == 10)
                {
                  v109 = 1702260590;
                }

                else
                {
                  v109 = 1701012836;
                }

                if (v105 != (v109 | 0x7265626D00000000))
                {
                  goto LABEL_112;
                }
              }
            }

            else if (v107 == 6)
            {
              v108 = 0xE400000000000000;
              if (v105 != 2037151082)
              {
                goto LABEL_112;
              }
            }

            else if (v107 == 7)
            {
              v108 = 0xE600000000000000;
              if (v105 != 0x747375677561)
              {
                goto LABEL_112;
              }
            }

            else
            {
              v108 = 0xE900000000000072;
              if (v105 != 0x65626D6574706573)
              {
                goto LABEL_112;
              }
            }
          }

          else if (v31[v5] > 2u)
          {
            if (v107 == 3)
            {
              v108 = 0xE500000000000000;
              if (v105 != 0x6C69727061)
              {
                goto LABEL_112;
              }
            }

            else if (v107 == 4)
            {
              v108 = 0xE300000000000000;
              if (v105 != 7954797)
              {
                goto LABEL_112;
              }
            }

            else
            {
              v108 = 0xE400000000000000;
              if (v105 != 1701737834)
              {
                goto LABEL_112;
              }
            }
          }

          else if (v31[v5])
          {
            if (v107 == 1)
            {
              v108 = 0xE800000000000000;
              if (v105 != 0x7972617572626566)
              {
                goto LABEL_112;
              }
            }

            else
            {
              v108 = 0xE500000000000000;
              if (v105 != 0x686372616DLL)
              {
                goto LABEL_112;
              }
            }
          }

          else
          {
            v108 = 0xE700000000000000;
            if (v105 != 0x797261756E616ALL)
            {
              goto LABEL_112;
            }
          }

          if (a1 == v108)
          {

            goto LABEL_113;
          }

LABEL_112:
          v3 = sub_1B4D18DCC();

          if ((v3 & 1) == 0)
          {
LABEL_308:

            goto LABEL_309;
          }

LABEL_113:
          ++v5;
          if (!--v94)
          {
            goto LABEL_245;
          }
        }
      }

      v95 = v173[0];
    }

    else
    {

      v23 = v175;
    }

LABEL_245:
    v5 = v177;
    v129 = sub_1B4A0A568(v95, v177);
    v20 = v202;
    if ((v129 & 1) == 0)
    {

      goto LABEL_276;
    }

    v3 = v180;
    v130 = *(v180 + 16);
    if (v130 != *(v176 + 16))
    {

      goto LABEL_275;
    }

    if (v130)
    {
      a1 = v181;
      v131 = v178;
      if (v180 != v176)
      {
        v132 = 32;
        while (*(v180 + v132) == *(v176 + v132))
        {
          v132 += 8;
          if (!--v130)
          {
            goto LABEL_264;
          }
        }

LABEL_274:
        a1 = v131;

LABEL_275:

LABEL_276:

LABEL_277:
        v127 = type metadata accessor for WorkoutPropertiesQuery;
        sub_1B49DA04C(v203, type metadata accessor for WorkoutPropertiesQuery);
        v128 = v20;
        goto LABEL_278;
      }
    }

    else
    {
      a1 = v181;
      v131 = v178;
    }

LABEL_264:
    v141 = *(v131 + 16);
    if (v141 != *(a1 + 16))
    {
      goto LABEL_274;
    }

    if (v141 && v131 != a1)
    {
      v142 = 32;
      while (*(v131 + v142) == *(a1 + v142))
      {
        v142 += 8;
        if (!--v141)
        {
          goto LABEL_270;
        }
      }

      goto LABEL_274;
    }

LABEL_270:
    v143 = v23;
    v23 = v179;
    v5 = *(v179 + 2);
    v3 = v187;
    if (v5 != *(v187 + 16))
    {
      v5 = a1;
      a1 = v131;

      goto LABEL_276;
    }

    if (!v5 || v179 == v187)
    {
      v3 = v180;
      v23 = v143;
    }

    else
    {
      v144 = 32;
      v23 = v143;
      do
      {
        v146 = v179[v144];
        if (v146 <= 1)
        {
          if (v179[v144])
          {
            v147 = 0x726F6F646E69;
          }

          else
          {
            v147 = 0x6E776F6E6B6E75;
          }

          if (v179[v144])
          {
            v3 = 0xE600000000000000;
          }

          else
          {
            v3 = 0xE700000000000000;
          }
        }

        else if (v146 == 2)
        {
          v3 = 0xE700000000000000;
          v147 = 0x726F6F6474756FLL;
        }

        else if (v146 == 3)
        {
          v147 = 0x657461576E65706FLL;
          v3 = 0xE900000000000072;
        }

        else
        {
          v147 = 0x676E696D6D697773;
          v3 = 0xEC0000006C6F6F50;
        }

        v148 = *(v187 + v144);
        if (v148 <= 1)
        {
          if (*(v187 + v144))
          {
            v149 = 0x726F6F646E69;
          }

          else
          {
            v149 = 0x6E776F6E6B6E75;
          }

          if (*(v187 + v144))
          {
            a1 = 0xE600000000000000;
          }

          else
          {
            a1 = 0xE700000000000000;
          }
        }

        else if (v148 == 2)
        {
          a1 = 0xE700000000000000;
          v149 = 0x726F6F6474756FLL;
        }

        else if (v148 == 3)
        {
          v149 = 0x657461576E65706FLL;
          a1 = 0xE900000000000072;
        }

        else
        {
          v149 = 0x676E696D6D697773;
          a1 = 0xEC0000006C6F6F50;
        }

        if (v147 == v149 && v3 == a1)
        {
        }

        else
        {
          v145 = sub_1B4D18DCC();

          if ((v145 & 1) == 0)
          {
            goto LABEL_308;
          }
        }

        ++v144;
        --v5;
        a1 = v181;
        v3 = v180;
        v131 = v178;
      }

      while (v5);
    }

    v160 = *(v23 + 2);
    v161 = v186;
    if (v160 != *(v186 + 16))
    {
      v5 = a1;
      a1 = v131;

LABEL_309:

      v20 = v202;
      goto LABEL_277;
    }

    v20 = v202;
    v3 = v176;
    if (!v160 || v23 == v186)
    {
    }

    else
    {
      v162 = 0;
      do
      {
        if (*&v23[v162 + 32] != *(v161 + v162 + 32) || *&v23[v162 + 40] != *(v161 + v162 + 40))
        {
          v164 = v161;
          v165 = sub_1B4D18DCC();
          v161 = v164;
          v3 = v180;
          if ((v165 & 1) == 0)
          {
            v5 = v161;

            goto LABEL_276;
          }
        }

        v162 += 16;
        --v160;
      }

      while (v160);

      v3 = v176;
    }

    v5 = v185;
    if ((sub_1B4A0DD68(*&v20[*(v185 + 24)], *(v203 + *(v185 + 24))) & 1) == 0)
    {
      goto LABEL_277;
    }

    v166 = *(v5 + 28);
    v167 = *&v20[v166];
    v5 = v203;
    v221 = *(v203 + v166);
    v222 = v167;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74D0, &qword_1B4D1E2D0);
    a1 = sub_1B49DA0AC(&qword_1EB8A74D8, &qword_1EB8A74D0, &qword_1B4D1E2D0);
    sub_1B49DA100();
    DescriptorO2eeoiySbAC_ACtFZ_0 = sub_1B4D1865C();
    v3 = type metadata accessor for WorkoutPropertiesQuery;
    sub_1B49DA04C(v5, type metadata accessor for WorkoutPropertiesQuery);
    sub_1B49DA04C(v20, type metadata accessor for WorkoutPropertiesQuery);
    sub_1B49DA04C(v220, type metadata accessor for FitnessContextQueryDescriptor);
    v88 = v219;
    goto LABEL_105;
  }

  v31 = v220;
  sub_1B49D9F90(v220, v210, type metadata accessor for FitnessContextQueryDescriptor);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v75 = type metadata accessor for RingsPropertiesQuery;
    v76 = v210;
LABEL_103:
    sub_1B49DA04C(v76, v75);
    goto LABEL_104;
  }

  v3 = v208;
  sub_1B49DA2F8(v210, v208, type metadata accessor for RingsPropertiesQuery);
  v66 = &v31[v62];
  v5 = v207;
  sub_1B49DA2F8(v66, v207, type metadata accessor for RingsPropertiesQuery);
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v3, v5) & 1) == 0)
  {
    goto LABEL_243;
  }

  v67 = v189[5];
  v68 = (v208 + v67);
  v69 = *(v208 + v67);
  v70 = (v207 + v67);
  v71 = *v70;
  v72 = *(*v68 + 2);
  if (v72 != *(*v70 + 2))
  {
    goto LABEL_242;
  }

  v31 = *v68;
  v73 = v68[1];
  a1 = v68[2];
  v74 = v70[2];
  v23 = v73;
  v206 = v70[1];
  v187 = v74;
  v186 = a1;
  if (v72)
  {

    if (v31 == v71)
    {
      goto LABEL_185;
    }

    v5 = 32;
    while (1)
    {
      v78 = v31[v5];
      if (v78 > 5)
      {
        if (v31[v5] > 8u)
        {
          v84 = 0x7265626D65766F6ELL;
          if (v78 != 10)
          {
            v84 = 0x7265626D65636564;
          }

          if (v78 == 9)
          {
            v83 = 0x7265626F74636FLL;
          }

          else
          {
            v83 = v84;
          }

          if (v78 == 9)
          {
            a1 = 0xE700000000000000;
          }

          else
          {
            a1 = 0xE800000000000000;
          }
        }

        else if (v78 == 6)
        {
          a1 = 0xE400000000000000;
          v83 = 2037151082;
        }

        else if (v78 == 7)
        {
          a1 = 0xE600000000000000;
          v83 = 0x747375677561;
        }

        else
        {
          v83 = 0x65626D6574706573;
          a1 = 0xE900000000000072;
        }
      }

      else
      {
        v79 = 1701737834;
        if (v78 == 4)
        {
          v79 = 7954797;
        }

        v80 = 0xE300000000000000;
        if (v78 != 4)
        {
          v80 = 0xE400000000000000;
        }

        if (v78 == 3)
        {
          v79 = 0x6C69727061;
          v80 = 0xE500000000000000;
        }

        v81 = 0x7972617572626566;
        if (v78 != 1)
        {
          v81 = 0x686372616DLL;
        }

        v82 = 0xE800000000000000;
        if (v78 != 1)
        {
          v82 = 0xE500000000000000;
        }

        if (!v31[v5])
        {
          v81 = 0x797261756E616ALL;
          v82 = 0xE700000000000000;
        }

        if (v31[v5] <= 2u)
        {
          v83 = v81;
        }

        else
        {
          v83 = v79;
        }

        if (v31[v5] <= 2u)
        {
          a1 = v82;
        }

        else
        {
          a1 = v80;
        }
      }

      v85 = v71[v5];
      if (v85 > 5)
      {
        if (v71[v5] > 8u)
        {
          if (v85 == 9)
          {
            v3 = 0xE700000000000000;
            if (v83 != 0x7265626F74636FLL)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v3 = 0xE800000000000000;
            if (v85 == 10)
            {
              v86 = 1702260590;
            }

            else
            {
              v86 = 1701012836;
            }

            if (v83 != (v86 | 0x7265626D00000000))
            {
              goto LABEL_31;
            }
          }
        }

        else if (v85 == 6)
        {
          v3 = 0xE400000000000000;
          if (v83 != 2037151082)
          {
            goto LABEL_31;
          }
        }

        else if (v85 == 7)
        {
          v3 = 0xE600000000000000;
          if (v83 != 0x747375677561)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v3 = 0xE900000000000072;
          if (v83 != 0x65626D6574706573)
          {
            goto LABEL_31;
          }
        }
      }

      else if (v71[v5] > 2u)
      {
        if (v85 == 3)
        {
          v3 = 0xE500000000000000;
          if (v83 != 0x6C69727061)
          {
            goto LABEL_31;
          }
        }

        else if (v85 == 4)
        {
          v3 = 0xE300000000000000;
          if (v83 != 7954797)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v3 = 0xE400000000000000;
          if (v83 != 1701737834)
          {
            goto LABEL_31;
          }
        }
      }

      else if (v71[v5])
      {
        if (v85 == 1)
        {
          v3 = 0xE800000000000000;
          if (v83 != 0x7972617572626566)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v3 = 0xE500000000000000;
          if (v83 != 0x686372616DLL)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v3 = 0xE700000000000000;
        if (v83 != 0x797261756E616ALL)
        {
          goto LABEL_31;
        }
      }

      if (a1 == v3)
      {

        goto LABEL_32;
      }

LABEL_31:
      v77 = sub_1B4D18DCC();

      if ((v77 & 1) == 0)
      {
LABEL_241:

LABEL_242:
        v20 = v202;
LABEL_243:
        v127 = type metadata accessor for RingsPropertiesQuery;
        sub_1B49DA04C(v207, type metadata accessor for RingsPropertiesQuery);
        v128 = v208;
LABEL_278:
        sub_1B49DA04C(v128, v127);
        sub_1B49DA04C(v220, type metadata accessor for FitnessContextQueryDescriptor);
        sub_1B49DA04C(v219, type metadata accessor for FitnessContextQueryResult);
LABEL_16:
        v49 = v218 + 1;
        v48 = v214;
        if (v218 + 1 == v215)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }

LABEL_32:
      ++v5;
      --v72;
      v73 = v23;
      if (!v72)
      {
        goto LABEL_185;
      }
    }
  }

LABEL_185:
  v5 = *(v73 + 2);
  v3 = v206;
  v20 = v202;
  if (v5 != *(v206 + 16))
  {
LABEL_239:

    goto LABEL_243;
  }

  if (v5 && v73 != v206)
  {
    v110 = 32;
    while (1)
    {
      v112 = v73[v110];
      v113 = *(v206 + v110);
      v114 = 0x7961646E7573;
      if (v112 == 5)
      {
        v114 = 0x7961647275746173;
        v115 = 0xE800000000000000;
      }

      else
      {
        v115 = 0xE600000000000000;
      }

      v116 = 0x7961647372756874;
      if (v112 == 3)
      {
        v117 = 0xE800000000000000;
      }

      else
      {
        v116 = 0x796164697266;
        v117 = 0xE600000000000000;
      }

      if (v73[v110] <= 4u)
      {
        v114 = v116;
        v115 = v117;
      }

      v118 = 0xE900000000000079;
      v119 = 0x616473656E646577;
      if (v112 == 1)
      {
        v119 = 0x79616473657574;
        v118 = 0xE700000000000000;
      }

      if (!v73[v110])
      {
        v119 = 0x7961646E6F6DLL;
        v118 = 0xE600000000000000;
      }

      v120 = v73[v110] <= 2u ? v119 : v114;
      a1 = v73[v110] <= 2u ? v118 : v115;
      if (*(v206 + v110) <= 2u)
      {
        break;
      }

      if (*(v206 + v110) <= 4u)
      {
        if (v113 == 3)
        {
          v3 = 0xE800000000000000;
          v121 = 0x647372756874;
          goto LABEL_219;
        }

        v3 = 0xE600000000000000;
        v122 = 1684632166;
LABEL_225:
        if (v120 != (v122 & 0xFFFF0000FFFFFFFFLL | 0x796100000000))
        {
          goto LABEL_189;
        }

        goto LABEL_228;
      }

      if (v113 == 5)
      {
        v3 = 0xE800000000000000;
        v121 = 0x647275746173;
LABEL_219:
        if (v120 != (v121 & 0xFFFFFFFFFFFFLL | 0x7961000000000000))
        {
          goto LABEL_189;
        }

        goto LABEL_228;
      }

      v3 = 0xE600000000000000;
      if (v120 != 0x7961646E7573)
      {
        goto LABEL_189;
      }

LABEL_228:
      if (a1 != v3)
      {
LABEL_189:
        v111 = sub_1B4D18DCC();

        if ((v111 & 1) == 0)
        {
          goto LABEL_241;
        }

        goto LABEL_190;
      }

LABEL_190:
      ++v110;
      --v5;
      v73 = v23;
      if (!v5)
      {
        goto LABEL_230;
      }
    }

    if (*(v206 + v110))
    {
      if (v113 == 1)
      {
        v3 = 0xE700000000000000;
        if (v120 != 0x79616473657574)
        {
          goto LABEL_189;
        }
      }

      else
      {
        v3 = 0xE900000000000079;
        if (v120 != 0x616473656E646577)
        {
          goto LABEL_189;
        }
      }

      goto LABEL_228;
    }

    v3 = 0xE600000000000000;
    v122 = 1684959085;
    goto LABEL_225;
  }

LABEL_230:
  v123 = *(v186 + 16);
  v5 = v187;
  v20 = v202;
  if (v123 != *(v187 + 16))
  {
    goto LABEL_239;
  }

  if (v123 && v186 != v187)
  {
    v124 = 32;
    do
    {
      v125 = *(v186 + v124);
      v126 = *(v187 + v124);
      if (v125 == 2)
      {
        if (v126 != 2)
        {
          goto LABEL_239;
        }
      }

      else if (v126 == 2 || ((v125 ^ v126) & 1) != 0)
      {
        goto LABEL_239;
      }

      ++v124;
      --v123;
    }

    while (v123);
  }

  v133 = v189[6];
  v134 = *(v208 + v133);
  v135 = *(v207 + v133);
  v5 = *(v134 + 16);
  if (v5 != *(v135 + 16))
  {
    goto LABEL_243;
  }

  if (v5)
  {
    v136 = v134 == v135;
  }

  else
  {
    v136 = 1;
  }

  if (v136)
  {
LABEL_261:
    v137 = v189[7];
    v5 = v207;
    v138 = v208;
    v139 = *(v208 + v137);
    v221 = *(v207 + v137);
    v222 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B8, &qword_1B4D3FD60);
    a1 = sub_1B49DA0AC(&qword_1EB8A74C0, &qword_1EB8A74B8, &qword_1B4D3FD60);
    sub_1B49D9FF8();
    v140 = sub_1B4D1865C();
    v3 = type metadata accessor for RingsPropertiesQuery;
    sub_1B49DA04C(v5, type metadata accessor for RingsPropertiesQuery);
    sub_1B49DA04C(v138, type metadata accessor for RingsPropertiesQuery);
    sub_1B49DA04C(v220, type metadata accessor for FitnessContextQueryDescriptor);
    sub_1B49DA04C(v219, type metadata accessor for FitnessContextQueryResult);
    v20 = v202;
    if ((v140 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_355;
  }

  v150 = (v134 + 32);
  a1 = v135 + 32;
  v151 = 0x656557664F796164;
  while (v5)
  {
    v153 = *a1;
    v154 = 0xE90000000000006BLL;
    if (*v150 == 1)
    {
      v155 = 0xE90000000000006BLL;
    }

    else
    {
      v151 = 0x646573756170;
      v155 = 0xE600000000000000;
    }

    if (*v150)
    {
      v156 = v151;
    }

    else
    {
      v156 = 0x59664F68746E6F6DLL;
    }

    if (*v150)
    {
      v157 = v155;
    }

    else
    {
      v157 = 0xEB00000000726165;
    }

    if (v153 == 1)
    {
      v158 = 0x656557664F796164;
    }

    else
    {
      v158 = 0x646573756170;
    }

    if (v153 != 1)
    {
      v154 = 0xE600000000000000;
    }

    if (*a1)
    {
      v159 = v158;
    }

    else
    {
      v159 = 0x59664F68746E6F6DLL;
    }

    if (*a1)
    {
      v3 = v154;
    }

    else
    {
      v3 = 0xEB00000000726165;
    }

    if (v156 == v159 && v157 == v3)
    {
    }

    else
    {
      v152 = sub_1B4D18DCC();

      if ((v152 & 1) == 0)
      {
        goto LABEL_242;
      }
    }

    ++v150;
    ++a1;
    --v5;
    v151 = 0x656557664F796164;
    if (!v5)
    {
      goto LABEL_261;
    }
  }

  __break(1u);
  __break(1u);
LABEL_365:
  v171 = swift_slowAlloc();
  v172 = sub_1B49D3170(v171, v174, a1, v193);

  result = MEMORY[0x1B8C7DDA0](v171, -1, -1);
  if (!v3)
  {
    result = v172;
  }

LABEL_359:
  v170 = *MEMORY[0x1E69E9840];
  return result;
}