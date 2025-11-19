unint64_t sub_1E5933478()
{
  result = qword_1ECFFD930;
  if (!qword_1ECFFD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD930);
  }

  return result;
}

uint64_t ActiveWorkoutPlanArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v28 = &v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD948, &qword_1E5A36548);
  v27 = *(v29 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v24 - v12;
  active = type metadata accessor for ActiveWorkoutPlanArtwork();
  v15 = *(*(active - 8) + 64);
  MEMORY[0x1EEE9AC00](active);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5933478();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = active;
  v19 = v17;
  v20 = v27;
  sub_1E5A2A064();
  v31 = 0;
  sub_1E59346A4(&qword_1ECFFD950, MEMORY[0x1E699DB98]);
  v21 = v28;
  v22 = v29;
  sub_1E5A2BF84();
  sub_1E58F0054(v21, v19, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  sub_1E5A29D44();
  v30 = 1;
  sub_1E59346A4(&qword_1ECFFD958, MEMORY[0x1E6968FB0]);
  sub_1E5A2BF84();
  (*(v20 + 8))(v13, v22);
  sub_1E58F0054(v7, v19 + *(v25 + 20), &qword_1ECFFB5E0, &qword_1E5A3AC70);
  sub_1E593387C(v19, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E59338E0(v19);
}

uint64_t sub_1E593387C(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanArtwork();
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1E59338E0(uint64_t a1)
{
  active = type metadata accessor for ActiveWorkoutPlanArtwork();
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

uint64_t ActiveWorkoutPlanArtwork.hash(into:)()
{
  v1 = v0;
  v2 = sub_1E5A29D44();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1E5A2A064();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v23 - v16;
  sub_1E58BABA0(v1, &v23 - v16, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_1E5A2C1D4();
    sub_1E59346A4(&qword_1ECFFB5F0, MEMORY[0x1E699DB98]);
    sub_1E5A2BA44();
    (*(v10 + 8))(v13, v9);
  }

  active = type metadata accessor for ActiveWorkoutPlanArtwork();
  sub_1E58BABA0(v1 + *(active + 20), v8, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  v20 = v25;
  v19 = v26;
  if ((*(v25 + 48))(v8, 1, v26) == 1)
  {
    return sub_1E5A2C1D4();
  }

  v22 = v24;
  (*(v20 + 32))(v24, v8, v19);
  sub_1E5A2C1D4();
  sub_1E59346A4(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0]);
  sub_1E5A2BA44();
  return (*(v20 + 8))(v22, v19);
}

uint64_t ActiveWorkoutPlanArtwork.hashValue.getter()
{
  sub_1E5A2C1B4();
  ActiveWorkoutPlanArtwork.hash(into:)();
  return sub_1E5A2C204();
}

uint64_t sub_1E5933D58()
{
  sub_1E5A2C1B4();
  ActiveWorkoutPlanArtwork.hash(into:)();
  return sub_1E5A2C204();
}

uint64_t sub_1E5933D9C()
{
  sub_1E5A2C1B4();
  ActiveWorkoutPlanArtwork.hash(into:)();
  return sub_1E5A2C204();
}

BOOL _s18FitnessWorkoutPlan06ActivebC7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A29D44();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v44 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB600, &unk_1E5A36750);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v44 - v11;
  v12 = sub_1E5A2A064();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB608, &qword_1E5A2CDC0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v44 - v24;
  v26 = *(v23 + 56);
  v48 = a1;
  sub_1E58BABA0(a1, &v44 - v24, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v49 = a2;
  sub_1E58BABA0(a2, &v25[v26], &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_1E58BABA0(v25, v20, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      (*(v13 + 32))(v16, &v25[v26], v12);
      sub_1E59346A4(&qword_1ECFFB618, MEMORY[0x1E699DB98]);
      v31 = sub_1E5A2BA74();
      v32 = *(v13 + 8);
      v32(v16, v12);
      v32(v20, v12);
      sub_1E58BAD14(v25, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v13 + 8))(v20, v12);
LABEL_6:
    v28 = &qword_1ECFFB608;
    v29 = &qword_1E5A2CDC0;
    v30 = v25;
LABEL_14:
    sub_1E58BAD14(v30, v28, v29);
    return 0;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_1E58BAD14(v25, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
LABEL_8:
  v33 = *(type metadata accessor for ActiveWorkoutPlanArtwork() + 20);
  v34 = v47;
  v35 = *(v46 + 48);
  sub_1E58BABA0(v48 + v33, v47, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  sub_1E58BABA0(v49 + v33, v34 + v35, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 48);
  if (v38(v34, 1, v51) == 1)
  {
    if (v38(v34 + v35, 1, v36) == 1)
    {
      sub_1E58BAD14(v34, &qword_1ECFFB5E0, &qword_1E5A3AC70);
      return 1;
    }

    goto LABEL_13;
  }

  v39 = v45;
  sub_1E58BABA0(v34, v45, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  if (v38(v34 + v35, 1, v36) == 1)
  {
    (*(v37 + 8))(v39, v36);
LABEL_13:
    v28 = &qword_1ECFFB600;
    v29 = &unk_1E5A36750;
    v30 = v34;
    goto LABEL_14;
  }

  v41 = v44;
  (*(v37 + 32))(v44, v34 + v35, v36);
  sub_1E59346A4(&qword_1ECFFB610, MEMORY[0x1E6968FB0]);
  v42 = sub_1E5A2BA74();
  v43 = *(v37 + 8);
  v43(v41, v36);
  v43(v39, v36);
  sub_1E58BAD14(v34, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  return (v42 & 1) != 0;
}

void sub_1E593447C()
{
  sub_1E5934538(319, &qword_1ECFFD978, MEMORY[0x1E699DB98]);
  if (v0 <= 0x3F)
  {
    sub_1E5934538(319, &qword_1ECFFD980, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5934538(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E5A2BD84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E59345A0()
{
  result = qword_1ECFFD988;
  if (!qword_1ECFFD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD988);
  }

  return result;
}

unint64_t sub_1E59345F8()
{
  result = qword_1ECFFD990;
  if (!qword_1ECFFD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD990);
  }

  return result;
}

unint64_t sub_1E5934650()
{
  result = qword_1ECFFD998;
  if (!qword_1ECFFD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD998);
  }

  return result;
}

uint64_t sub_1E59346A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WorkoutPlanFilterOptions.init(bodyFocuses:durations:equipment:filterConfigurations:musicGenres:skillLevels:themes:trainers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_1E5934740()
{
  v1 = *v0;
  v2 = 0x75636F4679646F62;
  v3 = 0x73656D656874;
  if (v1 != 6)
  {
    v3 = 0x7372656E69617274;
  }

  v4 = 0x6E6547636973756DLL;
  if (v1 != 4)
  {
    v4 = 0x76654C6C6C696B73;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E656D7069757165;
  if (v1 != 2)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E593484C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E59361F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5934874(uint64_t a1)
{
  v2 = sub_1E5934CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59348B0(uint64_t a1)
{
  v2 = sub_1E5934CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanFilterOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9A0, &qword_1E5A36760);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v28 = v1[2];
  v29 = v9;
  v12 = v1[5];
  v26 = v1[4];
  v27 = v11;
  v13 = v1[7];
  v24 = v1[6];
  v25 = v12;
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_1E5934CEC();

  sub_1E5A2C224();
  v31 = v10;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9B0, &qword_1E5A36768);
  sub_1E5934D40();
  v19 = v8;
  sub_1E5A2C0B4();
  if (v2)
  {

    return (*(v5 + 8))(v8, v18);
  }

  else
  {
    v22 = v27;
    v21 = v28;

    v31 = v29;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9C0, &qword_1E5A36770);
    sub_1E5934DC4();
    sub_1E5A2C0B4();
    v31 = v21;
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9D0, &qword_1E5A36778);
    sub_1E5934E48();
    sub_1E5A2C0B4();
    v31 = v22;
    v30 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9E0, &qword_1E5A36780);
    sub_1E5934ECC();
    sub_1E5A2C0B4();
    v31 = v26;
    v30 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9F8, &qword_1E5A36788);
    sub_1E5934FA4();
    sub_1E5A2C0B4();
    v31 = v25;
    v30 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA08, &qword_1E5A36790);
    sub_1E5935028();
    sub_1E5A2C0B4();
    v31 = v24;
    v30 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA18, &qword_1E5A36798);
    sub_1E59350AC();
    sub_1E5A2C0B4();
    v31 = v13;
    v30 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA28, &qword_1E5A367A0);
    sub_1E5935130();
    sub_1E5A2C0B4();
    return (*(v5 + 8))(v19, v18);
  }
}

unint64_t sub_1E5934CEC()
{
  result = qword_1ECFFD9A8;
  if (!qword_1ECFFD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD9A8);
  }

  return result;
}

unint64_t sub_1E5934D40()
{
  result = qword_1ECFFD9B8;
  if (!qword_1ECFFD9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9B0, &qword_1E5A36768);
    sub_1E58C2E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD9B8);
  }

  return result;
}

unint64_t sub_1E5934DC4()
{
  result = qword_1ECFFD9C8;
  if (!qword_1ECFFD9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9C0, &qword_1E5A36770);
    sub_1E58F4700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD9C8);
  }

  return result;
}

unint64_t sub_1E5934E48()
{
  result = qword_1ECFFD9D8;
  if (!qword_1ECFFD9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9D0, &qword_1E5A36778);
    sub_1E58C2E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD9D8);
  }

  return result;
}

unint64_t sub_1E5934ECC()
{
  result = qword_1ECFFD9E8;
  if (!qword_1ECFFD9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9E0, &qword_1E5A36780);
    sub_1E5934F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD9E8);
  }

  return result;
}

unint64_t sub_1E5934F50()
{
  result = qword_1ECFFD9F0;
  if (!qword_1ECFFD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD9F0);
  }

  return result;
}

unint64_t sub_1E5934FA4()
{
  result = qword_1ECFFDA00;
  if (!qword_1ECFFDA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9F8, &qword_1E5A36788);
    sub_1E58C3680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA00);
  }

  return result;
}

unint64_t sub_1E5935028()
{
  result = qword_1ECFFDA10;
  if (!qword_1ECFFDA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDA08, &qword_1E5A36790);
    sub_1E58C2EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA10);
  }

  return result;
}

unint64_t sub_1E59350AC()
{
  result = qword_1ECFFDA20;
  if (!qword_1ECFFDA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDA18, &qword_1E5A36798);
    sub_1E58C2F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA20);
  }

  return result;
}

unint64_t sub_1E5935130()
{
  result = qword_1ECFFDA30;
  if (!qword_1ECFFDA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDA28, &qword_1E5A367A0);
    sub_1E58C3110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA30);
  }

  return result;
}

uint64_t WorkoutPlanFilterOptions.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA38, &qword_1E5A367A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5934CEC();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9B0, &qword_1E5A36768);
  LOBYTE(v27) = 0;
  sub_1E59357D4();
  sub_1E5A2BFE4();
  v11 = a2;
  v12 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9C0, &qword_1E5A36770);
  LOBYTE(v27) = 1;
  sub_1E5935858();
  sub_1E5A2BFE4();
  v26 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9D0, &qword_1E5A36778);
  LOBYTE(v27) = 2;
  sub_1E59358DC();
  sub_1E5A2BFE4();
  v25 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9E0, &qword_1E5A36780);
  LOBYTE(v27) = 3;
  sub_1E5935960();
  sub_1E5A2BFE4();
  v13 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9F8, &qword_1E5A36788);
  LOBYTE(v27) = 4;
  sub_1E5935A38();
  sub_1E5A2BFE4();
  v24 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA08, &qword_1E5A36790);
  LOBYTE(v27) = 5;
  sub_1E5935ABC();
  v23 = 0;
  sub_1E5A2BFE4();
  v21 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA18, &qword_1E5A36798);
  LOBYTE(v27) = 6;
  sub_1E5935B40();
  sub_1E5A2BFE4();
  v22 = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA28, &qword_1E5A367A0);
  v32 = 7;
  sub_1E5935BC4();
  sub_1E5A2BFE4();
  (*(v6 + 8))(v9, v5);
  v23 = v33;
  v15 = v25;
  v14 = v26;
  *&v27 = v12;
  *(&v27 + 1) = v26;
  *&v28 = v25;
  *(&v28 + 1) = v13;
  v16 = v24;
  v17 = v21;
  *&v29 = v24;
  *(&v29 + 1) = v21;
  *&v30 = v22;
  *(&v30 + 1) = v33;
  v18 = v28;
  *v11 = v27;
  v11[1] = v18;
  v19 = v30;
  v11[2] = v29;
  v11[3] = v19;
  sub_1E5931DC4(&v27, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[0] = v12;
  v31[1] = v14;
  v31[2] = v15;
  v31[3] = v13;
  v31[4] = v16;
  v31[5] = v17;
  v31[6] = v22;
  v31[7] = v23;
  return sub_1E58F011C(v31);
}

unint64_t sub_1E59357D4()
{
  result = qword_1ECFFDA40;
  if (!qword_1ECFFDA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9B0, &qword_1E5A36768);
    sub_1E58C771C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA40);
  }

  return result;
}

unint64_t sub_1E5935858()
{
  result = qword_1ECFFDA48;
  if (!qword_1ECFFDA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9C0, &qword_1E5A36770);
    sub_1E58F56BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA48);
  }

  return result;
}

unint64_t sub_1E59358DC()
{
  result = qword_1ECFFDA50;
  if (!qword_1ECFFDA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9D0, &qword_1E5A36778);
    sub_1E58C7770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA50);
  }

  return result;
}

unint64_t sub_1E5935960()
{
  result = qword_1ECFFDA58;
  if (!qword_1ECFFDA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9E0, &qword_1E5A36780);
    sub_1E59359E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA58);
  }

  return result;
}

unint64_t sub_1E59359E4()
{
  result = qword_1ECFFDA60;
  if (!qword_1ECFFDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA60);
  }

  return result;
}

unint64_t sub_1E5935A38()
{
  result = qword_1ECFFDA68;
  if (!qword_1ECFFDA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9F8, &qword_1E5A36788);
    sub_1E58C7A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA68);
  }

  return result;
}

unint64_t sub_1E5935ABC()
{
  result = qword_1ECFFDA70;
  if (!qword_1ECFFDA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDA08, &qword_1E5A36790);
    sub_1E58C77C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA70);
  }

  return result;
}

unint64_t sub_1E5935B40()
{
  result = qword_1ECFFDA78;
  if (!qword_1ECFFDA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDA18, &qword_1E5A36798);
    sub_1E58C7818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA78);
  }

  return result;
}

unint64_t sub_1E5935BC4()
{
  result = qword_1ECFFDA80;
  if (!qword_1ECFFDA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDA28, &qword_1E5A367A0);
    sub_1E58C78C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA80);
  }

  return result;
}

uint64_t WorkoutPlanFilterOptions.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  sub_1E58BAD80(a1, v3);
  sub_1E58BA66C(a1, v4);
  sub_1E58BAD80(a1, v5);
  sub_1E58BA2C4(a1, v6);
  sub_1E58BAD80(a1, v7);
  sub_1E58BA100(a1, v8);
  sub_1E58B9F70(a1, v10);

  return sub_1E58B9D88(a1, v9);
}

uint64_t WorkoutPlanFilterOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_1E5A2C1B4();
  sub_1E58BAD80(v10, v1);
  sub_1E58BA66C(v10, v2);
  sub_1E58BAD80(v10, v3);
  sub_1E58BA2C4(v10, v4);
  sub_1E58BAD80(v10, v5);
  sub_1E58BA100(v10, v6);
  sub_1E58B9F70(v10, v8);
  sub_1E58B9D88(v10, v7);
  return sub_1E5A2C204();
}

uint64_t sub_1E5935DEC(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  sub_1E58BAD80(a1, v3);
  sub_1E58BA66C(a1, v4);
  sub_1E58BAD80(a1, v5);
  sub_1E58BA2C4(a1, v6);
  sub_1E58BAD80(a1, v7);
  sub_1E58BA100(a1, v8);
  sub_1E58B9F70(a1, v10);

  return sub_1E58B9D88(a1, v9);
}

uint64_t sub_1E5935E98()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_1E5A2C1B4();
  sub_1E58BAD80(v10, v1);
  sub_1E58BA66C(v10, v2);
  sub_1E58BAD80(v10, v3);
  sub_1E58BA2C4(v10, v4);
  sub_1E58BAD80(v10, v5);
  sub_1E58BA100(v10, v6);
  sub_1E58B9F70(v10, v8);
  sub_1E58B9D88(v10, v7);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC13FilterOptionsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v16 = a1[6];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v14 = a1[7];
  v15 = a2[6];
  v13 = a2[7];
  if ((sub_1E58BAD78(*a1, *a2) & 1) == 0 || (sub_1E58B7160(v2, v7) & 1) == 0 || (sub_1E58BAD78(v3, v8) & 1) == 0 || (sub_1E58B7378(v4, v9) & 1) == 0 || (sub_1E58BAD78(v6, v11) & 1) == 0 || (sub_1E58B7BF8(v5, v10) & 1) == 0 || (sub_1E58B7EE0(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_1E58B8154(v14, v13);
}

unint64_t sub_1E5936074()
{
  result = qword_1ECFFDA88;
  if (!qword_1ECFFDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA88);
  }

  return result;
}

unint64_t sub_1E59360EC()
{
  result = qword_1ECFFDA90;
  if (!qword_1ECFFDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA90);
  }

  return result;
}

unint64_t sub_1E5936144()
{
  result = qword_1ECFFDA98;
  if (!qword_1ECFFDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA98);
  }

  return result;
}

unint64_t sub_1E593619C()
{
  result = qword_1ECFFDAA0;
  if (!qword_1ECFFDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDAA0);
  }

  return result;
}

