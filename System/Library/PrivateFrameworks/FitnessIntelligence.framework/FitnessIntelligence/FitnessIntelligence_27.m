uint64_t sub_1B4BF52A8(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13[-v7];
  v9 = *a2;
  v10 = a2[1];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v14 = v9;
  v15 = v10;
  sub_1B4BF5CF8(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
    return sub_1B4BF0A84(v8, a1);
  }

  return result;
}

uint64_t sub_1B4BF5418(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  v15[1] = *a2;
  v12 = sub_1B49A69C0();
  result = (*(v12 + 32))(&type metadata for CountPropertyValue, v12);
  if (!v2)
  {
    sub_1B4BF5D94(v11, v8, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4975024(a1, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4BF5D94(v8, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }

  return result;
}

uint64_t sub_1B4BF5624(uint64_t a1)
{
  v3 = **(v1 + 16);
  result = sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  return result;
}

unint64_t sub_1B4BF5CA4()
{
  result = qword_1EB8AC1E0;
  if (!qword_1EB8AC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1E0);
  }

  return result;
}

uint64_t sub_1B4BF5CF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4BF5D40()
{
  result = qword_1EB8AC1E8;
  if (!qword_1EB8AC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1E8);
  }

  return result;
}

uint64_t sub_1B4BF5D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BF5DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BF5E64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id WorkoutVoiceLongestDistanceFact.activityType.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceLongestDistanceFact() + 28));

  return v1;
}

uint64_t type metadata accessor for WorkoutVoiceLongestDistanceFact()
{
  result = qword_1EB8AC220;
  if (!qword_1EB8AC220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoiceLongestDistanceFact.init(value:timescale:activityType:identifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a2;
  *a6 = 17;
  v12 = type metadata accessor for WorkoutVoiceLongestDistanceFact();
  v13 = v12[5];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  result = (*(*(v14 - 8) + 32))(&a6[v13], a1, v14);
  a6[v12[6]] = v11;
  *&a6[v12[7]] = a3;
  v16 = &a6[v12[8]];
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t WorkoutVoiceLongestDistanceFact.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutVoiceLongestDistanceFact() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutVoiceLongestDistanceFact.timescale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutVoiceLongestDistanceFact();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WorkoutVoiceLongestDistanceFact.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutVoiceLongestDistanceFact() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1B4BF62A0()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6C616373656D6974;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x696669746E656469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
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

uint64_t sub_1B4BF633C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4BF723C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4BF6364(uint64_t a1)
{
  v2 = sub_1B4BF6F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BF63A0(uint64_t a1)
{
  v2 = sub_1B4BF6F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceLongestDistanceFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC208, &unk_1B4D3B418);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BF6F50();
  sub_1B4D18EFC();
  v26 = *v3;
  v25 = 0;
  sub_1B4B59AD0();
  sub_1B4D18D0C();
  if (!v2)
  {
    v18 = type metadata accessor for WorkoutVoiceLongestDistanceFact();
    v11 = *(v18 + 20);
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4D18D0C();
    v12 = v18;
    v23 = v3[*(v18 + 24)];
    v22 = 2;
    sub_1B4B59B24();
    sub_1B4D18D0C();
    v19 = *&v3[*(v12 + 28)];
    v21 = 3;
    v13 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B4D18D0C();

    v14 = &v3[*(v12 + 32)];
    v15 = *v14;
    v16 = v14[1];
    v20 = 4;
    sub_1B4D18CBC();
  }

  return (*(v6 + 8))(v9, v5);
}

void WorkoutVoiceLongestDistanceFact.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC218, &qword_1B4D3B428);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for WorkoutVoiceLongestDistanceFact();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B4BF6F50();
  v30 = v10;
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    v17 = v14;
    v19 = v28;
    v18 = v29;
    v39 = 0;
    sub_1B4B59B78();
    sub_1B4D18C0C();
    *v17 = v40;
    v38 = 1;
    sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4D18C0C();
    (*(v18 + 32))(&v17[*(v11 + 20)], v7, v4);
    v36 = 2;
    sub_1B4B59BCC();
    v20 = v30;
    sub_1B4D18C0C();
    v17[*(v11 + 24)] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v26 = v11;
    v35 = 3;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B4D18C0C();
    *&v17[*(v26 + 28)] = v33;
    v34 = 4;
    v21 = sub_1B4D18BBC();
    v23 = v22;
    (*(v19 + 8))(v20, v31);
    v24 = v27;
    v25 = &v17[*(v26 + 32)];
    *v25 = v21;
    v25[1] = v23;
    sub_1B4B94EA4(v17, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    sub_1B4BF6FA4(v17);
  }
}

uint64_t _s19FitnessIntelligence31WorkoutVoiceLongestDistanceFactV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40[-v10];
  v12 = *a1;
  v13 = *a2;
  if (v12 <= 0x11)
  {
    if (v12 == 16)
    {
      if (v13 != 16)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v12 == 17)
    {
      if (v13 != 17)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

LABEL_10:
    if ((v13 & 0xFC) == 0x10)
    {
      goto LABEL_29;
    }

    v40[15] = v12;
    v40[14] = v13;
    DistanceReference.rawValue.getter();
    DistanceReference.rawValue.getter();
    sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
    v14 = sub_1B4D1816C();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v15(v11, v4);
    if ((v14 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  if (v12 != 18)
  {
    if (v12 == 19)
    {
      if (v13 != 19)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v13 != 18)
  {
    goto LABEL_29;
  }

LABEL_16:
  v16 = type metadata accessor for WorkoutVoiceLongestDistanceFact();
  v17 = v16[5];
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4975E34(a1[v16[6]], a2[v16[6]]) & 1) == 0)
  {
    goto LABEL_29;
  }

  v18 = v16[7];
  v19 = *&a1[v18];
  v20 = *&a2[v18];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21 || (v22 = v21, objc_opt_self(), (v23 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if (sub_1B4D187AC())
    {
      goto LABEL_24;
    }

LABEL_29:
    v38 = 0;
    return v38 & 1;
  }

  v24 = v23;
  v25 = v19;
  v26 = v20;
  [v22 coordinate];
  v28 = v27;
  [v24 coordinate];
  if (v28 != v29)
  {

    goto LABEL_29;
  }

  [v22 coordinate];
  v31 = v30;
  [v24 coordinate];
  v33 = v32;

  if (v31 != v33)
  {
    goto LABEL_29;
  }

LABEL_24:
  v34 = v16[8];
  v35 = *&a1[v34];
  v36 = *&a1[v34 + 8];
  v37 = &a2[v34];
  if (v35 == *v37 && v36 == *(v37 + 1))
  {
    v38 = 1;
  }

  else
  {
    v38 = sub_1B4D18DCC();
  }

  return v38 & 1;
}

unint64_t sub_1B4BF6F50()
{
  result = qword_1EB8AC210;
  if (!qword_1EB8AC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC210);
  }

  return result;
}

uint64_t sub_1B4BF6FA4(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceLongestDistanceFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4BF7028()
{
  sub_1B4BBAAF0(319, &qword_1EDC3CE78, &qword_1EDC3CB80, 0x1E696B058, MEMORY[0x1E6968070]);
  if (v0 <= 0x3F)
  {
    sub_1B4BBAAF0(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B4BF7138()
{
  result = qword_1EB8AC230;
  if (!qword_1EB8AC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC230);
  }

  return result;
}

unint64_t sub_1B4BF7190()
{
  result = qword_1EB8AC238;
  if (!qword_1EB8AC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC238);
  }

  return result;
}

unint64_t sub_1B4BF71E8()
{
  result = qword_1EB8AC240;
  if (!qword_1EB8AC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC240);
  }

  return result;
}

uint64_t sub_1B4BF723C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616373656D6974 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

__n128 AudioSynthesisVoiceAsset.init(voice:userSelected:downloadStatus:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = a3[1].n128_u8[0];
  v7 = a3[1].n128_u8[1];
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 32) = a2;
  result = *a3;
  *(a4 + 40) = *a3;
  *(a4 + 56) = v6;
  *(a4 + 57) = v7;
  return result;
}

FitnessIntelligence::AudioSynthesisVoiceAsset::DownloadProgress __swiftcall AudioSynthesisVoiceAsset.DownloadProgress.init(bytesWritten:bytesExpected:)(Swift::Int bytesWritten, Swift::Int bytesExpected)
{
  *v2 = bytesWritten;
  v2[1] = bytesExpected;
  result.bytesExpected = bytesExpected;
  result.bytesWritten = bytesWritten;
  return result;
}

uint64_t AudioSynthesisVoiceAsset.voice.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 AudioSynthesisVoiceAsset.downloadStatus.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 57);
  result = *(v1 + 40);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

uint64_t sub_1B4BF7508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_1B4BF7550(uint64_t result, int a2, int a3)
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
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioSynthesisVoiceAsset.DownloadStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioSynthesisVoiceAsset.DownloadStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t sub_1B4BF7604(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double WorkoutPropertyRecord.init(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v37 - v5;
  v42 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v41 = *(v42 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v39 = *a1;
  v38 = v18;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v19 + 28), v12, &qword_1EB8A7CE8, &qword_1B4D201A0);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    sub_1B4D17BBC();
    v21 = &v17[v13[5]];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = &v17[v13[6]];
    *v22 = 0;
    *(v22 + 1) = 0;
    v23 = &v17[v13[7]];
    *v23 = 0;
    v23[8] = 1;
    v24 = &v17[v13[8]];
    *v24 = 0;
    v24[8] = 1;
    v25 = &v17[v13[9]];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v17[v13[10]];
    *v26 = 0;
    *(v26 + 1) = 0;
    if (v20(v12, 1, v13) != 1)
    {
      sub_1B4975024(v12, &qword_1EB8A7CE8, &qword_1B4D201A0);
    }
  }

  else
  {
    sub_1B4BF7C78(v12, v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  }

  v27 = v51;
  WorkoutPropertyDimensions.init(_:)(v17, v49);
  if (v27)
  {
    sub_1B4BF7C18(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
  }

  else
  {
    v45 = v49[0];
    v46 = v49[1];
    v47 = v49[2];
    v48 = v50;
    sub_1B4974FBC(a1 + *(v19 + 32), v6, &qword_1EB8A7CD8, &unk_1B4D20190);
    v29 = *(v41 + 48);
    v30 = v42;
    if (v29(v6, 1, v42) == 1)
    {
      v31 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
      v32 = v43;
      (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
      v33 = v32 + *(v30 + 20);
      sub_1B4D17BBC();
      if (v29(v6, 1, v30) != 1)
      {
        sub_1B4975024(v6, &qword_1EB8A7CD8, &unk_1B4D20190);
      }
    }

    else
    {
      v32 = v43;
      sub_1B4BF7C78(v6, v43, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
    }

    sub_1B4BEEFE8(v32, v44);
    sub_1B4BF7C18(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
    sub_1B4BF7C18(v32, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
    v34 = v40;
    sub_1B496F398(v44, v40 + 72);
    v35 = v38;
    *v34 = v39;
    *(v34 + 8) = v35;
    v36 = v46;
    *(v34 + 16) = v45;
    *(v34 + 32) = v36;
    result = *&v47;
    *(v34 + 48) = v47;
    *(v34 + 64) = v48;
  }

  return result;
}

uint64_t WorkoutPropertyRecord.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4BF80F8(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BF7C18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4BF7C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BF7CE0(char *a1, uint64_t a2)
{
  v26 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v22 = *(v26 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  *a1 = *a2;
  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  v24[0] = v13;
  v24[1] = v14;
  v24[2] = v15;
  v25 = *(a2 + 64);
  v23 = v24;
  sub_1B4BF80F8(qword_1EDC3B440, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  sub_1B4D17DAC();
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  v17 = *(v16 + 28);
  sub_1B4975024(&a1[v17], &qword_1EB8A7CE8, &qword_1B4D201A0);
  sub_1B4BF7C78(v12, &a1[v17], type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  (*(v9 + 56))(&a1[v17], 0, 1, v8);
  v18 = *(a2 + 104);
  __swift_project_boxed_opaque_existential_1((a2 + 72), *(a2 + 96));
  result = WorkoutProperty.protobuf()();
  if (!v2)
  {
    v20 = *(v16 + 32);
    sub_1B4975024(&a1[v20], &qword_1EB8A7CD8, &unk_1B4D20190);
    sub_1B4BF7C78(v7, &a1[v20], type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
    return (*(v22 + 56))(&a1[v20], 0, 1, v26);
  }

  return result;
}

uint64_t sub_1B4BF8038()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4BF80F8(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BF80F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HeartRateZonesFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4BF81CC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t static HeartRateZonesFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49C016C;

  return sub_1B4BF8608(a1, a3);
}

uint64_t sub_1B4BF82FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49C0344;

  return sub_1B4BF8608(a1, a3);
}

uint64_t sub_1B4BF83C0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v8 = 0.0;
  if (v6)
  {
    while (1)
    {
      v9 = v2;
LABEL_9:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v8 = v8 + *(*(result + 56) + ((v9 << 9) | (8 * v10)));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_9;
    }
  }

  if (*(result + 16))
  {
    result = sub_1B49EF0B0(4);
    if ((v11 & 1) != 0 && *(*(v1 + 56) + 8 * result) / v8 * 100.0 > 20.0)
    {
      v12 = *(*(v1 + 56) + 8 * result) / v8 * 100.0;
      return 5;
    }
  }

  v13 = 1 << *(v1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v1 + 64);
  if (v15)
  {
    v16 = 0;
    v17 = __clz(__rbit64(v15));
    v18 = (v15 - 1) & v15;
    v19 = (v13 + 63) >> 6;
LABEL_23:
    v23 = *(v1 + 48);
    v24 = *(v1 + 56);
    v25 = *(v23 + 8 * v17);
    v26 = *(v24 + 8 * v17);
    if (!v18)
    {
      goto LABEL_25;
    }

    do
    {
      v27 = v16;
LABEL_29:
      v28 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v29 = (v27 << 9) | (8 * v28);
      if (v26 < *(v24 + v29))
      {
        v25 = *(v23 + v29);
        v26 = *(v24 + v29);
      }
    }

    while (v18);
LABEL_25:
    while (1)
    {
      v27 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_38;
      }

      if (v27 >= v19)
      {
        if (v8 <= 0.0)
        {
          return 0;
        }

        result = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_39;
        }

        return result;
      }

      v18 = *(v3 + 8 * v27);
      ++v16;
      if (v18)
      {
        v16 = v27;
        goto LABEL_29;
      }
    }
  }

  v20 = 0;
  v21 = 0;
  v19 = (v13 + 63) >> 6;
  while (v19 - 1 != v21)
  {
    v16 = v21 + 1;
    v22 = *(v1 + 72 + 8 * v21);
    v20 -= 64;
    ++v21;
    if (v22)
    {
      v18 = (v22 - 1) & v22;
      v17 = __clz(__rbit64(v22)) - v20;
      goto LABEL_23;
    }
  }

  return 0;
}

uint64_t sub_1B4BF8608(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = type metadata accessor for WorkoutState();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BF8700, 0, 0);
}

uint64_t sub_1B4BF8700()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_1B49B4670(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B49933E8(v0[3]);
LABEL_11:
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v4 = v0[6];
  v5 = v0[4];
  sub_1B49B46E0(v0[3], v4);
  v6 = *(v4 + *(v5 + 96));
  v7 = v0[6];
  if (!v6)
  {
LABEL_8:
    sub_1B49AA7C0(v0[6]);
    goto LABEL_11;
  }

  v8 = sub_1B4CAC70C(v7);
  v9 = *(v8 + 2);
  v10 = 32;
  do
  {
    if (!v9)
    {
      v18 = v0[6];

      sub_1B49AA7C0(v18);

      goto LABEL_11;
    }

    v11 = *&v8[v10];
    v10 += 8;
    --v9;
  }

  while (v11 != 38);

  v12 = sub_1B4BF83C0(v6);
  v14 = v13;
  v16 = v15;

  v17 = v0[6];
  if (v16)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC278, &qword_1B4D3B818);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B4D1A800;
  *(v19 + 32) = v12;
  *(v19 + 40) = v14;
  sub_1B49AA7C0(v17);
LABEL_12:
  v20 = v0[6];
  v21 = v0[3];

  v22 = v0[1];

  return v22(v19);
}

unint64_t _s19FitnessIntelligence18HeartRateZonesFactV10makePrompt15promptFormatterSSAA0hJ0C_tF_0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B4D1896C();

  v3 = sub_1B4D18D5C();
  MEMORY[0x1B8C7C620](v3);

  MEMORY[0x1B8C7C620](0x20726F6620, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74F0, &unk_1B4D35700);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E63B0];
  *(v4 + 16) = xmmword_1B4D1A800;
  v6 = MEMORY[0x1E69E6438];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_1B4D1819C();
  MEMORY[0x1B8C7C620](v7);

  MEMORY[0x1B8C7C620](0xD000000000000010, 0x80000001B4D62ED0);
  return 0xD000000000000019;
}

unint64_t sub_1B4BF8A00()
{
  result = qword_1EB8AC248;
  if (!qword_1EB8AC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC248);
  }

  return result;
}

unint64_t sub_1B4BF8A80()
{
  result = qword_1EB8AC250;
  if (!qword_1EB8AC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC250);
  }

  return result;
}

unint64_t sub_1B4BF8AD4()
{
  result = qword_1EB8AC258;
  if (!qword_1EB8AC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC258);
  }

  return result;
}

unint64_t sub_1B4BF8B2C()
{
  result = qword_1EB8AC260;
  if (!qword_1EB8AC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC260);
  }

  return result;
}

uint64_t sub_1B4BF8BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BF8BE8()
{
  result = qword_1EB8AC268;
  if (!qword_1EB8AC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC268);
  }

  return result;
}

unint64_t sub_1B4BF8C3C()
{
  result = qword_1EB8AC270;
  if (!qword_1EB8AC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC270);
  }

  return result;
}

uint64_t sub_1B4BF8CD8(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v5, a2);
  v11 = objc_opt_self();
  v12 = [v11 *a3];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  v13 = [v11 seconds];
  sub_1B4D1745C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B4BF8E6C(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = [objc_opt_self() *a3];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  return sub_1B4D1741C();
}

uint64_t sub_1B4BF8F14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  __swift_allocate_value_buffer(v0, qword_1EB8F3B88);
  __swift_project_value_buffer(v0, qword_1EB8F3B88);
  v1 = [objc_opt_self() kilojoules];
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  return sub_1B4D1741C();
}

uint64_t sub_1B4BF8FC0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D173FC();
  sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = sub_1B4D180FC();
  v8 = *(v3 + 8);
  v8(v6, v2);
  if ((v7 & 1) == 0)
  {
    sub_1B4D173FC();
    v9 = sub_1B4D180FC();
    v8(v6, v2);
    if ((v9 & 1) == 0)
    {
      sub_1B4D173FC();
      sub_1B4D180FC();
      v8(v6, v2);
    }
  }

  sub_1B4D173FC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
  *(a1 + *(result + 28)) = 0;
  return result;
}

uint64_t sub_1B4BF91E0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D173FC();
  sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = sub_1B4D180FC();
  v8 = *(v3 + 8);
  v8(v6, v2);
  if ((v7 & 1) == 0)
  {
    sub_1B4D173FC();
    sub_1B4D180FC();
    v8(v6, v2);
  }

  sub_1B4D173FC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
  *(a1 + *(result + 28)) = 0;
  return result;
}

uint64_t sub_1B4BF93C4@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - v4;
  v6 = objc_opt_self();
  v7 = [v6 minutes];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = sub_1B4D180FC();
  v9 = *(v2 + 8);
  v9(v5, v1);
  if ((v8 & 1) == 0)
  {
    v10 = [v6 minutes];
    sub_1B4D1741C();
    sub_1B4D180FC();
    v9(v5, v1);
  }

  if (qword_1EB8A6458 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_1EB8F3B40);
  v11 = v14;
  sub_1B4D173FC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0);
  *(v11 + *(result + 28)) = 0;
  return result;
}

