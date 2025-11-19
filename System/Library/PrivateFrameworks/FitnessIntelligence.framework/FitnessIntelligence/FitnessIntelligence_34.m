uint64_t sub_1B4CA916C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CA9220()
{
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4CA92C0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CA9370@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AverageWorkoutPaceFact.TemplateString.init(rawValue:)(a1);
}

void sub_1B4CA937C(unint64_t *a1@<X8>)
{
  v2 = "y and the day before.";
  v3 = "<duration_delta_from_baseline>.";
  v4 = 0xD0000000000000AELL;
  if (*v1 == 2)
  {
    v4 = 0xD0000000000000A5;
  }

  else
  {
    v3 = "delta_from_baseline>.";
  }

  if (*v1)
  {
    v5 = 0xD0000000000000AFLL;
  }

  else
  {
    v5 = 0xD0000000000000A6;
  }

  if (*v1)
  {
    v2 = "_delta_from_baseline>.";
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v5 = v4;
    v6 = v3;
  }

  *a1 = v5;
  a1[1] = v6 | 0x8000000000000000;
}

id AverageWorkoutPaceFact.placeholders()()
{
  v1 = type metadata accessor for AverageWorkoutPaceFact();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  [*v0 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v6 = result;
    v7 = sub_1B4D1818C();
    v9 = v8;

    strcpy((v4 + 32), "activity_type");
    *(v4 + 46) = -4864;
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v4 + 48) = sub_1B4993DFC;
    *(v4 + 56) = v10;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    sub_1B49BEB50(v0, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v12 = swift_allocObject();
    sub_1B4CA9E44(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1B4CA9EA8;
    *(v13 + 24) = v12;
    *(v4 + 80) = 0xD00000000000001CLL;
    *(v4 + 88) = 0x80000001B4D66BE0;
    *(v4 + 96) = sub_1B4AF87E4;
    *(v4 + 104) = v13;
    *(v4 + 112) = 0;
    *(v4 + 120) = 0;
    sub_1B49BEB50(v0, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = swift_allocObject();
    sub_1B4CA9E44(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v11);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B4CAA05C;
    *(v15 + 24) = v14;
    *(v4 + 128) = 0xD000000000000019;
    *(v4 + 136) = 0x80000001B4D66C00;
    *(v4 + 144) = sub_1B4AF8C58;
    *(v4 + 152) = v15;
    *(v4 + 160) = 0;
    *(v4 + 168) = 0;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4CA9688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  sub_1B4CA9884(a1, &v14 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
  v7 = *(sub_1B4D18F8C() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B4D1B2D0;
  sub_1B4D18F4C();
  sub_1B4D18F5C();
  sub_1B4D18F6C();
  sub_1B4D18F7C();
  v11 = sub_1B4BCA7BC(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v12 = sub_1B4D15F5C(v6, v11);

  (*(v3 + 8))(v6, v2);
  return v12;
}

uint64_t sub_1B4CA9884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v23 = *(type metadata accessor for AverageWorkoutPaceFact() + 20);
  v15 = [*(a1 + 16) userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v16 = [objc_opt_self() mileUnit];
  LOBYTE(a1) = sub_1B4D187AC();

  if (a1)
  {
    if (qword_1EB8A6478 != -1)
    {
      swift_once();
    }

    v17 = &qword_1EB8AC490;
  }

  else
  {
    if (qword_1EB8A6480 != -1)
    {
      swift_once();
    }

    v17 = &qword_1EB8AC498;
  }

  v18 = *v17;

  sub_1B4D1745C();
  sub_1B4D1742C();
  (*(v6 + 8))(v9, v5);
  v19 = objc_opt_self();
  v20 = [v19 minutes];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  v21 = [v19 seconds];
  sub_1B4D1745C();

  return (*(v11 + 8))(v14, v10);
}

uint64_t AverageWorkoutPaceFact.selectTemplate(formatter:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v16 - v9;
  if ([*v2 effectiveTypeIdentifier] == 13)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
    v12 = *(type metadata accessor for AverageWorkoutPaceFact() + 24);
    if (qword_1EB8A6008 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_1EB8F3AE8);
    sub_1B49B0578(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
    result = sub_1B4D1810C();
    if (result)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }
  }

  else
  {
    sub_1B4CA9884(a1, v10);
    if (qword_1EB8A5FF8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v5, qword_1EB8F3AB8);
    sub_1B49B0578(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
    v15 = sub_1B4D1810C();
    result = (*(v6 + 8))(v10, v5);
    v14 = (v15 & 1) == 0;
  }

  *a2 = v14;
  return result;
}

uint64_t sub_1B4CA9E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AverageWorkoutPaceFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4CA9EA8(uint64_t a1)
{
  v2 = *(*(type metadata accessor for AverageWorkoutPaceFact() - 8) + 80);

  return sub_1B4CA9688(a1);
}

uint64_t objectdestroy_3Tm_2()
{
  v1 = (type metadata accessor for AverageWorkoutPaceFact() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4CAA05C()
{
  v1 = type metadata accessor for AverageWorkoutPaceFact();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  return sub_1B4D13D94(v2 + *(v1 + 24), *v2, 1);
}

unint64_t sub_1B4CAA0D4()
{
  result = qword_1EB8ADE28;
  if (!qword_1EB8ADE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE28);
  }

  return result;
}

unint64_t sub_1B4CAA170()
{
  result = qword_1EB8ADE40;
  if (!qword_1EB8ADE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE40);
  }

  return result;
}

unint64_t sub_1B4CAA1C8()
{
  result = qword_1EB8ADE48;
  if (!qword_1EB8ADE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE48);
  }

  return result;
}

unint64_t sub_1B4CAA21C(uint64_t a1)
{
  result = sub_1B4CAA244();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4CAA244()
{
  result = qword_1EB8ADE50;
  if (!qword_1EB8ADE50)
  {
    type metadata accessor for AverageWorkoutPaceFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE50);
  }

  return result;
}

uint64_t WorkoutVoiceMostCaloriesFact.init(value:timescale:workoutActivityType:identifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a2;
  *a6 = 18;
  v12 = type metadata accessor for WorkoutVoiceMostCaloriesFact();
  v13 = v12[5];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  result = (*(*(v14 - 8) + 32))(&a6[v13], a1, v14);
  a6[v12[6]] = v11;
  *&a6[v12[7]] = a3;
  v16 = &a6[v12[8]];
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t type metadata accessor for WorkoutVoiceMostCaloriesFact()
{
  result = qword_1EB8ADE70;
  if (!qword_1EB8ADE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoiceMostCaloriesFact.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutVoiceMostCaloriesFact() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutVoiceMostCaloriesFact.timescale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutVoiceMostCaloriesFact();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WorkoutVoiceMostCaloriesFact.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutVoiceMostCaloriesFact() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1B4CAA4F0(uint64_t a1)
{
  v2 = sub_1B4CAAF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4CAA52C(uint64_t a1)
{
  v2 = sub_1B4CAAF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceMostCaloriesFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADE58, &qword_1B4D458D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CAAF78();
  sub_1B4D18EFC();
  v24 = *v3;
  v23 = 0;
  sub_1B4B59AD0();
  sub_1B4D18D0C();
  if (!v2)
  {
    v17[0] = type metadata accessor for WorkoutVoiceMostCaloriesFact();
    v11 = *(v17[0] + 20);
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B4D18D0C();
    v12 = v17[0];
    v21 = v3[*(v17[0] + 24)];
    v20 = 2;
    sub_1B4B59B24();
    sub_1B4D18D0C();
    v17[1] = *&v3[*(v12 + 28)];
    v19 = 3;
    type metadata accessor for HKWorkoutActivityType(0);
    sub_1B4CAAFCC(&qword_1EB8AAFB8);
    sub_1B4D18D0C();
    v13 = &v3[*(v12 + 32)];
    v14 = *v13;
    v15 = v13[1];
    v18 = 4;
    sub_1B4D18CBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WorkoutVoiceMostCaloriesFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADE68, &qword_1B4D458E0);
  v27 = *(v30 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v25 - v9;
  v11 = type metadata accessor for WorkoutVoiceMostCaloriesFact();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B4CAAF78();
  v29 = v10;
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  v17 = v14;
  v19 = v27;
  v18 = v28;
  v38 = 0;
  sub_1B4B59B78();
  sub_1B4D18C0C();
  *v17 = v39;
  v37 = 1;
  sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D18C0C();
  (*(v18 + 32))(&v17[v11[5]], v7, v4);
  v35 = 2;
  sub_1B4B59BCC();
  sub_1B4D18C0C();
  v17[v11[6]] = v36;
  type metadata accessor for HKWorkoutActivityType(0);
  v34 = 3;
  sub_1B4CAAFCC(&qword_1EB8AAFD8);
  sub_1B4D18C0C();
  *&v17[v11[7]] = v32;
  v33 = 4;
  v20 = sub_1B4D18BBC();
  v22 = v21;
  (*(v19 + 8))(v29, v30);
  v23 = &v17[v11[8]];
  *v23 = v20;
  v23[1] = v22;
  sub_1B4A6C1F0(v17, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return sub_1B4CAB010(v17);
}

uint64_t _s19FitnessIntelligence28WorkoutVoiceMostCaloriesFactV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26[-v11];
  v13 = *a1;
  v14 = *a2;
  if (v13 > 0x11)
  {
    if (v13 == 18)
    {
      if (v14 == 18)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v13 != 19)
      {
        goto LABEL_10;
      }

      if (v14 == 19)
      {
        goto LABEL_16;
      }
    }

LABEL_22:
    v24 = 0;
    return v24 & 1;
  }

  if (v13 == 16)
  {
    if (v14 == 16)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v13 != 17)
  {
LABEL_10:
    if ((v14 & 0xFC) == 0x10)
    {
      goto LABEL_22;
    }

    v26[15] = v13;
    v26[14] = v14;
    v15 = v10;
    DistanceReference.rawValue.getter();
    DistanceReference.rawValue.getter();
    sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
    v16 = sub_1B4D1816C();
    v17 = *(v5 + 8);
    v17(v8, v15);
    v17(v12, v15);
    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v14 != 17)
  {
    goto LABEL_22;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v18 = type metadata accessor for WorkoutVoiceMostCaloriesFact();
  v19 = v18[5];
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4975E34(a1[v18[6]], a2[v18[6]]) & 1) == 0 || *&a1[v18[7]] != *&a2[v18[7]])
  {
    goto LABEL_22;
  }

  v20 = v18[8];
  v21 = *&a1[v20];
  v22 = *&a1[v20 + 8];
  v23 = &a2[v20];
  if (v21 == *v23 && v22 == *(v23 + 1))
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_1B4D18DCC();
  }

  return v24 & 1;
}

unint64_t sub_1B4CAAF78()
{
  result = qword_1EB8ADE60;
  if (!qword_1EB8ADE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE60);
  }

  return result;
}

uint64_t sub_1B4CAAFCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKWorkoutActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4CAB010(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceMostCaloriesFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4CAB094()
{
  sub_1B4CAB138();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKWorkoutActivityType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4CAB138()
{
  if (!qword_1EB8A9F50)
  {
    sub_1B4BBBFA0();
    v0 = sub_1B4D1746C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8A9F50);
    }
  }
}

unint64_t sub_1B4CAB1A4()
{
  result = qword_1EB8ADE80;
  if (!qword_1EB8ADE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE80);
  }

  return result;
}

unint64_t sub_1B4CAB1FC()
{
  result = qword_1EB8ADE88;
  if (!qword_1EB8ADE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE88);
  }

  return result;
}

unint64_t sub_1B4CAB254()
{
  result = qword_1EB8ADE90;
  if (!qword_1EB8ADE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE90);
  }

  return result;
}

uint64_t static SignificantDistanceDuringWorkoutFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49C016C;

  return sub_1B4CAC990(a1, a2, a3, a4);
}

uint64_t SignificantDistanceDuringWorkoutFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4CAB408@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t SignificantDistanceDuringWorkoutFact.makePrompt(promptFormatter:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - v4;
  LOBYTE(v12[0]) = *(v0 + 8);
  DistanceReference.rawValue.getter();
  v6 = sub_1B4D1232C();
  sub_1B4BC79D0();
  v7 = v6[2];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v8 = sub_1B4D1878C();
  v10 = v9;
  (*(v2 + 8))(v5, v1);

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD000000000000021, 0x80000001B4D66C20);
  MEMORY[0x1B8C7C620](v8, v10);

  MEMORY[0x1B8C7C620](0xD000000000000011, 0x80000001B4D66C50);
  return v12[0];
}

uint64_t sub_1B4CAB608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49C0344;

  return sub_1B4CAC990(a1, a2, a3, a4);
}

void sub_1B4CAB6D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE4F4(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1B4CAB744(v4);
  *a1 = v2;
}

void sub_1B4CAB744(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B4D18D4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B4D1844C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1B4CABA28(v7, v8, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1B4CAB83C(0, v2, 1, a1);
  }
}

void sub_1B4CAB83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = (v13 + 8);
    v18 = (v16 + a3);
    v19 = a1 - a3;
LABEL_5:
    v29 = v18;
    v30 = a3;
    v20 = *(v16 + a3);
    v28 = v19;
    v21 = v18;
    while (1)
    {
      v22 = *(v21 - 1);
      v32 = v20;
      DistanceReference.rawValue.getter();
      v31 = v22;
      DistanceReference.rawValue.getter();
      sub_1B49A2254();
      v23 = sub_1B4D180EC();
      v24 = *v17;
      (*v17)(v11, v8);
      v24(v15, v8);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v18 = v29 + 1;
        v19 = v28 - 1;
        if (v30 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v16)
      {
        break;
      }

      v20 = *v21;
      *v21 = *(v21 - 1);
      *--v21 = v20;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4CABA28(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v109 = a4;
  v110 = a1;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v119 = &v106 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v106 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v106 - v15;
  v117 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v4 = *v110;
    if (!*v110)
    {
      goto LABEL_130;
    }

    v17 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v118;
    if (isUniquelyReferenced_nonNull_native)
    {
      v101 = v17;
    }

    else
    {
LABEL_124:
      v101 = sub_1B4CDDE84(v17);
    }

    v128 = v101;
    v17 = *(v101 + 2);
    if (v17 >= 2)
    {
      while (*v117)
      {
        v102 = *&v101[16 * v17];
        v103 = v101;
        v104 = *&v101[16 * v17 + 24];
        sub_1B4CAC2D8((*v117 + v102), (*v117 + *&v101[16 * v17 + 16]), (*v117 + v104), v4);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v104 < v102)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1B4CDDE84(v103);
        }

        if ((v17 - 2) >= *(v103 + 2))
        {
          goto LABEL_118;
        }

        v105 = &v103[16 * v17];
        *v105 = v102;
        *(v105 + 1) = v104;
        v128 = v103;
        sub_1B4CDDDF8(v17 - 1);
        v101 = v128;
        v17 = *(v128 + 2);
        if (v17 <= 1)
        {
          goto LABEL_102;
        }
      }

      goto LABEL_128;
    }

LABEL_102:

    return;
  }

  v17 = 0;
  v122 = (v14 + 8);
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v17++;
    if (v17 < v16)
    {
      v108 = v18;
      v20 = *(*v117 + v17);
      v5 = v16;
      v114 = *v117;
      v21 = *(v114 + v19);
      v127 = v20;
      v22 = v115;
      DistanceReference.rawValue.getter();
      v126 = v21;
      v23 = v116;
      DistanceReference.rawValue.getter();
      sub_1B49A2254();
      v24 = v123;
      LODWORD(v121) = sub_1B4D180EC();
      v25 = v19;
      v26 = *v122;
      (*v122)(v23, v24);
      v26(v22, v24);
      v113 = v5;
      v27 = (v5 - 2);
      v107 = v25;
      v4 = v25;
      while (v27 != v4)
      {
        v28 = v115;
        v29 = *(v114 + v4 + 1);
        v125 = *(v114 + v4 + 2);
        DistanceReference.rawValue.getter();
        v124 = v29;
        v5 = v116;
        DistanceReference.rawValue.getter();
        v30 = v123;
        v31 = sub_1B4D180EC() & 1;
        v26(v5, v30);
        v26(v28, v30);
        ++v4;
        if ((v121 & 1) != v31)
        {
          v17 = v4 + 1;
          goto LABEL_10;
        }
      }

      v17 = v113;
LABEL_10:
      v18 = v108;
      v32 = v109;
      v19 = v107;
      if ((v121 & 1) == 0)
      {
        goto LABEL_21;
      }

      if (v17 < v107)
      {
        goto LABEL_121;
      }

      if (v107 >= v17)
      {
        goto LABEL_21;
      }

      v33 = v17 - 1;
      v34 = v107;
      do
      {
        if (v34 != v33)
        {
          v37 = *v117;
          if (!*v117)
          {
            goto LABEL_127;
          }

          v35 = *(v37 + v34);
          *(v37 + v34) = *(v37 + v33);
          *(v37 + v33) = v35;
        }
      }

      while (++v34 < v33--);
    }

    v32 = v109;