uint64_t sub_1E59361F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x75636F4679646F62 && a2 == 0xEB00000000736573 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE900000000000073 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A46710 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6547636973756DLL && a2 == 0xEB00000000736572 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEB00000000736C65 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73656D656874 && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7372656E69617274 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t EquipmentSelectionView.init(store:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  result = sub_1E5A2A654();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E593652C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for EditItem();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = *(v1 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v18 = *&v14[*(v8 + 40)];

  sub_1E58F00BC(v14, type metadata accessor for EditItem);
  if (v18)
  {
    if (*(v18 + 16))
    {
      v19 = *(v18 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](1);
      sub_1E5A2BB74();
      v20 = sub_1E5A2C204();
      v21 = -1 << *(v18 + 32);
      v22 = v20 & ~v21;
      if ((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        v24 = *(v18 + 48);
        while (1)
        {
          v25 = v24 + 24 * v22;
          if (*(v25 + 16) == 1)
          {
            v26 = *v25 == v15 && *(v25 + 8) == v16;
            if (v26 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }
          }

          v22 = (v22 + 1) & v23;
          if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

LABEL_25:

        return 1;
      }
    }

LABEL_26:

    return 0;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  sub_1E58EFFE4(v12, v6);
  sub_1E58F00BC(v12, type metadata accessor for EditItem);
  v27 = type metadata accessor for WorkoutPlanScheduledItem();
  if ((*(*(v27 - 8) + 48))(v6, 1, v27) != 1)
  {
    v28 = *(v6 + 1);

    sub_1E58F00BC(v6, type metadata accessor for WorkoutPlanScheduledItem);
    if (*(v28 + 16))
    {
      v29 = *(v28 + 40);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](1);
      sub_1E5A2BB74();
      v30 = sub_1E5A2C204();
      v31 = -1 << *(v28 + 32);
      v32 = v30 & ~v31;
      if ((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        v34 = *(v28 + 48);
        while (1)
        {
          v35 = v34 + 24 * v32;
          if (*(v35 + 16) == 1)
          {
            v36 = *v35 == v15 && *(v35 + 8) == v16;
            if (v36 || (sub_1E5A2C114() & 1) != 0)
            {
              goto LABEL_25;
            }
          }

          v32 = (v32 + 1) & v33;
          if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }
    }

    goto LABEL_26;
  }

  sub_1E58BAD14(v6, &qword_1ECFFB790, &qword_1E5A2D620);
  return 0;
}

uint64_t sub_1E5936908(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v48 - v5;
  v6 = type metadata accessor for EditItem();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - v14;
  v16 = *a1;
  v17 = a1[1];
  v18 = *(v1 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v19 = &v15[*(v6 + 36)];
  v21 = *v19;
  v20 = v19[1];

  sub_1E58F00BC(v15, type metadata accessor for EditItem);
  if (!v20)
  {
LABEL_8:
    swift_getKeyPath();

    sub_1E5A2B934();

    v29 = *&v13[*(v6 + 32)];

    result = sub_1E58F00BC(v13, type metadata accessor for EditItem);
    if (!v29)
    {
      swift_getKeyPath();

      sub_1E5A2B934();

      v31 = v48;
      sub_1E58EFFE4(v10, v48);
      sub_1E58F00BC(v10, type metadata accessor for EditItem);
      v32 = type metadata accessor for WorkoutPlanScheduledItem();
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
      {
        sub_1E58BAD14(v31, &qword_1ECFFB790, &qword_1E5A2D620);
        return 0;
      }

      v29 = *(v31 + 8);

      result = sub_1E58F00BC(v31, type metadata accessor for WorkoutPlanScheduledItem);
    }

    v33 = 0;
    v34 = v29 + 56;
    v35 = 1 << *(v29 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v29 + 56);
    do
    {
      if (!v37)
      {
        while (1)
        {
          v38 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
            return result;
          }

          if (v38 >= ((v35 + 63) >> 6))
          {
            break;
          }

          v37 = *(v34 + 8 * v38);
          ++v33;
          if (v37)
          {
            v33 = v38;
            goto LABEL_21;
          }
        }

        v28 = 0;
        if (!*(v29 + 16))
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      v38 = v33;
LABEL_21:
      v39 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
    }

    while (*(*(v29 + 48) + 24 * (v39 | (v38 << 6)) + 16) != 1);
    v28 = 1;
    if (!*(v29 + 16))
    {
      goto LABEL_36;
    }

LABEL_25:
    v40 = *(v29 + 40);
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](1);
    sub_1E5A2BB74();
    v41 = sub_1E5A2C204();
    v42 = -1 << *(v29 + 32);
    v43 = v41 & ~v42;
    if (((*(v34 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
    {
LABEL_36:

      return v28;
    }

    v44 = ~v42;
    v45 = *(v29 + 48);
    while (1)
    {
      v46 = v45 + 24 * v43;
      if (*(v46 + 16) == 1)
      {
        v47 = *v46 == v16 && *(v46 + 8) == v17;
        if (v47 || (sub_1E5A2C114() & 1) != 0)
        {
          break;
        }
      }

      v43 = (v43 + 1) & v44;
      if (((*(v34 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    return 0;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v22 = v49;
  if (!*(v49 + 16))
  {

    goto LABEL_7;
  }

  v23 = sub_1E58EF508(v21, v20);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v26 = *(*(v22 + 56) + (v23 << 6) + 16);

  v27 = sub_1E59E8F3C(v16, v17, v26);

  if (v27)
  {
    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_1E5936E28(uint64_t a1)
{
  v3 = *(v1 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v13[0] = v9;
  v13[1] = v10;
  v13[2] = v11;
  v13[3] = v12;

  sub_1E58F011C(v13);

  v4 = sub_1E5939448(v10, a1);

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1E5A206E4(v4[2], 0);
  v7 = sub_1E5A234FC(&v9, v6 + 4, v5, v4);

  sub_1E58D26C0();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:
    v6 = MEMORY[0x1E69E7CC0];
  }

  *&v9 = v6;
  sub_1E5939010(&v9);

  return v9;
}

uint64_t sub_1E5936F90(uint64_t a1)
{
  v2 = sub_1E5A2B764();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1E5A2B774();
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = ceil(*(a1 + 16) * 0.5);
  if (v12 == INFINITY)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 < 9.22337204e18)
  {
    v13 = v12;
    *v6 = xmmword_1E5A317E0;
    (*(v3 + 104))(v6, *MEMORY[0x1E697D748], v2);
    sub_1E5A2B784();
    return sub_1E59E9100(v11, v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1E5937138@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *v2;
  v9 = v2[1];
  v17 = *v2;
  v18 = v9;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  if (sub_1E5936908(&v13))
  {
    result = sub_1E5A2ABA4();
    v11 = MEMORY[0x1E697FE70];
    *(a2 + 24) = MEMORY[0x1E697FE80];
    *(a2 + 32) = v11;
    *a2 = result;
  }

  else
  {
    v17 = v8;
    v18 = v9;
    v13 = v4;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    if (sub_1E593652C(&v13))
    {
      result = sub_1E5A2B404();
    }

    else
    {
      result = sub_1E5A2B424();
    }

    v12 = MEMORY[0x1E6981568];
    *(a2 + 24) = MEMORY[0x1E69815C0];
    *(a2 + 32) = v12;
    *a2 = result;
  }

  return result;
}

uint64_t EquipmentSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  v2 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDAA8, &qword_1E5A36A20);
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v41 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDAB0, &qword_1E5A36A28);
  v8 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v46 = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDAB8, &qword_1E5A36A30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v42 = v41 - v13;
  v14 = type metadata accessor for EditItem();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  v19 = v1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v21 = &v18[*(v15 + 44)];
  v23 = *v21;
  v22 = v21[1];

  sub_1E58F00BC(v18, type metadata accessor for EditItem);
  if (!v22)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v24 = v51[0];
  if (!*(v51[0] + 16))
  {

    goto LABEL_7;
  }

  v25 = sub_1E58EF508(v23, v22);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_7:

LABEL_8:
    v40 = 1;
    v39 = v48;
    return (*(v11 + 56))(v39, v40, 1, v10);
  }

  v28 = *(*(v24 + 56) + (v25 << 6) + 16);

  v41[3] = v41;
  MEMORY[0x1EEE9AC00](v29);
  v41[2] = &v41[-6];
  v41[-4] = v20;
  v41[-3] = v19;
  v41[-2] = v28;
  sub_1E59388B8(v51);
  v41[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC670, &unk_1E5A37DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDAC0, &unk_1E5A36A80);
  sub_1E58EF58C();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDAC8, &unk_1E5A36A90);
  v31 = sub_1E58CD164(&qword_1ECFFDAD0, &qword_1ECFFDAC8, &unk_1E5A36A90);
  v49 = v30;
  v50 = v31;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B714();

  sub_1E5A2ADF4();
  sub_1E5938AEC();
  v32 = v46;
  sub_1E5A2B134();
  (*(v44 + 8))(v7, v4);
  v51[0] = sub_1E5A2B414();
  *(v32 + *(v45 + 36)) = sub_1E5A2B634();
  v33 = *MEMORY[0x1E697E728];
  v34 = sub_1E5A2A684();
  v35 = v47;
  (*(*(v34 - 8) + 104))(v47, v33, v34);
  sub_1E5904640(&qword_1ECFFBF40, MEMORY[0x1E697E730]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E5938BFC();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    v37 = v42;
    sub_1E5A2B164();
    sub_1E58BAD14(v35, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E58BAD14(v32, &qword_1ECFFDAB0, &qword_1E5A36A28);
    v38 = v48;
    (*(v11 + 32))(v48, v37, v10);
    v39 = v38;
    v40 = 0;
    return (*(v11 + 56))(v39, v40, 1, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E59378D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = sub_1E5A2AAC4();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDAC8, &unk_1E5A36A90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  sub_1E5A2AD64();
  v18 = a1;
  v19 = a2;
  v20 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDAF8, &qword_1E5A36B60);
  sub_1E58CD164(&qword_1ECFFDB00, &qword_1ECFFDAF8, &qword_1E5A36B60);
  sub_1E5A2A4C4();
  sub_1E5A2AAB4();
  LOBYTE(a2) = sub_1E5A2AD64();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != a2)
  {
    sub_1E5A2AD74();
  }

  sub_1E58CD164(&qword_1ECFFDAD0, &qword_1ECFFDAC8, &unk_1E5A36A90);
  sub_1E5A2B234();
  (*(v6 + 8))(v9, v17);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1E5937B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E5A2AB24();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1E5936E28(a3);
  sub_1E5936F90(v6);

  sub_1E5A2A934();
  sub_1E5904640(&qword_1EE2CFAF0, MEMORY[0x1E697FCB0]);
  sub_1E5A2C264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDB08, &qword_1E5A36B68);
  sub_1E5938E54();
  return sub_1E5A2B824();
}

uint64_t sub_1E5937CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E5936E28(a3);
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDB38, &qword_1E5A36BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDB40, &unk_1E5A36BB0);
  sub_1E58CD164(&qword_1ECFFDB48, &qword_1ECFFDB38, &qword_1E5A36BA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDB18, &qword_1E5A36B70);
  sub_1E5938F30();
  sub_1E58EFCE8();
  swift_getOpaqueTypeConformance2();
  return sub_1E5A2B6E4();
}

uint64_t sub_1E5937E70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDB18, &qword_1E5A36B70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v11;
  v15[5] = v12;
  v15[6] = v13;
  v15[7] = v14;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = v11;
  v22[7] = v12;
  v22[8] = v13;
  v22[9] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC728, &unk_1E5A31980);
  sub_1E58EFDB8();
  sub_1E5A2B574();
  v27 = a2;
  v28 = a3;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v16 = sub_1E5936908(&v23);
  v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC6E8, &unk_1E5A34260) + 36)] = (v16 & 1) == 0;
  v27 = a2;
  v28 = a3;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v17 = sub_1E5936908(&v23);
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v17 & 1;
  v20 = &v10[*(v7 + 36)];
  *v20 = KeyPath;
  v20[1] = sub_1E5939210;
  v20[2] = v19;
  sub_1E5938F30();
  sub_1E58EFCE8();
  sub_1E5A2B0C4();
  return sub_1E58BAD14(v10, &qword_1ECFFDB18, &qword_1E5A36B70);
}

uint64_t sub_1E59380AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for WorkoutPlanCreationAction();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15[8] = 1;
  *v13 = 7;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = 0;
  v13[32] = 1;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 9) = a3;
  *(v13 + 10) = a4;
  *(v13 + 11) = a5;
  *(v13 + 12) = a6;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0u;
  *(v13 + 168) = 0u;
  *(v13 + 46) = 0;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();
  return sub_1E58F00BC(v13, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E59381C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a5;
  v9 = a4;
  v67 = a4;
  v10 = a3;
  v66 = a3;
  v65 = a2;
  v64 = a1;
  v72 = a7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC778, &unk_1E5A319D0);
  v70 = *(v71 - 8);
  v13 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v60 = v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC750, &unk_1E5A31990);
  v16 = *(v15 - 8);
  v68 = v15 - 8;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v73 = v59 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC740, &unk_1E5A342B0);
  v20 = *(v19 - 8);
  v69 = v19 - 8;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v63 = v59 - v22;
  v78 = a1;
  v79 = a2;
  v74 = v10;
  v75 = v9;
  v76 = a5;
  v77 = a6;
  sub_1E5937138(&v74, &v80);
  v59[2] = v82;
  v59[1] = __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
  v74 = a5;
  v75 = a6;
  v61 = a6;
  sub_1E58D1C80();

  v23 = sub_1E5A2AFD4();
  v25 = v24;
  v27 = v26;
  sub_1E5A2AED4();
  sub_1E5A2AE24();

  v28 = sub_1E5A2AFA4();
  v30 = v29;
  LOBYTE(v9) = v31;

  sub_1E58B3C9C(v23, v25, v27 & 1);

  v32 = sub_1E5A2AF84();
  v34 = v33;
  LOBYTE(v10) = v35;
  v37 = v36;
  sub_1E58B3C9C(v28, v30, v9 & 1);

  v74 = v32;
  v75 = v34;
  LOBYTE(v76) = v10 & 1;
  v77 = v37;
  sub_1E5A2AD64();
  sub_1E5A2B7E4();
  v38 = v60;
  sub_1E5A2B274();
  sub_1E58B3C9C(v32, v34, v10 & 1);

  __swift_destroy_boxed_opaque_existential_1(&v80);
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  v39 = v73;
  (*(v70 + 32))(v73, v38, v71);
  v40 = (v39 + *(v68 + 44));
  v41 = v85;
  v40[4] = v84;
  v40[5] = v41;
  v40[6] = v86;
  v42 = v81;
  *v40 = v80;
  v40[1] = v42;
  v43 = v83;
  v40[2] = v82;
  v40[3] = v43;
  v71 = sub_1E5A2B7E4();
  v45 = v44;
  v46 = v63;
  v47 = &v63[*(v69 + 44)];
  sub_1E59387B4(v64, v65, v66, v67, v62, v61, &v74);
  v48 = v74;
  LOBYTE(v34) = v75;
  v49 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC780, &unk_1E5A342F0) + 36)];
  v50 = *MEMORY[0x1E697F468];
  v51 = sub_1E5A2A9B4();
  v52 = *(*(v51 - 8) + 104);
  v52(v49, v50, v51);
  *&v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)] = 256;
  *v47 = v48;
  v47[8] = v34;
  v53 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC760, &qword_1E5A342C0) + 36)];
  *v53 = v71;
  v53[1] = v45;
  v54 = v46;
  sub_1E58F0054(v73, v46, &qword_1ECFFC750, &unk_1E5A31990);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC728, &unk_1E5A31980);
  v56 = v72;
  v57 = v72 + *(v55 + 36);
  v52(v57, v50, v51);
  *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC770, &unk_1E5A319A0) + 36)) = 0;
  return sub_1E58F0054(v54, v56, &qword_1ECFFC740, &unk_1E5A342B0);
}

uint64_t sub_1E59387B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = a1;
  v15 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (sub_1E593652C(&v10))
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED026498;
    LOBYTE(v15) = 0;
  }

  else
  {
    if (qword_1ECFFB488 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED0264A8;
    LOBYTE(v15) = 1;
  }

  result = sub_1E5A2AA74();
  v9 = v11;
  *a7 = v10;
  *(a7 + 8) = v9;
  return result;
}

uint64_t sub_1E59388B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5A2BB14();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2D33E0;
  swift_getKeyPath();
  v7 = v6;
  sub_1E5A2B944();

  v8 = sub_1E5A2AF64();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  LOBYTE(v6) = v12 & 1;
  v15 = sub_1E5A2ADC4();
  result = sub_1E5A2A424();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v6;
  *(a1 + 24) = v14;
  *(a1 + 96) = v25;
  *(a1 + 112) = v26;
  *(a1 + 128) = v27;
  *(a1 + 32) = v21;
  *(a1 + 48) = v22;
  *(a1 + 64) = v23;
  *(a1 + 80) = v24;
  *(a1 + 144) = v15;
  *(a1 + 152) = v17;
  *(a1 + 160) = v18;
  *(a1 + 168) = v19;
  *(a1 + 176) = v20;
  *(a1 + 184) = 0;
  return result;
}

unint64_t sub_1E5938AEC()
{
  result = qword_1ECFFDAD8;
  if (!qword_1ECFFDAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDAA8, &qword_1E5A36A20);
    sub_1E58EF58C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDAC8, &unk_1E5A36A90);
    sub_1E58CD164(&qword_1ECFFDAD0, &qword_1ECFFDAC8, &unk_1E5A36A90);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDAD8);
  }

  return result;
}

unint64_t sub_1E5938BFC()
{
  result = qword_1ECFFDAE0;
  if (!qword_1ECFFDAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDAB0, &qword_1E5A36A28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDAA8, &qword_1E5A36A20);
    sub_1E5938AEC();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFC6B8, &qword_1ECFFC6C0, &qword_1E5A31900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDAE0);
  }

  return result;
}

unint64_t sub_1E5938D1C()
{
  result = qword_1ECFFDAE8;
  if (!qword_1ECFFDAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDAF0, &qword_1E5A36B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDAB0, &qword_1E5A36A28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E5938BFC();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDAE8);
  }

  return result;
}

unint64_t sub_1E5938E54()
{
  result = qword_1ECFFDB10;
  if (!qword_1ECFFDB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDB08, &qword_1E5A36B68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDB18, &qword_1E5A36B70);
    sub_1E5938F30();
    sub_1E58EFCE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDB10);
  }

  return result;
}

unint64_t sub_1E5938F30()
{
  result = qword_1ECFFDB20;
  if (!qword_1ECFFDB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDB18, &qword_1E5A36B70);
    sub_1E58EFC30();
    sub_1E58CD164(&qword_1ECFFDB28, &qword_1ECFFDB30, &qword_1E5A36B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDB20);
  }

  return result;
}

uint64_t sub_1E5939010(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A226F8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E593907C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E593907C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E5A2C0E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1E5A2BC24();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E59049C0(v7, v8, a1, v4);
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
    return sub_1E59048F0(0, v2, 1, a1);
  }

  return result;
}