void *sub_1B4BF9640(uint64_t a1, int a2)
{
  LODWORD(v155) = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v135 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v156 = &v135 - v11;
  v12 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v13 = objc_opt_self();
  v14 = [v13 kilometers];
  v154 = v12;
  LOBYTE(v12) = sub_1B4D187AC();

  if (v12 & 1) != 0 || (v15 = [v13 meters], v16 = sub_1B4D187AC(), v15, (v16))
  {
    if (qword_1EB8A6460 != -1)
    {
      swift_once();
    }

    v17 = &selRef_kilometers;
    v18 = qword_1EB8F3B58;
  }

  else
  {
    if (qword_1EB8A6468 != -1)
    {
      swift_once();
    }

    v17 = &selRef_miles;
    v18 = qword_1EB8F3B70;
  }

  v19 = v156;
  v20 = __swift_project_value_buffer(v2, v18);
  (*(v3 + 16))(v19, v20, v2);
  v21 = [v13 *v17];
  sub_1B4D1745C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC280, &qword_1B4D3B840);
  v144 = v9;
  v138 = v3;
  v150 = v2;
  if (v155)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1CBF0;
    *(inited + 32) = 37;
    v139 = inited + 32;
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC288, &qword_1B4D3B848);
    v23 = swift_initStackObject();
    v155 = xmmword_1B4D1A800;
    *(v23 + 16) = xmmword_1B4D1A800;
    *(v23 + 32) = 3;
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC290, &unk_1B4D3B850);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180) - 8);
    v154 = *(v24 + 72);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v151 = *(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v155;
    sub_1B4BF8FC0(v26 + v25);
    *(v23 + 40) = v26;
    v27 = sub_1B4C954D8(v23);
    swift_setDeallocating();
    sub_1B4975024(v23 + 32, &qword_1EB8AC298, &qword_1B4D3B860);
    *(inited + 40) = v27;
    *(inited + 48) = 52;
    v28 = swift_initStackObject();
    *(v28 + 16) = v155;
    *(v28 + 32) = 3;
    v29 = swift_allocObject();
    *(v29 + 16) = v155;
    sub_1B4BF8FC0(v29 + v25);
    *(v28 + 40) = v29;
    v30 = sub_1B4C954D8(v28);
    swift_setDeallocating();
    sub_1B4975024(v28 + 32, &qword_1EB8AC298, &qword_1B4D3B860);
    *(inited + 56) = v30;
    *(inited + 64) = 13;
    v31 = swift_initStackObject();
    *(v31 + 16) = v155;
    *(v31 + 32) = 3;
    v32 = swift_allocObject();
    *(v32 + 16) = v155;
    sub_1B4BF91E0(v32 + v25);
    *(v31 + 40) = v32;
    v33 = sub_1B4C954D8(v31);
    swift_setDeallocating();
    sub_1B4975024(v31 + 32, &qword_1EB8AC298, &qword_1B4D3B860);
    *(inited + 72) = v33;
    *(inited + 80) = 71;
    v34 = swift_initStackObject();
    *(v34 + 16) = v155;
    *(v34 + 32) = 3;
    v35 = swift_allocObject();
    *(v35 + 16) = v155;
    sub_1B4BF8FC0(v35 + v25);
    *(v34 + 40) = v35;
    v36 = sub_1B4C954D8(v34);
    swift_setDeallocating();
    sub_1B4975024(v34 + 32, &qword_1EB8AC298, &qword_1B4D3B860);
    *(inited + 88) = v36;
    *(inited + 96) = 70;
    v37 = v156;
    v38 = swift_initStackObject();
    *(v38 + 16) = v155;
    *(v38 + 32) = 3;
    v39 = inited;
    v40 = swift_allocObject();
    *(v40 + 16) = v155;
    v41 = v40 + v25;
    v42 = v144;
    sub_1B4BF8FC0(v41);
    *(v38 + 40) = v40;
    v43 = sub_1B4C954D8(v38);
    swift_setDeallocating();
    sub_1B4975024(v38 + 32, &qword_1EB8AC298, &qword_1B4D3B860);
    v39[13] = v43;
    v44 = v150;
    v45 = v42;
  }

  else
  {
    v46 = swift_initStackObject();
    v143 = v46;
    *(v46 + 16) = xmmword_1B4D1CBF0;
    *(v46 + 32) = 37;
    v139 = v46 + 32;
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC288, &qword_1B4D3B848);
    v47 = swift_initStackObject();
    v141 = xmmword_1B4D1B2D0;
    *(v47 + 16) = xmmword_1B4D1B2D0;
    *(v47 + 32) = 1;
    v137 = v47 + 32;
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC290, &unk_1B4D3B850);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
    v49 = *(v48 - 8);
    v152 = *(v49 + 72);
    v50 = v48 - 8;
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v147 = *(v49 + 80);
    v148 = v48 - 8;
    v52 = swift_allocObject();
    v155 = xmmword_1B4D1A800;
    *(v52 + 16) = xmmword_1B4D1A800;
    sub_1B4D173FC();
    v149 = *(v3 + 32);
    v151 = v3 + 32;
    v149(v52 + v51, v6, v2);
    *(v52 + v51 + *(v50 + 36)) = 0;
    *(v47 + 40) = v52;
    *(v47 + 48) = 2;
    v53 = swift_allocObject();
    *(v53 + 16) = v155;
    sub_1B4D173FC();
    v149(v53 + v51, v6, v2);
    *(v53 + v51 + *(v148 + 36)) = 0;
    *(v47 + 56) = v53;
    *(v47 + 64) = 3;
    v54 = swift_allocObject();
    *(v54 + 16) = v155;
    sub_1B4D173FC();
    v55 = v149;
    v149(v54 + v51, v6, v2);
    v56 = v148;
    *(v54 + v51 + *(v148 + 36)) = 0;
    *(v47 + 72) = v54;
    *(v47 + 80) = 4;
    v57 = swift_allocObject();
    *(v57 + 16) = v155;
    v146 = v6;
    sub_1B4D173FC();
    v58 = v6;
    v59 = v150;
    v55(v57 + v51, v58, v150);
    *(v57 + v51 + *(v56 + 36)) = 0;
    *(v47 + 88) = v57;
    v60 = sub_1B4C954D8(v47);
    swift_setDeallocating();
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC298, &qword_1B4D3B860);
    swift_arrayDestroy();
    v61 = v143;
    v143[5] = v60;
    v61[6] = 52;
    v62 = swift_initStackObject();
    *(v62 + 16) = v141;
    *(v62 + 32) = 1;
    v137 = v62 + 32;
    v63 = v51;
    v145 = v51;
    v64 = swift_allocObject();
    *(v64 + 16) = v155;
    v65 = v59;
    v66 = v146;
    sub_1B4D173FC();
    v67 = v149;
    v149(v64 + v63, v66, v65);
    *(v64 + v63 + *(v56 + 36)) = 0;
    *(v62 + 40) = v64;
    *(v62 + 48) = 2;
    v68 = v145;
    v69 = swift_allocObject();
    *(v69 + 16) = v155;
    sub_1B4D173FC();
    v67(v69 + v68, v66, v150);
    *(v69 + v68 + *(v56 + 36)) = 0;
    *(v62 + 56) = v69;
    *(v62 + 64) = 3;
    v70 = swift_allocObject();
    *(v70 + 16) = v155;
    v71 = v70 + v68;
    v72 = v146;
    sub_1B4D173FC();
    v73 = v72;
    v74 = v150;
    v67(v71, v73, v150);
    v75 = v148;
    *(v71 + *(v148 + 36)) = 0;
    *(v62 + 72) = v70;
    *(v62 + 80) = 4;
    v76 = v145;
    v77 = swift_allocObject();
    *(v77 + 16) = v155;
    v78 = v77 + v76;
    v79 = v146;
    sub_1B4D173FC();
    v80 = v79;
    v149(v78, v79, v74);
    *(v78 + *(v75 + 36)) = 0;
    *(v62 + 88) = v77;
    v81 = sub_1B4C954D8(v62);
    swift_setDeallocating();
    swift_arrayDestroy();
    v82 = v143;
    v143[7] = v81;
    v82[8] = 24;
    v83 = swift_initStackObject();
    *(v83 + 16) = v141;
    *(v83 + 32) = 1;
    v137 = v83 + 32;
    v84 = v145;
    v85 = swift_allocObject();
    *(v85 + 16) = v155;
    v136 = v85 + v84;
    sub_1B4D173FC();
    v86 = v149;
    v149(v85 + v84, v80, v74);
    *(v136 + *(v148 + 36)) = 0;
    *(v83 + 40) = v85;
    *(v83 + 48) = 2;
    v87 = swift_allocObject();
    *(v87 + 16) = v155;
    v88 = v146;
    sub_1B4D173FC();
    v86(v87 + v84, v88, v74);
    v89 = v86;
    v90 = v148;
    *(v87 + v84 + *(v148 + 36)) = 0;
    *(v83 + 56) = v87;
    *(v83 + 64) = 3;
    v91 = swift_allocObject();
    *(v91 + 16) = v155;
    v92 = v91 + v84;
    v93 = v146;
    sub_1B4D173FC();
    v94 = v93;
    v95 = v150;
    v89(v92, v94, v150);
    *(v92 + *(v90 + 36)) = 0;
    *(v83 + 72) = v91;
    *(v83 + 80) = 4;
    v96 = v145;
    v97 = swift_allocObject();
    *(v97 + 16) = v155;
    v98 = v97 + v96;
    v99 = v146;
    sub_1B4D173FC();
    v100 = v95;
    v89(v98, v99, v95);
    *(v98 + *(v90 + 36)) = 0;
    *(v83 + 88) = v97;
    v101 = sub_1B4C954D8(v83);
    swift_setDeallocating();
    swift_arrayDestroy();
    v102 = v143;
    v143[9] = v101;
    v102[10] = 13;
    v103 = swift_initStackObject();
    *(v103 + 16) = v141;
    *(v103 + 32) = 1;
    v137 = v103 + 32;
    v104 = v145;
    v105 = swift_allocObject();
    *(v105 + 16) = v155;
    v106 = v105 + v104;
    v107 = v104;
    v108 = v146;
    sub_1B4D173FC();
    v109 = v100;
    v110 = v149;
    v149(v106, v108, v109);
    *(v106 + *(v148 + 36)) = 0;
    *(v103 + 40) = v105;
    *(v103 + 48) = 2;
    v111 = swift_allocObject();
    *(v111 + 16) = v155;
    sub_1B4D173FC();
    v110(v111 + v107, v108, v150);
    v112 = v110;
    v113 = v148;
    *(v111 + v107 + *(v148 + 36)) = 0;
    *(v103 + 56) = v111;
    *(v103 + 64) = 3;
    v114 = swift_allocObject();
    *(v114 + 16) = v155;
    sub_1B4D173FC();
    v115 = v150;
    v112(v114 + v107, v108, v150);
    *(v114 + v107 + *(v113 + 36)) = 0;
    *(v103 + 72) = v114;
    *(v103 + 80) = 4;
    v116 = v145;
    v117 = swift_allocObject();
    *(v117 + 16) = v155;
    v118 = v116;
    sub_1B4D173FC();
    v149(v117 + v116, v108, v115);
    *(v117 + v116 + *(v113 + 36)) = 0;
    *(v103 + 88) = v117;
    v119 = sub_1B4C954D8(v103);
    swift_setDeallocating();
    swift_arrayDestroy();
    v120 = v143;
    v143[11] = v119;
    v120[12] = 46;
    v121 = swift_initStackObject();
    *(v121 + 16) = v141;
    *(v121 + 32) = 1;
    v142 = v121 + 32;
    v122 = swift_allocObject();
    *(v122 + 16) = v155;
    sub_1B4D173FC();
    v149(v122 + v116, v108, v150);
    *(v122 + v116 + *(v148 + 36)) = 0;
    *(v121 + 40) = v122;
    *(v121 + 48) = 2;
    v123 = swift_allocObject();
    *(v123 + 16) = v155;
    sub_1B4D173FC();
    v124 = v108;
    v125 = v108;
    v126 = v149;
    v44 = v150;
    v149(v123 + v116, v124, v150);
    v127 = v148;
    *(v123 + v116 + *(v148 + 36)) = 0;
    *(v121 + 56) = v123;
    *(v121 + 64) = 3;
    v128 = swift_allocObject();
    *(v128 + 16) = v155;
    sub_1B4D173FC();
    v126(v128 + v116, v125, v44);
    *(v128 + v116 + *(v127 + 36)) = 0;
    *(v121 + 72) = v128;
    *(v121 + 80) = 4;
    v37 = v156;
    v129 = swift_allocObject();
    *(v129 + 16) = v155;
    v130 = v129 + v118;
    v39 = v143;
    sub_1B4D173FC();
    v149(v130, v125, v44);
    *(v130 + *(v127 + 36)) = 0;
    *(v121 + 88) = v129;
    v131 = sub_1B4C954D8(v121);
    swift_setDeallocating();
    swift_arrayDestroy();
    v39[13] = v131;
    v45 = v144;
  }

  v132 = sub_1B4C95500(v39);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2A0, &unk_1B4D3B868);
  swift_arrayDestroy();
  v133 = *(v138 + 8);
  v133(v45, v44);
  v133(v37, v44);
  return v132;
}

unint64_t sub_1B4BFA890(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  v10 = [objc_opt_self() minutes];
  v41 = v2;
  sub_1B4D1745C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2C8, &unk_1B4D3B8A0);
  if (a1)
  {
    inited = swift_initStackObject();
    v40 = xmmword_1B4D1A800;
    *(inited + 16) = xmmword_1B4D1A800;
    *(inited + 32) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2D0, &unk_1B4D47220);
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0) - 8);
    v13 = *(v12 + 72);
    v14 = v3;
    v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v40;
    sub_1B4BF93C4(v16 + v15);
    *(inited + 40) = v16;
    v17 = sub_1B4C9553C(inited);
    swift_setDeallocating();
    sub_1B4975024(inited + 32, qword_1EB8AC2D8, &qword_1B4D3B8B8);
  }

  else
  {
    v36 = v9;
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_1B4D1B2D0;
    *(v18 + 32) = 1;
    v35 = v18 + 32;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2D0, &unk_1B4D47220);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0);
    v21 = *(*(v20 - 8) + 80);
    v22 = (v21 + 32) & ~v21;
    *&v40 = *(*(v20 - 8) + 72);
    v38 = v21;
    v23 = v19;
    v24 = swift_allocObject();
    v39 = xmmword_1B4D1A800;
    *(v24 + 16) = xmmword_1B4D1A800;
    v25 = v24 + v22;
    if (qword_1EB8A6450 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v41, qword_1EB8F3B28);
    v33[2] = sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D173FC();
    v34 = v3;
    v33[0] = *(v3 + 32);
    (v33[0])(v25, v6, v41);
    *(v25 + *(v20 + 28)) = 0;
    *(v18 + 40) = v24;
    *(v18 + 48) = 2;
    v37 = v23;
    v27 = swift_allocObject();
    *(v27 + 16) = v39;
    v33[1] = v26;
    sub_1B4D173FC();
    v28 = v33[0];
    (v33[0])(v27 + v22, v6, v41);
    *(v27 + v22 + *(v20 + 28)) = 0;
    *(v18 + 56) = v27;
    *(v18 + 64) = 3;
    v29 = swift_allocObject();
    *(v29 + 16) = v39;
    sub_1B4D173FC();
    v28(v29 + v22, v6, v41);
    *(v29 + v22 + *(v20 + 28)) = 0;
    *(v18 + 72) = v29;
    *(v18 + 80) = 4;
    v30 = swift_allocObject();
    *(v30 + 16) = v39;
    v31 = v30 + v22;
    v14 = v34;
    sub_1B4D173FC();
    v28(v31, v6, v41);
    *(v31 + *(v20 + 28)) = 0;
    *(v18 + 88) = v30;
    v17 = sub_1B4C9553C(v18);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8AC2D8, &qword_1B4D3B8B8);
    swift_arrayDestroy();
    v9 = v36;
  }

  (*(v14 + 8))(v9, v41);
  return v17;
}

unint64_t sub_1B4BFAE5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v37 = *(v0 - 8);
  v1 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  if (qword_1EDC36DF0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDC36DF8;
  v8 = sub_1B4D187AC();

  v39 = v0;
  if (v8 & 1) != 0 || (v9 = [objc_opt_self() kilocalories], v10 = sub_1B4D187AC(), v9, (v10))
  {
    v11 = v7;
    sub_1B4D1741C();
  }

  else
  {
    if (qword_1EB8A6470 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v0, qword_1EB8F3B88);
    (*(v37 + 16))(v5, v12, v0);
  }

  v33 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2A8, &qword_1B4D3B878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1B2D0;
  *(inited + 32) = 1;
  v31 = inited + 32;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2B0, &qword_1B4D3B880);
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2B8, &qword_1B4D3B888) - 8);
  v15 = *(*v14 + 80);
  v16 = (v15 + 32) & ~v15;
  v34 = *(*v14 + 72);
  v35 = v15;
  v17 = swift_allocObject();
  v38 = xmmword_1B4D1A800;
  *(v17 + 16) = xmmword_1B4D1A800;
  v18 = v32;
  sub_1B4D173FC();
  v36 = *(v37 + 32);
  v36(v17 + v16, v18, v39);
  *(v17 + v16 + v14[9]) = 0;
  *(inited + 40) = v17;
  *(inited + 48) = 2;
  v19 = swift_allocObject();
  *(v19 + 16) = v38;
  v29 = v5;
  sub_1B4D173FC();
  v36(v19 + v16, v18, v39);
  *(v19 + v16 + v14[9]) = 0;
  *(inited + 56) = v19;
  *(inited + 64) = 3;
  v20 = swift_allocObject();
  *(v20 + 16) = v38;
  sub_1B4D173FC();
  v21 = v39;
  v22 = v36;
  v36(v20 + v16, v18, v39);
  *(v20 + v16 + v14[9]) = 0;
  *(inited + 72) = v20;
  *(inited + 80) = 4;
  v23 = swift_allocObject();
  *(v23 + 16) = v38;
  v24 = v23 + v16;
  v25 = v29;
  sub_1B4D173FC();
  v22(v24, v18, v21);
  *(v24 + v14[9]) = 0;
  *(inited + 88) = v23;
  v26 = sub_1B4C95514(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2C0, &unk_1B4D3B890);
  swift_arrayDestroy();
  (*(v37 + 8))(v25, v21);
  return v26;
}

