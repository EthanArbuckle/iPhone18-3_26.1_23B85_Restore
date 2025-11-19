uint64_t sub_1B49A5D44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B49A24E4(a2);
  if (!v3)
  {
    v7 = result;
    v8 = *a1;

    *a1 = v7;
    a1[1] = a3;
  }

  return result;
}

uint64_t sub_1B49A5D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  v24 = &v26;
  v25 = a3;
  sub_1B49A6BC0(&qword_1EB8A6DA8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  result = sub_1B4D17DAC();
  if (!v3)
  {
    v22 = v7;
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
    v18 = *(v17 + 20);
    v19 = v23;
    sub_1B4975024(v23 + v18, &qword_1EB8A6DB0, &unk_1B4D462F0);
    sub_1B49A6C5C(v15, v19 + v18, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
    v20 = (*(v12 + 56))(v19 + v18, 0, 1, v11);
    MEMORY[0x1EEE9AC00](v20);
    *(&v22 - 2) = &v25;
    sub_1B49A6BC0(&qword_1EB8A6DB8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
    sub_1B4D17DAC();
    v21 = *(v17 + 24);
    sub_1B4975024(v19 + v21, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
    sub_1B49A6C5C(v10, v19 + v21, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
    return (*(v22 + 56))(v19 + v21, 0, 1, v6);
  }

  return result;
}

void sub_1B49A60BC(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_23;
  }

  LOBYTE(v6) = a2;
  v7 = a1[4];
  v8 = a1[5];

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_1B49E9F3C(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B4984030(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_1B49E9F3C(v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_1B49886AC();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + 8 * v10) = v7;
  *(v22[7] + 8 * v10) = v8;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v6 - 1);
      v25 = *v6;

      if (!v7)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = sub_1B49E9F3C(v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1B4984030(v31, 1);
        v32 = *a3;
        v27 = sub_1B49E9F3C(v7);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + 8 * v27) = v7;
      *(v34[7] + 8 * v27) = v25;
      v35 = v34[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v8;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v8)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1B49A6418(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13[-v7];
  v9 = *a2;
  v10 = a2[1];
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  v14 = v9;
  v15 = v10;
  sub_1B49A6BC0(&qword_1EB8A6D98, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
    return sub_1B49A205C(v8, a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  return result;
}

uint64_t sub_1B49A6594(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11[-v6];
  v8 = *a2;
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  v12 = v8;
  sub_1B49A6BC0(&qword_1EB8A6DD8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  sub_1B4D17DAC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  return sub_1B49A205C(v7, a1, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
}

uint64_t sub_1B49A6700(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11[-v6];
  v8 = *a2;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v12 = v8;
  sub_1B49A6BC0(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4D17DAC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  return sub_1B49A205C(v7, a1, &qword_1EB8A6DC8, &unk_1B4D20350);
}

uint64_t sub_1B49A686C(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v12 - v7;
  v12[1] = *a2;
  v9 = sub_1B49A69C0();
  result = (*(v9 + 32))(&type metadata for CountPropertyValue, v9);
  if (!v2)
  {
    v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    return sub_1B49A205C(v8, a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  return result;
}

unint64_t sub_1B49A69C0()
{
  result = qword_1EDC39688;
  if (!qword_1EDC39688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39688);
  }

  return result;
}

uint64_t sub_1B49A6BC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B49A6C08()
{
  result = qword_1EB8A6DF0;
  if (!qword_1EB8A6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6DF0);
  }

  return result;
}

uint64_t sub_1B49A6C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49A6CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49A6D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t WorkoutMediaCurrentPlayingItemFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutMediaCurrentPlayingItemFact.TemplateString.rawValue.getter()
{
  v1 = 0xD00000000000002ALL;
  v2 = *v0;
  v3 = 0xD00000000000006DLL;
  if (v2 != 6)
  {
    v3 = 0xD000000000000061;
  }

  v4 = 0xD000000000000047;
  if (v2 != 4)
  {
    v4 = 0xD000000000000053;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000050;
  if (v2 != 2)
  {
    v5 = 0xD000000000000044;
  }

  if (*v0)
  {
    v1 = 0xD000000000000036;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1B49A6F08@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WorkoutMediaCurrentPlayingItemFact.TemplateString.init(rawValue:)(a1);
}

void sub_1B49A6F14(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ALL;
  v3 = *v1;
  v4 = "le_description>.";
  v5 = "ne of my favorites.";
  v6 = 0xD00000000000006DLL;
  if (v3 != 6)
  {
    v6 = 0xD000000000000061;
    v5 = " this is one of my favorites.";
  }

  v7 = "is of genre <genre>.";
  v8 = 0xD000000000000047;
  if (v3 != 4)
  {
    v8 = 0xD000000000000053;
    v7 = "is one of my favorites.";
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "ia_title> by <artist>.";
  v10 = 0xD000000000000050;
  if (v3 != 2)
  {
    v10 = 0xD000000000000044;
    v9 = "f genre <genre>.";
  }

  if (*v1)
  {
    v2 = 0xD000000000000036;
    v4 = "istening to <media_title>.";
  }

  if (*v1 > 1u)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

uint64_t WorkoutMediaCurrentPlayingItemFact.placeholders()()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B4D1BE00;
  *(v7 + 32) = 0x69745F616964656DLL;
  *(v7 + 40) = 0xEB00000000656C74;
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v7 + 48) = sub_1B4993DFC;
  *(v7 + 56) = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0x747369747261;
  *(v7 + 88) = 0xE600000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v7 + 96) = sub_1B4994004;
  *(v7 + 104) = v9;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0x65726E6567;
  *(v7 + 136) = 0xE500000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v7 + 144) = sub_1B4994004;
  *(v7 + 152) = v10;
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;

  return v7;
}

void WorkoutMediaCurrentPlayingItemFact.selectTemplate(formatter:)(char *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (*(v1 + 48))
  {
    v3 = 7;
  }

  else
  {
    v3 = 3;
  }

  if (*(v1 + 48))
  {
    v4 = 6;
  }

  else
  {
    v4 = 2;
  }

  if (v2)
  {
    v3 = v4;
  }

  if (*(v1 + 48))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (*(v1 + 48))
  {
    v6 = 5;
  }

  else
  {
    v6 = 1;
  }

  if (v2)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (*(v1 + 40))
  {
    v7 = v3;
  }

  *a1 = v7;
}

unint64_t sub_1B49A71EC()
{
  result = qword_1EB8A6DF8;
  if (!qword_1EB8A6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6DF8);
  }

  return result;
}

unint64_t sub_1B49A7244()
{
  result = qword_1EB8A6E00;
  if (!qword_1EB8A6E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6E08, &qword_1B4D1BEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E00);
  }

  return result;
}

unint64_t sub_1B49A72AC()
{
  result = qword_1EB8A6E10;
  if (!qword_1EB8A6E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E10);
  }

  return result;
}

unint64_t sub_1B49A7304()
{
  result = qword_1EB8A6E18;
  if (!qword_1EB8A6E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E18);
  }

  return result;
}

unint64_t sub_1B49A7358(uint64_t a1)
{
  result = sub_1B49A7380();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B49A7380()
{
  result = qword_1EB8A6E20;
  if (!qword_1EB8A6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E20);
  }

  return result;
}

uint64_t _s14TemplateStringOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14TemplateStringOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B49A753C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B4D180EC() & 1;
}

uint64_t sub_1B49A758C()
{
  sub_1B4D184BC();
  swift_getWitnessTable();
  sub_1B4D182EC();
  swift_getWitnessTable();
  sub_1B4D1869C();
  sub_1B4D188BC();
  swift_getWitnessTable();
  return sub_1B4D184EC();
}

uint64_t sub_1B49A76A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B4D180FC() & 1;
}

uint64_t static BestRankedPropertyValueBehavior.add(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(a4 + 48);
  v7(a3, a4);
  v7(a3, a4);
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1B4D1842C();

  v10 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 8);
  v13 = swift_getAssociatedConformanceWitness();
  v14 = v12(v9, 5, v8, v13, v10, AssociatedConformanceWitness);

  return (*(a4 + 56))(v14, a3, a4);
}

void static FIWorkoutDefaultMetricsProvider.getSupportedMetrics(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  sub_1B49A79FC(v4, v1, v2, v3);
}

void sub_1B49A79FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 16))();
  v6 = v29;
  v26 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v7 = *(a4 + 56);
  v8 = v7(a3, a4);
  v9 = objc_allocWithZone(MEMORY[0x1E699C9F8]);
  v10 = FIActivityMoveModeUserDefault();
  v11 = FIDeviceSupportsElevationGain();
  v12 = [v9 initWithMetricsVersion:6 activityType:v8 activityMoveMode:v10 deviceSupportsElevationMetrics:v11 deviceSupportsGroundElevationMetrics:FIDeviceSupportsGroundElevation()];
  if (!v12)
  {
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;

  v14 = (*(a4 + 256))(a3, a4);
  v15 = v7(v6, v26);
  v16 = [v13 supportedMetricsWithIsMachineWorkout:v14 & 1 activityType:v15];

  if (!v16)
  {
LABEL_22:
    __break(1u);
    return;
  }

  sub_1B49A7CD4();
  v17 = sub_1B4D183FC();

  if (v17 >> 62)
  {
    goto LABEL_19;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v13; v18; i = v13)
  {
    v19 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1B8C7CD90](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v21 = *(v17 + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v24 = sub_1B4D1883C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1B4A1D47C(0, *(v20 + 2) + 1, 1, v20);
      }

      v13 = *(v20 + 2);
      v25 = *(v20 + 3);
      if (v13 >= v25 >> 1)
      {
        v20 = sub_1B4A1D47C((v25 > 1), v13 + 1, 1, v20);
      }

      *(v20 + 2) = v13 + 1;
      *&v20[8 * v13 + 32] = v24;
      ++v19;
      if (v23 == v18)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v18 = sub_1B4D18ABC();
  }

LABEL_20:

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

unint64_t sub_1B49A7CD4()
{
  result = qword_1EDC36DB0;
  if (!qword_1EDC36DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC36DB0);
  }

  return result;
}

uint64_t SignificantDistanceDuringWorkoutFact.TemplateString.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B49A7DA0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49A7E14()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49A7E68@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t SignificantDistanceDuringWorkoutFact.placeholders()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B4D1A800;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x80000001B4D4F0E0;
  *(v3 + 48) = sub_1B49A80CC;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  v5 = v1;
  return v3;
}

uint64_t sub_1B49A7FA0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v13[15] = a3;
  DistanceReference.rawValue.getter();
  v9 = sub_1B4D1232C();
  sub_1B4BC79D0();
  v10 = v9[2];
  sub_1B499221C();
  v11 = sub_1B4D1878C();
  (*(v5 + 8))(v8, v4);

  return v11;
}

unint64_t sub_1B49A80E4()
{
  result = qword_1EB8A6E28;
  if (!qword_1EB8A6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E28);
  }

  return result;
}

unint64_t sub_1B49A813C()
{
  result = qword_1EB8A6E30;
  if (!qword_1EB8A6E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6E38, &qword_1B4D1C090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E30);
  }

  return result;
}

unint64_t sub_1B49A81A4()
{
  result = qword_1EB8A6E40;
  if (!qword_1EB8A6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E40);
  }

  return result;
}

unint64_t sub_1B49A81FC()
{
  result = qword_1EB8A6E48;
  if (!qword_1EB8A6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E48);
  }

  return result;
}

uint64_t sub_1B49A8250()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B4D1A800;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x80000001B4D4F0E0;
  *(v3 + 48) = sub_1B49A8398;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  v5 = v1;
  return v3;
}

unint64_t sub_1B49A830C(uint64_t a1)
{
  result = sub_1B49A8334();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B49A8334()
{
  result = qword_1EB8A6E50;
  if (!qword_1EB8A6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E50);
  }

  return result;
}

uint64_t static RingsCountPropertyGenerator.from(_:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B49A8448(a1, &v6);
  if (!v7)
  {
    result = sub_1B49A84B8(&v6);
    goto LABEL_5;
  }

  sub_1B49A24C4(&v6, v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  if (RingsRepresentable.isNil.getter(v3, v4))
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v8);
LABEL_5:
    *a2 = 0;
    *(a2 + 8) = 1;
    return result;
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_1B49A8448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E58, &qword_1B4D1C110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49A84B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E58, &qword_1B4D1C110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B49A8520(uint64_t a1)
{
  result = sub_1B49A8548();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B49A8548()
{
  result = qword_1EDC3CC40;
  if (!qword_1EDC3CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CC40);
  }

  return result;
}

unint64_t sub_1B49A85A0()
{
  result = qword_1EDC39690;
  if (!qword_1EDC39690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39690);
  }

  return result;
}