void *sub_1E5939174(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1E5939218(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1E5939218(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = result;
  v29 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v31 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v28 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 32 * v28);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[3];
      v18 = *(a4 + 40);
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      v19 = sub_1E5A2C204();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      if ((*(v31 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(a4 + 48) + 16 * v21);
          v24 = *v23 == v15 && v23[1] == v16;
          if (v24 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v31 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v27 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_26:

          return sub_1E59E0A10(v27, a2, v29, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E5939448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v38[1] = v3;
    v38[2] = v38;
    v39 = v8;
    MEMORY[0x1EEE9AC00](v10);
    v40 = v38 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v9);
    v43 = 0;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v45 = a2 + 56;
    v41 = v5;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v11 << 6);
      if (*(a2 + 16))
      {
        v20 = *(v5 + 48);
        v42 = v19;
        v21 = (v20 + 32 * v19);
        v3 = *v21;
        v22 = v21[1];
        v23 = v21[3];
        v24 = *(a2 + 40);
        sub_1E5A2C1B4();

        v44 = v23;

        sub_1E5A2BB74();
        v25 = sub_1E5A2C204();
        v26 = a2;
        v27 = -1 << *(a2 + 32);
        v9 = v25 & ~v27;
        if ((*(v45 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v28 = ~v27;
          while (1)
          {
            v29 = (*(v26 + 48) + 16 * v9);
            v30 = *v29 == v3 && v29[1] == v22;
            if (v30 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }

            v9 = (v9 + 1) & v28;
            if (((*(v45 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          *&v40[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
          v31 = __OFADD__(v43++, 1);
          a2 = v26;
          v5 = v41;
          if (v31)
          {
            __break(1u);
LABEL_27:
            v32 = sub_1E59E0A10(v40, v39, v43, v5);

            v33 = *MEMORY[0x1E69E9840];
            return v32;
          }
        }

        else
        {
LABEL_6:

          a2 = v26;
          v5 = v41;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_27;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();

  v36 = sub_1E5939174(v35, v8, v5, a2);

  MEMORY[0x1E6933430](v35, -1, -1);

  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t WorkoutPlanCreationWorkoutTrait.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7053747369747261;
  v2 = 0x576D6172676F7270;
  if (a1 != 6)
  {
    v2 = 0x6967736B6E616874;
  }

  v3 = 0x7261655977656ELL;
  if (a1 != 4)
  {
    v3 = 0x6564697270;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x796164696C6F68;
  if (a1 != 2)
  {
    v4 = 0x77654E72616E756CLL;
  }

  if (a1)
  {
    v1 = 0x6565776F6C6C6168;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5939904(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF746867696C746FLL;
  v3 = 0x7053747369747261;
  v4 = *a1;
  v5 = *a2;
  v6 = 0x576D6172676F7270;
  v7 = 0xEE0074756F6B726FLL;
  if (v4 != 6)
  {
    v6 = 0x6967736B6E616874;
    v7 = 0xEC000000676E6976;
  }

  v8 = 0xE700000000000000;
  v9 = 0x7261655977656ELL;
  if (v4 != 4)
  {
    v9 = 0x6564697270;
    v8 = 0xE500000000000000;
  }

  if (*a1 <= 5u)
  {
    v6 = v9;
    v7 = v8;
  }

  v10 = 0xE700000000000000;
  v11 = 0x796164696C6F68;
  if (v4 != 2)
  {
    v11 = 0x77654E72616E756CLL;
    v10 = 0xEC00000072616559;
  }

  v12 = 0x6565776F6C6C6168;
  v13 = 0xE90000000000006ELL;
  if (!*a1)
  {
    v12 = 0x7053747369747261;
    v13 = 0xEF746867696C746FLL;
  }

  if (*a1 <= 1u)
  {
    v11 = v12;
    v10 = v13;
  }

  if (*a1 <= 3u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v6;
  }

  if (v4 <= 3)
  {
    v15 = v10;
  }

  else
  {
    v15 = v7;
  }

  if (*a2 > 3u)
  {
    if (*a2 > 5u)
    {
      if (v5 == 6)
      {
        v2 = 0xEE0074756F6B726FLL;
        if (v14 != 0x576D6172676F7270)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEC000000676E6976;
        if (v14 != 0x6967736B6E616874)
        {
          goto LABEL_41;
        }
      }
    }

    else if (v5 == 4)
    {
      v2 = 0xE700000000000000;
      if (v14 != 0x7261655977656ELL)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v14 != 0x6564697270)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (*a2 > 1u)
    {
      if (v5 == 2)
      {
        v2 = 0xE700000000000000;
        if (v14 != 0x796164696C6F68)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x77654E72616E756CLL;
      v2 = 0xEC00000072616559;
    }

    else if (*a2)
    {
      v2 = 0xE90000000000006ELL;
      if (v14 != 0x6565776F6C6C6168)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v14 != v3)
    {
LABEL_41:
      v16 = sub_1E5A2C114();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v15 != v2)
  {
    goto LABEL_41;
  }

  v16 = 1;
LABEL_42:

  return v16 & 1;
}

uint64_t sub_1E5939BAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18FitnessWorkoutPlan0bc8CreationB5TraitO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1E5939BDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF746867696C746FLL;
  v4 = 0x7053747369747261;
  v5 = 0xEE0074756F6B726FLL;
  v6 = 0x576D6172676F7270;
  if (v2 != 6)
  {
    v6 = 0x6967736B6E616874;
    v5 = 0xEC000000676E6976;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7261655977656ELL;
  if (v2 != 4)
  {
    v8 = 0x6564697270;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x796164696C6F68;
  if (v2 != 2)
  {
    v10 = 0x77654E72616E756CLL;
    v9 = 0xEC00000072616559;
  }

  if (*v1)
  {
    v4 = 0x6565776F6C6C6168;
    v3 = 0xE90000000000006ELL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1E5939DC4()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  sub_1E5A2BB74();

  return sub_1E5A2C204();
}

uint64_t sub_1E5939F30()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_1E5A2BB74();
}

uint64_t sub_1E593A088()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  sub_1E5A2BB74();

  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bc8CreationB5TraitO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1E5A2BF34();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E593A240()
{
  result = qword_1ECFFDB50;
  if (!qword_1ECFFDB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDB58, &qword_1E5A36CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDB50);
  }

  return result;
}

unint64_t sub_1E593A2A8()
{
  result = qword_1ECFFDB60;
  if (!qword_1ECFFDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDB60);
  }

  return result;
}

unint64_t sub_1E593A30C()
{
  result = qword_1ECFFDB68;
  if (!qword_1ECFFDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDB68);
  }

  return result;
}

FitnessWorkoutPlan::WorkoutPlanRepeatRequestType_optional __swiftcall WorkoutPlanRepeatRequestType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E5A2BF34();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t WorkoutPlanRepeatRequestType.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6E6F437463617865;
  }

  *v0;
  return result;
}

uint64_t sub_1E593A40C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x6E6F437463617865;
  }

  if (v3)
  {
    v5 = 0xEC000000746E6574;
  }

  else
  {
    v5 = 0x80000001E5A45D80;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x6E6F437463617865;
  }

  if (*a2)
  {
    v7 = 0x80000001E5A45D80;
  }

  else
  {
    v7 = 0xEC000000746E6574;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();
  }

  return v9 & 1;
}

uint64_t sub_1E593A4C0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E5A2BF34();

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

void sub_1E593A520(unint64_t *a1@<X8>)
{
  v2 = 0x80000001E5A45D80;
  v3 = 0x6E6F437463617865;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEC000000746E6574;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1E593A620()
{
  result = qword_1ECFFDB70;
  if (!qword_1ECFFDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDB70);
  }

  return result;
}

uint64_t sub_1E593A674()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  sub_1E5A2BB74();

  return sub_1E5A2C204();
}

uint64_t sub_1E593A704()
{
  *v0;
  sub_1E5A2BB74();
}

uint64_t sub_1E593A780()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  sub_1E5A2BB74();

  return sub_1E5A2C204();
}

unint64_t sub_1E593A81C()
{
  result = qword_1ECFFDB78;
  if (!qword_1ECFFDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDB78);
  }

  return result;
}

uint64_t sub_1E593A888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000)
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

uint64_t sub_1E593A910(uint64_t a1)
{
  v2 = sub_1E593AC2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E593A94C(uint64_t a1)
{
  v2 = sub_1E593AC2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E593A988(uint64_t a1)
{
  v2 = sub_1E593AC80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E593A9C4(uint64_t a1)
{
  v2 = sub_1E593AC80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanItemReference.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a2;
  v16[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDB80, &qword_1E5A36ED0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDB88, &qword_1E5A36ED8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E593AC2C();
  sub_1E5A2C224();
  sub_1E593AC80();
  sub_1E5A2C024();
  sub_1E5A2C064();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_1E593AC2C()
{
  result = qword_1ECFFDB90;
  if (!qword_1ECFFDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDB90);
  }

  return result;
}

unint64_t sub_1E593AC80()
{
  result = qword_1ECFFDB98;
  if (!qword_1ECFFDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDB98);
  }

  return result;
}

uint64_t sub_1E593ACEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E593AF4C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t static WorkoutPlanItemReference.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanItemReference.hash(into:)()
{
  MEMORY[0x1E6932DE0](0);

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanItemReference.hashValue.getter()
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](0);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E593AE0C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](0);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E593AE6C()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1E6932DE0](0);

  return sub_1E5A2BB74();
}

uint64_t sub_1E593AEC0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](0);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E593AF1C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E593AF4C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDBD8, &qword_1E5A37218);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDBE0, &qword_1E5A37220);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v30 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E593AC2C();
  sub_1E5A2C214();
  if (v1)
  {
    goto LABEL_6;
  }

  v15 = v8;
  v16 = sub_1E5A2C004();
  v17 = (2 * *(v16 + 16)) | 1;
  v26 = v16;
  v27 = v16 + 32;
  v28 = 0;
  v29 = v17;
  if ((sub_1E58BC5B0() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = v7;
    v19 = sub_1E5A2BE84();
    swift_allocError();
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v21 = &type metadata for WorkoutPlanItemReference;
    v14 = v11;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v11, v18);
    swift_unknownObjectRelease();
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v14;
  }

  sub_1E593AC80();
  sub_1E5A2BF44();
  v14 = sub_1E5A2BF94();
  (*(v25 + 8))(v6, v3);
  (*(v8 + 8))(v11, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v14;
}

unint64_t sub_1E593B2C4()
{
  result = qword_1ECFFDBA0;
  if (!qword_1ECFFDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDBA0);
  }

  return result;
}

unint64_t sub_1E593B34C()
{
  result = qword_1ECFFDBA8;
  if (!qword_1ECFFDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDBA8);
  }

  return result;
}

unint64_t sub_1E593B3A4()
{
  result = qword_1ECFFDBB0;
  if (!qword_1ECFFDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDBB0);
  }

  return result;
}

unint64_t sub_1E593B3FC()
{
  result = qword_1ECFFDBB8;
  if (!qword_1ECFFDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDBB8);
  }

  return result;
}

unint64_t sub_1E593B454()
{
  result = qword_1ECFFDBC0;
  if (!qword_1ECFFDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDBC0);
  }

  return result;
}

unint64_t sub_1E593B4AC()
{
  result = qword_1ECFFDBC8;
  if (!qword_1ECFFDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDBC8);
  }

  return result;
}

unint64_t sub_1E593B504()
{
  result = qword_1ECFFDBD0;
  if (!qword_1ECFFDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDBD0);
  }

  return result;
}

uint64_t sub_1E593B564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CreatePersonalizedWorkoutPlanButtonState()
{
  result = qword_1ECFFDC10;
  if (!qword_1ECFFDC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CreatePersonalizedWorkoutPlanButtonState.handoffAlertState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CreatePersonalizedWorkoutPlanButtonState();
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t CreatePersonalizedWorkoutPlanButtonState.handoffAlertState.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for CreatePersonalizedWorkoutPlanButtonState();
  v5 = (v1 + *(result + 24));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t CreatePersonalizedWorkoutPlanButtonState.imageName.getter()
{
  v1 = (v0 + *(type metadata accessor for CreatePersonalizedWorkoutPlanButtonState() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CreatePersonalizedWorkoutPlanButtonState.localizedTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for CreatePersonalizedWorkoutPlanButtonState() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *CreatePersonalizedWorkoutPlanButtonState.init(candidate:index:handoffAlertState:imageName:storefrontLocale:supportsHandoffToCompanionDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v35 = a7;
  v33 = a4;
  v34 = a5;
  v32 = a2;
  v12 = sub_1E5A29EB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5A2BB14();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = *a3;
  v20 = a3[1];
  sub_1E593B564(a1, a8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v21 = qword_1EE2D33E0;
  (*(v13 + 16))(v16, a6, v12);
  v22 = v21;
  v23 = sub_1E5A2BB64();
  v25 = v24;
  (*(v13 + 8))(a6, v12);
  sub_1E58BAD14(a1, &qword_1ECFFC120, &qword_1E5A2FF10);
  result = type metadata accessor for CreatePersonalizedWorkoutPlanButtonState();
  v27 = v33;
  *(a8 + result[5]) = v32;
  v28 = (a8 + result[6]);
  *v28 = v19;
  v28[1] = v20;
  v29 = (a8 + result[7]);
  v30 = v34;
  *v29 = v27;
  v29[1] = v30;
  v31 = (a8 + result[8]);
  *v31 = v23;
  v31[1] = v25;
  *(a8 + result[9]) = v35 & 1;
  return result;
}

int *CreatePersonalizedWorkoutPlanButtonState.init(candidate:index:handoffAlertState:imageName:localizedTitle:supportsHandoffToCompanionDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v16 = *a3;
  v17 = a3[1];
  sub_1E58D6730(a1, a9);
  result = type metadata accessor for CreatePersonalizedWorkoutPlanButtonState();
  *(a9 + result[5]) = a2;
  v19 = (a9 + result[6]);
  *v19 = v16;
  v19[1] = v17;
  v20 = (a9 + result[7]);
  *v20 = a4;
  v20[1] = a5;
  v21 = (a9 + result[8]);
  *v21 = a6;
  v21[1] = a7;
  *(a9 + result[9]) = a8;
  return result;
}

uint64_t sub_1E593BAB4()
{
  v1 = *v0;
  v2 = 0x74616469646E6163;
  v3 = 0x6D614E6567616D69;
  v4 = 0x657A696C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000020;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7865646E69;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1E593BB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E593CADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E593BBAC(uint64_t a1)
{
  v2 = sub_1E593C340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E593BBE8(uint64_t a1)
{
  v2 = sub_1E593C340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreatePersonalizedWorkoutPlanButtonState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDBE8, &qword_1E5A37228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E593C340();
  sub_1E5A2C224();
  v23[15] = 0;
  type metadata accessor for PersonalizedWorkoutPlanCandidate();
  sub_1E58D7110(&qword_1ECFFC158);
  sub_1E5A2C054();
  if (!v2)
  {
    PersonalizedWorkoutPlanButtonState = type metadata accessor for CreatePersonalizedWorkoutPlanButtonState();
    v12 = *(v3 + PersonalizedWorkoutPlanButtonState[5]);
    v23[14] = 1;
    sub_1E5A2C094();
    v13 = (v3 + PersonalizedWorkoutPlanButtonState[6]);
    v14 = *v13;
    LOBYTE(v13) = v13[1];
    v23[12] = v14;
    v23[13] = v13;
    v23[11] = 2;
    sub_1E593C394();
    sub_1E5A2C0B4();
    v15 = (v3 + PersonalizedWorkoutPlanButtonState[7]);
    v16 = *v15;
    v17 = v15[1];
    v23[10] = 3;
    sub_1E5A2C034();
    v18 = (v3 + PersonalizedWorkoutPlanButtonState[8]);
    v19 = *v18;
    v20 = v18[1];
    v23[9] = 4;
    sub_1E5A2C064();
    v21 = *(v3 + PersonalizedWorkoutPlanButtonState[9]);
    v23[8] = 5;
    sub_1E5A2C074();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CreatePersonalizedWorkoutPlanButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDC00, &qword_1E5A37230);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v30 - v10;
  PersonalizedWorkoutPlanButtonState = type metadata accessor for CreatePersonalizedWorkoutPlanButtonState();
  v13 = *(*(PersonalizedWorkoutPlanButtonState - 1) + 64);
  MEMORY[0x1EEE9AC00](PersonalizedWorkoutPlanButtonState);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1E593C340();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v18 = v15;
  type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v41 = 0;
  sub_1E58D7110(&qword_1ECFFC188);
  v19 = v32;
  sub_1E5A2BF84();
  sub_1E58D6730(v7, v18);
  v40 = 1;
  *(v18 + PersonalizedWorkoutPlanButtonState[5]) = sub_1E5A2BFC4();
  v37 = 2;
  sub_1E593C3E8();
  sub_1E5A2BFE4();
  v20 = v39;
  v21 = (v18 + PersonalizedWorkoutPlanButtonState[6]);
  *v21 = v38;
  v21[1] = v20;
  v36 = 3;
  v22 = sub_1E5A2BF64();
  v23 = (v18 + PersonalizedWorkoutPlanButtonState[7]);
  *v23 = v22;
  v23[1] = v24;
  v35 = 4;
  v25 = sub_1E5A2BF94();
  v26 = (v18 + PersonalizedWorkoutPlanButtonState[8]);
  *v26 = v25;
  v26[1] = v27;
  v34 = 5;
  v28 = sub_1E5A2BFA4();
  (*(v8 + 8))(v11, v19);
  *(v18 + PersonalizedWorkoutPlanButtonState[9]) = v28 & 1;
  sub_1E593C43C(v18, v31);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1E593CCF0(v18, type metadata accessor for CreatePersonalizedWorkoutPlanButtonState);
}

unint64_t sub_1E593C340()
{
  result = qword_1ECFFDBF0;
  if (!qword_1ECFFDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDBF0);
  }

  return result;
}

unint64_t sub_1E593C394()
{
  result = qword_1ECFFDBF8;
  if (!qword_1ECFFDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDBF8);
  }

  return result;
}

unint64_t sub_1E593C3E8()
{
  result = qword_1ECFFDC08;
  if (!qword_1ECFFDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDC08);
  }

  return result;
}

uint64_t sub_1E593C43C(uint64_t a1, uint64_t a2)
{
  PersonalizedWorkoutPlanButtonState = type metadata accessor for CreatePersonalizedWorkoutPlanButtonState();
  (*(*(PersonalizedWorkoutPlanButtonState - 8) + 16))(a2, a1, PersonalizedWorkoutPlanButtonState);
  return a2;
}

uint64_t _s18FitnessWorkoutPlan018CreatePersonalizedbC11ButtonStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDC38, &unk_1E5A37420);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v41 - v16;
  v18 = *(v15 + 56);
  sub_1E593B564(a1, &v41 - v16);
  sub_1E593B564(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_1E58BAD14(v17, &qword_1ECFFC120, &qword_1E5A2FF10);
      goto LABEL_8;
    }

LABEL_6:
    sub_1E58BAD14(v17, &qword_1ECFFDC38, &unk_1E5A37420);
    goto LABEL_22;
  }

  sub_1E593B564(v17, v12);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_1E593CCF0(v12, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    goto LABEL_6;
  }

  sub_1E593CD50(&v17[v18], v8);
  v20 = _s18FitnessWorkoutPlan012PersonalizedbC9CandidateV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_1E593CCF0(v8, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  sub_1E593CCF0(v12, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  sub_1E58BAD14(v17, &qword_1ECFFC120, &qword_1E5A2FF10);
  if (!v20)
  {
    goto LABEL_22;
  }

LABEL_8:
  PersonalizedWorkoutPlanButtonState = type metadata accessor for CreatePersonalizedWorkoutPlanButtonState();
  if (*(a1 + PersonalizedWorkoutPlanButtonState[5]) != *(a2 + PersonalizedWorkoutPlanButtonState[5]))
  {
    goto LABEL_22;
  }

  v22 = 0;
  v23 = PersonalizedWorkoutPlanButtonState[6];
  v24 = a1 + v23;
  v25 = *(a1 + v23);
  v26 = (a2 + v23);
  if (v25 == *v26 && ((*(v24 + 1) ^ v26[1]) & 1) == 0)
  {
    v27 = PersonalizedWorkoutPlanButtonState[7];
    v28 = (a1 + v27);
    v29 = *(a1 + v27 + 8);
    v30 = (a2 + v27);
    v31 = v30[1];
    if (v29)
    {
      if (!v31)
      {
        goto LABEL_22;
      }

      if (*v28 != *v30 || v29 != v31)
      {
        v32 = PersonalizedWorkoutPlanButtonState;
        v33 = sub_1E5A2C114();
        PersonalizedWorkoutPlanButtonState = v32;
        if ((v33 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else if (v31)
    {
      goto LABEL_22;
    }

    v34 = PersonalizedWorkoutPlanButtonState[8];
    v36 = *(a1 + v34);
    v35 = *(a1 + v34 + 8);
    v37 = (a2 + v34);
    if (v36 == *v37 && v35 == v37[1] || (v38 = PersonalizedWorkoutPlanButtonState, v39 = sub_1E5A2C114(), PersonalizedWorkoutPlanButtonState = v38, (v39 & 1) != 0))
    {
      v22 = *(a1 + PersonalizedWorkoutPlanButtonState[9]) ^ *(a2 + PersonalizedWorkoutPlanButtonState[9]) ^ 1;
      return v22 & 1;
    }

LABEL_22:
    v22 = 0;
  }

  return v22 & 1;
}

void sub_1E593C868()
{
  sub_1E593C91C();
  if (v0 <= 0x3F)
  {
    sub_1E593C974();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E593C91C()
{
  if (!qword_1EE2D0510)
  {
    type metadata accessor for PersonalizedWorkoutPlanCandidate();
    v0 = sub_1E5A2BD84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D0510);
    }
  }
}

void sub_1E593C974()
{
  if (!qword_1EE2CFA60)
  {
    v0 = sub_1E5A2BD84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2CFA60);
    }
  }
}

unint64_t sub_1E593C9D8()
{
  result = qword_1ECFFDC20;
  if (!qword_1ECFFDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDC20);
  }

  return result;
}

unint64_t sub_1E593CA30()
{
  result = qword_1ECFFDC28;
  if (!qword_1ECFFDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDC28);
  }

  return result;
}

unint64_t sub_1E593CA88()
{
  result = qword_1ECFFDC30;
  if (!qword_1ECFFDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDC30);
  }

  return result;
}

uint64_t sub_1E593CADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616469646E6163 && a2 == 0xE900000000000065;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A46760 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E5A46780 == a2)
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

uint64_t sub_1E593CCF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E593CD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E593CDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
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

uint64_t sub_1E593CE70(uint64_t a1)
{
  v2 = sub_1E593D1A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E593CEAC(uint64_t a1)
{
  v2 = sub_1E593D1A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E593CEE8(uint64_t a1)
{
  v2 = sub_1E593D1F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E593CF24(uint64_t a1)
{
  v2 = sub_1E593D1F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlansAction.hashValue.getter()
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](0);
  return sub_1E5A2C204();
}

uint64_t WorkoutPlansAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDC40, &qword_1E5A37430);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDC48, &qword_1E5A37438);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E593D1A4();
  sub_1E5A2C224();
  sub_1E593D1F8();
  sub_1E5A2C024();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1E593D1A4()
{
  result = qword_1ECFFDC50;
  if (!qword_1ECFFDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDC50);
  }

  return result;
}

unint64_t sub_1E593D1F8()
{
  result = qword_1ECFFDC58;
  if (!qword_1ECFFDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDC58);
  }

  return result;
}