LABEL_21:
    v38 = v117[1];
    if (v17 < v38)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_120;
      }

      if (v17 - v19 < v32)
      {
        v39 = v19 + v32;
        if (__OFADD__(v19, v32))
        {
          goto LABEL_122;
        }

        if (v39 >= v38)
        {
          v39 = v117[1];
        }

        if (v39 < v19)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v17 != v39)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v17 < v19)
    {
      goto LABEL_119;
    }

    v53 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v53;
    }

    else
    {
      v18 = sub_1B4A1D58C(0, *(v53 + 2) + 1, 1, v53);
    }

    v4 = *(v18 + 2);
    v54 = *(v18 + 3);
    v55 = v4 + 1;
    if (v4 >= v54 >> 1)
    {
      v18 = sub_1B4A1D58C((v54 > 1), v4 + 1, 1, v18);
    }

    *(v18 + 2) = v55;
    v56 = &v18[16 * v4];
    *(v56 + 4) = v19;
    *(v56 + 5) = v17;
    v57 = *v110;
    if (!*v110)
    {
      goto LABEL_129;
    }

    if (v4)
    {
      while (1)
      {
        v5 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v18 + 4);
          v59 = *(v18 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_58:
          if (v61)
          {
            goto LABEL_108;
          }

          v74 = &v18[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_111;
          }

          v80 = &v18[16 * v5 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_115;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v5 = v55 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v84 = &v18[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_72:
        if (v79)
        {
          goto LABEL_110;
        }

        v87 = &v18[16 * v5];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_113;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_79:
        v4 = v5 - 1;
        if (v5 - 1 >= v55)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v117)
        {
          goto LABEL_126;
        }

        v95 = v18;
        v96 = *&v18[16 * v4 + 32];
        v97 = *&v18[16 * v5 + 40];
        v98 = v118;
        sub_1B4CAC2D8((*v117 + v96), (*v117 + *&v18[16 * v5 + 32]), (*v117 + v97), v57);
        v118 = v98;
        if (v98)
        {
          goto LABEL_102;
        }

        if (v97 < v96)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1B4CDDE84(v95);
        }

        if (v4 >= *(v95 + 2))
        {
          goto LABEL_105;
        }

        v99 = &v95[16 * v4];
        *(v99 + 4) = v96;
        *(v99 + 5) = v97;
        v128 = v95;
        sub_1B4CDDDF8(v5);
        v18 = v128;
        v55 = *(v128 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v18[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_106;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_107;
      }

      v69 = &v18[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_109;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_112;
      }

      if (v73 >= v65)
      {
        v91 = &v18[16 * v5 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_116;
        }

        if (v60 < v94)
        {
          v5 = v55 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v16 = v117[1];
    if (v17 >= v16)
    {
      goto LABEL_91;
    }
  }

  v107 = v19;
  v108 = v18;
  v121 = *v117;
  v4 = v121 + v17;
  v40 = v19 - v17;
  v111 = v39;
LABEL_31:
  v113 = v4;
  v114 = v17;
  v41 = *(v121 + v17);
  v112 = v40;
  while (1)
  {
    v42 = *(v4 - 1);
    v43 = objc_opt_self();
    v44 = qword_1B4D45BF0[v41];
    v45 = [v43 *off_1E7C11D18[v41]];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v46 = v119;
    sub_1B4D1741C();
    v47 = qword_1B4D45BF0[v42];
    v48 = [objc_opt_self() *off_1E7C11D18[v42]];
    v49 = v120;
    sub_1B4D1741C();
    sub_1B49A2254();
    v5 = v123;
    v50 = sub_1B4D180EC();
    v51 = *v122;
    (*v122)(v49, v5);
    v51(v46, v5);
    if ((v50 & 1) == 0)
    {
LABEL_30:
      v17 = v114 + 1;
      v4 = (v113 + 1);
      v40 = v112 - 1;
      if (v114 + 1 != v111)
      {
        goto LABEL_31;
      }

      v17 = v111;
      v19 = v107;
      v18 = v108;
      goto LABEL_38;
    }

    if (!v121)
    {
      break;
    }

    v41 = *v4;
    *v4 = *(v4 - 1);
    *--v4 = v41;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_30;
    }
  }

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
}

uint64_t sub_1B4CAC2D8(char *a1, char *a2, char *a3, char *a4)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v9 = *(v49 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v42 - v13;
  v14 = a2 - a1;
  v15 = a3 - a2;
  if (a2 - a1 >= a3 - a2)
  {
    if (a4 != a2 || a4 >= a3)
    {
      memmove(a4, a2, a3 - a2);
    }

    v16 = &a4[v15];
    if (v15 >= 1 && a2 > a1)
    {
      v43 = v4;
      v44 = (v9 + 8);
      v48 = a1;
      v45 = a4;
      while (1)
      {
        v42 = a2;
        v27 = a2 - 1;
        v28 = a3 - 1;
        v29 = v16;
        v46 = a2 - 1;
        while (1)
        {
          v30 = v16;
          v47 = v28;
          v31 = v28 + 1;
          v32 = *--v29;
          v33 = *v27;
          v55 = v32;
          v34 = v50;
          DistanceReference.rawValue.getter();
          v54 = v33;
          v35 = v51;
          DistanceReference.rawValue.getter();
          sub_1B49A2254();
          v36 = v49;
          v37 = sub_1B4D180EC();
          v38 = *v44;
          (*v44)(v35, v36);
          v38(v34, v36);
          if (v37)
          {
            break;
          }

          v39 = v47;
          if (v31 < v30 || v47 >= v30)
          {
            *v47 = *v29;
          }

          v28 = v39 - 1;
          v16 = v29;
          a4 = v45;
          v27 = v46;
          if (v29 <= v45)
          {
            v16 = v29;
            a2 = v42;
            if (v42 == v45)
            {
              goto LABEL_48;
            }

            goto LABEL_49;
          }
        }

        v16 = v30;
        v40 = v46;
        a3 = v47;
        if (v31 < v42 || v47 >= v42)
        {
          *v47 = *v46;
        }

        a4 = v45;
        if (v30 > v45)
        {
          a2 = v40;
          if (v40 > v48)
          {
            continue;
          }
        }

        a2 = v40;
        if (v40 == v45)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }
    }

LABEL_47:
    if (a2 != a4)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (a4 != a1 || a4 >= a2)
  {
    memmove(a4, a1, a2 - a1);
  }

  v16 = &a4[v14];
  if (v14 < 1)
  {
    a2 = a1;
    goto LABEL_47;
  }

  if (a2 >= a3)
  {
    a2 = a1;
    if (a1 == a4)
    {
      goto LABEL_48;
    }

LABEL_49:
    memmove(a2, a4, v16 - a4);
    return 1;
  }

  v43 = v4;
  v46 = (v9 + 8);
  v47 = &a4[v14];
  do
  {
    v48 = a1;
    v17 = *a4;
    v53 = *a2;
    v18 = v50;
    DistanceReference.rawValue.getter();
    v52 = v17;
    v19 = v51;
    DistanceReference.rawValue.getter();
    sub_1B49A2254();
    v20 = v49;
    v21 = sub_1B4D180EC();
    v22 = a4;
    v23 = *v46;
    (*v46)(v19, v20);
    v23(v18, v20);
    if (v21)
    {
      v24 = a2 + 1;
      v25 = v48;
      v26 = a2;
      if (v48 < a2 || v48 >= v24)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = v48;
      v26 = a4;
      v24 = a2;
      if (v48 < a4)
      {
        ++a4;
LABEL_17:
        *v25 = *v26;
        goto LABEL_18;
      }

      ++a4;
      if (v48 >= (v22 + 1))
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    a1 = v25 + 1;
    v16 = v47;
    if (a4 >= v47)
    {
      break;
    }

    a2 = v24;
  }

  while (v24 < a3);
  a2 = a1;
  if (a1 != a4)
  {
    goto LABEL_49;
  }

LABEL_48:
  if (a2 >= v16)
  {
    goto LABEL_49;
  }

  return 1;
}

char *sub_1B4CAC70C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutState();
  v24 = v2;
  v25 = &protocol witness table for WorkoutState;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_1B4992854(a1, boxed_opaque_existential_1);
  v4 = __swift_project_boxed_opaque_existential_1(v23, v24);
  v5 = *(boxed_opaque_existential_1 + *(v2 + 24));
  v6 = objc_allocWithZone(MEMORY[0x1E699C9F8]);
  v7 = v5;
  v8 = FIActivityMoveModeUserDefault();
  v9 = FIDeviceSupportsElevationGain();
  result = [v6 initWithMetricsVersion:6 activityType:v7 activityMoveMode:v8 deviceSupportsElevationMetrics:v9 deviceSupportsGroundElevationMetrics:FIDeviceSupportsGroundElevation()];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = result;

  result = [v11 supportedMetricsWithIsMachineWorkout:*(boxed_opaque_existential_1 + *(v2 + 132)) activityType:*(v4 + *(v2 + 24))];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v12 = result;
  sub_1B498AFB8(0, &qword_1EDC36DB0, 0x1E696AD98);
  v13 = sub_1B4D183FC();

  if (v13 >> 62)
  {
    goto LABEL_19;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v11; v14; i = v11)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1B8C7CD90](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v20 = sub_1B4D1883C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1B4A1D47C(0, *(v16 + 2) + 1, 1, v16);
      }

      v11 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v11 >= v21 >> 1)
      {
        v16 = sub_1B4A1D47C((v21 > 1), v11 + 1, 1, v16);
      }

      *(v16 + 2) = v11 + 1;
      *&v16[8 * v11 + 32] = v20;
      ++v15;
      if (v19 == v14)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v14 = sub_1B4D18ABC();
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_21:

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v16;
}

uint64_t sub_1B4CAC990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v10 = type metadata accessor for WorkoutState();
  v4[17] = v10;
  v11 = *(v10 - 8);
  v4[18] = v11;
  v12 = *(v11 + 64) + 15;
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4CACB80, 0, 0);
}

uint64_t sub_1B4CACB80()
{
  v105 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_1B4974FBC(*(v0 + 24), v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 136);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);
    sub_1B49B46E0(*(v0 + 128), v8);
    sub_1B4974FBC(v8 + *(v9 + 60), v12, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v13 = *(v11 + 48);
    v14 = v13(v12, 1, v10);
    v15 = *(v0 + 152);
    if (v14 == 1)
    {
      v16 = *(v0 + 56);
      sub_1B49AA7C0(*(v0 + 152));
      v6 = &qword_1EB8A6CC0;
      v7 = &unk_1B4D1BC00;
      v5 = v16;
      goto LABEL_5;
    }

    v29 = *(*(v0 + 72) + 32);
    v29(*(v0 + 112), *(v0 + 56), *(v0 + 64));
    v30 = sub_1B4CAC70C(v15);
    v31 = *(v30 + 2);
    v32 = 32;
    while (v31)
    {
      v33 = *&v30[v32];
      v32 += 8;
      --v31;
      if (v33 == 1)
      {
        v94 = v29;
        v34 = *(v0 + 136);
        v35 = *(v0 + 120);
        v36 = *(v0 + 32);

        sub_1B4974FBC(v36, v35, &qword_1EB8A6A98, &unk_1B4D1CBE0);
        v37 = v4(v35, 1, v34);
        v38 = *(v0 + 120);
        if (v37 == 1)
        {
          v39 = *(v0 + 64);
          v40 = *(v0 + 72);
          v41 = *(v0 + 48);
          sub_1B4975024(v38, &qword_1EB8A6A98, &unk_1B4D1CBE0);
          (*(v40 + 56))(v41, 1, 1, v39);
        }

        else
        {
          v46 = *(v0 + 120);
          sub_1B4974FBC(v38 + *(v9 + 60), *(v0 + 48), &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B49AA7C0(v46);
        }

        v103 = *(*(v0 + 152) + *(*(v0 + 136) + 24));
        v47 = [*(v0 + 16) userDistanceHKUnitForActivityType_];
        sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
        v48 = [objc_opt_self() mileUnit];
        v49 = sub_1B4D187AC();

        v50 = objc_opt_self();
        v51 = &selRef_kilometers;
        if (v49)
        {
          v51 = &selRef_miles;
        }

        v52 = [v50 *v51];

        v97 = v52;
        LOBYTE(v47) = sub_1B4B65A78();
        if (v47)
        {
          if (qword_1EB8A6358 != -1)
          {
            goto LABEL_46;
          }

          goto LABEL_22;
        }

        if (qword_1EB8A6360 != -1)
        {
          swift_once();
        }

        v53 = &qword_1EB8F3B08;
LABEL_26:
        v54 = *v53;

        v55 = [v103 effectiveTypeIdentifier];
        if (!*(v54 + 16) || (v56 = sub_1B49EF0C0(v55), (v57 & 1) == 0))
        {
          v59 = *(v0 + 152);
          v60 = *(v0 + 112);
          v61 = *(v0 + 64);
          v62 = *(v0 + 72);
          v63 = *(v0 + 48);

          sub_1B4975024(v63, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          (*(v62 + 8))(v60, v61);
          sub_1B49AA7C0(v59);
          goto LABEL_6;
        }

        v91 = v47;
        v58 = *(*(v54 + 56) + 8 * v56);

        v104 = v58;

        sub_1B4CAB6D8(&v104);
        v92 = v13;

        v64 = v104;
        v96 = *(v104 + 2);
        if (v96)
        {
          v47 = 0;
          v100 = (*(v0 + 72) + 8);
          v95 = v104;
          do
          {
            if (v47 >= *(v64 + 2))
            {
              __break(1u);
LABEL_46:
              swift_once();
LABEL_22:
              v53 = &qword_1EB8F3B00;
              goto LABEL_26;
            }

            v13 = *(v0 + 104);
            v72 = *(v0 + 112);
            v73 = *(v0 + 64);
            v99 = v47[v64 + 32];
            LOBYTE(v104) = v99;
            DistanceReference.rawValue.getter();
            sub_1B49A2254();
            v74 = sub_1B4D1810C();
            v98 = *v100;
            (*v100)(v13, v73);
            if (v74)
            {
              v75 = *(v0 + 64);
              v76 = *(v0 + 40);
              sub_1B4974FBC(*(v0 + 48), v76, &qword_1EB8A6CC0, &unk_1B4D1BC00);
              if (v92(v76, 1, v75) == 1)
              {
                sub_1B4975024(*(v0 + 40), &qword_1EB8A6CC0, &unk_1B4D1BC00);
              }

              else
              {
                v13 = *(v0 + 96);
                v77 = *(v0 + 104);
                v78 = *(v0 + 64);
                v94(v13, *(v0 + 40), v78);
                LOBYTE(v104) = v99;
                DistanceReference.rawValue.getter();
                v79 = sub_1B4D180FC();
                v98(v77, v78);
                v98(v13, v78);
                if (v79)
                {
                  goto LABEL_35;
                }
              }

              v80 = [v103 effectiveTypeIdentifier];
              if (v80 != 71 && v80 != 37)
              {
                goto LABEL_43;
              }

              v13 = *(v0 + 104);
              v65 = *(v0 + 80);
              v66 = *(v0 + 88);
              v93 = *(v0 + 112);
              v67 = *(v0 + 64);
              v68 = objc_opt_self();
              v69 = &selRef_kilometers;
              if ((v91 & 1) == 0)
              {
                v69 = &selRef_miles;
              }

              v70 = [v68 *v69];
              sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
              sub_1B4D1741C();
              LOBYTE(v104) = v99;
              DistanceReference.rawValue.getter();
              sub_1B4D1744C();
              v98(v65, v67);
              v71 = sub_1B4D1811C();
              v98(v13, v67);
              v98(v66, v67);
              if (v71)
              {
LABEL_43:
                v81 = *(v0 + 152);
                v82 = *(v0 + 112);
                v83 = *(v0 + 64);
                v84 = *(v0 + 48);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADEC0, &qword_1B4D45BE8);
                v85 = swift_allocObject();
                *(v85 + 16) = xmmword_1B4D1A800;
                *(v85 + 32) = v103;
                v101 = v85;
                *(v85 + 40) = v99;
                v86 = v103;

                sub_1B4975024(v84, &qword_1EB8A6CC0, &unk_1B4D1BC00);
                v98(v82, v83);
                sub_1B49AA7C0(v81);
                goto LABEL_7;
              }
            }

LABEL_35:
            ++v47;
            v64 = v95;
          }

          while (v96 != v47);
        }

        v42 = *(v0 + 152);
        v87 = *(v0 + 112);
        v89 = *(v0 + 64);
        v88 = *(v0 + 72);
        v90 = *(v0 + 48);

        sub_1B4975024(v90, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        (*(v88 + 8))(v87, v89);
LABEL_16:
        sub_1B49AA7C0(v42);
        goto LABEL_6;
      }
    }

    v42 = *(v0 + 152);
    v43 = *(v0 + 112);
    v44 = *(v0 + 64);
    v45 = *(v0 + 72);

    (*(v45 + 8))(v43, v44);
    goto LABEL_16;
  }

  v5 = *(v0 + 128);
  v6 = &qword_1EB8A6A98;
  v7 = &unk_1B4D1CBE0;
LABEL_5:
  sub_1B4975024(v5, v6, v7);
LABEL_6:
  v101 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v17 = *(v0 + 152);
  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v21 = *(v0 + 104);
  v20 = *(v0 + 112);
  v23 = *(v0 + 88);
  v22 = *(v0 + 96);
  v24 = *(v0 + 80);
  v25 = *(v0 + 48);
  v26 = *(v0 + 56);
  v102 = *(v0 + 40);

  v27 = *(v0 + 8);

  return v27(v101);
}

unint64_t sub_1B4CAD4B8()
{
  result = qword_1EB8ADE98;
  if (!qword_1EB8ADE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE98);
  }

  return result;
}

unint64_t sub_1B4CAD538()
{
  result = qword_1EB8ADEA0;
  if (!qword_1EB8ADEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADEA0);
  }

  return result;
}

unint64_t sub_1B4CAD58C()
{
  result = qword_1EB8ADEA8;
  if (!qword_1EB8ADEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADEA8);
  }

  return result;
}

uint64_t sub_1B4CAD60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4CAD648()
{
  result = qword_1EB8ADEB0;
  if (!qword_1EB8ADEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADEB0);
  }

  return result;
}

unint64_t sub_1B4CAD69C()
{
  result = qword_1EB8ADEB8;
  if (!qword_1EB8ADEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADEB8);
  }

  return result;
}

unint64_t static WorkoutDetailFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4CADFA4(v3, v1, v2);
}

uint64_t static WorkoutDetailFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49C016C;

  return sub_1B4CAE2F0(a1, a3);
}

uint64_t WorkoutDetailFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4CAD884()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CAD908()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CAD964@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t WorkoutDetailFact.makePrompt(promptFormatter:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v47 - v6;
  v7 = sub_1B4D1777C();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for WorkoutDetailFact();
  v10 = *(v49 + 24);
  v11 = sub_1B4D11F8C();
  [v11 setDateStyle_];

  v12 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter;
  [*(a1 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter) setTimeStyle_];
  v47 = v12;
  v13 = *(a1 + v12);
  v14 = sub_1B4D1771C();
  v15 = [v13 stringFromDate_];

  v16 = sub_1B4D1818C();
  v18 = v17;

  v19 = [*v2 localizedName];
  v20 = sub_1B4D1818C();
  v22 = v21;

  if (*(v2 + 16))
  {
    v23 = *(v2 + 8);
    v54 = 544106784;
    v55 = 0xE400000000000000;
    MEMORY[0x1B8C7C620](v23);
    v25 = v54;
    v24 = v55;
  }

  else
  {
    v25 = 0;
    v24 = 0xE000000000000000;
  }

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1B4D1896C();

  v54 = v20;
  v55 = v22;
  MEMORY[0x1B8C7C620](0xD000000000000014, 0x80000001B4D66C70);
  MEMORY[0x1B8C7C620](v16, v18);

  MEMORY[0x1B8C7C620](v25, v24);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  v26 = v49;
  v27 = sub_1B4D1491C(v2 + *(v49 + 32));
  v29 = v50;
  v30 = v51;
  if (v28)
  {
    v31 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v31 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v53[0] = 0x2068746977;
      v53[1] = 0xE500000000000000;
      MEMORY[0x1B8C7C620]();

      MEMORY[0x1B8C7C620](v53[0], v53[1]);
    }
  }

  sub_1B4974FBC(v2 + *(v26 + 28), v29, &qword_1EB8A6790, &qword_1B4D1BBC0);
  v32 = v52;
  if ((*(v30 + 48))(v29, 1, v52) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A6790, &qword_1B4D1BBC0);
    return v54;
  }

  else
  {
    v34 = v48;
    (*(v30 + 32))(v48, v29, v32);
    v35 = v47;
    [*(a1 + v47) setDateStyle_];
    [*(a1 + v35) setTimeStyle_];
    v36 = *(a1 + v35);
    v37 = sub_1B4D1771C();
    v38 = [v36 stringFromDate_];

    v39 = sub_1B4D1818C();
    v41 = v40;

    v43 = v54;
    v42 = v55;
    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    sub_1B4D1896C();

    strcpy(v53, " and ended on ");
    HIBYTE(v53[1]) = -18;
    MEMORY[0x1B8C7C620](v39, v41);

    v44 = v53[0];
    v45 = v53[1];
    v53[0] = v43;
    v53[1] = v42;

    MEMORY[0x1B8C7C620](v44, v45);

    v33 = v53[0];
    (*(v30 + 8))(v34, v32);
  }

  return v33;
}