void *sub_1B4BFB398()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v92 - v6;
  v7 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v8 = objc_opt_self();
  v9 = [v8 kilometers];
  v109 = v7;
  v10 = sub_1B4D187AC();

  v106 = v0;
  if (v10 & 1) != 0 || (v11 = [v8 meters], v12 = sub_1B4D187AC(), v11, (v12))
  {
    v13 = v1;
    v14 = [v8 meters];
    sub_1B4D1741C();
  }

  else
  {
    if (qword_1EB8A6468 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v0, qword_1EB8F3B70);
    v13 = v1;
    (*(v1 + 16))(v105, v15, v0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC280, &qword_1B4D3B840);
  inited = swift_initStackObject();
  v97 = inited;
  v98 = xmmword_1B4D1B2D0;
  *(inited + 16) = xmmword_1B4D1B2D0;
  *(inited + 32) = 37;
  v94 = inited + 32;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC288, &qword_1B4D3B848);
  v17 = swift_initStackObject();
  *(v17 + 16) = v98;
  *(v17 + 32) = 1;
  v92 = v17 + 32;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC290, &unk_1B4D3B850);
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180) - 8);
  v19 = *v18;
  v104 = *(*v18 + 72);
  v100 = v18;
  v20 = *(v19 + 80);
  v21 = (v20 + 32) & ~v20;
  v107 = v21;
  v108 = v20;
  v22 = swift_allocObject();
  v110 = xmmword_1B4D1A800;
  *(v22 + 16) = xmmword_1B4D1A800;
  sub_1B4D173FC();
  v93 = v13;
  v101 = *(v13 + 32);
  v101(v22 + v21, v4, v106);
  v102 = v13 + 32;
  *(v22 + v21 + v18[9]) = 0;
  *(v17 + 40) = v22;
  *(v17 + 48) = 2;
  v23 = v107;
  v24 = swift_allocObject();
  *(v24 + 16) = v110;
  sub_1B4D173FC();
  v25 = v101;
  v101(v24 + v23, v4, v106);
  *(v24 + v23 + v100[9]) = 0;
  *(v17 + 56) = v24;
  *(v17 + 64) = 3;
  v26 = v107;
  v27 = swift_allocObject();
  *(v27 + 16) = v110;
  sub_1B4D173FC();
  v28 = v106;
  v25(v27 + v26, v4, v106);
  v29 = v25;
  v30 = v100;
  *(v27 + v26 + v100[9]) = 0;
  *(v17 + 72) = v27;
  *(v17 + 80) = 4;
  v31 = v107;
  v32 = swift_allocObject();
  *(v32 + 16) = v110;
  sub_1B4D173FC();
  v29(v32 + v31, v4, v28);
  *(v32 + v31 + v30[9]) = 0;
  *(v17 + 88) = v32;
  v33 = sub_1B4C954D8(v17);
  swift_setDeallocating();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC298, &qword_1B4D3B860);
  swift_arrayDestroy();
  v34 = v97;
  v97[5] = v33;
  v34[6] = 52;
  v35 = swift_initStackObject();
  *(v35 + 16) = v98;
  *(v35 + 32) = 1;
  v92 = v35 + 32;
  v36 = v107;
  v37 = swift_allocObject();
  *(v37 + 16) = v110;
  v99 = v4;
  sub_1B4D173FC();
  v38 = v106;
  v101(v37 + v36, v4, v106);
  *(v37 + v36 + v100[9]) = 0;
  *(v35 + 40) = v37;
  *(v35 + 48) = 2;
  v39 = v107;
  v40 = swift_allocObject();
  *(v40 + 16) = v110;
  v41 = v99;
  sub_1B4D173FC();
  v101(v40 + v39, v41, v38);
  v42 = v100;
  *(v40 + v39 + v100[9]) = 0;
  *(v35 + 56) = v40;
  *(v35 + 64) = 3;
  v43 = v107;
  v44 = swift_allocObject();
  *(v44 + 16) = v110;
  v45 = v44 + v43;
  v46 = v99;
  sub_1B4D173FC();
  v47 = v46;
  v48 = v106;
  v49 = v101;
  v101(v45, v47, v106);
  *(v45 + v42[9]) = 0;
  *(v35 + 72) = v44;
  *(v35 + 80) = 4;
  v50 = v107;
  v51 = swift_allocObject();
  *(v51 + 16) = v110;
  v52 = v51 + v50;
  v53 = v99;
  sub_1B4D173FC();
  v49(v52, v53, v48);
  *(v52 + v42[9]) = 0;
  *(v35 + 88) = v51;
  v54 = sub_1B4C954D8(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  v55 = v97;
  v97[7] = v54;
  v55[8] = 24;
  v56 = swift_initStackObject();
  *(v56 + 16) = v98;
  *(v56 + 32) = 1;
  v92 = v56 + 32;
  v57 = v107;
  v58 = swift_allocObject();
  *(v58 + 16) = v110;
  sub_1B4D173FC();
  v59 = v48;
  v101(v58 + v57, v53, v48);
  v60 = v100;
  *(v58 + v57 + v100[9]) = 0;
  *(v56 + 40) = v58;
  *(v56 + 48) = 2;
  v61 = v107;
  v62 = swift_allocObject();
  *(v62 + 16) = v110;
  sub_1B4D173FC();
  v63 = v101;
  v101(v62 + v61, v53, v59);
  *(v62 + v61 + v60[9]) = 0;
  *(v56 + 56) = v62;
  *(v56 + 64) = 3;
  v64 = swift_allocObject();
  *(v64 + 16) = v110;
  v65 = v64 + v61;
  v66 = v99;
  sub_1B4D173FC();
  v63(v65, v66, v106);
  *(v65 + v60[9]) = 0;
  *(v56 + 72) = v64;
  *(v56 + 80) = 4;
  v67 = v107;
  v68 = swift_allocObject();
  *(v68 + 16) = v110;
  v69 = v68 + v67;
  v70 = v99;
  sub_1B4D173FC();
  v63(v69, v70, v106);
  *(v69 + v60[9]) = 0;
  *(v56 + 88) = v68;
  v71 = sub_1B4C954D8(v56);
  swift_setDeallocating();
  swift_arrayDestroy();
  v72 = v97;
  v97[9] = v71;
  v72[10] = 13;
  v73 = swift_initStackObject();
  *(v73 + 16) = v98;
  *(v73 + 32) = 1;
  *&v98 = v73 + 32;
  v74 = v107;
  v75 = swift_allocObject();
  *(v75 + 16) = v110;
  v76 = v99;
  sub_1B4D173FC();
  v101(v75 + v74, v76, v106);
  *(v75 + v74 + v100[9]) = 0;
  *(v73 + 40) = v75;
  *(v73 + 48) = 2;
  v77 = swift_allocObject();
  *(v77 + 16) = v110;
  v78 = v76;
  sub_1B4D173FC();
  v79 = v76;
  v80 = v106;
  v81 = v101;
  v101(v77 + v74, v79, v106);
  v82 = v100;
  *(v77 + v74 + v100[9]) = 0;
  *(v73 + 56) = v77;
  *(v73 + 64) = 3;
  v83 = swift_allocObject();
  *(v83 + 16) = v110;
  sub_1B4D173FC();
  v81(v83 + v74, v78, v80);
  *(v83 + v74 + v82[9]) = 0;
  *(v73 + 72) = v83;
  *(v73 + 80) = 4;
  v84 = swift_allocObject();
  *(v84 + 16) = v110;
  v85 = v84 + v74;
  v86 = v105;
  sub_1B4D173FC();
  v87 = v106;
  v81(v85, v78, v106);
  *(v85 + v82[9]) = 0;
  *(v73 + 88) = v84;
  v88 = sub_1B4C954D8(v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  v89 = v97;
  v97[11] = v88;
  v90 = sub_1B4C95500(v89);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC2A0, &unk_1B4D3B868);
  swift_arrayDestroy();
  (*(v93 + 8))(v86, v87);
  return v90;
}

uint64_t sub_1B4BFBFD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1B4D1746C();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4BFC0A4()
{
  result = qword_1EB8AC360;
  if (!qword_1EB8AC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC360);
  }

  return result;
}

unint64_t sub_1B4BFC0FC()
{
  result = qword_1EB8AC368;
  if (!qword_1EB8AC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC368);
  }

  return result;
}

uint64_t WorkoutSnapshotContainer.month.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
}

uint64_t WorkoutSnapshotContainer.week.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
}

uint64_t WorkoutSnapshotContainer.day.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
}

__n128 WorkoutSnapshotContainer.init(cacheIndex:month:week:day:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a4[1].n128_u64[0];
  *a5 = *a1;
  *(a5 + 8) = *a2;
  *(a5 + 24) = v5;
  *(a5 + 32) = *a3;
  *(a5 + 48) = v6;
  result = *a4;
  *(a5 + 56) = *a4;
  *(a5 + 72) = v7;
  return result;
}

uint64_t sub_1B4BFC1EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
}

uint64_t sub_1B4BFC200@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
}

uint64_t sub_1B4BFC214@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
}

__n128 sub_1B4BFC228@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a4[1].n128_u64[0];
  *a5 = *a1;
  *(a5 + 8) = *a2;
  *(a5 + 24) = v5;
  *(a5 + 32) = *a3;
  *(a5 + 48) = v6;
  result = *a4;
  *(a5 + 56) = *a4;
  *(a5 + 72) = v7;
  return result;
}

uint64_t static FactGenerating.resolve<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = sub_1B4D173AC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1B4D1739C();
  v11 = *(a5 + 8);
  sub_1B4D1738C();
}

uint64_t static FactGenerating.queries(workoutVoiceWorkoutState:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  swift_getTupleTypeMetadata2();
  v2 = sub_1B4D1843C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = sub_1B49BD4DC(v2, AssociatedTypeWitness, Descriptor, *(AssociatedConformanceWitness + 8));

  return v4;
}

uint64_t FactGenerating.makeFact(promptFormatter:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = (*(a2 + 64))();
  v9 = v8;
  (*(a2 + 40))(&v13, a1, a2);
  v10 = v13;
  result = sub_1B4BFC4B8(a1, a2);
  if (v3)
  {
  }

  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = result;
  *(a3 + 32) = v12;
  return result;
}

uint64_t sub_1B4BFC4B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B4D173DC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B4D173CC();
  v6 = *(a2 + 16);
  v7 = sub_1B4D173BC();

  return v7;
}

double static FactGenerating.makeRandomFact(promptFormatter:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t static FactGenerating.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[13] = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4BFC588, 0, 0);
}

uint64_t sub_1B4BFC588()
{
  v18 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v14 = v0[11];
  v16 = &type metadata for FitnessContext;
  v17 = &protocol witness table for FitnessContext;
  *&v15 = v1;
  v0[14] = swift_getAssociatedTypeWitness();
  v0[15] = swift_getAssociatedConformanceWitness();
  FactContext.init(context:)(&v15, (v0 + 2));
  v3 = *(v14 + 56);

  v13 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1B4BFC730;
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];

  return (v13)(v0 + 2, v10, v11, v8, v9, v6);
}

uint64_t sub_1B4BFC730(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_1B4BFC8F0;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_1B4BFC858;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B4BFC858()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = type metadata accessor for FactContext();
  (*(*(v3 - 8) + 8))(v0 + 2, v3);
  v4 = v0[18];
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1B4BFC8F0()
{
  v25 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = type metadata accessor for FactContext();
  (*(*(v3 - 8) + 8))(v0 + 2, v3);
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v4 = v0[17];
  v5 = sub_1B4D17F6C();
  __swift_project_value_buffer(v5, qword_1EDC3CED0);
  v6 = v4;
  v7 = sub_1B4D17F5C();
  v8 = sub_1B4D1871C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[17];
    v10 = v0[10];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136315394;
    v14 = sub_1B4D1900C();
    v16 = sub_1B49558AC(v14, v15, &v24);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v9;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_1B4953000, v7, v8, "Error analyzing fact %s: %@", v11, 0x16u);
    sub_1B49E5EC0(v12);
    MEMORY[0x1B8C7DDA0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B8C7DDA0](v13, -1, -1);
    MEMORY[0x1B8C7DDA0](v11, -1, -1);
  }

  v19 = v0[17];
  v20 = v0[10];
  v21 = sub_1B4D1843C();

  v22 = v0[1];

  return v22(v21);
}

uint64_t static FactGenerating.queries(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4BFD3A0(a1, v19);
  sub_1B49A24C4(v19, v18);
  v17 = (*(a3 + 48))(v18, a2, a3);
  v15 = a2;
  v16 = a3;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = sub_1B4BFD3D8;
  v13[5] = &v14;
  swift_getAssociatedTypeWitness();
  type metadata accessor for FitnessContextQueryDescriptor();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  v6 = sub_1B4D1801C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC370, &unk_1B4D3BAC0);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1B498D2F0(sub_1B4BFD3E0, v13, v6, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B0, &qword_1B4D1ABC8);
    v11 = sub_1B4D18AEC();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  v17 = v11;
  sub_1B4BFCEA8(v10, 1, &v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v17;
}

uint64_t sub_1B4BFCD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  countAndFlagsBits = FitnessContextQueryIdentifier.makeQueryKey()()._countAndFlagsBits;
  sub_1B49EEFF0(a3, a1);
  return countAndFlagsBits;
}

uint64_t sub_1B4BFCDE0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for FitnessContextQueryDescriptor();
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC370, &unk_1B4D3BAC0);
  result = a2(a3 + *(v7 + 48), a1, a1 + v6);
  *a3 = result;
  a3[1] = v9;
  return result;
}

void sub_1B4BFCEA8(uint64_t a1, char a2, void *a3)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v8 = *(Descriptor - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC370, &unk_1B4D3BAC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v59 - v16);
  v65 = *(a1 + 16);
  if (!v65)
  {
    goto LABEL_23;
  }

  v61 = v3;
  v62 = v8;
  v18 = a2;
  v19 = *(v14 + 48);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v64 = *(v15 + 72);
  v66 = a1;
  v60 = v20;
  sub_1B4BFD598(a1 + v20, &v59 - v16);
  v21 = v17[1];
  v69 = *v17;
  v22 = v69;
  v70 = v21;
  v63 = v19;
  sub_1B4A22C1C(v17 + v19, v11);
  v23 = *a3;
  v25 = sub_1B49E9EC4(v22, v21);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v24;
  if (v23[3] >= v28)
  {
    if (v18)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1B498A7C4();
      if ((v29 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1B4987E00(v28, v18 & 1);
  v30 = *a3;
  v31 = sub_1B49E9EC4(v22, v21);
  if ((v29 & 1) == (v32 & 1))
  {
    v25 = v31;
    if ((v29 & 1) == 0)
    {
LABEL_13:
      v35 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v36 = (v35[6] + 16 * v25);
      *v36 = v22;
      v36[1] = v21;
      v37 = v35[7];
      v62 = *(v62 + 72);
      sub_1B4A22C1C(v11, v37 + v62 * v25);
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (!v39)
      {
        v35[2] = v40;
        v41 = v66;
        if (v65 != 1)
        {
          v42 = v66 + v64 + v60;
          v43 = 1;
          while (v43 < *(v41 + 16))
          {
            sub_1B4BFD598(v42, v17);
            v44 = v17[1];
            v69 = *v17;
            v45 = v69;
            v70 = v44;
            sub_1B4A22C1C(v17 + v63, v11);
            v46 = *a3;
            v47 = sub_1B49E9EC4(v45, v44);
            v49 = v46[2];
            v50 = (v48 & 1) == 0;
            v39 = __OFADD__(v49, v50);
            v51 = v49 + v50;
            if (v39)
            {
              goto LABEL_24;
            }

            v52 = v48;
            if (v46[3] < v51)
            {
              sub_1B4987E00(v51, 1);
              v53 = *a3;
              v47 = sub_1B49E9EC4(v45, v44);
              if ((v52 & 1) != (v54 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v52)
            {
              goto LABEL_10;
            }

            v55 = *a3;
            *(*a3 + 8 * (v47 >> 6) + 64) |= 1 << v47;
            v56 = (v55[6] + 16 * v47);
            *v56 = v45;
            v56[1] = v44;
            sub_1B4A22C1C(v11, v55[7] + v62 * v47);
            v57 = v55[2];
            v39 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v39)
            {
              goto LABEL_25;
            }

            ++v43;
            v55[2] = v58;
            v42 += v64;
            v41 = v66;
            if (v65 == v43)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v33 = swift_allocError();
    swift_willThrow();

    v71 = v33;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1B49EF054(v11);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_1B4D18E1C();
  __break(1u);
LABEL_28:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](39, 0xE100000000000000);
  sub_1B4D18A9C();
  __break(1u);
}

uint64_t sub_1B4BFD3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_1B4BFCD28(a1, a2, a3);
}

uint64_t sub_1B4BFD3E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_1B4BFCDE0(a1, *(v2 + 32), a2);
}

uint64_t dispatch thunk of static FactGenerating.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 56);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1B49D9398;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B4BFD598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC370, &unk_1B4D3BAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FitnessPlusSnapshotContainer.month.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
}

uint64_t FitnessPlusSnapshotContainer.week.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
}

uint64_t FitnessPlusSnapshotContainer.day.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
}

__n128 FitnessPlusSnapshotContainer.init(cacheIndex:month:week:day:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a4[1].n128_u64[0];
  *a5 = *a1;
  *(a5 + 8) = *a2;
  *(a5 + 24) = v5;
  *(a5 + 32) = *a3;
  *(a5 + 48) = v6;
  result = *a4;
  *(a5 + 56) = *a4;
  *(a5 + 72) = v7;
  return result;
}

unint64_t sub_1B4BFD69C()
{
  result = qword_1EDC377C8;
  if (!qword_1EDC377C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC377C8);
  }

  return result;
}

uint64_t RingClosureStreakFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
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

unint64_t RingClosureStreakFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000035;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000050;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000048;
  }

  *v0;
  return result;
}

uint64_t sub_1B4BFD7C0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000035;
  v3 = *a1;
  v4 = "k, which includes today.";
  if (v3 == 1)
  {
    v5 = 0xD000000000000050;
  }

  else
  {
    v5 = 0xD000000000000035;
  }

  if (v3 == 1)
  {
    v6 = "k, which includes today.";
  }

  else
  {
    v6 = "t include today.";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000048;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "kout_name> workout of the week.";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000050;
  }

  else
  {
    v4 = "t include today.";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000048;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "kout_name> workout of the week.";
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

uint64_t sub_1B4BFD898()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BFD934()
{
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4BFD9BC()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BFDA54@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return RingClosureStreakFact.TemplateString.init(rawValue:)(a1);
}

void sub_1B4BFDA60(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000035;
  v3 = "k, which includes today.";
  if (*v1 == 1)
  {
    v2 = 0xD000000000000050;
  }

  else
  {
    v3 = "t include today.";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000048;
    v4 = "kout_name> workout of the week.";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t RingClosureStreakFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for RingClosureStreakFact();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B4D1AA70;
  v7 = *(v1 + *(v3 + 32));
  v8 = v1 + *(v3 + 28);
  v9 = sub_1B4B0793C(v7);
  v11 = v10;
  *(v6 + 32) = 0x6D616E5F676E6972;
  *(v6 + 40) = 0xE900000000000065;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v6 + 48) = sub_1B4993DFC;
  *(v6 + 56) = v12;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  sub_1B4BFDD18(v1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1B4BFDD7C(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v6 + 80) = 0x656D69745F6C6C61;
  *(v6 + 88) = 0xEF6B61657274735FLL;
  *(v6 + 96) = sub_1B4BFDDE0;
  *(v6 + 104) = v14;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  return v6;
}

uint64_t RingClosureStreakFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  result = type metadata accessor for RingClosureStreakFact();
  if (v3 >= 3)
  {
    v5 = (*(v1 + *(result + 28)) & 1) == 0;
  }

  else if (*(v1 + *(result + 32)))
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1B4BFDD18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingClosureStreakFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BFDD7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingClosureStreakFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BFDDE0()
{
  v1 = *(type metadata accessor for RingClosureStreakFact() - 8);
  v3 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  return sub_1B4D18D5C();
}

unint64_t sub_1B4BFDE60()
{
  result = qword_1EB8AC378;
  if (!qword_1EB8AC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC378);
  }

  return result;
}

unint64_t sub_1B4BFDEB8()
{
  result = qword_1EB8AC380;
  if (!qword_1EB8AC380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC388, &qword_1B4D3BC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC380);
  }

  return result;
}

unint64_t sub_1B4BFDF20()
{
  result = qword_1EB8AC390;
  if (!qword_1EB8AC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC390);
  }

  return result;
}

unint64_t sub_1B4BFDF78()
{
  result = qword_1EB8AC398;
  if (!qword_1EB8AC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC398);
  }

  return result;
}

unint64_t sub_1B4BFDFCC(uint64_t a1)
{
  result = sub_1B4BFDFF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BFDFF4()
{
  result = qword_1EB8AC3A0;
  if (!qword_1EB8AC3A0)
  {
    type metadata accessor for RingClosureStreakFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3A0);
  }

  return result;
}

uint64_t PerfectWeekRingStatusFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
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

unint64_t PerfectWeekRingStatusFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000046;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000042;
  }

  v2 = 0xD00000000000009ALL;
  if (!*v0)
  {
    v2 = 0xD000000000000058;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_1B4BFE144()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BFE1FC()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4BFE2A0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BFE354@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return PerfectWeekRingStatusFact.TemplateString.init(rawValue:)(a1);
}