uint64_t sub_1E593D27C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDC40, &qword_1E5A37430);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDC48, &qword_1E5A37438);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E593D1A4();
  sub_1E5A2C224();
  sub_1E593D1F8();
  sub_1E5A2C024();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E593D454(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDC90, &qword_1E5A376E0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDC98, &qword_1E5A376E8);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E593D1A4();
  sub_1E5A2C214();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1E5A2C004();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_1E58BC5B0() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1E5A2BE84();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v19 = &type metadata for WorkoutPlansAction;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1E593D1F8();
  sub_1E5A2BF44();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t sub_1E593D7A4()
{
  result = qword_1ECFFDC60;
  if (!qword_1ECFFDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDC60);
  }

  return result;
}

unint64_t sub_1E593D82C()
{
  result = qword_1ECFFDC68;
  if (!qword_1ECFFDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDC68);
  }

  return result;
}

unint64_t sub_1E593D884()
{
  result = qword_1ECFFDC70;
  if (!qword_1ECFFDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDC70);
  }

  return result;
}

unint64_t sub_1E593D8DC()
{
  result = qword_1ECFFDC78;
  if (!qword_1ECFFDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDC78);
  }

  return result;
}

unint64_t sub_1E593D934()
{
  result = qword_1ECFFDC80;
  if (!qword_1ECFFDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDC80);
  }

  return result;
}

unint64_t sub_1E593D98C()
{
  result = qword_1ECFFDC88;
  if (!qword_1ECFFDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDC88);
  }

  return result;
}

uint64_t sub_1E593D9F0(uint64_t a1)
{
  v2 = sub_1E593DFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E593DA2C(uint64_t a1)
{
  v2 = sub_1E593DFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E593DA68(uint64_t a1)
{
  v2 = sub_1E593E0BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E593DAA4(uint64_t a1)
{
  v2 = sub_1E593E0BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E593DAE0(uint64_t a1)
{
  v2 = sub_1E593E068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E593DB1C(uint64_t a1)
{
  v2 = sub_1E593E068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E593DB58(uint64_t a1)
{
  v2 = sub_1E593E014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E593DB94(uint64_t a1)
{
  v2 = sub_1E593E014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlansPlacement.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

uint64_t PersonalizedWorkoutPlansPlacement.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDCA0, &qword_1E5A376F0);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDCA8, &qword_1E5A376F8);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDCB0, &qword_1E5A37700);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDCB8, &qword_1E5A37708);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E593DFC0();
  sub_1E5A2C224();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1E593E068();
      sub_1E5A2C024();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1E593E014();
      v21 = v27;
      sub_1E5A2C024();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1E593E0BC();
    sub_1E5A2C024();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

unint64_t sub_1E593DFC0()
{
  result = qword_1EE2D0878;
  if (!qword_1EE2D0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0878);
  }

  return result;
}

unint64_t sub_1E593E014()
{
  result = qword_1ECFFDCC0;
  if (!qword_1ECFFDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDCC0);
  }

  return result;
}

unint64_t sub_1E593E068()
{
  result = qword_1EE2D0860;
  if (!qword_1EE2D0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0860);
  }

  return result;
}

unint64_t sub_1E593E0BC()
{
  result = qword_1ECFFDCC8;
  if (!qword_1ECFFDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDCC8);
  }

  return result;
}

uint64_t sub_1E593E128@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E593E170(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E593E170(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDCE0, &qword_1E5A37B30);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDCE8, &qword_1E5A37B38);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDCF0, &qword_1E5A37B40);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDCF8, &qword_1E5A37B48);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E593DFC0();
  v18 = v39;
  sub_1E5A2C214();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1E5A2C004();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1E58BC5A8();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1E593E068();
          sub_1E5A2BF44();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1E593E014();
        v29 = v15;
        sub_1E5A2BF44();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1E593E0BC();
        v29 = v15;
        sub_1E5A2BF44();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1E5A2BE84();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v27 = &type metadata for PersonalizedWorkoutPlansPlacement;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

unint64_t sub_1E593E6E4()
{
  result = qword_1ECFFDCD0;
  if (!qword_1ECFFDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDCD0);
  }

  return result;
}

unint64_t sub_1E593E78C()
{
  result = qword_1ECFFDCD8;
  if (!qword_1ECFFDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDCD8);
  }

  return result;
}

unint64_t sub_1E593E7E4()
{
  result = qword_1EE2D0840;
  if (!qword_1EE2D0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0840);
  }

  return result;
}

unint64_t sub_1E593E83C()
{
  result = qword_1EE2D0848;
  if (!qword_1EE2D0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0848);
  }

  return result;
}

unint64_t sub_1E593E894()
{
  result = qword_1EE2D0850;
  if (!qword_1EE2D0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0850);
  }

  return result;
}

unint64_t sub_1E593E8EC()
{
  result = qword_1EE2D0858;
  if (!qword_1EE2D0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0858);
  }

  return result;
}

unint64_t sub_1E593E944()
{
  result = qword_1EE2D0880;
  if (!qword_1EE2D0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0880);
  }

  return result;
}

unint64_t sub_1E593E99C()
{
  result = qword_1EE2D0888;
  if (!qword_1EE2D0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0888);
  }

  return result;
}

unint64_t sub_1E593E9F4()
{
  result = qword_1EE2D0868;
  if (!qword_1EE2D0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0868);
  }

  return result;
}

unint64_t sub_1E593EA4C()
{
  result = qword_1EE2D0870;
  if (!qword_1EE2D0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D0870);
  }

  return result;
}

uint64_t MusicGenrePreferenceView.init(store:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  result = sub_1E5A2A654();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E593EB30(uint64_t a1, uint64_t a2)
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

__n128 sub_1E593EC74@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t sub_1E593ED9C(uint64_t a1)
{
  v3 = a1 + 56;
  v24 = v1[1];
  v25 = *v1;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v12 = *v10;
    v11 = v10[1];
    v6 &= v6 - 1;

    sub_1E593EC74(v12, v11, v26);
    v28[0] = *v26;
    v28[1] = *&v26[16];
    v28[2] = *&v26[32];
    v28[3] = *&v26[48];
    v13 = *v26;
    v29 = v27;
    v30 = *&v26[8];
    v31 = *&v26[24];
    v32 = *&v26[40];
    v33 = *&v26[56];
    if (*v26)
    {
      v14 = v29;
      v15 = sub_1E59FA5FC(4, v29);

      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1E58E6CF4(0, *(v23 + 2) + 1, 1, v23);
        }

        v17 = *(v23 + 2);
        v16 = *(v23 + 3);
        if (v17 >= v16 >> 1)
        {
          v23 = sub_1E58E6CF4((v16 > 1), v17 + 1, 1, v23);
        }

        *(v23 + 2) = v17 + 1;
        v18 = &v23[72 * v17];
        *(v18 + 4) = v13;
        v19 = v30;
        v20 = v31;
        v21 = v33;
        *(v18 + 72) = v32;
        *(v18 + 56) = v20;
        *(v18 + 40) = v19;
        *(v18 + 11) = v21;
        *(v18 + 12) = v14;
      }

      else
      {
        sub_1E58BAD14(v28, &qword_1ECFFD7D8, &qword_1E5A35E50);
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      *&v28[0] = v23;

      sub_1E5942A40(v28, sub_1E5A226D0, &type metadata for WorkoutPlanModality, sub_1E5919D7C, sub_1E5919B74);

      return *&v28[0];
    }

    v6 = *(v3 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  MEMORY[0x1E69331F0](v7);

  __break(1u);
  return result;
}

uint64_t sub_1E593F054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v25[0] = v21;
  v25[1] = v22;
  v25[2] = v23;
  v25[3] = v24;

  result = sub_1E58F011C(v25);
  v7 = 0;
  v8 = 1 << *(v23 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v23 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = (*(v23 + 48) + ((v7 << 11) | (32 * __clz(__rbit64(v10)))));
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    if (*v13 == a1 && v14 == a2)
    {
      v15 = a1;
LABEL_17:

      *a3 = v15;
      a3[1] = v14;
      a3[2] = v16;
      a3[3] = v17;
      return result;
    }

    v10 &= v10 - 1;
    result = sub_1E5A2C114();
    if (result)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      *a3 = 0u;
      *(a3 + 1) = 0u;
      return result;
    }

    v10 = *(v23 + 56 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E593F1EC(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
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
  v28 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v10;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
    v13 = *v12;
    v14 = v12[1];
    v8 &= v8 - 1;

    sub_1E593F054(v13, v14, &v29);

    v15 = v30;
    if (v30)
    {
      v26 = v31;
      v27 = v29;
      v16 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1E58E7278(0, *(v28 + 2) + 1, 1, v28);
      }

      v17 = v27;
      v19 = *(v28 + 2);
      v18 = *(v28 + 3);
      v20 = v19 + 1;
      v21 = v26;
      if (v19 >= v18 >> 1)
      {
        v24 = sub_1E58E7278((v18 > 1), v19 + 1, 1, v28);
        v20 = v19 + 1;
        v21 = v26;
        v22 = v16;
        v28 = v24;
        v17 = v27;
      }

      else
      {
        v22 = v16;
      }

      *(v28 + 2) = v20;
      v23 = &v28[32 * v19];
      *(v23 + 4) = v17;
      *(v23 + 5) = v15;
      *(v23 + 6) = v21;
      *(v23 + 7) = v22;
    }

    else
    {
      sub_1E58C2D88(v29, 0);
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

      v29 = v28;

      sub_1E5942A40(&v29, sub_1E5A22738, &type metadata for WorkoutPlanMusicGenre, sub_1E59049C0, sub_1E59048F0);

      return v29;
    }

    v8 = *(v5 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  MEMORY[0x1E69331F0](a1);

  __break(1u);
  return result;
}

uint64_t sub_1E593F434(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(v2 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  if (*(v13 + 16) && (v8 = sub_1E58EF508(v5, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v13 + 56) + 32 * v8 + 16);

    v11 = sub_1E59E8F3C(v3, v4, v10);
  }

  else
  {

    v11 = 0;
  }

  return v11 & 1;
}

uint64_t MusicGenrePreferenceView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  v2 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDD00, &qword_1E5A37B60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  v10 = *v1;
  v9 = v1[1];
  *v8 = sub_1E5A2AA34();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDD08, &qword_1E5A37B68) + 44);
  v31 = v10;
  v32 = v9;
  v12 = sub_1E5A2AA24();
  v35 = 0;
  sub_1E5941D7C(v36);
  memcpy(v43, v36, sizeof(v43));
  memcpy(v44, v36, 0x130uLL);
  sub_1E58BABA0(v43, &v33, &qword_1ECFFDD10, &qword_1E5A37B70);
  sub_1E58BAD14(v44, &qword_1ECFFDD10, &qword_1E5A37B70);
  memcpy(&v34[7], v43, 0x130uLL);
  v13 = v35;
  v14 = sub_1E5A2ADC4();
  sub_1E5A2A424();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v36[0] = v12;
  v36[1] = 0x4014000000000000;
  LOBYTE(v36[2]) = v13;
  memcpy(&v36[2] + 1, v34, 0x137uLL);
  v37 = v14;
  v38 = v16;
  v39 = v18;
  v40 = v20;
  v41 = v22;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDD18, &qword_1E5A37B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDD20, &qword_1E5A37B80);
  sub_1E59424A8();
  sub_1E5942560();
  sub_1E5A2B714();
  v23 = *MEMORY[0x1E697E728];
  v24 = sub_1E5A2A684();
  (*(*(v24 - 8) + 104))(v4, v23, v24);
  sub_1E5942D58(&qword_1ECFFBF40, MEMORY[0x1E697E730]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E58CD164(&qword_1ECFFDD68, &qword_1ECFFDD00, &qword_1E5A37B60);
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    v26 = v30;
    sub_1E5A2B164();
    sub_1E58BAD14(v4, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E589DA84(v8);
    v27 = swift_allocObject();
    *(v27 + 16) = v10;
    *(v27 + 24) = v9;
    v28 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDD70, &qword_1E5A37BA0) + 36));
    *v28 = sub_1E5942850;
    v28[1] = v27;
    v28[2] = 0;
    v28[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E593F934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDD50, &qword_1E5A37B90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v16)
  {
    v18 = v16;
    v11 = WorkoutPlanSchedule.modalityIdentifiers()();

    v16 = a1;
    v17 = a2;
    sub_1E593ED9C(v11);
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDD60, &qword_1E5A37B98);
    sub_1E58CD164(&qword_1ECFFDD58, &qword_1ECFFDD60, &qword_1E5A37B98);
    sub_1E591AFC4();
    sub_1E591B018();
    sub_1E5A2B6D4();
    (*(v7 + 32))(a3, v10, v6);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v7 + 56))(a3, v13, 1, v6);
}

uint64_t sub_1E593FB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v75 = a5;
  v67 = a4;
  v66 = a3;
  v74 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD740, &unk_1E5A35D60);
  v76 = *(v72 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v64 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD668, &qword_1E5A35C00);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v63 - v14;
  v15 = sub_1E5A2A9E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC0F0, &unk_1E5A37CB0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v63 - v23;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD630, &qword_1E5A35BD8);
  v25 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v63 - v26;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDD80, &qword_1E5A37CC0);
  v70 = *(v73 - 8);
  v27 = *(v70 + 64);
  v28 = MEMORY[0x1EEE9AC00](v73);
  v71 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v63 - v30;
  v32 = *(a2 + 48);
  v90[2] = *(a2 + 32);
  v90[3] = v32;
  v91 = *(a2 + 64);
  v33 = *(a2 + 16);
  v90[0] = *a2;
  v90[1] = v33;
  *a6 = sub_1E5A2AA34();
  *(a6 + 8) = 0;
  v77 = a6;
  *(a6 + 16) = 1;
  v83 = v66;
  v84 = v67;
  v85 = v90;
  v82 = v90;
  v79 = v66;
  v80 = v67;
  v81 = v90;
  sub_1E5A2B504();
  sub_1E5A2A9D4();
  sub_1E58CD164(&qword_1ECFFC0F8, &qword_1ECFFC0F0, &unk_1E5A37CB0);
  sub_1E5A2B264();
  (*(v16 + 8))(v19, v15);
  (*(v21 + 8))(v24, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDD88, &qword_1E5A37CC8);
  sub_1E591B0D0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDD90, &qword_1E5A37CD0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDD98, &qword_1E5A37CD8);
  v36 = sub_1E5A2AD04();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDDA0, &qword_1E5A37CE0);
  v38 = v68;
  v39 = sub_1E58CD164(&qword_1ECFFDDA8, &qword_1ECFFDDA0, &qword_1E5A37CE0);
  v86 = v37;
  v87 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v35;
  v87 = v36;
  v88 = OpaqueTypeConformance2;
  v89 = MEMORY[0x1E697CC08];
  v41 = swift_getOpaqueTypeConformance2();
  v86 = v34;
  v87 = v41;
  swift_getOpaqueTypeConformance2();
  v42 = v31;
  v43 = v72;
  sub_1E5A2B714();
  v44 = 1;
  if (*(v75 + 16) - 1 != v74)
  {
    v45 = v64;
    sub_1E5A2B6B4();
    v46 = sub_1E5A2ADF4();
    sub_1E5A2A424();
    v47 = v45 + *(v43 + 36);
    *v47 = v46;
    *(v47 + 8) = v48;
    *(v47 + 16) = v49;
    *(v47 + 24) = v50;
    *(v47 + 32) = v51;
    *(v47 + 40) = 0;
    sub_1E58F0054(v45, v38, &qword_1ECFFD740, &unk_1E5A35D60);
    v44 = 0;
  }

  v52 = v38;
  (*(v76 + 56))(v38, v44, 1, v43);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDDB0, &qword_1E5A37CE8);
  v54 = (v77 + *(v53 + 44));
  v55 = v70;
  v56 = *(v70 + 16);
  v57 = v71;
  v58 = v73;
  v56(v71, v42, v73);
  v59 = v78;
  sub_1E58BABA0(v52, v78, &qword_1ECFFD668, &qword_1E5A35C00);
  v56(v54, v57, v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDDB8, &qword_1E5A37CF0);
  sub_1E58BABA0(v59, &v54[*(v60 + 48)], &qword_1ECFFD668, &qword_1E5A35C00);
  sub_1E58BAD14(v52, &qword_1ECFFD668, &qword_1E5A35C00);
  v61 = *(v55 + 8);
  v61(v42, v58);
  sub_1E58BAD14(v59, &qword_1ECFFD668, &qword_1E5A35C00);
  return (v61)(v57, v58);
}

uint64_t sub_1E5940364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v7 = sub_1E5A2AAC4();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A2ACE4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2AD04();
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E5A2AC64();
  v42 = *(v44 - 8);
  v16 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDDA0, &qword_1E5A37CE0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v42 - v22;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDD98, &qword_1E5A37CD8);
  v43 = *(v46 - 8);
  v24 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v26 = &v42 - v25;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDD90, &qword_1E5A37CD0);
  v47 = *(v49 - 8);
  v27 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v29 = &v42 - v28;
  sub_1E5A2AD64();
  v56 = a1;
  v57 = a2;
  v58 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDDC0, &qword_1E5A37D18);
  sub_1E5942C58();
  sub_1E5A2A4C4();
  sub_1E5A2AC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD770, &qword_1E5A35D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C930;
  LOBYTE(a2) = sub_1E5A2AD84();
  *(inited + 32) = a2;
  v31 = sub_1E5A2AD64();
  *(inited + 33) = v31;
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != a2)
  {
    sub_1E5A2AD74();
  }

  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v31)
  {
    sub_1E5A2AD74();
  }

  v32 = sub_1E58CD164(&qword_1ECFFDDA8, &qword_1ECFFDDA0, &qword_1E5A37CE0);
  sub_1E5A2B1B4();
  (*(v42 + 8))(v18, v44);
  (*(v20 + 8))(v23, v19);
  sub_1E5A2ACD4();
  v33 = v48;
  sub_1E5A2ACF4();
  v59 = v19;
  v60 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = MEMORY[0x1E697CC08];
  v36 = v46;
  v37 = v51;
  sub_1E5A2B244();
  (*(v50 + 8))(v33, v37);
  (*(v43 + 8))(v26, v36);
  v38 = v52;
  sub_1E5A2AAB4();
  v39 = sub_1E5A2AD64();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v39)
  {
    sub_1E5A2AD74();
  }

  v59 = v36;
  v60 = v37;
  v61 = OpaqueTypeConformance2;
  v62 = v35;
  swift_getOpaqueTypeConformance2();
  v40 = v49;
  sub_1E5A2B234();
  (*(v54 + 8))(v38, v55);
  return (*(v47 + 8))(v29, v40);
}

uint64_t sub_1E5940A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v47 = a4;
  v40 = a1;
  v44 = sub_1E5A2AB24();
  v5 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v45 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A2B764();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1E5A2B774();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDDD0, &unk_1E5A37D20);
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDDE0, &qword_1E5A37D30);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v39 - v23;
  swift_getKeyPath();
  v41 = a2;
  sub_1E5A2B934();

  v25 = v49;
  if (*(v49 + 16) && (v26 = sub_1E58EF508(*(v46 + 8), *(v46 + 16)), (v27 & 1) != 0))
  {
    v28 = *(*(v25 + 56) + (v26 << 6) + 32);

    *v11 = xmmword_1E5A317E0;
    (*(v8 + 104))(v11, *MEMORY[0x1E697D748], v7);
    sub_1E5A2B784();
    if (*(v28 + 16) <= 1uLL)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    sub_1E59E9100(v15, v29);
    v30 = sub_1E5A2A934();
    v39[1] = v39;
    MEMORY[0x1EEE9AC00](v30);
    v31 = v41;
    v39[-4] = v40;
    v39[-3] = v31;
    v38 = v46;
    v48 = 0;
    sub_1E5942D58(&qword_1EE2CFAF0, MEMORY[0x1E697FCB0]);
    sub_1E5A2C264();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDDE8, &qword_1E5A37D58);
    v37 = sub_1E5942DA0();
    sub_1E5A2B824();

    sub_1E58CD164(&qword_1ECFFDDD8, &qword_1ECFFDDD0, &unk_1E5A37D20);
    v32 = v43;
    sub_1E5A2B204();
    (*(v42 + 8))(v19, v32);
    v33 = v47;
    (*(v21 + 32))(v47, v24, v20);
    v34 = v33;
    v35 = 0;
  }

  else
  {

    v35 = 1;
    v34 = v47;
  }

  return (*(v21 + 56))(v34, v35, 1, v20);
}