unint64_t sub_1B4CADEA0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4CADFA4(v3, v1, v2);
}

uint64_t sub_1B4CADEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49C0344;

  return sub_1B4CAE2F0(a1, a3);
}

unint64_t sub_1B4CADFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationCoordinate();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v15, a1, a2, v13);
  v16 = (*(a3 + 104))(a2, a3);
  if (v16)
  {
    v17 = v16;
    (*(a3 + 80))(a2, a3);
    [v17 coordinate];
    v19 = v18;
    [v17 coordinate];
    v21 = v20;
    [v17 altitude];
    v22 = [objc_opt_self() meters];
    v23 = v6[7];
    sub_1B499221C();
    sub_1B4D1741C();
    *&v9[v6[5]] = v19;
    *&v9[v6[6]] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6AA0, &qword_1B4D1B1D0);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A6AA8, &qword_1B4D1B1D8) - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1B4D1A800;
    sub_1B4B861F8(v9, v27 + v26);
    type metadata accessor for FitnessContextQueryDescriptor();
    swift_storeEnumTagMultiPayload();
    v28 = sub_1B4C948D4(v27);
    swift_setDeallocating();
    sub_1B4975024(v27 + v26, qword_1EB8A6AA8, &qword_1B4D1B1D8);
    swift_deallocClassInstance();

    sub_1B4CAEC88(v9, type metadata accessor for LocationCoordinate);
  }

  else
  {
    v28 = sub_1B4C948D4(MEMORY[0x1E69E7CC0]);
  }

  (*(v10 + 8))(v15, a2);
  return v28;
}

uint64_t sub_1B4CAE2F0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = sub_1B4D1777C();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADEF0, &qword_1B4D45D80) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for WorkoutState();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4CAE4CC, 0, 0);
}

uint64_t sub_1B4CAE4CC()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  sub_1B4974FBC(v0[4], v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4975024(v0[12], &qword_1EB8A6A98, &unk_1B4D1CBE0);
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v5 = v0[11];
  v6 = v0[10];
  v7 = v0[3];
  sub_1B49B46E0(v0[12], v0[15]);
  v8 = type metadata accessor for LocationContext();
  v9 = v7[3];
  v10 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v9);
  v0[2] = &type metadata for WorkoutDetailFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADEF8, &qword_1B4D45D88);
  v63 = sub_1B4D181CC();
  v64 = v11;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0x6E6F697461636F6CLL, 0xEF747865746E6F43);
  (*(v10 + 8))(v63, v64, v8, v8, v9, v10);

  sub_1B4974FBC(v5, v6, &qword_1EB8ADEF0, &qword_1B4D45D80);
  v12 = *(*(v8 - 8) + 48);
  v13 = v12(v6, 1, v8);
  v14 = v0[10];
  if (v13 == 1)
  {
    sub_1B4975024(v0[10], &qword_1EB8ADEF0, &qword_1B4D45D80);
LABEL_7:
    v18 = v0[9];
    sub_1B4974FBC(v0[11], v18, &qword_1EB8ADEF0, &qword_1B4D45D80);
    v19 = v12(v18, 1, v8);
    v20 = v0[9];
    if (v19 == 1)
    {
      sub_1B4975024(v20, &qword_1EB8ADEF0, &qword_1B4D45D80);
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v23 = (v20 + *(v8 + 20));
      v21 = *v23;
      v22 = v23[1];
      v24 = v0[9];

      sub_1B4CAEC88(v24, type metadata accessor for LocationContext);
    }

    v61 = v22;
    v62 = v21;

    goto LABEL_11;
  }

  v15 = (v14 + *(v8 + 24));
  v16 = *v15;
  v17 = v15[1];

  sub_1B4CAEC88(v14, type metadata accessor for LocationContext);
  if (!v17)
  {
    goto LABEL_7;
  }

  v61 = v17;
  v62 = v16;
LABEL_11:
  v25 = v0[15];
  v26 = v0[13];
  v27 = v0[6];
  v28 = v0[7];
  v29 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADF00, &unk_1B4D45D90);
  v30 = type metadata accessor for WorkoutDetailFact();
  v31 = *(*(v30 - 1) + 72);
  v32 = (*(*(v30 - 1) + 80) + 32) & ~*(*(v30 - 1) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B4D1A800;
  v34 = (v33 + v32);
  v35 = *(v25 + *(v26 + 24));
  sub_1B4974FBC(v25 + *(v26 + 40), v29, &qword_1EB8A6790, &qword_1B4D1BBC0);
  v36 = *(v28 + 48);
  v59 = v35;
  v60 = v33;
  if (v36(v29, 1, v27) == 1)
  {
    v38 = v0[5];
    v37 = v0[6];
    (*(v0[7] + 16))(v0[8], v0[15] + *(v0[13] + 36), v37);
    LODWORD(v37) = v36(v38, 1, v37);
    v39 = v35;
    if (v37 != 1)
    {
      sub_1B4975024(v0[5], &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    v40 = v35;
  }

  v41 = v0[15];
  v42 = v0[13];
  v43 = v0[11];
  v45 = v0[7];
  v44 = v0[8];
  v46 = v0[6];
  sub_1B4974FBC(v41 + *(v42 + 44), &v34[v30[7]], &qword_1EB8A6790, &qword_1B4D1BBC0);
  v47 = *(v42 + 28);
  v48 = v30[8];
  v49 = sub_1B4D179EC();
  (*(*(v49 - 8) + 16))(&v34[v48], v41 + v47, v49);
  *v34 = v59;
  *(v34 + 1) = v62;
  *(v34 + 2) = v61;
  (*(v45 + 32))(&v34[v30[6]], v44, v46);
  sub_1B4975024(v43, &qword_1EB8ADEF0, &qword_1B4D45D80);
  sub_1B4CAEC88(v41, type metadata accessor for WorkoutState);
  v4 = v60;
LABEL_16:
  v50 = v0[15];
  v52 = v0[11];
  v51 = v0[12];
  v54 = v0[9];
  v53 = v0[10];
  v55 = v0[8];
  v56 = v0[5];

  v57 = v0[1];

  return v57(v4);
}

unint64_t sub_1B4CAEAA0()
{
  result = qword_1EB8ADEC8;
  if (!qword_1EB8ADEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADEC8);
  }

  return result;
}

unint64_t sub_1B4CAEAF4(uint64_t a1)
{
  *(a1 + 8) = sub_1B4CAEB24();
  result = sub_1B4CAEB78();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4CAEB24()
{
  result = qword_1EB8ADED0;
  if (!qword_1EB8ADED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADED0);
  }

  return result;
}

unint64_t sub_1B4CAEB78()
{
  result = qword_1EB8ADED8;
  if (!qword_1EB8ADED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADED8);
  }

  return result;
}

uint64_t sub_1B4CAEBCC(uint64_t a1)
{
  *(a1 + 8) = sub_1B4CAEC34(&qword_1EB8ADEE0);
  result = sub_1B4CAEC34(&qword_1EB8ADEE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4CAEC34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutDetailFact();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4CAEC88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StreakPropertyValue.Streak.init(value:pausedDays:startCacheIndex:expectedNextStartCacheIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v7 = *a3;
  v8 = *a4;
  v9 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = CacheIndex.add(days:)(result, &v14);
  if (v5)
  {
    return result;
  }

  v13 = v14;
  if (v14 < v7)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *a5 = a1;
  a5[1] = a2;
  a5[2] = v7;
  a5[3] = v13;
  a5[4] = v8;
  return result;
}

__n128 StreakPropertyValue.init(cacheIndex:bestStreak:currentStreak:initialStreak:currentPauseIntervals:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a2 + 16);
  *(a6 + 8) = *a2;
  *(a6 + 24) = v6;
  v7 = *(a3 + 16);
  *(a6 + 48) = *a3;
  *(a6 + 64) = v7;
  result = *a4;
  v9 = *(a4 + 16);
  *(a6 + 88) = *a4;
  v10 = *(a2 + 32);
  v11 = *(a3 + 32);
  v12 = *(a4 + 32);
  *a6 = *a1;
  *(a6 + 40) = v10;
  *(a6 + 80) = v11;
  *(a6 + 104) = v9;
  *(a6 + 120) = v12;
  *(a6 + 128) = a5;
  return result;
}

uint64_t StreakPropertyValue.Streak.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1B8C7D290](*v0);
  MEMORY[0x1B8C7D290](v1);
  MEMORY[0x1B8C7D2C0](v2);
  MEMORY[0x1B8C7D2C0](v3);
  return MEMORY[0x1B8C7D2C0](v4);
}

uint64_t StreakPropertyValue.Streak.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  MEMORY[0x1B8C7D290](v2);
  MEMORY[0x1B8C7D2C0](v3);
  MEMORY[0x1B8C7D2C0](v4);
  MEMORY[0x1B8C7D2C0](v5);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CAEED0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  MEMORY[0x1B8C7D290](v2);
  MEMORY[0x1B8C7D2C0](v3);
  MEMORY[0x1B8C7D2C0](v4);
  MEMORY[0x1B8C7D2C0](v5);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CAEF60()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1B8C7D290](*v0);
  MEMORY[0x1B8C7D290](v1);
  MEMORY[0x1B8C7D2C0](v2);
  MEMORY[0x1B8C7D2C0](v3);
  return MEMORY[0x1B8C7D2C0](v4);
}

uint64_t sub_1B4CAEFC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  MEMORY[0x1B8C7D290](v2);
  MEMORY[0x1B8C7D2C0](v3);
  MEMORY[0x1B8C7D2C0](v4);
  MEMORY[0x1B8C7D2C0](v5);
  return sub_1B4D18EDC();
}

__n128 StreakPropertyValue.bestStreak.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 StreakPropertyValue.currentStreak.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 StreakPropertyValue.initialStreak.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  result = *(v1 + 88);
  v4 = *(v1 + 104);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t StreakPropertyValue.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v14 = v0[9];
  v15 = v0[10];
  v16 = v0[11];
  v17 = v0[12];
  v18 = v0[13];
  v19 = v0[14];
  v20 = v0[15];
  v9 = v0[16];
  MEMORY[0x1B8C7D2C0](*v0);
  MEMORY[0x1B8C7D290](v1);
  MEMORY[0x1B8C7D290](v2);
  MEMORY[0x1B8C7D2C0](v3);
  MEMORY[0x1B8C7D2C0](v5);
  MEMORY[0x1B8C7D2C0](v4);
  MEMORY[0x1B8C7D290](v6);
  MEMORY[0x1B8C7D290](v7);
  MEMORY[0x1B8C7D2C0](v8);
  MEMORY[0x1B8C7D2C0](v14);
  MEMORY[0x1B8C7D2C0](v15);
  MEMORY[0x1B8C7D290](v16);
  MEMORY[0x1B8C7D290](v17);
  MEMORY[0x1B8C7D2C0](v18);
  MEMORY[0x1B8C7D2C0](v19);
  MEMORY[0x1B8C7D2C0](v20);
  result = MEMORY[0x1B8C7D290](*(v9 + 16));
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = (v9 + 40);
    do
    {
      v13 = *v12;
      MEMORY[0x1B8C7D2C0](*(v12 - 1));
      result = MEMORY[0x1B8C7D2C0](v13);
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t StreakPropertyValue.hashValue.getter()
{
  sub_1B4D18E8C();
  StreakPropertyValue.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CAF264()
{
  sub_1B4D18E8C();
  StreakPropertyValue.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CAF2A8()
{
  sub_1B4D18E8C();
  StreakPropertyValue.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t static StreakPropertyValue.add(_:_:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v5 = a1 + 1;
  v6 = v7;
  v10 = *a2;
  v8 = a2 + 1;
  v9 = v10;
  v11 = v6 < v10;
  if (v6 >= v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v5;
  }

  v13 = v12[5];
  *&v58[72] = v12[4];
  if (v11)
  {
    v14 = v6;
  }

  else
  {
    v14 = v9;
  }

  *&v58[88] = v13;
  v15 = v12[7];
  *&v58[104] = v12[6];
  *&v58[120] = v15;
  v16 = v12[1];
  *&v58[8] = *v12;
  *&v58[24] = v16;
  v17 = v12[3];
  *&v58[40] = v12[2];
  *&v58[56] = v17;
  *v58 = v14;
  if (v9 >= v6)
  {
    v18 = v8;
  }

  else
  {
    v18 = v5;
  }

  if (v9 > v6)
  {
    v6 = v9;
  }

  v19 = v18[5];
  *&v57[72] = v18[4];
  *&v57[88] = v19;
  v20 = v18[7];
  *&v57[104] = v18[6];
  *&v57[120] = v20;
  v21 = v18[1];
  *&v57[8] = *v18;
  *&v57[24] = v21;
  v22 = v18[3];
  *&v57[40] = v18[2];
  *&v57[56] = v22;
  *v57 = v6;
  v52 = *&v58[96];
  v53 = *&v58[112];
  v54 = *&v58[128];
  v48 = *&v58[32];
  v49 = *&v58[48];
  v50 = *&v58[64];
  v51 = *&v58[80];
  v46 = *v58;
  v47 = *&v58[16];
  v43 = *&v57[96];
  v44 = *&v57[112];
  v45 = *&v57[128];
  v39 = *&v57[32];
  v40 = *&v57[48];
  v41 = *&v57[64];
  v42 = *&v57[80];
  v37 = *v57;
  v38 = *&v57[16];
  sub_1B4BA6D90(v58, &v34);
  sub_1B4BA6D90(v57, &v34);
  sub_1B4CAF5FC(&v46, &v37, v55);
  if (v3)
  {
    sub_1B4BA87C4(v57);
    return sub_1B4BA87C4(v58);
  }

  else
  {
    v32 = v55[1];
    v33 = v55[0];
    v23 = v56;
    v52 = *&v58[96];
    v53 = *&v58[112];
    v54 = *&v58[128];
    v48 = *&v58[32];
    v49 = *&v58[48];
    v50 = *&v58[64];
    v51 = *&v58[80];
    v46 = *v58;
    v47 = *&v58[16];
    v43 = *&v57[96];
    v44 = *&v57[112];
    v45 = *&v57[128];
    v39 = *&v57[32];
    v40 = *&v57[48];
    v41 = *&v57[64];
    v42 = *&v57[80];
    v37 = *v57;
    v38 = *&v57[16];
    sub_1B4CAF6F0(&v46, &v37, &v34);
    v30 = v35;
    v31 = v34;
    v24 = v36;
    v52 = *&v58[96];
    v53 = *&v58[112];
    v54 = *&v58[128];
    v48 = *&v58[32];
    v49 = *&v58[48];
    v50 = *&v58[64];
    v51 = *&v58[80];
    v46 = *v58;
    v47 = *&v58[16];
    v43 = *&v57[96];
    v44 = *&v57[112];
    v45 = *&v57[128];
    v39 = *&v57[32];
    v40 = *&v57[48];
    v41 = *&v57[64];
    v42 = *&v57[80];
    v37 = *v57;
    v38 = *&v57[16];
    v25 = sub_1B4CB181C(&v46, &v37);
    v52 = *&v58[96];
    v53 = *&v58[112];
    v54 = *&v58[128];
    v48 = *&v58[32];
    v49 = *&v58[48];
    v50 = *&v58[64];
    v51 = *&v58[80];
    v46 = *v58;
    v47 = *&v58[16];
    v43 = *&v57[96];
    v44 = *&v57[112];
    v45 = *&v57[128];
    v39 = *&v57[32];
    v40 = *&v57[48];
    v41 = *&v57[64];
    v42 = *&v57[80];
    v37 = *v57;
    v38 = *&v57[16];
    sub_1B4CAF820(&v46, &v37, &v34);
    sub_1B4BA87C4(v58);
    result = sub_1B4BA87C4(v57);
    v27 = v36;
    v28 = v34;
    v29 = v35;
    *a3 = *v57;
    *(a3 + 24) = v32;
    *(a3 + 8) = v33;
    *(a3 + 40) = v23;
    *(a3 + 48) = v31;
    *(a3 + 64) = v30;
    *(a3 + 80) = v24;
    *(a3 + 88) = v28;
    *(a3 + 104) = v29;
    *(a3 + 120) = v27;
    *(a3 + 128) = v25;
  }

  return result;
}

void *sub_1B4CAF5FC@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = result[1];
  v6 = a2[1];
  if (result[9] != a2[13])
  {
    goto LABEL_7;
  }

  v7 = a2[11];
  v8 = result[6];
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v9 >= v5 && v9 >= v6)
  {
    v10 = result[7];
    v11 = a2[12];
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v13 = result[8];
    v14 = a2[15];
  }

  else
  {
LABEL_7:
    if (v5 >= v6)
    {
      v12 = result[2];
    }

    else
    {
      v12 = a2[2];
    }

    if (v5 <= v6)
    {
      v9 = a2[1];
    }

    else
    {
      v9 = result[1];
    }

    if (v5 >= v6)
    {
      v14 = result[5];
    }

    else
    {
      v14 = a2[5];
    }

    if (v5 >= v6)
    {
      v13 = result[3];
    }

    else
    {
      v13 = a2[3];
    }
  }

  result = (v9 + v12);
  if (__OFADD__(v9, v12))
  {
    __break(1u);
    goto LABEL_25;
  }

  result = CacheIndex.add(days:)(result, &v16);
  if (v3)
  {
    return result;
  }

  v15 = v16;
  if (v16 < v13)
  {
    goto LABEL_26;
  }

  *a3 = v9;
  a3[1] = v12;
  a3[2] = v13;
  a3[3] = v15;
  a3[4] = v14;
  return result;
}

char *sub_1B4CAF6F0@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(result + 6);
  v6 = *(result + 7);
  v7 = *(result + 8);
  v8 = *(result + 10);
  v9 = *a2;
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v13 = a2[10];
  v14 = a2[16];
  if (v14[2] && ((v15 = v14[4], v16 = v14[5], v8 >= v15) ? (v17 = v8 < v16) : (v17 = 0), v17))
  {
    if ((v9 >= v16 || v9 < v15) && v16 != v9 && v8 < v12)
    {
      goto LABEL_23;
    }
  }

  else if (v8 < v12)
  {
    goto LABEL_23;
  }

  v21 = __OFADD__(v5, v10);
  v10 += v5;
  if (v21)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25 = *(result + 10);
  v23 = v9;
  result = CacheIndex.add(days:)(1, &v24);
  if (v3)
  {
    return result;
  }

  v23 = v24;
  result = sub_1B4CB1080(v14, &v25, &v23);
  v11 = &result[v6];
  if (__OFADD__(v6, result))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v12 = v7;
LABEL_23:
  v24 = v12;
  result = &v11[v10];
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_29;
  }

  result = CacheIndex.add(days:)(result, &v25);
  if (v3)
  {
    return result;
  }

  v22 = v25;
  if (v25 < v12)
  {
    goto LABEL_30;
  }

  *a3 = v10;
  a3[1] = v11;
  a3[2] = v12;
  a3[3] = v22;
  a3[4] = v13;
  return result;
}