Swift::String __swiftcall FitnessContextQueryIdentifier.makeQueryKey()()
{
  v1 = v0;
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v7 = sub_1B4D181CC();
  v8 = v2;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  v3 = *(v1 + 16);
  sub_1B4D1831C();
  MEMORY[0x1B8C7C620]();

  v4 = v7;
  v5 = v8;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t FitnessContext.queryResults.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FitnessContext.retrieve<A>(_:as:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v55 = a4;
  v51 = sub_1B4D1880C();
  v50 = *(v51 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v48 - v10;
  v53 = type metadata accessor for FitnessContextQueryResult();
  v11 = *(v53 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E60, &unk_1B4D1C190);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v48 - v22;
  v23 = *v4;
  v57 = *(*v4 + 16);
  if (v57)
  {
    v48 = a3;
    a3 = 0;
    v58 = v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v56 = v23;
    while (1)
    {
      if (a3 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v24 = v11;
      sub_1B49AA024(v58 + *(v11 + 72) * a3, v16, type metadata accessor for FitnessContextQueryResult);
      v5 = *v16;
      if (*(*v16 + 16))
      {
        v25 = *(v5 + 40);
        sub_1B4D18E8C();
        sub_1B4D1820C();
        v26 = sub_1B4D18EDC();
        v27 = -1 << *(v5 + 32);
        v28 = v26 & ~v27;
        if ((*(v5 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          break;
        }
      }

LABEL_3:
      ++a3;
      sub_1B49A9DE0(v16, type metadata accessor for FitnessContextQueryResult);
      v23 = v56;
      v11 = v24;
      if (a3 == v57)
      {
        v32 = 1;
        a3 = v48;
        goto LABEL_17;
      }
    }

    v29 = ~v27;
    while (1)
    {
      v30 = (*(v5 + 48) + 16 * v28);
      v31 = *v30 == a1 && v30[1] == a2;
      if (v31 || (sub_1B4D18DCC() & 1) != 0)
      {
        break;
      }

      v28 = (v28 + 1) & v29;
      if (((*(v5 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v5 = v54;
    sub_1B49A9CC8(v16, v54);
    v32 = 0;
    a3 = v48;
    v11 = v24;
  }

  else
  {
    v32 = 1;
LABEL_17:
    v5 = v54;
  }

  v33 = v53;
  (*(v11 + 56))(v5, v32, 1, v53);
  sub_1B4974FBC(v5, v20, &qword_1EB8A6E60, &unk_1B4D1C190);
  if ((*(v11 + 48))(v20, 1, v33) == 1)
  {
    sub_1B4975024(v20, &qword_1EB8A6E60, &unk_1B4D1C190);
    if (qword_1EDC3CEC8 != -1)
    {
LABEL_33:
      swift_once();
    }

    v34 = sub_1B4D17F6C();
    __swift_project_value_buffer(v34, qword_1EDC3CED0);

    v35 = sub_1B4D17F5C();
    v36 = sub_1B4D1871C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v61[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1B49558AC(a1, a2, v61);
      _os_log_impl(&dword_1B4953000, v35, v36, "[FitnessContext][%s] Request key does not match any query", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1B8C7DDA0](v38, -1, -1);
      MEMORY[0x1B8C7DDA0](v37, -1, -1);
    }
  }

  else
  {
    v39 = v52;
    sub_1B49A9CC8(v20, v52);
    sub_1B4974FBC(v39 + *(v33 + 24), &v59, &qword_1EB8A6E68, &qword_1B4D20870);
    if (v60)
    {
      sub_1B49A9DE0(v39, type metadata accessor for FitnessContextQueryResult);
      sub_1B4975024(v5, &qword_1EB8A6E60, &unk_1B4D1C190);
      sub_1B496F398(&v59, v61);
      sub_1B496F398(v61, &v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E70, &qword_1B4D1C1A0);
      v40 = v49;
      v41 = swift_dynamicCast();
      (*(*(a3 - 8) + 56))(v40, v41 ^ 1u, 1, a3);
      return (*(v50 + 32))(v55, v40, v51);
    }

    sub_1B4975024(&v59, &qword_1EB8A6E68, &qword_1B4D20870);
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v43 = sub_1B4D17F6C();
    __swift_project_value_buffer(v43, qword_1EDC3CED0);

    v44 = sub_1B4D17F5C();
    v45 = sub_1B4D1873C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v61[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_1B49558AC(a1, a2, v61);
      _os_log_impl(&dword_1B4953000, v44, v45, "Query result was empty for %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1B8C7DDA0](v47, -1, -1);
      MEMORY[0x1B8C7DDA0](v46, -1, -1);
    }

    sub_1B49A9DE0(v39, type metadata accessor for FitnessContextQueryResult);
  }

  sub_1B4975024(v5, &qword_1EB8A6E60, &unk_1B4D1C190);
  return (*(*(a3 - 8) + 56))(v55, 1, 1, a3);
}

void FitnessContext.includes(request:)(uint64_t a1)
{
  Result = type metadata accessor for FitnessContextQueryResult();
  v4 = *(Result - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](Result);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *v1;
  v10 = *(*v1 + 16);
  while (v10 != v8)
  {
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
      return;
    }

    sub_1B49AA024(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8++, v7, type metadata accessor for FitnessContextQueryResult);
    v11 = *(Result + 20);
    Request = type metadata accessor for FitnessContextQueryRequest();
    LOBYTE(v11) = sub_1B49C1374(a1 + *(Request + 20));
    sub_1B49A9DE0(v7, type metadata accessor for FitnessContextQueryResult);
    if (v11)
    {
      return;
    }
  }
}

void sub_1B49A9058(void *a1)
{
  v2 = v1;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v5 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v92 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for FitnessContextQueryRequest();
  v7 = *(*(Request - 8) + 64);
  MEMORY[0x1EEE9AC00](Request);
  v9 = (&v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v84 - v13);
  Result = type metadata accessor for FitnessContextQueryResult();
  v15 = *(Result - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](Result);
  v18 = (&v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v84 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v84 - v22);
  v24 = *v2;
  v97 = a1;
  v25 = sub_1B49A9BAC(sub_1B49A9E40, v96, v24);
  if (v26)
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v27 = sub_1B4D17F6C();
    __swift_project_value_buffer(v27, qword_1EDC3CED0);
    sub_1B49AA024(a1, v9, type metadata accessor for FitnessContextQueryRequest);
    v28 = sub_1B4D17F5C();
    v29 = sub_1B4D1873C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v98[0] = v31;
      *v30 = 136315138;
      v32 = *v9;
      v33 = v9[1];

      sub_1B49A9DE0(v9, type metadata accessor for FitnessContextQueryRequest);
      v34 = sub_1B49558AC(v32, v33, v98);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1B4953000, v28, v29, "[FitnessContext] Query request %s is not already covered in existing context. Cannot merge request into context.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1B8C7DDA0](v31, -1, -1);
      MEMORY[0x1B8C7DDA0](v30, -1, -1);
    }

    else
    {

      sub_1B49A9DE0(v9, type metadata accessor for FitnessContextQueryRequest);
    }

    return;
  }

  v35 = v25;
  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v25 >= *(v24 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v86 = Descriptor;
  Descriptor = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v84 = *(v15 + 72) * v25;
  v95 = v23;
  sub_1B49AA024(v24 + Descriptor + v84, v23, type metadata accessor for FitnessContextQueryResult);
  if (qword_1EDC3CEC8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v36 = sub_1B4D17F6C();
  v37 = __swift_project_value_buffer(v36, qword_1EDC3CED0);
  sub_1B49AA024(a1, v14, type metadata accessor for FitnessContextQueryRequest);
  v89 = v37;
  v38 = sub_1B4D17F5C();
  v39 = sub_1B4D1873C();
  v40 = os_log_type_enabled(v38, v39);
  v87 = v35;
  v88 = v24;
  v85 = Descriptor;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v98[0] = v42;
    *v41 = 136315138;
    v43 = v18;
    v44 = a1;
    v45 = v2;
    v46 = *v14;
    v47 = v14[1];

    sub_1B49A9DE0(v14, type metadata accessor for FitnessContextQueryRequest);
    v48 = sub_1B49558AC(v46, v47, v98);
    v2 = v45;
    a1 = v44;
    v18 = v43;

    *(v41 + 4) = v48;
    _os_log_impl(&dword_1B4953000, v38, v39, "[FitnessContext] Query request %s is already covered in existing context:", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1B8C7DDA0](v42, -1, -1);
    MEMORY[0x1B8C7DDA0](v41, -1, -1);
  }

  else
  {

    sub_1B49A9DE0(v14, type metadata accessor for FitnessContextQueryRequest);
  }

  v49 = v94;
  sub_1B49AA024(a1, v94, type metadata accessor for FitnessContextQueryRequest);
  v50 = sub_1B4D17F5C();
  v51 = sub_1B4D1870C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v98[0] = v53;
    *v52 = 136315138;
    v54 = v49;
    sub_1B49AA024(v49 + *(Request + 20), v92, type metadata accessor for FitnessContextQueryDescriptor);
    v55 = sub_1B4D181AC();
    v57 = v56;
    sub_1B49A9DE0(v54, type metadata accessor for FitnessContextQueryRequest);
    v58 = sub_1B49558AC(v55, v57, v98);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_1B4953000, v50, v51, "%s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1B8C7DDA0](v53, -1, -1);
    MEMORY[0x1B8C7DDA0](v52, -1, -1);
  }

  else
  {

    sub_1B49A9DE0(v49, type metadata accessor for FitnessContextQueryRequest);
  }

  v59 = v95;
  v60 = Result;
  v61 = v91;
  sub_1B49AA024(v95, v91, type metadata accessor for FitnessContextQueryResult);
  v62 = sub_1B4D17F5C();
  v63 = sub_1B4D1870C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v98[0] = v65;
    *v64 = 136315138;
    sub_1B49AA024(v61 + v60[5], v92, type metadata accessor for FitnessContextQueryDescriptor);
    v66 = sub_1B4D181AC();
    v67 = v61;
    v69 = v68;
    sub_1B49A9DE0(v67, type metadata accessor for FitnessContextQueryResult);
    v70 = sub_1B49558AC(v66, v69, v98);

    *(v64 + 4) = v70;
    _os_log_impl(&dword_1B4953000, v62, v63, "%s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    v59 = v95;
    MEMORY[0x1B8C7DDA0](v65, -1, -1);
    MEMORY[0x1B8C7DDA0](v64, -1, -1);
  }

  else
  {

    sub_1B49A9DE0(v61, type metadata accessor for FitnessContextQueryResult);
  }

  v71 = v88;
  v72 = *v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1A800;
  v74 = a1[1];
  *(inited + 32) = *a1;
  v75 = inited + 32;
  *(inited + 40) = v74;

  v76 = sub_1B49A9FA4(inited, v72);
  swift_setDeallocating();
  v77 = v95;
  sub_1B497CBA8(v75);
  sub_1B49AA024(v77 + v60[5], v18 + v60[5], type metadata accessor for FitnessContextQueryDescriptor);
  sub_1B4974FBC(v77 + v60[6], v18 + v60[6], &qword_1EB8A6E68, &qword_1B4D20870);
  v78 = v60[7];
  v79 = (v77 + v78);
  *v18 = v76;
  v80 = (v18 + v78);
  v81 = v79[1];
  *v80 = *v79;
  v80[1] = v81;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v71;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v71 = sub_1B49A9F90(v71);
    *v2 = v71;
  }

  v83 = v87;
  sub_1B49A9DE0(v77, type metadata accessor for FitnessContextQueryResult);
  if (v83 >= v71[2])
  {
    __break(1u);
  }

  else
  {
    sub_1B49AA08C(v18, v71 + v85 + v84);
    *v2 = v71;
  }
}

uint64_t sub_1B49A9A10(uint64_t a1)
{
  Request = type metadata accessor for FitnessContextQueryRequest();
  v3 = *(Request - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](Request - 8);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = sub_1B49A9DE0(v6, type metadata accessor for FitnessContextQueryRequest))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_1B49AA024(*(a1 + 48) + *(v3 + 72) * (v14 | (v13 << 6)), v6, type metadata accessor for FitnessContextQueryRequest);
    sub_1B49A9058(v6);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(a1 + 56 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B49A9BAC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for FitnessContextQueryResult() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

Swift::Void __swiftcall FitnessContext.merge(context:)(FitnessIntelligence::FitnessContext context)
{
  v1 = *context.queryResults._rawValue;

  sub_1B49975EC(v2);
}

uint64_t sub_1B49A9CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessContextQueryResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for FitnessContextClient(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for FitnessContextClient(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B49A9DE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49A9E40()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for FitnessContextQueryResult() + 20);
  Request = type metadata accessor for FitnessContextQueryRequest();
  return sub_1B49C1374(v1 + *(Request + 20)) & 1;
}

char *sub_1B49A9E9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E78, &qword_1B4D1C238);
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

uint64_t sub_1B49A9FA4(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1B49FA73C(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1B49AA024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49AA08C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessContextQueryResult();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B49AA104()
{
  result = qword_1EB8A6E80;
  if (!qword_1EB8A6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E80);
  }

  return result;
}

unint64_t sub_1B49AA15C()
{
  result = qword_1EB8A6E88;
  if (!qword_1EB8A6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E88);
  }

  return result;
}

uint64_t sub_1B49AA1B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49AA274;

  return sub_1B49AA62C(a1);
}

uint64_t sub_1B49AA274(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_1B49AA374(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4992854(a1, v5);
  v6 = [*&v5[*(v2 + 24)] effectiveTypeIdentifier];
  if (qword_1F2CB8798 == v6 || unk_1F2CB87A0 == v6)
  {
    sub_1B49AA7C0(v5);
  }

  else
  {
    v8 = FIShouldTrackTrainingLoad();
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E98, &qword_1B4D1C2A0);
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EA0, &qword_1B4D1C2A8) - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1B4D1A800;
      v13 = *(v2 + 36);
      v14 = sub_1B4D1777C();
      (*(*(v14 - 8) + 16))(v12 + v11, &v5[v13], v14);
      sub_1B49AA7C0(v5);
      type metadata accessor for FitnessContextQueryDescriptor();
      swift_storeEnumTagMultiPayload();
      v15 = sub_1B4C94F64(v12);
      swift_setDeallocating();
      sub_1B49AA81C(v12 + v11);
      swift_deallocClassInstance();
      return v15;
    }

    sub_1B49AA7C0(v5);
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v17 = sub_1B4D17F6C();
    __swift_project_value_buffer(v17, qword_1EDC36F00);
    v18 = sub_1B4D17F5C();
    v19 = sub_1B4D1873C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B4953000, v18, v19, "Effort Reminder turned off, skipping training load query", v20, 2u);
      MEMORY[0x1B8C7DDA0](v20, -1, -1);
    }
  }

  return sub_1B4C94F64(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1B49AA64C()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  *(v0 + 16) = &type metadata for TrainingLoadFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67E8, &qword_1B4D1AB00);
  v9 = sub_1B4D181CC();
  v10 = v4;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000013, 0x80000001B4D4BEF0);
  (*(v3 + 8))(v9, v10, &type metadata for TrainingLoadContext, &type metadata for TrainingLoadContext, v2, v3);

  v5 = *(v0 + 32);
  if (v5 == 5)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E90, &qword_1B4D1C298);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B4D1A800;
    *(v6 + 32) = v5;
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1B49AA7C0(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B49AA81C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EA0, &qword_1B4D1C2A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 HKActivitySummaryRepresentable.pausedInterval.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t type metadata accessor for HKActivitySummaryRepresentable()
{
  result = qword_1EDC38498;
  if (!qword_1EDC38498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HKActivitySummaryRepresentable.activityMoveMode.getter()
{
  v1 = (v0 + *(type metadata accessor for HKActivitySummaryRepresentable() + 72));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t HKActivitySummaryRepresentable.activityMoveMode.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HKActivitySummaryRepresentable();
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HKActivitySummaryRepresentable.isWheelchairUser.setter(char a1)
{
  result = type metadata accessor for HKActivitySummaryRepresentable();
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t static HKActivitySummaryRepresentable.from(_:pausedIntervals:rings:moveTotal:moveMinutestotal:exerciseTotal:standTotal:stepsTotal:flightsTotal:distanceTotal:activityMoveMode:isWheelchairUser:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X7>, uint64_t a8@<X8>, void *a9, void *a10, id a11, char a12, unsigned __int8 a13)
{
  v166 = a6;
  v167 = a7;
  v169 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v170 = &v159 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v174 = &v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v175 = &v159 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v173 = &v159 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v159 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v172 = &v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v171 = &v159 - v35;
  v36 = *a1;
  v37 = *(a2 + 16);
  if (!v37)
  {
    v39 = 0;
    v40 = 0;
    v42 = 1;
    if (a3)
    {
      goto LABEL_13;
    }

LABEL_16:
    LODWORD(v176) = !v42;
    v50 = type metadata accessor for HKActivitySummaryRepresentable();
    v51 = v50[7];
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    v53 = *(*(v52 - 8) + 56);
    v54 = v169;
    v53(v169 + v51, 1, 1, v52);
    v53(v54 + v50[8], 1, 1, v52);
    v55 = v50[9];
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v57 = *(*(v56 - 8) + 56);
    v57(v54 + v55, 1, 1, v56);
    v57(v54 + v50[10], 1, 1, v56);
    v57(v54 + v50[11], 1, 1, v56);
    v57(v54 + v50[12], 1, 1, v56);
    v58 = v50[13];
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v60 = *(*(v59 - 8) + 56);
    v60(v54 + v58, 1, 1, v59);
    v60(v54 + v50[14], 1, 1, v59);
    v60(v54 + v50[15], 1, 1, v59);
    v60(v54 + v50[16], 1, 1, v59);
    v61 = v50[17];
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    result = (*(*(v62 - 8) + 56))(v54 + v61, 1, 1, v62);
    v64 = v50[19];
    v65 = v54 + v50[18];
    *v54 = v36;
    *(v54 + 8) = v39;
    *(v54 + 16) = v40;
    *(v54 + 24) = v42;
    *(v54 + 25) = v176;
    *v65 = 0;
    *(v65 + 8) = 1;
    *(v54 + v64) = 0;
    return result;
  }

  v38 = (a2 + 40);
  while (1)
  {
    v39 = *(v38 - 1);
    v40 = *v38;
    v41 = v36 >= v39 && v36 < v40;
    v42 = !v41;
    if (v41)
    {
      break;
    }

    v38 += 2;
    if (!--v37)
    {
      v39 = 0;
      v40 = 0;
      break;
    }
  }

  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_13:
  v168 = v30;
  v165 = v42;
  v43 = a3;
  v164 = [v43 isPaused];
  v44 = [v43 activeEnergyBurnedGoal];
  v45 = objc_opt_self();
  v46 = [v45 largeCalorieUnit];
  [v44 doubleValueForUnit_];
  v48 = v47;

  v176 = v43;
  if (a4)
  {
    v49 = a4;
LABEL_19:
    v67 = a4;
    v68 = [v45 largeCalorieUnit];
    [v49 doubleValueForUnit_];
    v162 = v69;

    goto LABEL_20;
  }

  v66 = [v43 activeEnergyBurned];
  if (v66)
  {
    v49 = v66;
    goto LABEL_19;
  }

  v162 = 0;
LABEL_20:
  v70 = v176;
  v71 = [v176 appleMoveTimeGoal];
  v72 = [v45 minuteUnit];
  [v71 doubleValueForUnit_];
  v74 = v73;

  if (a5)
  {
    v75 = a5;
LABEL_24:
    v77 = v166;
    v78 = a5;
    v79 = [v45 minuteUnit];
    [v75 doubleValueForUnit_];
    v163 = v80;

    goto LABEL_25;
  }

  v76 = [v70 appleMoveTime];
  if (v76)
  {
    v75 = v76;
    goto LABEL_24;
  }

  v163 = 0;
  v77 = v166;
LABEL_25:
  v81 = v176;
  v82 = [v176 exerciseTimeGoal];
  if (v82)
  {
    v83 = v82;
    v84 = [v45 minuteUnit];
    [v83 doubleValueForUnit_];
    v86 = v85;

    if (v77)
    {
LABEL_27:
      v87 = v77;
LABEL_31:
      v89 = v77;
      v90 = [v45 minuteUnit];
      [v87 doubleValueForUnit_];

      goto LABEL_32;
    }
  }

  else
  {
    v86 = 0.0;
    if (v77)
    {
      goto LABEL_27;
    }
  }

  v88 = [v81 appleExerciseTime];
  if (v88)
  {
    v87 = v88;
    goto LABEL_31;
  }

LABEL_32:
  v91 = [v81 standHoursGoal];
  if (v91)
  {
    v92 = v91;
    v93 = [v45 countUnit];
    [v92 doubleValueForUnit_];
    v95 = v94;
  }

  else
  {
    v95 = 0.0;
  }

  v96 = v176;
  v97 = [v176 appleStandHours];
  v98 = [v45 countUnit];
  [v97 doubleValueForUnit_];
  v166 = v99;

  v100 = v167;
  if (v167)
  {
    v101 = v167;
  }

  else
  {
    v102 = [v96 stepCount];
    if (!v102)
    {
      v103 = v168;
      v106 = a10;
      if (a9)
      {
        goto LABEL_40;
      }

      goto LABEL_45;
    }

    v101 = v102;
  }

  v103 = v168;
  v104 = v100;
  v105 = [v45 countUnit];
  [v101 doubleValueForUnit_];

  v106 = a10;
  if (a9)
  {
LABEL_40:
    v107 = a9;
LABEL_47:
    v109 = a9;
    v110 = [v45 countUnit];
    [v107 doubleValueForUnit_];

    goto LABEL_48;
  }

LABEL_45:
  v108 = [v176 _flightsClimbed];
  if (v108)
  {
    v107 = v108;
    goto LABEL_47;
  }

LABEL_48:
  v112 = v176;
  if (v106)
  {
    v113 = v106;
  }

  else
  {
    v114 = [v176 distanceWalkingRunning];
    if (!v114)
    {
      v117 = a13;
      if ((a12 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    v113 = v114;
  }

  v115 = v106;
  v116 = [v45 meterUnit];
  [v113 doubleValueForUnit_];

  v117 = a13;
  if (a12)
  {
LABEL_53:
    a11 = [v112 activityMoveMode];
  }

LABEL_54:
  if (v117 == 2)
  {
    v117 = [v112 _wheelchairUse] == 2;
  }

  v160 = [v112 _activitySummaryIndex];
  v161 = v117;
  if (v48 <= 0.0)
  {
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    (*(*(v122 - 8) + 56))(v171, 1, 1, v122);
  }

  else
  {
    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v118 = qword_1EDC36DF8;
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v119 = v118;
    v120 = v171;
    sub_1B4D1741C();
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
  }

  v167 = a11;
  if (qword_1EDC36DF0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDC36DF8;
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  v124 = v123;
  v125 = v172;
  sub_1B4D1741C();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v127 = 1;
  (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
  if (v74 > 0.0)
  {
    v128 = [objc_opt_self() minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v127 = 0;
  }

  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v130 = 1;
  (*(*(v129 - 8) + 56))(v103, v127, 1, v129);
  v131 = objc_opt_self();
  v132 = [v131 minutes];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v133 = v173;
  sub_1B4D1741C();
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v135 = *(*(v134 - 8) + 56);
  v135(v133, 0, 1, v134);
  if (v86 > 0.0)
  {
    v136 = [v131 minutes];
    sub_1B4D1741C();
    v130 = 0;
  }

  v137 = 1;
  v135(v175, v130, 1, v134);
  v138 = [v131 minutes];
  v139 = v174;
  sub_1B4D1741C();
  v135(v139, 0, 1, v134);
  v140 = v170;
  if (v95 > 0.0)
  {
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v141 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v142 = v141;
    sub_1B4D1741C();
    v137 = 0;
  }

  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  (*(*(v143 - 8) + 56))(v140, v137, 1, v143);
  v144 = type metadata accessor for HKActivitySummaryRepresentable();
  v145 = v144[14];
  if (qword_1EDC36E70 != -1)
  {
    swift_once();
  }

  v146 = qword_1EDC36E78;
  type metadata accessor for UnitCount();
  v147 = v146;
  v148 = v169;
  sub_1B4D1741C();
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v150 = *(*(v149 - 8) + 56);
  v150(v148 + v145, 0, 1, v149);
  v151 = v144[15];
  sub_1B4D1741C();
  v150(v148 + v151, 0, 1, v149);
  v152 = v144[16];
  sub_1B4D1741C();
  v150(v148 + v152, 0, 1, v149);
  v153 = v144[17];
  v154 = [objc_opt_self() meters];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();

  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v155 - 8) + 56))(v148 + v153, 0, 1, v155);
  LOBYTE(v153) = v161 & 1;
  v156 = v144[19];
  v157 = v148 + v144[18];
  *v148 = v160;
  *(v148 + 8) = v39;
  *(v148 + 16) = v40;
  v158 = v164;
  *(v148 + 24) = v165;
  *(v148 + 25) = v158;
  sub_1B498B270(v171, v148 + v144[7], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B498B270(v172, v148 + v144[8], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B498B270(v168, v148 + v144[9], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v173, v148 + v144[10], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v175, v148 + v144[11], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v174, v148 + v144[12], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  result = sub_1B498B270(v170, v148 + v144[13], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  *v157 = v167;
  *(v157 + 8) = 0;
  *(v148 + v156) = v153;
  return result;
}

unint64_t sub_1B49ABE8C(char a1)
{
  result = 0x646E496568636163;
  switch(a1)
  {
    case 1:
      result = 0x6E49646573756170;
      break;
    case 2:
      result = 0x6465737561507369;
      break;
    case 3:
      result = 0x6C616F4765766F6DLL;
      break;
    case 4:
      result = 0x676F725065766F6DLL;
      break;
    case 5:
      result = 0x756E694D65766F6DLL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6573696372657865;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x616F47646E617473;
      break;
    case 10:
      result = 0x6F7250646E617473;
      break;
    case 11:
      result = 0x6E756F4370657473;
      break;
    case 12:
      result = 0x6F43746867696C66;
      break;
    case 13:
      result = 0x65636E6174736964;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B49AC088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B49B002C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B49AC0BC(uint64_t a1)
{
  v2 = sub_1B49AF8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49AC0F8(uint64_t a1)
{
  v2 = sub_1B49AF8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKActivitySummaryRepresentable.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EA8, &unk_1B4D1C2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49AF8A4();
  sub_1B4D18EFC();
  *&v32 = *v3;
  v34 = 0;
  sub_1B49AF8F8();
  sub_1B4D18D0C();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v32 = *(v3 + 8);
    v33 = v11;
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EC0, &qword_1B4D45F60);
    sub_1B49AF9A0(&qword_1EB8A6EC8, sub_1B49AF8F8);
    sub_1B4D18CAC();
    v12 = *(v3 + 25);
    LOBYTE(v32) = 2;
    sub_1B4D18CCC();
    v31 = type metadata accessor for HKActivitySummaryRepresentable();
    v13 = v31[7];
    LOBYTE(v32) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B4D18CAC();
    v14 = v31;
    v15 = v31[8];
    LOBYTE(v32) = 4;
    sub_1B4D18CAC();
    v16 = v14[9];
    LOBYTE(v32) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B4D18CAC();
    v17 = v31;
    v18 = v31[10];
    LOBYTE(v32) = 6;
    sub_1B4D18CAC();
    v19 = v17[11];
    LOBYTE(v32) = 7;
    sub_1B4D18CAC();
    v20 = v17[12];
    LOBYTE(v32) = 8;
    sub_1B4D18CAC();
    v21 = v17[13];
    LOBYTE(v32) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    sub_1B49B0578(&qword_1EB8A6EE0, &qword_1EB8A6870, &unk_1B4D1C2C0);
    sub_1B4D18CAC();
    v22 = v31[14];
    LOBYTE(v32) = 10;
    sub_1B4D18CAC();
    v23 = v31[15];
    LOBYTE(v32) = 11;
    sub_1B4D18CAC();
    v24 = v31[16];
    LOBYTE(v32) = 12;
    sub_1B4D18CAC();
    v25 = v31[17];
    LOBYTE(v32) = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4D18CAC();
    v26 = (v3 + v31[18]);
    v27 = *v26;
    LOBYTE(v26) = *(v26 + 8);
    *&v32 = v27;
    BYTE8(v32) = v26;
    v34 = 14;
    type metadata accessor for HKActivityMoveMode(0);
    sub_1B49AFA18(&qword_1EB8A6EF0);
    sub_1B4D18CAC();
    v28 = *(v3 + v31[19]);
    LOBYTE(v32) = 15;
    sub_1B4D18C7C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HKActivitySummaryRepresentable.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v64 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v56 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EF8, &qword_1B4D1C2E0);
  v67 = *(v32 - 8);
  v68 = v32;
  v33 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v56 - v34;
  v36 = type metadata accessor for HKActivitySummaryRepresentable();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v56 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1[3];
  v40 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1B49AF8A4();
  v69 = v35;
  v42 = v70;
  sub_1B4D18EEC();
  if (v42)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v71);
  }

  v43 = v31;
  v57 = v36;
  v70 = v39;
  v74 = 0;
  sub_1B49AF94C();
  sub_1B4D18C0C();
  v44 = v70;
  *v70 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EC0, &qword_1B4D45F60);
  v74 = 1;
  sub_1B49AF9A0(&qword_1EB8A6F08, sub_1B49AF94C);
  sub_1B4D18BAC();
  v45 = v73;
  *(v44 + 1) = v72;
  *(v44 + 24) = v45;
  LOBYTE(v72) = 2;
  *(v44 + 25) = sub_1B4D18BCC() & 1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  LOBYTE(v72) = 3;
  sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80);
  v56 = v46;
  sub_1B4D18BAC();
  sub_1B498B270(v43, v44 + v57[7], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  LOBYTE(v72) = 4;
  sub_1B4D18BAC();
  v47 = v57;
  sub_1B498B270(v28, v44 + v57[8], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  LOBYTE(v72) = 5;
  sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
  v56 = 0;
  sub_1B4D18BAC();
  sub_1B498B270(v24, v44 + v47[9], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  LOBYTE(v72) = 6;
  v48 = v66;
  sub_1B4D18BAC();
  sub_1B498B270(v48, v44 + v47[10], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  LOBYTE(v72) = 7;
  v49 = v65;
  sub_1B4D18BAC();
  sub_1B498B270(v49, v44 + v47[11], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  LOBYTE(v72) = 8;
  v50 = v64;
  sub_1B4D18BAC();
  sub_1B498B270(v50, v70 + v57[12], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  LOBYTE(v72) = 9;
  sub_1B49B0578(&qword_1EB8A6F20, &qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B4D18BAC();
  sub_1B498B270(v63, v70 + v57[13], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  LOBYTE(v72) = 10;
  sub_1B4D18BAC();
  sub_1B498B270(v62, v70 + v57[14], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  LOBYTE(v72) = 11;
  sub_1B4D18BAC();
  sub_1B498B270(v61, v70 + v57[15], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  LOBYTE(v72) = 12;
  sub_1B4D18BAC();
  sub_1B498B270(v60, v70 + v57[16], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  LOBYTE(v72) = 13;
  sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4D18BAC();
  sub_1B498B270(v59, v70 + v57[17], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  type metadata accessor for HKActivityMoveMode(0);
  v74 = 14;
  sub_1B49AFA18(&qword_1EB8A6F30);
  sub_1B4D18BAC();
  v51 = v70 + v57[18];
  v52 = BYTE8(v72);
  *v51 = v72;
  v51[8] = v52;
  LOBYTE(v72) = 15;
  LOBYTE(v50) = sub_1B4D18B7C();
  v53 = v57[19];
  (*(v67 + 8))(v69, v68);
  v54 = v70;
  *(v70 + v53) = v50;
  sub_1B49AFA5C(v54, v58);
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  return sub_1B49AFAC0(v54);
}

__n128 sub_1B49AD828@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1B49ADA80(uint64_t a1)
{
  v2 = (v1 + *(a1 + 72));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

BOOL _s19FitnessIntelligence30HKActivitySummaryRepresentableV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v202 = *(v4 - 8);
  v5 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v199 = &v192[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v200 = &v192[-v9];
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F50, &qword_1B4D425A0);
  v10 = *(*(v201 - 8) + 64);
  MEMORY[0x1EEE9AC00](v201);
  v204 = &v192[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v214 = *(v12 - 8);
  v215 = v12;
  v13 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v209 = &v192[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v203 = &v192[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v205 = &v192[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v207 = &v192[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v211 = &v192[-v23];
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F58, &unk_1B4D1C540);
  v24 = *(*(v213 - 8) + 64);
  MEMORY[0x1EEE9AC00](v213);
  v206 = &v192[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v210 = &v192[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v208 = &v192[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v217 = &v192[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v33 = *(v32 - 8);
  v225 = v32;
  v226 = v33;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v222 = &v192[-v35];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v212 = &v192[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v39);
  v218 = &v192[-v40];
  MEMORY[0x1EEE9AC00](v41);
  v220 = &v192[-v42];
  MEMORY[0x1EEE9AC00](v43);
  v223 = &v192[-v44];
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F60, &qword_1B4D2C420);
  v45 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v216 = &v192[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v47);
  v219 = &v192[-v48];
  MEMORY[0x1EEE9AC00](v49);
  v221 = &v192[-v50];
  MEMORY[0x1EEE9AC00](v51);
  v224 = &v192[-v52];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v228 = *(v53 - 8);
  v54 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v192[-v55];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v60 = &v192[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v192[-v62];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F68, &unk_1B4D1C550);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v192[-((v66 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v192[-v69];
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }

LABEL_8:
    if (*(a1 + 25) != *(a2 + 25))
    {
      return 0;
    }

    v195 = v4;
    v72 = type metadata accessor for HKActivitySummaryRepresentable();
    v198 = a2;
    v197 = v72;
    v73 = *(v72 + 28);
    v74 = *(v64 + 48);
    v196 = a1;
    sub_1B4974FBC(a1 + v73, v70, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v75 = v198 + v73;
    v76 = v74;
    sub_1B4974FBC(v75, &v70[v74], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v77 = *(v228 + 48);
    if (v77(v70, 1, v53) == 1)
    {
      if (v77(&v70[v76], 1, v53) == 1)
      {
        v194 = v77;
        sub_1B4975024(v70, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B4974FBC(v70, v63, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      if (v77(&v70[v76], 1, v53) != 1)
      {
        v194 = v77;
        v81 = v76;
        v82 = v228;
        (*(v228 + 32))(v56, &v70[v81], v53);
        sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
        v193 = sub_1B4D1816C();
        v83 = *(v82 + 8);
        v83(v56, v53);
        v83(v63, v53);
        sub_1B4975024(v70, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        if ((v193 & 1) == 0)
        {
          return 0;
        }

LABEL_16:
        v84 = v197[8];
        v85 = *(v64 + 48);
        sub_1B4974FBC(v196 + v84, v67, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        sub_1B4974FBC(v198 + v84, &v67[v85], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        v86 = v194;
        if (v194(v67, 1, v53) == 1)
        {
          if (v86(&v67[v85], 1, v53) == 1)
          {
            sub_1B4975024(v67, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
            goto LABEL_23;
          }
        }

        else
        {
          sub_1B4974FBC(v67, v60, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          if (v86(&v67[v85], 1, v53) != 1)
          {
            v87 = v228;
            (*(v228 + 32))(v56, &v67[v85], v53);
            sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
            v88 = sub_1B4D1816C();
            v89 = *(v87 + 8);
            v89(v56, v53);
            v89(v60, v53);
            sub_1B4975024(v67, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
            if ((v88 & 1) == 0)
            {
              return 0;
            }

LABEL_23:
            v90 = v197[9];
            v91 = *(v227 + 48);
            v92 = v196;
            v93 = v224;
            sub_1B4974FBC(v196 + v90, v224, &qword_1EB8A6C90, &unk_1B4D1BBD0);
            sub_1B4974FBC(v198 + v90, &v93[v91], &qword_1EB8A6C90, &unk_1B4D1BBD0);
            v94 = v225;
            v95 = v226;
            v96 = *(v226 + 48);
            if (v96(v93, 1, v225) == 1)
            {
              if (v96(&v93[v91], 1, v94) != 1)
              {
                goto LABEL_39;
              }

              sub_1B4975024(v93, &qword_1EB8A6C90, &unk_1B4D1BBD0);
            }

            else
            {
              v97 = v223;
              sub_1B4974FBC(v93, v223, &qword_1EB8A6C90, &unk_1B4D1BBD0);
              if (v96(&v93[v91], 1, v94) == 1)
              {
                (*(v95 + 8))(v97, v94);
                goto LABEL_39;
              }

              v98 = v222;
              (*(v95 + 32))(v222, &v93[v91], v94);
              sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
              v99 = v95;
              v100 = sub_1B4D1816C();
              v101 = *(v99 + 8);
              v101(v98, v94);
              v101(v97, v94);
              sub_1B4975024(v93, &qword_1EB8A6C90, &unk_1B4D1BBD0);
              if ((v100 & 1) == 0)
              {
                return 0;
              }
            }

            v102 = v92;
            v103 = v197[10];
            v104 = *(v227 + 48);
            v93 = v221;
            sub_1B4974FBC(v102 + v103, v221, &qword_1EB8A6C90, &unk_1B4D1BBD0);
            sub_1B4974FBC(v198 + v103, &v93[v104], &qword_1EB8A6C90, &unk_1B4D1BBD0);
            if (v96(v93, 1, v94) == 1)
            {
              v105 = v96(&v93[v104], 1, v94);
              v106 = v226;
              if (v105 != 1)
              {
                goto LABEL_39;
              }

              sub_1B4975024(v93, &qword_1EB8A6C90, &unk_1B4D1BBD0);
            }

            else
            {
              v107 = v220;
              sub_1B4974FBC(v93, v220, &qword_1EB8A6C90, &unk_1B4D1BBD0);
              v108 = v96(&v93[v104], 1, v94);
              v106 = v226;
              if (v108 == 1)
              {
                goto LABEL_38;
              }

              v109 = v222;
              (*(v226 + 32))(v222, &v93[v104], v94);
              sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
              v110 = sub_1B4D1816C();
              v111 = *(v106 + 8);
              v111(v109, v94);
              v111(v107, v94);
              sub_1B4975024(v93, &qword_1EB8A6C90, &unk_1B4D1BBD0);
              if ((v110 & 1) == 0)
              {
                return 0;
              }
            }

            v112 = v197[11];
            v113 = *(v227 + 48);
            v93 = v219;
            sub_1B4974FBC(v196 + v112, v219, &qword_1EB8A6C90, &unk_1B4D1BBD0);
            sub_1B4974FBC(v198 + v112, &v93[v113], &qword_1EB8A6C90, &unk_1B4D1BBD0);
            if (v96(v93, 1, v94) == 1)
            {
              if (v96(&v93[v113], 1, v94) == 1)
              {
                sub_1B4975024(v93, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                goto LABEL_44;
              }

LABEL_39:
              v78 = &qword_1EB8A6F60;
              v79 = &qword_1B4D2C420;
              v80 = v93;
              goto LABEL_40;
            }

            v107 = v218;
            sub_1B4974FBC(v93, v218, &qword_1EB8A6C90, &unk_1B4D1BBD0);
            if (v96(&v93[v113], 1, v94) != 1)
            {
              v114 = v222;
              (*(v106 + 32))(v222, &v93[v113], v94);
              sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
              v115 = sub_1B4D1816C();
              v116 = *(v106 + 8);
              v116(v114, v94);
              v116(v107, v94);
              sub_1B4975024(v93, &qword_1EB8A6C90, &unk_1B4D1BBD0);
              if ((v115 & 1) == 0)
              {
                return 0;
              }

LABEL_44:
              v117 = v197[12];
              v118 = *(v227 + 48);
              v119 = v216;
              sub_1B4974FBC(v196 + v117, v216, &qword_1EB8A6C90, &unk_1B4D1BBD0);
              sub_1B4974FBC(v198 + v117, &v119[v118], &qword_1EB8A6C90, &unk_1B4D1BBD0);
              if (v96(v119, 1, v94) == 1)
              {
                v120 = v96(&v119[v118], 1, v94);
                v121 = v217;
                if (v120 == 1)
                {
                  sub_1B4975024(v119, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                  goto LABEL_52;
                }
              }

              else
              {
                v122 = v212;
                sub_1B4974FBC(v119, v212, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                v123 = v96(&v119[v118], 1, v94);
                v121 = v217;
                if (v123 != 1)
                {
                  v124 = v222;
                  (*(v106 + 32))(v222, &v119[v118], v94);
                  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
                  v125 = v122;
                  v126 = sub_1B4D1816C();
                  v127 = *(v106 + 8);
                  v127(v124, v94);
                  v127(v125, v94);
                  sub_1B4975024(v119, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                  if ((v126 & 1) == 0)
                  {
                    return 0;
                  }

LABEL_52:
                  v128 = v197[13];
                  v129 = *(v213 + 48);
                  sub_1B4974FBC(v196 + v128, v121, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                  sub_1B4974FBC(v198 + v128, v121 + v129, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                  v130 = v215;
                  v131 = *(v214 + 48);
                  if (v131(v121, 1, v215) == 1)
                  {
                    if (v131((v121 + v129), 1, v130) == 1)
                    {
                      sub_1B4975024(v121, &qword_1EB8A6D18, &unk_1B4D1BCA0);
LABEL_59:
                      v139 = v197[14];
                      v140 = *(v213 + 48);
                      v119 = v208;
                      sub_1B4974FBC(v196 + v139, v208, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                      sub_1B4974FBC(v198 + v139, &v119[v140], &qword_1EB8A6D18, &unk_1B4D1BCA0);
                      v141 = v215;
                      if (v131(v119, 1, v215) == 1)
                      {
                        v142 = v131;
                        if (v131(&v119[v140], 1, v141) == 1)
                        {
                          sub_1B4975024(v119, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                          goto LABEL_66;
                        }
                      }

                      else
                      {
                        v143 = v207;
                        sub_1B4974FBC(v119, v207, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                        v142 = v131;
                        if (v131(&v119[v140], 1, v141) != 1)
                        {
                          v144 = v214;
                          v145 = v209;
                          (*(v214 + 32))(v209, &v119[v140], v141);
                          sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
                          v146 = sub_1B4D1816C();
                          v147 = *(v144 + 8);
                          v147(v145, v141);
                          v147(v143, v141);
                          sub_1B4975024(v119, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                          if ((v146 & 1) == 0)
                          {
                            return 0;
                          }

LABEL_66:
                          v148 = v197[15];
                          v149 = *(v213 + 48);
                          v150 = v210;
                          sub_1B4974FBC(v196 + v148, v210, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                          sub_1B4974FBC(v198 + v148, &v150[v149], &qword_1EB8A6D18, &unk_1B4D1BCA0);
                          if (v142(v150, 1, v215) == 1)
                          {
                            if (v142(&v210[v149], 1, v215) == 1)
                            {
                              sub_1B4975024(v210, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                              goto LABEL_73;
                            }
                          }

                          else
                          {
                            v151 = v210;
                            sub_1B4974FBC(v210, v205, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                            if (v142(&v151[v149], 1, v215) != 1)
                            {
                              v153 = v214;
                              v152 = v215;
                              v154 = v209;
                              v155 = v210;
                              (*(v214 + 32))(v209, &v210[v149], v215);
                              sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
                              v156 = v205;
                              v157 = sub_1B4D1816C();
                              v158 = *(v153 + 8);
                              v158(v154, v152);
                              v158(v156, v152);
                              sub_1B4975024(v155, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                              if ((v157 & 1) == 0)
                              {
                                return 0;
                              }

LABEL_73:
                              v159 = v197[16];
                              v160 = *(v213 + 48);
                              v161 = v206;
                              sub_1B4974FBC(v196 + v159, v206, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                              sub_1B4974FBC(v198 + v159, &v161[v160], &qword_1EB8A6D18, &unk_1B4D1BCA0);
                              if (v142(v161, 1, v215) == 1)
                              {
                                if (v142(&v206[v160], 1, v215) == 1)
                                {
                                  sub_1B4975024(v206, &qword_1EB8A6D18, &unk_1B4D1BCA0);
LABEL_80:
                                  v171 = v197[17];
                                  v172 = *(v201 + 48);
                                  v173 = v204;
                                  sub_1B4974FBC(v196 + v171, v204, &qword_1EB8A6CC0, &unk_1B4D1BC00);
                                  sub_1B4974FBC(v198 + v171, &v173[v172], &qword_1EB8A6CC0, &unk_1B4D1BC00);
                                  v174 = *(v202 + 48);
                                  if (v174(v173, 1, v195) == 1)
                                  {
                                    if (v174(&v204[v172], 1, v195) == 1)
                                    {
                                      sub_1B4975024(v204, &qword_1EB8A6CC0, &unk_1B4D1BC00);
LABEL_87:
                                      v184 = v197[18];
                                      v185 = (v196 + v184);
                                      v186 = *(v196 + v184 + 8);
                                      v187 = (v198 + v184);
                                      v188 = *(v198 + v184 + 8);
                                      if (v186)
                                      {
                                        if (!v188)
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        if (*v185 != *v187)
                                        {
                                          LOBYTE(v188) = 1;
                                        }

                                        if (v188)
                                        {
                                          return 0;
                                        }
                                      }

                                      v189 = v197[19];
                                      v190 = *(v196 + v189);
                                      v191 = *(v198 + v189);
                                      if (v190 != 2)
                                      {
                                        return v191 != 2 && ((v191 ^ v190) & 1) == 0;
                                      }

                                      return v191 == 2;
                                    }
                                  }

                                  else
                                  {
                                    v175 = v204;
                                    sub_1B4974FBC(v204, v200, &qword_1EB8A6CC0, &unk_1B4D1BC00);
                                    if (v174(&v175[v172], 1, v195) != 1)
                                    {
                                      v176 = v202;
                                      v177 = v204;
                                      v178 = &v204[v172];
                                      v179 = v199;
                                      v180 = v195;
                                      (*(v202 + 32))(v199, v178, v195);
                                      sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
                                      v181 = v200;
                                      v182 = sub_1B4D1816C();
                                      v183 = *(v176 + 8);
                                      v183(v179, v180);
                                      v183(v181, v180);
                                      sub_1B4975024(v177, &qword_1EB8A6CC0, &unk_1B4D1BC00);
                                      if ((v182 & 1) == 0)
                                      {
                                        return 0;
                                      }

                                      goto LABEL_87;
                                    }

                                    (*(v202 + 8))(v200, v195);
                                  }

                                  v78 = &qword_1EB8A6F50;
                                  v79 = &qword_1B4D425A0;
                                  v80 = v204;
LABEL_40:
                                  sub_1B4975024(v80, v78, v79);
                                  return 0;
                                }
                              }

                              else
                              {
                                v162 = v206;
                                sub_1B4974FBC(v206, v203, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                                if (v142(&v162[v160], 1, v215) != 1)
                                {
                                  v164 = v214;
                                  v163 = v215;
                                  v165 = v206;
                                  v166 = &v206[v160];
                                  v167 = v209;
                                  (*(v214 + 32))(v209, v166, v215);
                                  sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
                                  v168 = v203;
                                  v169 = sub_1B4D1816C();
                                  v170 = *(v164 + 8);
                                  v170(v167, v163);
                                  v170(v168, v163);
                                  sub_1B4975024(v165, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                                  if ((v169 & 1) == 0)
                                  {
                                    return 0;
                                  }

                                  goto LABEL_80;
                                }

                                (*(v214 + 8))(v203, v215);
                              }

                              v78 = &qword_1EB8A6F58;
                              v79 = &unk_1B4D1C540;
                              v80 = v206;
                              goto LABEL_40;
                            }

                            (*(v214 + 8))(v205, v215);
                          }

                          v78 = &qword_1EB8A6F58;
                          v79 = &unk_1B4D1C540;
                          v80 = v210;
                          goto LABEL_40;
                        }

                        (*(v214 + 8))(v143, v141);
                      }

                      v78 = &qword_1EB8A6F58;
                      v79 = &unk_1B4D1C540;
LABEL_50:
                      v80 = v119;
                      goto LABEL_40;
                    }
                  }

                  else
                  {
                    v132 = v211;
                    sub_1B4974FBC(v121, v211, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                    if (v131((v121 + v129), 1, v130) != 1)
                    {
                      v133 = v214;
                      v134 = v209;
                      (*(v214 + 32))(v209, v121 + v129, v130);
                      sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
                      v135 = v121;
                      v136 = v130;
                      v137 = sub_1B4D1816C();
                      v138 = *(v133 + 8);
                      v138(v134, v136);
                      v138(v132, v136);
                      sub_1B4975024(v135, &qword_1EB8A6D18, &unk_1B4D1BCA0);
                      if ((v137 & 1) == 0)
                      {
                        return 0;
                      }

                      goto LABEL_59;
                    }

                    (*(v214 + 8))(v132, v130);
                  }

                  v78 = &qword_1EB8A6F58;
                  v79 = &unk_1B4D1C540;
                  v80 = v121;
                  goto LABEL_40;
                }

                (*(v106 + 8))(v122, v94);
              }

              v78 = &qword_1EB8A6F60;
              v79 = &qword_1B4D2C420;
              goto LABEL_50;
            }

LABEL_38:
            (*(v106 + 8))(v107, v94);
            goto LABEL_39;
          }

          (*(v228 + 8))(v60, v53);
        }

        v78 = &qword_1EB8A6F68;
        v79 = &unk_1B4D1C550;
        v80 = v67;
        goto LABEL_40;
      }

      (*(v228 + 8))(v63, v53);
    }

    v78 = &qword_1EB8A6F68;
    v79 = &unk_1B4D1C550;
    v80 = v70;
    goto LABEL_40;
  }

  result = 0;
  if ((*(a2 + 24) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    goto LABEL_8;
  }

  return result;
}

unint64_t sub_1B49AF8A4()
{
  result = qword_1EB8A6EB0;
  if (!qword_1EB8A6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6EB0);
  }

  return result;
}

unint64_t sub_1B49AF8F8()
{
  result = qword_1EB8A6EB8;
  if (!qword_1EB8A6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6EB8);
  }

  return result;
}

unint64_t sub_1B49AF94C()
{
  result = qword_1EB8A6F00;
  if (!qword_1EB8A6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6F00);
  }

  return result;
}

uint64_t sub_1B49AF9A0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6EC0, &qword_1B4D45F60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B49AFA18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKActivityMoveMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B49AFA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49AFAC0(uint64_t a1)
{
  v2 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B49AFB44()
{
  sub_1B49AFCD8(319, &qword_1EDC378D0, &qword_1EB8A6EC0, &qword_1B4D45F60);
  if (v0 <= 0x3F)
  {
    sub_1B49AFCD8(319, &qword_1EDC3CB48, &qword_1EB8A6868, &unk_1B4D1AB80);
    if (v1 <= 0x3F)
    {
      sub_1B49AFCD8(319, &qword_1EDC3CB20, &qword_1EB8A6850, &unk_1B4D1BC10);
      if (v2 <= 0x3F)
      {
        sub_1B49AFCD8(319, &qword_1EDC3CB50, &qword_1EB8A6870, &unk_1B4D1C2C0);
        if (v3 <= 0x3F)
        {
          sub_1B49AFCD8(319, &qword_1EDC3CB30, &qword_1EB8A6830, &unk_1B4D1AB40);
          if (v4 <= 0x3F)
          {
            sub_1B49AFD2C();
            if (v5 <= 0x3F)
            {
              sub_1B49AFD84();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B49AFCD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1B4D1880C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B49AFD2C()
{
  if (!qword_1EDC378A0)
  {
    type metadata accessor for HKActivityMoveMode(255);
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC378A0);
    }
  }
}

void sub_1B49AFD84()
{
  if (!qword_1EDC3CEB0)
  {
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC3CEB0);
    }
  }
}

uint64_t getEnumTagSinglePayload for HKActivitySummaryRepresentable.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HKActivitySummaryRepresentable.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B49AFF28()
{
  result = qword_1EB8A6F38;
  if (!qword_1EB8A6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6F38);
  }

  return result;
}

unint64_t sub_1B49AFF80()
{
  result = qword_1EB8A6F40;
  if (!qword_1EB8A6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6F40);
  }

  return result;
}

unint64_t sub_1B49AFFD8()
{
  result = qword_1EB8A6F48;
  if (!qword_1EB8A6F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6F48);
  }

  return result;
}

uint64_t sub_1B49B002C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E496568636163 && a2 == 0xEA00000000007865;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E49646573756170 && a2 == 0xEE006C6176726574 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465737561507369 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616F4765766F6DLL && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676F725065766F6DLL && a2 == 0xEC00000073736572 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756E694D65766F6DLL && a2 == 0xEF6C616F47736574 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F100 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xEC0000006C616F47 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F120 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x616F47646E617473 && a2 == 0xE90000000000006CLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F7250646E617473 && a2 == 0xED00007373657267 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E756F4370657473 && a2 == 0xE900000000000074 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6F43746867696C66 && a2 == 0xEB00000000746E75 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F140 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F160 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1B49B0578(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t ActivitySharingFriendWorkout.init(workoutType:startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for ActivitySharingFriendWorkout();
  v8 = *(v7 + 20);
  v9 = sub_1B4D1777C();
  v12 = *(*(v9 - 8) + 32);
  (v12)((v9 - 8), &a4[v8], a2, v9);
  v10 = &a4[*(v7 + 24)];

  return v12(v10, a3, v9);
}

uint64_t type metadata accessor for ActivitySharingFriendWorkout()
{
  result = qword_1EB8A6FC0;
  if (!qword_1EB8A6FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ActivitySharingFriendWorkout.== infix(_:_:)(void **a1, void **a2)
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

  v17 = type metadata accessor for ActivitySharingFriendWorkout();
  v18 = *(v17 + 20);
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  v19 = *(v17 + 24);

  return sub_1B4D1774C();
}

BOOL sub_1B49B0864(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = v4, objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v7 = v6;
    v8 = a1;
    v9 = a2;
    [v5 coordinate];
    v11 = v10;
    [v7 coordinate];
    if (v11 == v12)
    {
      [v5 coordinate];
      v14 = v13;
      [v7 coordinate];
      v16 = v15;

      return v14 == v16;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    return sub_1B4D187AC() & 1;
  }
}

unint64_t sub_1B49B0988()
{
  v1 = 0x7461447472617473;
  if (*v0 != 1)
  {
    v1 = 0x65746144646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1B49B09EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B49B157C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B49B0A14(uint64_t a1)
{
  v2 = sub_1B49B0CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49B0A50(uint64_t a1)
{
  v2 = sub_1B49B0CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySharingFriendWorkout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F88, &unk_1B4D1C560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49B0CC8();
  sub_1B4D18EFC();
  v17 = *v3;
  v16[15] = 0;
  v11 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B1148(&qword_1EB8A6FA0);
  sub_1B4D18D0C();

  if (!v2)
  {
    v12 = type metadata accessor for ActivitySharingFriendWorkout();
    v13 = *(v12 + 20);
    v16[14] = 1;
    sub_1B4D1777C();
    sub_1B49B1198(&qword_1EDC37820);
    sub_1B4D18D0C();
    v14 = *(v12 + 24);
    v16[13] = 2;
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B49B0CC8()
{
  result = qword_1EB8A6F90;
  if (!qword_1EB8A6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6F90);
  }

  return result;
}

void ActivitySharingFriendWorkout.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1B4D1777C();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6FA8, &qword_1B4D1C570);
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = type metadata accessor for ActivitySharingFriendWorkout();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B49B0CC8();
  v35 = v13;
  v20 = v36;
  sub_1B4D18EEC();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    v21 = v33;
    v36 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v40 = 0;
    sub_1B49B1148(&qword_1EB8A6FB0);
    v22 = v34;
    sub_1B4D18C0C();
    *v17 = v41;
    v39 = 1;
    v30 = sub_1B49B1198(&qword_1EB8A6FB8);
    sub_1B4D18C0C();
    v23 = *(v14 + 20);
    v28 = *(v32 + 32);
    v29 = v17;
    v28(&v17[v23], v9, v3);
    v38 = 2;
    v24 = v36;
    sub_1B4D18C0C();
    (*(v21 + 8))(v35, v22);
    v25 = *(v14 + 24);
    v26 = v29;
    v28(&v29[v25], v24, v3);
    sub_1B49B11DC(v26, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    sub_1B49B1240(v26);
  }
}

uint64_t sub_1B49B1148(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B49B1198(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B4D1777C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B49B11DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriendWorkout();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49B1240(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySharingFriendWorkout();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B49B12CC(void **a1, void **a2, uint64_t a3)
{
  if (!sub_1B49B0864(*a1, *a2))
  {
    return 0;
  }

  v4 = *(a3 + 20);
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 24);

  return sub_1B4D1774C();
}

void sub_1B49B1378()
{
  sub_1B49B13FC();
  if (v0 <= 0x3F)
  {
    sub_1B4D1777C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B49B13FC()
{
  if (!qword_1EDC37438)
  {
    sub_1B498AFB8(255, &qword_1EDC36DC8, 0x1E699C9F0);
    v0 = type metadata accessor for CodableBridging();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC37438);
    }
  }
}

unint64_t sub_1B49B1478()
{
  result = qword_1EB8A6FD0;
  if (!qword_1EB8A6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6FD0);
  }

  return result;
}

unint64_t sub_1B49B14D0()
{
  result = qword_1EB8A6FD8;
  if (!qword_1EB8A6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6FD8);
  }

  return result;
}

unint64_t sub_1B49B1528()
{
  result = qword_1EB8A6FE0;
  if (!qword_1EB8A6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6FE0);
  }

  return result;
}

uint64_t sub_1B49B157C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001B4D4F180 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
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

uint64_t sub_1B49B16A8(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;

      v10 = a1(&v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1B49B1748(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B49B17F4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1B8C7CD90](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1B4D18ABC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

FitnessIntelligence::FitnessPlusPropertyDimensionsField_optional __swiftcall FitnessPlusPropertyDimensionsField.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FitnessPlusPropertyDimensionsField.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x59664F68746E6F6DLL;
  v3 = 0x6144664F72756F68;
  v4 = 0x7974696C61646F6DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656557664F796164;
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

uint64_t sub_1B49B1A4C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49B1B50()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B49B1C40()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B49B1D4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726165;
  v4 = 0x59664F68746E6F6DLL;
  v5 = 0xE900000000000079;
  v6 = 0x6144664F72756F68;
  v7 = 0xEC000000646E694BLL;
  v8 = 0x7974696C61646F6DLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001B4D48DB0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656557664F796164;
    v3 = 0xE90000000000006BLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void FitnessPlusPropertyDimensions.hourOfDay.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

_BYTE *FitnessPlusPropertyDimensions.init(monthOfYear:dayOfWeek:hourOfDay:modalityKind:trainerIdentifiers:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *a4;
  v10 = *a5;
  *a6 = *result;
  *(a6 + 1) = v6;
  *(a6 + 8) = v7;
  *(a6 + 16) = v8;
  *(a6 + 17) = v9;
  *(a6 + 24) = v10;
  return result;
}

uint64_t FitnessPlusPropertyDimensions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B4D1794C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1B4D1777C();
  v26 = *(v28 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = *(v12 + 48);
  v13(v11, v12);
  DayOfWeek.init(from:)(v10, &v31 + 2);
  v27 = BYTE2(v31);
  if (BYTE2(v31) == 7 || (v13(v11, v12), MonthOfYear.init(from:)(v10, &v31 + 1), BYTE1(v31) == 12))
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 1;
  }

  else
  {
    v25 = BYTE1(v31);
    v13(v11, v12);
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v15 = sub_1B4D1796C();
    __swift_project_value_buffer(v15, qword_1EDC3CE48);
    v16 = v29;
    (*(v29 + 104))(v7, *MEMORY[0x1E6969A58], v4);
    v17 = sub_1B4D1795C();
    (*(v16 + 8))(v7, v4);
    (*(v26 + 8))(v10, v28);
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 32))(&v31, v18, v19);
    v20 = v31;
    v21 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    (*(v22 + 24))(&v30, v21, v22);
    v23 = v30;
    *a2 = v25 | (v27 << 8);
    a2[1] = v17;
    a2[2] = v20 << 8;
    a2[3] = v23;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return result;
}

uint64_t FitnessPlusPropertyDimensions.mask(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 1);
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 17);
  v7 = *(v2 + 24);
  if (a1)
  {
    v32 = *v2;
    v33 = *(v2 + 1);
    v34 = *(v2 + 16);
    v35 = *(v2 + 8);
    v29 = *(v2 + 24);
    v30 = *(v2 + 17);
    v8 = *(a1 + 16);
    v9 = (a1 + 32);
    v10 = v8;
    v11 = (a1 + 32);
    while (1)
    {
      if (!v10)
      {
        v32 = 12;
        goto LABEL_13;
      }

      v13 = *v11;
      if (v13 <= 2 && v13 != 1 && v13 != 2)
      {
        break;
      }

      v12 = sub_1B4D18DCC();

      ++v11;
      --v10;
      if (v12)
      {
        goto LABEL_13;
      }
    }

LABEL_13:
    v15 = v8;
    v16 = v9;
    while (1)
    {
      if (!v15)
      {
        v33 = 7;
        goto LABEL_21;
      }

      if (*v16 <= 2u && *v16 && *v16 != 2)
      {
        break;
      }

      v17 = sub_1B4D18DCC();

      ++v16;
      --v15;
      if (v17)
      {
        goto LABEL_21;
      }
    }

LABEL_21:
    v18 = v8;
    v19 = v9;
    while (1)
    {
      if (!v18)
      {
        v35 = 0;
        v34 = 1;
        goto LABEL_30;
      }

      v21 = *v19;
      if (v21 > 1 && v21 != 3 && v21 != 4)
      {
        break;
      }

      v20 = sub_1B4D18DCC();

      ++v19;
      --v18;
      if (v20)
      {
        goto LABEL_30;
      }
    }

LABEL_30:
    v22 = v8;
    v23 = v9;
    while (1)
    {
      if (!v22)
      {
        v26 = 15;
        goto LABEL_43;
      }

      v25 = *v23;
      if (v25 > 2 && v25 != 4)
      {
        break;
      }

      v24 = sub_1B4D18DCC();

      ++v23;
      --v22;
      if (v24)
      {
        goto LABEL_41;
      }
    }

LABEL_41:
    v26 = v30;
    while (1)
    {
LABEL_43:
      if (!v8)
      {
        result = 0;
        goto LABEL_49;
      }

      v28 = *v9;
      if (v28 >= 4)
      {
        break;
      }

      v27 = sub_1B4D18DCC();

      ++v9;
      --v8;
      if (v27)
      {
        goto LABEL_48;
      }
    }

LABEL_48:

LABEL_49:
    *a2 = v32;
    *(a2 + 1) = v33;
    *(a2 + 8) = v35;
    *(a2 + 16) = v34;
    *(a2 + 17) = v26;
    *(a2 + 24) = result;
  }

  else
  {
    *a2 = *v2;
    *(a2 + 1) = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    *(a2 + 17) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

Swift::Bool __swiftcall FitnessPlusPropertyDimensions.matches(_:)(FitnessIntelligence::FitnessPlusPropertyDimensionsFilters_optional *a1)
{
  rawValue = a1->value.monthOfYear._rawValue;
  if (!a1->value.monthOfYear._rawValue)
  {
    return 1;
  }

  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 1);
  v7 = v1[16];
  v8 = v1[17];
  v9 = *(v1 + 3);
  v10 = a1->value.trainerIdentifiers._rawValue;
  v36 = a1->value.modalityKind._rawValue;
  v37 = v9;
  v11 = a1->value.dayOfWeek._rawValue;
  v12 = a1->value.hourOfDay._rawValue;
  if (v4 == 12 || !rawValue[2] || sub_1B4978C4C(v4, rawValue))
  {
    v38 = v7;
    v39 = v12;
    v40 = v8;
    v35 = v10;
    if (v5 != 7)
    {
      v13 = *(v11 + 2);
      if (v13)
      {
        v14 = v11 + 32;
        do
        {
          if (!v13)
          {
            return 0;
          }

          v18 = *v14;
          if (v18 <= 2)
          {
            v22 = 0x616473656E646577;
            if (v18 == 1)
            {
              v22 = 0x79616473657574;
            }

            v23 = 0xE900000000000079;
            if (v18 == 1)
            {
              v23 = 0xE700000000000000;
            }

            if (*v14)
            {
              v19 = v22;
            }

            else
            {
              v19 = 0x7961646E6F6DLL;
            }

            if (*v14)
            {
              v20 = v23;
            }

            else
            {
              v20 = 0xE600000000000000;
            }

            if (v5 > 2)
            {
LABEL_42:
              v24 = 0x7961646E7573;
              if (v5 == 5)
              {
                v24 = 0x7961647275746173;
                v25 = 0xE800000000000000;
              }

              else
              {
                v25 = 0xE600000000000000;
              }

              v26 = 0x7961647372756874;
              if (v5 == 3)
              {
                v27 = 0xE800000000000000;
              }

              else
              {
                v26 = 0x796164697266;
                v27 = 0xE600000000000000;
              }

              if (v5 <= 4)
              {
                v28 = v26;
              }

              else
              {
                v28 = v24;
              }

              if (v5 <= 4)
              {
                v16 = v27;
              }

              else
              {
                v16 = v25;
              }

              if (v19 != v28)
              {
                goto LABEL_11;
              }

              goto LABEL_10;
            }
          }

          else if (*v14 > 4u)
          {
            if (v18 == 5)
            {
              v20 = 0xE800000000000000;
              v19 = 0x7961647275746173;
              if (v5 > 2)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v19 = 0x7961646E7573;
              v20 = 0xE600000000000000;
              if (v5 > 2)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            if (v18 == 3)
            {
              v19 = 0x7961647372756874;
            }

            else
            {
              v19 = 0x796164697266;
            }

            if (v18 == 3)
            {
              v20 = 0xE800000000000000;
            }

            else
            {
              v20 = 0xE600000000000000;
            }

            if (v5 > 2)
            {
              goto LABEL_42;
            }
          }

          if (v5)
          {
            if (v5 == 1)
            {
              v21 = 0x79616473657574;
            }

            else
            {
              v21 = 0x616473656E646577;
            }

            if (v5 == 1)
            {
              v16 = 0xE700000000000000;
            }

            else
            {
              v16 = 0xE900000000000079;
            }

            if (v19 != v21)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v16 = 0xE600000000000000;
            if (v19 != 0x7961646E6F6DLL)
            {
              goto LABEL_11;
            }
          }

LABEL_10:
          if (v20 == v16)
          {

            break;
          }

LABEL_11:
          v17 = sub_1B4D18DCC();

          ++v14;
          --v13;
        }

        while ((v17 & 1) == 0);
      }
    }

    v29 = v40;
    if ((v38 & 1) != 0 || (v30 = v39[2]) == 0)
    {
LABEL_67:
      if (v40 == 15 || !v36[2] || (v29 = sub_1B4978F94(v40, v36), (v29 & 1) != 0))
      {
        if (!v37)
        {
          return 1;
        }

        if (!v35[2])
        {
          return 1;
        }

        v41 = v37;
        MEMORY[0x1EEE9AC00](v29);
        v34[2] = &v41;
        if (sub_1B49B16A8(sub_1B49B2E80, v34, v33))
        {
          return 1;
        }
      }
    }

    else
    {
      v31 = v39 + 4;
      while (v30)
      {
        v32 = *v31++;
        --v30;
        if (v32 == v6)
        {
          goto LABEL_67;
        }
      }
    }
  }

  return 0;
}

uint64_t FitnessPlusPropertyDimensions.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 24);
  if (*v0 == 12)
  {
    sub_1B4D18EAC();
    if (v1 != 7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B4D18EAC();
    MonthOfYear.rawValue.getter();
    sub_1B4D1820C();

    if (v1 != 7)
    {
LABEL_3:
      sub_1B4D18EAC();
      sub_1B4D1820C();

      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  sub_1B4D18EAC();
  if ((v3 & 1) == 0)
  {
LABEL_4:
    sub_1B4D18EAC();
    MEMORY[0x1B8C7D2C0](v2);
    if (v4 != 15)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_1B4D18EAC();
  if (v4 != 15)
  {
LABEL_5:
    sub_1B4D18EAC();
    FitnessPlusModalityKind.rawValue.getter();
    sub_1B4D1820C();

    if (v5)
    {
      goto LABEL_6;
    }

    return sub_1B4D18EAC();
  }

LABEL_15:
  sub_1B4D18EAC();
  if (!v5)
  {
    return sub_1B4D18EAC();
  }

LABEL_6:
  sub_1B4D18EAC();
  result = MEMORY[0x1B8C7D290](*(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {

    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      sub_1B4D1820C();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t FitnessPlusPropertyDimensions.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = *(v0 + 3);
  sub_1B4D18E8C();
  FitnessPlusPropertyDimensions.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49B2D70()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = *(v0 + 3);
  sub_1B4D18E8C();
  FitnessPlusPropertyDimensions.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49B2DE0()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = *(v0 + 3);
  sub_1B4D18E8C();
  FitnessPlusPropertyDimensions.hash(into:)();
  return sub_1B4D18EDC();
}

BOOL _s19FitnessIntelligence0A22PlusPropertyDimensionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 1);
  v10 = a2[16];
  v11 = a2[17];
  v12 = *(a2 + 3);
  if (*a1 == 12)
  {
    if (v7 != 12)
    {
      return 0;
    }

LABEL_3:
    if (v2 == 7)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (v8 == 7)
    {
      return 0;
    }

    v17 = v2;
    v18 = v5;
    v19 = sub_1B49767B8(v17, v8);
    v5 = v18;
    if ((v19 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (v7 == 12)
  {
    return 0;
  }

  v28 = *(a1 + 17);
  v29 = *(a2 + 3);
  v13 = MonthOfYear.rawValue.getter();
  v15 = v14;
  if (v13 != MonthOfYear.rawValue.getter() || v15 != v16)
  {
    v20 = sub_1B4D18DCC();

    v12 = v29;
    v5 = v28;
    if ((v20 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v12 = v29;
  v5 = v28;
  if (v2 != 7)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v8 != 7)
  {
    return 0;
  }

LABEL_12:
  if (v4)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v9)
    {
      v21 = v10;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (v5 == 15)
  {
    if (v11 != 15)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (v11 == 15)
  {
    return 0;
  }

  v22 = FitnessPlusModalityKind.rawValue.getter();
  v24 = v23;
  if (v22 == FitnessPlusModalityKind.rawValue.getter() && v24 == v25)
  {

    goto LABEL_29;
  }

  v26 = sub_1B4D18DCC();

  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  if (v6)
  {
    if (v12)
    {
      return (sub_1B4A0C158(v6, v12) & 1) != 0;
    }

    goto LABEL_34;
  }

  if (v12)
  {
LABEL_34:

    return 0;
  }

  return 1;
}

unint64_t sub_1B49B3128()
{
  result = qword_1EB8A6FE8;
  if (!qword_1EB8A6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6FE8);
  }

  return result;
}

unint64_t sub_1B49B317C(void *a1)
{
  a1[1] = sub_1B49B31B4();
  a1[2] = sub_1B49B3128();
  result = sub_1B49B3208();
  a1[3] = result;
  return result;
}

unint64_t sub_1B49B31B4()
{
  result = qword_1EB8A6FF0;
  if (!qword_1EB8A6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6FF0);
  }

  return result;
}

unint64_t sub_1B49B3208()
{
  result = qword_1EB8A6FF8;
  if (!qword_1EB8A6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6FF8);
  }

  return result;
}

unint64_t sub_1B49B3260()
{
  result = qword_1EB8A7000;
  if (!qword_1EB8A7000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7008, &qword_1B4D1C7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7000);
  }

  return result;
}

unint64_t sub_1B49B32C8()
{
  result = qword_1EB8A7010;
  if (!qword_1EB8A7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7010);
  }

  return result;
}

unint64_t sub_1B49B3320()
{
  result = qword_1EB8A7018;
  if (!qword_1EB8A7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7018);
  }

  return result;
}

unint64_t sub_1B49B3374(uint64_t a1)
{
  *(a1 + 8) = sub_1B49B33A4();
  result = sub_1B49B33F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B49B33A4()
{
  result = qword_1EDC399D0;
  if (!qword_1EDC399D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC399D0);
  }

  return result;
}

unint64_t sub_1B49B33F8()
{
  result = qword_1EDC399E8[0];
  if (!qword_1EDC399E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC399E8);
  }

  return result;
}

unint64_t sub_1B49B3450()
{
  result = qword_1EDC399E0;
  if (!qword_1EDC399E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC399E0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B49B34C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B49B351C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t FitnessPlusPropertyRecord.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
}

uint64_t FitnessPlusPropertyRecord.propertyKind.getter()
{
  v1 = v0[9];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v1);
  return sub_1B4B70700(v1, *(v2 + 8));
}

uint64_t FitnessPlusPropertyRecord.genericProperty.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[9];
  v4 = v1[10];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 6, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t FitnessPlusPropertyRecord.init(startCacheIndex:endCacheIndex:dimensions:property:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int16 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 1);
  v8 = *(a3 + 16);
  v9 = *(a3 + 17);
  v10 = *(a3 + 3);
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;
  *(a5 + 32) = v8;
  *(a5 + 33) = v9;
  *(a5 + 40) = v10;
  return sub_1B496F398(a4, a5 + 48);
}

uint64_t FitnessPlusPropertyRecord.with(startCacheIndex:endCacheIndex:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 33);
  v11 = *(v3 + 40);
  sub_1B497558C(v3 + 48, a3 + 48);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 33) = v10;
  *(a3 + 40) = v11;
}

unint64_t sub_1B49B3780()
{
  result = qword_1EDC399D8;
  if (!qword_1EDC399D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC399D8);
  }

  return result;
}

unint64_t sub_1B49B37D8()
{
  result = qword_1EB8A7020;
  if (!qword_1EB8A7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7020);
  }

  return result;
}

uint64_t sub_1B49B382C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
}

uint64_t sub_1B49B3858()
{
  v1 = v0[9];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v1);
  return sub_1B4B70700(v1, *(v2 + 8));
}

uint64_t sub_1B49B38A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[9];
  v4 = v1[10];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 6, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t sub_1B49B3930@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 33);
  v11 = *(v3 + 40);
  sub_1B497558C(v3 + 48, a3 + 48);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 33) = v10;
  *(a3 + 40) = v11;
}

unint64_t sub_1B49B39C4(uint64_t a1)
{
  *(a1 + 8) = sub_1B49B39F4();
  result = sub_1B49B3A48();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B49B39F4()
{
  result = qword_1EDC39AA8;
  if (!qword_1EDC39AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39AA8);
  }

  return result;
}

unint64_t sub_1B49B3A48()
{
  result = qword_1EDC39AB8;
  if (!qword_1EDC39AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39AB8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B49B3AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B49B3B0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

FitnessIntelligence::SnapshotEngineVersion_optional __swiftcall SnapshotEngineVersion.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B49B3BB4()
{
  result = qword_1EB8A7028;
  if (!qword_1EB8A7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7028);
  }

  return result;
}

uint64_t sub_1B49B3C08()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](v1 + 1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49B3C80()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](v1 + 1);
  return sub_1B4D18EDC();
}

uint64_t AudioSynthesisSettings.voiceSelection.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1B49B3D28(v2, v3);
}

uint64_t sub_1B49B3D28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 AudioSynthesisSettings.init(voiceSelection:intensity:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19FitnessIntelligence28AudioSynthesisVoiceSelectionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B49B3DB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B49B3E14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B49B3E90()
{
  result = qword_1EB8A7030;
  if (!qword_1EB8A7030)
  {
    type metadata accessor for WorkoutSplitFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7030);
  }

  return result;
}

unint64_t sub_1B49B3EEC()
{
  result = qword_1EB8A7038;
  if (!qword_1EB8A7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7038);
  }

  return result;
}

uint64_t sub_1B49B3F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49AA274;

  return (sub_1B49B4018)(a1, a2, a3, a4);
}

uint64_t sub_1B49B4018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for WorkoutState();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B49B4120, 0, 0);
}

uint64_t sub_1B49B4120()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  sub_1B4992854(v0[4], v2);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_1B49B4670(v2, v1);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[9];
  if (v5 == 1)
  {
    sub_1B49933E8(v6);
    v7 = v0[9];
    v8 = v0[8];
    sub_1B49933E8(v0[10]);

    v9 = v0[1];
    v10 = MEMORY[0x1E69E7CC0];

    return v9(v10);
  }

  else
  {
    v12 = v0[8];
    v13 = v0[6];
    sub_1B49B46E0(v6, v12);
    if (*(v12 + *(v13 + 20)) == 3)
    {
      v14 = swift_task_alloc();
      v0[11] = v14;
      *v14 = v0;
      v14[1] = sub_1B49B4338;
      v15 = v0[8];
      v16 = v0[5];
      v18 = v0[2];
      v17 = v0[3];

      return sub_1B4B9685C(v18, v17, v15);
    }

    else
    {
      v19 = swift_task_alloc();
      v0[13] = v19;
      *v19 = v0;
      v19[1] = sub_1B49B44D4;
      v20 = v0[8];
      v21 = v0[5];
      v23 = v0[2];
      v22 = v0[3];

      return sub_1B4B9811C(v23, v22, v20, v21);
    }
  }
}

uint64_t sub_1B49B4338(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B49B4438, 0, 0);
}

uint64_t sub_1B49B4438()
{
  sub_1B49AA7C0(v0[8]);
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[8];
  sub_1B49933E8(v0[10]);

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_1B49B44D4(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B49B45D4, 0, 0);
}

uint64_t sub_1B49B45D4()
{
  sub_1B49AA7C0(v0[8]);
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[8];
  sub_1B49933E8(v0[10]);

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_1B49B4670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49B46E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static LocalizedDate.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37[1] = a1;
  v41 = a2;
  v38 = sub_1B4D1796C();
  v37[0] = *(v38 - 8);
  v2 = *(v37[0] + 64);
  MEMORY[0x1EEE9AC00](v38);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4D175FC();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4D1793C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v9 = sub_1B4D1794C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B4D1CBF0;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x1E6969A68], v9);
  v15(v14 + v11, *MEMORY[0x1E6969A78], v9);
  v15(v14 + 2 * v11, *MEMORY[0x1E6969A48], v9);
  v15(v14 + 3 * v11, *MEMORY[0x1E6969A58], v9);
  v15(v14 + 4 * v11, *MEMORY[0x1E6969A88], v9);
  sub_1B49B56B4(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B4D1788C();

  (*(v37[0] + 8))(v4, v38);
  v16 = sub_1B4D1759C();
  if (v17 & 1) != 0 || (v18 = v16, v19 = sub_1B4D175AC(), (v20) || (v21 = v19, v22 = sub_1B4D1757C(), (v23) || (v24 = v22, v25 = sub_1B4D1758C(), (v26))
  {
    (*(v39 + 8))(v8, v40);
  }

  else
  {
    v29 = v25;
    v30 = sub_1B4D175BC();
    v32 = v31;
    (*(v39 + 8))(v8, v40);
    if ((v32 & 1) == 0)
    {
      v33 = type metadata accessor for LocalizedDate();
      v34 = *(v33 + 36);
      v35 = sub_1B4D179BC();
      v36 = v41;
      (*(*(v35 - 8) + 56))(v41 + v34, 1, 1, v35);
      *v36 = v18;
      v36[1] = v21;
      v36[2] = v24;
      v36[3] = v29;
      v36[4] = v30;
      return (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
    }
  }

  v27 = type metadata accessor for LocalizedDate();
  return (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
}

uint64_t LocalizedDate.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LocalizedDate() + 36);

  return sub_1B4995E7C(v3, a1);
}

uint64_t LocalizedDate.init(year:month:day:hour:minute:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  v8 = a7 + *(type metadata accessor for LocalizedDate() + 36);

  return sub_1B4995980(a6, v8);
}

uint64_t LocalizedDate.hash(into:)()
{
  v1 = sub_1B4D179BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v13 - v9;
  MEMORY[0x1B8C7D290](*v0, v8);
  MEMORY[0x1B8C7D290](v0[1]);
  MEMORY[0x1B8C7D290](v0[2]);
  MEMORY[0x1B8C7D290](v0[3]);
  MEMORY[0x1B8C7D290](v0[4]);
  v11 = type metadata accessor for LocalizedDate();
  sub_1B4995E7C(v0 + *(v11 + 36), v10);
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    return sub_1B4D18EAC();
  }

  (*(v2 + 32))(v5, v10, v1);
  sub_1B4D18EAC();
  sub_1B49B5E90(&qword_1EB8A7040, MEMORY[0x1E6969BC0]);
  sub_1B4D1808C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t LocalizedDate.hashValue.getter()
{
  sub_1B4D18E8C();
  LocalizedDate.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49B4E8C()
{
  sub_1B4D18E8C();
  LocalizedDate.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49B4ED0()
{
  sub_1B4D18E8C();
  LocalizedDate.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t LocalizedDate.toDate()@<X0>(uint64_t a1@<X8>)
{
  v28[1] = a1;
  v2 = sub_1B4D1796C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7048, &qword_1B4D1CC00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = sub_1B4D175FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 56))(v14, 1, 1, v2, v18);
  v21 = type metadata accessor for LocalizedDate();
  sub_1B4995E7C(v1 + *(v21 + 36), v10);
  v22 = *v1;
  v23 = v1[1];
  v27 = v1[4];
  v26 = v1[3];
  v25 = v1[2];
  sub_1B4D175DC();
  sub_1B4D1793C();
  sub_1B4D178FC();
  (*(v3 + 8))(v6, v2);
  return (*(v16 + 8))(v20, v15);
}

BOOL _s19FitnessIntelligence13LocalizedDateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B4D179BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7078, &qword_1B4D1CCB8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  v18 = v15;
  v19 = *(type metadata accessor for LocalizedDate() + 36);
  v20 = *(v18 + 48);
  sub_1B4995E7C(a1 + v19, v17);
  sub_1B4995E7C(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1B4975024(v17, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      return 1;
    }

    goto LABEL_11;
  }

  sub_1B4995E7C(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_11:
    sub_1B4975024(v17, &qword_1EB8A7078, &qword_1B4D1CCB8);
    return 0;
  }

  (*(v5 + 32))(v8, &v17[v20], v4);
  sub_1B49B5E90(&qword_1EB8A7080, MEMORY[0x1E6969BC0]);
  v23 = sub_1B4D1816C();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1B4975024(v17, &qword_1EB8A6C20, &unk_1B4D1FBF0);
  return (v23 & 1) != 0;
}

uint64_t sub_1B49B554C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7070, &qword_1B4D1CCB0);
    v3 = sub_1B4D1892C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1B4D18E8C();

      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B49B56B4(uint64_t a1)
{
  v2 = sub_1B4D1794C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7088, &unk_1B4D1CCC0);
    v10 = sub_1B4D1892C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1B49B5E90(&qword_1EDC37810, MEMORY[0x1E6969AD0]);
      v18 = sub_1B4D1807C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1B49B5E90(&qword_1EDC37808, MEMORY[0x1E6969AD0]);
          v25 = sub_1B4D1816C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t type metadata accessor for LocalizedDate()
{
  result = qword_1EDC398E0;
  if (!qword_1EDC398E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B49B5A90()
{
  sub_1B49B5B18();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B49B5B18()
{
  if (!qword_1EDC3CB10)
  {
    sub_1B4D179BC();
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC3CB10);
    }
  }
}

uint64_t sub_1B49B5B70(uint64_t a1)
{
  v2 = sub_1B4D18F8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7058, &qword_1B4D1CCA8);
    v10 = sub_1B4D1892C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1B49B5E90(&qword_1EB8A7060, MEMORY[0x1E696A1C0]);
      v18 = sub_1B4D1807C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_1B49B5E90(&qword_1EB8A7068, MEMORY[0x1E696A1C0]);
          v25 = sub_1B4D1816C();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B49B5E90(unint64_t *a1, void (*a2)(uint64_t))
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

FitnessIntelligence::TrainingLoadDay::State_optional __swiftcall TrainingLoadDay.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B49B5FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B49B6064(uint64_t a1)
{
  v2 = sub_1B49B6228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49B60A0(uint64_t a1)
{
  v2 = sub_1B49B6228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrainingLoadDay.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7090, &qword_1B4D1CCD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49B6228();
  sub_1B4D18EFC();
  v12 = v8;
  sub_1B49B627C();
  sub_1B4D18D0C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B49B6228()
{
  result = qword_1EB8A7098;
  if (!qword_1EB8A7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7098);
  }

  return result;
}

unint64_t sub_1B49B627C()
{
  result = qword_1EB8A70A0;
  if (!qword_1EB8A70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70A0);
  }

  return result;
}

uint64_t TrainingLoadDay.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A70A8, &qword_1B4D1CCD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49B6228();
  sub_1B4D18EEC();
  if (!v2)
  {
    sub_1B49B643C();
    sub_1B4D18C0C();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B49B643C()
{
  result = qword_1EB8A70B0;
  if (!qword_1EB8A70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70B0);
  }

  return result;
}

unint64_t sub_1B49B6494()
{
  result = qword_1EB8A70B8;
  if (!qword_1EB8A70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70B8);
  }

  return result;
}

unint64_t sub_1B49B654C()
{
  result = qword_1EB8A70C0;
  if (!qword_1EB8A70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70C0);
  }

  return result;
}

unint64_t sub_1B49B65A4()
{
  result = qword_1EB8A70C8;
  if (!qword_1EB8A70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70C8);
  }

  return result;
}

unint64_t sub_1B49B65FC()
{
  result = qword_1EB8A70D0;
  if (!qword_1EB8A70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70D0);
  }

  return result;
}

unint64_t sub_1B49B6650()
{
  result = qword_1EB8A70D8;
  if (!qword_1EB8A70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70D8);
  }

  return result;
}

uint64_t FitnessContextClient.requestContext(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v4 = sub_1B4D1777C();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v2;
  v3[10] = v7;
  v3[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B49B6794, 0, 0);
}

uint64_t sub_1B49B6794()
{
  v25 = v0;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1B4D17F6C();
  *(v0 + 96) = __swift_project_value_buffer(v2, qword_1EDC3CED0);

  v3 = sub_1B4D17F5C();
  v4 = sub_1B4D1873C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_1B4953000, v3, v4, "Requesting context for %ld requests", v7, 0xCu);
    MEMORY[0x1B8C7DDA0](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 40);
  }

  v9 = *(v0 + 80);
  PlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0 = _s19FitnessIntelligence0A19ContextQueryPlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0(*(v0 + 40));
  *(v0 + 104) = PlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0;
  sub_1B4D1776C();
  *(v0 + 136) = 33;
  v11 = PlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0[2];
  if (v11)
  {
    v12 = sub_1B49B6FFC(PlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0[2], 0);
    v13 = *(type metadata accessor for FitnessContextCoalescedQueryRequest() - 8);
    sub_1B49B717C(&v24, v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11, PlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0);
    v15 = v14;

    sub_1B49B75FC();
    if (v15 == v11)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_10:
  *(v0 + 24) = v12;
  *(v0 + 112) = v12;
  v16 = *(MEMORY[0x1E699DD00] + 4);
  v23 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v17 = swift_task_alloc();
  *(v0 + 120) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A70E0, &qword_1B4D1CFD8);
  v19 = sub_1B49B7604();
  v20 = sub_1B49B76E0();
  *v17 = v0;
  v17[1] = sub_1B49B6A68;
  v21 = *(v0 + 88);

  return v23(v0 + 16, v0 + 136, v0 + 24, v18, &type metadata for FitnessContext, v19, v20);
}

uint64_t sub_1B49B6A68()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v5 = *(v2 + 104);
    v4 = *(v2 + 112);

    v6 = sub_1B49B6DAC;
  }

  else
  {
    v7 = *(v2 + 112);

    v6 = sub_1B49B6B94;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B49B6B94()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[2];
  (*(v0[7] + 16))(v0[9], v0[10], v0[6]);

  v4 = sub_1B4D17F5C();
  v5 = sub_1B4D1873C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  v8 = v0[9];
  if (v6)
  {
    v26 = v3;
    v10 = v0[7];
    v9 = v0[8];
    v25 = v0[6];
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    v12 = *(v7 + 16);

    *(v11 + 4) = v12;

    *(v11 + 12) = 2048;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v14 = v13;
    v15 = *(v10 + 8);
    v16 = v9;
    v3 = v26;
    v15(v16, v25);
    v15(v8, v25);
    *(v11 + 14) = v14;
    _os_log_impl(&dword_1B4953000, v4, v5, "Fetched context for %ld requests in %fs", v11, 0x16u);
    MEMORY[0x1B8C7DDA0](v11, -1, -1);
  }

  else
  {
    v17 = v0[6];
    v18 = v0[7];
    v19 = v0[13];
    swift_bridgeObjectRelease_n();

    v15 = *(v18 + 8);
    v15(v8, v17);
  }

  v20 = v0[9];
  v21 = v0[8];
  v22 = v0[4];
  v15(v0[10], v0[6]);
  *v22 = v3;

  v23 = v0[1];

  return v23();
}

uint64_t sub_1B49B6DAC()
{
  v1 = v0[9];
  v2 = v0[8];
  (*(v0[7] + 8))(v0[10], v0[6]);

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_1B49B6E48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4983F3C;

  return FitnessContextClient.requestContext(_:)(a1, a2);
}

void *sub_1B49B6EF0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
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

void *sub_1B49B6F74(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
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

size_t sub_1B49B6FFC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7100, &unk_1B4D1D070);
  v4 = *(type metadata accessor for FitnessContextCoalescedQueryRequest() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B49B70F8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7110, &qword_1B4D1D080);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void sub_1B49B717C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest();
  v32 = *(Request - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](Request - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = a4 + 7;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[7];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      sub_1B49B7920(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_1B49B7984(v11, v14);
      sub_1B49B7984(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        goto LABEL_23;
      }

      a2 += v26;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1B49B73A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1B49B74A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B49B7604()
{
  result = qword_1EB8A70E8;
  if (!qword_1EB8A70E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A70E0, &qword_1B4D1CFD8);
    sub_1B49B7688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70E8);
  }

  return result;
}

unint64_t sub_1B49B7688()
{
  result = qword_1EB8A70F0;
  if (!qword_1EB8A70F0)
  {
    type metadata accessor for FitnessContextCoalescedQueryRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70F0);
  }

  return result;
}

unint64_t sub_1B49B76E0()
{
  result = qword_1EB8A70F8;
  if (!qword_1EB8A70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A70F8);
  }

  return result;
}

uint64_t dispatch thunk of FitnessContextClientProtocol.requestContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4983F3C;

  return v13(a1, a2, a3, a4);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1B49B7920(uint64_t a1, uint64_t a2)
{
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest();
  (*(*(Request - 8) + 16))(a2, a1, Request);
  return a2;
}

uint64_t sub_1B49B7984(uint64_t a1, uint64_t a2)
{
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest();
  (*(*(Request - 8) + 32))(a2, a1, Request);
  return a2;
}

uint64_t ConsistentWorkoutTrendFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t ConsistentWorkoutTrendFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000061;
  if (*v0 != 1)
  {
    v1 = 0xD0000000000000C7;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000007FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B49B7AAC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000061;
  v3 = *a1;
  v4 = "very week for the last 4 weeks.";
  if (v3 == 1)
  {
    v5 = 0xD000000000000061;
  }

  else
  {
    v5 = 0xD0000000000000C7;
  }

  if (v3 == 1)
  {
    v6 = "very week for the last 4 weeks.";
  }

  else
  {
    v6 = "the last 4 weeks.";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000007FLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "tone> in this workout.";
  }

  if (*a2 != 1)
  {
    v2 = 0xD0000000000000C7;
    v4 = "the last 4 weeks.";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000007FLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "tone> in this workout.";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B49B7B88()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49B7C24()
{
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B49B7CAC()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49B7D44@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ConsistentWorkoutTrendFact.TemplateString.init(rawValue:)(a1);
}

void sub_1B49B7D50(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000061;
  v3 = "very week for the last 4 weeks.";
  if (*v1 != 1)
  {
    v2 = 0xD0000000000000C7;
    v3 = "the last 4 weeks.";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000007FLL;
    v4 = "tone> in this workout.";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

id ConsistentWorkoutTrendFact.placeholders()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = sub_1B4D18D5C();
  v7 = v6;
  *(v4 + 32) = 0xD00000000000002ELL;
  *(v4 + 40) = 0x80000001B4D4F1A0;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v4 + 48) = sub_1B4993DFC;
  *(v4 + 56) = v8;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  v9 = sub_1B4D18D5C();
  v11 = v10;
  *(v4 + 80) = 0xD000000000000020;
  *(v4 + 88) = 0x80000001B4D4F1D0;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v4 + 96) = sub_1B4994004;
  *(v4 + 104) = v12;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  [v1 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v14 = result;
    v15 = sub_1B4D1818C();
    v17 = v16;

    strcpy((v4 + 128), "activity_type");
    *(v4 + 142) = -4864;
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;
    *(v4 + 144) = sub_1B4994004;
    *(v4 + 152) = v18;
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

void ConsistentWorkoutTrendFact.selectTemplate(formatter:)(char *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = 2 * (v2 > 2);
  if (v2 >= 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  if (*(v1 + 16) >= 2)
  {
    v4 = v3;
  }

  *a1 = v4;
}

unint64_t sub_1B49B8000()
{
  result = qword_1EB8A7118;
  if (!qword_1EB8A7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7118);
  }

  return result;
}

unint64_t sub_1B49B8058()
{
  result = qword_1EB8A7120;
  if (!qword_1EB8A7120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7128, &qword_1B4D1D128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7120);
  }

  return result;
}

unint64_t sub_1B49B80C0()
{
  result = qword_1EB8A7130;
  if (!qword_1EB8A7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7130);
  }

  return result;
}

unint64_t sub_1B49B8118()
{
  result = qword_1EB8A7138;
  if (!qword_1EB8A7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7138);
  }

  return result;
}

unint64_t sub_1B49B816C(uint64_t a1)
{
  result = sub_1B49B8194();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B49B8194()
{
  result = qword_1EB8A7140;
  if (!qword_1EB8A7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7140);
  }

  return result;
}

uint64_t WorkoutMilestonePropertyValue.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v69 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = &v67 - v6;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  v8 = *(v7 - 8);
  v76 = v7;
  v77 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v84 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7150, &qword_1B4D46FB0);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v73 = (&v67 - v13);
  v83 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v14 = *(v83 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v75 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v67 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  v23 = type metadata accessor for WorkoutMilestoneEntry();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v74 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v67 - v28;
  v30 = a1[1];
  v68 = *a1;
  v31 = *(v30 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  v82 = v14;
  v70 = a1;
  if (v31)
  {
    v85 = MEMORY[0x1E69E7CC0];
    v79 = v31;
    v81 = v30;
    sub_1B4BCF01C(0, v31, 0);
    v33 = 0;
    v32 = v85;
    v34 = v81;
    v80 = v81 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    while (1)
    {
      if (v33 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      sub_1B49BA4E4(v80 + *(v14 + 72) * v33, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      sub_1B49BA4E4(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      WorkoutMilestoneEntry.init(_:)(v19, v29);
      if (v2)
      {
        break;
      }

      sub_1B49BA54C(v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      v85 = v32;
      v36 = *(v32 + 16);
      v35 = *(v32 + 24);
      v37 = v32;
      if (v36 >= v35 >> 1)
      {
        sub_1B4BCF01C(v35 > 1, v36 + 1, 1);
        v37 = v85;
      }

      ++v33;
      *(v37 + 16) = v36 + 1;
      sub_1B49BA610(v29, v37 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v36, type metadata accessor for WorkoutMilestoneEntry);
      v32 = v37;
      v34 = v81;
      v14 = v82;
      if (v79 == v33)
      {
        a1 = v70;
        goto LABEL_10;
      }
    }

    sub_1B49BA54C(v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    sub_1B49BA54C(v70, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);
  }

  else
  {
LABEL_10:
    v38 = a1[2];
    v39 = *(v38 + 16);
    v40 = MEMORY[0x1E69E7CC0];
    v41 = v78;
    if (v39)
    {
      v79 = v32;
      v85 = MEMORY[0x1E69E7CC0];
      sub_1B4BCEFFC(0, v39, 0);
      v42 = 0;
      v43 = *(v77 + 80);
      v80 = v38;
      v81 = v38 + ((v43 + 32) & ~v43);
      v40 = v85;
      v44 = (v82 + 48);
      while (v42 < *(v38 + 16))
      {
        v45 = v39;
        v46 = v84;
        sub_1B49BA4E4(v81 + *(v77 + 72) * v42, v84, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
        sub_1B4974FBC(v46 + *(v76 + 24), v41, &qword_1EB8A7148, &unk_1B4D25C40);
        v47 = *v44;
        v48 = v83;
        if ((*v44)(v41, 1, v83) == 1)
        {
          v49 = v75;
          *v75 = 0;
          *(v49 + 1) = 0;
          *(v49 + 2) = 0xE000000000000000;
          v50 = &v49[*(v48 + 24)];
          sub_1B4D17BBC();
          v51 = *(v83 + 28);
          v52 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
          (*(*(v52 - 8) + 56))(&v49[v51], 1, 1, v52);
          if (v47(v41, 1, v83) != 1)
          {
            sub_1B4975024(v41, &qword_1EB8A7148, &unk_1B4D25C40);
          }
        }

        else
        {
          v49 = v75;
          sub_1B49BA610(v41, v75, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
        }

        v53 = v74;
        WorkoutMilestoneEntry.init(_:)(v49, v74);
        if (v2)
        {
          sub_1B49BA54C(v84, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
          sub_1B49BA54C(v70, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);
        }

        v54 = *(v72 + 48);
        v55 = *v84;
        sub_1B49BA54C(v84, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
        v56 = v73;
        *v73 = v55;
        v57 = v56 + v54;
        v58 = v56;
        sub_1B49BA610(v53, v57, type metadata accessor for WorkoutMilestoneEntry);
        v85 = v40;
        v60 = *(v40 + 16);
        v59 = *(v40 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1B4BCEFFC(v59 > 1, v60 + 1, 1);
          v58 = v73;
          v40 = v85;
        }

        ++v42;
        *(v40 + 16) = v60 + 1;
        sub_1B498B270(v58, v40 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v60, &qword_1EB8A7150, &qword_1B4D46FB0);
        v39 = v45;
        v61 = v45 == v42;
        v41 = v78;
        v38 = v80;
        if (v61)
        {
          a1 = v70;
          v32 = v79;
          goto LABEL_25;
        }
      }

LABEL_31:
      __break(1u);
    }

    else
    {
LABEL_25:
      if (*(v40 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6880, &unk_1B4D46FC0);
        v63 = sub_1B4D18AEC();
      }

      else
      {
        v63 = MEMORY[0x1E69E7CC8];
      }

      v85 = v63;

      sub_1B49B9DEC(v64, 1, &v85);
      if (!v2)
      {
        sub_1B49BA54C(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);

        v65 = v85;
        v66 = v69;
        *v69 = v68;
        v66[1] = v32;
        v66[2] = v65;
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t WorkoutMilestoneEntry.init(_:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for LocalizedDate();
  v14 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v45 - v19;
  v21 = sub_1B4D177CC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[1];
  v27 = a1[2];
  sub_1B4D1778C();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1B4975024(v20, &qword_1EB8A6A30, &unk_1B4D1FC00);
    sub_1B49BA334();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    return sub_1B49BA54C(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    v30 = v50;
    *v50 = *a1;
    v45 = type metadata accessor for WorkoutMilestoneEntry();
    (*(v22 + 16))(&v30[*(v45 + 20)], v25, v21);
    v31 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0) + 28);
    v46 = a1;
    sub_1B4974FBC(a1 + v31, v9, &qword_1EB8A7158, &unk_1B4D20310);
    v32 = *(v47 + 48);
    if (v32(v9, 1, v10) == 1)
    {
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 4) = 0;
      v33 = &v13[*(v10 + 36)];
      sub_1B4D17BBC();
      v34 = &v13[*(v10 + 40)];
      *v34 = 0;
      *(v34 + 1) = 0;
      if (v32(v9, 1, v10) != 1)
      {
        sub_1B4975024(v9, &qword_1EB8A7158, &unk_1B4D20310);
      }
    }

    else
    {
      sub_1B49BA610(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    }

    v35 = *(v13 + 1);
    *&v36 = *v13;
    *(&v36 + 1) = HIDWORD(*v13);
    v37 = v36;
    *&v36 = v35;
    *(&v36 + 1) = SHIDWORD(v35);
    *v16 = v37;
    *(v16 + 1) = v36;
    *(v16 + 4) = *(v13 + 4);
    v38 = &v13[*(v10 + 40)];
    v39 = v46;
    v40 = v50;
    if (*(v38 + 1))
    {
      v41 = *v38;
      v42 = *(v38 + 1);

      v43 = v49;
      sub_1B4D1797C();

      sub_1B49BA54C(v13, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    }

    else
    {
      sub_1B49BA54C(v13, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v44 = sub_1B4D179BC();
      v43 = v49;
      (*(*(v44 - 8) + 56))(v49, 1, 1, v44);
    }

    sub_1B498B270(v43, &v16[*(v48 + 36)], &qword_1EB8A6C20, &unk_1B4D1FBF0);
    (*(v22 + 8))(v25, v21);
    sub_1B49BA54C(v39, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    return sub_1B49BA610(v16, &v40[*(v45 + 24)], type metadata accessor for LocalizedDate);
  }
}

uint64_t WorkoutMilestonePropertyValue.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue(0);
  v3 = *(v0 + 1);
  sub_1B49BA5C8(&qword_1EB8A7168, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49B9098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v71 = a4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v61 - v12;
  v67 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  v65 = *(v67 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v74 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WorkoutMilestoneEntry();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v75 = *(v20 - 8);
  v76 = v20;
  v21 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2;
  v24 = *(a3 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  v62 = a1;
  v66 = v16;
  if (v24)
  {
    v77 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF1FC(0, v24, 0);
    v25 = v77;
    v26 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v73 = *(v16 + 72);
    while (1)
    {
      v27 = sub_1B49BA4E4(v26, v19, type metadata accessor for WorkoutMilestoneEntry);
      MEMORY[0x1EEE9AC00](v27);
      *(&v61 - 2) = v19;
      sub_1B49BA5C8(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      sub_1B4D17DAC();
      if (v4)
      {
        break;
      }

      sub_1B49BA54C(v19, type metadata accessor for WorkoutMilestoneEntry);
      v77 = v25;
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1B4BCF1FC(v28 > 1, v29 + 1, 1);
        v25 = v77;
      }

      *(v25 + 16) = v29 + 1;
      sub_1B49BA610(v23, v25 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
      v26 += v73;
      if (!--v24)
      {
        a1 = v62;
        goto LABEL_9;
      }
    }

    sub_1B49BA54C(v19, type metadata accessor for WorkoutMilestoneEntry);
  }

  else
  {
LABEL_9:
    v31 = a1[1];

    a1[1] = v25;
    v32 = v71;
    v33 = *(v71 + 16);
    if (v33)
    {
      v77 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF1DC(0, v33, 0);
      v75 = v77;
      v34 = -1 << *(v32 + 32);
      v73 = v32 + 64;
      result = sub_1B4D188DC();
      v35 = result;
      v36 = 0;
      v76 = *(v32 + 36);
      v63 = v32 + 72;
      v64 = v33;
      while ((v35 & 0x8000000000000000) == 0 && v35 < 1 << *(v32 + 32))
      {
        v39 = v35 >> 6;
        if ((*(v73 + 8 * (v35 >> 6)) & (1 << v35)) == 0)
        {
          goto LABEL_34;
        }

        if (v76 != *(v32 + 36))
        {
          goto LABEL_35;
        }

        v72 = v36;
        v40 = v70;
        v41 = *(v70 + 48);
        v42 = *(v32 + 56);
        v43 = *(*(v32 + 48) + 8 * v35);
        v44 = v68;
        sub_1B49BA4E4(v42 + *(v66 + 72) * v35, &v68[v41], type metadata accessor for WorkoutMilestoneEntry);
        v45 = v5;
        v46 = v69;
        *v69 = v43;
        v47 = v46 + *(v40 + 48);
        v48 = sub_1B49BA610(&v44[v41], v47, type metadata accessor for WorkoutMilestoneEntry);
        MEMORY[0x1EEE9AC00](v48);
        *(&v61 - 2) = v43;
        *(&v61 - 1) = v47;
        sub_1B49BA5C8(&qword_1EB8A7190, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
        sub_1B4D17DAC();
        if (v45)
        {
          sub_1B4975024(v46, &qword_1EB8A7188, &unk_1B4D20E20);
        }

        sub_1B4975024(v46, &qword_1EB8A7188, &unk_1B4D20E20);
        v49 = v75;
        v77 = v75;
        v51 = *(v75 + 16);
        v50 = *(v75 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1B4BCF1DC(v50 > 1, v51 + 1, 1);
          v49 = v77;
        }

        *(v49 + 16) = v51 + 1;
        v52 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v75 = v49;
        result = sub_1B49BA610(v74, v49 + v52 + *(v65 + 72) * v51, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
        v32 = v71;
        v37 = 1 << *(v71 + 32);
        if (v35 >= v37)
        {
          goto LABEL_36;
        }

        v53 = *(v73 + 8 * v39);
        if ((v53 & (1 << v35)) == 0)
        {
          goto LABEL_37;
        }

        if (v76 != *(v71 + 36))
        {
          goto LABEL_38;
        }

        v5 = 0;
        v54 = v53 & (-2 << (v35 & 0x3F));
        if (v54)
        {
          v37 = __clz(__rbit64(v54)) | v35 & 0x7FFFFFFFFFFFFFC0;
          v38 = v64;
        }

        else
        {
          v55 = v39 << 6;
          v56 = v39 + 1;
          v38 = v64;
          v57 = (v63 + 8 * v39);
          while (v56 < (v37 + 63) >> 6)
          {
            v59 = *v57++;
            v58 = v59;
            v55 += 64;
            ++v56;
            if (v59)
            {
              result = sub_1B497CD6C(v35, v76, 0);
              v37 = __clz(__rbit64(v58)) + v55;
              goto LABEL_12;
            }
          }

          result = sub_1B497CD6C(v35, v76, 0);
        }

LABEL_12:
        v36 = v72 + 1;
        v35 = v37;
        if (v72 + 1 == v38)
        {
          a1 = v62;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    else
    {
      v75 = MEMORY[0x1E69E7CC0];
LABEL_32:
      v60 = a1[2];

      a1[2] = v75;
    }
  }

  return result;
}

uint64_t WorkoutMilestoneEntry.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  sub_1B49BA5C8(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49B98E4(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = a2;
  v15 = a3;
  sub_1B49BA5C8(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  result = sub_1B4D17DAC();
  if (!v3)
  {
    v13 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0) + 24);
    sub_1B4975024(&a1[v13], &qword_1EB8A7148, &unk_1B4D25C40);
    sub_1B49BA610(v11, &a1[v13], type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    return (*(v8 + 56))(&a1[v13], 0, 1, v7);
  }

  return result;
}

uint64_t sub_1B49B9A80()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue(0);
  v3 = *(v0 + 1);
  sub_1B49BA5C8(&qword_1EB8A7168, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49B9B54(char *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = *a2;
  v9 = type metadata accessor for WorkoutMilestoneEntry();
  v10 = a2 + *(v9 + 20);
  v11 = sub_1B4D1779C();
  v13 = v12;
  v14 = *(a1 + 2);

  *(a1 + 1) = v11;
  *(a1 + 2) = v13;
  v18 = a2 + *(v9 + 24);
  sub_1B49BA5C8(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4D17DAC();
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0) + 28);
  sub_1B4975024(&a1[v15], &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B49BA610(v8, &a1[v15], type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  return (*(v5 + 56))(&a1[v15], 0, 1, v4);
}

uint64_t sub_1B49B9D2C()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  sub_1B49BA5C8(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  return sub_1B4D17DAC();
}

void sub_1B49B9DEC(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for WorkoutMilestoneEntry();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7150, &qword_1B4D46FB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v55 - v16);
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_22;
  }

  v55 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v57 = *(v15 + 72);
  v59 = a1;
  sub_1B4974FBC(a1 + v19, &v55 - v16, &qword_1EB8A7150, &qword_1B4D46FB0);
  v63 = *v17;
  v20 = v63;
  v56 = v18;
  sub_1B49BA610(v17 + v18, v11, type metadata accessor for WorkoutMilestoneEntry);
  v21 = *a3;
  v22 = sub_1B49EF0B0(v20);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_1B498528C(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_1B49EF0B0(v20);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_1B4D18E1C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v33 = v8;
  v34 = v22;
  sub_1B49890E4();
  v22 = v34;
  v8 = v33;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v62 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1B49BA54C(v11, type metadata accessor for WorkoutMilestoneEntry);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v35 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  *(v35[6] + 8 * v22) = v20;
  v36 = *(v8 + 72);
  sub_1B49BA610(v11, v35[7] + v36 * v22, type metadata accessor for WorkoutMilestoneEntry);
  v37 = v35[2];
  v26 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (!v26)
  {
    v35[2] = v38;
    v39 = v59;
    if (v58 == 1)
    {
LABEL_22:

      return;
    }

    v40 = v59 + v57 + v19;
    v41 = 1;
    while (v41 < *(v39 + 16))
    {
      sub_1B4974FBC(v40, v17, &qword_1EB8A7150, &qword_1B4D46FB0);
      v63 = *v17;
      v42 = v63;
      sub_1B49BA610(v17 + v56, v11, type metadata accessor for WorkoutMilestoneEntry);
      v43 = *a3;
      v44 = sub_1B49EF0B0(v42);
      v46 = v43[2];
      v47 = (v45 & 1) == 0;
      v26 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v26)
      {
        goto LABEL_23;
      }

      v49 = v45;
      if (v43[3] < v48)
      {
        sub_1B498528C(v48, 1);
        v50 = *a3;
        v44 = sub_1B49EF0B0(v42);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v49)
      {
        goto LABEL_9;
      }

      v52 = *a3;
      *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      *(v52[6] + 8 * v44) = v42;
      sub_1B49BA610(v11, v52[7] + v36 * v44, type metadata accessor for WorkoutMilestoneEntry);
      v53 = v52[2];
      v26 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v41;
      v52[2] = v54;
      v40 += v57;
      v39 = v59;
      if (v58 == v41)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](39, 0xE100000000000000);
  sub_1B4D18A9C();
  __break(1u);
}

unint64_t sub_1B49BA334()
{
  result = qword_1EB8A7160;
  if (!qword_1EB8A7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7160);
  }

  return result;
}

uint64_t sub_1B49BA4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49BA54C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49BA5C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B49BA610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49BA6D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for WeeklyStatisticsPropertyValue() + 32);
  type metadata accessor for StatisticsPropertyValue();
  v7 = sub_1B4D1880C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t WeeklyStatisticsPropertyValue.init(cacheIndex:measurement:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1B4D1777C();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v52 - v13;
  v14 = sub_1B4D1746C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - v17;
  v19 = *a1;
  v60 = a3;
  v20 = [swift_getObjCClassFromMetadata() baseUnit];
  v62 = v18;
  v63 = a2;
  sub_1B4D1745C();

  *a4 = v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1B4D18D6C();
  v22 = *(*(TupleTypeMetadata2 - 8) + 72);
  v23 = *(*(TupleTypeMetadata2 - 8) + 80);
  swift_allocObject();
  v24 = sub_1B4D1841C();
  v26 = v25;
  v64 = v19;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v27 = sub_1B4D1796C();
  __swift_project_value_buffer(v27, qword_1EDC3CE48);
  v28 = v61;
  CacheIndex.date(for:)(v12);
  if (v28)
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v30 = v24 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v30 = v24;
    }

    *(v30 + 16) = 0;

    v31 = *(v15 + 8);
    v31(v63, v14);
    return (v31)(v62, v14);
  }

  else
  {
    v55 = *(TupleTypeMetadata2 + 48);
    v61 = 0;
    v33 = sub_1B4D178CC();
    v56 = a4;
    v34 = v33;
    v35 = sub_1B4D1771C();
    v36 = [v34 hk:v35 startOfFitnessWeekBeforeDate:?];
    v54 = v24;
    v37 = v36;

    v38 = v57;
    sub_1B4D1775C();

    v53 = v26;
    v58 = *(v58 + 8);
    v39 = v12;
    v40 = v59;
    (v58)(v39, v59);
    v41 = sub_1B4D1771C();
    v42 = sub_1B4D178CC();
    v43 = _HKCacheIndexFromDate();

    v44 = v53;
    *v53 = v43;
    (v58)(v38, v40);
    v45 = v62;
    (*(v15 + 16))(v44 + v55, v62, v14);
    sub_1B4D184BC();
    v46 = sub_1B498E1E8();
    v47 = sub_1B49BD4DC(v54, &type metadata for CacheIndex, v14, v46);

    v48 = *(v15 + 8);
    v48(v63, v14);
    v48(v45, v14);
    v49 = v56;
    *(v56 + 1) = v47;
    v50 = *(type metadata accessor for WeeklyStatisticsPropertyValue() + 32);
    v51 = type metadata accessor for StatisticsPropertyValue();
    return (*(*(v51 - 8) + 56))(&v49[v50], 1, 1, v51);
  }
}

uint64_t WeeklyStatisticsPropertyValue.statisticsExcludingEmptyWeeks()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for StatisticsPropertyValue();
  v7 = sub_1B4D1880C();
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - v12;
  v49 = v6;
  v50 = *(v6 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v41 - v19;
  result = WeeklyStatisticsPropertyValue.currentMonthStatistics()(a1);
  if (!v3)
  {
    v42 = v17;
    v43 = v5;
    v44 = v10;
    v45 = v20;
    v46 = 0;
    v22 = v49;
    v23 = *(v50 + 48);
    v24 = v23(v13, 1, v49);
    v25 = v47;
    v26 = (v47 + 16);
    if (v24 == 1)
    {
      (*(v47 + 8))(v13, v7);
      return (*(v25 + 16))(v48, v2 + *(a1 + 32), v7);
    }

    else
    {
      v41[0] = *(v50 + 32);
      v41[1] = v50 + 32;
      (v41[0])(v45, v13, v22);
      v27 = v2 + *(a1 + 32);
      v28 = v44;
      (*v26)(v44, v27, v7);
      if (v23(v28, 1, v22) == 1)
      {
        (*(v25 + 8))(v28, v7);
        v29 = v48;
        (v41[0])(v48, v45, v22);
        return (*(v50 + 56))(v29, 0, 1, v22);
      }

      else
      {
        v30 = v50;
        v31 = v42;
        (v41[0])(v42, v28, v22);
        v32 = v48;
        v34 = v45;
        v33 = v46;
        static StatisticsPropertyValue.add(_:_:)(v31, v45, v48);
        if (v33)
        {
          v35 = *(v30 + 8);
          v36 = v31;
          v37 = v49;
          v35(v36, v49);
          return (v35)(v34, v37);
        }

        else
        {
          v38 = *(v30 + 8);
          v39 = v31;
          v40 = v49;
          v38(v39, v49);
          v38(v34, v40);
          return (*(v30 + 56))(v32, 0, 1, v40);
        }
      }
    }
  }

  return result;
}

uint64_t WeeklyStatisticsPropertyValue.currentMonthStatistics()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for StatisticsPropertyValue();
  v4 = sub_1B4D1880C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = *(v1 + 8);
  sub_1B4D1746C();
  sub_1B498E1E8();
  v11[7] = v9;
  (*(*(v3 - 8) + 56))(v8, 1, 1, v3);
  v11[4] = v2;
  sub_1B4D17FEC();

  swift_getWitnessTable();
  sub_1B4D182DC();
  (*(v5 + 8))(v8, v4);
}

uint64_t WeeklyStatisticsPropertyValue.statisticsIncludingEmptyWeeks(within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a1;
  v102 = a3;
  v4 = sub_1B4D1777C();
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v82 - v8;
  v96 = sub_1B4D175FC();
  v93 = *(v96 - 8);
  v9 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v91 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v99 = sub_1B4D1746C();
  v101 = *(v99 - 8);
  v12 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v90 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v82 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v82 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v82 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v82 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v82 - v24;
  v103 = v11;
  v26 = type metadata accessor for StatisticsPropertyValue();
  v27 = sub_1B4D1880C();
  v100 = *(v27 - 8);
  v28 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v82 - v29;
  v31 = *(v26 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v82 - v37;
  v39 = v107;
  result = WeeklyStatisticsPropertyValue.statisticsExcludingEmptyWeeks()(a2, v30);
  if (!v39)
  {
    v41 = v100;
    v84 = v22;
    v107 = v38;
    v104 = v35;
    v85 = v25;
    v86 = 0;
    if ((*(v31 + 48))(v30, 1, v26) == 1)
    {
      (*(v41 + 8))(v30, v27);
      return (*(v31 + 56))(v102, 1, 1, v26);
    }

    v83 = v31;
    v42 = *(v31 + 32);
    v100 = v26;
    v42(v107, v30, v26);
    v43 = [swift_getObjCClassFromMetadata() baseUnit];
    v44 = v85;
    sub_1B4D1741C();
    v45 = *(v101 + 16);
    v46 = v84;
    v47 = v99;
    v45(v84, v44, v99);
    v48 = v87;
    v45(v87, v44, v47);
    v49 = v88;
    v45(v88, v44, v47);
    v50 = v89;
    v45(v89, v44, v47);
    v51 = v90;
    v45(v90, v44, v47);
    v52 = v46;
    v53 = v103;
    StatisticsPropertyValue.init(count:total:min:max:sumY2:sumXY:)(1, v52, v48, v49, v50, v51, v104);
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v54 = sub_1B4D1796C();
    __swift_project_value_buffer(v54, qword_1EDC3CE48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
    v55 = sub_1B4D1794C();
    v56 = *(v55 - 8);
    v57 = *(v56 + 72);
    v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1B4D1A800;
    (*(v56 + 104))(v59 + v58, *MEMORY[0x1E6969A10], v55);
    sub_1B49B56B4(v59);
    swift_setDeallocating();
    (*(v56 + 8))(v59 + v58, v55);
    swift_deallocClassInstance();
    v60 = v92;
    sub_1B4D174DC();
    v61 = v94;
    sub_1B4D174BC();
    v62 = v91;
    sub_1B4D1787C();

    v63 = v98;
    v64 = *(v97 + 8);
    v64(v61, v98);
    v64(v60, v63);
    v65 = sub_1B4D1754C();
    LOBYTE(v63) = v66;
    result = (*(v93 + 8))(v62, v96);
    v67 = 0;
    if ((v63 & 1) == 0)
    {
      v69 = v101;
      v68 = v102;
      v70 = v100;
      v71 = v104;
      if (!v65 || (v67 = v65 + 1, !__OFADD__(v65, 1)))
      {
LABEL_12:
        v72 = *&v107[*(v70 + 28)];
        v73 = __OFSUB__(v67, v72);
        v74 = v67 - v72;
        if (v73)
        {
          __break(1u);
        }

        else if ((v74 & 0x8000000000000000) == 0)
        {
          v105 = 0;
          v106 = v74;
          MEMORY[0x1EEE9AC00](result);
          *(&v82 - 2) = v53;
          *(&v82 - 1) = v71;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7198, &qword_1B4D1D1E8);
          sub_1B49BD818();
          v75 = v68;
          v76 = v107;
          v77 = v100;
          v78 = v86;
          sub_1B4D182DC();
          if (v78)
          {
            (*(v69 + 8))(v85, v99);
            v79 = *(v83 + 8);
            v79(v76, v77);
            return (v79)(v71, v77);
          }

          else
          {
            (*(v69 + 8))(v85, v99);
            v80 = v83;
            v81 = *(v83 + 8);
            v81(v76, v77);
            (*(v80 + 56))(v75, 0, 1, v77);
            return (v81)(v71, v77);
          }
        }

        __break(1u);
        return result;
      }

      __break(1u);
    }

    v69 = v101;
    v68 = v102;
    v70 = v100;
    v71 = v104;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1B49BBAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v31 = a2;
  v34 = a3;
  v3 = type metadata accessor for StatisticsPropertyValue();
  v4 = sub_1B4D1880C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  v9 = sub_1B4D1746C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = *(v3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  (*(v22 + 16))(v12, v31, v19);
  StatisticsPropertyValue.init(measurement:)(v12, v21);
  (*(v5 + 16))(v8, v32, v4);
  if ((*(v13 + 48))(v8, 1, v3) == 1)
  {
    (*(v5 + 8))(v8, v4);
    v23 = v34;
    (*(v13 + 32))(v34, v21, v3);
    v24 = v23;
  }

  else
  {
    (*(v13 + 32))(v17, v8, v3);
    v25 = v34;
    v26 = v33;
    static StatisticsPropertyValue.add(_:_:)(v17, v21, v34);
    if (v26)
    {
      v27 = *(v13 + 8);
      v27(v17, v3);
      return (v27)(v21, v3);
    }

    v29 = *(v13 + 8);
    v29(v17, v3);
    v29(v21, v3);
    v24 = v25;
  }

  return (*(v13 + 56))(v24, 0, 1, v3);
}

BOOL static WeeklyStatisticsPropertyValue.== infix(_:_:)(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for StatisticsPropertyValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v35 - v9;
  v11 = sub_1B4D1880C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v35 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = v35 - v20;
  if (*a1 != *a2)
  {
    return 0;
  }

  v37 = v19;
  v38 = v15;
  v40 = v7;
  v41 = v18;
  v36 = v10;
  v39 = v12;
  v22 = *(a1 + 1);
  v23 = *(a2 + 1);
  sub_1B4D1746C();
  sub_1B498E1E8();
  swift_getWitnessTable();
  if ((sub_1B4D1803C() & 1) == 0)
  {
    return 0;
  }

  v35[1] = a3;
  v24 = *(type metadata accessor for WeeklyStatisticsPropertyValue() + 32);
  v25 = *(v41 + 48);
  v26 = v39;
  v27 = *(v39 + 16);
  v27(v21, &a1[v24], v11);
  v27(&v21[v25], &a2[v24], v11);
  v28 = v40;
  v29 = *(v40 + 48);
  if (v29(v21, 1, v6) == 1)
  {
    if (v29(&v21[v25], 1, v6) == 1)
    {
      (*(v26 + 8))(v21, v11);
      return 1;
    }

    goto LABEL_8;
  }

  v27(v38, v21, v11);
  if (v29(&v21[v25], 1, v6) == 1)
  {
    (*(v28 + 8))(v38, v6);
LABEL_8:
    (*(v37 + 8))(v21, v41);
    return 0;
  }

  v31 = v36;
  (*(v28 + 32))(v36, &v21[v25], v6);
  v32 = v38;
  v33 = static StatisticsPropertyValue.== infix(_:_:)(v38, v31);
  v34 = *(v28 + 8);
  v34(v31, v6);
  v34(v32, v6);
  (*(v26 + 8))(v21, v11);
  return (v33 & 1) != 0;
}

uint64_t WeeklyStatisticsPropertyValue.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1B8C7D2C0](*v2);
  v4 = v2[1];
  v5 = *(a2 + 16);
  sub_1B4D1746C();
  sub_1B498E1E8();
  swift_getWitnessTable();
  sub_1B4D1802C();
  v6 = *(a2 + 32);
  type metadata accessor for StatisticsPropertyValue();
  sub_1B4D1880C();
  swift_getWitnessTable();
  return sub_1B4D1881C();
}

uint64_t WeeklyStatisticsPropertyValue.hashValue.getter(uint64_t a1)
{
  sub_1B4D18E8C();
  WeeklyStatisticsPropertyValue.hash(into:)(v3, a1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49BC394(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  WeeklyStatisticsPropertyValue.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t static WeeklyStatisticsPropertyValue.prepareForReduce(_:)()
{
  type metadata accessor for WeeklyStatisticsPropertyValue();
  sub_1B4D184BC();
  swift_getWitnessTable();
  return sub_1B4D182EC();
}

uint64_t static WeeklyStatisticsPropertyValue.add(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v79 = a4;
  v86 = sub_1B4D1796C();
  v7 = *(v86 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v10 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a3;
  v77 = type metadata accessor for StatisticsPropertyValue();
  v80 = sub_1B4D1880C();
  v83 = *(v80 - 8);
  v11 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v71 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v71 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v71 - v21;
  v81 = a2;
  v82 = a1;
  v23 = *a1;
  v24 = *a2;
  if (*a2 <= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = *a2;
  }

  v78 = v25;
  v26 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  sub_1B4D178DC();

  v88 = v23;
  v87 = v24;
  v27 = v85;
  v28 = Calendar.isSameMonth(_:_:)(&v88, &v87);
  if (v27)
  {
    return (*(v7 + 8))(v10, v86);
  }

  v30 = v28;
  v31 = v81;
  v74 = v16;
  v75 = v19;
  v76 = v22;
  v85 = v13;
  v32 = v84;
  v33 = (*(v7 + 8))(v10, v86);
  if (v30)
  {
    v34 = v82;
    v35 = v82[1];
    v36 = v31[1];
    MEMORY[0x1EEE9AC00](v33);
    v71[-2] = v32;
    sub_1B4D1746C();
    sub_1B498E1E8();

    v37 = sub_1B4D1800C();
    v38 = type metadata accessor for WeeklyStatisticsPropertyValue();
    v39 = v83;
    v40 = v76;
    v41 = v80;
    (*(v83 + 16))(v76, v34 + *(v38 + 32), v80);
    v42 = *(v39 + 32);
  }

  else
  {
    v43 = v31[1];
    v44 = v32;
    sub_1B4D1746C();
    sub_1B498E1E8();
    v88 = v43;
    sub_1B4D17FDC();

    swift_getWitnessTable();
    v45 = sub_1B4D184EC();
    v46 = v82[1];
    MEMORY[0x1EEE9AC00](v45);
    v71[-2] = v32;
    v71[-1] = v47;
    v48 = v47;
    swift_bridgeObjectRetain_n();
    v49 = sub_1B4D17FFC();
    MEMORY[0x1EEE9AC00](v49);
    v71[-2] = v32;

    v86 = sub_1B4D1800C();
    v71[1] = v71;
    v88 = v46;
    MEMORY[0x1EEE9AC00](v86);
    v71[-2] = v32;
    v71[-1] = v48;
    MEMORY[0x1EEE9AC00](v50);
    v71[-4] = v32;
    v71[-3] = sub_1B49BD958;
    v71[-2] = v51;
    sub_1B4D1801C();
    swift_getWitnessTable();
    v52 = v77;
    v53 = sub_1B4D182BC();
    v72 = 0;
    v73 = v53;

    v41 = v80;
    sub_1B4D18D6C();
    v54 = v83;
    v55 = *(v83 + 72);
    v56 = *(v83 + 80);
    swift_allocObject();
    v57 = sub_1B4D1841C();
    v59 = v58;
    v60 = type metadata accessor for WeeklyStatisticsPropertyValue();
    v61 = *(v54 + 16);
    v61(v59, v82 + *(v60 + 32), v41);
    v61(v59 + v55, v81 + *(v60 + 32), v41);
    v62 = sub_1B4D184BC();
    v88 = v57;
    MEMORY[0x1EEE9AC00](v62);
    v71[-2] = v44;
    swift_getWitnessTable();
    v63 = v72;
    sub_1B4D182BC();
    v82 = v63;

    v64 = sub_1B4D1842C();

    v88 = v64;
    v65 = v74;
    v66 = (*(*(v52 - 8) + 56))(v74, 1, 1, v52);
    MEMORY[0x1EEE9AC00](v66);
    v71[-2] = v84;
    sub_1B4D184BC();
    swift_getWitnessTable();
    v67 = v75;
    v68 = v82;
    sub_1B4D182DC();
    if (v68)
    {
      (*(v83 + 8))(v65, v41);
    }

    v69 = v83;
    (*(v83 + 8))(v65, v41);

    v42 = *(v69 + 32);
    v40 = v76;
    v42(v76, v67, v41);
    v37 = v86;
  }

  v88 = v78;
  v70 = v85;
  v42(v85, v40, v41);
  return sub_1B49BA6D4(&v88, v37, v70, v79);
}

uint64_t sub_1B49BCD30(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4D1746C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = (v15 - v11);
  *(v15 - v11) = *a1;
  (*(*(v6 - 8) + 16))(v15 + *(v13 + 48) - v11, a2, v6, v10);
  v15[0] = *v12;
  v15[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71B0, &qword_1B4D1D2B0);
  sub_1B49BDB78();
  sub_1B49BDBDC();
  LOBYTE(a3) = sub_1B4D1830C();
  (*(v8 + 8))(v12, TupleTypeMetadata2);
  return a3 & 1;
}

uint64_t sub_1B49BCEC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4D1746C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  v16[0] = *a1;
  v16[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71B0, &qword_1B4D1D2B0);
  sub_1B49BDB78();
  sub_1B49BDBDC();
  if (sub_1B4D1830C())
  {
    v13 = 1;
  }

  else
  {
    (*(v9 + 16))(v12, a2, v8);
    StatisticsPropertyValue.init(measurement:)(v12, a4);
    v13 = 0;
  }

  v14 = type metadata accessor for StatisticsPropertyValue();
  return (*(*(v14 - 8) + 56))(a4, v13, 1, v14);
}