uint64_t sub_1E5940EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[9] = sub_1E593F1EC(a3);
  swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *(a4 + 48);
  *(v7 + 64) = *(a4 + 32);
  *(v7 + 80) = v8;
  *(v7 + 96) = *(a4 + 64);
  v9 = *(a4 + 16);
  *(v7 + 32) = *a4;
  *(v7 + 48) = v9;

  sub_1E591B3E0(a4, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDE20, &qword_1E5A37DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDE00, &qword_1E5A37D60);
  sub_1E58CD164(&qword_1ECFFDE28, &qword_1ECFFDE20, &qword_1E5A37DA0);
  sub_1E5942E24();
  return sub_1E5A2B6E4();
}

uint64_t sub_1E5941058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDE10, &qword_1E5A37D70);
  v38 = *(v37 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v36 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDE08, &qword_1E5A37D68);
  v40 = *(v39 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v14 = &v36 - v13;
  v15 = *a1;
  v16 = a1[1];
  v18 = a1[2];
  v17 = a1[3];
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = v15;
  *(v19 + 40) = v16;
  *(v19 + 48) = v18;
  *(v19 + 56) = v17;
  v20 = *(a4 + 48);
  *(v19 + 96) = *(a4 + 32);
  *(v19 + 112) = v20;
  *(v19 + 128) = *(a4 + 64);
  v21 = *(a4 + 16);
  *(v19 + 64) = *a4;
  *(v19 + 80) = v21;
  v42 = v15;
  v43 = v16;
  v44 = v18;
  v45 = v17;
  v46 = a2;
  v47 = a3;
  v48 = a4;

  sub_1E591B3E0(a4, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDE30, &qword_1E5A37DA8);
  sub_1E5942FAC();
  sub_1E5A2B574();
  sub_1E5A2AD64();
  sub_1E5A2B7F4();
  v22 = sub_1E58CD164(&qword_1ECFFDE18, &qword_1ECFFDE10, &qword_1E5A37D70);
  v23 = v37;
  sub_1E5A2B274();
  (*(v38 + 8))(v11, v23);
  v49[0] = v23;
  v49[1] = v22;
  swift_getOpaqueTypeConformance2();
  sub_1E58EFCE8();
  v24 = v41;
  v25 = v39;
  sub_1E5A2B0C4();
  (*(v40 + 8))(v14, v25);
  LOBYTE(v23) = sub_1E5A2ADF4();
  sub_1E5A2A424();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDE00, &qword_1E5A37D60);
  v35 = v24 + *(result + 36);
  *v35 = v23;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_1E5941408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for WorkoutPlanCreationAction();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *v15 = a3;
  *(v15 + 1) = a4;
  *(v15 + 2) = a5;
  *(v15 + 3) = a6;
  v16 = *(a7 + 48);
  *(v15 + 4) = *(a7 + 32);
  *(v15 + 5) = v16;
  *(v15 + 12) = *(a7 + 64);
  v17 = *(a7 + 16);
  *(v15 + 2) = *a7;
  *(v15 + 3) = v17;
  swift_storeEnumTagMultiPayload();

  sub_1E591B3E0(a7, v20);
  sub_1E5A2B954();
  return sub_1E59429E4(v15);
}

uint64_t sub_1E5941500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  v113 = a6;
  v114 = a3;
  v111 = a5;
  v112 = a2;
  v109 = a8;
  v110 = a1;
  v11 = sub_1E5A2A9B4();
  v115 = *(v11 - 8);
  v116 = v11;
  v12 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD778, &unk_1E5A35DE0);
  v14 = *(*(v103 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v103);
  v108 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v118 = &v96 - v17;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD780, &unk_1E5A37DE0);
  v18 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v119 = &v96 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDE58, &qword_1E5A37DB8);
  v20 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v22 = &v96 - v21;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDE48, &qword_1E5A37DB0);
  v23 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v117 = &v96 - v24;
  *&v126 = a3;
  *(&v126 + 1) = a4;
  sub_1E58D1C80();

  v25 = sub_1E5A2AFD4();
  v27 = v26;
  v29 = v28;
  sub_1E5A2AED4();
  sub_1E5A2AE24();

  v30 = sub_1E5A2AFA4();
  v98 = v31;
  v99 = v30;
  v33 = v32;
  v100 = v34;

  sub_1E58B3C9C(v25, v27, v29 & 1);

  *&v135 = v111;
  *(&v135 + 1) = v113;
  *&v120 = v110;
  *(&v120 + 1) = v112;
  *&v121 = v114;
  *(&v121 + 1) = a4;
  v104 = a4;
  v105 = a7;
  v35 = a7[3];
  v128 = a7[2];
  v129 = v35;
  *&v130 = *(a7 + 8);
  v36 = a7[1];
  v126 = *a7;
  v127 = v36;
  if (sub_1E593F434(&v120, &v126))
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v37 = qword_1ED026498;
  }

  else
  {
    v37 = sub_1E5A2B444();
  }

  *&v126 = v37;
  v39 = v98;
  v38 = v99;
  v40 = sub_1E5A2AF84();
  v96 = v42;
  v97 = v41;
  v44 = v43;
  sub_1E58B3C9C(v38, v39, v33 & 1);

  sub_1E5A2B7E4();
  sub_1E5A2A764();
  v45 = v44 & 1;
  v133 = v44 & 1;
  v46 = sub_1E5A2ADA4();
  v134 = 0;
  v47 = &v22[*(v101 + 36)];
  v48 = *MEMORY[0x1E697F468];
  v49 = v116;
  v50 = *(v115 + 104);
  v50(v47, v48, v116);
  v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC770, &unk_1E5A319A0) + 36)] = 0;
  v51 = v96;
  v52 = v97;
  *v22 = v40;
  *(v22 + 1) = v52;
  v22[16] = v45;
  *(v22 + 3) = v51;
  v53 = v131;
  *(v22 + 6) = v130;
  *(v22 + 7) = v53;
  *(v22 + 8) = v132;
  v54 = v127;
  *(v22 + 2) = v126;
  *(v22 + 3) = v54;
  v55 = v129;
  *(v22 + 4) = v128;
  *(v22 + 5) = v55;
  v22[144] = v46;
  __asm { FMOV            V0.2D, #3.0 }

  *(v22 + 152) = _Q0;
  *(v22 + 168) = xmmword_1E5A37B50;
  v22[184] = 0;
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v61 = v22;
  v62 = v50;
  v63 = v117;
  sub_1E58F0054(v61, v117, &qword_1ECFFDE58, &qword_1E5A37DB8);
  v64 = (v63 + *(v102 + 36));
  v65 = v136;
  *v64 = v135;
  v64[1] = v65;
  v64[2] = v137;
  v66 = v118;
  v50(v118, v48, v49);
  if (qword_1ECFFB488 != -1)
  {
    swift_once();
  }

  v67 = v103;
  *(v66 + *(v103 + 52)) = qword_1ED0264A8;
  *(v66 + *(v67 + 56)) = 256;
  v68 = qword_1ECFFB478;

  if (v68 != -1)
  {
    swift_once();
  }

  v103 = qword_1ED026498;
  v125[4] = v111;
  v125[5] = v113;
  v125[0] = v110;
  v125[1] = v112;
  v125[2] = v114;
  v125[3] = v104;
  v69 = v105[3];
  v122 = v105[2];
  v123 = v69;
  v124 = *(v105 + 8);
  v70 = v105[1];
  v120 = *v105;
  v121 = v70;
  sub_1E593F434(v125, &v120);
  sub_1E5A2A514();
  v71 = v108;
  sub_1E58BABA0(v66, v108, &qword_1ECFFD778, &unk_1E5A35DE0);
  v72 = v119;
  sub_1E59431A8(v66, v119);
  v73 = v107;
  v74 = v116;
  v62(v107, *MEMORY[0x1E697F480], v116);
  v75 = sub_1E5A2A9A4();
  (*(v115 + 8))(v73, v74);
  v76 = v120;
  v77 = v121;
  v78 = COERCE_UNSIGNED_INT64(*&v120 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v75 & 1) == 0);
  v116 = *(&v121 + 1);
  v79 = v122;
  v80 = v72 + *(v106 + 68);
  v81 = v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD790, &unk_1E5A35DF0) + 36);
  sub_1E58BABA0(v71, v81, &qword_1ECFFD778, &unk_1E5A35DE0);
  v82 = v103;

  v83 = sub_1E5A2B7E4();
  v85 = v84;
  sub_1E58BAD14(v71, &qword_1ECFFD778, &unk_1E5A35DE0);
  sub_1E58BAD14(v118, &qword_1ECFFD778, &unk_1E5A35DE0);
  v86 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD798, &qword_1E5A37DF0) + 36));
  *v86 = v83;
  v86[1] = v85;
  *v80 = v78;
  v87 = *(&v120 + 1);
  *(v80 + 8) = v76;
  *(v80 + 16) = v87;
  *(v80 + 24) = v77;
  *(v80 + 32) = v116;
  *(v80 + 40) = v79;
  *(v80 + 48) = v82;
  *(v80 + 56) = 256;
  v88 = sub_1E5A2B7E4();
  v90 = v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDE30, &qword_1E5A37DA8);
  v92 = v109;
  v93 = v109 + *(v91 + 36);
  sub_1E589DC4C(v119, v93);
  v94 = (v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD650, &unk_1E5A37DD0) + 36));
  *v94 = v88;
  v94[1] = v90;
  return sub_1E58F0054(v117, v92, &qword_1ECFFDE48, &qword_1E5A37DB0);
}

uint64_t sub_1E5941D7C@<X0>(void *a1@<X8>)
{
  v46 = a1;
  v1 = sub_1E5A2AEB4();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5A29EB4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E5A2BB14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE2D33E0;
  swift_getKeyPath();
  v9 = v8;
  sub_1E5A2B944();

  v10 = sub_1E5A2AF64();
  v12 = v11;
  v14 = v13;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v43 = sub_1E5A2AFA4();
  v49 = v15;
  v17 = v16;
  v47 = v18;

  sub_1E58B3C9C(v10, v12, v14 & 1);

  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v48 = v17 & 1;
  v98 = v17 & 1;
  sub_1E5A2BA84();
  v19 = qword_1EE2D33E0;
  swift_getKeyPath();
  v20 = v19;
  sub_1E5A2B944();

  v21 = sub_1E5A2AF64();
  v23 = v22;
  LOBYTE(v19) = v24;
  sub_1E5A2AE04();
  v26 = v44;
  v25 = v45;
  v27 = v42;
  (*(v44 + 104))(v42, *MEMORY[0x1E6980EA8], v45);
  sub_1E5A2AEE4();

  (*(v26 + 8))(v27, v25);
  v28 = sub_1E5A2AFA4();
  v30 = v29;
  LOBYTE(v25) = v31;

  sub_1E58B3C9C(v21, v23, v19 & 1);

  LODWORD(v74[0]) = sub_1E5A2ABA4();
  v32 = sub_1E5A2AF84();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1E58B3C9C(v28, v30, v25 & 1);

  KeyPath = swift_getKeyPath();
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *&v87[55] = v102;
  *&v87[71] = v103;
  *&v87[87] = v104;
  *&v87[103] = v105;
  *&v87[7] = v99;
  *&v87[23] = v100;
  *&v87[39] = v101;
  v40 = v43;
  *&v62 = v43;
  *(&v62 + 1) = v49;
  LOBYTE(v63) = v48;
  DWORD1(v63) = *&v97[3];
  *(&v63 + 1) = *v97;
  *(&v63 + 1) = v47;
  v64 = v90;
  v65 = v91;
  v69 = v95;
  v70 = v96;
  v67 = v93;
  v68 = v94;
  v66 = v92;
  v61[2] = v90;
  v61[3] = v91;
  v61[0] = v62;
  v61[1] = v63;
  v61[6] = v94;
  v61[7] = v95;
  v61[4] = v92;
  v61[5] = v93;
  *&v71 = v32;
  *(&v71 + 1) = v34;
  LOBYTE(v72) = v36 & 1;
  *(&v72 + 1) = *v88;
  DWORD1(v72) = *&v88[3];
  *(&v72 + 1) = v38;
  *&v73[0] = KeyPath;
  BYTE8(v73[0]) = 0;
  *(&v73[4] + 9) = *&v87[64];
  *(&v73[5] + 9) = *&v87[80];
  *(&v73[6] + 9) = *&v87[96];
  *(&v73[7] + 1) = *(&v105 + 1);
  *(v73 + 9) = *v87;
  *(&v73[1] + 9) = *&v87[16];
  *(&v73[2] + 9) = *&v87[32];
  *(&v73[3] + 9) = *&v87[48];
  v61[12] = v73[1];
  v61[13] = v73[2];
  v61[10] = v72;
  v61[11] = v73[0];
  v61[17] = v73[6];
  v61[18] = v73[7];
  v61[15] = v73[4];
  v61[16] = v73[5];
  v61[14] = v73[3];
  v89 = v36 & 1;
  v61[8] = v96;
  v61[9] = v71;
  memcpy(v46, v61, 0x130uLL);
  v84 = *&v87[64];
  v85 = *&v87[80];
  v86[0] = *&v87[96];
  v80 = *v87;
  v81 = *&v87[16];
  v82 = *&v87[32];
  v74[0] = v32;
  v74[1] = v34;
  v75 = v36 & 1;
  *v76 = *v88;
  *&v76[3] = *&v88[3];
  v77 = v38;
  v78 = KeyPath;
  v79 = 0;
  *(v86 + 15) = *&v87[111];
  v83 = *&v87[48];
  sub_1E58BABA0(&v62, v50, &qword_1ECFFB4F8, &unk_1E5A2C940);
  sub_1E58BABA0(&v71, v50, &qword_1ECFFD728, &qword_1E5A35D58);
  sub_1E58BAD14(v74, &qword_1ECFFD728, &qword_1E5A35D58);
  v50[0] = v40;
  v50[1] = v49;
  v51 = v48;
  *v52 = *v97;
  *&v52[3] = *&v97[3];
  v53 = v47;
  v58 = v94;
  v59 = v95;
  v60 = v96;
  v54 = v90;
  v55 = v91;
  v56 = v92;
  v57 = v93;
  return sub_1E58BAD14(v50, &qword_1ECFFB4F8, &unk_1E5A2C940);
}

unint64_t sub_1E59424A8()
{
  result = qword_1ECFFDD28;
  if (!qword_1ECFFDD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDD18, &qword_1E5A37B78);
    sub_1E58CD164(&qword_1ECFFDD30, &qword_1ECFFDD38, &qword_1E5A37B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDD28);
  }

  return result;
}

unint64_t sub_1E5942560()
{
  result = qword_1ECFFDD40;
  if (!qword_1ECFFDD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDD20, &qword_1E5A37B80);
    sub_1E59425E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDD40);
  }

  return result;
}

unint64_t sub_1E59425E4()
{
  result = qword_1ECFFDD48;
  if (!qword_1ECFFDD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDD50, &qword_1E5A37B90);
    sub_1E58CD164(&qword_1ECFFDD58, &qword_1ECFFDD60, &qword_1E5A37B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDD48);
  }

  return result;
}

uint64_t sub_1E5942694()
{
  v0 = type metadata accessor for WorkoutPlanCreationAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v15)
  {
    v14 = v15;
    v5 = WorkoutPlanSchedule.modalityIdentifiers()();

    v6 = 1 << v5[32];
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 7);
    v9 = (v6 + 63) >> 6;

    for (i = 0; v8; result = sub_1E59429E4(v3))
    {
      v11 = i;
LABEL_10:
      v12 = (*(v5 + 6) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = v12[1];
      v8 &= v8 - 1;
      *v3 = *v12;
      v3[1] = v13;
      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      sub_1E5A2B954();
    }

    while (1)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
      }

      v8 = *&v5[8 * v11 + 56];
      ++i;
      if (v8)
      {
        i = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5942850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1E5942694();
}

unint64_t sub_1E5942888()
{
  result = qword_1ECFFDD78;
  if (!qword_1ECFFDD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDD70, &qword_1E5A37BA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDD00, &qword_1E5A37B60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E58CD164(&qword_1ECFFDD68, &qword_1ECFFDD00, &qword_1E5A37B60);
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDD78);
  }

  return result;
}

uint64_t sub_1E59429E4(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5942A40(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1E5942ADC(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1E5942ADC(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1E5942C04@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[2];
  v5 = v1[3];
  sub_1E593EB30(*(v1[4] + 8), *(v1[4] + 16));
  result = sub_1E5A2B4A4();
  *a1 = result;
  return result;
}

unint64_t sub_1E5942C58()
{
  result = qword_1ECFFDDC8;
  if (!qword_1ECFFDDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDDC0, &qword_1E5A37D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDDD0, &unk_1E5A37D20);
    sub_1E58CD164(&qword_1ECFFDDD8, &qword_1ECFFDDD0, &unk_1E5A37D20);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDDC8);
  }

  return result;
}

uint64_t sub_1E5942D58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5942DA0()
{
  result = qword_1ECFFDDF0;
  if (!qword_1ECFFDDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDDE8, &qword_1E5A37D58);
    sub_1E5942E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDDF0);
  }

  return result;
}

unint64_t sub_1E5942E24()
{
  result = qword_1ECFFDDF8;
  if (!qword_1ECFFDDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDE00, &qword_1E5A37D60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDE08, &qword_1E5A37D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDE10, &qword_1E5A37D70);
    sub_1E58CD164(&qword_1ECFFDE18, &qword_1ECFFDE10, &qword_1E5A37D70);
    swift_getOpaqueTypeConformance2();
    sub_1E58EFCE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDDF8);
  }

  return result;
}

unint64_t sub_1E5942FAC()
{
  result = qword_1ECFFDE38;
  if (!qword_1ECFFDE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDE30, &qword_1E5A37DA8);
    sub_1E5943064();
    sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDE38);
  }

  return result;
}

unint64_t sub_1E5943064()
{
  result = qword_1ECFFDE40;
  if (!qword_1ECFFDE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDE48, &qword_1E5A37DB0);
    sub_1E59430F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDE40);
  }

  return result;
}

unint64_t sub_1E59430F0()
{
  result = qword_1ECFFDE50;
  if (!qword_1ECFFDE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDE58, &qword_1E5A37DB8);
    sub_1E58EF58C();
    sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDE50);
  }

  return result;
}

uint64_t sub_1E59431A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A2B6A4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5943224(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E5A2AC14();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0uLL;
  v14 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_1E5A2A424();
    *(&v13 + 1) = v15;
    *(&v14 + 1) = v16;
  }

  v18[0] = v13;
  v18[1] = v14;
  v19 = a3 & 1;
  sub_1E5A2AC04();
  MEMORY[0x1E6931F70](v12, a4, v8, a5);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1E5943360()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC0E8, qword_1E5A2FE38);
  sub_1E5944E30();

  return sub_1E5A2A4F4();
}

uint64_t sub_1E59433CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  sub_1E5943360();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E58D5C24(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v4;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC108, &unk_1E5A37F50) + 48);
      v9 = *v4;
      v10 = sub_1E5A29E34();
      (*(*(v10 - 8) + 8))(&v4[v8], v10);
      return v9;
    }

    sub_1E58D5C94(v4);
  }

  return 0;
}

uint64_t sub_1E5943548()
{
  v0 = type metadata accessor for WorkoutPlansLayout();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E5943360();
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v6[15] >= 2u)
  {
    sub_1E5943360();
    swift_getKeyPath();
    sub_1E5A2B944();

    sub_1E5A2A2D4();
    v5 = sub_1E5A2A2F4();
    return (*(*(v5 - 8) + 8))(v3, v5);
  }

  return result;
}