void *sub_1B4CAF820@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = result[11];
  v5 = result[12];
  v7 = result[13];
  v8 = result[15];
  if (result[14] == a2[13])
  {
    v9 = a2[11];
    v10 = __OFADD__(v6, v9);
    v6 += v9;
    if (v10)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v11 = a2[12];
    v10 = __OFADD__(v5, v11);
    v5 += v11;
    if (v10)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }
  }

  v13 = result[13];
  result = (v6 + v5);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = CacheIndex.add(days:)(result, &v14);
  if (v3)
  {
    return result;
  }

  v12 = v14;
  if (v14 < v7)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *a3 = v6;
  a3[1] = v5;
  a3[2] = v7;
  a3[3] = v12;
  a3[4] = v8;
  return result;
}

char *sub_1B4CAF8CC(char *a1)
{
  v3 = a1;

  sub_1B4CAFCA8(&v3);
  if (!v1)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4CAF914@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a3;
  v6 = sub_1B4D1777C();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v30 - v11;
  v12 = sub_1B4D1796C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[1];
  v31 = *a1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_1EDC3CE48);
  (*(v13 + 16))(v16, v18, v12);
  v37 = v17;
  CacheIndex.add(days:)(-1, &v38);
  if (v3)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v20 = *a2;
  v36 = *a2;
  v37 = v38;
  v21 = Calendar.isSameMonth(_:_:)(&v37, &v36);
  result = (*(v13 + 8))(v16, v12);
  if (v21)
  {
    v38 = v20;
    CacheIndex.date(for:)(v9);
    Date.beginningOfMonth()(v34);
    v23 = v33;
    v24 = *(v32 + 8);
    v24(v9, v33);
    v25 = sub_1B4D1771C();
    v26 = sub_1B4D178CC();
    v27 = _HKCacheIndexFromDate();

    result = (v24)(v34, v23);
    v28 = v31;
    if (v27 > v31)
    {
      v28 = v27;
    }

    if (v17 < v28)
    {
      __break(1u);
    }

    else
    {
      v29 = v35;
      *v35 = v28;
      v29[1] = v17;
      *(v29 + 16) = 0;
    }
  }

  else
  {
    v22 = v35;
    *v35 = 0;
    v22[1] = 0;
    *(v22 + 16) = 1;
  }

  return result;
}

uint64_t sub_1B4CAFCA8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE194(v2);
  }

  v3 = *(v2 + 2);
  v41[0] = (v2 + 32);
  v41[1] = v3;
  result = sub_1B4D18D4C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 168;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 136;
          if (*v12 >= *(v12 - 17))
          {
            break;
          }

          v32 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 4);
          v35 = *(v12 + 3);
          v36 = v16;
          v33 = v14;
          v34 = v15;
          v17 = *(v12 + 5);
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v40 = *(v12 + 16);
          v38 = v18;
          v39 = v19;
          v37 = v17;
          v20 = *(v12 - 88);
          *(v12 + 2) = *(v12 - 104);
          *(v12 + 3) = v20;
          *(v12 + 16) = *(v12 - 1);
          v21 = *(v12 - 24);
          *(v12 + 6) = *(v12 - 40);
          *(v12 + 7) = v21;
          v22 = *(v12 - 56);
          *(v12 + 4) = *(v12 - 72);
          *(v12 + 5) = v22;
          v23 = *(v12 - 120);
          *v12 = *v13;
          *(v12 + 1) = v23;
          *v13 = v32;
          v24 = v33;
          v25 = v34;
          v26 = v36;
          *(v12 - 88) = v35;
          *(v12 - 72) = v26;
          *(v12 - 120) = v24;
          *(v12 - 104) = v25;
          v27 = v37;
          v28 = v38;
          v29 = v39;
          *(v12 - 1) = v40;
          *(v12 - 40) = v28;
          *(v12 - 24) = v29;
          *(v12 - 56) = v27;
          v12 -= 136;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 136;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4D1844C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v32 = v7 + 32;
    *(&v32 + 1) = v6;
    sub_1B4CAFFBC(&v32, v31, v41, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B4CAFE68(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE5D8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B4D18D4C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EC0, &qword_1B4D45F60);
      v7 = sub_1B4D1844C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1B4CB0610(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B4CAFFBC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B4CDDE84(v7);
      v7 = result;
    }

    v82 = (v7 + 16);
    v83 = *(v7 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v7 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1B4CB0B88((*a3 + 136 * *v84), (*a3 + 136 * *v86), (*a3 + 136 * v87), v91);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 136 * v6);
      v10 = 136 * v8;
      v11 = (*a3 + 136 * v8);
      v12 = *v11;
      v13 = v8 + 2;
      v14 = v11 + 34;
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 17;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 136 * v6 - 136;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v104 = *(v22 + v10 + 96);
            v106 = *(v22 + v10 + 112);
            v108 = *(v22 + v10 + 128);
            v96 = *(v22 + v10 + 32);
            v98 = *(v22 + v10 + 48);
            v100 = *(v22 + v10 + 64);
            v102 = *(v22 + v10 + 80);
            v92 = *(v22 + v10);
            v94 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x88uLL);
            *(v21 + 96) = v104;
            *(v21 + 112) = v106;
            *(v21 + 128) = v108;
            *(v21 + 32) = v96;
            *(v21 + 48) = v98;
            *(v21 + 64) = v100;
            *(v21 + 80) = v102;
            *v21 = v92;
            *(v21 + 16) = v94;
          }

          ++v20;
          v18 -= 136;
          v10 += 136;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v35 = *(v7 + 16);
    v34 = *(v7 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_1B4A1D58C((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v36;
    v37 = v7 + 32;
    v38 = (v7 + 32 + 16 * v35);
    *v38 = v8;
    v38[1] = v6;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 32);
          v41 = *(v7 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v7 + 16 * v36);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v37 + 16 * v39);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v7 + 16 * v36);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v37 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v37 + 16 * (v39 - 1));
        v78 = *v77;
        v79 = (v37 + 16 * v39);
        v80 = v79[1];
        sub_1B4CB0B88((*a3 + 136 * *v77), (*a3 + 136 * *v79), (*a3 + 136 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v39 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v7 + 16);
        if (v39 >= v81)
        {
          goto LABEL_101;
        }

        v36 = v81 - 1;
        result = memmove((v37 + 16 * v39), v79 + 2, 16 * (v81 - 1 - v39));
        *(v7 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v37 + 16 * v36;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v7 + 16 * v36);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v37 + 16 * v39);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 136 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    v28 = (v27 - 136);
    if (*v27 >= *(v27 - 136))
    {
LABEL_29:
      ++v6;
      v24 += 136;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v105 = *(v27 + 96);
    v107 = *(v27 + 112);
    v109 = *(v27 + 128);
    v97 = *(v27 + 32);
    v99 = *(v27 + 48);
    v101 = *(v27 + 64);
    v103 = *(v27 + 80);
    v93 = *v27;
    v95 = *(v27 + 16);
    v29 = *(v27 - 56);
    *(v27 + 64) = *(v27 - 72);
    *(v27 + 80) = v29;
    v30 = *(v27 - 24);
    *(v27 + 96) = *(v27 - 40);
    *(v27 + 112) = v30;
    *(v27 + 128) = *(v27 - 8);
    v31 = *(v27 - 88);
    *(v27 + 32) = *(v27 - 104);
    *(v27 + 48) = v31;
    v32 = *(v27 - 120);
    *v27 = *v28;
    *(v27 + 16) = v32;
    *(v27 - 72) = v101;
    *(v27 - 56) = v103;
    *(v27 - 40) = v105;
    *(v27 - 24) = v107;
    *(v27 - 8) = v109;
    *(v27 - 104) = v97;
    *(v27 - 88) = v99;
    v27 -= 136;
    *v28 = v93;
    v28[1] = v95;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B4CB0610(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B4CDDE84(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_1B4CB0DC0((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_1B4A1D58C((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_1B4CB0DC0((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B4CB0B88(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 136;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 136;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[136 * v9] <= a4)
    {
      memmove(a4, __dst, 136 * v9);
    }

    v12 = &v4[136 * v9];
    if (v8 < 136)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 136;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 136;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 136;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x88uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[136 * v11] <= a4)
  {
    memmove(a4, __src, 136 * v11);
  }

  v12 = &v4[136 * v11];
  if (v10 >= 136 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 136;
    v5 -= 136;
    v16 = v12;
    do
    {
      v17 = v5 + 136;
      v18 = *(v16 - 17);
      v16 -= 136;
      if (v18 < *v15)
      {
        if (v17 != v6)
        {
          memmove(v5, v6 - 136, 0x88uLL);
        }

        if (v12 <= v4 || (v6 -= 136, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        memmove(v5, v16, 0x88uLL);
      }

      v5 -= 136;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v19 = (v12 - v4) / 136;
  if (v6 != v4 || v6 >= &v4[136 * v19])
  {
    memmove(v6, v4, 136 * v19);
  }

  return 1;
}

uint64_t sub_1B4CB0DC0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t _s19FitnessIntelligence19StreakPropertyValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_s64(*(a1 + 32), *(a2 + 32)), vceqq_s64(*(a1 + 48), *(a2 + 48)))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(*(a1 + 64), *(a2 + 64)), vceqq_s64(*(a1 + 80), *(a2 + 80))), vuzp1q_s32(vceqq_s64(*(a1 + 96), *(a2 + 96)), vceqq_s64(*(a1 + 112), *(a2 + 112)))))))
  {
    return sub_1B4A0C0E0(*(a1 + 128), *(a2 + 128));
  }

  else
  {
    return 0;
  }
}

char *sub_1B4CB1080(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t *a3)
{
  v83 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v74 = sub_1B4D175FC();
  v11 = *(v74 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v59 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v59 - v22;
  v23 = sub_1B4D1777C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v81 = &v59 - v29;
  v30 = *(a1 + 16);
  if (!v30)
  {
    return 0;
  }

  v31 = *v83;
  v67 = *a3;
  v68 = v31;
  if (qword_1EDC3CE40 != -1)
  {
LABEL_22:
    swift_once();
  }

  v83 = (v11 + 8);
  v79 = (v24 + 48);
  v80 = (v11 + 32);
  v78 = (v24 + 32);
  v62 = *MEMORY[0x1E6969A48];
  v65 = (v24 + 8);
  v66 = sub_1B4D1796C();
  v32 = 0;
  v33 = (a1 + 40);
  v61 = xmmword_1B4D1A800;
  v11 = v74;
  v60 = v10;
  v63 = v14;
  v64 = v23;
  while (1)
  {
    if (!v30)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v77 = v33;
    v34 = *v33;
    *(v33 - 1);
    __swift_project_value_buffer(v66, qword_1EDC3CE48);
    v35 = _HKActivityCacheDateComponentsFromCacheIndex();
    if (!v35)
    {
      goto LABEL_15;
    }

    v36 = v35;
    v75 = v30;
    v76 = v32;
    v37 = v73;
    sub_1B4D1756C();

    v38 = *v80;
    v39 = v72;
    (*v80)(v72, v37, v11);
    sub_1B4D178FC();
    v82 = *v83;
    v82(v39, v11);
    v32 = *v79;
    if ((*v79)(v10, 1, v23) == 1)
    {
      sub_1B497A590(v10);
LABEL_15:
      sub_1B4BD9F8C();
      swift_allocError();
      swift_willThrow();
      return v32;
    }

    v40 = v23;
    v41 = v10;
    v42 = *v78;
    (*v78)(v81, v41, v23);
    v43 = _HKActivityCacheDateComponentsFromCacheIndex();
    if (!v43)
    {
      goto LABEL_17;
    }

    v44 = v43;
    v45 = v27;
    v46 = v70;
    sub_1B4D1756C();

    v47 = v69;
    v38(v69, v46, v11);
    v48 = v71;
    sub_1B4D178FC();
    v49 = v47;
    v40 = v64;
    v82(v49, v11);
    if ((v32)(v48, 1, v40) == 1)
    {
      sub_1B497A590(v48);
LABEL_17:
      sub_1B4BD9F8C();
      swift_allocError();
      swift_willThrow();
      (*v65)(v81, v40);
      return v32;
    }

    v27 = v45;
    v42(v45, v48, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
    v50 = sub_1B4D1794C();
    v51 = *(v50 - 8);
    v52 = *(v51 + 72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v61;
    (*(v51 + 104))(v54 + v53, v62, v50);
    v32 = sub_1B49B56B4(v54);
    swift_setDeallocating();
    (*(v51 + 8))(v54 + v53, v50);
    swift_deallocClassInstance();
    v14 = v63;
    v10 = v81;
    sub_1B4D1787C();

    v55 = sub_1B4D1757C();
    v24 = v40;
    if (v56)
    {
      break;
    }

    a1 = v55;
    v11 = v74;
    v82(v14, v74);
    v23 = v65;
    v30 = *v65;
    (*v65)(v27, v24);
    v30(v10, v24);
    v32 = &v76[a1];
    if (__OFADD__(v76, a1))
    {
      goto LABEL_21;
    }

    v23 = v24;
    v33 = v77 + 2;
    v30 = (v75 - 1);
    v10 = v60;
    if (v75 == 1)
    {
      return v32;
    }
  }

  sub_1B4BD9F8C();
  swift_allocError();
  swift_willThrow();
  v82(v14, v74);
  v57 = *v65;
  (*v65)(v45, v24);
  v57(v10, v24);
  return v32;
}

uint64_t sub_1B4CB181C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v41 = *(a1 + 96);
  v42 = v3;
  v43 = *(a1 + 128);
  v4 = *(a1 + 48);
  v39[2] = *(a1 + 32);
  v39[3] = v4;
  v5 = *(a1 + 80);
  v39[4] = *(a1 + 64);
  v40 = v5;
  v6 = *(a1 + 16);
  v39[0] = *a1;
  v39[1] = v6;
  v7 = *(a2 + 48);
  v33[2] = *(a2 + 32);
  v33[3] = v7;
  v8 = *(a2 + 128);
  v38 = v8;
  v9 = *(a2 + 112);
  v36 = *(a2 + 96);
  v37 = v9;
  v10 = *(a2 + 80);
  v34 = *(a2 + 64);
  v35 = v10;
  v11 = *(a2 + 16);
  v33[0] = *a2;
  v33[1] = v11;
  v12 = v8;
  v13 = v8[2];
  if (v13)
  {
    v14 = v8[4];
    if (v40 >= v14)
    {
      v15 = v12[5];
      if (v40 < v15)
      {
        v16 = *&v33[0] >= v15 || *&v33[0] < v14;
        if (!v16 || v15 == *&v33[0])
        {
          v20 = v43;
          v21 = *(v43 + 16);
          if (!v21)
          {
            goto LABEL_21;
          }

          v22 = (v43 + 16 + 16 * v21);
LABEL_20:
          if (v22[1] >= v14)
          {
            v23 = *v22;
            if (v15 < *v22)
            {
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CA0, &qword_1B4D20158);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1B4D1A800;
            *(inited + 32) = v23;
            *(inited + 40) = v15;
            sub_1B4BA6D90(v39, &v31);
            *&v31 = sub_1B4A1E31C(0, v21, 0, MEMORY[0x1E69E7CC0]);
            v25 = swift_unknownObjectRetain();
            sub_1B4997CFC(v25, v20 + 32, 0, 2 * v21 - 1);
            sub_1B4997C10(inited);
            swift_unknownObjectRelease();
            if (v12[2] < v13)
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            *&v30 = v31;
            sub_1B4BA6D90(v33, &v31);
            sub_1B4997CFC(v12, (v12 + 4), 1, (2 * v13) | 1);
            goto LABEL_25;
          }

LABEL_21:
          *&v30 = v20;
          sub_1B4BA6D90(v33, &v31);
          sub_1B4BA6D90(v39, &v31);
          sub_1B4997C10(v12);
LABEL_25:
          v12 = v30;
          v17 = *(v30 + 16);
          if (!v17)
          {
            goto LABEL_12;
          }

          goto LABEL_26;
        }
      }
    }
  }

  if (v40 >= v34)
  {
    v20 = v43;
    v21 = *(v43 + 16);
    if (!v21 || !v13)
    {
      goto LABEL_21;
    }

    v22 = (v43 + 16 + 16 * v21);
    v14 = v12[4];
    v15 = v12[5];
    goto LABEL_20;
  }

  sub_1B4BA6D90(v33, &v31);
  v17 = v12[2];
  if (v17)
  {
LABEL_26:
    v26 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (v26 < v12[2])
    {
      v30 = *&v12[2 * v26 + 4];
      sub_1B4CAF914(&v30, v33, &v31);
      if (v2)
      {
      }

      if ((v32 & 1) == 0)
      {
        v29 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B4A1E31C(0, *(v18 + 2) + 1, 1, v18);
        }

        v28 = *(v18 + 2);
        v27 = *(v18 + 3);
        if (v28 >= v27 >> 1)
        {
          v18 = sub_1B4A1E31C((v27 > 1), v28 + 1, 1, v18);
        }

        *(v18 + 2) = v28 + 1;
        *&v18[16 * v28 + 32] = v29;
      }

      if (v17 == ++v26)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_12:
  v18 = MEMORY[0x1E69E7CC0];
LABEL_13:

  *&v31 = v18;

  sub_1B4CAFE68(&v31);
  if (!v2)
  {

    return v31;
  }

LABEL_40:

  __break(1u);
  return result;
}

unint64_t sub_1B4CB1BAC()
{
  result = qword_1EB8ADF08;
  if (!qword_1EB8ADF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADF08);
  }

  return result;
}

unint64_t sub_1B4CB1C04()
{
  result = qword_1EDC39568;
  if (!qword_1EDC39568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39568);
  }

  return result;
}

unint64_t sub_1B4CB1C58(uint64_t a1)
{
  *(a1 + 8) = sub_1B4CA351C();
  result = sub_1B4CB1C88();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4CB1C88()
{
  result = qword_1EDC39570;
  if (!qword_1EDC39570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39570);
  }

  return result;
}

uint64_t WorkoutVoiceMilestoneWorkoutDurationFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutVoiceMilestoneWorkoutDurationFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000062;
  v2 = 0xD00000000000008DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000075;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000007ALL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1B4CB1DFC()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CB1EB4()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4CB1F58()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CB200C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WorkoutVoiceMilestoneWorkoutDurationFact.TemplateString.init(rawValue:)(a1);
}

void sub_1B4CB2018(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000062;
  v3 = " only one workout.";
  v4 = 0xD00000000000008DLL;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000075;
    v3 = " of <workout_count> workouts.";
  }

  if (*v1)
  {
    v5 = "tion> in only one workout.";
  }

  else
  {
    v2 = 0xD00000000000007ALL;
    v5 = "userWorkoutPreferences";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

id WorkoutVoiceMilestoneWorkoutDurationFact.placeholders()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B4D1B2D0;
  v8 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
  v9 = v8[5];
  v10 = [objc_opt_self() minutes];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v12 = v11;
  v13 = v11;
  result = (*(v3 + 8))(v6, v2);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v33 = v12;
  v15 = sub_1B4D18D5C();
  v17 = v16;
  *(v7 + 32) = 0xD000000000000014;
  *(v7 + 40) = 0x80000001B4D66C90;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  *(v7 + 48) = sub_1B4993DFC;
  *(v7 + 56) = v18;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  v19 = *(v1 + v8[6]);
  v20 = *&aThisDaythisWee_3[8 * v19];
  v21 = qword_1B4D460B0[v19];
  *(v7 + 80) = 0xD000000000000015;
  *(v7 + 88) = 0x80000001B4D4EFE0;
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  *(v7 + 96) = sub_1B4994004;
  *(v7 + 104) = v22;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  [*(v1 + v8[7]) effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v23 = result;
    v24 = sub_1B4D1818C();
    v26 = v25;

    strcpy((v7 + 128), "activity_type");
    *(v7 + 142) = -4864;
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = v26;
    *(v7 + 144) = sub_1B4994004;
    *(v7 + 152) = v27;
    *(v7 + 160) = 0;
    *(v7 + 168) = 0;
    v33 = *(v1 + v8[8]);
    v28 = sub_1B4D18D5C();
    v30 = v29;
    strcpy((v7 + 176), "workout_count");
    *(v7 + 190) = -4864;
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = v30;
    *(v7 + 192) = sub_1B4994004;
    *(v7 + 200) = v31;
    *(v7 + 208) = 0;
    *(v7 + 216) = 0;
    return v7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t WorkoutVoiceMilestoneWorkoutDurationFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
  v4 = *(v1 + *(v3 + 24));
  if (*(v1 + *(v3 + 32)) < 2)
  {
    if (*(v1 + *(v3 + 24)) >= 4u)
    {

      v8 = 1;
    }

    else
    {
      v6 = sub_1B4D18DCC();

      v8 = v6 & 1;
    }
  }

  else if (*(v1 + *(v3 + 24)) >= 4u)
  {

    v8 = 3;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }
  }

  *a1 = v8;
  return result;
}

unint64_t sub_1B4CB25EC()
{
  result = qword_1EB8ADF10;
  if (!qword_1EB8ADF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADF10);
  }

  return result;
}

unint64_t sub_1B4CB2644()
{
  result = qword_1EB8ADF18;
  if (!qword_1EB8ADF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ADF20, &qword_1B4D46008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADF18);
  }

  return result;
}

unint64_t sub_1B4CB26AC()
{
  result = qword_1EB8ADF28;
  if (!qword_1EB8ADF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADF28);
  }

  return result;
}

unint64_t sub_1B4CB2704()
{
  result = qword_1EB8ADF30;
  if (!qword_1EB8ADF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADF30);
  }

  return result;
}