void sub_1B4BFE360(unint64_t *a1@<X8>)
{
  v2 = "formatted_days> this week.";
  v3 = 0xD000000000000046;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000042;
  }

  else
  {
    v2 = ", including today.";
  }

  v4 = 0xD00000000000009ALL;
  if (*v1)
  {
    v5 = "me> every day this week.";
  }

  else
  {
    v4 = 0xD000000000000058;
    v5 = "y <speed_delta_from_baseline>.";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t PerfectWeekRingStatusFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for PerfectWeekRingStatusFact();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B4D1BE00;
  v7 = *(v1 + *(v3 + 32));
  v8 = v1 + *(v3 + 28);
  v9 = sub_1B4B0793C(v7);
  v11 = v10;
  *(v6 + 32) = 0x6D616E5F676E6972;
  *(v6 + 40) = 0xE900000000000065;
  result = swift_allocObject();
  *(result + 16) = v9;
  *(result + 24) = v11;
  *(v6 + 48) = sub_1B4993DFC;
  *(v6 + 56) = result;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  if (__OFSUB__(7, *v1))
  {
    __break(1u);
  }

  else
  {
    v19[1] = (7 - *v1) & ~((7 - *v1) >> 63);
    v13 = sub_1B4D18D5C();
    v15 = v14;
    *(v6 + 80) = 0xD00000000000001BLL;
    *(v6 + 88) = 0x80000001B4D62F40;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    *(v6 + 96) = sub_1B4994004;
    *(v6 + 104) = v16;
    *(v6 + 112) = 0;
    *(v6 + 120) = 0;
    sub_1B4BFE6B0(v1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v18 = swift_allocObject();
    sub_1B4BFE714(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    strcpy((v6 + 128), "formatted_days");
    *(v6 + 143) = -18;
    *(v6 + 144) = sub_1B4BFE778;
    *(v6 + 152) = v18;
    *(v6 + 160) = 0;
    *(v6 + 168) = 0;
    return v6;
  }

  return result;
}

void PerfectWeekRingStatusFact.selectTemplate(formatter:)(char *a1@<X8>)
{
  if (*v1 > 4)
  {
    v3 = *v1 < 7uLL;
  }

  else if (*(v1 + *(type metadata accessor for PerfectWeekRingStatusFact() + 28)))
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  *a1 = v3;
}

uint64_t sub_1B4BFE6B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerfectWeekRingStatusFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BFE714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerfectWeekRingStatusFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BFE778()
{
  v1 = type metadata accessor for PerfectWeekRingStatusFact();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  v5 = __OFSUB__(7, v4);
  v6 = 7 - v4;
  if (v5)
  {
    __break(1u);
  }

  else if (v6 == 1)
  {
    return 7954788;
  }

  else
  {
    return 1937334628;
  }

  return result;
}

unint64_t sub_1B4BFE800()
{
  result = qword_1EB8AC3A8;
  if (!qword_1EB8AC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3A8);
  }

  return result;
}

unint64_t sub_1B4BFE858()
{
  result = qword_1EB8AC3B0;
  if (!qword_1EB8AC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC3B8, &qword_1B4D3BD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3B0);
  }

  return result;
}

unint64_t sub_1B4BFE8C0()
{
  result = qword_1EB8AC3C0;
  if (!qword_1EB8AC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3C0);
  }

  return result;
}

unint64_t sub_1B4BFE918()
{
  result = qword_1EB8AC3C8;
  if (!qword_1EB8AC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3C8);
  }

  return result;
}

unint64_t sub_1B4BFE96C(uint64_t a1)
{
  result = sub_1B4BFE994();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BFE994()
{
  result = qword_1EB8AC3D0;
  if (!qword_1EB8AC3D0)
  {
    type metadata accessor for PerfectWeekRingStatusFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3D0);
  }

  return result;
}

uint64_t WorkoutVoiceMoment.init(type:workoutActivityType:isIndoor:facts:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B4D177CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = *a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  sub_1B4D177BC();
  v15 = sub_1B4D1779C();
  v17 = v16;
  result = (*(v11 + 8))(v14, v10);
  *(a5 + 32) = v15;
  *(a5 + 40) = v17;
  return result;
}

uint64_t WorkoutVoiceMoment.momentIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1B4BFEB5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4BFEBA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RingsSnapshotContainer.month.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
}

uint64_t RingsSnapshotContainer.week.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
}

uint64_t RingsSnapshotContainer.day.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
}

__n128 RingsSnapshotContainer.init(cacheIndex:month:week:day:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a4[1].n128_u64[0];
  *a5 = *a1;
  *(a5 + 8) = *a2;
  *(a5 + 24) = v5;
  *(a5 + 32) = *a3;
  *(a5 + 48) = v6;
  result = *a4;
  *(a5 + 56) = *a4;
  *(a5 + 72) = v7;
  return result;
}

uint64_t sub_1B4BFECDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
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

uint64_t sub_1B4BFED68(uint64_t a1)
{
  v2 = sub_1B4BFEF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BFEDA4(uint64_t a1)
{
  v2 = sub_1B4BFEF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FitnessPlusTrainerIdentifiers.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC3D8, &unk_1B4D3BED0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BFEF78();

  sub_1B4D18EFC();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
  sub_1B4A05CEC(&qword_1EB8A7B40);
  sub_1B4D18D0C();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B4BFEF78()
{
  result = qword_1EB8AC3E0;
  if (!qword_1EB8AC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3E0);
  }

  return result;
}

uint64_t FitnessPlusTrainerIdentifiers.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x1B8C7D290](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1B4D1820C();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t FitnessPlusTrainerIdentifiers.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_1B4D1820C();

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_1B4D18EDC();
}

uint64_t FitnessPlusTrainerIdentifiers.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC3E8, &qword_1B4D3BEE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BFEF78();
  sub_1B4D18EEC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
    sub_1B4A05CEC(&qword_1EB8A7B58);
    sub_1B4D18C0C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B4BFF2AC()
{
  v1 = *v0;
  result = MEMORY[0x1B8C7D290](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1B4D1820C();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B4BFF328()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_1B4D1820C();

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_1B4D18EDC();
}

unint64_t sub_1B4BFF3B4()
{
  result = qword_1EB8AC3F0;
  if (!qword_1EB8AC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3F0);
  }

  return result;
}

unint64_t sub_1B4BFF438()
{
  result = qword_1EB8AC3F8;
  if (!qword_1EB8AC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC3F8);
  }

  return result;
}

unint64_t sub_1B4BFF490()
{
  result = qword_1EB8AC400;
  if (!qword_1EB8AC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC400);
  }

  return result;
}

unint64_t sub_1B4BFF4E8()
{
  result = qword_1EB8AC408;
  if (!qword_1EB8AC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC408);
  }

  return result;
}

uint64_t AnnounceCancellationResult.init(_:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B4BFF578(a1);
  *a2 = v3;
  return result;
}

uint64_t sub_1B4BFF578(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnnounceCancellationResult.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
  sub_1B4BFF82C(&qword_1EB8A8A40);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BFF674(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v8 = sub_1B4BFF940();
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4BFF82C(&qword_1EB8A8A40);
    v4 = sub_1B4D17D6C();
    sub_1B4BFF578(v7);
  }

  return v4;
}

uint64_t sub_1B4BFF790@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B25FB0(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4BFF82C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BFF870()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
  sub_1B4BFF82C(&qword_1EB8A8A40);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BFF904@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B4BFF578(a1);
  *a2 = v3;
  return result;
}

unint64_t sub_1B4BFF940()
{
  result = qword_1EB8AC410;
  if (!qword_1EB8AC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC410);
  }

  return result;
}

void *ActivityAchievementAward.value.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityAchievementAward() + 32));
  v2 = v1;
  return v1;
}

uint64_t type metadata accessor for ActivityAchievementAward()
{
  result = qword_1EB8AC458;
  if (!qword_1EB8AC458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ActivityAchievementAward.goal.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityAchievementAward() + 36));
  v2 = v1;
  return v1;
}

uint64_t ActivityAchievementAward.init(templateUniqueName:earnedDateComponents:section:earnedInstanceCount:value:goal:externalIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v16 = *a4;
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for ActivityAchievementAward();
  v18 = v17[5];
  v19 = sub_1B4D175FC();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  a9[v17[6]] = v16;
  *&a9[v17[7]] = a5;
  *&a9[v17[8]] = a6;
  *&a9[v17[9]] = a7;
  v21 = &a9[v17[10]];
  *v21 = a8;
  *(v21 + 1) = a10;
  return result;
}

FitnessIntelligence::ActivityAchievementSection_optional __swiftcall ActivityAchievementSection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

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

uint64_t ActivityAchievementSection.rawValue.getter()
{
  if (*v0)
  {
    result = 0x726568746FLL;
  }

  else
  {
    result = 0x74756F6B726F77;
  }

  *v0;
  return result;
}

uint64_t sub_1B4BFFBD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726568746FLL;
  }

  else
  {
    v4 = 0x74756F6B726F77;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x726568746FLL;
  }

  else
  {
    v6 = 0x74756F6B726F77;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4BFFC78()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BFFCF8()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4BFFD64()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BFFDE0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

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

void sub_1B4BFFE40(uint64_t *a1@<X8>)
{
  v2 = 0x74756F6B726F77;
  if (*v1)
  {
    v2 = 0x726568746FLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ActivityAchievementAward.templateUniqueName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ActivityAchievementAward.earnedDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityAchievementAward() + 20);
  v4 = sub_1B4D175FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityAchievementAward.section.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityAchievementAward();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ActivityAchievementAward.externalIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ActivityAchievementAward() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_1B4C00074()
{
  v1 = *v0;
  v2 = 0x6E6F6974636573;
  v3 = 0x47656C6261646F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x56656C6261646F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1B4C00168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4C013A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4C00190(uint64_t a1)
{
  v2 = sub_1B4C00E88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C001CC(uint64_t a1)
{
  v2 = sub_1B4C00E88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityAchievementAward.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC418, &unk_1B4D3C150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C00E88();
  sub_1B4D18EFC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  sub_1B4D18CBC();
  if (!v2)
  {
    v13 = type metadata accessor for ActivityAchievementAward();
    v14 = v13[5];
    LOBYTE(v23) = 1;
    sub_1B4D175FC();
    sub_1B4C00F30(&qword_1EB8AC428);
    sub_1B4D18D0C();
    LOBYTE(v23) = *(v3 + v13[6]);
    v24 = 2;
    sub_1B4C00EDC();
    sub_1B4D18D0C();
    v15 = *(v3 + v13[7]);
    LOBYTE(v23) = 3;
    sub_1B4D18CFC();
    v23 = *(v3 + v13[8]);
    v24 = 4;
    v16 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB08, &qword_1B4D37B28);
    sub_1B4C00FC8(&qword_1EB8ABB10);
    sub_1B4D18CAC();

    v23 = *(v3 + v13[9]);
    v24 = 5;
    v17 = v23;
    sub_1B4D18CAC();

    v18 = (v3 + v13[10]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v23) = 6;
    sub_1B4D18C6C();
  }

  return (*(v6 + 8))(v9, v5);
}

void ActivityAchievementAward.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1B4D175FC();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC438, &qword_1B4D3C160);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for ActivityAchievementAward();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v16 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B4C00E88();
  v31 = v11;
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    v26 = v4;
    LOBYTE(v33) = 0;
    *v15 = sub_1B4D18BBC();
    v15[1] = v18;
    LOBYTE(v33) = 1;
    sub_1B4C00F30(&qword_1EB8AC440);
    v19 = v26;
    sub_1B4D18C0C();
    (*(v28 + 32))(v15 + v12[5], v7, v19);
    v34 = 2;
    sub_1B4C00F74();
    sub_1B4D18C0C();
    *(v15 + v12[6]) = v33;
    LOBYTE(v33) = 3;
    v20 = sub_1B4D18BFC();
    v21 = v29;
    *(v15 + v12[7]) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB08, &qword_1B4D37B28);
    v34 = 4;
    sub_1B4C00FC8(&qword_1EB8ABB50);
    sub_1B4D18BAC();
    *(v15 + v12[8]) = v33;
    v34 = 5;
    sub_1B4D18BAC();
    *(v15 + v12[9]) = v33;
    LOBYTE(v33) = 6;
    v22 = sub_1B4D18B6C();
    v24 = v23;
    (*(v21 + 8))(v31, v30);
    v25 = (v15 + v12[10]);
    *v25 = v22;
    v25[1] = v24;
    sub_1B4C01018(v15, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    sub_1B4C0107C(v15);
  }
}

BOOL _s19FitnessIntelligence24ActivityAchievementAwardV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ActivityAchievementAward();
  if ((MEMORY[0x1B8C7B950](a1 + v5[5], a2 + v5[5]) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[6];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7)
  {
    v9 = 0x726568746FLL;
  }

  else
  {
    v9 = 0x74756F6B726F77;
  }

  if (v7)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v8)
  {
    v11 = 0x726568746FLL;
  }

  else
  {
    v11 = 0x74756F6B726F77;
  }

  if (v8)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
  }

  else
  {
    v14 = sub_1B4D18DCC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v15 = v5[8];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18 && (v19 = v18, objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0))
    {
      v21 = v20;
      v22 = v16;
      v23 = v17;
      v24 = v22;
      v25 = v23;
      [v19 coordinate];
      v27 = v26;
      [v21 coordinate];
      if (v27 != v28)
      {
        goto LABEL_53;
      }

      [v19 coordinate];
      v30 = v29;
      [v21 coordinate];
      v32 = v31;

      if (v30 != v32)
      {
        return 0;
      }
    }

    else
    {
      sub_1B49DF540();
      v33 = v16;
      v34 = v17;
      v35 = sub_1B4D187AC();

      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v36 = v5[9];
  v37 = *(a1 + v36);
  v38 = *(a2 + v36);
  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v40 = v39;
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      if (v41)
      {
        v42 = v41;
        v43 = v37;
        v44 = v38;
        v24 = v43;
        v25 = v44;
        [v40 coordinate];
        v46 = v45;
        [v42 coordinate];
        if (v46 == v47)
        {
          [v40 coordinate];
          v49 = v48;
          [v42 coordinate];
          v51 = v50;

          if (v49 != v51)
          {
            return 0;
          }

          goto LABEL_47;
        }

LABEL_53:

        return 0;
      }
    }

    sub_1B49DF540();
    v52 = v37;
    v53 = v38;
    v54 = sub_1B4D187AC();

    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

LABEL_47:
  v55 = v5[10];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  v59 = v58[1];
  if (!v57)
  {
    return !v59;
  }

  return v59 && (*v56 == *v58 && v57 == v59 || (sub_1B4D18DCC() & 1) != 0);
}

unint64_t sub_1B4C00E88()
{
  result = qword_1EB8AC420;
  if (!qword_1EB8AC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC420);
  }

  return result;
}

unint64_t sub_1B4C00EDC()
{
  result = qword_1EB8AC430;
  if (!qword_1EB8AC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC430);
  }

  return result;
}

uint64_t sub_1B4C00F30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B4D175FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4C00F74()
{
  result = qword_1EB8AC448;
  if (!qword_1EB8AC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC448);
  }

  return result;
}

uint64_t sub_1B4C00FC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ABB08, &qword_1B4D37B28);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C01018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityAchievementAward();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C0107C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityAchievementAward();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4C010DC()
{
  result = qword_1EB8AC450;
  if (!qword_1EB8AC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC450);
  }

  return result;
}

void sub_1B4C01168()
{
  sub_1B4D175FC();
  if (v0 <= 0x3F)
  {
    sub_1B4C0122C();
    if (v1 <= 0x3F)
    {
      sub_1B4ABA5F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4C0122C()
{
  if (!qword_1EB8AC468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ABB08, &qword_1B4D37B28);
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8AC468);
    }
  }
}

unint64_t sub_1B4C012A4()
{
  result = qword_1EB8AC470;
  if (!qword_1EB8AC470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC470);
  }

  return result;
}

unint64_t sub_1B4C012FC()
{
  result = qword_1EB8AC478;
  if (!qword_1EB8AC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC478);
  }

  return result;
}

unint64_t sub_1B4C01354()
{
  result = qword_1EB8AC480;
  if (!qword_1EB8AC480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC480);
  }

  return result;
}

uint64_t sub_1B4C013A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001B4D62F60 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4D62F80 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974636573 && a2 == 0xE700000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D62FA0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x56656C6261646F63 && a2 == 0xEC00000065756C61 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x47656C6261646F63 && a2 == 0xEB000000006C616FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B4D62FC0 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1B4C01604()
{
  result = qword_1EB8AC488;
  if (!qword_1EB8AC488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC488);
  }

  return result;
}

void sub_1B4C016C8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E696AFF8]) initWithCoefficient_];
  v7 = objc_allocWithZone(type metadata accessor for UnitPace());
  v8 = sub_1B4D1817C();
  v9 = [v7 initWithSymbol:v8 converter:v6];

  *a5 = v9;
}

id sub_1B4C01794()
{
  result = [type metadata accessor for UnitPace() baseUnit];
  qword_1EDC36E88 = result;
  return result;
}

id sub_1B4C017EC(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_1B4C01900()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AFF8]) initWithCoefficient_];
  v2 = objc_allocWithZone(v0);
  v3 = sub_1B4D1817C();
  v4 = [v2 initWithSymbol:v3 converter:v1];

  return v4;
}

id UnitPace.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnitPace();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *static CountPropertyValue.add(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

uint64_t CountPropertyValue.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

void *sub_1B4C01AD4@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

unint64_t sub_1B4C01AF0(uint64_t a1)
{
  result = sub_1B49A85A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C01B18(uint64_t a1)
{
  *(a1 + 8) = sub_1B49A69C0();
  result = sub_1B4C01B48();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C01B48()
{
  result = qword_1EDC396A0[0];
  if (!qword_1EDC396A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC396A0);
  }

  return result;
}

unint64_t sub_1B4C01BA0()
{
  result = qword_1EDC39698;
  if (!qword_1EDC39698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39698);
  }

  return result;
}

unint64_t sub_1B4C01C18()
{
  result = qword_1EB8AC4A0;
  if (!qword_1EB8AC4A0)
  {
    type metadata accessor for RingClosureStreakFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC4A0);
  }

  return result;
}

unint64_t sub_1B4C01C74()
{
  result = qword_1EB8AC4A8;
  if (!qword_1EB8AC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC4A8);
  }

  return result;
}