uint64_t sub_1E5943694()
{
  v0 = type metadata accessor for WorkoutPlansLayout();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E5943360();
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v6[15] <= 1u)
  {
    sub_1E5943360();
    swift_getKeyPath();
    sub_1E5A2B944();

    sub_1E5A2A294();
    sub_1E5A2A2D4();
    sub_1E5A2A2C4();
    sub_1E5A2A2E4();
    v5 = sub_1E5A2A2F4();
    return (*(*(v5 - 8) + 8))(v3, v5);
  }

  return result;
}

uint64_t WorkoutPlansView.init(store:activeWorkoutPlanWorkoutViewBuilder:personalizedWorkoutPlansViewBuilder:recentWorkoutPlansViewBuilder:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *a6 = sub_1E58D2CB8;
  *(a6 + 8) = v12;
  *(a6 + 16) = 0;
  v13 = type metadata accessor for WorkoutPlansView();
  v14 = v13[17];

  v16 = a3(v15);
  v17 = a6 + v13[18];
  v18 = a4(v16);
  v19 = a6 + v13[19];
  a5(v18);

  v20 = v13[20];
  v21 = sub_1E5A29E74();
  return (*(*(v21 - 8) + 32))(a6 + v20, a7, v21);
}

uint64_t WorkoutPlansView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v73 = *(a1 - 8);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v72 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1E5A2AB64();
  v68 = *(v70 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(a1 + 16);
  v7 = v71;
  sub_1E5A2BD84();
  v8.i64[0] = v7;
  v64 = v8;
  v76 = *(a1 + 24);
  swift_getTupleTypeMetadata3();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A494();
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v89 = MEMORY[0x1E697E5D8];
  v69 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v9 = sub_1E5A2A4B4();
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v54 - v11;
  v58 = swift_getWitnessTable();
  v86 = v9;
  v87 = v58;
  v60 = MEMORY[0x1E697CF18];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = *(OpaqueTypeMetadata2 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &v54 - v15;
  sub_1E5A2AC14();
  v17 = sub_1E5A2A6C4();
  v65 = *(v17 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v54 - v19;
  v20 = sub_1E5A2A6C4();
  v66 = *(v20 - 8);
  v21 = *(v66 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v59 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v63 = &v54 - v24;
  sub_1E5A2AD84();
  v25 = vzip1q_s64(v64, v76);
  *&v26 = vdupq_laneq_s64(v76, 1).u64[0];
  v64.i64[0] = *(a1 + 40);
  v55 = *(a1 + 48);
  *(&v26 + 1) = v64.i64[0];
  v77 = v25;
  v78 = v26;
  v56 = *(a1 + 56);
  v79 = v55;
  v80 = v56;
  v54 = v2;
  v81 = v2;
  sub_1E5A2A4C4();
  v27 = sub_1E5A2AD94();
  sub_1E5943694();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v67;
  sub_1E5A2AB54();
  v37 = v58;
  MEMORY[0x1E6931D70](v27, v36, v9, v58, v29, v31, v33, v35);
  (*(v68 + 8))(v36, v70);
  (*(v62 + 8))(v12, v9);
  v38 = sub_1E5A2ADC4();
  v86 = v9;
  v87 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v57;
  sub_1E5943224(v38, 0x4034000000000000, 0, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  (*(v61 + 8))(v16, OpaqueTypeMetadata2);
  v41 = v73;
  v42 = v72;
  (*(v73 + 16))(v72, v54, a1);
  v43 = v41;
  v44 = (*(v41 + 80) + 64) & ~*(v41 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v71;
  *(v45 + 24) = v76;
  v46 = v55;
  *(v45 + 40) = v64.i64[0];
  *(v45 + 48) = v46;
  *(v45 + 56) = v56;
  (*(v43 + 32))(v45 + v44, v42, a1);
  v47 = sub_1E58D3D84();
  v84 = OpaqueTypeConformance2;
  v85 = v47;
  v48 = swift_getWitnessTable();
  v49 = v59;
  sub_1E5A2B364();

  (*(v65 + 8))(v40, v17);
  v82 = v48;
  v83 = MEMORY[0x1E69805D0];
  v50 = swift_getWitnessTable();
  v51 = v63;
  sub_1E58B41DC(v49, v20, v50);
  v52 = *(v66 + 8);
  v52(v49, v20);
  sub_1E58B41DC(v51, v20, v50);
  return (v52)(v51, v20);
}

uint64_t sub_1E59441D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a7;
  v34 = a6;
  v40 = a5;
  v39 = a1;
  v43 = a8;
  v12 = sub_1E5A2AB24();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v37 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2BD84();
  v33 = a3;
  v35 = a4;
  swift_getTupleTypeMetadata3();
  v15 = sub_1E5A2B864();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1E5A2A494();
  v41 = *(v17 - 8);
  v18 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  v21 = sub_1E5A2A6C4();
  v42 = *(v21 - 8);
  v22 = *(v42 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v36 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v38 = &v33 - v25;
  sub_1E5A2AA34();
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v26 = v40;
  v48 = v40;
  v49 = a6;
  v50 = v44;
  v51 = v39;
  sub_1E59C9940(v15, WitnessTable);
  sub_1E5A2A484();
  sub_1E5A2AD94();
  v54 = a2;
  v55 = v33;
  v56 = v35;
  v57 = v26;
  v58 = v34;
  v59 = v44;
  type metadata accessor for WorkoutPlansView();
  sub_1E5943548();
  v27 = swift_getWitnessTable();
  v28 = v36;
  sub_1E5A2B334();
  (*(v41 + 8))(v20, v17);
  v52 = v27;
  v53 = MEMORY[0x1E697E5D8];
  v29 = swift_getWitnessTable();
  v30 = v38;
  sub_1E58B41DC(v28, v21, v29);
  v31 = *(v42 + 8);
  v31(v28, v21);
  sub_1E58B41DC(v30, v21, v29);
  return (v31)(v30, v21);
}

uint64_t sub_1E59445F8@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a7;
  v66 = a1;
  v72 = a8;
  v74 = *(a4 - 1);
  v13 = *(v74 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v73 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v69 = &v62 - v17;
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v77 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v68 = &v62 - v23;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v22);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v62 - v30;
  v67 = sub_1E5A2BD84();
  v65 = *(v67 - 8);
  v32 = *(v65 + 64);
  v33 = MEMORY[0x1EEE9AC00](v67);
  v35 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v75 = a3;
  v76 = &v62 - v36;
  v85 = a2;
  v86 = a3;
  v70 = a4;
  v87 = a4;
  v88 = a5;
  v78 = a6;
  v37 = v66;
  v89 = a6;
  v90 = v79;
  v38 = type metadata accessor for WorkoutPlansView();
  if (sub_1E59433CC())
  {
    sub_1E58B41DC(&v37[v38[17]], a2, a5);
    sub_1E58B41DC(v31, a2, a5);
    (*(v25 + 8))(v31, a2);
    (*(v25 + 32))(v35, v29, a2);
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = v35;
  v62 = a5;
  (*(v25 + 56))(v35, v39, 1, a2);
  v41 = v76;
  sub_1E598D20C(v35, v76);
  v42 = v65;
  v43 = *(v65 + 8);
  v64 = v65 + 8;
  v66 = v43;
  v44 = v35;
  v45 = v67;
  (v43)(v44, v67);
  v46 = &v37[v38[18]];
  v47 = v68;
  v48 = v75;
  v63 = v40;
  sub_1E58B41DC(v46, v75, v78);
  v49 = &v37[v38[19]];
  v50 = v69;
  v51 = v70;
  v52 = v79;
  sub_1E58B41DC(v49, v70, v79);
  (*(v42 + 16))(v40, v41, v45);
  v85 = v40;
  v53 = v71;
  v54 = v77;
  v55 = v47;
  (*(v71 + 16))(v77, v47, v48);
  v86 = v54;
  v57 = v73;
  v56 = v74;
  (*(v74 + 16))(v73, v50, v51);
  v87 = v57;
  v84[0] = v45;
  v84[1] = v48;
  v84[2] = v51;
  v80 = v62;
  WitnessTable = swift_getWitnessTable();
  v82 = v78;
  v83 = v52;
  sub_1E597DC00(&v85, 3uLL, v84);
  v58 = *(v56 + 8);
  v58(v50, v51);
  v59 = *(v53 + 8);
  v59(v55, v48);
  v60 = v66;
  (v66)(v76, v45);
  v58(v57, v51);
  v59(v77, v48);
  return (v60)(v63, v45);
}

uint64_t sub_1E5944BB0()
{
  type metadata accessor for WorkoutPlansView();
  sub_1E5943360();
  sub_1E5A2B954();
}

uint64_t sub_1E5944C04()
{
  v1 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v2 = *(*(type metadata accessor for WorkoutPlansView() - 8) + 80);

  return sub_1E5944BB0();
}

uint64_t sub_1E5944CC0(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

void sub_1E5944D10(uint64_t a1)
{
  sub_1E58D5A78();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        v7 = *(a1 + 32);
        swift_checkMetadataState();
        if (v8 <= 0x3F)
        {
          sub_1E5A29E74();
          if (v9 <= 0x3F)
          {
            v11 = *(a1 + 40);
            v12 = *(a1 + 56);
            type metadata accessor for WorkoutPlansView.Layout();
            if (v10 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1E5944E30()
{
  result = qword_1EE2CFA78;
  if (!qword_1EE2CFA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC0E8, qword_1E5A2FE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFA78);
  }

  return result;
}

uint64_t static WorkoutPlanBodyFocus.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

FitnessWorkoutPlan::WorkoutPlanBodyFocus __swiftcall WorkoutPlanBodyFocus.init(identifier:name:)(Swift::String identifier, Swift::String name)
{
  *v2 = identifier;
  v2[1] = name;
  result.name = name;
  result.identifier = identifier;
  return result;
}

uint64_t WorkoutPlanBodyFocus.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WorkoutPlanBodyFocus.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1E5944F7C()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1E5944FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E5945098(uint64_t a1)
{
  v2 = sub_1E59454E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59450D4(uint64_t a1)
{
  v2 = sub_1E59454E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static WorkoutPlanBodyFocus.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E5A2C114(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E5A2C114();
    }
  }

  return result;
}

uint64_t sub_1E59451B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E59451E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E594522C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E5945280(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E59452A4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E5A2C114(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E5A2C114();
    }
  }

  return result;
}

uint64_t sub_1E5945348@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WorkoutPlanBodyFocus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDE60, &qword_1E5A37F60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59454E8();
  sub_1E5A2C224();
  v16 = 0;
  v12 = v14[3];
  sub_1E5A2C064();
  if (!v12)
  {
    v15 = 1;
    sub_1E5A2C064();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E59454E8()
{
  result = qword_1ECFFDE68;
  if (!qword_1ECFFDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDE68);
  }

  return result;
}

uint64_t WorkoutPlanBodyFocus.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDE70, &qword_1E5A37F68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59454E8();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1E5A2BF94();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1E5A2BF94();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutPlanBodyFocus.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2BB74();

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanBodyFocus.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5945824()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E594588C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2BB74();

  return sub_1E5A2BB74();
}

uint64_t sub_1E59458DC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

unint64_t sub_1E5945940()
{
  result = qword_1ECFFDE78;
  if (!qword_1ECFFDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDE78);
  }

  return result;
}

unint64_t sub_1E59459B8()
{
  result = qword_1ECFFDE80;
  if (!qword_1ECFFDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDE80);
  }

  return result;
}

unint64_t sub_1E5945A10()
{
  result = qword_1ECFFDE88;
  if (!qword_1ECFFDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDE88);
  }

  return result;
}

unint64_t sub_1E5945A68()
{
  result = qword_1ECFFDE90;
  if (!qword_1ECFFDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDE90);
  }

  return result;
}

uint64_t sub_1E5945AC4(uint64_t a1)
{
  v2 = sub_1E5946420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5945B00(uint64_t a1)
{
  v2 = sub_1E5946420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5945B3C()
{
  v1 = 0x75636F4679646F62;
  v2 = 0x76654C6C6C696B73;
  if (*v0 != 2)
  {
    v2 = 0x656D656874;
  }

  if (*v0)
  {
    v1 = 0x6E656D7069757165;
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

uint64_t sub_1E5945BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5946758(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5945BE0(uint64_t a1)
{
  v2 = sub_1E59462D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5945C1C(uint64_t a1)
{
  v2 = sub_1E59462D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5945C58(uint64_t a1)
{
  v2 = sub_1E59463CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5945C94(uint64_t a1)
{
  v2 = sub_1E59463CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5945CD0(uint64_t a1)
{
  v2 = sub_1E5946378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5945D0C(uint64_t a1)
{
  v2 = sub_1E5946378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5945D48(uint64_t a1)
{
  v2 = sub_1E5946324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5945D84(uint64_t a1)
{
  v2 = sub_1E5946324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanScheduleFilterProperty.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDE98, &qword_1E5A38210);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDEA0, &qword_1E5A38218);
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDEA8, &qword_1E5A38220);
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDEB0, &qword_1E5A38228);
  v34 = *(v16 - 8);
  v17 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDEB8, &qword_1E5A38230);
  v20 = *(v42 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v23 = &v34 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59462D0();
  sub_1E5A2C224();
  v25 = (v20 + 8);
  if (v45 > 1u)
  {
    if (v45 == 2)
    {
      v48 = 2;
      sub_1E5946378();
      v27 = v42;
      sub_1E5A2C024();
      v28 = v38;
      sub_1E5A2C064();
      (*(v37 + 8))(v11, v28);
      return (*v25)(v23, v27);
    }

    v49 = 3;
    sub_1E5946324();
    v32 = v39;
    v26 = v42;
    sub_1E5A2C024();
    v33 = v41;
    sub_1E5A2C064();
    (*(v40 + 8))(v32, v33);
  }

  else
  {
    if (v45)
    {
      v47 = 1;
      sub_1E59463CC();
      v30 = v42;
      sub_1E5A2C024();
      v31 = v36;
      sub_1E5A2C064();
      (*(v35 + 8))(v15, v31);
      return (*v25)(v23, v30);
    }

    v46 = 0;
    sub_1E5946420();
    v26 = v42;
    sub_1E5A2C024();
    sub_1E5A2C064();
    (*(v34 + 8))(v19, v16);
  }

  return (*v25)(v23, v26);
}

unint64_t sub_1E59462D0()
{
  result = qword_1ECFFDEC0;
  if (!qword_1ECFFDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDEC0);
  }

  return result;
}

unint64_t sub_1E5946324()
{
  result = qword_1ECFFDEC8;
  if (!qword_1ECFFDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDEC8);
  }

  return result;
}

unint64_t sub_1E5946378()
{
  result = qword_1ECFFDED0;
  if (!qword_1ECFFDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDED0);
  }

  return result;
}

unint64_t sub_1E59463CC()
{
  result = qword_1ECFFDED8;
  if (!qword_1ECFFDED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDED8);
  }

  return result;
}

unint64_t sub_1E5946420()
{
  result = qword_1ECFFDEE0;
  if (!qword_1ECFFDEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDEE0);
  }

  return result;
}

uint64_t WorkoutPlanScheduleFilterProperty.init(from:)(uint64_t *a1)
{
  result = sub_1E59468CC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1E5946498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E59468CC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t WorkoutPlanScheduleFilterProperty.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  MEMORY[0x1E6932DE0](a4);

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanScheduleFilterProperty.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a3);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E59465A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v3);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E594660C()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1E6932DE0](*(v0 + 16));

  return sub_1E5A2BB74();
}

uint64_t sub_1E5946660()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v3);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC22ScheduleFilterPropertyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 != 2)
      {
        return 0;
      }
    }

    else if (a6 != 3)
    {
      return 0;
    }
  }

  else if (a3)
  {
    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E5946758(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75636F4679646F62 && a2 == 0xE900000000000073;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEA00000000006C65 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E59468CC(uint64_t *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDF68, &qword_1E5A38960);
  v47 = *(v44 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v41 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDF70, &qword_1E5A38968);
  v48 = *(v42 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v49 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDF78, &qword_1E5A38970);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDF80, &qword_1E5A38978);
  v43 = *(v10 - 8);
  v11 = *(v43 + 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDF88, &unk_1E5A38980);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v52 = a1;
  v21 = __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E59462D0();
  v22 = v51;
  sub_1E5A2C214();
  if (!v22)
  {
    v23 = v13;
    v41 = v10;
    v24 = v9;
    v26 = v49;
    v25 = v50;
    v51 = v15;
    v27 = sub_1E5A2C004();
    v28 = (2 * *(v27 + 16)) | 1;
    v53 = v27;
    v54 = v27 + 32;
    v55 = 0;
    v56 = v28;
    v29 = sub_1E58BC5B8();
    if (v29 == 4 || v55 != v56 >> 1)
    {
      v31 = sub_1E5A2BE84();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
      *v33 = &type metadata for WorkoutPlanScheduleFilterProperty;
      v21 = v18;
      sub_1E5A2BF54();
      sub_1E5A2BE74();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v51 + 8))(v18, v14);
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    if (v29 > 1u)
    {
      if (v29 == 2)
      {
        v57 = 2;
        sub_1E5946378();
        sub_1E5A2BF44();
        v36 = v51;
        v43 = v18;
        v37 = v42;
        v21 = sub_1E5A2BF94();
        (*(v48 + 8))(v26, v37);
      }

      else
      {
        v57 = 3;
        sub_1E5946324();
        sub_1E5A2BF44();
        v36 = v51;
        v39 = v25;
        v43 = v18;
        v40 = v44;
        v21 = sub_1E5A2BF94();
        (*(v47 + 8))(v39, v40);
      }
    }

    else
    {
      if (!v29)
      {
        v57 = 0;
        sub_1E5946420();
        sub_1E5A2BF44();
        v30 = v41;
        v21 = sub_1E5A2BF94();
        (*(v43 + 1))(v23, v30);
        (*(v51 + 8))(v18, v14);
        swift_unknownObjectRelease();
        goto LABEL_8;
      }

      v57 = 1;
      sub_1E59463CC();
      sub_1E5A2BF44();
      v43 = v18;
      v38 = v46;
      v21 = sub_1E5A2BF94();
      (*(v45 + 8))(v24, v38);
      v36 = v51;
    }

    (*(v36 + 8))(v43, v14);
    swift_unknownObjectRelease();
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v21;
}

unint64_t sub_1E594704C()
{
  result = qword_1ECFFDEE8;
  if (!qword_1ECFFDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDEE8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E59470C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1E5947108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E59471B8()
{
  result = qword_1ECFFDEF0;
  if (!qword_1ECFFDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDEF0);
  }

  return result;
}

unint64_t sub_1E5947210()
{
  result = qword_1ECFFDEF8;
  if (!qword_1ECFFDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDEF8);
  }

  return result;
}

unint64_t sub_1E5947268()
{
  result = qword_1ECFFDF00;
  if (!qword_1ECFFDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF00);
  }

  return result;
}

unint64_t sub_1E59472C0()
{
  result = qword_1ECFFDF08;
  if (!qword_1ECFFDF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF08);
  }

  return result;
}

unint64_t sub_1E5947318()
{
  result = qword_1ECFFDF10;
  if (!qword_1ECFFDF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF10);
  }

  return result;
}

unint64_t sub_1E5947370()
{
  result = qword_1ECFFDF18;
  if (!qword_1ECFFDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF18);
  }

  return result;
}

unint64_t sub_1E59473C8()
{
  result = qword_1ECFFDF20;
  if (!qword_1ECFFDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF20);
  }

  return result;
}

unint64_t sub_1E5947420()
{
  result = qword_1ECFFDF28;
  if (!qword_1ECFFDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF28);
  }

  return result;
}

unint64_t sub_1E5947478()
{
  result = qword_1ECFFDF30;
  if (!qword_1ECFFDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF30);
  }

  return result;
}

unint64_t sub_1E59474D0()
{
  result = qword_1ECFFDF38;
  if (!qword_1ECFFDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF38);
  }

  return result;
}