unint64_t sub_1B4CB2758(uint64_t a1)
{
  result = sub_1B4CB2780();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4CB2780()
{
  result = qword_1EB8ADF38[0];
  if (!qword_1EB8ADF38[0])
  {
    type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB8ADF38);
  }

  return result;
}

uint64_t static WorkoutBestPropertyGenerator.from(_:for:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v80 = a4;
  v7 = sub_1B4D177CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BestWorkoutMeasurementEntry();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v64 - v12;
  v13 = sub_1B4D1746C();
  v14 = sub_1B4D1880C();
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = *(v65 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v74 = &v64 - v17;
  v76 = v13;
  v75 = *(v13 - 8);
  v18 = *(v75 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v67 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v64 - v21;
  v22 = sub_1B4D1777C();
  v78 = *(v22 - 8);
  v79 = v22;
  v23 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6820, &qword_1B4D2CA00);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = (&v64 - v28);
  v30 = type metadata accessor for LocalizedDate();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v64 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v73 = &v64 - v35;
  v36 = *a2;
  v38 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v39 = (*(v37 + 56))(v38, v37);
  v40 = [v39 effectiveTypeIdentifier];

  v83[0] = v36;
  v77 = a3;
  result = sub_1B4CB2E84(v40, v83);
  v42 = v80;
  if (result)
  {
    v43 = a1[3];
    v44 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v43);
    (*(v44 + 80))(v43, v44);
    static LocalizedDate.from(_:)(v25, v29);
    (*(v78 + 8))(v25, v79);
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {
      result = sub_1B4975024(v29, &qword_1EB8A6820, &qword_1B4D2CA00);
    }

    else
    {
      v45 = v73;
      sub_1B4AF497C(v29, v73);
      v82 = v36;
      v46 = v74;
      sub_1B4CB2F28(a1, &v82, v74);
      v48 = v75;
      v47 = v76;
      if ((*(v75 + 48))(v46, 1, v76) != 1)
      {
        v49 = v68;
        (*(v48 + 32))(v68, v46, v47);
        v50 = a1[3];
        v51 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v50);
        v52 = v69;
        (*(v51 + 24))(v50, v51);
        v53 = v64;
        sub_1B4AE7BD8(v45, v64);
        v54 = v67;
        (*(v48 + 16))(v67, v49, v47);
        v55 = v45;
        v56 = v70;
        sub_1B4C75BE4(v52, v53, v54, v70);
        v57 = v72;
        sub_1B4D18D6C();
        v58 = v71;
        v59 = *(v71 + 72);
        v60 = *(v71 + 80);
        swift_allocObject();
        v61 = sub_1B4D1841C();
        (*(v58 + 32))(v62, v56, v57);
        v63 = sub_1B49BA6A8(v61);
        (*(v48 + 8))(v49, v47);
        sub_1B4AF49E0(v55);
        swift_getWitnessTable();
        result = WorkoutBestMetricPropertyValue.init(topEntries:)(v63, &v81);
        *v80 = v81;
        return result;
      }

      sub_1B4AF49E0(v45);
      result = (*(v65 + 8))(v46, v66);
    }

    v42 = v80;
  }

  *v42 = 0;
  return result;
}

uint64_t sub_1B4CB2E84(unint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((v2 - 10) < 3)
  {
    v4 = vdupq_n_s64(a1);
    return vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_1F2CBA8E8, v4), vceqq_s64(unk_1F2CBA8F8, v4)))) & 1 | (qword_1F2CBA908 == a1) | (unk_1F2CBA910 == a1);
  }

  else if ((v2 - 14) >= 2)
  {
    return v2 == 13 && (qword_1F2CBA938 == a1 || unk_1F2CBA940 == a1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B4CB2F28@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v57 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v57 - v26;
  v28 = *a2;
  if (v28 > 0xC)
  {
    switch(v28)
    {
      case 0xDu:
        v41 = a1[3];
        v42 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v41);
        WorkoutRepresentable.depth()(v41, v42, v22);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
        if ((*(*(v43 - 8) + 48))(v22, 1, v43) == 1)
        {
          v32 = &qword_1EB8A6CC0;
          v33 = &unk_1B4D1BC00;
          v34 = v22;
          goto LABEL_23;
        }

        break;
      case 0xEu:
        v50 = a1[3];
        v51 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v50);
        WorkoutRepresentable.calories()(v50, v51, v13);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
        if ((*(*(v52 - 8) + 48))(v13, 1, v52) == 1)
        {
          v32 = &qword_1EB8A6CA8;
          v33 = &unk_1B4D1C2B0;
          v34 = v13;
          goto LABEL_23;
        }

        break;
      case 0xFu:
        v35 = a1[3];
        v36 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v35);
        WorkoutRepresentable.duration()(v35, v36, v9);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        if ((*(*(v37 - 8) + 48))(v9, 1, v37) == 1)
        {
          v32 = &qword_1EB8A6C90;
          v33 = &unk_1B4D1BBD0;
          v34 = v9;
          goto LABEL_23;
        }

        break;
      default:
        goto LABEL_16;
    }

LABEL_24:
    v54 = sub_1B4D1746C();
    if (swift_dynamicCast())
    {
      v55 = a3;
      v56 = 0;
    }

    else
    {
      v55 = a3;
      v56 = 1;
    }

    return (*(*(v54 - 8) + 56))(v55, v56, 1, v54);
  }

  switch(v28)
  {
    case 0xAu:
      v38 = a1[3];
      v39 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v38);
      WorkoutRepresentable.distance()(v38, v39, v27);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      if ((*(*(v40 - 8) + 48))(v27, 1, v40) == 1)
      {
        v32 = &qword_1EB8A6CC0;
        v33 = &unk_1B4D1BC00;
        v34 = v27;
        goto LABEL_23;
      }

      goto LABEL_24;
    case 0xBu:
      v47 = a1[3];
      v48 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v47);
      WorkoutRepresentable.pace()(v47, v48, v17);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
      if ((*(*(v49 - 8) + 48))(v17, 1, v49) == 1)
      {
        v32 = &qword_1EB8A6CB0;
        v33 = &unk_1B4D1BBF0;
        v34 = v17;
        goto LABEL_23;
      }

      goto LABEL_24;
    case 0xCu:
      v29 = a1[3];
      v30 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v29);
      WorkoutRepresentable.elevationGain()(v29, v30, v25);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      if ((*(*(v31 - 8) + 48))(v25, 1, v31) == 1)
      {
        v32 = &qword_1EB8A6CC0;
        v33 = &unk_1B4D1BC00;
        v34 = v25;
LABEL_23:
        sub_1B4975024(v34, v32, v33);
        v53 = sub_1B4D1746C();
        return (*(*(v53 - 8) + 56))(a3, 1, 1, v53);
      }

      goto LABEL_24;
  }

LABEL_16:
  v44 = sub_1B4D1746C();
  v45 = *(*(v44 - 8) + 56);

  return v45(a3, 1, 1, v44);
}