void sub_1B4C01CC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v89 = a1;
  v80 = a5;
  v5 = MEMORY[0x1E69E7CC0];
  v88 = *(a4 + 16);
  if (v88)
  {
    v6 = 0;
    v84 = a3;
    v85 = a2;
    v82 = (a3 + 32);
    v83 = (a2 + 32);
    v86 = 0x80000001B4D48800;
    v87 = (a4 + 32);
    do
    {
      v127 = v5;
      sub_1B4B6F2FC(v87 + 64 * v6, &v118);
      if (v89)
      {
        v7 = BYTE1(v119);
        v8 = BYTE2(v119);
        if (v119 != 12 && *(v89 + 16) && !sub_1B4978C4C(v119, v89))
        {
          goto LABEL_3;
        }

        if (v7 != 7)
        {
          v9 = *(v85 + 16);
          if (v9)
          {
            v10 = v83;
            do
            {
              if (!v9)
              {
                goto LABEL_3;
              }

              v12 = *v10;
              if (v12 <= 2)
              {
                v15 = 0x616473656E646577;
                if (v12 == 1)
                {
                  v15 = 0x79616473657574;
                }

                v16 = 0xE900000000000079;
                if (v12 == 1)
                {
                  v16 = 0xE700000000000000;
                }

                if (*v10)
                {
                  v13 = v15;
                }

                else
                {
                  v13 = 0x7961646E6F6DLL;
                }

                if (*v10)
                {
                  v14 = v16;
                }

                else
                {
                  v14 = 0xE600000000000000;
                }

                if (v7 > 2)
                {
LABEL_38:
                  v17 = 0x7961646E7573;
                  if (v7 == 5)
                  {
                    v17 = 0x7961647275746173;
                    v18 = 0xE800000000000000;
                  }

                  else
                  {
                    v18 = 0xE600000000000000;
                  }

                  v19 = 0x7961647372756874;
                  if (v7 == 3)
                  {
                    v20 = 0xE800000000000000;
                  }

                  else
                  {
                    v19 = 0x796164697266;
                    v20 = 0xE600000000000000;
                  }

                  if (v7 <= 4)
                  {
                    v21 = v19;
                  }

                  else
                  {
                    v21 = v17;
                  }

                  if (v7 <= 4)
                  {
                    v22 = v20;
                  }

                  else
                  {
                    v22 = v18;
                  }

                  if (v13 != v21)
                  {
                    goto LABEL_12;
                  }

                  goto LABEL_63;
                }
              }

              else if (*v10 > 4u)
              {
                if (v12 == 5)
                {
                  v14 = 0xE800000000000000;
                  v13 = 0x7961647275746173;
                  if (v7 > 2)
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  v13 = 0x7961646E7573;
                  v14 = 0xE600000000000000;
                  if (v7 > 2)
                  {
                    goto LABEL_38;
                  }
                }
              }

              else
              {
                if (v12 == 3)
                {
                  v13 = 0x7961647372756874;
                }

                else
                {
                  v13 = 0x796164697266;
                }

                if (v12 == 3)
                {
                  v14 = 0xE800000000000000;
                }

                else
                {
                  v14 = 0xE600000000000000;
                }

                if (v7 > 2)
                {
                  goto LABEL_38;
                }
              }

              if (v7)
              {
                if (v7 == 1)
                {
                  v23 = 0x79616473657574;
                }

                else
                {
                  v23 = 0x616473656E646577;
                }

                if (v7 == 1)
                {
                  v22 = 0xE700000000000000;
                }

                else
                {
                  v22 = 0xE900000000000079;
                }

                if (v13 != v23)
                {
                  goto LABEL_12;
                }
              }

              else
              {
                v22 = 0xE600000000000000;
                if (v13 != 0x7961646E6F6DLL)
                {
                  goto LABEL_12;
                }
              }

LABEL_63:
              if (v14 == v22)
              {

                break;
              }

LABEL_12:
              v11 = sub_1B4D18DCC();

              ++v10;
              --v9;
            }

            while ((v11 & 1) == 0);
          }
        }

        if (v8 != 2)
        {
          v24 = *(v84 + 16);
          if (v24)
          {
            v25 = v82;
            while (1)
            {
              v27 = *v25++;
              v26 = v27;
              if (v27 != 2 && ((v26 ^ v8) & 1) == 0)
              {
                break;
              }

              if (!--v24)
              {
                goto LABEL_3;
              }
            }
          }
        }
      }

      v28 = v121;
      __swift_project_boxed_opaque_existential_1(&v119 + 1, v121);
      sub_1B4B70700(v28, *(*(&v28 + 1) + 8));
      LOBYTE(v91) = v109;
      if (RingsPropertyKind.rawValue.getter() == 0xD000000000000013 && v86 == v29)
      {

LABEL_75:
        v109 = v118;
        v110 = v119;
        v111 = v120;
        v112 = v121;
        v5 = v127;
        *&v100 = v127;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B4BCEB88(0, *(v5 + 16) + 1, 1);
          v5 = v100;
        }

        v32 = *(v5 + 16);
        v31 = *(v5 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1B4BCEB88((v31 > 1), v32 + 1, 1);
          v5 = v100;
        }

        *(v5 + 16) = v32 + 1;
        v33 = (v5 + (v32 << 6));
        v34 = v109;
        v35 = v110;
        v36 = v112;
        v33[4] = v111;
        v33[5] = v36;
        v33[2] = v34;
        v33[3] = v35;
        goto LABEL_4;
      }

      v30 = sub_1B4D18DCC();

      if (v30)
      {
        goto LABEL_75;
      }

LABEL_3:
      sub_1B4B6F358(&v118);
      v5 = v127;
LABEL_4:
      v6 = (v6 + 1);
    }

    while (v6 != v88);
  }

  *&v118 = v5;

  sub_1B4CB8494(&v118);
  v37 = v81;
  if (v81)
  {

    __break(1u);
  }

  else
  {

    v38 = v118;
    v39 = *(v118 + 16);
    if (v39)
    {
      v86 = 0;
      *&v100 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v39, 0);
      v40 = v100;
      v85 = v38;
      v41 = v38 + 32;
      do
      {
        v127 = v39;
        v89 = v41;
        sub_1B4B6F2FC(v41, &v118);
        v42 = v121;
        v43 = __swift_project_boxed_opaque_existential_1(&v119 + 1, v121);
        v44 = *(*(&v42 + 1) + 8);
        v87 = *(v44 + 64);
        v88 = v43;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v110 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v111 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v109);
        v87(v42, v44);
        v48 = sub_1B4B6F358(&v118);
        *&v100 = v40;
        v50 = *(v40 + 16);
        v49 = *(v40 + 24);
        if (v50 >= v49 >> 1)
        {
          v48 = sub_1B4BCF0BC((v49 > 1), v50 + 1, 1);
        }

        v51 = *(*(AssociatedTypeWitness - 8) + 64);
        v52 = MEMORY[0x1EEE9AC00](v48);
        v54 = &v79 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v55 + 16))(v54, boxed_opaque_existential_1, AssociatedTypeWitness, v52);
        sub_1B4CB7620(v50, v54, &v100, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v109);
        v40 = v100;
        v41 = v89 + 64;
        v39 = v127 - 1;
      }

      while (v127 != 1);

      v37 = v86;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v56 = sub_1B49E709C(v40);

    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC0];
    }

    sub_1B4CEE3C8(v57, &v118);
    if (v37)
    {
    }

    else
    {

      v115 = v124;
      v116 = v125;
      v117 = v126;
      v111 = v120;
      v112 = v121;
      v113 = v122;
      v114 = v123;
      v109 = v118;
      v110 = v119;
      if (sub_1B496F52C(&v109) == 1)
      {
        v97 = v124;
        v98 = v125;
        v99 = v126;
        v93 = v120;
        v94 = v121;
        v95 = v122;
        v96 = v123;
        v91 = v118;
        v92 = v119;
        sub_1B4975024(&v91, &qword_1EB8AC4E0, &qword_1B4D3C6B0);
        sub_1B496F544(&v100);
        v58 = v107;
        v59 = v80;
        *(v80 + 96) = v106;
        *(v59 + 112) = v58;
        *(v59 + 128) = v108;
        v60 = v103;
        *(v59 + 32) = v102;
        *(v59 + 48) = v60;
        v61 = v105;
        *(v59 + 64) = v104;
        *(v59 + 80) = v61;
        v62 = v101;
        *v59 = v100;
        *(v59 + 16) = v62;
      }

      else
      {
        v63 = v124;
        v97 = v124;
        v98 = v125;
        v64 = v120;
        v65 = v120;
        v93 = v120;
        v94 = v121;
        v66 = v122;
        v67 = v122;
        v95 = v122;
        v96 = v123;
        v68 = v118;
        v69 = v118;
        v91 = v118;
        v92 = v119;
        v70 = v125;
        v71 = v125;
        v72 = v80;
        *(v80 + 96) = v124;
        *(v72 + 112) = v70;
        v73 = v121;
        v74 = v121;
        *(v72 + 32) = v64;
        *(v72 + 48) = v73;
        v75 = v123;
        v76 = v123;
        *(v72 + 64) = v66;
        *(v72 + 80) = v75;
        v77 = v119;
        v78 = v119;
        *v72 = v68;
        *(v72 + 16) = v77;
        v106 = v63;
        v107 = v71;
        v102 = v65;
        v103 = v74;
        v104 = v67;
        v105 = v76;
        v99 = v126;
        *(v72 + 128) = v126;
        v108 = v126;
        v100 = v69;
        v101 = v78;
        sub_1B4BA6D90(&v91, &v90);
        sub_1B4C05280(&v100);
        nullsub_1(v72);
      }
    }
  }
}

void sub_1B4C025D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v87 = a1;
  v79 = a5;
  v5 = MEMORY[0x1E69E7CC0];
  v86 = *(a4 + 16);
  if (v86)
  {
    v6 = 0;
    v84 = a2;
    v85 = (a4 + 32);
    v82 = (a2 + 32);
    v83 = a3;
    v81 = (a3 + 32);
    do
    {
      v125 = v5;
      sub_1B4B6F2FC(v85 + 64 * v6, &v116);
      if (v87)
      {
        v7 = BYTE1(v117);
        v8 = BYTE2(v117);
        if (v117 != 12 && *(v87 + 16) && !sub_1B4978C4C(v117, v87))
        {
          goto LABEL_3;
        }

        if (v7 != 7)
        {
          v9 = v84[2];
          if (v9)
          {
            v10 = v82;
            do
            {
              if (!v9)
              {
                goto LABEL_3;
              }

              v12 = *v10;
              if (v12 <= 2)
              {
                v15 = 0x616473656E646577;
                if (v12 == 1)
                {
                  v15 = 0x79616473657574;
                }

                v16 = 0xE900000000000079;
                if (v12 == 1)
                {
                  v16 = 0xE700000000000000;
                }

                if (*v10)
                {
                  v13 = v15;
                }

                else
                {
                  v13 = 0x7961646E6F6DLL;
                }

                if (*v10)
                {
                  v14 = v16;
                }

                else
                {
                  v14 = 0xE600000000000000;
                }

                if (v7 > 2)
                {
LABEL_38:
                  v17 = 0x7961646E7573;
                  if (v7 == 5)
                  {
                    v17 = 0x7961647275746173;
                    v18 = 0xE800000000000000;
                  }

                  else
                  {
                    v18 = 0xE600000000000000;
                  }

                  v19 = 0x7961647372756874;
                  if (v7 == 3)
                  {
                    v20 = 0xE800000000000000;
                  }

                  else
                  {
                    v19 = 0x796164697266;
                    v20 = 0xE600000000000000;
                  }

                  if (v7 <= 4)
                  {
                    v21 = v19;
                  }

                  else
                  {
                    v21 = v17;
                  }

                  if (v7 <= 4)
                  {
                    v22 = v20;
                  }

                  else
                  {
                    v22 = v18;
                  }

                  if (v13 != v21)
                  {
                    goto LABEL_12;
                  }

                  goto LABEL_63;
                }
              }

              else if (*v10 > 4u)
              {
                if (v12 == 5)
                {
                  v14 = 0xE800000000000000;
                  v13 = 0x7961647275746173;
                  if (v7 > 2)
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  v13 = 0x7961646E7573;
                  v14 = 0xE600000000000000;
                  if (v7 > 2)
                  {
                    goto LABEL_38;
                  }
                }
              }

              else
              {
                if (v12 == 3)
                {
                  v13 = 0x7961647372756874;
                }

                else
                {
                  v13 = 0x796164697266;
                }

                if (v12 == 3)
                {
                  v14 = 0xE800000000000000;
                }

                else
                {
                  v14 = 0xE600000000000000;
                }

                if (v7 > 2)
                {
                  goto LABEL_38;
                }
              }

              if (v7)
              {
                if (v7 == 1)
                {
                  v23 = 0x79616473657574;
                }

                else
                {
                  v23 = 0x616473656E646577;
                }

                if (v7 == 1)
                {
                  v22 = 0xE700000000000000;
                }

                else
                {
                  v22 = 0xE900000000000079;
                }

                if (v13 != v23)
                {
                  goto LABEL_12;
                }
              }

              else
              {
                v22 = 0xE600000000000000;
                if (v13 != 0x7961646E6F6DLL)
                {
                  goto LABEL_12;
                }
              }

LABEL_63:
              if (v14 == v22)
              {

                break;
              }

LABEL_12:
              v11 = sub_1B4D18DCC();

              ++v10;
              --v9;
            }

            while ((v11 & 1) == 0);
          }
        }

        if (v8 != 2)
        {
          v24 = *(v83 + 16);
          if (v24)
          {
            v25 = v81;
            while (1)
            {
              v27 = *v25++;
              v26 = v27;
              if (v27 != 2 && ((v26 ^ v8) & 1) == 0)
              {
                break;
              }

              if (!--v24)
              {
                goto LABEL_3;
              }
            }
          }
        }
      }

      v28 = v119;
      __swift_project_boxed_opaque_existential_1(&v117 + 1, v119);
      sub_1B4B70700(v28, *(*(&v28 + 1) + 8));
      LOBYTE(v89) = v107;
      if (RingsPropertyKind.rawValue.getter() == 0x6572745365766F6DLL && v29 == 0xEA00000000006B61)
      {

LABEL_75:
        v107 = v116;
        v108 = v117;
        v109 = v118;
        v110 = v119;
        v5 = v125;
        *&v98 = v125;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B4BCEB88(0, *(v5 + 16) + 1, 1);
          v5 = v98;
        }

        v32 = *(v5 + 16);
        v31 = *(v5 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1B4BCEB88((v31 > 1), v32 + 1, 1);
          v5 = v98;
        }

        *(v5 + 16) = v32 + 1;
        v33 = (v5 + (v32 << 6));
        v34 = v107;
        v35 = v108;
        v36 = v110;
        v33[4] = v109;
        v33[5] = v36;
        v33[2] = v34;
        v33[3] = v35;
        goto LABEL_4;
      }

      v30 = sub_1B4D18DCC();

      if (v30)
      {
        goto LABEL_75;
      }

LABEL_3:
      sub_1B4B6F358(&v116);
      v5 = v125;
LABEL_4:
      v6 = (v6 + 1);
    }

    while (v6 != v86);
  }

  *&v116 = v5;

  sub_1B4CB8494(&v116);
  v37 = v80;
  if (v80)
  {

    __break(1u);
  }

  else
  {

    v38 = v116;
    v39 = *(v116 + 16);
    if (v39)
    {
      v84 = 0;
      *&v98 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v39, 0);
      v40 = v98;
      v83 = v38;
      v41 = v38 + 32;
      do
      {
        v125 = v39;
        v87 = v41;
        sub_1B4B6F2FC(v41, &v116);
        v42 = v119;
        v43 = __swift_project_boxed_opaque_existential_1(&v117 + 1, v119);
        v44 = *(*(&v42 + 1) + 8);
        v85 = *(v44 + 64);
        v86 = v43;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v108 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v109 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
        v85(v42, v44);
        v48 = sub_1B4B6F358(&v116);
        *&v98 = v40;
        v50 = *(v40 + 16);
        v49 = *(v40 + 24);
        if (v50 >= v49 >> 1)
        {
          v48 = sub_1B4BCF0BC((v49 > 1), v50 + 1, 1);
        }

        v51 = *(*(AssociatedTypeWitness - 8) + 64);
        v52 = MEMORY[0x1EEE9AC00](v48);
        v54 = &v79 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v55 + 16))(v54, boxed_opaque_existential_1, AssociatedTypeWitness, v52);
        sub_1B4CB7620(v50, v54, &v98, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v107);
        v40 = v98;
        v41 = v87 + 64;
        v39 = v125 - 1;
      }

      while (v125 != 1);

      v37 = v84;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v56 = sub_1B49E709C(v40);

    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC0];
    }

    sub_1B4CED654(v57, &v116);
    if (v37)
    {
    }

    else
    {

      v113 = v122;
      v114 = v123;
      v115 = v124;
      v109 = v118;
      v110 = v119;
      v111 = v120;
      v112 = v121;
      v107 = v116;
      v108 = v117;
      if (sub_1B496F52C(&v107) == 1)
      {
        v95 = v122;
        v96 = v123;
        v97 = v124;
        v91 = v118;
        v92 = v119;
        v93 = v120;
        v94 = v121;
        v89 = v116;
        v90 = v117;
        sub_1B4975024(&v89, &qword_1EB8AC4D8, &qword_1B4D3C6A8);
        sub_1B496F544(&v98);
        v58 = v105;
        v59 = v79;
        *(v79 + 96) = v104;
        *(v59 + 112) = v58;
        *(v59 + 128) = v106;
        v60 = v101;
        *(v59 + 32) = v100;
        *(v59 + 48) = v60;
        v61 = v103;
        *(v59 + 64) = v102;
        *(v59 + 80) = v61;
        v62 = v99;
        *v59 = v98;
        *(v59 + 16) = v62;
      }

      else
      {
        v63 = v122;
        v95 = v122;
        v96 = v123;
        v64 = v118;
        v65 = v118;
        v91 = v118;
        v92 = v119;
        v66 = v120;
        v67 = v120;
        v93 = v120;
        v94 = v121;
        v68 = v116;
        v69 = v116;
        v89 = v116;
        v90 = v117;
        v70 = v123;
        v71 = v123;
        v72 = v79;
        *(v79 + 96) = v122;
        *(v72 + 112) = v70;
        v73 = v119;
        v74 = v119;
        *(v72 + 32) = v64;
        *(v72 + 48) = v73;
        v75 = v121;
        v76 = v121;
        *(v72 + 64) = v66;
        *(v72 + 80) = v75;
        v77 = v117;
        v78 = v117;
        *v72 = v68;
        *(v72 + 16) = v77;
        v104 = v63;
        v105 = v71;
        v100 = v65;
        v101 = v74;
        v102 = v67;
        v103 = v76;
        v97 = v124;
        *(v72 + 128) = v124;
        v106 = v124;
        v98 = v69;
        v99 = v78;
        sub_1B4BA6D90(&v89, &v88);
        sub_1B4C0522C(&v98);
        nullsub_1(v72);
      }
    }
  }
}