unint64_t sub_1E5947528()
{
  result = qword_1ECFFDF40;
  if (!qword_1ECFFDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF40);
  }

  return result;
}

unint64_t sub_1E5947580()
{
  result = qword_1ECFFDF48;
  if (!qword_1ECFFDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF48);
  }

  return result;
}

unint64_t sub_1E59475D8()
{
  result = qword_1ECFFDF50;
  if (!qword_1ECFFDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF50);
  }

  return result;
}

unint64_t sub_1E5947630()
{
  result = qword_1ECFFDF58;
  if (!qword_1ECFFDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF58);
  }

  return result;
}

unint64_t sub_1E5947688()
{
  result = qword_1ECFFDF60;
  if (!qword_1ECFFDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDF60);
  }

  return result;
}

uint64_t sub_1E59476DC(uint64_t a1)
{
  v2 = sub_1E5948584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5947718(uint64_t a1)
{
  v2 = sub_1E5948584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5947754(uint64_t a1)
{
  v2 = sub_1E5948530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5947790(uint64_t a1)
{
  v2 = sub_1E5948530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59477CC(uint64_t a1)
{
  v2 = sub_1E59484DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5947808(uint64_t a1)
{
  v2 = sub_1E59484DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5947844()
{
  v1 = *v0;
  v2 = 0x7669746341646461;
  v3 = 0x6353796669646F6DLL;
  if (v1 != 5)
  {
    v3 = 0x7254796669646F6DLL;
  }

  v4 = 0x6341796669646F6DLL;
  if (v1 != 3)
  {
    v4 = 0x754D796669646F6DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x796144646461;
  if (v1 != 1)
  {
    v5 = 0x616C50646C697562;
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

uint64_t sub_1E5947954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5948648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E594797C(uint64_t a1)
{
  v2 = sub_1E5948338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59479B8(uint64_t a1)
{
  v2 = sub_1E5948338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59479F4(uint64_t a1)
{
  v2 = sub_1E5948488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5947A30(uint64_t a1)
{
  v2 = sub_1E5948488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5947A6C(uint64_t a1)
{
  v2 = sub_1E5948434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5947AA8(uint64_t a1)
{
  v2 = sub_1E5948434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5947AE4(uint64_t a1)
{
  v2 = sub_1E59483E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5947B20(uint64_t a1)
{
  v2 = sub_1E59483E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5947B5C(uint64_t a1)
{
  v2 = sub_1E594838C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5947B98(uint64_t a1)
{
  v2 = sub_1E594838C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationPage.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

uint64_t WorkoutPlanCreationPage.encode(to:)(void *a1, int a2)
{
  LODWORD(v63) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDF90, &qword_1E5A38990);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDF98, &qword_1E5A38998);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDFA0, &qword_1E5A389A0);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDFA8, &qword_1E5A389A8);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v46 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDFB0, &qword_1E5A389B0);
  v62 = *(v46 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v61 = &v46 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDFB8, &qword_1E5A389B8);
  v60 = *(v17 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDFC0, &qword_1E5A389C0);
  v59 = *(v21 - 8);
  v22 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDFC8, &qword_1E5A389C8);
  v25 = *(v65 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v28 = &v46 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5948338();
  v64 = v28;
  sub_1E5A2C224();
  v30 = (v25 + 8);
  v31 = v63;
  if (v63 <= 2u)
  {
    v37 = v59;
    v38 = v60;
    v63 = v17;
    v40 = v61;
    v39 = v62;
    if (v31)
    {
      if (v31 != 1)
      {
        v68 = 2;
        sub_1E59484DC();
        v44 = v64;
        v45 = v65;
        sub_1E5A2C024();
        (*(v39 + 8))(v40, v46);
        return (*v30)(v44, v45);
      }

      v67 = 1;
      sub_1E5948530();
      v42 = v64;
      v41 = v65;
      sub_1E5A2C024();
      (*(v38 + 8))(v20, v63);
    }

    else
    {
      v66 = 0;
      sub_1E5948584();
      v42 = v64;
      v41 = v65;
      sub_1E5A2C024();
      (*(v37 + 8))(v24, v21);
    }

    return (*v30)(v42, v41);
  }

  if (v63 > 4u)
  {
    if (v63 == 5)
    {
      v71 = 5;
      sub_1E59483E0();
      v32 = v53;
      v33 = v64;
      v34 = v65;
      sub_1E5A2C024();
      v36 = v54;
      v35 = v55;
    }

    else
    {
      v72 = 6;
      sub_1E594838C();
      v32 = v56;
      v33 = v64;
      v34 = v65;
      sub_1E5A2C024();
      v36 = v57;
      v35 = v58;
    }
  }

  else if (v63 == 3)
  {
    v69 = 3;
    sub_1E5948488();
    v32 = v47;
    v33 = v64;
    v34 = v65;
    sub_1E5A2C024();
    v36 = v48;
    v35 = v49;
  }

  else
  {
    v70 = 4;
    sub_1E5948434();
    v32 = v50;
    v33 = v64;
    v34 = v65;
    sub_1E5A2C024();
    v36 = v51;
    v35 = v52;
  }

  (*(v36 + 8))(v32, v35);
  return (*v30)(v33, v34);
}

unint64_t sub_1E5948338()
{
  result = qword_1ECFFDFD0;
  if (!qword_1ECFFDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDFD0);
  }

  return result;
}

unint64_t sub_1E594838C()
{
  result = qword_1ECFFDFD8;
  if (!qword_1ECFFDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDFD8);
  }

  return result;
}

unint64_t sub_1E59483E0()
{
  result = qword_1ECFFDFE0;
  if (!qword_1ECFFDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDFE0);
  }

  return result;
}

unint64_t sub_1E5948434()
{
  result = qword_1ECFFDFE8;
  if (!qword_1ECFFDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDFE8);
  }

  return result;
}

unint64_t sub_1E5948488()
{
  result = qword_1ECFFDFF0;
  if (!qword_1ECFFDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDFF0);
  }

  return result;
}

unint64_t sub_1E59484DC()
{
  result = qword_1ECFFDFF8;
  if (!qword_1ECFFDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDFF8);
  }

  return result;
}

unint64_t sub_1E5948530()
{
  result = qword_1ECFFE000;
  if (!qword_1ECFFE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE000);
  }

  return result;
}

unint64_t sub_1E5948584()
{
  result = qword_1ECFFE008;
  if (!qword_1ECFFE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE008);
  }

  return result;
}

uint64_t sub_1E59485F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E59488B4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E5948648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7669746341646461 && a2 == 0xEB00000000797469;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796144646461 && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C50646C697562 && a2 == 0xE90000000000006ELL || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6341796669646F6DLL && a2 == 0xEE00797469766974 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754D796669646F6DLL && a2 == 0xEB00000000636973 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6353796669646F6DLL && a2 == 0xEE00656C75646568 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7254796669646F6DLL && a2 == 0xEE007372656E6961)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E59488B4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE0A0, &qword_1E5A39108);
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE0A8, &qword_1E5A39110);
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE0B0, &qword_1E5A39118);
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE0B8, &qword_1E5A39120);
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE0C0, &qword_1E5A39128);
  v61 = *(v14 - 8);
  v62 = v14;
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v57 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE0C8, &qword_1E5A39130);
  v59 = *(v60 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE0D0, &qword_1E5A39138);
  v58 = *(v20 - 8);
  v21 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE0D8, &qword_1E5A39140);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1E5948338();
  v31 = v77;
  sub_1E5A2C214();
  if (v31)
  {
    goto LABEL_9;
  }

  v32 = v23;
  v57 = v20;
  v33 = v19;
  v34 = v74;
  v35 = v75;
  v77 = v25;
  v36 = sub_1E5A2C004();
  v37 = (2 * *(v36 + 16)) | 1;
  v78 = v36;
  v79 = v36 + 32;
  v80 = 0;
  v81 = v37;
  v38 = sub_1E58BBF9C();
  v39 = v28;
  if (v38 == 7 || v80 != v81 >> 1)
  {
    v44 = sub_1E5A2BE84();
    swift_allocError();
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v46 = &type metadata for WorkoutPlanCreationPage;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    (*(v77 + 8))(v39, v24);
    swift_unknownObjectRelease();
LABEL_9:
    v48 = v76;
    goto LABEL_10;
  }

  v25 = v38;
  if (v38 <= 2u)
  {
    if (v38)
    {
      if (v38 != 1)
      {
        v82 = 2;
        sub_1E59484DC();
        v55 = v72;
        sub_1E5A2BF44();
        v54 = v62;
        v50 = *(v61 + 8);
        v51 = v55;
        goto LABEL_19;
      }

      v82 = 1;
      sub_1E5948530();
      sub_1E5A2BF44();
      v50 = *(v59 + 8);
      v51 = v33;
      v52 = &v84;
    }

    else
    {
      v82 = 0;
      sub_1E5948584();
      sub_1E5A2BF44();
      v50 = *(v58 + 8);
      v51 = v32;
      v52 = &v83;
    }

    v54 = *(v52 - 32);
LABEL_19:
    v50(v51, v54);
    (*(v77 + 8))(v39, v24);
    swift_unknownObjectRelease();
    v48 = v76;
    goto LABEL_10;
  }

  if (v38 > 4u)
  {
    v40 = v76;
    v53 = v77;
    if (v38 == 5)
    {
      v82 = 5;
      sub_1E59483E0();
      sub_1E5A2BF44();
      (*(v67 + 8))(v35, v68);
    }

    else
    {
      v82 = 6;
      sub_1E594838C();
      v56 = v73;
      sub_1E5A2BF44();
      (*(v69 + 8))(v56, v70);
    }

    (*(v53 + 8))(v39, v24);
  }

  else
  {
    v40 = v76;
    v41 = v77;
    if (v38 == 3)
    {
      v82 = 3;
      sub_1E5948488();
      sub_1E5A2BF44();
      v43 = v63;
      v42 = v64;
    }

    else
    {
      v82 = 4;
      sub_1E5948434();
      v34 = v71;
      sub_1E5A2BF44();
      v43 = v65;
      v42 = v66;
    }

    (*(v43 + 8))(v34, v42);
    (*(v41 + 8))(v39, v24);
  }

  swift_unknownObjectRelease();
  v48 = v40;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v25;
}

unint64_t sub_1E59491C0()
{
  result = qword_1ECFFE010;
  if (!qword_1ECFFE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE010);
  }

  return result;
}

unint64_t sub_1E59492A8()
{
  result = qword_1ECFFE018;
  if (!qword_1ECFFE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE018);
  }

  return result;
}

unint64_t sub_1E5949300()
{
  result = qword_1ECFFE020;
  if (!qword_1ECFFE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE020);
  }

  return result;
}

unint64_t sub_1E5949358()
{
  result = qword_1ECFFE028;
  if (!qword_1ECFFE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE028);
  }

  return result;
}

unint64_t sub_1E59493B0()
{
  result = qword_1ECFFE030;
  if (!qword_1ECFFE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE030);
  }

  return result;
}

unint64_t sub_1E5949408()
{
  result = qword_1ECFFE038;
  if (!qword_1ECFFE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE038);
  }

  return result;
}

unint64_t sub_1E5949460()
{
  result = qword_1ECFFE040;
  if (!qword_1ECFFE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE040);
  }

  return result;
}

unint64_t sub_1E59494B8()
{
  result = qword_1ECFFE048;
  if (!qword_1ECFFE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE048);
  }

  return result;
}

unint64_t sub_1E5949510()
{
  result = qword_1ECFFE050;
  if (!qword_1ECFFE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE050);
  }

  return result;
}

unint64_t sub_1E5949568()
{
  result = qword_1ECFFE058;
  if (!qword_1ECFFE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE058);
  }

  return result;
}

unint64_t sub_1E59495C0()
{
  result = qword_1ECFFE060;
  if (!qword_1ECFFE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE060);
  }

  return result;
}

unint64_t sub_1E5949618()
{
  result = qword_1ECFFE068;
  if (!qword_1ECFFE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE068);
  }

  return result;
}

unint64_t sub_1E5949670()
{
  result = qword_1ECFFE070;
  if (!qword_1ECFFE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE070);
  }

  return result;
}

unint64_t sub_1E59496C8()
{
  result = qword_1ECFFE078;
  if (!qword_1ECFFE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE078);
  }

  return result;
}

unint64_t sub_1E5949720()
{
  result = qword_1ECFFE080;
  if (!qword_1ECFFE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE080);
  }

  return result;
}

unint64_t sub_1E5949778()
{
  result = qword_1ECFFE088;
  if (!qword_1ECFFE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE088);
  }

  return result;
}

unint64_t sub_1E59497D0()
{
  result = qword_1ECFFE090;
  if (!qword_1ECFFE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE090);
  }

  return result;
}

unint64_t sub_1E5949828()
{
  result = qword_1ECFFE098;
  if (!qword_1ECFFE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE098);
  }

  return result;
}

uint64_t WorkoutPlanWeekday.normalizedCalendarIndex.getter(unsigned __int8 a1)
{
  if (a1 == 6)
  {
    return 0;
  }

  else
  {
    return a1 + 1;
  }
}

uint64_t sub_1E5949898(uint64_t a1)
{
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for TVCustomPlanView.FocusedButton();
  sub_1E5A2BD84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2A454();
  sub_1E5A2A434();
  return v5;
}

uint64_t TVCustomPlanView.init(store:index:actionButtonViewBuilder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for TVCustomPlanView.FocusedButton();
  swift_getWitnessTable();
  sub_1E5A2A444();
  *(a5 + 40) = v13;
  *(a5 + 48) = v14;
  *(a5 + 56) = v15;
  v10 = *a1;
  sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330);
  result = sub_1E5A2A654();
  *a5 = result;
  *(a5 + 8) = v12;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t TVCustomPlanView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v78 = sub_1E5A2A754();
  v3 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5A2ACC4();
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E0, &unk_1E5A39160);
  v8 = MEMORY[0x1E6981148];
  *&v98 = MEMORY[0x1E6981148];
  *(&v98 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  *&v99 = v8;
  *(&v99 + 1) = MEMORY[0x1E6981840];
  v71 = *(a1 + 16);
  v72 = a1;
  v9 = sub_1E5A2A6C4();
  v70 = *(a1 + 24);
  v10 = v70;
  type metadata accessor for TVCustomPlanView.FocusedButton();
  v11 = sub_1E5A2BD84();
  v96 = v10;
  v97 = MEMORY[0x1E697E040];
  v77 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  *&v91 = v9;
  *(&v91 + 1) = v11;
  *&v92 = WitnessTable;
  *(&v92 + 1) = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v91 = v9;
  *(&v91 + 1) = v11;
  *&v92 = WitnessTable;
  *(&v92 + 1) = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v91 = OpaqueTypeMetadata2;
  *(&v91 + 1) = OpaqueTypeConformance2;
  *&v100[0] = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getTupleTypeMetadata3();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v16 = sub_1E5A2B624();
  v67 = *(v16 - 8);
  v17 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - v18;
  v20 = swift_getWitnessTable();
  v59 = v20;
  v94 = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  *&v98 = v16;
  *(&v98 + 1) = v11;
  *&v99 = v20;
  *(&v99 + 1) = v58;
  v63 = MEMORY[0x1E697CE68];
  v60 = swift_getOpaqueTypeMetadata2();
  v65 = *(v60 - 8);
  v21 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v55 - v22;
  v62 = sub_1E5A2A6C4();
  v68 = *(v62 - 8);
  v23 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v55 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  v64 = sub_1E5A2A6C4();
  v69 = *(v64 - 8);
  v25 = *(v69 + 64);
  v26 = MEMORY[0x1EEE9AC00](v64);
  v61 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v66 = &v55 - v28;
  v29 = v73[1];
  v98 = *v73;
  v99 = v29;
  v100[0] = v73[2];
  *(v100 + 9) = *(v73 + 41);
  sub_1E5A2B7B4();
  v81 = v71;
  v82 = v70;
  v83 = &v98;
  sub_1E5A2B614();
  v91 = v98;
  v92 = v99;
  v93[0] = v100[0];
  *(v93 + 9) = *(v100 + 9);
  v89[0] = sub_1E5949898(v72);
  v89[1] = v30;
  v90 = v31 & 1;
  v88 = 0;
  v32 = v74;
  sub_1E5A2ACB4();
  v33 = swift_checkMetadataState();
  v34 = v58;
  v35 = v59;
  MEMORY[0x1E6931D40](v89, &v88, v32, v16, v33, v59, v58);
  (*(v75 + 8))(v32, v76);

  (*(v67 + 8))(v19, v16);
  *&v91 = v16;
  *(&v91 + 1) = v33;
  *&v92 = v35;
  *(&v92 + 1) = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v56;
  v38 = v57;
  v39 = v60;
  sub_1E5A2B0A4();
  (*(v65 + 8))(v37, v39);
  sub_1E5A2A0A4();
  v41 = v40;
  v42 = *(v78 + 20);
  v43 = *MEMORY[0x1E697F468];
  v44 = sub_1E5A2A9B4();
  v45 = v79;
  (*(*(v44 - 8) + 104))(&v79[v42], v43, v44);
  *v45 = v41;
  v45[1] = v41;
  v86 = v36;
  v87 = MEMORY[0x1E697F568];
  v46 = v62;
  v47 = swift_getWitnessTable();
  sub_1E594AA70();
  v48 = v61;
  sub_1E5A2B3C4();
  sub_1E594AAC8(v45);
  (*(v68 + 8))(v38, v46);
  v49 = sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170);
  v84 = v47;
  v85 = v49;
  v50 = v64;
  v51 = swift_getWitnessTable();
  v52 = v66;
  sub_1E58B41DC(v48, v50, v51);
  v53 = *(v69 + 8);
  v53(v48, v50);
  sub_1E58B41DC(v52, v50, v51);
  return (v53)(v52, v50);
}

uint64_t sub_1E594A394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v34 = a4;
  v6 = MEMORY[0x1E6981148];
  *&v44 = MEMORY[0x1E6981148];
  *(&v44 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  *&v45 = v6;
  *(&v45 + 1) = MEMORY[0x1E6981840];
  sub_1E5A2A6C4();
  v31 = a2;
  type metadata accessor for TVCustomPlanView.FocusedButton();
  sub_1E5A2BD84();
  v33 = a3;
  v43[6] = a3;
  v43[7] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v43[5] = swift_getWitnessTable();
  *&v40 = WitnessTable;
  *(&v40 + 1) = swift_getWitnessTable();
  *&v39 = swift_getOpaqueTypeMetadata2();
  *(&v39 + 1) = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v8 = sub_1E5A2B604();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = sub_1E5A2A6C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - v18;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4E8 != -1)
  {
    swift_once();
  }

  sub_1E5A2B434();
  *(v20 + 32) = sub_1E5A2B744();
  *(v20 + 40) = v21;
  sub_1E5A2B434();
  *(v20 + 48) = sub_1E5A2B744();
  *(v20 + 56) = v22;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v23 = sub_1E5A2AA34();
  MEMORY[0x1EEE9AC00](v23);
  v24 = v33;
  *(&v29 - 4) = v31;
  *(&v29 - 3) = v24;
  *(&v29 - 2) = v32;
  sub_1E5A2B5F4();
  v25 = swift_getWitnessTable();
  sub_1E5A2B324();
  (*(v30 + 8))(v11, v8);
  v43[3] = v25;
  v43[4] = MEMORY[0x1E697E5D8];
  v26 = swift_getWitnessTable();
  sub_1E58B41DC(v17, v12, v26);
  v27 = *(v13 + 8);
  v27(v17, v12);
  v42[0] = sub_1E594AB68;
  v42[1] = 0;
  v39 = v44;
  v40 = v45;
  v41 = OpaqueTypeMetadata2;
  v43[0] = v42;
  v43[1] = &v39;
  (*(v13 + 16))(v17, v19, v12);
  v43[2] = v17;
  v38[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE0E0, &unk_1E5A39160);
  v38[1] = MEMORY[0x1E697E3F0];
  v38[2] = v12;
  v35 = sub_1E58CD164(&qword_1ECFFE1F8, &qword_1ECFFE0E0, &unk_1E5A39160);
  v36 = sub_1E594C994();
  v37 = v26;
  sub_1E597DC00(v43, 3uLL, v38);
  v27(v19, v12);
  v27(v17, v12);
}