uint64_t sub_1B4CB3634(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceCancellationResult(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t RingsProperties.resolve<A>(_:filter:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v57 = a4;
  v58 = a2;
  v53 = sub_1B4D1880C();
  v52 = *(v53 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v51 - v9;
  v10 = *(v4 + 16);
  v11 = *(v10 + 16);
  v59 = a3;
  if (v11)
  {
    v12 = 0;
    v14 = *a1;
    v13 = a1[1];
    v61 = a1[2];
    v62 = v13;
    v15 = v10 + 32;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v58;
    v60 = v14;
    while (v12 < *(v10 + 16))
    {
      sub_1B4B6F2FC(v15, &v67);
      v18 = sub_1B4CB41FC(&v67, v14, v62, v61, v17, a3);
      if (v5)
      {
        goto LABEL_29;
      }

      if (v18)
      {
        v63 = v67;
        v64 = v68[0];
        v65 = v68[1];
        v66 = v69;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCEB88(0, *(v16 + 16) + 1, 1);
          v17 = v58;
          v16 = v70;
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B4BCEB88((v20 > 1), v21 + 1, 1);
          v17 = v58;
          v16 = v70;
        }

        *(v16 + 16) = v21 + 1;
        v22 = (v16 + (v21 << 6));
        v23 = v63;
        v24 = v64;
        v25 = v66;
        v22[4] = v65;
        v22[5] = v25;
        v22[2] = v23;
        v22[3] = v24;
        a3 = v59;
        v14 = v60;
      }

      else
      {
        sub_1B4B6F358(&v67);
      }

      ++v12;
      v15 += 64;
      if (v11 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    sub_1B4B6F358(&v67);

    __break(1u);
    goto LABEL_30;
  }

  v16 = MEMORY[0x1E69E7CC0];
  v17 = v58;
LABEL_14:
  *&v67 = v16;

  sub_1B4CB6A90(&v67);
  v12 = v5;
  if (v5)
  {
LABEL_30:

    __break(1u);
    return result;
  }

  v26 = v67;
  v27 = *(v67 + 16);
  if (v27)
  {
    v55 = 0;
    v70 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF0BC(0, v27, 0);
    v28 = v70;
    v54 = v26;
    v29 = v26 + 32;
    do
    {
      v62 = v27;
      sub_1B4B6F2FC(v29, &v67);
      v30 = v69;
      v31 = __swift_project_boxed_opaque_existential_1(v68 + 1, v69);
      v32 = *(*(&v30 + 1) + 8);
      v60 = *(v32 + 64);
      v61 = v31;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      *(&v64 + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      *&v65 = AssociatedConformanceWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v63);
      v60(v30, v32);
      v36 = sub_1B4B6F358(&v67);
      v70 = v28;
      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1B4BCF0BC((v37 > 1), v38 + 1, 1);
      }

      v39 = *(*(AssociatedTypeWitness - 8) + 64);
      v40 = MEMORY[0x1EEE9AC00](v36);
      v42 = &v51 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42, boxed_opaque_existential_1, AssociatedTypeWitness, v40);
      sub_1B4CB7620(v38, v42, &v70, AssociatedTypeWitness, AssociatedConformanceWitness);
      __swift_destroy_boxed_opaque_existential_1Tm(&v63);
      v28 = v70;
      v29 += 64;
      v27 = v62 - 1;
    }

    while (v62 != 1);

    v17 = v58;
    a3 = v59;
    v12 = v55;
  }

  else
  {
  }

  v44 = *(a3 + 8);
  v45 = v56;
  static SnapshotProperty.reduce(_:)(v17, v44, v56);

  v47 = v57;
  if (!v12)
  {
    v48 = *(v17 - 8);
    if ((*(v48 + 48))(v45, 1, v17) == 1)
    {
      (*(v52 + 8))(v45, v53);
      v49 = 1;
    }

    else
    {
      (*(v44 + 64))(v17, v44);
      (*(v48 + 8))(v45, v17);
      v49 = 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v50 = swift_getAssociatedTypeWitness();
    return (*(*(v50 - 8) + 56))(v47, v49, 1, v50);
  }

  return result;
}

void *sub_1B4CB3E98(void *(*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v22 = *v5;
    result = a1(&v23, &v22);
    if (v3)
    {

      return v6;
    }

    v8 = v23;
    v9 = *(v23 + 16);
    v10 = v6[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v11 <= v6[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      v6 = sub_1B4A1D9FC(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      if (*(v8 + 16))
      {
LABEL_15:
        v14 = (v6[3] >> 1) - v6[2];
        result = type metadata accessor for FitnessContextQueryRequest();
        v15 = *(result - 1);
        if (v14 < v9)
        {
          goto LABEL_24;
        }

        v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v17 = *(v15 + 72);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v18 = v6[2];
          v19 = __OFADD__(v18, v9);
          v20 = v18 + v9;
          if (v19)
          {
            goto LABEL_25;
          }

          v6[2] = v20;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v5;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

char *sub_1B4CB404C(void *(*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = *v5;
    result = a1(&v18, &v17);
    if (v3)
    {

      return v6;
    }

    v8 = v18;
    v9 = *(v18 + 16);
    v10 = *(v6 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v6 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_1B4A1DC00(result, v12, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v9)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v6 + 2);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          *(v6 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v5;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *RingsProperties.init(startCacheIndex:endCacheIndex:records:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a3;
  return result;
}

uint64_t sub_1B4CB41FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    goto LABEL_68;
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 17);
  v11 = *(a1 + 18);
  if (v9 != 12)
  {
    if (*(a2 + 16))
    {
      v12 = a3;
      v13 = a4;
      v14 = sub_1B4978C4C(v9, a2);
      a4 = v13;
      a3 = v12;
      if (!v14)
      {
LABEL_73:
        v30 = 0;
        return v30 & 1;
      }
    }
  }

  v45 = v11;
  v42 = a4;
  v43 = a6;
  v44 = a5;
  if (v10 == 7)
  {
    goto LABEL_62;
  }

  v15 = *(a3 + 16);
  if (!v15)
  {
    goto LABEL_62;
  }

  v16 = (a3 + 32);
  while (1)
  {
    if (!v15)
    {
      v30 = 0;
      return v30 & 1;
    }

    v19 = *v16;
    if (v19 <= 2)
    {
      v23 = 0x616473656E646577;
      if (v19 == 1)
      {
        v23 = 0x79616473657574;
      }

      v24 = 0xE900000000000079;
      if (v19 == 1)
      {
        v24 = 0xE700000000000000;
      }

      if (*v16)
      {
        v20 = v23;
      }

      else
      {
        v20 = 0x7961646E6F6DLL;
      }

      if (*v16)
      {
        v21 = v24;
      }

      else
      {
        v21 = 0xE600000000000000;
      }

      if (v10 > 2)
      {
LABEL_41:
        v25 = 0x7961646E7573;
        if (v10 == 5)
        {
          v25 = 0x7961647275746173;
          v26 = 0xE800000000000000;
        }

        else
        {
          v26 = 0xE600000000000000;
        }

        v27 = 0x7961647372756874;
        if (v10 == 3)
        {
          v28 = 0xE800000000000000;
        }

        else
        {
          v27 = 0x796164697266;
          v28 = 0xE600000000000000;
        }

        if (v10 <= 4)
        {
          v29 = v27;
        }

        else
        {
          v29 = v25;
        }

        if (v10 <= 4)
        {
          v17 = v28;
        }

        else
        {
          v17 = v26;
        }

        if (v20 != v29)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if (*v16 > 4u)
    {
      if (v19 == 5)
      {
        v21 = 0xE800000000000000;
        v20 = 0x7961647275746173;
        if (v10 > 2)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v20 = 0x7961646E7573;
        v21 = 0xE600000000000000;
        if (v10 > 2)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (v19 == 3)
      {
        v20 = 0x7961647372756874;
      }

      else
      {
        v20 = 0x796164697266;
      }

      if (v19 == 3)
      {
        v21 = 0xE800000000000000;
      }

      else
      {
        v21 = 0xE600000000000000;
      }

      if (v10 > 2)
      {
        goto LABEL_41;
      }
    }

    if (v10)
    {
      break;
    }

    v17 = 0xE600000000000000;
    if (v20 == 0x7961646E6F6DLL)
    {
      goto LABEL_9;
    }

LABEL_10:
    v18 = sub_1B4D18DCC();

    ++v16;
    --v15;
    if (v18)
    {
      goto LABEL_62;
    }
  }

  if (v10 == 1)
  {
    v22 = 0x79616473657574;
  }

  else
  {
    v22 = 0x616473656E646577;
  }

  if (v10 == 1)
  {
    v17 = 0xE700000000000000;
  }

  else
  {
    v17 = 0xE900000000000079;
  }

  if (v20 != v22)
  {
    goto LABEL_10;
  }

LABEL_9:
  if (v21 != v17)
  {
    goto LABEL_10;
  }

LABEL_62:
  a5 = v44;
  a6 = v43;
  if (v45 != 2)
  {
    v31 = *(v42 + 16);
    if (v31)
    {
      v32 = (v42 + 32);
      while (1)
      {
        v34 = *v32++;
        v33 = v34;
        if (v34 != 2 && ((v33 ^ v45) & 1) == 0)
        {
          break;
        }

        if (!--v31)
        {
          goto LABEL_73;
        }
      }
    }
  }

LABEL_68:
  v36 = *(a1 + 48);
  v35 = *(a1 + 56);
  __swift_project_boxed_opaque_existential_1((a1 + 24), v36);
  sub_1B4B70700(v36, *(v35 + 8));
  (*(*(a6 + 8) + 56))(&v46, a5);
  v37 = RingsPropertyKind.rawValue.getter();
  v39 = v38;
  if (v37 == RingsPropertyKind.rawValue.getter() && v39 == v40)
  {
    v30 = 1;
  }

  else
  {
    v30 = sub_1B4D18DCC();
  }

  return v30 & 1;
}

uint64_t RingsProperties.resolve(kind:filter:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2[1];
  v137 = *a2;
  v129 = v6;
  v128 = a2[2];
  v7 = *(v3 + 16);
  v8 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
  v9 = *(v8 + 16);
  if (!v9)
  {

LABEL_70:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v104 = a3;
  v10 = 0;
  v11 = 0xD000000000000011;
  v125 = 0x80000001B4D48A80;
  v124 = 0x80000001B4D48A60;
  v123 = 0x80000001B4D48A40;
  v122 = 0x80000001B4D48A20;
  v121 = 0x80000001B4D48A00;
  v120 = 0x80000001B4D489E0;
  v119 = 0x80000001B4D489B0;
  v118 = 0x80000001B4D48990;
  v117 = 0x80000001B4D48970;
  v116 = 0x80000001B4D48950;
  v115 = 0x80000001B4D48930;
  v114 = 0x80000001B4D48910;
  v113 = 0x80000001B4D488F0;
  v112 = 0x80000001B4D488D0;
  v111 = 0x80000001B4D488B0;
  v110 = 0x80000001B4D48880;
  v109 = 0x80000001B4D48860;
  v108 = 0x80000001B4D48840;
  v107 = 0x80000001B4D48820;
  v106 = 0x80000001B4D48800;
  while (2)
  {
    if (v10 >= *(v8 + 16))
    {
      goto LABEL_226;
    }

    v12 = *(v8 + 16 * v10 + 32);
    v13 = *(v8 + 16 * v10++ + 40);
    v14 = *(v13 + 8);
    v15 = *(v14 + 56);
    v131 = v12;
    v133 = v12;
    v132 = v14;
    v15(&v148);
    v16 = 0xEA00000000006B61;
    v17 = 0x6572745365766F6DLL;
    switch(v148)
    {
      case 1:
        v17 = 0x6573696372657865;
        v16 = 0xEE006B6165727453;
        break;
      case 2:
        v17 = 0x727453646E617473;
        v16 = 0xEB000000006B6165;
        break;
      case 3:
        v17 = 0xD000000000000013;
        v18 = &v136;
        goto LABEL_30;
      case 4:
        v17 = 0xD000000000000012;
        v18 = &v137;
        goto LABEL_30;
      case 5:
        v17 = 0xD000000000000018;
        v18 = &v138;
        goto LABEL_30;
      case 6:
        v17 = 0xD000000000000016;
        v18 = &v139;
        goto LABEL_30;
      case 7:
        v17 = 0xD000000000000013;
        v18 = &v140;
        goto LABEL_30;
      case 8:
        v17 = 0x6174537370657473;
        v16 = 0xEF73636974736974;
        break;
      case 9:
        v17 = 0xD000000000000011;
        v18 = &v141;
        goto LABEL_30;
      case 10:
        v17 = 0xD000000000000012;
        v18 = &v142;
        goto LABEL_30;
      case 11:
        v17 = 0xD000000000000015;
        v18 = &v143;
        goto LABEL_30;
      case 12:
        v17 = 0xD000000000000019;
        v18 = &v143 + 1;
        goto LABEL_30;
      case 13:
        v17 = 0xD000000000000016;
        v18 = &v144;
        goto LABEL_30;
      case 14:
        v17 = 0xD00000000000001ELL;
        v18 = &v144 + 1;
        goto LABEL_30;
      case 15:
        v17 = 0xD000000000000011;
        v18 = &v145;
        goto LABEL_30;
      case 16:
        v17 = 0xD000000000000014;
        v18 = &v145 + 1;
        goto LABEL_30;
      case 17:
        v17 = 0xD000000000000011;
        v18 = &v146;
        goto LABEL_30;
      case 18:
        v17 = 0x616F47646E617473;
        v16 = 0xEE0061746C65446CLL;
        break;
      case 19:
        v17 = 0xD000000000000011;
        v18 = &v146 + 1;
        goto LABEL_30;
      case 20:
        v17 = 0xD000000000000015;
        v18 = &v147;
        goto LABEL_30;
      case 21:
        v17 = 0xD000000000000012;
        v18 = &v148;
        goto LABEL_30;
      case 22:
        v17 = 0xD000000000000016;
        v18 = &v148 + 1;
        goto LABEL_30;
      case 23:
        v17 = 0xD000000000000015;
        v18 = v149;
        goto LABEL_30;
      case 24:
        v17 = 0xD000000000000014;
        v18 = &v149[8];
LABEL_30:
        v16 = *(v18 - 32);
        break;
      case 25:
        v16 = 0xEA0000000000746ELL;
        v17 = 0x756F436C61746F74;
        break;
      default:
        break;
    }

    v19 = 0x6572745365766F6DLL;
    v20 = 0xEA00000000006B61;
    switch(v5)
    {
      case 1:
        v21 = 0x6573696372657865;
        v22 = 0x6B6165727453;
        goto LABEL_54;
      case 2:
        v20 = 0xEB000000006B6165;
        if (v17 != 0x727453646E617473)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 3:
        v23 = 0xD000000000000013;
        v24 = &v136;
        goto LABEL_64;
      case 4:
        v23 = 0xD000000000000012;
        v24 = &v137;
        goto LABEL_64;
      case 5:
        v23 = 0xD000000000000018;
        v24 = &v138;
        goto LABEL_64;
      case 6:
        v23 = 0xD000000000000016;
        v24 = &v139;
        goto LABEL_64;
      case 7:
        v23 = 0xD000000000000013;
        v24 = &v140;
        goto LABEL_64;
      case 8:
        v20 = 0xEF73636974736974;
        if (v17 != 0x6174537370657473)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 9:
        v23 = 0xD000000000000011;
        v24 = &v141;
        goto LABEL_64;
      case 10:
        v23 = 0xD000000000000012;
        v24 = &v142;
        goto LABEL_64;
      case 11:
        v23 = 0xD000000000000015;
        v24 = &v143;
        goto LABEL_64;
      case 12:
        v23 = 0xD000000000000019;
        v24 = &v143 + 1;
        goto LABEL_64;
      case 13:
        v23 = 0xD000000000000016;
        v24 = &v144;
        goto LABEL_64;
      case 14:
        v23 = 0xD00000000000001ELL;
        v24 = &v144 + 1;
        goto LABEL_64;
      case 15:
        v23 = 0xD000000000000011;
        v24 = &v145;
        goto LABEL_64;
      case 16:
        v23 = 0xD000000000000014;
        v24 = &v145 + 1;
        goto LABEL_64;
      case 17:
        v23 = 0xD000000000000011;
        v24 = &v146;
        goto LABEL_64;
      case 18:
        v21 = 0x616F47646E617473;
        v22 = 0x61746C65446CLL;
LABEL_54:
        v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v17 != v21)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 19:
        v19 = 0xD000000000000011;
        v20 = v120;
        goto LABEL_61;
      case 20:
        v23 = 0xD000000000000015;
        v24 = &v147;
        goto LABEL_64;
      case 21:
        v23 = 0xD000000000000012;
        v24 = &v148;
        goto LABEL_64;
      case 22:
        v23 = 0xD000000000000016;
        v24 = &v148 + 1;
        goto LABEL_64;
      case 23:
        v23 = 0xD000000000000015;
        v24 = v149;
        goto LABEL_64;
      case 24:
        v23 = 0xD000000000000014;
        v24 = &v149[8];
LABEL_64:
        v20 = *(v24 - 32);
        if (v17 == v23)
        {
          goto LABEL_65;
        }

        goto LABEL_66;
      case 25:
        v20 = 0xEA0000000000746ELL;
        if (v17 != 0x756F436C61746F74)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      default:
LABEL_61:
        if (v17 != v19)
        {
          goto LABEL_66;
        }

LABEL_65:
        if (v16 != v20)
        {
LABEL_66:
          v25 = sub_1B4D18DCC();

          if (v25)
          {
            goto LABEL_72;
          }

          if (v9 == v10)
          {

            a3 = v104;
            goto LABEL_70;
          }

          continue;
        }

LABEL_72:

        v27 = MEMORY[0x1E69E7CC0];
        v136 = v7[2];
        if (v136)
        {
          v130 = v5;
          v28 = 0;
          v134 = (v7 + 4);
          v126 = (v129 + 32);
          v105 = (v128 + 32);
          v135 = v7;
          while (1)
          {
            if (v28 >= v7[2])
            {
              __break(1u);
LABEL_226:
              __break(1u);
LABEL_227:

              __break(1u);
              return result;
            }

            sub_1B4B6F2FC(v134 + (v28 << 6), &v148);
            if (!v137)
            {
              goto LABEL_143;
            }

            v29 = v149[1];
            v11 = v149[2];
            if (v149[0] == 12 || !*(v137 + 16) || sub_1B4978C4C(v149[0], v137))
            {
              break;
            }

LABEL_74:
            sub_1B4B6F358(&v148);
            v7 = v135;
LABEL_75:
            if (++v28 == v136)
            {
              goto LABEL_212;
            }
          }

          if (v29 != 7)
          {
            v30 = *(v129 + 16);
            if (v30)
            {
              v31 = v126;
              do
              {
                if (!v30)
                {
                  goto LABEL_74;
                }

                v34 = *v31;
                if (v34 <= 2)
                {
                  v38 = 0x616473656E646577;
                  if (v34 == 1)
                  {
                    v38 = 0x79616473657574;
                  }

                  v39 = 0xE900000000000079;
                  if (v34 == 1)
                  {
                    v39 = 0xE700000000000000;
                  }

                  if (*v31)
                  {
                    v35 = v38;
                  }

                  else
                  {
                    v35 = 0x7961646E6F6DLL;
                  }

                  if (*v31)
                  {
                    v36 = v39;
                  }

                  else
                  {
                    v36 = 0xE600000000000000;
                  }

                  if (v29 > 2)
                  {
LABEL_117:
                    v40 = 0x7961646E7573;
                    if (v29 == 5)
                    {
                      v40 = 0x7961647275746173;
                      v41 = 0xE800000000000000;
                    }

                    else
                    {
                      v41 = 0xE600000000000000;
                    }

                    v42 = 0x7961647372756874;
                    if (v29 == 3)
                    {
                      v43 = 0xE800000000000000;
                    }

                    else
                    {
                      v42 = 0x796164697266;
                      v43 = 0xE600000000000000;
                    }

                    if (v29 <= 4)
                    {
                      v44 = v42;
                    }

                    else
                    {
                      v44 = v40;
                    }

                    if (v29 <= 4)
                    {
                      v32 = v43;
                    }

                    else
                    {
                      v32 = v41;
                    }

                    if (v35 != v44)
                    {
                      goto LABEL_86;
                    }

                    goto LABEL_85;
                  }
                }

                else if (*v31 > 4u)
                {
                  if (v34 == 5)
                  {
                    v36 = 0xE800000000000000;
                    v35 = 0x7961647275746173;
                    if (v29 > 2)
                    {
                      goto LABEL_117;
                    }
                  }

                  else
                  {
                    v35 = 0x7961646E7573;
                    v36 = 0xE600000000000000;
                    if (v29 > 2)
                    {
                      goto LABEL_117;
                    }
                  }
                }

                else
                {
                  if (v34 == 3)
                  {
                    v35 = 0x7961647372756874;
                  }

                  else
                  {
                    v35 = 0x796164697266;
                  }

                  if (v34 == 3)
                  {
                    v36 = 0xE800000000000000;
                  }

                  else
                  {
                    v36 = 0xE600000000000000;
                  }

                  if (v29 > 2)
                  {
                    goto LABEL_117;
                  }
                }

                if (v29)
                {
                  if (v29 == 1)
                  {
                    v37 = 0x79616473657574;
                  }

                  else
                  {
                    v37 = 0x616473656E646577;
                  }

                  if (v29 == 1)
                  {
                    v32 = 0xE700000000000000;
                  }

                  else
                  {
                    v32 = 0xE900000000000079;
                  }

                  if (v35 != v37)
                  {
                    goto LABEL_86;
                  }
                }

                else
                {
                  v32 = 0xE600000000000000;
                  if (v35 != 0x7961646E6F6DLL)
                  {
                    goto LABEL_86;
                  }
                }

LABEL_85:
                if (v36 == v32)
                {

                  break;
                }

LABEL_86:
                v33 = sub_1B4D18DCC();

                ++v31;
                --v30;
              }

              while ((v33 & 1) == 0);
            }
          }

          if (v11 != 2)
          {
            v45 = *(v128 + 16);
            if (v45)
            {
              v46 = v105;
              while (1)
              {
                v48 = *v46++;
                v47 = v48;
                if (v48 != 2 && ((v47 ^ v11) & 1) == 0)
                {
                  break;
                }

                if (!--v45)
                {
                  goto LABEL_74;
                }
              }
            }
          }

LABEL_143:
          v49 = v150;
          __swift_project_boxed_opaque_existential_1(&v149[8], v150);
          sub_1B4B70700(v49, *(*(&v49 + 1) + 8));
          v50 = 0xEA00000000006B61;
          v51 = 0x6572745365766F6DLL;
          v52 = 0x6572745365766F6DLL;
          switch(v143)
          {
            case 1:
              v52 = 0x6573696372657865;
              v50 = 0xEE006B6165727453;
              break;
            case 2:
              v52 = 0x727453646E617473;
              v50 = 0xEB000000006B6165;
              break;
            case 3:
              v52 = 0xD000000000000013;
              v53 = &v136;
              goto LABEL_169;
            case 4:
              v52 = 0xD000000000000012;
              v53 = &v137;
              goto LABEL_169;
            case 5:
              v52 = 0xD000000000000018;
              v53 = &v138;
              goto LABEL_169;
            case 6:
              v52 = 0xD000000000000016;
              v53 = &v139;
              goto LABEL_169;
            case 7:
              v52 = 0xD000000000000013;
              v53 = &v140;
              goto LABEL_169;
            case 8:
              v52 = 0x6174537370657473;
              v50 = 0xEF73636974736974;
              break;
            case 9:
              v52 = 0xD000000000000011;
              v53 = &v141;
              goto LABEL_169;
            case 10:
              v52 = 0xD000000000000012;
              v53 = &v142;
              goto LABEL_169;
            case 11:
              v52 = 0xD000000000000015;
              v53 = &v143;
              goto LABEL_169;
            case 12:
              v52 = 0xD000000000000019;
              v53 = &v143 + 1;
              goto LABEL_169;
            case 13:
              v52 = 0xD000000000000016;
              v53 = &v144;
              goto LABEL_169;
            case 14:
              v52 = 0xD00000000000001ELL;
              v53 = &v144 + 1;
              goto LABEL_169;
            case 15:
              v52 = 0xD000000000000011;
              v53 = &v145;
              goto LABEL_169;
            case 16:
              v52 = 0xD000000000000014;
              v53 = &v145 + 1;
              goto LABEL_169;
            case 17:
              v52 = 0xD000000000000011;
              v53 = &v146;
              goto LABEL_169;
            case 18:
              v52 = 0x616F47646E617473;
              v50 = 0xEE0061746C65446CLL;
              break;
            case 19:
              v52 = 0xD000000000000011;
              v53 = &v146 + 1;
              goto LABEL_169;
            case 20:
              v52 = 0xD000000000000015;
              v53 = &v147;
              goto LABEL_169;
            case 21:
              v52 = 0xD000000000000012;
              v53 = &v148;
              goto LABEL_169;
            case 22:
              v52 = 0xD000000000000016;
              v53 = &v148 + 1;
              goto LABEL_169;
            case 23:
              v52 = 0xD000000000000015;
              v53 = v149;
              goto LABEL_169;
            case 24:
              v52 = 0xD000000000000014;
              v53 = &v149[8];
LABEL_169:
              v50 = *(v53 - 32);
              break;
            case 25:
              v50 = 0xEA0000000000746ELL;
              v52 = 0x756F436C61746F74;
              break;
            default:
              break;
          }

          v54 = 0xEA00000000006B61;
          switch(v130)
          {
            case 1:
              v55 = 0x6573696372657865;
              v56 = 0x6B6165727453;
              goto LABEL_193;
            case 2:
              v54 = 0xEB000000006B6165;
              if (v52 != 0x727453646E617473)
              {
                goto LABEL_206;
              }

              goto LABEL_204;
            case 3:
              v57 = 0xD000000000000013;
              v58 = &v136;
              goto LABEL_203;
            case 4:
              v57 = 0xD000000000000012;
              v58 = &v137;
              goto LABEL_203;
            case 5:
              v57 = 0xD000000000000018;
              v58 = &v138;
              goto LABEL_203;
            case 6:
              v57 = 0xD000000000000016;
              v58 = &v139;
              goto LABEL_203;
            case 7:
              v57 = 0xD000000000000013;
              v58 = &v140;
              goto LABEL_203;
            case 8:
              v54 = 0xEF73636974736974;
              if (v52 != 0x6174537370657473)
              {
                goto LABEL_206;
              }

              goto LABEL_204;
            case 9:
              v57 = 0xD000000000000011;
              v58 = &v141;
              goto LABEL_203;
            case 10:
              v57 = 0xD000000000000012;
              v58 = &v142;
              goto LABEL_203;
            case 11:
              v57 = 0xD000000000000015;
              v58 = &v143;
              goto LABEL_203;
            case 12:
              v57 = 0xD000000000000019;
              v58 = &v143 + 1;
              goto LABEL_203;
            case 13:
              v57 = 0xD000000000000016;
              v58 = &v144;
              goto LABEL_203;
            case 14:
              v57 = 0xD00000000000001ELL;
              v58 = &v144 + 1;
              goto LABEL_203;
            case 15:
              v57 = 0xD000000000000011;
              v58 = &v145;
              goto LABEL_203;
            case 16:
              v57 = 0xD000000000000014;
              v58 = &v145 + 1;
              goto LABEL_203;
            case 17:
              v57 = 0xD000000000000011;
              v58 = &v146;
              goto LABEL_203;
            case 18:
              v55 = 0x616F47646E617473;
              v56 = 0x61746C65446CLL;
LABEL_193:
              v54 = v56 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v52 != v55)
              {
                goto LABEL_206;
              }

              goto LABEL_204;
            case 19:
              v51 = 0xD000000000000011;
              v54 = v120;
              goto LABEL_200;
            case 20:
              v57 = 0xD000000000000015;
              v58 = &v147;
              goto LABEL_203;
            case 21:
              v57 = 0xD000000000000012;
              v58 = &v148;
              goto LABEL_203;
            case 22:
              v57 = 0xD000000000000016;
              v58 = &v148 + 1;
              goto LABEL_203;
            case 23:
              v57 = 0xD000000000000015;
              v58 = v149;
              goto LABEL_203;
            case 24:
              v57 = 0xD000000000000014;
              v58 = &v149[8];
LABEL_203:
              v54 = *(v58 - 32);
              if (v52 == v57)
              {
                goto LABEL_204;
              }

              goto LABEL_206;
            case 25:
              v54 = 0xEA0000000000746ELL;
              if (v52 != 0x756F436C61746F74)
              {
                goto LABEL_206;
              }

              goto LABEL_204;
            default:
LABEL_200:
              if (v52 != v51)
              {
                goto LABEL_206;
              }

LABEL_204:
              if (v50 == v54)
              {
              }

              else
              {
LABEL_206:
                v59 = sub_1B4D18DCC();

                if ((v59 & 1) == 0)
                {
                  goto LABEL_74;
                }
              }

              v143 = v148;
              v144 = *v149;
              v145 = *&v149[16];
              v146 = v150;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v138 = v27;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1B4BCEB88(0, *(v27 + 16) + 1, 1);
                v27 = v138;
              }

              v7 = v135;
              v62 = *(v27 + 16);
              v61 = *(v27 + 24);
              if (v62 >= v61 >> 1)
              {
                sub_1B4BCEB88((v61 > 1), v62 + 1, 1);
                v27 = v138;
              }

              *(v27 + 16) = v62 + 1;
              v63 = (v27 + (v62 << 6));
              v64 = v143;
              v65 = v144;
              v66 = v146;
              v63[4] = v145;
              v63[5] = v66;
              v63[2] = v64;
              v63[3] = v65;
              break;
          }

          goto LABEL_75;
        }

LABEL_212:
        *&v148 = v27;

        v67 = v127;
        sub_1B4CB6A90(&v148);
        v11 = v67;
        if (v67)
        {
          goto LABEL_227;
        }

        v68 = v148;
        v69 = *(v148 + 16);
        if (v69)
        {
          v134 = 0;
          v151 = MEMORY[0x1E69E7CC0];
          sub_1B4BCF0BC(0, v69, 0);
          v70 = v151;
          v130 = v68;
          v71 = v68 + 32;
          do
          {
            v137 = v69;
            sub_1B4B6F2FC(v71, &v148);
            v72 = v150;
            v73 = __swift_project_boxed_opaque_existential_1(&v149[8], v150);
            v141 = v72;
            v142 = *(*(&v72 + 1) + 8);
            v74 = v142;
            v75 = __swift_allocate_boxed_opaque_existential_1(&v138);
            (*(*(v72 - 8) + 16))(v75, v73, v72);
            v77 = v141;
            v76 = v142;
            v135 = __swift_project_boxed_opaque_existential_1(&v138, v141);
            v136 = *(v74 + 64);
            swift_getAssociatedTypeWitness();
            swift_getAssociatedConformanceWitness();
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            *(&v144 + 1) = AssociatedTypeWitness;
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            *&v145 = AssociatedConformanceWitness;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v143);
            v136(v77, v76);
            sub_1B4B6F358(&v148);
            v81 = __swift_destroy_boxed_opaque_existential_1Tm(&v138);
            v151 = v70;
            v83 = *(v70 + 16);
            v82 = *(v70 + 24);
            if (v83 >= v82 >> 1)
            {
              v81 = sub_1B4BCF0BC((v82 > 1), v83 + 1, 1);
            }

            v84 = *(*(AssociatedTypeWitness - 8) + 64);
            v85 = MEMORY[0x1EEE9AC00](v81);
            v87 = &v103 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v88 + 16))(v87, boxed_opaque_existential_1, AssociatedTypeWitness, v85);
            sub_1B4CB7620(v83, v87, &v151, AssociatedTypeWitness, AssociatedConformanceWitness);
            __swift_destroy_boxed_opaque_existential_1Tm(&v143);
            v70 = v151;
            v71 += 64;
            v69 = v137 - 1;
          }

          while (v137 != 1);

          v11 = v134;
        }

        else
        {
        }

        v89 = v133;
        v90 = sub_1B4D1880C();
        v91 = *(v90 - 8);
        v92 = *(v91 + 64);
        MEMORY[0x1EEE9AC00](v90);
        v94 = &v103 - v93;
        static SnapshotProperty.reduce(_:)(v89, v132, &v103 - v93);

        if (!v11)
        {
          v95 = *(v89 - 8);
          if ((*(v95 + 48))(v94, 1, v89) == 1)
          {
            result = (*(v91 + 8))(v94, v90);
            v96 = v104;
            *(v104 + 32) = 0;
            *v96 = 0u;
            v96[1] = 0u;
          }

          else
          {
            *&v149[8] = v131;
            v97 = __swift_allocate_boxed_opaque_existential_1(&v148);
            (*(v95 + 32))(v97, v94, v89);
            v98 = *&v149[8];
            v99 = *&v149[16];
            v100 = __swift_project_boxed_opaque_existential_1(&v148, *&v149[8]);
            v101 = v104;
            *(v104 + 24) = v98;
            v101[4] = *(v99 + 8);
            v102 = __swift_allocate_boxed_opaque_existential_1(v101);
            (*(*(v98 - 8) + 16))(v102, v100, v98);
            return __swift_destroy_boxed_opaque_existential_1Tm(&v148);
          }
        }

        return result;
    }
  }
}

uint64_t static RingsProperties.from(_:cacheIndex:filters:groupBy:propertyKinds:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *a2;
  v27 = *a3;
  v12 = *(a3 + 2);
  sub_1B497558C(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BB8, &unk_1B4D2B4C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB258, &unk_1B4D336D8);
  if (swift_dynamicCast())
  {
    sub_1B496F398(v28, v31);
    v13 = sub_1B4CB7AE4(a5);
    MEMORY[0x1EEE9AC00](v13);
    v22[2] = v31;
    v23 = v27;
    v24 = v12;
    v25 = a4;
    v26 = v11;
    v14 = sub_1B4CB404C(sub_1B4B6F24C, v22, v13);

    if (!v6)
    {
      v15 = a1[3];
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      (*(v16 + 8))(v30, v15, v16);
      v17 = v30[0];
      v18 = a1[3];
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v18);
      (*(v19 + 8))(v28, v18, v19);
      v20 = *&v28[0];
      *a6 = v17;
      a6[1] = v20;
      a6[2] = v14;
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    result = sub_1B49A84B8(v28);
    *a6 = v11;
    a6[1] = v11;
    a6[2] = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B4CB5CBC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char **a8@<X8>)
{
  v41 = a4;
  v35 = a3;
  v14 = *a1;
  v15 = a1[1];
  v16 = *(v15 + 8);
  (*(v16 + 56))(v40, *a1, v16);
  LOBYTE(v37) = v40[0];
  v17 = _s19FitnessIntelligence23RingsPropertyDimensionsV10dimensions4from3forSayACGAA0C13Representable_p_AA0cD4KindOtFZ_0(a2, &v37);
  if (!*(v17 + 16))
  {

LABEL_7:
    *a8 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v18 = v17;
  sub_1B497558C(a2, v36);
  v19 = sub_1B4D1880C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v30 - v22;
  static SnapshotProperty.from(representable:)(v36, v14, v16, &v30 - v22);
  sub_1B49A84B8(v36);
  if (v8)
  {
  }

  v25 = *(v14 - 8);
  if ((*(v25 + 48))(v23, 1, v14) == 1)
  {

    result = (*(v20 + 8))(v23, v19);
    a8 = v34;
    goto LABEL_7;
  }

  v38 = v14;
  v39 = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
  (*(v25 + 32))(boxed_opaque_existential_1, v23, v14);
  v27 = sub_1B496F398(&v37, v40);
  MEMORY[0x1EEE9AC00](v27);
  v29[2] = v35;
  v29[3] = v41;
  v29[4] = v31;
  v29[5] = v32;
  v29[6] = v33;
  v29[7] = v40;
  v28 = sub_1B4AE1550(sub_1B4CB8428, v29, v18);

  *v34 = v28;
  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

uint64_t sub_1B4CB5F98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(result + 1);
  v46 = *(result + 2);
  v44 = *result;
  if (v44 == 12 || !*(a2 + 16) || (v9 = a3, result = sub_1B4978C4C(v44, a2), a3 = v9, (result & 1) != 0))
  {
    v45 = v8;
    if (v8 != 7)
    {
      v10 = *(a3 + 16);
      if (v10)
      {
        v11 = (a3 + 32);
        do
        {
          if (!v10)
          {
            goto LABEL_71;
          }

          v13 = *v11;
          if (v13 <= 2)
          {
            v16 = 0xE900000000000079;
            v17 = 0x616473656E646577;
            if (v13 == 1)
            {
              v17 = 0x79616473657574;
              v16 = 0xE700000000000000;
            }

            if (*v11)
            {
              v14 = v17;
            }

            else
            {
              v14 = 0x7961646E6F6DLL;
            }

            if (*v11)
            {
              v15 = v16;
            }

            else
            {
              v15 = 0xE600000000000000;
            }

            if (v8 > 2)
            {
LABEL_31:
              v18 = 0x7961646E7573;
              if (v8 == 5)
              {
                v18 = 0x7961647275746173;
                v19 = 0xE800000000000000;
              }

              else
              {
                v19 = 0xE600000000000000;
              }

              v20 = 0x7961647372756874;
              if (v8 == 3)
              {
                v21 = 0xE800000000000000;
              }

              else
              {
                v20 = 0x796164697266;
                v21 = 0xE600000000000000;
              }

              if (v8 <= 4)
              {
                v22 = v20;
              }

              else
              {
                v22 = v18;
              }

              if (v8 <= 4)
              {
                v23 = v21;
              }

              else
              {
                v23 = v19;
              }

              if (v14 != v22)
              {
                goto LABEL_7;
              }

              goto LABEL_56;
            }
          }

          else if (*v11 > 4u)
          {
            if (v13 == 5)
            {
              v15 = 0xE800000000000000;
              v14 = 0x7961647275746173;
              if (v8 > 2)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v14 = 0x7961646E7573;
              v15 = 0xE600000000000000;
              if (v8 > 2)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
            if (v13 == 3)
            {
              v14 = 0x7961647372756874;
            }

            else
            {
              v14 = 0x796164697266;
            }

            if (v13 == 3)
            {
              v15 = 0xE800000000000000;
            }

            else
            {
              v15 = 0xE600000000000000;
            }

            if (v8 > 2)
            {
              goto LABEL_31;
            }
          }

          if (v8)
          {
            if (v8 == 1)
            {
              v24 = 0x79616473657574;
            }

            else
            {
              v24 = 0x616473656E646577;
            }

            if (v8 == 1)
            {
              v23 = 0xE700000000000000;
            }

            else
            {
              v23 = 0xE900000000000079;
            }

            if (v14 != v24)
            {
              goto LABEL_7;
            }
          }

          else
          {
            v23 = 0xE600000000000000;
            if (v14 != 0x7961646E6F6DLL)
            {
              goto LABEL_7;
            }
          }

LABEL_56:
          if (v15 == v23)
          {

            LOBYTE(v8) = v45;
            break;
          }

LABEL_7:
          v12 = sub_1B4D18DCC();

          ++v11;
          --v10;
          v8 = v45;
        }

        while ((v12 & 1) == 0);
      }
    }

    if (v46 != 2)
    {
      v25 = *(a4 + 16);
      if (v25)
      {
        v26 = (a4 + 32);
        while (1)
        {
          v28 = *v26++;
          v27 = v28;
          if (v28 != 2 && ((v27 ^ v46) & 1) == 0)
          {
            break;
          }

          if (!--v25)
          {
            goto LABEL_71;
          }
        }
      }
    }

    if (a5)
    {
      v29 = *(a5 + 16);
      v30 = (a5 + 32);
      v31 = v29;
      v32 = (a5 + 32);
      while (v31)
      {
        v34 = *v32;
        if (v34 != 1 && v34 != 2)
        {

          goto LABEL_73;
        }

        v33 = sub_1B4D18DCC();

        ++v32;
        --v31;
        if (v33)
        {
          goto LABEL_73;
        }
      }

      LOBYTE(v44) = 12;
LABEL_73:
      v35 = v29;
      v36 = (a5 + 32);
      while (v35)
      {
        if (*v36 && *v36 != 2)
        {

          goto LABEL_81;
        }

        v37 = sub_1B4D18DCC();

        ++v36;
        --v35;
        if (v37)
        {
          goto LABEL_81;
        }
      }

      LOBYTE(v45) = 7;
LABEL_81:
      while (v29)
      {
        if (*v30 && *v30 != 1)
        {

          goto LABEL_86;
        }

        v38 = sub_1B4D18DCC();

        ++v30;
        --v29;
        if (v38)
        {
          goto LABEL_86;
        }
      }

      LOBYTE(v46) = 2;
LABEL_86:
      LOBYTE(v8) = v45;
    }

    result = sub_1B497558C(a7, a8 + 24);
    *a8 = a6;
    *(a8 + 8) = a6;
    *(a8 + 16) = v44;
    *(a8 + 17) = v8;
    *(a8 + 18) = v46;
  }

  else
  {
LABEL_71:
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B4CB6490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = a2 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B497558C(v7, &v16);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      if (swift_getDynamicType() == v6)
      {
        sub_1B496F398(&v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCF37C(0, *(v8 + 16) + 1, 1);
          v8 = v18;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B4BCF37C((v10 > 1), v11 + 1, 1);
          v8 = v18;
        }

        *(v8 + 16) = v11 + 1;
        a1 = sub_1B496F398(v15, v8 + 40 * v11 + 32);
      }

      else
      {
        a1 = __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      }

      v7 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *&v16 = v8;
  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADFC0, &unk_1B4D46288);
  v12 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B4CB83C4();
  v13 = sub_1B4D182BC();

  return v13;
}

uint64_t sub_1B4CB6728(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 2);
  v11 = *v1;
  v12 = v8;
  v9 = sub_1B4CB82E8();
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4CB844C(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    v4 = sub_1B4D17D6C();
    sub_1B4CB834C(v7);
  }

  return v4;
}

double sub_1B4CB6864@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B27BE0(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8;
    result = *&v7;
    *a3 = v7;
    *(a3 + 16) = v6;
  }

  return result;
}

uint64_t sub_1B4CB68B0@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = *(v5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v7 + 64))(v6, v7, v10);
  v11 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_dynamicCast();
  return (*(*(v12 - 8) + 56))(a3, v13 ^ 1u, 1, v12);
}

uint64_t sub_1B4CB6A90(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE23C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B4CB6AFC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B4CB6AFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B4D18D4C();
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
        v5 = sub_1B4D1844C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B4CB6CF4(v7, v8, a1, v4);
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
    return sub_1B4CB6BF4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B4CB6BF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + (a3 << 6));
    v7 = result - a3;
LABEL_5:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      sub_1B4B6F2FC(v9, v21);
      v10 = v9 - 4;
      sub_1B4B6F2FC((v9 - 4), v20);
      v11 = v21[0];
      v12 = v20[0];
      sub_1B4B6F358(v20);
      result = sub_1B4B6F358(v21);
      if (v11 >= v12)
      {
LABEL_4:
        ++v4;
        v6 += 4;
        --v7;
        if (v4 == v22)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = v9[2];
      v13 = v9[3];
      v16 = *v9;
      v15 = v9[1];
      v17 = *(v9 - 3);
      *v9 = *v10;
      v9[1] = v17;
      v18 = *(v9 - 1);
      v9[2] = *(v9 - 2);
      v9[3] = v18;
      *v10 = v16;
      *(v9 - 3) = v15;
      v9 -= 4;
      v10[2] = v14;
      v10[3] = v13;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4CB6CF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v102 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_1B4CDDE84(v9);
      v9 = result;
    }

    v110 = v9;
    v95 = *(v9 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = *&v9[16 * v95];
        v97 = *&v9[16 * v95 + 24];
        sub_1B4CB736C((*a3 + (v96 << 6)), (*a3 + (*&v9[16 * v95 + 16] << 6)), (*a3 + (v97 << 6)), v5);
        if (v6)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B4CDDE84(v9);
        }

        if (v95 - 2 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v98 = &v9[16 * v95];
        *v98 = v96;
        *(v98 + 1) = v97;
        v110 = v9;
        result = sub_1B4CDDDF8(v95 - 1);
        v9 = v110;
        v95 = *(v110 + 2);
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
    }

    else
    {
      v11 = *a3;
      sub_1B4B6F2FC(*a3 + ((v8 + 1) << 6), v109);
      v12 = v8 << 6;
      sub_1B4B6F2FC(v11 + (v8 << 6), v108);
      v103 = v108[0];
      v105 = v109[0];
      sub_1B4B6F358(v108);
      result = sub_1B4B6F358(v109);
      v13 = v8 + 2;
      v14 = v11 + (v8 << 6) + 128;
      while (v7 != v13)
      {
        sub_1B4B6F2FC(v14, v109);
        sub_1B4B6F2FC(v14 - 64, v108);
        v5 = v7;
        v15 = v6;
        v16 = v109[0];
        v17 = v108[0];
        sub_1B4B6F358(v108);
        result = sub_1B4B6F358(v109);
        v18 = v16 < v17;
        v6 = v15;
        v7 = v5;
        v19 = !v18;
        ++v13;
        v14 += 64;
        if ((((v105 < v103) ^ v19) & 1) == 0)
        {
          v7 = v13 - 1;
          break;
        }
      }

      v10 = v8;
      if (v105 < v103)
      {
        if (v7 < v8)
        {
          goto LABEL_120;
        }

        if (v8 < v7)
        {
          v20 = (v7 << 6) - 64;
          v21 = v7;
          v22 = v8;
          do
          {
            if (v22 != --v21)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v23 = (v32 + v12);
              v24 = (v32 + v20);
              v26 = v23[2];
              v25 = v23[3];
              v28 = *v23;
              v27 = v23[1];
              v29 = v24[3];
              v31 = *v24;
              v30 = v24[1];
              v23[2] = v24[2];
              v23[3] = v29;
              *v23 = v31;
              v23[1] = v30;
              *v24 = v28;
              v24[1] = v27;
              v24[2] = v26;
              v24[3] = v25;
            }

            ++v22;
            v20 -= 64;
            v12 += 64;
          }

          while (v22 < v21);
        }
      }
    }

    v33 = a3[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_119;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (v10 + a4 < v33)
        {
          v33 = v10 + a4;
        }

        if (v33 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

    v8 = v7;
    if (v7 < v10)
    {
      goto LABEL_118;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v35 = *(v9 + 2);
    v34 = *(v9 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_1B4A1D58C((v34 > 1), v35 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v36;
    v37 = &v9[16 * v35];
    *(v37 + 4) = v10;
    *(v37 + 5) = v8;
    v38 = *v102;
    if (!*v102)
    {
      goto LABEL_128;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v9 + 4);
          v41 = *(v9 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_50:
          if (v43)
          {
            goto LABEL_107;
          }

          v56 = &v9[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_110;
          }

          v62 = &v9[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_114;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v66 = &v9[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_64:
        if (v61)
        {
          goto LABEL_109;
        }

        v69 = &v9[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_112;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_71:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v5 = *&v9[16 * v77 + 32];
        v78 = *&v9[16 * v39 + 40];
        sub_1B4CB736C((*a3 + (v5 << 6)), (*a3 + (*&v9[16 * v39 + 32] << 6)), (*a3 + (v78 << 6)), v38);
        if (v6)
        {
        }

        if (v78 < v5)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B4CDDE84(v9);
        }

        if (v77 >= *(v9 + 2))
        {
          goto LABEL_104;
        }

        v79 = &v9[16 * v77];
        *(v79 + 4) = v5;
        *(v79 + 5) = v78;
        v110 = v9;
        result = sub_1B4CDDDF8(v39);
        v9 = v110;
        v36 = *(v110 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v9[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_105;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_106;
      }

      v51 = &v9[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_108;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_111;
      }

      if (v55 >= v47)
      {
        v73 = &v9[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_115;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v104 = v33;
  v99 = v6;
  v5 = *a3;
  v80 = v10;
  v81 = (*a3 + (v7 << 6));
  v101 = v80;
  v82 = v80 - v7;
LABEL_82:
  v106 = v7;
  v83 = v82;
  v84 = v81;
  while (1)
  {
    sub_1B4B6F2FC(v84, v109);
    v85 = v84 - 4;
    sub_1B4B6F2FC((v84 - 4), v108);
    v86 = v109[0];
    v87 = v108[0];
    sub_1B4B6F358(v108);
    result = sub_1B4B6F358(v109);
    if (v86 >= v87)
    {
LABEL_81:
      v7 = v106 + 1;
      v81 += 4;
      --v82;
      if (v106 + 1 != v104)
      {
        goto LABEL_82;
      }

      v6 = v99;
      v8 = v104;
      v10 = v101;
      if (v104 < v101)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    if (!v5)
    {
      break;
    }

    v89 = v84[2];
    v88 = v84[3];
    v91 = *v84;
    v90 = v84[1];
    v92 = *(v84 - 3);
    *v84 = *v85;
    v84[1] = v92;
    v93 = *(v84 - 1);
    v84[2] = *(v84 - 2);
    v84[3] = v93;
    *v85 = v91;
    *(v84 - 3) = v90;
    v84 -= 4;
    v85[2] = v89;
    v85[3] = v88;
    if (__CFADD__(v83++, 1))
    {
      goto LABEL_81;
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
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_1B4CB736C(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 63;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 6;
  v11 = a3 - a2;
  v12 = a3 - a2 + 63;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 6;
  if (v10 >= v12 >> 6)
  {
    if (a4 != a2 || &a2[64 * v13] <= a4)
    {
      memmove(a4, a2, v13 << 6);
    }

    v14 = &v4[64 * v13];
    if (v11 < 64 || v6 <= v7)
    {
      v22 = v6;
    }

    else
    {
      v40 = v4;
      do
      {
        v23 = (v6 - 64);
        v24 = v14 - 64;
        v5 -= 64;
        while (1)
        {
          v14 = v24 + 64;
          v27 = v5 + 64;
          sub_1B4B6F2FC(v24, v39);
          v28 = v23;
          sub_1B4B6F2FC(v23, v38);
          v29 = v39[0];
          v30 = v38[0];
          sub_1B4B6F358(v38);
          sub_1B4B6F358(v39);
          if (v29 < v30)
          {
            break;
          }

          if (v27 != v14)
          {
            v31 = *v24;
            v32 = *(v24 + 1);
            v33 = *(v24 + 3);
            *(v5 + 2) = *(v24 + 2);
            *(v5 + 3) = v33;
            *v5 = v31;
            *(v5 + 1) = v32;
          }

          v25 = v24 - 64;
          v5 -= 64;
          v26 = v24 > v40;
          v24 -= 64;
          v23 = v28;
          if (!v26)
          {
            v14 = v25 + 64;
            v22 = v6;
            v4 = v40;
            goto LABEL_38;
          }
        }

        v22 = v28;
        if (v27 != v6)
        {
          v34 = *v28;
          v35 = *(v28 + 1);
          v36 = *(v28 + 3);
          *(v5 + 2) = *(v28 + 2);
          *(v5 + 3) = v36;
          *v5 = v34;
          *(v5 + 1) = v35;
        }

        v4 = v40;
        if (v14 <= v40)
        {
          break;
        }

        v6 = v22;
      }

      while (v22 > v7);
      v14 = v24 + 64;
    }
  }

  else
  {
    if (a4 != __src || &__src[64 * v10] <= a4)
    {
      memmove(a4, __src, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 >= 64 && v6 < v5)
    {
      while (1)
      {
        sub_1B4B6F2FC(v6, v39);
        sub_1B4B6F2FC(v4, v38);
        v15 = v39[0];
        v16 = v38[0];
        sub_1B4B6F358(v38);
        sub_1B4B6F358(v39);
        if (v15 >= v16)
        {
          break;
        }

        v17 = v6;
        v18 = v7 == v6;
        v6 += 64;
        if (!v18)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 64;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v17 = v4;
      v18 = v7 == v4;
      v4 += 64;
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_16:
      v19 = *v17;
      v20 = *(v17 + 1);
      v21 = *(v17 + 3);
      *(v7 + 2) = *(v17 + 2);
      *(v7 + 3) = v21;
      *v7 = v19;
      *(v7 + 1) = v20;
      goto LABEL_17;
    }

LABEL_19:
    v22 = v7;
  }

LABEL_38:
  if (v22 != v4 || v22 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v22, v4, ((v14 - v4) / 64) << 6);
  }

  return 1;
}

uint64_t sub_1B4CB7620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B496F398(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADFC8, &qword_1B4D46298);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B4D29F30;
  v1 = sub_1B4CA27F0();
  *(v0 + 32) = &type metadata for MoveStreakProperty;
  *(v0 + 40) = v1;
  v2 = sub_1B4CA279C();
  *(v0 + 48) = &type metadata for ExerciseStreakProperty;
  *(v0 + 56) = v2;
  v3 = sub_1B4CA2748();
  *(v0 + 64) = &type metadata for StandStreakProperty;
  *(v0 + 72) = v3;
  v4 = sub_1B4CA26F4();
  *(v0 + 80) = &type metadata for AllThreeRingStreakProperty;
  *(v0 + 88) = v4;
  v5 = type metadata accessor for MoveRingStatisticsProperty(0);
  v6 = sub_1B4CB844C(&qword_1EDC38BB8, type metadata accessor for MoveRingStatisticsProperty);
  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  v7 = type metadata accessor for MoveMinutesRingStatisticsProperty(0);
  v8 = sub_1B4CB844C(&qword_1EDC38170, type metadata accessor for MoveMinutesRingStatisticsProperty);
  *(v0 + 112) = v7;
  *(v0 + 120) = v8;
  v9 = type metadata accessor for ExerciseRingStatisticsProperty(0);
  v10 = sub_1B4CB844C(&qword_1EDC38540, type metadata accessor for ExerciseRingStatisticsProperty);
  *(v0 + 128) = v9;
  *(v0 + 136) = v10;
  v11 = type metadata accessor for StandRingStatisticsProperty(0);
  v12 = sub_1B4CB844C(&qword_1EDC38998, type metadata accessor for StandRingStatisticsProperty);
  *(v0 + 144) = v11;
  *(v0 + 152) = v12;
  v13 = type metadata accessor for StepsStatisticsProperty(0);
  v14 = sub_1B4CB844C(&qword_1EDC39000, type metadata accessor for StepsStatisticsProperty);
  *(v0 + 160) = v13;
  *(v0 + 168) = v14;
  v15 = type metadata accessor for FlightsStatisticsProperty(0);
  v16 = sub_1B4CB844C(&qword_1EDC38E58, type metadata accessor for FlightsStatisticsProperty);
  *(v0 + 176) = v15;
  *(v0 + 184) = v16;
  v17 = type metadata accessor for DistanceStatisticsProperty(0);
  v18 = sub_1B4CB844C(&qword_1EDC38C88, type metadata accessor for DistanceStatisticsProperty);
  *(v0 + 192) = v17;
  *(v0 + 200) = v18;
  v19 = sub_1B4C9E514();
  *(v0 + 208) = &type metadata for MoveGoalAchievedCountProperty;
  *(v0 + 216) = v19;
  v20 = sub_1B4C9E4C0();
  *(v0 + 224) = &type metadata for ExerciseGoalAchievedCountProperty;
  *(v0 + 232) = v20;
  v21 = sub_1B4C9E46C();
  *(v0 + 240) = &type metadata for StandGoalAchievedCountProperty;
  *(v0 + 248) = v21;
  v22 = sub_1B4C9E418();
  *(v0 + 256) = &type metadata for AllThreeRingsGoalAchievedCountProperty;
  *(v0 + 264) = v22;
  v23 = type metadata accessor for MoveGoalDeltaProperty(0);
  v24 = sub_1B4CB844C(&qword_1EDC39498, type metadata accessor for MoveGoalDeltaProperty);
  *(v0 + 272) = v23;
  *(v0 + 280) = v24;
  v25 = type metadata accessor for MoveMinutesGoalDeltaProperty(0);
  v26 = sub_1B4CB844C(&qword_1EDC38808, type metadata accessor for MoveMinutesGoalDeltaProperty);
  *(v0 + 288) = v25;
  *(v0 + 296) = v26;
  v27 = type metadata accessor for ExerciseGoalDeltaProperty(0);
  v28 = sub_1B4CB844C(&qword_1EDC38F28, type metadata accessor for ExerciseGoalDeltaProperty);
  *(v0 + 304) = v27;
  *(v0 + 312) = v28;
  v29 = type metadata accessor for StandGoalDeltaProperty(0);
  v30 = sub_1B4CB844C(&qword_1EDC39200, type metadata accessor for StandGoalDeltaProperty);
  *(v0 + 320) = v29;
  *(v0 + 328) = v30;
  v31 = sub_1B4C9E3C4();
  *(v0 + 336) = &type metadata for MoveGoalMilestoneProperty;
  *(v0 + 344) = v31;
  v32 = sub_1B4C9E370();
  *(v0 + 352) = &type metadata for ExerciseGoalMilestoneProperty;
  *(v0 + 360) = v32;
  v33 = sub_1B4C9E31C();
  *(v0 + 368) = &type metadata for StandGoalMilestoneProperty;
  *(v0 + 376) = v33;
  v34 = sub_1B4C9E2C8();
  *(v0 + 384) = &type metadata for AllThreeRingsGoalMilestoneProperty;
  *(v0 + 392) = v34;
  v35 = sub_1B4C9E274();
  *(v0 + 400) = &type metadata for HighestDailyStepCountProperty;
  *(v0 + 408) = v35;
  v36 = sub_1B4C9E220();
  *(v0 + 416) = &type metadata for HighestDailyDistanceProperty;
  *(v0 + 424) = v36;
  v37 = sub_1B4C9BBC4();
  *(v0 + 432) = &type metadata for RingsTotalCountProperty;
  *(v0 + 440) = v37;
  return v0;
}

uint64_t sub_1B4CB7AE4(uint64_t a1)
{
  if (a1)
  {
    v3 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = MEMORY[0x1E69E7CC0];
      v6 = 32;
      do
      {
        v11 = *(v3 + v6);
        (*(*(*(v3 + v6 + 8) + 8) + 56))(&v12);
        if (sub_1B4979380(v12, a1))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13 = v5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B4BCF31C(0, *(v5 + 16) + 1, 1);
            v5 = v13;
          }

          v8 = *(v5 + 16);
          v7 = *(v5 + 24);
          if (v8 >= v7 >> 1)
          {
            sub_1B4BCF31C((v7 > 1), v8 + 1, 1);
            v5 = v13;
          }

          *(v5 + 16) = v8 + 1;
          *(v5 + 16 * v8 + 32) = v11;
        }

        v6 += 16;
        --v4;
      }

      while (v4);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v5;
  }

  else
  {

    return _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
  }
}

uint64_t sub_1B4CB7C34(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = *a1;
  v42 = *a2;
  v43 = v5;
  LODWORD(v5) = *a3;
  v40 = a3[1];
  v41 = v5;
  v39 = a3[2];
  *&v47 = a4;

  sub_1B4CB6A90(&v47);
  if (v4)
  {
LABEL_31:

    __break(1u);
    return result;
  }

  v46 = 0;
  v6 = v47;
  v7 = *(v47 + 16);
  if (v7)
  {
    v50 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF37C(0, v7, 0);
    v8 = v50;
    v9 = v6 + 32;
    do
    {
      sub_1B4B6F2FC(v9, &v47);
      sub_1B496F398((v48 + 8), v49);
      v50 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B4BCF37C((v10 > 1), v11 + 1, 1);
        v8 = v50;
      }

      *(v8 + 16) = v11 + 1;
      sub_1B496F398(v49, v8 + 40 * v11 + 32);
      v9 += 64;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v12 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
  v13 = v12;
  v14 = MEMORY[0x1E69E7CC0];
  v38 = *(v12 + 16);
  if (v38)
  {
    v15 = 0;
    v37 = v12;
    while (v15 < *(v13 + 16))
    {
      v45 = v14;
      v44 = *(v13 + 16 * v15 + 32);
      v17 = *(&v44 + 1);
      v16 = v44;
      sub_1B4CB6490(v44, v8, v44, *(&v44 + 1));
      v18 = *(v17 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      sub_1B4D18A7C();

      v19 = sub_1B4D1880C();
      v20 = *(v19 - 8);
      v21 = *(v20 + 64);
      MEMORY[0x1EEE9AC00](v19);
      v23 = &v37 - v22;
      v4 = v46;
      static SnapshotProperty.reduce(_:)(v16, v18, &v37 - v22);
      v46 = v4;
      if (v4)
      {

        return v16;
      }

      v24 = *(v16 - 8);
      if ((*(v24 + 48))(v23, 1, v16) == 1)
      {
        (*(v20 + 8))(v23, v19);
        v14 = v45;
        v13 = v37;
      }

      else
      {
        *(&v49[1] + 8) = v44;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
        (*(v24 + 32))(boxed_opaque_existential_1, v23, v16);
        sub_1B496F398(v49, &v47);
        sub_1B496F398(&v47, v49);
        v14 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1B4A1DE58(0, v14[2] + 1, 1, v14);
        }

        v13 = v37;
        v27 = v14[2];
        v26 = v14[3];
        if (v27 >= v26 >> 1)
        {
          v14 = sub_1B4A1DE58((v26 > 1), v27 + 1, 1, v14);
        }

        v14[2] = v27 + 1;
        sub_1B496F398(v49, &v14[5 * v27 + 4]);
      }

      if (v38 == ++v15)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_21:

  v28 = v14[2];
  if (v28)
  {
    *&v49[0] = MEMORY[0x1E69E7CC0];
    sub_1B4BCEB88(0, v28, 0);
    v16 = *&v49[0];
    v29 = (v14 + 4);
    do
    {
      sub_1B497558C(v29, v48 + 8);
      *&v47 = v43;
      *(&v47 + 1) = v42;
      LOBYTE(v48[0]) = v41;
      BYTE1(v48[0]) = v40;
      BYTE2(v48[0]) = v39;
      *&v49[0] = v16;
      v31 = *(v16 + 16);
      v30 = *(v16 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B4BCEB88((v30 > 1), v31 + 1, 1);
        v16 = *&v49[0];
      }

      *(v16 + 16) = v31 + 1;
      v32 = (v16 + (v31 << 6));
      v33 = v47;
      v34 = v48[0];
      v35 = v48[2];
      v32[4] = v48[1];
      v32[5] = v35;
      v32[2] = v33;
      v32[3] = v34;
      v29 += 40;
      --v28;
    }

    while (v28);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

unint64_t sub_1B4CB8210()
{
  result = qword_1EDC395A0;
  if (!qword_1EDC395A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395A0);
  }

  return result;
}

unint64_t sub_1B4CB8264(uint64_t a1)
{
  *(a1 + 8) = sub_1B4CB8294();
  result = sub_1B4CB82E8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4CB8294()
{
  result = qword_1EDC397D0;
  if (!qword_1EDC397D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC397D0);
  }

  return result;
}

unint64_t sub_1B4CB82E8()
{
  result = qword_1EDC397C8;
  if (!qword_1EDC397C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC397C8);
  }

  return result;
}

uint64_t sub_1B4CB834C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4CB83C4()
{
  result = qword_1EDC37908;
  if (!qword_1EDC37908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ADFC0, &unk_1B4D46288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37908);
  }

  return result;
}

uint64_t sub_1B4CB844C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RingsPropertyDimensions.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v5 = (a1 + v4[6]);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v5[1];

    v9._countAndFlagsBits = v7;
    v9._object = v6;
    DayOfWeek.init(rawValue:)(v9);
    v10 = v19;
    v11 = (a1 + v4[5]);
    if (v11[1])
    {
      v12 = *v11;
      v13 = v11[1];
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    v15._countAndFlagsBits = v12;
    v15._object = v13;
    MonthOfYear.init(rawValue:)(v15);
    v14 = v18;
  }

  else
  {
    v10 = 7;
    v14 = 12;
  }

  v16 = *(a1 + v4[7]);
  result = sub_1B4CB8634(a1);
  *a2 = v14;
  a2[1] = v10;
  a2[2] = v16;
  return result;
}

uint64_t RingsPropertyDimensions.protobuf()()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  sub_1B4CB8988(qword_1EDC3B850);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4CB8634(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4CB8690(uint64_t result, int a2)
{
  v2 = 0xE700000000000000;
  v3 = 0x797261756E616ALL;
  v5 = result;
  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x7972617572626566;
      goto LABEL_14;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x686372616DLL;
      goto LABEL_14;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x6C69727061;
      goto LABEL_14;
    case 4:
      v2 = 0xE300000000000000;
      v3 = 7954797;
      goto LABEL_14;
    case 5:
      v2 = 0xE400000000000000;
      v3 = 1701737834;
      goto LABEL_14;
    case 6:
      v2 = 0xE400000000000000;
      v3 = 2037151082;
      goto LABEL_14;
    case 7:
      v2 = 0xE600000000000000;
      v3 = 0x747375677561;
      goto LABEL_14;
    case 8:
      v2 = 0xE900000000000072;
      v3 = 0x65626D6574706573;
      goto LABEL_14;
    case 9:
      v3 = 0x7265626F74636FLL;
      goto LABEL_14;
    case 10:
      v2 = 0xE800000000000000;
      v6 = 1702260590;
      goto LABEL_6;
    case 11:
      v2 = 0xE800000000000000;
      v6 = 1701012836;
LABEL_6:
      v3 = v6 | 0x7265626D00000000;
      goto LABEL_14;
    case 12:
      goto LABEL_15;
    default:
LABEL_14:
      v7 = (result + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20));
      v8 = v7[1];

      *v7 = v3;
      v7[1] = v2;
LABEL_15:
      v9 = 0x7961646E6F6DLL;
      if (BYTE1(a2) > 3u)
      {
        if (BYTE1(a2) > 5u)
        {
          if (BYTE1(a2) != 6)
          {
            goto LABEL_36;
          }

          v13 = 0x7961646E7573;
          v14 = 0xE600000000000000;
        }

        else
        {
          if (BYTE1(a2) == 4)
          {
            v13 = 0x796164697266;
          }

          else
          {
            v13 = 0x7961647275746173;
          }

          if (BYTE1(a2) == 4)
          {
            v14 = 0xE600000000000000;
          }

          else
          {
            v14 = 0xE800000000000000;
          }
        }
      }

      else
      {
        v10 = 0xE600000000000000;
        v11 = 0xE900000000000079;
        v12 = 0x616473656E646577;
        if (BYTE1(a2) != 2)
        {
          v12 = 0x7961647372756874;
          v11 = 0xE800000000000000;
        }

        if (BYTE1(a2))
        {
          v9 = 0x79616473657574;
          v10 = 0xE700000000000000;
        }

        if (BYTE1(a2) <= 1u)
        {
          v13 = v9;
        }

        else
        {
          v13 = v12;
        }

        if (BYTE1(a2) <= 1u)
        {
          v14 = v10;
        }

        else
        {
          v14 = v11;
        }
      }

      v15 = (v5 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24));
      v16 = v15[1];

      *v15 = v13;
      v15[1] = v14;
LABEL_36:
      if (BYTE2(a2) != 2)
      {
        result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
        *(v5 + *(result + 28)) = BYTE2(a2);
      }

      return result;
  }
}