void sub_1B4C02EE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v87 = a1;
  v79 = a5;
  v5 = MEMORY[0x1E69E7CC0];
  v86 = *(a4 + 16);
  if (v86)
  {
    v6 = 0;
    v84 = a2;
    v85 = (a4 + 32);
    v82 = (a2 + 32);
    v83 = a3;
    v81 = (a3 + 32);
    do
    {
      v125 = v5;
      sub_1B4B6F2FC(v85 + 64 * v6, &v116);
      if (v87)
      {
        v7 = BYTE1(v117);
        v8 = BYTE2(v117);
        if (v117 != 12 && *(v87 + 16) && !sub_1B4978C4C(v117, v87))
        {
          goto LABEL_3;
        }

        if (v7 != 7)
        {
          v9 = v84[2];
          if (v9)
          {
            v10 = v82;
            do
            {
              if (!v9)
              {
                goto LABEL_3;
              }

              v12 = *v10;
              if (v12 <= 2)
              {
                v15 = 0x616473656E646577;
                if (v12 == 1)
                {
                  v15 = 0x79616473657574;
                }

                v16 = 0xE900000000000079;
                if (v12 == 1)
                {
                  v16 = 0xE700000000000000;
                }

                if (*v10)
                {
                  v13 = v15;
                }

                else
                {
                  v13 = 0x7961646E6F6DLL;
                }

                if (*v10)
                {
                  v14 = v16;
                }

                else
                {
                  v14 = 0xE600000000000000;
                }

                if (v7 > 2)
                {
LABEL_38:
                  v17 = 0x7961646E7573;
                  if (v7 == 5)
                  {
                    v17 = 0x7961647275746173;
                    v18 = 0xE800000000000000;
                  }

                  else
                  {
                    v18 = 0xE600000000000000;
                  }

                  v19 = 0x7961647372756874;
                  if (v7 == 3)
                  {
                    v20 = 0xE800000000000000;
                  }

                  else
                  {
                    v19 = 0x796164697266;
                    v20 = 0xE600000000000000;
                  }

                  if (v7 <= 4)
                  {
                    v21 = v19;
                  }

                  else
                  {
                    v21 = v17;
                  }

                  if (v7 <= 4)
                  {
                    v22 = v20;
                  }

                  else
                  {
                    v22 = v18;
                  }

                  if (v13 != v21)
                  {
                    goto LABEL_12;
                  }

                  goto LABEL_63;
                }
              }

              else if (*v10 > 4u)
              {
                if (v12 == 5)
                {
                  v14 = 0xE800000000000000;
                  v13 = 0x7961647275746173;
                  if (v7 > 2)
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  v13 = 0x7961646E7573;
                  v14 = 0xE600000000000000;
                  if (v7 > 2)
                  {
                    goto LABEL_38;
                  }
                }
              }

              else
              {
                if (v12 == 3)
                {
                  v13 = 0x7961647372756874;
                }

                else
                {
                  v13 = 0x796164697266;
                }

                if (v12 == 3)
                {
                  v14 = 0xE800000000000000;
                }

                else
                {
                  v14 = 0xE600000000000000;
                }

                if (v7 > 2)
                {
                  goto LABEL_38;
                }
              }

              if (v7)
              {
                if (v7 == 1)
                {
                  v23 = 0x79616473657574;
                }

                else
                {
                  v23 = 0x616473656E646577;
                }

                if (v7 == 1)
                {
                  v22 = 0xE700000000000000;
                }

                else
                {
                  v22 = 0xE900000000000079;
                }

                if (v13 != v23)
                {
                  goto LABEL_12;
                }
              }

              else
              {
                v22 = 0xE600000000000000;
                if (v13 != 0x7961646E6F6DLL)
                {
                  goto LABEL_12;
                }
              }

LABEL_63:
              if (v14 == v22)
              {

                break;
              }

LABEL_12:
              v11 = sub_1B4D18DCC();

              ++v10;
              --v9;
            }

            while ((v11 & 1) == 0);
          }
        }

        if (v8 != 2)
        {
          v24 = *(v83 + 16);
          if (v24)
          {
            v25 = v81;
            while (1)
            {
              v27 = *v25++;
              v26 = v27;
              if (v27 != 2 && ((v26 ^ v8) & 1) == 0)
              {
                break;
              }

              if (!--v24)
              {
                goto LABEL_3;
              }
            }
          }
        }
      }

      v28 = v119;
      __swift_project_boxed_opaque_existential_1(&v117 + 1, v119);
      sub_1B4B70700(v28, *(*(&v28 + 1) + 8));
      LOBYTE(v89) = v107;
      if (RingsPropertyKind.rawValue.getter() == 0x6573696372657865 && v29 == 0xEE006B6165727453)
      {

LABEL_75:
        v107 = v116;
        v108 = v117;
        v109 = v118;
        v110 = v119;
        v5 = v125;
        *&v98 = v125;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B4BCEB88(0, *(v5 + 16) + 1, 1);
          v5 = v98;
        }

        v32 = *(v5 + 16);
        v31 = *(v5 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1B4BCEB88((v31 > 1), v32 + 1, 1);
          v5 = v98;
        }

        *(v5 + 16) = v32 + 1;
        v33 = (v5 + (v32 << 6));
        v34 = v107;
        v35 = v108;
        v36 = v110;
        v33[4] = v109;
        v33[5] = v36;
        v33[2] = v34;
        v33[3] = v35;
        goto LABEL_4;
      }

      v30 = sub_1B4D18DCC();

      if (v30)
      {
        goto LABEL_75;
      }

LABEL_3:
      sub_1B4B6F358(&v116);
      v5 = v125;
LABEL_4:
      v6 = (v6 + 1);
    }

    while (v6 != v86);
  }

  *&v116 = v5;

  sub_1B4CB8494(&v116);
  v37 = v80;
  if (v80)
  {

    __break(1u);
  }

  else
  {

    v38 = v116;
    v39 = *(v116 + 16);
    if (v39)
    {
      v84 = 0;
      *&v98 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v39, 0);
      v40 = v98;
      v83 = v38;
      v41 = v38 + 32;
      do
      {
        v125 = v39;
        v87 = v41;
        sub_1B4B6F2FC(v41, &v116);
        v42 = v119;
        v43 = __swift_project_boxed_opaque_existential_1(&v117 + 1, v119);
        v44 = *(*(&v42 + 1) + 8);
        v85 = *(v44 + 64);
        v86 = v43;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v108 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v109 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
        v85(v42, v44);
        v48 = sub_1B4B6F358(&v116);
        *&v98 = v40;
        v50 = *(v40 + 16);
        v49 = *(v40 + 24);
        if (v50 >= v49 >> 1)
        {
          v48 = sub_1B4BCF0BC((v49 > 1), v50 + 1, 1);
        }

        v51 = *(*(AssociatedTypeWitness - 8) + 64);
        v52 = MEMORY[0x1EEE9AC00](v48);
        v54 = &v79 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v55 + 16))(v54, boxed_opaque_existential_1, AssociatedTypeWitness, v52);
        sub_1B4CB7620(v50, v54, &v98, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v107);
        v40 = v98;
        v41 = v87 + 64;
        v39 = v125 - 1;
      }

      while (v125 != 1);

      v37 = v84;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v56 = sub_1B49E709C(v40);

    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC0];
    }

    sub_1B4CEF13C(v57, &v116);
    if (v37)
    {
    }

    else
    {

      v113 = v122;
      v114 = v123;
      v115 = v124;
      v109 = v118;
      v110 = v119;
      v111 = v120;
      v112 = v121;
      v107 = v116;
      v108 = v117;
      if (sub_1B496F52C(&v107) == 1)
      {
        v95 = v122;
        v96 = v123;
        v97 = v124;
        v91 = v118;
        v92 = v119;
        v93 = v120;
        v94 = v121;
        v89 = v116;
        v90 = v117;
        sub_1B4975024(&v89, &qword_1EB8AC4F8, &qword_1B4D3C6C8);
        sub_1B496F544(&v98);
        v58 = v105;
        v59 = v79;
        *(v79 + 96) = v104;
        *(v59 + 112) = v58;
        *(v59 + 128) = v106;
        v60 = v101;
        *(v59 + 32) = v100;
        *(v59 + 48) = v60;
        v61 = v103;
        *(v59 + 64) = v102;
        *(v59 + 80) = v61;
        v62 = v99;
        *v59 = v98;
        *(v59 + 16) = v62;
      }

      else
      {
        v63 = v122;
        v95 = v122;
        v96 = v123;
        v64 = v118;
        v65 = v118;
        v91 = v118;
        v92 = v119;
        v66 = v120;
        v67 = v120;
        v93 = v120;
        v94 = v121;
        v68 = v116;
        v69 = v116;
        v89 = v116;
        v90 = v117;
        v70 = v123;
        v71 = v123;
        v72 = v79;
        *(v79 + 96) = v122;
        *(v72 + 112) = v70;
        v73 = v119;
        v74 = v119;
        *(v72 + 32) = v64;
        *(v72 + 48) = v73;
        v75 = v121;
        v76 = v121;
        *(v72 + 64) = v66;
        *(v72 + 80) = v75;
        v77 = v117;
        v78 = v117;
        *v72 = v68;
        *(v72 + 16) = v77;
        v104 = v63;
        v105 = v71;
        v100 = v65;
        v101 = v74;
        v102 = v67;
        v103 = v76;
        v97 = v124;
        *(v72 + 128) = v124;
        v106 = v124;
        v98 = v69;
        v99 = v78;
        sub_1B4BA6D90(&v89, &v88);
        sub_1B4C056C4(&v98);
        nullsub_1(v72);
      }
    }
  }
}

uint64_t sub_1B4C03800(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "s <ring_percentage>.";
  }

  else
  {
    v2 = "workoutWeekContext";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "s <ring_percentage>.";
  }

  else
  {
    v4 = "workoutWeekContext";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B4D18DCC();
  }

  return v5 & 1;
}

uint64_t sub_1B4C038A4()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C0391C()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4C03980()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C039F4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

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

void sub_1B4C03A54(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "s <ring_percentage>.";
  }

  else
  {
    v2 = "workoutWeekContext";
  }

  *a1 = 0xD000000000000016;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1B4C03A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49AA274;

  return sub_1B4C03C80(a1, a3);
}

unint64_t sub_1B4C03B50(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C03B80();
  result = sub_1B4C03BD4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C03B80()
{
  result = qword_1EB8AC4B0;
  if (!qword_1EB8AC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC4B0);
  }

  return result;
}

unint64_t sub_1B4C03BD4()
{
  result = qword_1EB8AC4B8;
  if (!qword_1EB8AC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC4B8);
  }

  return result;
}

unint64_t sub_1B4C03C2C()
{
  result = qword_1EB8AC4C0;
  if (!qword_1EB8AC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC4C0);
  }

  return result;
}

uint64_t sub_1B4C03C80(uint64_t a1, uint64_t a2)
{
  v2[76] = a2;
  v2[75] = a1;
  v3 = type metadata accessor for RingClosureStreakFact();
  v2[77] = v3;
  v4 = *(v3 - 8);
  v2[78] = v4;
  v5 = *(v4 + 64) + 15;
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C0, &unk_1B4D39040) - 8) + 64) + 15;
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v7 = type metadata accessor for RingProgressType();
  v2[83] = v7;
  v8 = *(v7 - 8);
  v2[84] = v8;
  v9 = *(v8 + 64) + 15;
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v10 = type metadata accessor for HKActivitySummaryRepresentable();
  v2[89] = v10;
  v11 = *(v10 - 8);
  v2[90] = v11;
  v12 = *(v11 + 64) + 15;
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0) - 8) + 64) + 15;
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C8, &qword_1B4D39050) - 8) + 64) + 15;
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C03F10, 0, 0);
}

uint64_t sub_1B4C03F10()
{
  v178 = v0;
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[75];
  v4 = type metadata accessor for ActivitySummaryContext();
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  v0[73] = &type metadata for RingClosureStreakFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4C8, &unk_1B4D3C690);
  *&v167 = sub_1B4D181CC();
  *(&v167 + 1) = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);

  v8 = v0;
  (*(v6 + 8))(v167, *(&v167 + 1), v4, v4, v5, v6);

  sub_1B4974FBC(v1, v2, &qword_1EB8AA5C8, &qword_1B4D39050);
  v9 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  v10 = v0[96];
  v11 = v0[94];
  v12 = v0[90];
  v13 = v0[89];
  if (v9 == 1)
  {
    sub_1B4975024(v0[96], &qword_1EB8AA5C8, &qword_1B4D39050);
    (*(v12 + 56))(v11, 1, 1, v13);
  }

  else
  {
    sub_1B4974FBC(v0[96], v0[94], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4C05664(v10, type metadata accessor for ActivitySummaryContext);
    v14 = *(v12 + 48);
    if (v14(v11, 1, v13) != 1)
    {
      v21 = v0[95];
      v22 = v0[90];
      v23 = v0[89];
      sub_1B4C051C4(v0[94], v21, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v22 + 56))(v21, 0, 1, v23);
      goto LABEL_7;
    }
  }

  v15 = v0[95];
  v16 = v0[94];
  v17 = v0[90];
  v18 = v0[89];
  v19 = v0[76];
  v20 = type metadata accessor for WorkoutState();
  sub_1B4974FBC(v19 + *(v20 + 128), v15, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v14 = *(v17 + 48);
  if (v14(v16, 1, v18) != 1)
  {
    sub_1B4975024(v0[94], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

LABEL_7:
  v25 = v3[3];
  v24 = v3[4];
  __swift_project_boxed_opaque_existential_1(v0[75], v25);
  v0[74] = &type metadata for RingClosureStreakFactGenerator.QueryIdentifier;
  *&v167 = sub_1B4D181CC();
  *(&v167 + 1) = v26;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4E440);

  (*(v24 + 8))(v167, *(&v167 + 1), &type metadata for RingsProperties, &type metadata for RingsProperties, v25, v24);

  v27 = v0[72];
  if (v27)
  {
    v28 = v0[70];
    v29 = v0[71];
    v30 = v0[93];
    v31 = v0[90];
    v32 = v8[89];
    sub_1B4974FBC(v8[95], v8[93], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    v33 = v14(v30, 1, v32);
    v34 = v8[93];
    if (v33 == 1)
    {

      v35 = &qword_1EB8A6C98;
      v36 = &unk_1B4D2F3F0;
LABEL_10:
      sub_1B4975024(v34, v35, v36);
      goto LABEL_13;
    }

    v37 = v8[92];
    sub_1B4C051C4(v8[93], v37, type metadata accessor for HKActivitySummaryRepresentable);
    if (*(v37 + 25))
    {
      goto LABEL_12;
    }

    sub_1B4C01CC8(0, 0, 0, v27, &v158);
    v34 = (v8 + 19);
    v57 = v164;
    v58 = v165;
    v59 = v165;
    *(v8 + 31) = v164;
    *(v8 + 33) = v58;
    v60 = v160;
    v61 = v161;
    v62 = v161;
    *(v8 + 23) = v160;
    *(v8 + 25) = v61;
    v63 = v163;
    v64 = v163;
    v65 = v162;
    *(v8 + 27) = v162;
    *(v8 + 29) = v63;
    v66 = v159;
    v67 = v159;
    v68 = v158;
    *(v8 + 19) = v158;
    *(v8 + 21) = v66;
    *(v8 + 7) = v57;
    *(v8 + 8) = v59;
    *(v8 + 3) = v60;
    *(v8 + 4) = v62;
    *(v8 + 5) = v65;
    *(v8 + 6) = v64;
    v69 = v166;
    v8[35] = v166;
    v8[18] = v69;
    *(v8 + 1) = v68;
    *(v8 + 2) = v67;
    if (sub_1B496F52C((v8 + 2)) == 1)
    {
LABEL_12:
      sub_1B4C05664(v8[92], type metadata accessor for HKActivitySummaryRepresentable);

      goto LABEL_13;
    }

    sub_1B4C025D0(0, 0, 0, v27, &v167);

    v70 = v172;
    v72 = v173;
    v71 = v174;
    *(v8 + 65) = v173;
    *(v8 + 67) = v71;
    v73 = v168;
    v75 = v169;
    v74 = v170;
    *(v8 + 57) = v169;
    *(v8 + 59) = v74;
    v76 = v170;
    v78 = v171;
    v77 = v172;
    *(v8 + 61) = v171;
    *(v8 + 63) = v77;
    v79 = v168;
    v80 = v167;
    *(v8 + 53) = v167;
    *(v8 + 55) = v79;
    v81 = v174;
    *(v8 + 24) = v72;
    *(v8 + 25) = v81;
    *(v8 + 20) = v75;
    *(v8 + 21) = v76;
    *(v8 + 22) = v78;
    *(v8 + 23) = v70;
    v82 = v175;
    v8[69] = v175;
    v8[52] = v82;
    *(v8 + 18) = v80;
    *(v8 + 19) = v73;
    v83 = sub_1B496F52C((v8 + 36));
    v84 = v8[92];
    if (v83 == 1)
    {
      sub_1B4C05664(v84, type metadata accessor for HKActivitySummaryRepresentable);
      v35 = &qword_1EB8A79B8;
      v36 = &qword_1B4D1F320;
      goto LABEL_10;
    }

    v85 = v8[91];
    v86 = v8[84];
    v87 = v8[83];
    v88 = v8[82];
    sub_1B4C055FC(v84, v85, type metadata accessor for HKActivitySummaryRepresentable);
    LOBYTE(v177[0]) = 3;
    sub_1B4B05EF8(v85, v177, v88);
    v89 = *(v86 + 48);
    v90 = v89(v88, 1, v87);
    v91 = v8[92];
    if (v90 == 1)
    {
      v92 = v8[82];
      sub_1B4C05664(v8[92], type metadata accessor for HKActivitySummaryRepresentable);
      sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
      sub_1B4975024((v8 + 19), &qword_1EB8A79B8, &qword_1B4D1F320);
      sub_1B4975024(v92, &qword_1EB8AA5C0, &unk_1B4D39040);
      goto LABEL_13;
    }

    v93 = v8[91];
    v94 = v8[83];
    v95 = v8[81];
    sub_1B4C051C4(v8[82], v8[88], type metadata accessor for RingProgressType);
    sub_1B4C055FC(v91, v93, type metadata accessor for HKActivitySummaryRepresentable);
    LOBYTE(v177[0]) = 0;
    sub_1B4B05EF8(v93, v177, v95);
    v96 = v89(v95, 1, v94);
    v97 = v8[92];
    if (v96 == 1)
    {
      v98 = v8[88];
      v99 = v8[81];
      sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
      sub_1B4975024((v8 + 19), &qword_1EB8A79B8, &qword_1B4D1F320);
      sub_1B4C05664(v98, type metadata accessor for RingProgressType);
      sub_1B4C05664(v97, type metadata accessor for HKActivitySummaryRepresentable);
      sub_1B4975024(v99, &qword_1EB8AA5C0, &unk_1B4D39040);
      goto LABEL_13;
    }

    v100 = v8[89];
    sub_1B4C051C4(v8[81], v8[87], type metadata accessor for RingProgressType);
    v101 = *(v97 + *(v100 + 76));
    v177[0] = *v97;
    CacheIndex.add(days:)(-2, &v176);
    sub_1B4975024((v8 + 19), &qword_1EB8A79B8, &qword_1B4D1F320);
    v102 = 0;
    v103 = v8[8];
    if (v8[10] == v176 && v103 == 2)
    {
      v102 = v8[9] == 0;
    }

    v177[0] = *v8[92];
    CacheIndex.add(days:)(-2, &v176);
    sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
    v157 = 0;
    v155 = v102;
    v151 = v8[42];
    if (v8[44] == v176 && v8[42] == 2)
    {
      v157 = v8[43] == 0;
    }

    v104 = v8[92];
    sub_1B4C055FC(v8[88], v8[86], type metadata accessor for RingProgressType);
    v105 = sub_1B4A612D4();
    if (v106 & 1) != 0 || (v107 = *&v105, v108 = v8[92], v109 = sub_1B4A61B14(), (v110))
    {
      v111 = 0;
    }

    else
    {
      v138 = *&v109;
      v139 = v8[92];
      v140 = COERCE_DOUBLE(sub_1B4A61EE8());
      v111 = 0;
      if ((v141 & 1) == 0 && v107 >= 1.0 && v138 >= 1.0)
      {
        v111 = v140 >= 1.0;
      }
    }

    v146 = v8;
    v112 = v8[92];
    v113 = v8[87];
    v114 = v8[86];
    v115 = v8[85];
    v116 = v8[80];
    v117 = v8[79];
    v118 = v8[77];
    *v116 = v103;
    sub_1B4C051C4(v114, v116 + v118[5], type metadata accessor for RingProgressType);
    v119 = v101 & 1;
    *(v116 + v118[6]) = v119;
    *(v116 + v118[7]) = v111;
    *(v116 + v118[8]) = v155;
    sub_1B4C055FC(v113, v115, type metadata accessor for RingProgressType);
    v120 = COERCE_DOUBLE(sub_1B4A612D4()) >= 1.0;
    LOBYTE(v112) = v120 & ~v121;
    *v117 = v151;
    sub_1B4C051C4(v115, v117 + v118[5], type metadata accessor for RingProgressType);
    *(v117 + v118[6]) = v119;
    *(v117 + v118[7]) = v112;
    *(v117 + v118[8]) = v157;
    v153 = v146[97];
    v149 = v146[95];
    v122 = v146[92];
    v123 = v146[88];
    v124 = v146[87];
    v125 = v146[80];
    v126 = v146[79];
    if (v151 < 3)
    {
      if (!v155)
      {
        if (!v157)
        {
          sub_1B4C05664(v146[79], type metadata accessor for RingClosureStreakFact);
          sub_1B4C05664(v125, type metadata accessor for RingClosureStreakFact);
          sub_1B4C05664(v124, type metadata accessor for RingProgressType);
          sub_1B4C05664(v123, type metadata accessor for RingProgressType);
          sub_1B4C05664(v122, type metadata accessor for HKActivitySummaryRepresentable);
          sub_1B4975024(v149, &qword_1EB8A6C98, &unk_1B4D2F3F0);
          sub_1B4975024(v153, &qword_1EB8AA5C8, &qword_1B4D39050);
          v156 = MEMORY[0x1E69E7CC0];
          v8 = v146;
          goto LABEL_18;
        }

        v142 = v146[78];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4D0, &qword_1B4D3C6A0);
        v143 = *(v142 + 72);
        v144 = (*(v142 + 80) + 32) & ~*(v142 + 80);
        v145 = swift_allocObject();
        *(v145 + 16) = xmmword_1B4D1A800;
        v156 = v145;
        sub_1B4C055FC(v126, v145 + v144, type metadata accessor for RingClosureStreakFact);
        sub_1B4C05664(v126, type metadata accessor for RingClosureStreakFact);
        v137 = v125;
        v8 = v146;
LABEL_45:
        sub_1B4C05664(v137, type metadata accessor for RingClosureStreakFact);
        sub_1B4C05664(v124, type metadata accessor for RingProgressType);
        sub_1B4C05664(v123, type metadata accessor for RingProgressType);
        sub_1B4C05664(v122, type metadata accessor for HKActivitySummaryRepresentable);
        sub_1B4975024(v149, &qword_1EB8A6C98, &unk_1B4D2F3F0);
        sub_1B4975024(v153, &qword_1EB8AA5C8, &qword_1B4D39050);
        goto LABEL_18;
      }

      v133 = v146[78];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4D0, &qword_1B4D3C6A0);
      v134 = *(v133 + 72);
      v135 = (*(v133 + 80) + 32) & ~*(v133 + 80);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_1B4D1A800;
      v156 = v136;
      v132 = v136 + v135;
      v131 = v125;
    }

    else
    {
      v127 = v146[78];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4D0, &qword_1B4D3C6A0);
      v128 = *(v127 + 72);
      v129 = (*(v127 + 80) + 32) & ~*(v127 + 80);
      v130 = swift_allocObject();
      *(v130 + 16) = xmmword_1B4D1A800;
      if (v103 >= v151)
      {
        v131 = v125;
      }

      else
      {
        v131 = v126;
      }

      v156 = v130;
      v132 = v130 + v129;
    }

    sub_1B4C055FC(v131, v132, type metadata accessor for RingClosureStreakFact);
    sub_1B4C05664(v126, type metadata accessor for RingClosureStreakFact);
    v137 = v125;
    v8 = v146;
    goto LABEL_45;
  }