unint64_t sub_1E594AA70()
{
  result = qword_1EE2CFAF8;
  if (!qword_1EE2CFAF8)
  {
    sub_1E5A2A754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFAF8);
  }

  return result;
}

uint64_t sub_1E594AAC8(uint64_t a1)
{
  v2 = sub_1E5A2A754();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E594AB68@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE210, &unk_1E5A3E030);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v41 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v41 - v12);
  v42 = sub_1E5A2AA24();
  LOBYTE(v47) = 0;
  sub_1E594AFF4(&v58);
  v52 = *&v59[16];
  v53 = *&v59[32];
  v50 = v58;
  v51 = *v59;
  v55[1] = *v59;
  v55[2] = *&v59[16];
  v55[3] = *&v59[32];
  v55[4] = *&v59[48];
  v54 = *&v59[48];
  v55[0] = v58;
  sub_1E58BABA0(&v50, v56, &qword_1ECFFE218, &unk_1E5A392F0);
  sub_1E58BAD14(v55, &qword_1ECFFE218, &unk_1E5A392F0);
  *(&v46[2] + 7) = v51;
  *(&v46[4] + 7) = v52;
  *(&v46[6] + 7) = v53;
  *(&v46[8] + 7) = v54;
  *(v46 + 7) = v50;
  v45 = v47;
  *v13 = sub_1E5A2B7E4();
  v13[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE220, &qword_1E5A3E040);
  sub_1E594B1F8(v13 + *(v15 + 44));
  sub_1E5A2A5F4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE228, &qword_1E5A39300);
  v17 = (v13 + *(v16 + 36));
  v18 = *&v46[13];
  *v17 = *&v46[11];
  v17[1] = v18;
  v17[2] = *&v46[15];
  sub_1E5A2A5F4();
  v20 = v19 * -0.5;
  sub_1E5A2A5F4();
  v22 = (v13 + *(v3 + 44));
  v41 = v13;
  *v22 = v20;
  v22[1] = v21 * -0.5;
  *v11 = sub_1E5A2B7E4();
  v11[1] = v23;
  sub_1E594B1F8(v11 + *(v15 + 44));
  sub_1E5A2A5F4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v24 = (v11 + *(v16 + 36));
  v25 = v48;
  *v24 = v47;
  v24[1] = v25;
  v24[2] = v49;
  sub_1E5A2A5F4();
  v27 = v26 * -0.25;
  sub_1E5A2A5F4();
  v29 = (v11 + *(v3 + 44));
  *v29 = v27;
  v29[1] = v28 * 0.5;
  v30 = v43;
  sub_1E58BABA0(v13, v43, &qword_1ECFFE210, &unk_1E5A3E030);
  v31 = v44;
  sub_1E58BABA0(v11, v44, &qword_1ECFFE210, &unk_1E5A3E030);
  v32 = v42;
  v56[0] = v42;
  v56[1] = 0;
  v57[0] = v45;
  *&v57[1] = *v46;
  *&v57[17] = *&v46[2];
  *&v57[65] = *&v46[8];
  *&v57[49] = *&v46[6];
  *&v57[33] = *&v46[4];
  v33 = *(&v46[9] + 7);
  *&v57[80] = *(&v46[9] + 7);
  v34 = *v57;
  *a1 = v42;
  *(a1 + 16) = v34;
  v35 = *&v57[16];
  v36 = *&v57[32];
  v37 = *&v57[48];
  v38 = *&v57[64];
  *(a1 + 96) = v33;
  *(a1 + 64) = v37;
  *(a1 + 80) = v38;
  *(a1 + 32) = v35;
  *(a1 + 48) = v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE230, &qword_1E5A39308);
  sub_1E58BABA0(v30, a1 + *(v39 + 48), &qword_1ECFFE210, &unk_1E5A3E030);
  sub_1E58BABA0(v31, a1 + *(v39 + 64), &qword_1ECFFE210, &unk_1E5A3E030);
  sub_1E58BABA0(v56, &v58, &qword_1ECFFE238, &qword_1E5A39310);
  sub_1E58BAD14(v11, &qword_1ECFFE210, &unk_1E5A3E030);
  sub_1E58BAD14(v41, &qword_1ECFFE210, &unk_1E5A3E030);
  sub_1E58BAD14(v31, &qword_1ECFFE210, &unk_1E5A3E030);
  sub_1E58BAD14(v30, &qword_1ECFFE210, &unk_1E5A3E030);
  *&v59[33] = *&v46[4];
  *&v59[49] = *&v46[6];
  *v60 = *&v46[8];
  *&v59[1] = *v46;
  v58 = v32;
  v59[0] = v45;
  *&v60[15] = *(&v46[9] + 7);
  *&v59[17] = *&v46[2];
  return sub_1E58BAD14(&v58, &qword_1ECFFE238, &qword_1E5A39310);
}

double sub_1E594AFF4@<D0>(uint64_t a1@<X8>)
{
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4D8 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v2 + 32) = sub_1E5A2B744();
  *(v2 + 40) = v3;
  if (qword_1ECFFB4E0 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v2 + 48) = sub_1E5A2B744();
  *(v2 + 56) = v4;
  sub_1E5A2B754();
  sub_1E5A2A614();
  sub_1E5A2B8A4();
  sub_1E5A2B894();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E5A2C930;
  *(v5 + 32) = sub_1E5A2B744();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_1E5A2B744();
  *(v5 + 56) = v7;
  sub_1E5A2B754();
  sub_1E5A2A614();
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 24) = v11;
  *(a1 + 40) = v12;
  result = *&v13;
  *(a1 + 48) = v13;
  *(a1 + 64) = v14;
  return result;
}

uint64_t sub_1E594B1F8@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE240, &qword_1E5A39318);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - v5;
  v7 = *MEMORY[0x1E697F480];
  v8 = sub_1E5A2A9B4();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  sub_1E5A2B8A4();
  sub_1E5A2B894();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v9 = swift_allocObject();
  v55 = xmmword_1E5A303B0;
  *(v9 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4C8 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v9 + 32) = sub_1E5A2B744();
  *(v9 + 40) = v10;
  if (qword_1ECFFB4C0 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v9 + 48) = sub_1E5A2B744();
  *(v9 + 56) = v11;
  if (qword_1ECFFB4D0 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v9 + 64) = sub_1E5A2B744();
  *(v9 + 72) = v12;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v13 = &v6[*(v1 + 52)];
  v14 = *&v81[67];
  *v13 = *&v81[59];
  *(v13 + 1) = v14;
  *(v13 + 4) = v82;
  *&v6[*(v1 + 56)] = 256;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v15 = swift_allocObject();
  *(v15 + 16) = v55;
  *(v15 + 32) = sub_1E5A2B744();
  *(v15 + 40) = v16;
  *(v15 + 48) = sub_1E5A2B744();
  *(v15 + 56) = v17;
  *(v15 + 64) = sub_1E5A2B744();
  *(v15 + 72) = v18;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v52 = v83;
  v19 = v84;
  v20 = v85;
  v51 = v86;
  v21 = v87;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *&v81[27] = v91;
  *&v81[35] = v92;
  *&v81[43] = v93;
  *&v81[51] = v94;
  *&v81[3] = v88;
  *&v81[11] = v89;
  *&v81[19] = v90;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v22 = swift_allocObject();
  *(v22 + 16) = v55;
  *(v22 + 32) = sub_1E5A2B744();
  *(v22 + 40) = v23;
  *(v22 + 48) = sub_1E5A2B744();
  *(v22 + 56) = v24;
  *(v22 + 64) = sub_1E5A2B744();
  *(v22 + 72) = v25;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v26 = v95;
  v27 = v96;
  v28 = v97;
  v29 = v98;
  v30 = v99;
  sub_1E5A2B804();
  sub_1E5A2A764();
  *&v80[54] = v103;
  *&v80[70] = v104;
  *&v80[86] = v105;
  *&v80[102] = v106;
  *&v80[6] = v100;
  *&v80[22] = v101;
  *&v80[38] = v102;
  v31 = v54;
  sub_1E58BABA0(v6, v54, &qword_1ECFFE240, &qword_1E5A39318);
  v32 = v53;
  sub_1E58BABA0(v31, v53, &qword_1ECFFE240, &qword_1E5A39318);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE248, &qword_1E5A39320);
  v34 = (v32 + *(v33 + 48));
  v35 = v52;
  *&v56 = v52;
  *(&v56 + 1) = v19;
  *&v57 = v20;
  v36 = v51;
  *(&v57 + 1) = v51;
  *&v58[0] = v21;
  WORD4(v58[0]) = 256;
  *(v58 + 10) = *v81;
  *(&v58[4] + 10) = *&v81[32];
  *(&v58[5] + 10) = *&v81[40];
  *(&v58[6] + 10) = *&v81[48];
  *(&v58[7] + 1) = *&v81[55];
  *(&v58[1] + 10) = *&v81[8];
  *(&v58[2] + 10) = *&v81[16];
  *(&v58[3] + 10) = *&v81[24];
  v37 = v58[3];
  v34[4] = v58[2];
  v34[5] = v37;
  v38 = v58[1];
  v34[2] = v58[0];
  v34[3] = v38;
  v39 = v58[7];
  v34[8] = v58[6];
  v34[9] = v39;
  v40 = v58[5];
  v34[6] = v58[4];
  v34[7] = v40;
  v41 = v57;
  *v34 = v56;
  v34[1] = v41;
  v42 = (v32 + *(v33 + 64));
  *&v59 = v26;
  *(&v59 + 1) = v27;
  *&v60 = v28;
  *(&v60 + 1) = v29;
  *&v61[0] = v30;
  WORD4(v61[0]) = 256;
  *(&v61[5] + 10) = *&v80[80];
  *(&v61[4] + 10) = *&v80[64];
  *(&v61[6] + 10) = *&v80[96];
  *(&v61[7] + 1) = *&v80[110];
  *(v61 + 10) = *v80;
  *(&v61[1] + 10) = *&v80[16];
  *(&v61[2] + 10) = *&v80[32];
  *(&v61[3] + 10) = *&v80[48];
  v43 = v60;
  *v42 = v59;
  v42[1] = v43;
  v44 = v61[0];
  v45 = v61[1];
  v46 = v61[3];
  v42[4] = v61[2];
  v42[5] = v46;
  v42[2] = v44;
  v42[3] = v45;
  v47 = v61[4];
  v48 = v61[5];
  v49 = v61[7];
  v42[8] = v61[6];
  v42[9] = v49;
  v42[6] = v47;
  v42[7] = v48;
  sub_1E58BABA0(&v56, v71, &qword_1ECFFE250, &qword_1E5A39328);
  sub_1E58BABA0(&v59, v71, &qword_1ECFFE250, &qword_1E5A39328);
  sub_1E58BAD14(v6, &qword_1ECFFE240, &qword_1E5A39318);
  v62[0] = v26;
  v62[1] = v27;
  v62[2] = v28;
  v62[3] = v29;
  v62[4] = v30;
  v63 = 256;
  v68 = *&v80[64];
  v69 = *&v80[80];
  *v70 = *&v80[96];
  *&v70[14] = *&v80[110];
  v64 = *v80;
  v65 = *&v80[16];
  v66 = *&v80[32];
  v67 = *&v80[48];
  sub_1E58BAD14(v62, &qword_1ECFFE250, &qword_1E5A39328);
  v71[0] = v35;
  v71[1] = v19;
  v71[2] = v20;
  v71[3] = v36;
  v71[4] = v21;
  v72 = 256;
  v77 = *&v81[32];
  v78 = *&v81[40];
  *v79 = *&v81[48];
  *&v79[14] = *&v81[55];
  v73 = *v81;
  v74 = *&v81[8];
  v75 = *&v81[16];
  v76 = *&v81[24];
  sub_1E58BAD14(v71, &qword_1ECFFE250, &qword_1E5A39328);
  return sub_1E58BAD14(v31, &qword_1ECFFE240, &qword_1E5A39318);
}

id sub_1E594B990@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v139 = a4;
  v7 = sub_1E5A2BA14();
  v137 = *(v7 - 8);
  v138 = v7;
  v8 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v136 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A2B994();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v133 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2B9C4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v132 = v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v134 = v107 - v19;
  v123 = *(a2 - 1);
  v20 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v122 = v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E5A2A6C4();
  v125 = *(v22 - 8);
  v23 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v124 = v107 - v24;
  v143 = a2;
  type metadata accessor for TVCustomPlanView.FocusedButton();
  v25 = sub_1E5A2BD84();
  v142 = a3;
  v177 = a3;
  v178 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v176 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  *&v158 = v22;
  *(&v158 + 1) = v25;
  *&v159 = WitnessTable;
  *(&v159 + 1) = v27;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v129 = *(OpaqueTypeMetadata2 - 8);
  v29 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v128 = v107 - v30;
  v126 = v22;
  *&v158 = v22;
  *(&v158 + 1) = v25;
  v120 = WitnessTable;
  v121 = v25;
  *&v159 = WitnessTable;
  *(&v159 + 1) = v27;
  v119 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v130 = OpaqueTypeMetadata2;
  *&v158 = OpaqueTypeMetadata2;
  *(&v158 + 1) = OpaqueTypeConformance2;
  v127 = OpaqueTypeConformance2;
  v135 = swift_getOpaqueTypeMetadata2();
  v131 = *(v135 - 8);
  v32 = *(v131 + 64);
  v33 = MEMORY[0x1EEE9AC00](v135);
  v144 = v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v145 = v107 - v35;
  v36 = sub_1E5A29EB4();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = sub_1E5A2BB14();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v40 = qword_1EE2D33E0;
  v41 = *(a1 + 1);
  swift_getKeyPath();
  v42 = a1;

  v43 = v40;
  sub_1E5A2B944();

  v44 = sub_1E5A2AF64();
  v46 = v45;
  v48 = v47;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v108 = type metadata accessor for TVCustomPlanView();
    sub_1E5A2AF34();
    v50 = sub_1E5A2AFA4();
    v140 = v51;
    v141 = v50;
    v117 = v52;
    v118 = v53;

    sub_1E58B3C9C(v44, v46, v48 & 1);

    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v113 = v179;
    v114 = v181;
    v115 = v184;
    v116 = v183;
    v175 = 1;
    v173 = v180;
    v171 = v182;
    sub_1E5A2BA84();
    v54 = qword_1EE2D33E0;
    v55 = *(a1 + 1);
    swift_getKeyPath();

    v56 = v54;
    sub_1E5A2B944();

    v57 = sub_1E5A2AF64();
    v59 = v58;
    v61 = v60;
    LODWORD(v158) = sub_1E5A2AB84();
    v62 = sub_1E5A2AF84();
    v109 = v63;
    v110 = v62;
    v111 = v64;
    v112 = v65;
    sub_1E58B3C9C(v57, v59, v61 & 1);

    v66 = *(v42 + 3);
    v67 = *(v42 + 4);
    v107[1] = "k, trainers, and music.";
    sub_1E5A2BA84();
    v68 = qword_1EE2D33E0;
    v69 = *(v42 + 1);
    swift_getKeyPath();

    v70 = v68;
    sub_1E5A2B944();

    v71 = sub_1E5A2BB64();
    v72 = *(v42 + 2);
    v73 = v122;
    v66(v71);

    sub_1E5A2B7E4();
    v74 = v124;
    v75 = v143;
    sub_1E5A2B2D4();
    (*(v123 + 8))(v73, v75);
    v76 = v42[1];
    v158 = *v42;
    v159 = v76;
    v160[0] = v42[2];
    *(v160 + 9) = *(v42 + 41);
    v165 = sub_1E5949898(v108);
    v166 = v77;
    LOBYTE(v167) = v78 & 1;
    LOBYTE(v151[0]) = 0;
    swift_checkMetadataState();
    v79 = v128;
    v80 = v126;
    sub_1E5A2B304();

    (*(v125 + 8))(v74, v80);
    sub_1E5A2B9B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E5A2C930;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    sub_1E5A2BA84();
    v82 = qword_1EE2D33E0;
    v83 = *(v42 + 1);
    swift_getKeyPath();

    v84 = v82;
    sub_1E5A2B944();

    v85 = sub_1E5A2BB64();
    v86 = MEMORY[0x1E69E6158];
    *(inited + 48) = v85;
    *(inited + 56) = v87;
    *(inited + 72) = v86;
    strcpy((inited + 80), "impressionType");
    *(inited + 120) = v86;
    *(inited + 95) = -18;
    *(inited + 96) = 0x6E6F74747562;
    *(inited + 104) = 0xE600000000000000;
    sub_1E590DF48(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
    swift_arrayDestroy();
    sub_1E5A2B984();
    v88 = MEMORY[0x1E69E7CC0];
    sub_1E590DF48(MEMORY[0x1E69E7CC0]);
    sub_1E590DF48(v88);
    v89 = v134;
    sub_1E5A2B9D4();
    v90 = sub_1E5A2B9E4();
    (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
    v91 = v136;
    sub_1E5A2B9F4();
    v92 = v144;
    v93 = v130;
    v94 = v127;
    sub_1E5A2B014();
    (*(v137 + 8))(v91, v138);
    sub_1E58BAD14(v89, &qword_1ECFFB550, &qword_1E5A304B0);
    (*(v129 + 8))(v79, v93);
    *&v158 = v93;
    *(&v158 + 1) = v94;
    v138 = swift_getOpaqueTypeConformance2();
    v95 = v92;
    v96 = v135;
    sub_1E58B41DC(v92, v135, v138);
    v97 = v131;
    v98 = *(v131 + 8);
    v142 = v131 + 8;
    v143 = v98;
    v98(v95, v96);
    v99 = v141;
    v161 = v141;
    v162 = v140;
    LODWORD(v137) = v117 & 1;
    v163 = v117 & 1;
    v164 = v118;
    BYTE8(v158) = v175;
    *(&v158 + 9) = *v174;
    HIDWORD(v158) = *&v174[3];
    *&v158 = 0;
    *&v159 = v113;
    BYTE8(v159) = v173;
    *(&v159 + 9) = *v172;
    HIDWORD(v159) = *&v172[3];
    *&v160[0] = v114;
    BYTE8(v160[0]) = v171;
    HIDWORD(v160[0]) = *&v170[3];
    *(v160 + 9) = *v170;
    *&v160[1] = v116;
    *(&v160[1] + 1) = v115;
    v165 = &v161;
    v166 = &v158;
    v101 = v109;
    v100 = v110;
    v154 = v110;
    v155 = v109;
    LOBYTE(v89) = v111 & 1;
    v156 = v111 & 1;
    v157 = v112;
    v152 = 0;
    v153 = 1;
    v167 = &v154;
    v168 = &v152;
    (*(v97 + 16))(v95, v145, v96);
    v169 = v95;
    v102 = v99;
    v103 = v140;
    LOBYTE(v95) = v137;
    sub_1E594C9E8(v102, v140, v137);

    sub_1E594C9E8(v100, v101, v89);

    v104 = MEMORY[0x1E6981148];
    v151[0] = MEMORY[0x1E6981148];
    v151[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
    v151[2] = v104;
    v151[3] = MEMORY[0x1E6981840];
    v151[4] = v96;
    v105 = MEMORY[0x1E6981138];
    v146 = MEMORY[0x1E6981138];
    v147 = sub_1E594C9F8();
    v148 = v105;
    v149 = MEMORY[0x1E6981838];
    v150 = v138;
    sub_1E597DC00(&v165, 5uLL, v151);
    sub_1E58B3C9C(v100, v101, v89);

    sub_1E58B3C9C(v141, v103, v95);

    v106 = v143;
    v143(v145, v96);
    v106(v144, v96);
    sub_1E58B3C9C(v154, v155, v156);

    sub_1E58B3C9C(v161, v162, v163);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E594C85C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E594C8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1E594C8FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E594C994()
{
  result = qword_1ECFFE200;
  if (!qword_1ECFFE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFE200);
  }

  return result;
}

uint64_t sub_1E594C9E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}