LABEL_13:
  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v38 = sub_1B4D17F6C();
  __swift_project_value_buffer(v38, qword_1EDC36F00);
  v39 = sub_1B4D17F5C();
  v40 = sub_1B4D1873C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v167 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_1B49558AC(0xD00000000000001ELL, 0x80000001B4D3C560, &v167);
    _os_log_impl(&dword_1B4953000, v39, v40, "%s No ring closure streak found.", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1B8C7DDA0](v42, -1, -1);
    MEMORY[0x1B8C7DDA0](v41, -1, -1);
  }

  v43 = v8[97];
  sub_1B4975024(v8[95], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  sub_1B4975024(v43, &qword_1EB8AA5C8, &qword_1B4D39050);
  v156 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v44 = v8[97];
  v45 = v8[96];
  v46 = v8[95];
  v47 = v8[94];
  v48 = v8[93];
  v49 = v8[92];
  v50 = v8[91];
  v51 = v8[88];
  v52 = v8;
  v53 = v8[87];
  v54 = v52[86];
  v147 = v52[85];
  v148 = v52[82];
  v150 = v52[81];
  v152 = v52[80];
  v154 = v52[79];

  v55 = v52[1];

  return v55(v156);
}

uint64_t sub_1B4C051C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4C052D4(uint64_t a1, unsigned __int8 *a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v5 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = *(type metadata accessor for WorkoutState() + 36);
  v10 = sub_1B4D1777C();
  v11 = *(*(v10 - 8) + 16);
  v25 = v9;
  v26 = a1;
  v11(v7, a1 + v9, v10);
  type metadata accessor for DateRangeDescriptor();
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for RingsPropertiesQuery();
  v13 = &v7[v12[5]];
  v14 = MEMORY[0x1E69E7CC0];
  *v13 = MEMORY[0x1E69E7CC0];
  *(v13 + 1) = v14;
  *(v13 + 2) = v14;
  *&v7[v12[6]] = v14;
  *&v7[v12[7]] = &unk_1F2CB9768;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4E8, &qword_1B4D3C6B8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4F0, &qword_1B4D3C6C0);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  if (v8)
  {
    *(v18 + 16) = xmmword_1B4D1A800;
    v19 = *(v15 + 48);
    *(v18 + v17) = 0;
    sub_1B4C055FC(v7, v18 + v17 + v19, type metadata accessor for FitnessContextQueryDescriptor);
    v20 = sub_1B4C96E60(v18);
    swift_setDeallocating();
    sub_1B4975024(v18 + v17, &qword_1EB8AC4F0, &qword_1B4D3C6C0);
  }

  else
  {
    *(v18 + 16) = xmmword_1B4D1AA70;
    v21 = *(v15 + 48);
    *(v18 + v17) = 0;
    sub_1B4C055FC(v7, v18 + v17 + v21, type metadata accessor for FitnessContextQueryDescriptor);
    v22 = (v18 + v17 + v16);
    v23 = *(v15 + 48);
    *v22 = 1;
    v11(&v22[v23], v26 + v25, v10);
    swift_storeEnumTagMultiPayload();
    v20 = sub_1B4C96E60(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  sub_1B4C05664(v7, type metadata accessor for FitnessContextQueryDescriptor);
  return v20;
}

uint64_t sub_1B4C055FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C05664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SnapshotQueryBatch.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v48 - v22;
  sub_1B4C05F58(a1, &v48 - v22);
  v24 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v49 = a4;
    v50 = a1;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v30 = sub_1B4C0793C(v23, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
        v48 = &v48;
        v52 = *v19;
        MEMORY[0x1EEE9AC00](v30);
        *(&v48 - 2) = a2;
        *(&v48 - 1) = a3;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC520, &qword_1B4D3C6F0);
        swift_getAssociatedTypeWitness();
        sub_1B4BA09B4(qword_1EB8AC528, &qword_1EB8AC520, &qword_1B4D3C6F0);
        v31 = v51;
        v32 = sub_1B4D182BC();
        if (v31)
        {
          sub_1B4C078DC(v50, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);

          v26 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch;
          v27 = v19;
          return sub_1B4C078DC(v27, v26);
        }

        v39 = v32;

        v52 = v39;
        sub_1B4D184BC();
        v40 = *(swift_getAssociatedConformanceWitness() + 24);
        swift_getWitnessTable();
        v41 = sub_1B4D1862C();
        sub_1B4C078DC(v50, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);
        v42 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch;
        v43 = v19;
      }

      else
      {
        v36 = sub_1B4C0793C(v23, v11, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
        v48 = &v48;
        v52 = *v11;
        MEMORY[0x1EEE9AC00](v36);
        *(&v48 - 2) = a2;
        *(&v48 - 1) = a3;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC500, &qword_1B4D3C6E0);
        swift_getAssociatedTypeWitness();
        sub_1B4BA09B4(&qword_1EB8AC508, &qword_1EB8AC500, &qword_1B4D3C6E0);
        v37 = v51;
        v38 = sub_1B4D182BC();
        if (v37)
        {
          sub_1B4C078DC(v50, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);

          v26 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch;
          v27 = v11;
          return sub_1B4C078DC(v27, v26);
        }

        v46 = v38;

        v52 = v46;
        sub_1B4D184BC();
        v47 = *(swift_getAssociatedConformanceWitness() + 24);
        swift_getWitnessTable();
        v41 = sub_1B4D1862C();
        sub_1B4C078DC(v50, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);
        v42 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch;
        v43 = v11;
      }
    }

    else
    {
      v33 = sub_1B4C0793C(v23, v15, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
      v48 = &v48;
      v52 = *v15;
      MEMORY[0x1EEE9AC00](v33);
      *(&v48 - 2) = a2;
      *(&v48 - 1) = a3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC510, &qword_1B4D3C6E8);
      swift_getAssociatedTypeWitness();
      sub_1B4BA09B4(&qword_1EB8AC518, &qword_1EB8AC510, &qword_1B4D3C6E8);
      v34 = v51;
      v35 = sub_1B4D182BC();
      if (v34)
      {
        sub_1B4C078DC(v50, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);

        v26 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch;
        v27 = v15;
        return sub_1B4C078DC(v27, v26);
      }

      v44 = v35;

      v52 = v44;
      sub_1B4D184BC();
      v45 = *(swift_getAssociatedConformanceWitness() + 24);
      swift_getWitnessTable();
      v41 = sub_1B4D1862C();
      sub_1B4C078DC(v50, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);
      v42 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch;
      v43 = v15;
    }

    result = sub_1B4C078DC(v43, v42);
    *v49 = v41;
    return result;
  }

  _s7FailureOMa_15();
  swift_getWitnessTable();
  swift_allocError();
  *v25 = 0;
  v25[1] = 0;
  swift_willThrow();
  v26 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch;
  v27 = a1;
  return sub_1B4C078DC(v27, v26);
}

uint64_t sub_1B4C05F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C05FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void, double)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(char *)@<X6>, uint64_t a7@<X8>)
{
  v23[1] = a2;
  v13 = a3(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v23 - v16;
  v18 = a4(0, v15);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1B4C079A4(a1, v17, a5);
  result = a6(v17);
  if (!v7)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v22 = swift_dynamicCast();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a7, v22 ^ 1u, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t SnapshotQueryBatch.protobuf()(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch(0);
  v5 = *(a1 + 16);
  sub_1B4C07894(&qword_1EB8AAB30, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C06374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v34 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0);
  v5 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  swift_getAssociatedTypeWitness();
  v15 = *(swift_getAssociatedConformanceWitness() + 24);
  sub_1B4D1861C();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5B0, &qword_1B4D3C7C0);
  if (swift_dynamicCast())
  {

    v17 = v38;
    MEMORY[0x1EEE9AC00](v16);
    *(&v33 - 2) = v17;
    sub_1B4C07894(&qword_1EB8AAB60, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
    v18 = v37;
    sub_1B4D17DAC();

    if (!v18)
    {
      v19 = v36;
      sub_1B4C077F4(v36);
      sub_1B4C0793C(v14, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
      v20 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    }
  }

  else
  {

    v39 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5B8, &qword_1B4D3C7C8);
    if (swift_dynamicCast())
    {

      v22 = v38;
      MEMORY[0x1EEE9AC00](v21);
      *(&v33 - 2) = v22;
      sub_1B4C07894(&qword_1EB8AAB48, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
      v23 = v37;
      sub_1B4D17DAC();

      if (!v23)
      {
        v19 = v36;
        sub_1B4C077F4(v36);
        sub_1B4C0793C(v10, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
        v20 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
        goto LABEL_12;
      }
    }

    else
    {

      v39 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5C0, &unk_1B4D3C7D0);
      v24 = swift_dynamicCast();
      if (!v24)
      {

        v39 = a3;
        swift_getMetatypeMetadata();
        v28 = sub_1B4D181AC();
        v30 = v29;
        _s7FailureOMa_15();
        swift_getWitnessTable();
        swift_allocError();
        *v31 = v28;
        v31[1] = v30;
        return swift_willThrow();
      }

      v25 = v38;
      MEMORY[0x1EEE9AC00](v24);
      *(&v33 - 2) = v25;
      sub_1B4C07894(&qword_1EB8AAB78, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
      v26 = v35;
      v27 = v37;
      sub_1B4D17DAC();
      if (!v27)
      {

        v19 = v36;
        sub_1B4C077F4(v36);
        sub_1B4C0793C(v26, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
        v20 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_1B4C06988(void *a1, uint64_t a2)
{
  v33 = a1;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v32 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v32 - v9;
  v10 = type metadata accessor for RingsPropertiesQuery();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 + 56;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 56);
  v18 = (v15 + 63) >> 6;
  v39 = a2;

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    while (1)
    {
      v40 = v21;
LABEL_9:
      v23 = sub_1B4C079A4(*(v39 + 48) + *(v37 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v13, type metadata accessor for RingsPropertiesQuery);
      MEMORY[0x1EEE9AC00](v23);
      *(&v32 - 2) = v13;
      sub_1B4C07894(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      v24 = v38;
      v25 = v42;
      sub_1B4D17DAC();
      v42 = v25;
      if (v25)
      {
        break;
      }

      sub_1B4C078DC(v13, type metadata accessor for RingsPropertiesQuery);
      v26 = v24;
      v27 = v34;
      sub_1B4C0793C(v26, v34, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      sub_1B4C0793C(v27, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      v21 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1B4A1EA10(0, v21[2] + 1, 1, v21);
      }

      v29 = v21[2];
      v28 = v21[3];
      if (v29 >= v28 >> 1)
      {
        v21 = sub_1B4A1EA10(v28 > 1, v29 + 1, 1, v21);
      }

      v17 &= v17 - 1;
      v21[2] = v29 + 1;
      result = sub_1B4C0793C(v41, v21 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v29, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    sub_1B4C078DC(v13, type metadata accessor for RingsPropertiesQuery);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {

        v30 = v33;
        v31 = *v33;

        *v30 = v21;
        return result;
      }

      v17 = *(v14 + 8 * v22);
      ++v20;
      if (v17)
      {
        v40 = v21;
        v20 = v22;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4C06DB4(void *a1, uint64_t a2)
{
  v33 = a1;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v32 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v32 - v9;
  v10 = type metadata accessor for WorkoutPropertiesQuery();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 + 56;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 56);
  v18 = (v15 + 63) >> 6;
  v39 = a2;

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    while (1)
    {
      v40 = v21;
LABEL_9:
      v23 = sub_1B4C079A4(*(v39 + 48) + *(v37 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v13, type metadata accessor for WorkoutPropertiesQuery);
      MEMORY[0x1EEE9AC00](v23);
      *(&v32 - 2) = v13;
      sub_1B4C07894(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v24 = v38;
      v25 = v42;
      sub_1B4D17DAC();
      v42 = v25;
      if (v25)
      {
        break;
      }

      sub_1B4C078DC(v13, type metadata accessor for WorkoutPropertiesQuery);
      v26 = v24;
      v27 = v34;
      sub_1B4C0793C(v26, v34, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      sub_1B4C0793C(v27, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v21 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1B4A1EA38(0, v21[2] + 1, 1, v21);
      }

      v29 = v21[2];
      v28 = v21[3];
      if (v29 >= v28 >> 1)
      {
        v21 = sub_1B4A1EA38(v28 > 1, v29 + 1, 1, v21);
      }

      v17 &= v17 - 1;
      v21[2] = v29 + 1;
      result = sub_1B4C0793C(v41, v21 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    sub_1B4C078DC(v13, type metadata accessor for WorkoutPropertiesQuery);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {

        v30 = v33;
        v31 = *v33;

        *v30 = v21;
        return result;
      }

      v17 = *(v14 + 8 * v22);
      ++v20;
      if (v17)
      {
        v40 = v21;
        v20 = v22;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4C071E0(void *a1, uint64_t a2)
{
  v33 = a1;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v32 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v32 - v9;
  v10 = type metadata accessor for FitnessPlusPropertiesQuery();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 + 56;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 56);
  v18 = (v15 + 63) >> 6;
  v39 = a2;

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    while (1)
    {
      v40 = v21;
LABEL_9:
      v23 = sub_1B4C079A4(*(v39 + 48) + *(v37 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v13, type metadata accessor for FitnessPlusPropertiesQuery);
      MEMORY[0x1EEE9AC00](v23);
      *(&v32 - 2) = v13;
      sub_1B4C07894(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      v24 = v38;
      v25 = v42;
      sub_1B4D17DAC();
      v42 = v25;
      if (v25)
      {
        break;
      }

      sub_1B4C078DC(v13, type metadata accessor for FitnessPlusPropertiesQuery);
      v26 = v24;
      v27 = v34;
      sub_1B4C0793C(v26, v34, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      sub_1B4C0793C(v27, v41, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      v21 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1B4A1EA60(0, v21[2] + 1, 1, v21);
      }

      v29 = v21[2];
      v28 = v21[3];
      if (v29 >= v28 >> 1)
      {
        v21 = sub_1B4A1EA60(v28 > 1, v29 + 1, 1, v21);
      }

      v17 &= v17 - 1;
      v21[2] = v29 + 1;
      result = sub_1B4C0793C(v41, v21 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v29, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    sub_1B4C078DC(v13, type metadata accessor for FitnessPlusPropertiesQuery);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {

        v30 = v33;
        v31 = *v33;

        *v30 = v21;
        return result;
      }

      v17 = *(v14 + 8 * v22);
      ++v20;
      if (v17)
      {
        v40 = v21;
        v20 = v22;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4C0779C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B4C077F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C07894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4C078DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C0793C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C079A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ActivitySharingFriend.init(uuid:displayName:fullName:timeZone:workouts:relationshipStartDate:hasCompletedCompetition:isCompetitionActive:activitySummaries:activeCompetitionUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13)
{
  v21 = sub_1B4D177CC();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ActivitySharingFriend();
  v23 = (a9 + v22[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + v22[6]);
  *v24 = a4;
  v24[1] = a5;
  sub_1B498B270(a6, a9 + v22[7], &qword_1EB8A6C20, &unk_1B4D1FBF0);
  *(a9 + v22[8]) = a7;
  v25 = v22[9];
  v26 = sub_1B4D1777C();
  (*(*(v26 - 8) + 32))(a9 + v25, a8, v26);
  *(a9 + v22[10]) = a10;
  *(a9 + v22[11]) = a11;
  *(a9 + v22[12]) = a12;
  return sub_1B498B270(a13, a9 + v22[13], &qword_1EB8A6A30, &unk_1B4D1FC00);
}

uint64_t type metadata accessor for ActivitySharingFriend()
{
  result = qword_1EB8AC640;
  if (!qword_1EB8AC640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4C07BE0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    if (a1 != 8)
    {
      v5 = 0xD000000000000015;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD000000000000015;
    if (a1 != 5)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1684632949;
    v2 = 0x656D614E6C6C7566;
    v3 = 0x656E6F5A656D6974;
    if (a1 != 3)
    {
      v3 = 0x7374756F6B726F77;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4E79616C70736964;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B4C07D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4C09AB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4C07D5C(uint64_t a1)
{
  v2 = sub_1B4C093B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C07D98(uint64_t a1)
{
  v2 = sub_1B4C093B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySharingFriend.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5C8, &qword_1B4D3C7E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C093B4();
  sub_1B4D18EFC();
  LOBYTE(v24) = 0;
  sub_1B4D177CC();
  sub_1B4C09DE4(&qword_1EB8A7770, MEMORY[0x1E69695A8]);
  sub_1B4D18D0C();
  if (!v2)
  {
    v11 = type metadata accessor for ActivitySharingFriend();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v24) = 1;
    sub_1B4D18C6C();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v24) = 2;
    sub_1B4D18C6C();
    v22 = v11[7];
    LOBYTE(v24) = 3;
    sub_1B4D179BC();
    sub_1B4C09DE4(&qword_1EB8AC5D8, MEMORY[0x1E6969BC0]);
    sub_1B4D18CAC();
    v24 = *(v3 + v11[8]);
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5E0, &qword_1B4D3C7E8);
    sub_1B4C09408(&qword_1EB8AC5E8, &qword_1EB8AC5F0);
    sub_1B4D18D0C();
    v22 = v11[9];
    LOBYTE(v24) = 5;
    sub_1B4D1777C();
    sub_1B4C09DE4(&qword_1EDC37820, MEMORY[0x1E6969530]);
    sub_1B4D18D0C();
    v18 = *(v3 + v11[10]);
    LOBYTE(v24) = 6;
    sub_1B4D18CCC();
    v19 = *(v3 + v11[11]);
    LOBYTE(v24) = 7;
    sub_1B4D18CCC();
    v24 = *(v3 + v11[12]);
    v23 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5F8, &qword_1B4D3C7F0);
    sub_1B4C094A4(&qword_1EB8AC600, &qword_1EB8AC608);
    sub_1B4D18D0C();
    v20 = v11[13];
    LOBYTE(v24) = 9;
    sub_1B4D18CAC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ActivitySharingFriend.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v40 - v5;
  v6 = sub_1B4D1777C();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - v11;
  v13 = sub_1B4D177CC();
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC610, &qword_1B4D3C7F8);
  v51 = *(v16 - 8);
  v52 = v16;
  v17 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v20 = type metadata accessor for ActivitySharingFriend();
  v21 = *(*(v20 - 1) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C093B4();
  v53 = v19;
  v25 = v54;
  sub_1B4D18EEC();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v12;
  v43 = v23;
  v54 = a1;
  LOBYTE(v56) = 0;
  v27 = sub_1B4C09DE4(&qword_1EB8A7780, MEMORY[0x1E69695A8]);
  v28 = v50;
  sub_1B4D18C0C();
  v42 = v27;
  v29 = v43;
  (*(v49 + 32))(v43, v28, v13);
  LOBYTE(v56) = 1;
  v30 = sub_1B4D18B6C();
  v50 = v13;
  v31 = &v29[v20[5]];
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v56) = 2;
  v33 = sub_1B4D18B6C();
  v34 = &v29[v20[6]];
  *v34 = v33;
  v34[1] = v35;
  sub_1B4D179BC();
  LOBYTE(v56) = 3;
  sub_1B4C09DE4(&qword_1EB8AC618, MEMORY[0x1E6969BC0]);
  sub_1B4D18BAC();
  sub_1B498B270(v26, &v29[v20[7]], &qword_1EB8A6C20, &unk_1B4D1FBF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5E0, &qword_1B4D3C7E8);
  v55 = 4;
  sub_1B4C09408(&qword_1EB8AC620, &qword_1EB8AC628);
  sub_1B4D18C0C();
  v41 = v20;
  *&v29[v20[8]] = v56;
  LOBYTE(v56) = 5;
  sub_1B4C09DE4(&qword_1EB8A6FB8, MEMORY[0x1E6969530]);
  v36 = v46;
  v37 = v48;
  sub_1B4D18C0C();
  (*(v47 + 32))(&v29[v41[9]], v36, v37);
  LOBYTE(v56) = 6;
  v29[v41[10]] = sub_1B4D18BCC() & 1;
  LOBYTE(v56) = 7;
  v29[v20[11]] = sub_1B4D18BCC() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC5F8, &qword_1B4D3C7F0);
  v55 = 8;
  sub_1B4C094A4(&qword_1EB8AC630, &qword_1EB8AC638);
  sub_1B4D18C0C();
  *&v29[v20[12]] = v56;
  LOBYTE(v56) = 9;
  sub_1B4D18BAC();
  (*(v51 + 8))(v53, v52);
  v38 = v43;
  sub_1B498B270(v45, &v43[v20[13]], &qword_1EB8A6A30, &unk_1B4D1FC00);
  sub_1B4C09540(v38, v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  return sub_1B4C095A4(v38);
}

BOOL _s19FitnessIntelligence21ActivitySharingFriendV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4D177CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC680, &unk_1B4D3C9B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v59 - v13;
  v14 = sub_1B4D179BC();
  v66 = *(v14 - 8);
  v15 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7078, &qword_1B4D1CCB8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v59 - v24;
  if ((sub_1B4D177AC() & 1) == 0)
  {
    return 0;
  }

  v62 = v5;
  v26 = type metadata accessor for ActivitySharingFriend();
  v27 = v26[5];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = v26[6];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v60 = v4;
  v37 = v26[7];
  v38 = *(v22 + 48);
  sub_1B4974FBC(a1 + v37, v25, &qword_1EB8A6C20, &unk_1B4D1FBF0);
  v61 = v38;
  sub_1B4974FBC(a2 + v37, &v25[v38], &qword_1EB8A6C20, &unk_1B4D1FBF0);
  v39 = *(v66 + 48);
  if (v39(v25, 1, v14) != 1)
  {
    sub_1B4974FBC(v25, v21, &qword_1EB8A6C20, &unk_1B4D1FBF0);
    if (v39(&v25[v61], 1, v14) != 1)
    {
      v43 = v66;
      (*(v66 + 32))(v17, &v25[v61], v14);
      sub_1B4C09DE4(&qword_1EB8A7080, MEMORY[0x1E6969BC0]);
      LODWORD(v61) = sub_1B4D1816C();
      v44 = *(v43 + 8);
      v44(v17, v14);
      v44(v21, v14);
      sub_1B4975024(v25, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      if ((v61 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

    (*(v66 + 8))(v21, v14);
LABEL_21:
    v40 = &qword_1EB8A7078;
    v41 = &qword_1B4D1CCB8;
    v42 = v25;
LABEL_22:
    sub_1B4975024(v42, v40, v41);
    return 0;
  }

  if (v39(&v25[v61], 1, v14) != 1)
  {
    goto LABEL_21;
  }

  sub_1B4975024(v25, &qword_1EB8A6C20, &unk_1B4D1FBF0);
LABEL_24:
  if ((sub_1B4A0BB80(*(a1 + v26[8]), *(a2 + v26[8])) & 1) == 0)
  {
    return 0;
  }

  v45 = v26[9];
  if ((sub_1B4D1774C() & 1) == 0 || *(a1 + v26[10]) != *(a2 + v26[10]) || *(a1 + v26[11]) != *(a2 + v26[11]) || (sub_1B4A0BE84(*(a1 + v26[12]), *(a2 + v26[12])) & 1) == 0)
  {
    return 0;
  }

  v46 = v26[13];
  v47 = *(v11 + 48);
  v48 = a1 + v46;
  v49 = v65;
  sub_1B4974FBC(v48, v65, &qword_1EB8A6A30, &unk_1B4D1FC00);
  sub_1B4974FBC(a2 + v46, v49 + v47, &qword_1EB8A6A30, &unk_1B4D1FC00);
  v50 = v62;
  v51 = *(v62 + 48);
  v52 = v60;
  if (v51(v49, 1, v60) == 1)
  {
    if (v51(v49 + v47, 1, v52) == 1)
    {
      sub_1B4975024(v49, &qword_1EB8A6A30, &unk_1B4D1FC00);
      return 1;
    }

    goto LABEL_34;
  }

  v53 = v64;
  sub_1B4974FBC(v49, v64, &qword_1EB8A6A30, &unk_1B4D1FC00);
  if (v51(v49 + v47, 1, v52) == 1)
  {
    (*(v50 + 8))(v53, v52);
LABEL_34:
    v40 = &qword_1EB8AC680;
    v41 = &unk_1B4D3C9B0;
    v42 = v49;
    goto LABEL_22;
  }

  v54 = v49 + v47;
  v55 = v63;
  (*(v50 + 32))(v63, v54, v52);
  sub_1B4C09DE4(&qword_1EB8AC688, MEMORY[0x1E69695A8]);
  v56 = sub_1B4D1816C();
  v57 = *(v50 + 8);
  v57(v55, v52);
  v57(v53, v52);
  sub_1B4975024(v49, &qword_1EB8A6A30, &unk_1B4D1FC00);
  return (v56 & 1) != 0;
}

unint64_t sub_1B4C093B4()
{
  result = qword_1EB8AC5D0;
  if (!qword_1EB8AC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC5D0);
  }

  return result;
}

uint64_t sub_1B4C09408(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC5E0, &qword_1B4D3C7E8);
    sub_1B4C09DE4(a2, type metadata accessor for ActivitySharingFriendWorkout);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C094A4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC5F8, &qword_1B4D3C7F0);
    sub_1B4C09DE4(a2, type metadata accessor for HKActivitySummaryRepresentable);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C09540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriend();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C095A4(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySharingFriend();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4C09628()
{
  sub_1B4D177CC();
  if (v0 <= 0x3F)
  {
    sub_1B4ABA5F0();
    if (v1 <= 0x3F)
    {
      sub_1B4C097F4(319, &qword_1EDC3CB10, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B4C097F4(319, &qword_1EB8AC650, type metadata accessor for ActivitySharingFriendWorkout, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1B4D1777C();
          if (v4 <= 0x3F)
          {
            sub_1B4C097F4(319, &qword_1EB8AC658, type metadata accessor for HKActivitySummaryRepresentable, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1B4C097F4(319, &qword_1EB8AC660, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
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

void sub_1B4C097F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for ActivitySharingFriend.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivitySharingFriend.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4C099AC()
{
  result = qword_1EB8AC668;
  if (!qword_1EB8AC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC668);
  }

  return result;
}

unint64_t sub_1B4C09A04()
{
  result = qword_1EB8AC670;
  if (!qword_1EB8AC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC670);
  }

  return result;
}

unint64_t sub_1B4C09A5C()
{
  result = qword_1EB8AC678;
  if (!qword_1EB8AC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC678);
  }

  return result;
}

uint64_t sub_1B4C09AB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7374756F6B726F77 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4D63070 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B4D63090 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D630B0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D630D0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4D630F0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1B4C09DE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4C09E70()
{
  v1 = *v0;
  sub_1B498FC0C(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1B4C09EB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B4C09EBC()
{
  result = os_variant_has_internal_content();
  byte_1EB8AC690 = result;
  return result;
}

uint64_t sub_1B4C09F08()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_1B4D1818C();
  v4 = v3;

  if (v2 == 0x6C74636966 && v4 == 0xE500000000000000)
  {

    v6 = 1;
  }

  else
  {
    v6 = sub_1B4D18DCC();
  }

  byte_1EB8AC691 = v6 & 1;
  return result;
}

uint64_t sub_1B4C0A000(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

void sub_1B4C0A048()
{
  v0 = sub_1B4D1817C();
  v1 = MGGetStringAnswer();

  if (v1)
  {
    v2 = sub_1B4D1818C();
    v4 = v3;

    qword_1EB8AC698 = v2;
    unk_1EB8AC6A0 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static Process.buildVersion.getter()
{
  if (qword_1EB8A6498 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB8AC698;

  return v0;
}

uint64_t sub_1B4C0A13C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v28 = *(a1 + 16);
  sub_1B4BCF43C(0, v1, 0);
  v2 = v29;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1B4D188DC();
  v7 = v28;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_32;
    }

    v12 = *(*(a1 + 48) + result);
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v14 = 0xD000000000000018;
        v13 = 0x80000001B4D48E90;
      }

      else if (v12 == 4)
      {
        v14 = 0x5364696C61766E69;
        v13 = 0xEC00000065746174;
      }

      else
      {
        v13 = 0xE500000000000000;
        v14 = 0x726568746FLL;
      }
    }

    else if (*(*(a1 + 48) + result))
    {
      if (v12 == 1)
      {
        v13 = 0xE800000000000000;
        v14 = 0x7964616552746F6ELL;
      }

      else
      {
        v14 = 0xD000000000000011;
        v13 = 0x80000001B4D48E70;
      }
    }

    else
    {
      v13 = 0xEA00000000006465;
      v14 = 0x6C62616E45746F6ELL;
    }

    v15 = *(a1 + 36);
    v17 = *(v29 + 16);
    v16 = *(v29 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = *(a1 + 36);
      v27 = result;
      sub_1B4BCF43C((v16 > 1), v17 + 1, 1);
      v7 = v28;
      v15 = v26;
      result = v27;
    }

    *(v29 + 16) = v17 + 1;
    v18 = v29 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_33;
    }

    v4 = a1 + 56;
    v19 = *(a1 + 56 + 8 * v10);
    if ((v19 & v11) == 0)
    {
      goto LABEL_34;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_35;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 64 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_1B497CD6C(result, v15, 0);
          v7 = v28;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_1B497CD6C(result, v15, 0);
      v7 = v28;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t DeviceInferenceAvailability.ComponentAvailability.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    if (*a1)
    {
      v4 = *(a1 + 16);
      v5 = *(v4 + 16);
      v6 = MEMORY[0x1E69E7CC0];
      if (v5)
      {
        v15 = MEMORY[0x1E69E7CC0];
        sub_1B4BCEFDC(0, v5, 0);
        v6 = v15;
        v7 = (v4 + 40);
        do
        {
          v8 = *(v7 - 1);
          v9 = *v7;

          v10 = sub_1B4D18B1C();

          if (v10 >= 6)
          {
            LOBYTE(v10) = 5;
          }

          v12 = *(v15 + 16);
          v11 = *(v15 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_1B4BCEFDC((v11 > 1), v12 + 1, 1);
          }

          *(v15 + 16) = v12 + 1;
          *(v15 + v12 + 32) = v10;
          v7 += 2;
          --v5;
        }

        while (v5);
      }

      v14 = sub_1B4A02E44(v6);
    }

    else
    {
      v14 = 0;
    }

    result = sub_1B4C0B5AC(a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
    *a2 = v14;
  }

  else
  {
    sub_1B4C0A5E4();
    swift_allocError();
    swift_willThrow();
    return sub_1B4C0B5AC(a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  return result;
}

unint64_t sub_1B4C0A5E4()
{
  result = qword_1EB8AC6A8;
  if (!qword_1EB8AC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6A8);
  }

  return result;
}

uint64_t DeviceInferenceAvailability.ComponentAvailability.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  sub_1B4C0B7B0(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C0A6E0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *result = 1;
    *(result + 8) = 1;
    v2 = result;
    v3 = sub_1B4C0A13C(a2);
    v4 = *(v2 + 16);

    *(v2 + 16) = v3;
  }

  else
  {
    *result = 0;
    *(result + 8) = 1;
  }

  return result;
}

uint64_t *sub_1B4C0A74C(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v8 = sub_1B4C0B8B4();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4C0B7B0(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
    v9 = sub_1B4D17D6C();
    sub_1B4C0B5AC(v7, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  return v9;
}

uint64_t sub_1B4C0A890@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B261D4(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4C0A8C4()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  sub_1B4C0B7B0(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return sub_1B4D17DAC();
}

uint64_t DeviceInferenceAvailability.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v44 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v45 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v46 = (&v44 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  v49 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4C0B4D4(a1 + v49[5], v13);
  v26 = *(v15 + 48);
  if (v26(v13, 1, v14) == 1)
  {
    *v25 = 0;
    v25[8] = 1;
    *(v25 + 2) = MEMORY[0x1E69E7CC0];
    v27 = &v25[*(v14 + 24)];
    sub_1B4D17BBC();
    if (v26(v13, 1, v14) != 1)
    {
      sub_1B4C0B544(v13);
    }
  }

  else
  {
    sub_1B4C0B60C(v13, v25);
  }

  v28 = v50;
  DeviceInferenceAvailability.ComponentAvailability.init(_:)(v25, &v54);
  if (v28)
  {
    return sub_1B4C0B5AC(a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
  }

  v50 = v54;
  sub_1B4C0B4D4(a1 + v49[6], v10);
  if (v26(v10, 1, v14) == 1)
  {
    *v22 = 0;
    v22[8] = 1;
    *(v22 + 2) = MEMORY[0x1E69E7CC0];
    v30 = &v22[*(v14 + 24)];
    sub_1B4D17BBC();
    if (v26(v10, 1, v14) != 1)
    {
      sub_1B4C0B544(v10);
    }
  }

  else
  {
    sub_1B4C0B60C(v10, v22);
  }

  DeviceInferenceAvailability.ComponentAvailability.init(_:)(v22, &v53);
  v31 = v53;
  v32 = v47;
  sub_1B4C0B4D4(a1 + v49[7], v47);
  if (v26(v32, 1, v14) == 1)
  {
    v33 = v46;
    *v46 = 0;
    *(v33 + 8) = 1;
    v33[2] = MEMORY[0x1E69E7CC0];
    v34 = v33 + *(v14 + 24);
    sub_1B4D17BBC();
    v35 = v26(v32, 1, v14);
    v36 = v48;
    if (v35 != 1)
    {
      sub_1B4C0B544(v32);
    }
  }

  else
  {
    v33 = v46;
    sub_1B4C0B60C(v32, v46);
    v36 = v48;
  }

  DeviceInferenceAvailability.ComponentAvailability.init(_:)(v33, &v52);
  v37 = v52;
  sub_1B4C0B4D4(a1 + v49[8], v36);
  v38 = v36;
  if (v26(v36, 1, v14) == 1)
  {
    v39 = v45;
    *v45 = 0;
    *(v39 + 8) = 1;
    v40 = v39;
    v39[2] = MEMORY[0x1E69E7CC0];
    v41 = v39 + *(v14 + 24);
    sub_1B4D17BBC();
    if (v26(v38, 1, v14) != 1)
    {
      sub_1B4C0B544(v38);
    }
  }

  else
  {
    v40 = v45;
    sub_1B4C0B60C(v38, v45);
  }

  DeviceInferenceAvailability.ComponentAvailability.init(_:)(v40, &v51);
  result = sub_1B4C0B5AC(a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
  v42 = v51;
  v43 = v44;
  *v44 = v50;
  v43[1] = v31;
  v43[2] = v37;
  v43[3] = v42;
  return result;
}

uint64_t DeviceInferenceAvailability.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  v2 = *v0;
  v3 = v0[1];
  sub_1B4C0B7B0(qword_1EDC3B208, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C0AFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v19 = a3;
  v20 = a4;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  sub_1B4C0B7B0(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4D17DAC();
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  v13 = v12[5];
  sub_1B4C0B544(a1 + v13);
  sub_1B4C0B60C(v11, a1 + v13);
  v14 = *(v8 + 56);
  v14(a1 + v13, 0, 1, v7);
  v23 = v19;
  sub_1B4D17DAC();
  v15 = v12[6];
  sub_1B4C0B544(a1 + v15);
  sub_1B4C0B60C(v11, a1 + v15);
  v14(a1 + v15, 0, 1, v7);
  v22 = v20;
  sub_1B4D17DAC();
  v16 = v12[7];
  sub_1B4C0B544(a1 + v16);
  sub_1B4C0B60C(v11, a1 + v16);
  v14(a1 + v16, 0, 1, v7);
  v21 = v25;
  sub_1B4D17DAC();
  v17 = v12[8];
  sub_1B4C0B544(a1 + v17);
  sub_1B4C0B60C(v11, a1 + v17);
  return (v14)(a1 + v17, 0, 1, v7);
}

_OWORD *sub_1B4C0B270(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v12[0] = *v1;
  v12[1] = v8;
  v9 = sub_1B4C0B860();
  v10 = v12;
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4C0B7B0(qword_1EDC3B208, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
    v10 = sub_1B4D17D6C();
    sub_1B4C0B5AC(v7, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
  }

  return v10;
}

double sub_1B4C0B3B8@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B4B2A134(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1B4C0B3F4()
{
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  v2 = *v0;
  v3 = v0[1];
  sub_1B4C0B7B0(qword_1EDC3B208, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C0B4D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C0B544(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C0B5AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C0B60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C0B7B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4C0B80C()
{
  result = qword_1EB8AC6B0;
  if (!qword_1EB8AC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6B0);
  }

  return result;
}

unint64_t sub_1B4C0B860()
{
  result = qword_1EB8AC6B8;
  if (!qword_1EB8AC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6B8);
  }

  return result;
}

unint64_t sub_1B4C0B8B4()
{
  result = qword_1EB8AC6C0;
  if (!qword_1EB8AC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6C0);
  }

  return result;
}

uint64_t MonthOfYear.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B4D1794C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v9 = sub_1B4D1796C();
  __swift_project_value_buffer(v9, qword_1EDC3CE48);
  (*(v5 + 104))(v8, *MEMORY[0x1E6969A78], v4);
  v10 = sub_1B4D1795C();
  (*(v5 + 8))(v8, v4);
  if ((v10 - 13) >= 0xFFFFFFFFFFFFFFF4)
  {
    v15 = byte_1F2CB8190[v10 + 31];
  }

  else
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v11 = sub_1B4D17F6C();
    __swift_project_value_buffer(v11, qword_1EDC3CED0);
    v12 = sub_1B4D17F5C();
    v13 = sub_1B4D1871C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v10;
      _os_log_impl(&dword_1B4953000, v12, v13, "Invalid month of year: %ld.", v14, 0xCu);
      MEMORY[0x1B8C7DDA0](v14, -1, -1);
    }

    v15 = 12;
  }

  v16 = sub_1B4D1777C();
  result = (*(*(v16 - 8) + 8))(a1, v16);
  *a2 = v15;
  return result;
}

FitnessIntelligence::MonthOfYear_optional __swiftcall MonthOfYear.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MonthOfYear.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x7265626F74636FLL;
    v8 = 0x7265626D65766F6ELL;
    if (v1 != 10)
    {
      v8 = 0x7265626D65636564;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 2037151082;
    v10 = 0x747375677561;
    if (v1 != 7)
    {
      v10 = 0x65626D6574706573;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x797261756E616ALL;
    v3 = 0x6C69727061;
    v4 = 7954797;
    if (v1 != 4)
    {
      v4 = 1701737834;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x7972617572626566;
    if (v1 != 1)
    {
      v5 = 0x686372616DLL;
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
}

uint64_t sub_1B4C0BD68(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = MonthOfYear.rawValue.getter();
  v4 = v3;
  if (v2 == MonthOfYear.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B4D18DCC();
  }

  return v7 & 1;
}

uint64_t sub_1B4C0BE04()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MonthOfYear.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C0BE6C()
{
  v2 = *v0;
  MonthOfYear.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4C0BED0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MonthOfYear.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C0BF40@<X0>(uint64_t *a1@<X8>)
{
  result = MonthOfYear.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B4C0BF7C()
{
  result = qword_1EB8AC6C8;
  if (!qword_1EB8AC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6C8);
  }

  return result;
}

unint64_t sub_1B4C0BFD4()
{
  result = qword_1EB8AC6D0;
  if (!qword_1EB8AC6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC6D8, &qword_1B4D3CC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6D0);
  }

  return result;
}

uint64_t HighestDailyStepCountAnniversaryFact.TemplateString.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4C0C0C8()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C0C13C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C0C190@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t HighestDailyStepCountAnniversaryFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for HighestDailyStepCountAnniversaryFact();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B4D1BE00;
  v20 = *v0;
  v7 = sub_1B4D18D5C();
  v9 = v8;
  *(v6 + 32) = 0x756F635F70657473;
  *(v6 + 40) = 0xEA0000000000746ELL;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  *(v6 + 48) = sub_1B4993DFC;
  *(v6 + 56) = v10;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  v20 = *(v1 + *(v3 + 32));
  v11 = sub_1B4D18D5C();
  v13 = v12;
  *(v6 + 80) = 0x67615F7372616579;
  *(v6 + 88) = 0xE90000000000006FLL;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  *(v6 + 96) = sub_1B4994004;
  *(v6 + 104) = v14;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  sub_1B4BD2288(v1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1B4C0C564(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B4C0C5C8;
  *(v17 + 24) = v16;
  *(v6 + 128) = 0x7261655F65746164;
  *(v6 + 136) = 0xEB0000000064656ELL;
  *(v6 + 144) = sub_1B4AF87E4;
  *(v6 + 152) = v17;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  return v6;
}