uint64_t sub_242C2A838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2A8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2AC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 44);

  return v15(v16, a2, v14);
}

uint64_t sub_242C2AD78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 44);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_242C2AEE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_242C2B0A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_242C2B308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2B374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2B3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2B454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2B4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2B534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2B5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2B610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2B698@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242C4A09C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242C2B700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E10, &qword_242C4BE48);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_242C2B7CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E10, &qword_242C4BE48);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C2B8A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242C4A03C();
  *a1 = result;
  return result;
}

uint64_t sub_242C2B8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_242C2B9C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_242C2BA8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9ED8, &qword_242C4C0A0);
  sub_242C3B974(&qword_27ECE9F18, &qword_27ECE9ED8, &qword_242C4C0A0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_242C2BB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_242C2BBE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242C2BC90()
{
  v1 = type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  v7 = *(v0 + 48);

  v8 = v0 + v3;
  v9 = *(v0 + v3 + 8);

  v10 = *(v1 + 20);
  v11 = sub_242C4A35C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  v13 = *(v8 + *(v1 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_242C2BDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2BE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2BED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2BF40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2C018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FC0, &qword_242C4C350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242C2C080()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9FC8, &qword_242C4C358);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9FC0, &qword_242C4C350);
  sub_242C40B20();
  sub_242C40C60();
  sub_242C40CB4();
  sub_242C40D08();
  swift_getOpaqueTypeConformance2();
  sub_242C40E04();
  sub_242C40E58();
  sub_242C40EAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_242C2C188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEA2C8, &qword_242C4D840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242C2C1F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242C4A0BC();
  *a1 = result;
  return result;
}

uint64_t sub_242C2C220(uint64_t *a1)
{
  v1 = *a1;

  return sub_242C4A0CC();
}

uint64_t sub_242C2C24C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242C4A07C();
  *a1 = result;
  return result;
}

uint64_t sub_242C2C278(uint64_t *a1)
{
  v1 = *a1;

  return sub_242C4A08C();
}

uint64_t sub_242C2C2A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECEA320, &qword_242C4D9B8);
  sub_242C3B974(&qword_27ECEA338, &qword_27ECEA320, &qword_242C4D9B8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_242C2C348()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242C2C388()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECEA408, &qword_242C4DBE8);
  sub_242C499C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_242C2C3EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C2C458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_242C2C4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double TrunkStatusSnippet.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = v4[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  v6 = v2 + v4[5];
  sub_242C49F1C();
  v7 = v2 + v4[6];
  sub_242C49F1C();
  v8 = v2 + v4[7];
  sub_242C49F1C();
  v9 = v2 + v4[8];
  sub_242C49F1C();
  v10 = v4[10];

  sub_242C49F1C();
  v11 = v4[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  sub_242C4A44C();
  sub_242C2C7A0();
  v12 = sub_242C4A01C();
  v14 = v13;

  result = 3.89653885e233;
  *a1 = xmmword_242C4AC50;
  *(a1 + 16) = xmmword_242C4AC60;
  *(a1 + 32) = 384;
  *(a1 + 34) = 0;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = v16;
  *(a1 + 80) = v17;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  *(a1 + 120) = 0xD00000000000003DLL;
  *(a1 + 128) = 0x8000000242C4DC60;
  *(a1 + 136) = v16;
  *(a1 + 144) = v17;
  *(a1 + 152) = v16;
  *(a1 + 160) = v17;
  *(a1 + 168) = v16;
  *(a1 + 176) = 0;
  *(a1 + 184) = v16;
  *(a1 + 192) = v17;
  *(a1 + 200) = 0;
  *(a1 + 208) = v12;
  *(a1 + 216) = v14;
  return result;
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

unint64_t sub_242C2C7A0()
{
  result = qword_27ECE99B0;
  if (!qword_27ECE99B0)
  {
    sub_242C4A44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE99B0);
  }

  return result;
}

uint64_t type metadata accessor for TrunkStatusSnippet()
{
  result = qword_27ECE99B8;
  if (!qword_27ECE99B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C2C8B0()
{
  result = type metadata accessor for CarCommandsToggleSnippetModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_242C2C91C()
{
  result = qword_27ECE99C8;
  if (!qword_27ECE99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE99C8);
  }

  return result;
}

void type metadata accessor for VRXVisualResponseLocation()
{
  if (!qword_27ECE99D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27ECE99D0);
    }
  }
}

uint64_t CarCommandsToggleSnippetModel.isOn.getter()
{
  v0 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  return v2;
}

uint64_t CarCommandsToggleSnippetModel.onTransitionText.getter()
{
  v0 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v2;
}

uint64_t CarCommandsToggleSnippetModel.offTransitionText.getter()
{
  v0 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v2;
}

uint64_t CarCommandsToggleSnippetModel.appId.getter()
{
  v0 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v2;
}

uint64_t CarCommandsToggleSnippetModel.carNameDirectInvocationPayloadValue.getter()
{
  v0 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  return v2;
}

uint64_t CarCommandsToggleSnippetModel.init(carNameText:onStateText:offStateText:onTransitionText:offTransitionText:isOn:appId:carNameDirectInvocationPayloadValue:)()
{
  v0 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  sub_242C49EFC();
  sub_242C49EFC();
  v2 = v0[5];
  sub_242C49EFC();
  v3 = v0[6];
  sub_242C49EFC();
  v4 = v0[7];
  sub_242C49EFC();
  v5 = v0[8];
  sub_242C49EFC();
  v6 = v0[9];
  sub_242C49EFC();
  v7 = v0[10];
  sub_242C49EFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsConfirmationSnippetModel.confirmText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2CE14(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v3;
}

uint64_t (*CarCommandsConfirmationSnippetModel.denyText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsConfirmationSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2CF3C()
{
  if (*v0)
  {
    result = 0x74786554796E6564;
  }

  else
  {
    result = 0x546D7269666E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_242C2CF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x546D7269666E6F63 && a2 == 0xEB00000000747865;
  if (v6 || (sub_242C4A6DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74786554796E6564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242C4A6DC();

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

uint64_t sub_242C2D06C(uint64_t a1)
{
  v2 = sub_242C2EAF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C2D0A8(uint64_t a1)
{
  v2 = sub_242C2EAF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsConfirmationSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99E0, &qword_242C4AD50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C2EAF0();
  sub_242C4A74C();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C2EB44();
  sub_242C4A6AC();
  if (!v1)
  {
    v9 = *(type metadata accessor for CarCommandsConfirmationSnippetModel(0) + 20);
    v11[14] = 1;
    sub_242C4A6AC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t CarCommandsConfirmationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v29 = *(v33 - 8);
  v4 = *(v29 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99F8, &qword_242C4AD58);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C2EAF0();
  sub_242C4A73C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v13;
  v27 = v16;
  v18 = v29;
  v35 = 0;
  v19 = sub_242C2EC5C();
  v20 = v30;
  v21 = v32;
  sub_242C4A65C();
  v25[1] = v19;
  v30 = *(v18 + 32);
  (v30)(v27, v20, v33);
  v34 = 1;
  v22 = v7;
  sub_242C4A65C();
  (*(v31 + 8))(v12, v21);
  v23 = v27;
  (v30)(&v27[*(v26 + 20)], v22, v33);
  sub_242C2ED54(v23, v28, type metadata accessor for CarCommandsConfirmationSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_242C2EDBC(v23, type metadata accessor for CarCommandsConfirmationSnippetModel);
}

uint64_t (*CarCommandsAppPunchoutSnippetModel.appNameText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2D6CC@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  v3 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_242C2D738(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *a1;
  v8 = a1[1];
  v5 = *(a5(0) + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t sub_242C2D7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a3(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsAppPunchoutSnippetModel.appIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsAppPunchoutSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_242C49EFC();
  v6 = *(a5(0) + 20);
  return sub_242C49EFC();
}

uint64_t sub_242C2D954()
{
  if (*v0)
  {
    result = 0x746E656449707061;
  }

  else
  {
    result = 0x54656D614E707061;
  }

  *v0;
  return result;
}

uint64_t sub_242C2D9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54656D614E707061 && a2 == 0xEB00000000747865;
  if (v6 || (sub_242C4A6DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656449707061 && a2 == 0xED00007265696669)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242C4A6DC();

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

uint64_t sub_242C2DA8C(uint64_t a1)
{
  v2 = sub_242C2ED00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C2DAC8(uint64_t a1)
{
  v2 = sub_242C2ED00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsAppPunchoutSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A08, &qword_242C4AD60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C2ED00();
  sub_242C4A74C();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C2EB44();
  sub_242C4A6AC();
  if (!v1)
  {
    v9 = *(type metadata accessor for CarCommandsAppPunchoutSnippetModel(0) + 20);
    v11[14] = 1;
    sub_242C4A6AC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t CarCommandsAppPunchoutSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v29 = *(v33 - 8);
  v4 = *(v29 + 64);
  v5 = MEMORY[0x28223BE20](v33);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A18, &qword_242C4AD68);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = type metadata accessor for CarCommandsAppPunchoutSnippetModel(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C2ED00();
  sub_242C4A73C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v13;
  v27 = v16;
  v18 = v29;
  v35 = 0;
  v19 = sub_242C2EC5C();
  v20 = v30;
  v21 = v32;
  sub_242C4A65C();
  v25[1] = v19;
  v30 = *(v18 + 32);
  (v30)(v27, v20, v33);
  v34 = 1;
  v22 = v7;
  sub_242C4A65C();
  (*(v31 + 8))(v12, v21);
  v23 = v27;
  (v30)(&v27[*(v26 + 20)], v22, v33);
  sub_242C2ED54(v23, v28, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_242C2EDBC(v23, type metadata accessor for CarCommandsAppPunchoutSnippetModel);
}

uint64_t (*CarCommandsToggleSnippetModel.carNameText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t (*CarCommandsToggleSnippetModel.onStateText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t (*CarCommandsToggleSnippetModel.offStateText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2E23C@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_242C2E2A4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t CarCommandsToggleSnippetModel.onTransitionText.setter()
{
  v0 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsToggleSnippetModel.onTransitionText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2E408@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_242C2E470(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t CarCommandsToggleSnippetModel.offTransitionText.setter()
{
  v0 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsToggleSnippetModel.offTransitionText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2E5D4@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  result = sub_242C49F1C();
  *a1 = v4;
  return result;
}

uint64_t sub_242C2E63C(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  return sub_242C49F2C();
}

uint64_t CarCommandsToggleSnippetModel.isOn.setter()
{
  v0 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsToggleSnippetModel.isOn.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2E790@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_242C2E7F8(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t CarCommandsToggleSnippetModel.appId.setter()
{
  v0 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsToggleSnippetModel.appId.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

double sub_242C2E95C@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_242C2E9C4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 44);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

uint64_t CarCommandsToggleSnippetModel.carNameDirectInvocationPayloadValue.setter()
{
  v0 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_242C2EAF0()
{
  result = qword_27ECE99E8;
  if (!qword_27ECE99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE99E8);
  }

  return result;
}

unint64_t sub_242C2EB44()
{
  result = qword_27ECE99F0;
  if (!qword_27ECE99F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE99A0, &unk_242C4B920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE99F0);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_242C2EC5C()
{
  result = qword_27ECE9A00;
  if (!qword_27ECE9A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE99A0, &unk_242C4B920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A00);
  }

  return result;
}

unint64_t sub_242C2ED00()
{
  result = qword_27ECE9A10;
  if (!qword_27ECE9A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A10);
  }

  return result;
}

uint64_t sub_242C2ED54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242C2EDBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*CarCommandsToggleSnippetModel.carNameDirectInvocationPayloadValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsToggleSnippetModel(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C2EEB8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6449707061;
    if (v1 != 6)
    {
      v5 = 0xD000000000000023;
    }

    v6 = 0xD000000000000011;
    if (v1 != 4)
    {
      v6 = 1850700649;
    }

    if (*v0 <= 5u)
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
    v2 = 0x54656D614E726163;
    v3 = 0x657461745366666FLL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = 0x5465746174536E6FLL;
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
}

uint64_t sub_242C2EFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C35098(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C2EFF4(uint64_t a1)
{
  v2 = sub_242C2F3AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C2F030(uint64_t a1)
{
  v2 = sub_242C2F3AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsToggleSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A20, &qword_242C4AD70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C2F3AC();
  sub_242C4A74C();
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C2EB44();
  sub_242C4A6AC();
  if (!v1)
  {
    v9 = type metadata accessor for CarCommandsToggleSnippetModel(0);
    v10 = v9[5];
    v24 = 1;
    sub_242C4A6AC();
    v11 = v9[6];
    v23 = 2;
    sub_242C4A6AC();
    v12 = v9[7];
    v22 = 3;
    sub_242C4A6AC();
    v13 = v9[8];
    v21 = 4;
    sub_242C4A6AC();
    v17[1] = v9[9];
    v20 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
    sub_242C2F400();
    sub_242C4A6AC();
    v14 = v9[10];
    v19 = 6;
    sub_242C4A6AC();
    v15 = v9[11];
    v18 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
    sub_242C2FF84(&qword_27ECE9A38);
    sub_242C4A6AC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_242C2F3AC()
{
  result = qword_27ECE9A28;
  if (!qword_27ECE9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A28);
  }

  return result;
}

unint64_t sub_242C2F400()
{
  result = qword_27ECE9A30;
  if (!qword_27ECE9A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9998, &unk_242C4AC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A30);
  }

  return result;
}

uint64_t sub_242C2F484(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE99D8, &qword_242C4AD48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CarCommandsToggleSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = v51 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v61 = *(v65 - 8);
  v10 = *(v61 + 64);
  v11 = MEMORY[0x28223BE20](v65);
  v56 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v58 = v51 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v51 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v51 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v51 - v22;
  MEMORY[0x28223BE20](v21);
  v63 = v51 - v24;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A50, &qword_242C4AD78);
  v62 = *(v64 - 8);
  v25 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v27 = v51 - v26;
  v28 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v30 + 44);
  v71 = 0;
  v72 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  v73 = v32;
  v68 = v33;
  sub_242C49EFC();
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C2F3AC();
  v66 = v27;
  v35 = v67;
  sub_242C4A73C();
  if (v35)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v69 + 8))(&v73[v68], v70);
  }

  else
  {
    v36 = v23;
    v52 = v17;
    v53 = v28;
    v37 = v62;
    v67 = a1;
    LOBYTE(v71) = 0;
    v38 = sub_242C2EC5C();
    sub_242C4A65C();
    v39 = *(v61 + 32);
    v39(v73, v63, v65);
    LOBYTE(v71) = 1;
    v63 = v38;
    sub_242C4A65C();
    v40 = v37;
    v39(&v73[v53[5]], v36, v65);
    LOBYTE(v71) = 2;
    v51[1] = 0;
    sub_242C4A65C();
    v41 = v53;
    v39(&v73[v53[6]], v20, v65);
    LOBYTE(v71) = 3;
    v42 = v52;
    sub_242C4A65C();
    v43 = v39;
    v39(&v73[v41[7]], v42, v65);
    LOBYTE(v71) = 4;
    v44 = v58;
    sub_242C4A65C();
    v39(&v73[v41[8]], v44, v65);
    LOBYTE(v71) = 5;
    sub_242C2FF00();
    v45 = v57;
    v46 = v59;
    sub_242C4A65C();
    (*(v60 + 32))(&v73[v41[9]], v45, v46);
    LOBYTE(v71) = 6;
    v47 = v56;
    sub_242C4A65C();
    v43(&v73[v41[10]], v47);
    LOBYTE(v71) = 7;
    sub_242C2FF84(&qword_27ECE9A60);
    v48 = v55;
    sub_242C4A65C();
    (*(v40 + 8))(v66, v64);
    v49 = v73;
    (*(v69 + 40))(&v73[v68], v48, v70);
    sub_242C2ED54(v49, v54, type metadata accessor for CarCommandsToggleSnippetModel);
    __swift_destroy_boxed_opaque_existential_1(v67);
    return sub_242C2EDBC(v49, type metadata accessor for CarCommandsToggleSnippetModel);
  }
}

unint64_t sub_242C2FF00()
{
  result = qword_27ECE9A58;
  if (!qword_27ECE9A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9998, &unk_242C4AC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A58);
  }

  return result;
}

uint64_t sub_242C2FF84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE99A8, &qword_242C4AC80);
    sub_242C2F484(&qword_27ECE9A40);
    sub_242C2F484(&qword_27ECE9A48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*CarCommandsGaugeSnippetModel.carName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t (*CarCommandsGaugeSnippetModel.primaryText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t CarCommandsGaugeSnippetModel.secondaryText.getter()
{
  v0 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  return v2;
}

double sub_242C30248@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_242C302B0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

uint64_t CarCommandsGaugeSnippetModel.secondaryText.setter()
{
  v0 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsGaugeSnippetModel.secondaryText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

float CarCommandsGaugeSnippetModel.gaugePercentFull.getter()
{
  v0 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  sub_242C49F1C();
  return v2;
}

float sub_242C30468@<S0>(float *a1@<X8>)
{
  v2 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  sub_242C49F1C();
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_242C304D0(int *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  return sub_242C49F2C();
}

uint64_t CarCommandsGaugeSnippetModel.gaugePercentFull.setter()
{
  v0 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsGaugeSnippetModel.gaugePercentFull.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t CarCommandsGaugeSnippetModel.showGaugeAccessoryView.getter()
{
  v0 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  return v2;
}

uint64_t sub_242C30678@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  result = sub_242C49F1C();
  *a1 = v4;
  return result;
}

uint64_t sub_242C306E0(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  return sub_242C49F2C();
}

uint64_t CarCommandsGaugeSnippetModel.showGaugeAccessoryView.setter()
{
  v0 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsGaugeSnippetModel.showGaugeAccessoryView.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C30834;
}

uint64_t CarCommandsGaugeSnippetModel.appId.getter()
{
  v0 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v2;
}

uint64_t sub_242C3088C@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_242C308F4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t CarCommandsGaugeSnippetModel.appId.setter()
{
  v0 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsGaugeSnippetModel.appId.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsGaugeSnippetModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t CarCommandsGaugeSnippetModel.init(carName:primaryText:secondaryText:gaugePercentFull:showGaugeAccessoryView:appId:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  v3 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  sub_242C49EFC();
  sub_242C49EFC();
  v4 = v2[5];
  sub_242C49EFC();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  (*(*(v5 - 8) + 8))(a1 + v3, v5);
  sub_242C49EFC();
  v6 = v2[7];
  sub_242C49EFC();
  v7 = v2[8];
  sub_242C49EFC();
  v8 = v2[9];
  return sub_242C49EFC();
}

unint64_t sub_242C30BF4()
{
  v1 = *v0;
  v2 = 0x656D614E726163;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x6449707061;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x547972616D697270;
  if (v1 != 1)
  {
    v5 = 0x7261646E6F636573;
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

uint64_t sub_242C30CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C35338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C30CF8(uint64_t a1)
{
  v2 = sub_242C31074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C30D34(uint64_t a1)
{
  v2 = sub_242C31074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsGaugeSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A70, &qword_242C4AD88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C31074();
  sub_242C4A74C();
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C2EB44();
  sub_242C4A6AC();
  if (!v1)
  {
    v9 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
    v10 = v9[5];
    v19 = 1;
    sub_242C4A6AC();
    v14 = v9[6];
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
    sub_242C2FF84(&qword_27ECE9A38);
    sub_242C4A6AC();
    v14 = v9[7];
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
    sub_242C310C8();
    sub_242C4A6AC();
    v14 = v9[8];
    v16 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
    sub_242C2F400();
    sub_242C4A6AC();
    v11 = v9[9];
    v15 = 5;
    sub_242C4A6AC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_242C31074()
{
  result = qword_27ECE9A78;
  if (!qword_27ECE9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A78);
  }

  return result;
}

unint64_t sub_242C310C8()
{
  result = qword_27ECE9A80;
  if (!qword_27ECE9A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9A68, &qword_242C4AD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A80);
  }

  return result;
}

uint64_t CarCommandsGaugeSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  v61 = *(v66 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v66);
  v55 = v51 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A68, &qword_242C4AD80);
  v62 = *(v70 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v70);
  v56 = v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v57 = v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v51 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A88, &qword_242C4AD90);
  v59 = *(v20 - 8);
  v60 = v20;
  v21 = *(v59 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v51 - v22;
  v24 = type metadata accessor for CarCommandsGaugeSnippetModel(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v26;
  v29 = *(v26 + 24);
  v71 = 0;
  v72 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  v67 = v29;
  v30 = v28;
  sub_242C49EFC();
  v32 = a1[3];
  v31 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_242C31074();
  v63 = v23;
  v33 = v64;
  sub_242C4A73C();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1(v65);
    return (*(v68 + 8))(&v30[v67], v69);
  }

  else
  {
    v64 = v14;
    LOBYTE(v71) = 0;
    v34 = sub_242C2EC5C();
    sub_242C4A65C();
    v36 = (v58 + 32);
    v35 = *(v58 + 32);
    v53 = v30;
    v37 = v19;
    v38 = v35;
    v35(v30, v37, v10);
    LOBYTE(v71) = 1;
    sub_242C4A65C();
    v52 = v10;
    v51[1] = v34;
    v38(v53 + *(v73 + 20), v17, v10);
    LOBYTE(v71) = 2;
    sub_242C2FF84(&qword_27ECE9A60);
    v39 = v57;
    v40 = v69;
    v41 = v38;
    sub_242C4A65C();
    v42 = v70;
    v51[0] = v41;
    (*(v68 + 40))(v53 + v67, v39, v40);
    LOBYTE(v71) = 3;
    sub_242C319DC();
    v43 = v56;
    sub_242C4A65C();
    v44 = v66;
    v57 = v36;
    v45 = v73;
    v46 = v43;
    v47 = v53;
    (*(v62 + 32))(v53 + *(v73 + 28), v46, v42);
    LOBYTE(v71) = 4;
    sub_242C2FF00();
    v48 = v55;
    sub_242C4A65C();
    (*(v61 + 32))(v47 + *(v45 + 32), v48, v44);
    LOBYTE(v71) = 5;
    v49 = v52;
    sub_242C4A65C();
    (*(v59 + 8))(v63, v60);
    (v51[0])(v47 + *(v45 + 36), v64, v49);
    sub_242C2ED54(v47, v54, type metadata accessor for CarCommandsGaugeSnippetModel);
    __swift_destroy_boxed_opaque_existential_1(v65);
    return sub_242C2EDBC(v47, type metadata accessor for CarCommandsGaugeSnippetModel);
  }
}

unint64_t sub_242C319DC()
{
  result = qword_27ECE9A90;
  if (!qword_27ECE9A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9A68, &qword_242C4AD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9A90);
  }

  return result;
}

uint64_t (*CarCommandsDisambiguationSnippetModel.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t CarCommandsDisambiguationSnippetModel.disambiguationOptions.getter()
{
  v0 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  sub_242C49F1C();
  return v2;
}

uint64_t sub_242C31B90@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  result = sub_242C49F1C();
  *a1 = v4;
  return result;
}

uint64_t sub_242C31BF8(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel(0) + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  return sub_242C49F2C();
}

uint64_t CarCommandsDisambiguationSnippetModel.disambiguationOptions.setter()
{
  v0 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsDisambiguationSnippetModel.disambiguationOptions.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t CarCommandsDisambiguationSnippetModel.init(title:disambiguationOptions:)()
{
  sub_242C49EFC();
  v0 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9AA0, &qword_242C4ADA0);
  return sub_242C49EFC();
}

uint64_t sub_242C31DD8()
{
  v1 = *v0;
  sub_242C4A6FC();
  MEMORY[0x245D24420](v1);
  return sub_242C4A72C();
}

uint64_t sub_242C31E20()
{
  v1 = *v0;
  sub_242C4A6FC();
  MEMORY[0x245D24420](v1);
  return sub_242C4A72C();
}

unint64_t sub_242C31E64()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_242C31EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_242C4A6DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242C4DD50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242C4A6DC();

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

uint64_t sub_242C31F80(uint64_t a1)
{
  v2 = sub_242C321CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C31FBC(uint64_t a1)
{
  v2 = sub_242C321CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsDisambiguationSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9AA8, &qword_242C4ADA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C321CC();
  sub_242C4A74C();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C2EB44();
  sub_242C4A6AC();
  if (!v1)
  {
    v9 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel(0) + 20);
    v11[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
    sub_242C32220(&qword_27ECE9AB8);
    sub_242C4A6AC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_242C321CC()
{
  result = qword_27ECE9AB0;
  if (!qword_27ECE9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9AB0);
  }

  return result;
}

uint64_t sub_242C32220(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9A98, &qword_242C4AD98);
    sub_242C32360(&qword_27ECE9AC0, &qword_27ECE9AC8);
    sub_242C32360(&qword_27ECE9AD0, &qword_27ECE9AD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C32328(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C32360(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9AA0, &qword_242C4ADA0);
    sub_242C323FC(a2, type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C323FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CarCommandsDisambiguationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v26 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v31 = *(v35 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v35);
  v32 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9AE0, &qword_242C4ADB0);
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = type metadata accessor for CarCommandsDisambiguationSnippetModel(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C321CC();
  sub_242C4A73C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v13;
  v18 = v16;
  v19 = v31;
  v37 = 0;
  sub_242C2EC5C();
  v20 = v32;
  v21 = v34;
  sub_242C4A65C();
  v22 = *(v19 + 32);
  v26 = v18;
  v22(v18, v20, v35);
  v36 = 1;
  sub_242C32220(&qword_27ECE9AE8);
  v23 = v30;
  sub_242C4A65C();
  (*(v33 + 8))(v12, v21);
  v24 = v26;
  (*(v28 + 32))(v26 + *(v27 + 20), v6, v23);
  sub_242C2ED54(v24, v29, type metadata accessor for CarCommandsDisambiguationSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_242C2EDBC(v24, type metadata accessor for CarCommandsDisambiguationSnippetModel);
}

uint64_t _s22CarCommandsUIFramework0aB17GaugeSnippetModelV7carNameSSvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v1;
}

uint64_t sub_242C3289C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsDisambiguationSnippetModel.DisambiguationOption.text.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t CarCommandsDisambiguationSnippetModel.DisambiguationOption.iconImageIdentifier.getter()
{
  v0 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  return v2;
}

double sub_242C32A10@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_242C32A78(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0) + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

uint64_t CarCommandsDisambiguationSnippetModel.DisambiguationOption.iconImageIdentifier.setter()
{
  v0 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsDisambiguationSnippetModel.DisambiguationOption.iconImageIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

uint64_t sub_242C32BF4(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  return v3;
}

uint64_t sub_242C32C50@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  v3 = *(a1(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_242C32CBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *a1;
  v8 = a1[1];
  v5 = *(a5(0) + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t sub_242C32D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a3(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  return sub_242C49F2C();
}

uint64_t (*CarCommandsDisambiguationSnippetModel.DisambiguationOption.directInvocationPayloadValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  *(v3 + 32) = sub_242C49F0C();
  return sub_242C35698;
}

void sub_242C32E40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t CarCommandsDisambiguationSnippetModel.DisambiguationOption.init(text:iconImageIdentifier:directInvocationPayloadValue:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  v3 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  sub_242C49EFC();
  sub_242C49EFC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  sub_242C49EFC();
  v5 = *(v2 + 24);
  return sub_242C49EFC();
}

uint64_t CarCommandsDisambiguationSnippetModel.DisambiguationOption.init(text:directInvocationPayloadValue:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  v3 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  sub_242C49EFC();
  sub_242C49EFC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  sub_242C49EFC();
  v5 = *(v2 + 24);
  return sub_242C49EFC();
}

uint64_t sub_242C330CC()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_242C33124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C35548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C33158(uint64_t a1)
{
  v2 = sub_242C333EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C33194(uint64_t a1)
{
  v2 = sub_242C333EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsDisambiguationSnippetModel.DisambiguationOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9AF0, &qword_242C4ADB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C333EC();
  sub_242C4A74C();
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C2EB44();
  sub_242C4A6AC();
  if (!v1)
  {
    v13 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
    v9 = *(v13 + 20);
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
    sub_242C2FF84(&qword_27ECE9A38);
    sub_242C4A6AC();
    v10 = *(v13 + 24);
    v14 = 2;
    sub_242C4A6AC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_242C333EC()
{
  result = qword_27ECE9AF8;
  if (!qword_27ECE9AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9AF8);
  }

  return result;
}

uint64_t CarCommandsDisambiguationSnippetModel.DisambiguationOption.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  v41 = *(v44 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v35 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9B00, &qword_242C4ADC0);
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 20);
  v42 = 0;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99D8, &qword_242C4AD48);
  v40 = v20;
  sub_242C49EFC();
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C333EC();
  v22 = v39;
  sub_242C4A73C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v41 + 8))(&v19[v40], v44);
  }

  else
  {
    v31 = v15;
    v32 = v9;
    v23 = v35;
    v39 = a1;
    LOBYTE(v42) = 0;
    v24 = sub_242C2EC5C();
    v25 = v36;
    sub_242C4A65C();
    v30 = v24;
    v26 = *(v34 + 32);
    v26(v19, v25, v5);
    LOBYTE(v42) = 1;
    sub_242C2FF84(&qword_27ECE9A60);
    sub_242C4A65C();
    v36 = v26;
    (*(v41 + 40))(&v19[v40], v23, v44);
    LOBYTE(v42) = 2;
    v27 = v32;
    v28 = v38;
    sub_242C4A65C();
    (*(v37 + 8))(v14, v28);
    (v36)(&v19[*(v31 + 24)], v27, v5);
    sub_242C2ED54(v19, v33, type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_242C2EDBC(v19, type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption);
  }
}

uint64_t keypath_getTm@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  result = sub_242C49F1C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_242C33DC4()
{
  sub_242C34074(319, &qword_27ECE9B68);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_242C33E68()
{
  sub_242C34074(319, &qword_27ECE9B68);
  if (v0 <= 0x3F)
  {
    sub_242C34074(319, &qword_27ECE9B90);
    if (v1 <= 0x3F)
    {
      sub_242C34194(319, &qword_27ECE9B98, &qword_27ECE99D8, &qword_242C4AD48);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_242C33F74()
{
  sub_242C34074(319, &qword_27ECE9B68);
  if (v0 <= 0x3F)
  {
    sub_242C34194(319, &qword_27ECE9B98, &qword_27ECE99D8, &qword_242C4AD48);
    if (v1 <= 0x3F)
    {
      sub_242C34074(319, &qword_27ECE9BB0);
      if (v2 <= 0x3F)
      {
        sub_242C34074(319, &qword_27ECE9B90);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242C34074(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_242C49F3C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_242C340E8()
{
  sub_242C34074(319, &qword_27ECE9B68);
  if (v0 <= 0x3F)
  {
    sub_242C34194(319, &qword_27ECE9BC8, &qword_27ECE9AA0, &qword_242C4ADA0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242C34194(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_242C49F3C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_89Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_90Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_242C34444()
{
  sub_242C34074(319, &qword_27ECE9B68);
  if (v0 <= 0x3F)
  {
    sub_242C34194(319, &qword_27ECE9B98, &qword_27ECE99D8, &qword_242C4AD48);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for CarCommandsDisambiguationSnippetModel.DisambiguationOption.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarCommandsDisambiguationSnippetModel.DisambiguationOption.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CarCommandsGaugeSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarCommandsGaugeSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CarCommandsToggleSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarCommandsToggleSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_242C34918(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarCommandsToggleSnippetUpdateValue(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_242C34A6C()
{
  result = qword_27ECE9BE0;
  if (!qword_27ECE9BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9BE0);
  }

  return result;
}

unint64_t sub_242C34AC4()
{
  result = qword_27ECE9BE8;
  if (!qword_27ECE9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9BE8);
  }

  return result;
}

unint64_t sub_242C34B1C()
{
  result = qword_27ECE9BF0;
  if (!qword_27ECE9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9BF0);
  }

  return result;
}

unint64_t sub_242C34B74()
{
  result = qword_27ECE9BF8;
  if (!qword_27ECE9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9BF8);
  }

  return result;
}

unint64_t sub_242C34BCC()
{
  result = qword_27ECE9C00;
  if (!qword_27ECE9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C00);
  }

  return result;
}

unint64_t sub_242C34C24()
{
  result = qword_27ECE9C08;
  if (!qword_27ECE9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C08);
  }

  return result;
}

unint64_t sub_242C34C7C()
{
  result = qword_27ECE9C10;
  if (!qword_27ECE9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C10);
  }

  return result;
}

unint64_t sub_242C34CD4()
{
  result = qword_27ECE9C18;
  if (!qword_27ECE9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C18);
  }

  return result;
}

unint64_t sub_242C34D2C()
{
  result = qword_27ECE9C20;
  if (!qword_27ECE9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C20);
  }

  return result;
}

unint64_t sub_242C34D84()
{
  result = qword_27ECE9C28;
  if (!qword_27ECE9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C28);
  }

  return result;
}

unint64_t sub_242C34DDC()
{
  result = qword_27ECE9C30;
  if (!qword_27ECE9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C30);
  }

  return result;
}

unint64_t sub_242C34E34()
{
  result = qword_27ECE9C38;
  if (!qword_27ECE9C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C38);
  }

  return result;
}

unint64_t sub_242C34E8C()
{
  result = qword_27ECE9C40;
  if (!qword_27ECE9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C40);
  }

  return result;
}

unint64_t sub_242C34EE4()
{
  result = qword_27ECE9C48;
  if (!qword_27ECE9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C48);
  }

  return result;
}

unint64_t sub_242C34F3C()
{
  result = qword_27ECE9C50;
  if (!qword_27ECE9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C50);
  }

  return result;
}

unint64_t sub_242C34F94()
{
  result = qword_27ECE9C58;
  if (!qword_27ECE9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C58);
  }

  return result;
}

unint64_t sub_242C34FEC()
{
  result = qword_27ECE9C60;
  if (!qword_27ECE9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C60);
  }

  return result;
}

unint64_t sub_242C35044()
{
  result = qword_27ECE9C68;
  if (!qword_27ECE9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C68);
  }

  return result;
}

uint64_t sub_242C35098(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54656D614E726163 && a2 == 0xEB00000000747865;
  if (v4 || (sub_242C4A6DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5465746174536E6FLL && a2 == 0xEB00000000747865 || (sub_242C4A6DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657461745366666FLL && a2 == 0xEC00000074786554 || (sub_242C4A6DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242C4DCA0 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242C4DCC0 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1850700649 && a2 == 0xE400000000000000 || (sub_242C4A6DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6449707061 && a2 == 0xE500000000000000 || (sub_242C4A6DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000242C4DCE0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_242C4A6DC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_242C35338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E726163 && a2 == 0xE700000000000000;
  if (v4 || (sub_242C4A6DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x547972616D697270 && a2 == 0xEB00000000747865 || (sub_242C4A6DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED00007478655479 || (sub_242C4A6DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242C4DD10 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242C4DD30 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449707061 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_242C4A6DC();

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

uint64_t sub_242C35548(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_242C4A6DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242C4DD70 == a2 || (sub_242C4A6DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242C4DD90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242C4A6DC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double AudibleSignalStatusSnippet.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = v4[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  v6 = v2 + v4[5];
  sub_242C49F1C();
  v7 = v2 + v4[6];
  sub_242C49F1C();
  v8 = v2 + v4[7];
  sub_242C49F1C();
  v9 = v2 + v4[8];
  sub_242C49F1C();
  v10 = v4[10];

  sub_242C49F1C();
  v11 = v4[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  sub_242C4A44C();
  sub_242C2C7A0();
  v12 = sub_242C4A01C();
  v14 = v13;

  result = 9.07234538e223;
  *a1 = xmmword_242C4B7D0;
  *(a1 + 16) = xmmword_242C4B7E0;
  *(a1 + 32) = 129;
  *(a1 + 34) = 1;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = v16;
  *(a1 + 80) = v17;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  *(a1 + 120) = 0xD000000000000045;
  *(a1 + 128) = 0x8000000242C4DDB0;
  *(a1 + 136) = v16;
  *(a1 + 144) = v17;
  *(a1 + 152) = v16;
  *(a1 + 160) = v17;
  *(a1 + 168) = v16;
  *(a1 + 176) = 0;
  *(a1 + 184) = v16;
  *(a1 + 192) = v17;
  *(a1 + 200) = 0;
  *(a1 + 208) = v12;
  *(a1 + 216) = v14;
  return result;
}

uint64_t type metadata accessor for AudibleSignalStatusSnippet()
{
  result = qword_27ECE9C70;
  if (!qword_27ECE9C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C35988(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_242C49F9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9C80, &qword_242C4B870);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  if ((v19 & 0x80000000) == 0)
  {
    v20 = (a3 & 1) == 0;
    if (a3)
    {
      v21 = *(a1 + 8);
    }

    else
    {
      v21 = *(a1 + 24);
    }

    if (v20)
    {
      v22 = *(a1 + 16);
    }

    else
    {
      v22 = *a1;
    }

    sub_242C4A23C();
    v23 = *MEMORY[0x277CE1020];
    v24 = sub_242C4A26C();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v14, v23, v24);
    (*(v25 + 56))(v14, 0, 1, v24);
    v26 = sub_242C4A25C();

    (*(v7 + 8))(a2, v6);
    goto LABEL_24;
  }

  if (a3)
  {
    v27 = *(a1 + 8);
  }

  else
  {
    v27 = *(a1 + 24);
  }

  if ((a3 & 1) == 0)
  {
    v15 = *(a1 + 16);
  }

  v42 = v15;

  (*(v7 + 104))(v10, *MEMORY[0x277CDF3D0], v6);
  v45 = a2;
  v28 = sub_242C49F8C();
  v29 = *(v7 + 8);
  v43 = v6;
  v44 = v29;
  v29(v10, v6);
  if (v28)
  {
    v30 = 0x746867696C5FLL;
  }

  else
  {
    v30 = 0x6B7261645FLL;
  }

  if (v28)
  {
    v31 = 0xE600000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  v32 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v33 = sub_242C4A46C();
  v34 = [v32 initWithPath_];

  if ((v19 & 1) == 0 || (a3 & 1) == 0)
  {
    v48 = v30;
    v49 = v31;
    v46 = v42;
    v47 = v27;
    v46 = sub_242C4A4CC();
    v47 = v36;
    sub_242C4A49C();

    v37 = v34;
    sub_242C4A28C();
    v38 = *MEMORY[0x277CE1020];
    v39 = sub_242C4A26C();
    v40 = *(v39 - 8);
    (*(v40 + 104))(v14, v38, v39);
    (*(v40 + 56))(v14, 0, 1, v39);
    v26 = sub_242C4A25C();

    v44(v45, v43);
LABEL_24:
    sub_242C35E1C(v14);
    goto LABEL_25;
  }

  v48 = v30;
  v49 = v31;
  v46 = v42;
  v47 = v27;
  v46 = sub_242C4A4CC();
  v47 = v35;
  sub_242C4A49C();

  v26 = sub_242C4A28C();
  v44(v45, v43);
LABEL_25:
  sub_242C35E84(a1);
  return v26;
}

uint64_t sub_242C35E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9C80, &qword_242C4B870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_242C35ED4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_242C35F24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t CarNameDisambiguationSnippet.body.getter@<X0>(void *a1@<X8>)
{
  v38 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v38);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  v10 = v40;
  v34 = v41;
  v11 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  sub_242C49F1C();
  v12 = v40;
  v13 = *(v40 + 16);
  if (v13)
  {
    v32 = v10;
    v33 = a1;
    v39 = MEMORY[0x277D84F90];
    sub_242C36348(0, v13, 0);
    v14 = v39;
    v15 = *(v2 + 80);
    v31[1] = v12;
    v16 = v12 + ((v15 + 32) & ~v15);
    v35 = *(v2 + 72);
    do
    {
      sub_242C36368(v16, v5);
      sub_242C49F1C();
      v17 = v40;
      v18 = v41;
      v19 = v37;
      v20 = *(v37 + 20);
      v21 = sub_242C4A35C();
      (*(*(v21 - 8) + 56))(&v9[v20], 1, 1, v21);
      v22 = &v5[*(v38 + 24)];
      sub_242C49F1C();
      sub_242C363CC(v5);
      v23 = v40;
      v24 = v41;
      *v9 = v17;
      *(v9 + 1) = v18;
      v25 = &v9[*(v19 + 24)];
      *v25 = v23;
      *(v25 + 1) = v24;
      v39 = v14;
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_242C36348(v26 > 1, v27 + 1, 1);
        v14 = v39;
      }

      *(v14 + 16) = v27 + 1;
      sub_242C36428(v9, v14 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v27, type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption);
      v16 += v35;
      --v13;
    }

    while (v13);

    v10 = v32;
    a1 = v33;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  sub_242C4A44C();
  sub_242C2C7A0();
  result = sub_242C4A01C();
  v29 = v34;
  *a1 = v10;
  a1[1] = v29;
  a1[2] = v14;
  a1[3] = 0xD00000000000003FLL;
  a1[4] = 0x8000000242C4DE60;
  a1[5] = result;
  a1[6] = v30;
  return result;
}

size_t sub_242C36348(size_t a1, int64_t a2, char a3)
{
  result = sub_242C386BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_242C36368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C363CC(uint64_t a1)
{
  v2 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242C36428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for CarNameDisambiguationSnippet()
{
  result = qword_27ECE9C88;
  if (!qword_27ECE9C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C36520()
{
  result = type metadata accessor for CarCommandsDisambiguationSnippetModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_242C3658C()
{
  result = qword_27ECE9C98;
  if (!qword_27ECE9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9C98);
  }

  return result;
}

double LockStatusSnippet.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = v4[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  v6 = v2 + v4[5];
  sub_242C49F1C();
  v7 = v2 + v4[6];
  sub_242C49F1C();
  v8 = v2 + v4[7];
  sub_242C49F1C();
  v9 = v2 + v4[8];
  sub_242C49F1C();
  v10 = v4[10];

  sub_242C49F1C();
  v11 = v4[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  sub_242C4A44C();
  sub_242C2C7A0();
  v12 = sub_242C4A01C();
  v14 = v13;

  *&result = 1801678700;
  *a1 = xmmword_242C4B9B0;
  *(a1 + 16) = xmmword_242C4B9C0;
  *(a1 + 32) = 128;
  *(a1 + 34) = 1;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = v16;
  *(a1 + 80) = v17;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  *(a1 + 120) = 0xD00000000000003CLL;
  *(a1 + 128) = 0x8000000242C4DEA0;
  *(a1 + 136) = v16;
  *(a1 + 144) = v17;
  *(a1 + 152) = v16;
  *(a1 + 160) = v17;
  *(a1 + 168) = v16;
  *(a1 + 176) = 0;
  *(a1 + 184) = v16;
  *(a1 + 192) = v17;
  *(a1 + 200) = 0;
  *(a1 + 208) = v12;
  *(a1 + 216) = v14;
  return result;
}

uint64_t type metadata accessor for LockStatusSnippet()
{
  result = qword_27ECE9CA0;
  if (!qword_27ECE9CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ClimateStatusSnippet.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = v4[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  v6 = v2 + v4[5];
  sub_242C49F1C();
  v7 = v2 + v4[6];
  sub_242C49F1C();
  v8 = v2 + v4[7];
  sub_242C49F1C();
  v9 = v2 + v4[8];
  sub_242C49F1C();
  v10 = v4[10];

  sub_242C49F1C();
  v11 = v4[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  sub_242C4A44C();
  sub_242C2C7A0();
  v12 = sub_242C4A01C();
  v14 = v13;

  result = 3.51146621e151;
  *a1 = xmmword_242C4BA50;
  *(a1 + 16) = xmmword_242C4BA60;
  *(a1 + 32) = 128;
  *(a1 + 34) = 1;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = v16;
  *(a1 + 80) = v17;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  *(a1 + 120) = 0xD00000000000003FLL;
  *(a1 + 128) = 0x8000000242C4DEE0;
  *(a1 + 136) = v16;
  *(a1 + 144) = v17;
  *(a1 + 152) = v16;
  *(a1 + 160) = v17;
  *(a1 + 168) = v16;
  *(a1 + 176) = 0;
  *(a1 + 184) = v16;
  *(a1 + 192) = v17;
  *(a1 + 200) = 0;
  *(a1 + 208) = v12;
  *(a1 + 216) = v14;
  return result;
}

uint64_t type metadata accessor for ClimateStatusSnippet()
{
  result = qword_27ECE9CB0;
  if (!qword_27ECE9CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C36B60()
{
  sub_242C3A4B0();
  result = sub_242C4A50C();
  qword_27ECE9CC0 = result;
  return result;
}

uint64_t sub_242C36BCC()
{
  v0 = sub_242C49F6C();
  __swift_allocate_value_buffer(v0, qword_27ECE9CC8);
  __swift_project_value_buffer(v0, qword_27ECE9CC8);
  if (qword_27ECE9980 != -1)
  {
    swift_once();
  }

  v1 = qword_27ECE9CC0;
  return sub_242C49F7C();
}

uint64_t sub_242C36C6C(uint64_t a1)
{
  if (qword_27ECE9990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_27ECE9CE0;
  if (!*(off_27ECE9CE0 + 2) || (v3 = sub_242C389A0(a1), (v4 & 1) == 0))
  {
    swift_endAccess();
    if (a1)
    {
      v8 = sub_242C38008(0, 1, 1, MEMORY[0x277D84F90]);
      v10 = *(v8 + 2);
      v9 = *(v8 + 3);
      if (v10 >= v9 >> 1)
      {
        v8 = sub_242C38008((v9 > 1), v10 + 1, 1, v8);
      }

      *(v8 + 2) = v10 + 1;
      v11 = &v8[16 * v10];
      *(v11 + 4) = 0x657372617023;
      *(v11 + 5) = 0xE600000000000000;
      if ((a1 & 2) == 0)
      {
LABEL_17:
        if ((a1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
          }

          v16 = *(v8 + 2);
          v15 = *(v8 + 3);
          if (v16 >= v15 >> 1)
          {
            v8 = sub_242C38008((v15 > 1), v16 + 1, 1, v8);
          }

          *(v8 + 2) = v16 + 1;
          v17 = &v8[16 * v16];
          strcpy(v17 + 32, "#appResolution");
          v17[47] = -18;
          if ((a1 & 8) == 0)
          {
LABEL_19:
            if ((a1 & 0x10) == 0)
            {
              goto LABEL_36;
            }

            goto LABEL_31;
          }
        }

        else if ((a1 & 8) == 0)
        {
          goto LABEL_19;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
        }

        v19 = *(v8 + 2);
        v18 = *(v8 + 3);
        if (v19 >= v18 >> 1)
        {
          v8 = sub_242C38008((v18 > 1), v19 + 1, 1, v8);
        }

        *(v8 + 2) = v19 + 1;
        v20 = &v8[16 * v19];
        *(v20 + 4) = 0x747865746E6F6323;
        *(v20 + 5) = 0xE800000000000000;
        if ((a1 & 0x10) == 0)
        {
LABEL_36:
          if ((a1 & 0x20) != 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
            }

            v25 = *(v8 + 2);
            v24 = *(v8 + 3);
            if (v25 >= v24 >> 1)
            {
              v8 = sub_242C38008((v24 > 1), v25 + 1, 1, v8);
            }

            *(v8 + 2) = v25 + 1;
            v26 = &v8[16 * v25];
            strcpy(v26 + 32, "#getLockStatus");
            v26[47] = -18;
            if ((a1 & 0x40) == 0)
            {
LABEL_38:
              if ((a1 & 0x80) == 0)
              {
                goto LABEL_39;
              }

              goto LABEL_51;
            }
          }

          else if ((a1 & 0x40) == 0)
          {
            goto LABEL_38;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
          }

          v28 = *(v8 + 2);
          v27 = *(v8 + 3);
          if (v28 >= v27 >> 1)
          {
            v8 = sub_242C38008((v27 > 1), v28 + 1, 1, v8);
          }

          *(v8 + 2) = v28 + 1;
          v29 = &v8[16 * v28];
          strcpy(v29 + 32, "#setLockStatus");
          v29[47] = -18;
          if ((a1 & 0x80) == 0)
          {
LABEL_39:
            if ((a1 & 0x100) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_56;
          }

LABEL_51:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
          }

          v31 = *(v8 + 2);
          v30 = *(v8 + 3);
          if (v31 >= v30 >> 1)
          {
            v8 = sub_242C38008((v30 > 1), v31 + 1, 1, v8);
          }

          *(v8 + 2) = v31 + 1;
          v32 = &v8[16 * v31];
          *(v32 + 4) = 0x7461766974636123;
          *(v32 + 5) = 0xEF6C616E67695365;
          if ((a1 & 0x100) == 0)
          {
LABEL_61:
            if ((a1 & 0x400) != 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
              }

              v37 = *(v8 + 2);
              v36 = *(v8 + 3);
              if (v37 >= v36 >> 1)
              {
                v8 = sub_242C38008((v36 > 1), v37 + 1, 1, v8);
              }

              *(v8 + 2) = v37 + 1;
              v38 = &v8[16 * v37];
              *(v38 + 4) = 0xD000000000000016;
              *(v38 + 5) = 0x8000000242C4E080;
              if ((a1 & 0x800) == 0)
              {
LABEL_63:
                if ((a1 & 0x4000) == 0)
                {
                  goto LABEL_64;
                }

                goto LABEL_84;
              }
            }

            else if ((a1 & 0x800) == 0)
            {
              goto LABEL_63;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
            }

            v40 = *(v8 + 2);
            v39 = *(v8 + 3);
            if (v40 >= v39 >> 1)
            {
              v8 = sub_242C38008((v39 > 1), v40 + 1, 1, v8);
            }

            *(v8 + 2) = v40 + 1;
            v41 = &v8[16 * v40];
            *(v41 + 4) = 0xD000000000000010;
            *(v41 + 5) = 0x8000000242C4E060;
            if ((a1 & 0x4000) == 0)
            {
LABEL_64:
              if ((a1 & 0x8000) == 0)
              {
                goto LABEL_65;
              }

              goto LABEL_89;
            }

LABEL_84:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
            }

            v43 = *(v8 + 2);
            v42 = *(v8 + 3);
            if (v43 >= v42 >> 1)
            {
              v8 = sub_242C38008((v42 > 1), v43 + 1, 1, v8);
            }

            *(v8 + 2) = v43 + 1;
            v44 = &v8[16 * v43];
            *(v44 + 4) = 0xD000000000000011;
            *(v44 + 5) = 0x8000000242C4E040;
            if ((a1 & 0x8000) == 0)
            {
LABEL_65:
              if ((a1 & 0x10000) == 0)
              {
                goto LABEL_66;
              }

              goto LABEL_94;
            }

LABEL_89:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
            }

            v46 = *(v8 + 2);
            v45 = *(v8 + 3);
            if (v46 >= v45 >> 1)
            {
              v8 = sub_242C38008((v45 > 1), v46 + 1, 1, v8);
            }

            *(v8 + 2) = v46 + 1;
            v47 = &v8[16 * v46];
            *(v47 + 4) = 0xD00000000000001ALL;
            *(v47 + 5) = 0x8000000242C4E020;
            if ((a1 & 0x10000) == 0)
            {
LABEL_66:
              if ((a1 & 0x20000) == 0)
              {
                goto LABEL_67;
              }

              goto LABEL_99;
            }

LABEL_94:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
            }

            v49 = *(v8 + 2);
            v48 = *(v8 + 3);
            if (v49 >= v48 >> 1)
            {
              v8 = sub_242C38008((v48 > 1), v49 + 1, 1, v8);
            }

            *(v8 + 2) = v49 + 1;
            v50 = &v8[16 * v49];
            *(v50 + 4) = 0x6E75725474656723;
            *(v50 + 5) = 0xEF7375746174536BLL;
            if ((a1 & 0x20000) == 0)
            {
LABEL_67:
              if ((a1 & 0x40000) == 0)
              {
                goto LABEL_68;
              }

              goto LABEL_104;
            }

LABEL_99:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
            }

            v52 = *(v8 + 2);
            v51 = *(v8 + 3);
            if (v52 >= v51 >> 1)
            {
              v8 = sub_242C38008((v51 > 1), v52 + 1, 1, v8);
            }

            *(v8 + 2) = v52 + 1;
            v53 = &v8[16 * v52];
            *(v53 + 4) = 0xD00000000000001CLL;
            *(v53 + 5) = 0x8000000242C4E000;
            if ((a1 & 0x40000) == 0)
            {
LABEL_68:
              if ((a1 & 0x100000) == 0)
              {
                goto LABEL_69;
              }

              goto LABEL_109;
            }

LABEL_104:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
            }

            v55 = *(v8 + 2);
            v54 = *(v8 + 3);
            if (v55 >= v54 >> 1)
            {
              v8 = sub_242C38008((v54 > 1), v55 + 1, 1, v8);
            }

            *(v8 + 2) = v55 + 1;
            v56 = &v8[16 * v55];
            *(v56 + 4) = 0xD000000000000011;
            *(v56 + 5) = 0x8000000242C4DFE0;
            if ((a1 & 0x100000) == 0)
            {
LABEL_69:
              if ((a1 & 0x80000) == 0)
              {
                goto LABEL_70;
              }

              goto LABEL_114;
            }

LABEL_109:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
            }

            v58 = *(v8 + 2);
            v57 = *(v8 + 3);
            if (v58 >= v57 >> 1)
            {
              v8 = sub_242C38008((v57 > 1), v58 + 1, 1, v8);
            }

            *(v8 + 2) = v58 + 1;
            v59 = &v8[16 * v58];
            strcpy(v59 + 32, "#openCarPlay");
            v59[45] = 0;
            *(v59 + 23) = -5120;
            if ((a1 & 0x80000) == 0)
            {
LABEL_70:
              if ((a1 & 0x200000) == 0)
              {
                goto LABEL_71;
              }

              goto LABEL_119;
            }

LABEL_114:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
            }

            v61 = *(v8 + 2);
            v60 = *(v8 + 3);
            if (v61 >= v60 >> 1)
            {
              v8 = sub_242C38008((v60 > 1), v61 + 1, 1, v8);
            }

            *(v8 + 2) = v61 + 1;
            v62 = &v8[16 * v61];
            *(v62 + 4) = 0xD000000000000019;
            *(v62 + 5) = 0x8000000242C4DFC0;
            if ((a1 & 0x200000) == 0)
            {
LABEL_71:
              if ((a1 & 0x400000) == 0)
              {
                goto LABEL_72;
              }

              goto LABEL_124;
            }

LABEL_119:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
            }

            v64 = *(v8 + 2);
            v63 = *(v8 + 3);
            if (v64 >= v63 >> 1)
            {
              v8 = sub_242C38008((v63 > 1), v64 + 1, 1, v8);
            }

            *(v8 + 2) = v64 + 1;
            v65 = &v8[16 * v64];
            *(v65 + 4) = 0xD000000000000010;
            *(v65 + 5) = 0x8000000242C4DFA0;
            if ((a1 & 0x400000) == 0)
            {
LABEL_72:
              if ((a1 & 0x4000000) == 0)
              {
                goto LABEL_134;
              }

              goto LABEL_129;
            }

LABEL_124:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
            }

            v67 = *(v8 + 2);
            v66 = *(v8 + 3);
            if (v67 >= v66 >> 1)
            {
              v8 = sub_242C38008((v66 > 1), v67 + 1, 1, v8);
            }

            *(v8 + 2) = v67 + 1;
            v68 = &v8[16 * v67];
            *(v68 + 4) = 0xD000000000000014;
            *(v68 + 5) = 0x8000000242C4DF80;
            if ((a1 & 0x4000000) == 0)
            {
LABEL_134:
              if ((a1 & 0x8000000) != 0)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
                }

                v73 = *(v8 + 2);
                v72 = *(v8 + 3);
                if (v73 >= v72 >> 1)
                {
                  v8 = sub_242C38008((v72 > 1), v73 + 1, 1, v8);
                }

                *(v8 + 2) = v73 + 1;
                v74 = &v8[16 * v73];
                strcpy(v74 + 32, "#setAutoMode");
                v74[45] = 0;
                *(v74 + 23) = -5120;
                if ((a1 & 0x20000000) == 0)
                {
LABEL_136:
                  if ((a1 & 0x40000000) == 0)
                  {
                    goto LABEL_137;
                  }

                  goto LABEL_152;
                }
              }

              else if ((a1 & 0x20000000) == 0)
              {
                goto LABEL_136;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
              }

              v76 = *(v8 + 2);
              v75 = *(v8 + 3);
              if (v76 >= v75 >> 1)
              {
                v8 = sub_242C38008((v75 > 1), v76 + 1, 1, v8);
              }

              *(v8 + 2) = v76 + 1;
              v77 = &v8[16 * v76];
              *(v77 + 4) = 0x6D696C4374657323;
              *(v77 + 5) = 0xEF636E7953657461;
              if ((a1 & 0x40000000) == 0)
              {
LABEL_137:
                if ((a1 & 0x10000000) == 0)
                {
                  goto LABEL_138;
                }

                goto LABEL_157;
              }

LABEL_152:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
              }

              v79 = *(v8 + 2);
              v78 = *(v8 + 3);
              if (v79 >= v78 >> 1)
              {
                v8 = sub_242C38008((v78 > 1), v79 + 1, 1, v8);
              }

              *(v8 + 2) = v79 + 1;
              v80 = &v8[16 * v79];
              strcpy(v80 + 32, "#setVentMode");
              v80[45] = 0;
              *(v80 + 23) = -5120;
              if ((a1 & 0x10000000) == 0)
              {
LABEL_138:
                if ((a1 & 0x100000000) == 0)
                {
                  goto LABEL_139;
                }

                goto LABEL_162;
              }

LABEL_157:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
              }

              v82 = *(v8 + 2);
              v81 = *(v8 + 3);
              if (v82 >= v81 >> 1)
              {
                v8 = sub_242C38008((v81 > 1), v82 + 1, 1, v8);
              }

              *(v8 + 2) = v82 + 1;
              v83 = &v8[16 * v82];
              *(v83 + 4) = 0xD000000000000012;
              *(v83 + 5) = 0x8000000242C4DF60;
              if ((a1 & 0x100000000) == 0)
              {
LABEL_139:
                if ((a1 & 0x200000000) == 0)
                {
                  goto LABEL_140;
                }

                goto LABEL_167;
              }

LABEL_162:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
              }

              v85 = *(v8 + 2);
              v84 = *(v8 + 3);
              if (v85 >= v84 >> 1)
              {
                v8 = sub_242C38008((v84 > 1), v85 + 1, 1, v8);
              }

              *(v8 + 2) = v85 + 1;
              v86 = &v8[16 * v85];
              *(v86 + 4) = 0xD000000000000010;
              *(v86 + 5) = 0x8000000242C4DF40;
              if ((a1 & 0x200000000) == 0)
              {
LABEL_140:
                if (!*(v8 + 2))
                {

                  return 0;
                }

LABEL_172:
                v95 = v8;

                sub_242C394D0(&v95);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9CF8, &qword_242C4BAF8);
                sub_242C3A3E8();
                v6 = sub_242C4A45C();
                v91 = v90;

                swift_beginAccess();

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v94 = off_27ECE9CE0;
                off_27ECE9CE0 = 0x8000000000000000;
                sub_242C3901C(v6, v91, a1, isUniquelyReferenced_nonNull_native);
                off_27ECE9CE0 = v94;
                swift_endAccess();
                return v6;
              }

LABEL_167:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
              }

              v88 = *(v8 + 2);
              v87 = *(v8 + 3);
              if (v88 >= v87 >> 1)
              {
                v8 = sub_242C38008((v87 > 1), v88 + 1, 1, v8);
              }

              *(v8 + 2) = v88 + 1;
              v89 = &v8[16 * v88];
              *(v89 + 4) = 0xD000000000000019;
              *(v89 + 5) = 0x8000000242C4DF20;
              goto LABEL_172;
            }

LABEL_129:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
            }

            v70 = *(v8 + 2);
            v69 = *(v8 + 3);
            if (v70 >= v69 >> 1)
            {
              v8 = sub_242C38008((v69 > 1), v70 + 1, 1, v8);
            }

            *(v8 + 2) = v70 + 1;
            v71 = &v8[16 * v70];
            *(v71 + 4) = 0x536E614674657323;
            *(v71 + 5) = 0xEF73676E69747465;
            goto LABEL_134;
          }

LABEL_56:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
          }

          v34 = *(v8 + 2);
          v33 = *(v8 + 3);
          if (v34 >= v33 >> 1)
          {
            v8 = sub_242C38008((v33 > 1), v34 + 1, 1, v8);
          }

          *(v8 + 2) = v34 + 1;
          v35 = &v8[16 * v34];
          *(v35 + 4) = 1667462179;
          *(v35 + 5) = 0xE400000000000000;
          goto LABEL_61;
        }

LABEL_31:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
        }

        v22 = *(v8 + 2);
        v21 = *(v8 + 3);
        if (v22 >= v21 >> 1)
        {
          v8 = sub_242C38008((v21 > 1), v22 + 1, 1, v8);
        }

        *(v8 + 2) = v22 + 1;
        v23 = &v8[16 * v22];
        strcpy(v23 + 32, "#getPowerLevel");
        v23[47] = -18;
        goto LABEL_36;
      }
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_242C38008(0, *(v8 + 2) + 1, 1, v8);
    }

    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    if (v13 >= v12 >> 1)
    {
      v8 = sub_242C38008((v12 > 1), v13 + 1, 1, v8);
    }

    *(v8 + 2) = v13 + 1;
    v14 = &v8[16 * v13];
    *(v14 + 4) = 0x776F6C6623;
    *(v14 + 5) = 0xE500000000000000;
    goto LABEL_17;
  }

  v5 = (v2[7] + 16 * v3);
  v6 = *v5;
  v7 = v5[1];
  swift_endAccess();

  return v6;
}

uint64_t sub_242C37C64()
{
  v1 = *v0;
  sub_242C4A6FC();
  MEMORY[0x245D24430](v1);
  return sub_242C4A72C();
}

uint64_t sub_242C37CD8()
{
  v1 = *v0;
  sub_242C4A6FC();
  MEMORY[0x245D24430](v1);
  return sub_242C4A72C();
}

BOOL sub_242C37D60(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_242C37D90@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_242C37DBC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_242C37E94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_242C37EC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_242C39FBC(a1);

  *a2 = v3;
  return result;
}

char *sub_242C37F04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D18, &qword_242C4BB10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_242C38008(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D08, &qword_242C4BB00);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_242C38114(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242C381E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_242C3A388(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_242C381E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_242C382EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_242C4A5BC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_242C382EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_242C38338(a1, a2);
  sub_242C38468(&unk_285574FF8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_242C38338(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_242C38554(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_242C4A5BC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_242C4A4BC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242C38554(v10, 0);
        result = sub_242C4A57C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_242C38468(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_242C385C8(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_242C38554(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9CF0, &qword_242C4BAF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_242C385C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9CF0, &qword_242C4BAF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

size_t sub_242C386BC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D30, &unk_242C4BB20);
  v10 = *(type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption() - 8);
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
  v15 = *(type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption() - 8);
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

char *sub_242C38894(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D08, &qword_242C4BB00);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_242C389A0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_242C4A6FC();
  MEMORY[0x245D24430](a1);
  v4 = sub_242C4A72C();

  return sub_242C3917C(a1, v4);
}

unint64_t sub_242C38A0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_242C4A54C();

  return sub_242C391E8(a1, v5);
}

unint64_t sub_242C38A50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_242C4A6FC();
  sub_242C4A48C();
  v6 = sub_242C4A72C();

  return sub_242C392B0(a1, a2, v6);
}

uint64_t sub_242C38AC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D10, &qword_242C4BB08);
  v37 = a2;
  result = sub_242C4A5FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_242C4A6FC();
      MEMORY[0x245D24430](v22);
      result = sub_242C4A72C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_242C38D64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D28, &qword_242C4BB18);
  v36 = a2;
  result = sub_242C4A5FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_242C3A5AC(v25, v37);
      }

      else
      {
        sub_242C3A388(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_242C4A6FC();
      sub_242C4A48C();
      result = sub_242C4A72C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_242C3A5AC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_242C3901C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_242C389A0(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_242C38AC8(v16, a4 & 1);
      v20 = *v5;
      result = sub_242C389A0(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_242C4A6EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_242C39368();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

unint64_t sub_242C3917C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_242C391E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_242C3A4FC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D24270](v9, a1);
      sub_242C3A558(v9);
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

unint64_t sub_242C392B0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_242C4A6DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_242C39368()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D10, &qword_242C4BB08);
  v2 = *v0;
  v3 = sub_242C4A5EC();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

uint64_t sub_242C394D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_242C39FA8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_242C3953C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_242C3953C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_242C4A6BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_242C4A4DC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_242C39704(v7, v8, a1, v4);
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
    return sub_242C39634(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_242C39634(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_242C4A6DC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242C39704(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_242C39F94(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_242C39CE0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_242C4A6DC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_242C4A6DC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
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
      result = sub_242C37F04(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_242C37F04((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_242C39CE0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_242C39F94(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_242C39F08(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_242C4A6DC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
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

uint64_t sub_242C39CE0(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_242C4A6DC() & 1) != 0)
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
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_242C4A6DC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_242C39F08(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_242C39F94(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_242C39FBC(uint64_t a1)
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

void sub_242C39FF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (qword_27ECE9988 != -1)
  {
    swift_once();
  }

  v15 = sub_242C49F6C();
  __swift_project_value_buffer(v15, qword_27ECE9CC8);
  v16 = sub_242C4A4EC();
  v33 = a2;
  v34 = a3;
  v31 = 47;
  v32 = 0xE100000000000000;
  sub_242C3A334();
  v17 = (sub_242C4A52C() + 16);
  if (*v17)
  {
    v18 = &v17[2 * *v17];
    v20 = *v18;
    v19 = v18[1];

    MEMORY[0x245D241C0](32, 0xE100000000000000);
    MEMORY[0x245D241C0](a4, a5);
    a4 = v20;
    a5 = v19;
  }

  else
  {
  }

  v33 = a4;
  v34 = a5;
  v31 = 58;
  v32 = 0xE100000000000000;
  v21 = sub_242C4A6CC();
  MEMORY[0x245D241C0](v21);

  MEMORY[0x245D241C0](58, 0xE100000000000000);

  v22 = sub_242C36C6C(a1);
  if (v23)
  {
    v31 = 32;
    v32 = 0xE100000000000000;
    MEMORY[0x245D241C0](v22);

    MEMORY[0x245D241C0](32, 0xE100000000000000);
  }

  if (a8)
  {
    v24 = HIBYTE(a8) & 0xF;
    if ((a8 & 0x2000000000000000) == 0)
    {
      v24 = a7 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v31 = 32;
      v32 = 0xE100000000000000;
      MEMORY[0x245D241C0](a7, a8);
      MEMORY[0x245D241C0](32, 0xE100000000000000);
    }
  }

  v26 = v33;
  v25 = v34;

  v27 = sub_242C49F5C();

  if (os_log_type_enabled(v27, v16))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v28 = 136315138;
    v30 = sub_242C38114(v26, v25, &v31);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_242C29000, v27, v16, "%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x245D248B0](v29, -1, -1);
    MEMORY[0x245D248B0](v28, -1, -1);
  }

  else
  {
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_242C3A334()
{
  result = qword_27ECE9CE8;
  if (!qword_27ECE9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9CE8);
  }

  return result;
}

uint64_t sub_242C3A388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_242C3A3E8()
{
  result = qword_27ECE9D00;
  if (!qword_27ECE9D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9CF8, &qword_242C4BAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D00);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_242C3A4B0()
{
  result = qword_27ECE9D20;
  if (!qword_27ECE9D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECE9D20);
  }

  return result;
}

_OWORD *sub_242C3A5AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_242C3A5DC()
{
  result = qword_27ECE9D38;
  if (!qword_27ECE9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D38);
  }

  return result;
}

unint64_t sub_242C3A634()
{
  result = qword_27ECE9D40;
  if (!qword_27ECE9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D40);
  }

  return result;
}

unint64_t sub_242C3A68C()
{
  result = qword_27ECE9D48;
  if (!qword_27ECE9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D48);
  }

  return result;
}

unint64_t sub_242C3A6E4()
{
  result = qword_27ECE9D50;
  if (!qword_27ECE9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D50);
  }

  return result;
}

uint64_t sub_242C3A740@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_242C4A0EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E68, &qword_242C4C3A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_242C3BADC(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_242C49F9C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_242C4A4FC();
    v16 = sub_242C4A11C();
    sub_242C49F4C();

    sub_242C4A0DC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_242C3A928(uint64_t (*a1)(void), uint64_t (*a2)(void *))
{
  v5 = sub_242C49F9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242C3A740(v9);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277CDF3D0])
  {
    return a1();
  }

  if (v10 == *MEMORY[0x277CDF3C0])
  {
    v12 = type metadata accessor for CarCommandsToggleButton();
    v13 = (v2 + *(v12 + 20));
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v13) = *(v13 + 16);
    v20 = v14;
    v21 = v15;
    v22 = v13;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9DF8, &qword_242C4BD88);
    v17 = MEMORY[0x245D24010]((&v19 + 7), v16);
    if (HIBYTE(v19) == 1 && *(v2 + *(v12 + 28) + 34) == 1)
    {
      return a1();
    }

    return a2(v17);
  }

  else
  {
    v18 = sub_242C4A20C();
    (*(v6 + 8))(v9, v5);
    return v18;
  }
}

uint64_t CarCommandsToggleButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D58, &qword_242C4BD30);
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D60, &qword_242C4BD38);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = type metadata accessor for CarCommandsToggleButton();
  v13 = (v1 + v12[6]);
  v14 = *v13;
  v15 = v13[1];
  v39 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D68, &qword_242C4BD40);
  sub_242C3B134();
  sub_242C4A2DC();
  v16 = (v2 + v12[5]);
  v18 = *v16;
  v17 = v16[1];
  v19 = *(v16 + 16);
  v41 = *v16;
  v42 = v17;
  v43 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9DF8, &qword_242C4BD88);
  MEMORY[0x245D24010](&v40);
  if (v40)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.7;
  }

  (*(v36 + 32))(v11, v6, v37);
  *&v11[*(v8 + 44)] = v21;
  v22 = *(v2 + v12[7] + 33);
  v41 = v18;
  v42 = v17;
  v43 = v19;
  MEMORY[0x245D24010](&v40, v20);
  if (v40 == 1)
  {
    v23 = &byte_285575040;
    v24 = qword_285575030;
    do
    {
      v25 = v24 == 0;
      if (!v24)
      {
        break;
      }

      v26 = *v23++;
      --v24;
    }

    while (v26 != v22);
  }

  else
  {
    v27 = &byte_285575068;
    v28 = qword_285575058;
    do
    {
      v25 = v28 == 0;
      if (!v28)
      {
        break;
      }

      v29 = *v27++;
      --v28;
    }

    while (v29 != v22);
  }

  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v25;
  v32 = v38;
  sub_242C3B55C(v11, v38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E00, &qword_242C4BDC0);
  v34 = (v32 + *(result + 36));
  *v34 = KeyPath;
  v34[1] = sub_242C3B544;
  v34[2] = v31;
  return result;
}

uint64_t type metadata accessor for CarCommandsToggleButton()
{
  result = qword_27ECE9E18;
  if (!qword_27ECE9E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_242C3AE1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_242C4A24C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_242C49F9C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CarCommandsToggleButton();
  v14 = a1 + *(v13 + 28);
  v29 = *(v14 + 32);
  v15 = *(v14 + 16);
  v28[0] = *v14;
  v28[1] = v15;
  sub_242C3BA80(v28, &v32);
  sub_242C3A740(v12);
  v16 = (a1 + *(v13 + 20));
  v17 = *v16;
  v18 = v16[1];
  LOBYTE(v16) = *(v16 + 16);
  *&v32 = v17;
  *(&v32 + 1) = v18;
  LOBYTE(v33) = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9DF8, &qword_242C4BD88);
  MEMORY[0x245D24010](v30, v19);
  sub_242C35988(v28, v12, v30[0]);
  v20 = sub_242C3A928(MEMORY[0x277CE0F10], MEMORY[0x277CE0F30]);
  v21 = sub_242C3A928(MEMORY[0x277CE0F30], MEMORY[0x277CE0F50]);
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v22 = sub_242C4A27C();
  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();

  sub_242C4A32C();
  sub_242C49FEC();
  v27[8] = 1;
  sub_242C4A32C();
  sub_242C49FEC();
  LOBYTE(v8) = sub_242C4A12C();

  v24 = v33;
  *(a2 + 40) = v32;
  *(a2 + 56) = v24;
  *(a2 + 72) = v34;
  v25 = v30[1];
  *(a2 + 88) = v30[0];
  *a2 = v22;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v20;
  *(a2 + 104) = v25;
  result = *&v31;
  *(a2 + 120) = v31;
  *(a2 + 136) = v21;
  *(a2 + 144) = v8;
  *(a2 + 145) = 256;
  return result;
}

unint64_t sub_242C3B134()
{
  result = qword_27ECE9D70;
  if (!qword_27ECE9D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9D68, &qword_242C4BD40);
    sub_242C3B1EC();
    sub_242C3B974(&qword_27ECE9DE8, &qword_27ECE9DF0, &qword_242C4BD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D70);
  }

  return result;
}

unint64_t sub_242C3B1EC()
{
  result = qword_27ECE9D78;
  if (!qword_27ECE9D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9D80, &qword_242C4BD48);
    sub_242C3B300(&qword_27ECE9D88, &qword_27ECE9D90, &qword_242C4BD50, sub_242C3B2D0);
    sub_242C3B974(&qword_27ECE9DD8, &qword_27ECE9DE0, &qword_242C4BD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9D78);
  }

  return result;
}

uint64_t sub_242C3B300(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C3B384()
{
  result = qword_27ECE9DA8;
  if (!qword_27ECE9DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9DB0, &qword_242C4BD60);
    sub_242C3B43C();
    sub_242C3B974(&qword_27ECE9DC8, &qword_27ECE9DD0, &qword_242C4BD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9DA8);
  }

  return result;
}

unint64_t sub_242C3B43C()
{
  result = qword_27ECE9DB8;
  if (!qword_27ECE9DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9DC0, &qword_242C4BD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9DB8);
  }

  return result;
}

uint64_t CarCommandsToggleButton.asAnyView()()
{
  type metadata accessor for CarCommandsToggleButton();
  sub_242C3B5CC();

  return sub_242C4A14C();
}

uint64_t sub_242C3B508()
{
  sub_242C3B5CC();

  return sub_242C4A14C();
}

uint64_t sub_242C3B55C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9D60, &qword_242C4BD38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_242C3B5CC()
{
  result = qword_27ECE9E08;
  if (!qword_27ECE9E08)
  {
    type metadata accessor for CarCommandsToggleButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9E08);
  }

  return result;
}

void sub_242C3B668()
{
  sub_242C3B70C();
  if (v0 <= 0x3F)
  {
    sub_242C3B764();
    if (v1 <= 0x3F)
    {
      sub_242C3B7B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_242C3B70C()
{
  if (!qword_27ECE9E28)
  {
    sub_242C49F9C();
    v0 = sub_242C49FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECE9E28);
    }
  }
}

void sub_242C3B764()
{
  if (!qword_27ECE9E30)
  {
    v0 = sub_242C4A30C();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECE9E30);
    }
  }
}

unint64_t sub_242C3B7B4()
{
  result = qword_27ECE9E38;
  if (!qword_27ECE9E38)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27ECE9E38);
  }

  return result;
}

unint64_t sub_242C3B804()
{
  result = qword_27ECE9E40;
  if (!qword_27ECE9E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9E00, &qword_242C4BDC0);
    sub_242C3B8BC();
    sub_242C3B974(&qword_27ECE9E58, &qword_27ECE9E60, &qword_242C4BE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9E40);
  }

  return result;
}

unint64_t sub_242C3B8BC()
{
  result = qword_27ECE9E48;
  if (!qword_27ECE9E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9D60, &qword_242C4BD38);
    sub_242C3B974(&qword_27ECE9E50, &qword_27ECE9D58, &qword_242C4BD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9E48);
  }

  return result;
}

uint64_t sub_242C3B974(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_242C3B9D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 35))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 34);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242C3BA24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 34) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_242C3BADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E68, &qword_242C4C3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CarCommandsToggleButton.ToggleBehavior(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarCommandsToggleButton.ToggleBehavior(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_242C3BCA0()
{
  result = qword_27ECE9E70;
  if (!qword_27ECE9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9E70);
  }

  return result;
}

uint64_t CarCommandsConfirmationSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for CarCommandsConfirmationSnippet() + 20));
  sub_242C4A44C();
  sub_242C3C2C4(&qword_27ECE99B0, MEMORY[0x277D63F60]);
  *v4 = sub_242C4A01C();
  v4[1] = v5;
  return sub_242C3C258(a1, a2, type metadata accessor for CarCommandsConfirmationSnippetModel);
}

uint64_t type metadata accessor for CarCommandsConfirmationSnippet()
{
  result = qword_27ECE9E88;
  if (!qword_27ECE9E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CarCommandsConfirmationSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CarCommandsConfirmationSnippet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_242C3C1F4(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_242C3C258(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CarCommandsConfirmationSnippet);
  sub_242C4A39C();
  sub_242C3C2C4(&qword_27ECE9E78, MEMORY[0x277D63C38]);
  sub_242C4A37C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E80, &qword_242C4BFE8);
  v10 = (a1 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = 1;
  return result;
}

uint64_t sub_242C3BF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for CarCommandsConfirmationSnippet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  v19 = v23[0];
  v20 = v23[1];
  sub_242C3C1F4(a1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v14 = type metadata accessor for CarCommandsConfirmationSnippet;
  sub_242C3C258(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CarCommandsConfirmationSnippet);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9EC8, &unk_242C4C080);
  v23[3] = v8;
  v9 = sub_242C3B974(&qword_27ECE9ED0, &qword_27ECE9EC8, &unk_242C4C080);
  v23[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_242C3A334();
  sub_242C4A2EC();
  v10 = a1 + *(type metadata accessor for CarCommandsConfirmationSnippetModel(0) + 20);
  sub_242C49F1C();
  v17 = v19;
  v18 = v20;
  sub_242C3C1F4(a1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  sub_242C3C258(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v6, v14);
  v21 = v8;
  v22 = v9;
  __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_242C4A2EC();
  return sub_242C4A38C();
}

uint64_t sub_242C3C1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsConfirmationSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C3C258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242C3C2C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_242C3C30C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1 + *(type metadata accessor for CarCommandsConfirmationSnippet() + 20);
  if (*v3)
  {
    v4 = *v3;
    v5 = a2();
    v6 = [v5 identifier];

    sub_242C4A47C();
    v7 = objc_allocWithZone(MEMORY[0x277D5C220]);
    v8 = sub_242C4A46C();
    v9 = [v7 initWithIdentifier_];

    v10 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
    [v10 setInputOrigin_];
    [v10 setInteractionType_];
    v12 = [objc_opt_self() runSiriKitExecutorCommandWithContext:v10 payload:v9];

    sub_242C4A43C();
  }

  else
  {
    v11 = *(v3 + 8);
    sub_242C4A44C();
    sub_242C3C2C4(&qword_27ECE99B0, MEMORY[0x277D63F60]);
    sub_242C4A00C();
    __break(1u);
  }
}

uint64_t sub_242C3C4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_242C3C1F4(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_242C3C258(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CarCommandsConfirmationSnippet);
  sub_242C4A39C();
  sub_242C3C2C4(&qword_27ECE9E78, MEMORY[0x277D63C38]);
  sub_242C4A37C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E80, &qword_242C4BFE8);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = 1;
  return result;
}

void sub_242C3C6AC()
{
  type metadata accessor for CarCommandsConfirmationSnippetModel(319);
  if (v0 <= 0x3F)
  {
    sub_242C3C730();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242C3C730()
{
  if (!qword_27ECE9E98)
  {
    sub_242C4A44C();
    sub_242C3C2C4(&qword_27ECE99B0, MEMORY[0x277D63F60]);
    v0 = sub_242C4A02C();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECE9E98);
    }
  }
}

unint64_t sub_242C3C7C4()
{
  result = qword_27ECE9EA0;
  if (!qword_27ECE9EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9E80, &qword_242C4BFE8);
    sub_242C3B974(&qword_27ECE9EA8, &qword_27ECE9EB0, "v-");
    sub_242C3B974(&qword_27ECE9EB8, &qword_27ECE9EC0, &qword_242C4C078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9EA0);
  }

  return result;
}

uint64_t sub_242C3C8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CarCommandsConfirmationSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_242C3BF7C(v4, a1);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for CarCommandsConfirmationSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = type metadata accessor for CarCommandsConfirmationSnippetModel(0);
  v6(v0 + v3 + *(v7 + 20), v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t CarCommandsDisambiguationSnippet.body.getter()
{
  v1 = sub_242C4A3EC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9ED8, &qword_242C4C0A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = v0[1];
  v19 = *v0;
  v20 = v8;
  v21 = v0[2];
  v22 = *(v0 + 6);
  v14 = MEMORY[0x277D837D0];
  v15 = MEMORY[0x277D63F80];
  v13 = v19;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;

  sub_242C4A3DC();
  v9 = swift_allocObject();
  v10 = v20;
  *(v9 + 16) = v19;
  *(v9 + 32) = v10;
  *(v9 + 48) = v21;
  *(v9 + 64) = v22;
  sub_242C3CF40(&v19, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9EE0, &qword_242C4C0A8);
  sub_242C3CF78();
  sub_242C4A3AC();
  sub_242C3B974(&qword_27ECE9F18, &qword_27ECE9ED8, &qword_242C4C0A0);
  sub_242C4A1DC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_242C3CD84(uint64_t a1)
{
  v8 = *(a1 + 16);
  v7[7] = v8;
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_242C3DA14(&v8, v7, &qword_27ECE9F40, &qword_242C4C1D0);
  sub_242C3CF40(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F40, &qword_242C4C1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F48, &qword_242C4C1D8);
  sub_242C3B974(&qword_27ECE9F50, &qword_27ECE9F40, &qword_242C4C1D0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9EF0, &qword_242C4C0B0);
  v5 = sub_242C3D038();
  v7[0] = v4;
  v7[1] = v5;
  swift_getOpaqueTypeConformance2();
  sub_242C3DBA8(&qword_27ECE9F58, type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption);
  return sub_242C4A31C();
}

unint64_t sub_242C3CF78()
{
  result = qword_27ECE9EE8;
  if (!qword_27ECE9EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9EE0, &qword_242C4C0A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9EF0, &qword_242C4C0B0);
    sub_242C3D038();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9EE8);
  }

  return result;
}

unint64_t sub_242C3D038()
{
  result = qword_27ECE9EF8;
  if (!qword_27ECE9EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECE9EF0, &qword_242C4C0B0);
    sub_242C3DBA8(&qword_27ECE9F00, MEMORY[0x277D63D08]);
    sub_242C3B974(&qword_27ECE9F08, &qword_27ECE9F10, &qword_242C4C0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9EF8);
  }

  return result;
}

uint64_t sub_242C3D13C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption();
  v6 = v5 - 8;
  v34 = *(v5 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = v8;
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v32 = sub_242C4A3CC();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v32);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9EF0, &qword_242C4C0B0);
  v17 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v19 = &v31 - v18;
  v20 = *a1;
  v21 = a1[1];
  v38[3] = MEMORY[0x277D837D0];
  v38[4] = MEMORY[0x277D63F80];
  v38[0] = v20;
  v38[1] = v21;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  sub_242C3DA14(a1 + *(v6 + 28), v12, &qword_27ECE9F20, &unk_242C4C270);
  v22 = sub_242C4A35C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v12, 1, v22) == 1)
  {

    sub_242C3DBF0(v12, &qword_27ECE9F20, &unk_242C4C270);
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
  }

  else
  {
    *(&v40 + 1) = v22;
    v41 = MEMORY[0x277D63B10];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
    (*(v23 + 32))(boxed_opaque_existential_1, v12, v22);
  }

  sub_242C4A3BC();
  (*(v13 + 32))(v19, v16, v32);
  v19[*(v33 + 36)] = 0;
  v25 = a1;
  v26 = v36;
  sub_242C3DA7C(v25, v36);
  v27 = (*(v34 + 80) + 72) & ~*(v34 + 80);
  v28 = swift_allocObject();
  v29 = *(a2 + 16);
  *(v28 + 16) = *a2;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(a2 + 32);
  *(v28 + 64) = *(a2 + 48);
  sub_242C3DAE0(v26, v28 + v27);
  sub_242C3CF40(a2, v38);
  sub_242C3D038();
  sub_242C4A1BC();

  return sub_242C3DBF0(v19, &qword_27ECE9EF0, &qword_242C4C0B0);
}

uint64_t sub_242C3D578(void *a1, uint64_t a2)
{
  sub_242C39FF4(8, 0xD0000000000000A2, 0x8000000242C4E150, 2036625250, 0xE400000000000000, 43, 0xD000000000000033, 0x8000000242C4E200);
  v4 = a1[5];
  if (v4)
  {
    v5 = a1[3];
    v6 = a1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F60, &unk_242C4C1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242C4C090;
    v8 = v4;
    v9 = MEMORY[0x277D837D0];
    sub_242C4A56C();
    v10 = (a2 + *(type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption() + 24));
    v12 = *v10;
    v11 = v10[1];
    *(inited + 96) = v9;
    *(inited + 72) = v12;
    *(inited + 80) = v11;

    sub_242C41640(inited);
    swift_setDeallocating();
    sub_242C3DBF0(inited + 32, &qword_27ECE9F68, &unk_242C4C9C0);
    sub_242C4A42C();
  }

  else
  {
    v14 = a1[6];
    sub_242C4A44C();
    sub_242C3DBA8(&qword_27ECE99B0, MEMORY[0x277D63F60]);
    result = sub_242C4A00C();
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_242C3D760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_242C3D7A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption()
{
  result = qword_27ECE9F28;
  if (!qword_27ECE9F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_242C3D878()
{
  sub_242C3D8F4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_242C3D8F4()
{
  if (!qword_27ECE9F38)
  {
    sub_242C4A35C();
    v0 = sub_242C4A51C();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECE9F38);
    }
  }
}

uint64_t sub_242C3D958@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 24));
  v5 = *v4;
  v6 = v4[1];
  v8 = *v2;
  v9 = v2[1];

  result = MEMORY[0x245D241C0](v5, v6);
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C3DA14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_242C3DA7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C3DAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C3DB44()
{
  v1 = *(type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption() - 8);
  v2 = v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80));

  return sub_242C3D578((v0 + 16), v2);
}

uint64_t sub_242C3DBA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242C3DBF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t AppDisambiguationSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  v2 = *(type metadata accessor for CarCommandsDisambiguationSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9A98, &qword_242C4AD98);
  sub_242C49F1C();
  v3 = sub_242C3DD68(v6);

  sub_242C4A44C();
  sub_242C2C7A0();
  result = sub_242C4A01C();
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v3;
  a1[3] = 0xD000000000000042;
  a1[4] = 0x8000000242C4E240;
  a1[5] = result;
  a1[6] = v5;
  return result;
}

uint64_t sub_242C3DD68(uint64_t a1)
{
  v2 = sub_242C49EEC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v45 = type metadata accessor for CarCommandsDisambiguationSnippetModel.DisambiguationOption(0);
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v45);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption();
  v42 = *(v15 - 8);
  v43 = v15;
  v16 = *(v42 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v48 = MEMORY[0x277D84F90];
    sub_242C36348(0, v19, 0);
    v20 = v48;
    v21 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v40 = *(v11 + 72);
    v41 = v18;
    do
    {
      v44 = v20;
      sub_242C36368(v21, v14);
      v22 = sub_242C4A35C();
      v23 = *(*(v22 - 8) + 56);
      v23(v10, 1, 1, v22);
      v24 = *(v45 + 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
      sub_242C49F1C();
      if (v47)
      {
        sub_242C49EDC();

        v25 = v38;
        sub_242C4A36C();
        sub_242C3E290(v10);
        v23(v25, 0, 1, v22);
        sub_242C3E2F8(v25, v10);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
      sub_242C49F1C();
      v26 = v46;
      v27 = v47;
      v28 = v43;
      v29 = v41;
      sub_242C3E220(v10, v41 + *(v43 + 20));
      v30 = &v14[*(v45 + 24)];
      sub_242C49F1C();
      sub_242C3E290(v10);
      sub_242C363CC(v14);
      v31 = v46;
      v32 = v47;
      *v29 = v26;
      v29[1] = v27;
      v33 = (v29 + *(v28 + 24));
      *v33 = v31;
      v33[1] = v32;
      v20 = v44;
      v48 = v44;
      v35 = *(v44 + 16);
      v34 = *(v44 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_242C36348(v34 > 1, v35 + 1, 1);
        v20 = v48;
      }

      *(v20 + 16) = v35 + 1;
      sub_242C36428(v29, v20 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v35, type metadata accessor for CarCommandsDisambiguationSnippet.DisambiguationOption);
      v21 += v40;
      --v19;
    }

    while (v19);
  }

  return v20;
}

uint64_t type metadata accessor for AppDisambiguationSnippet()
{
  result = qword_27ECE9F70;
  if (!qword_27ECE9F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C3E220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C3E290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242C3E2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F20, &unk_242C4C270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double VisibleSignalStatusSnippet.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CarCommandsToggleSnippetModel(0);
  v5 = v4[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9998, &unk_242C4AC70);
  sub_242C49F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A0, &unk_242C4B920);
  sub_242C49F1C();
  v6 = v2 + v4[5];
  sub_242C49F1C();
  v7 = v2 + v4[6];
  sub_242C49F1C();
  v8 = v2 + v4[7];
  sub_242C49F1C();
  v9 = v2 + v4[8];
  sub_242C49F1C();
  v10 = v4[10];

  sub_242C49F1C();
  v11 = v4[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE99A8, &qword_242C4AC80);
  sub_242C49F1C();
  sub_242C4A44C();
  sub_242C2C7A0();
  v12 = sub_242C4A01C();
  v14 = v13;

  result = 2.87963758e214;
  *a1 = xmmword_242C4C280;
  *(a1 + 16) = xmmword_242C4C290;
  *(a1 + 32) = 768;
  *(a1 + 34) = 0;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = v16;
  *(a1 + 80) = v17;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  *(a1 + 120) = 0xD000000000000045;
  *(a1 + 128) = 0x8000000242C4E290;
  *(a1 + 136) = v16;
  *(a1 + 144) = v17;
  *(a1 + 152) = v16;
  *(a1 + 160) = v17;
  *(a1 + 168) = v16;
  *(a1 + 176) = 0;
  *(a1 + 184) = v16;
  *(a1 + 192) = v17;
  *(a1 + 200) = 0;
  *(a1 + 208) = v12;
  *(a1 + 216) = v14;
  return result;
}

uint64_t type metadata accessor for VisibleSignalStatusSnippet()
{
  result = qword_27ECE9F80;
  if (!qword_27ECE9F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C3E658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7349656C67676F74 && a2 == 0xEA00000000006E4FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242C4A6DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C3E6E8(uint64_t a1)
{
  v2 = sub_242C3E898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C3E724(uint64_t a1)
{
  v2 = sub_242C3E898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsToggleSnippetUpdateValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F90, &qword_242C4C330);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C3E898();
  sub_242C4A74C();
  sub_242C4A69C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_242C3E898()
{
  result = qword_27ECE9F98;
  if (!qword_27ECE9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9F98);
  }

  return result;
}

uint64_t CarCommandsToggleSnippetUpdateValue.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FA0, &qword_242C4C338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C3E898();
  sub_242C4A73C();
  if (!v2)
  {
    v11 = sub_242C4A64C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_242C3EA44()
{
  sub_242C40CB4();
  sub_242C40D08();
  return sub_242C49ECC();
}

uint64_t sub_242C3EAB0()
{
  sub_242C40CB4();
  sub_242C40D08();
  return sub_242C49EBC();
}

uint64_t sub_242C3EB1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9F90, &qword_242C4C330);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C3E898();
  sub_242C4A74C();
  sub_242C4A69C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t CarCommandsToggleSnippetUpdateFailure.failureText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_242C3EC8C()
{
  sub_242C4A6FC();
  MEMORY[0x245D24420](0);
  return sub_242C4A72C();
}

uint64_t sub_242C3ECD0()
{
  sub_242C4A6FC();
  MEMORY[0x245D24420](0);
  return sub_242C4A72C();
}

uint64_t sub_242C3ED30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546572756C696166 && a2 == 0xEB00000000747865)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242C4A6DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C3EDBC(uint64_t a1)
{
  v2 = sub_242C3EF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C3EDF8(uint64_t a1)
{
  v2 = sub_242C3EF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarCommandsToggleSnippetUpdateFailure.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FA8, &qword_242C4C340);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C3EF70();
  sub_242C4A74C();
  sub_242C4A68C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_242C3EF70()
{
  result = qword_27ECE9FB0;
  if (!qword_27ECE9FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECE9FB0);
  }

  return result;
}

uint64_t CarCommandsToggleSnippetUpdateFailure.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FB8, &qword_242C4C348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C3EF70();
  sub_242C4A73C();
  if (!v2)
  {
    v11 = sub_242C4A63C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_242C3F138()
{
  sub_242C40E58();
  sub_242C40EAC();
  return sub_242C49ECC();
}

uint64_t sub_242C3F1A4()
{
  sub_242C40E58();
  sub_242C40EAC();
  return sub_242C49EBC();
}

uint64_t sub_242C3F210(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FA8, &qword_242C4C340);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C3EF70();
  sub_242C4A74C();
  sub_242C4A68C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t CarCommandsToggleSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_242C4A40C();
  v67 = *(v2 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FC0, &qword_242C4C350);
  v6 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v72 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FC8, &qword_242C4C358);
  v9 = *(v8 - 8);
  v69 = v8;
  v70 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v73 = &v67 - v11;
  v12 = v1[11];
  v99[0] = v1[10];
  v99[1] = v12;
  v13 = v1[13];
  v100 = v1[12];
  v101 = v13;
  v14 = v1[7];
  v95 = v1[6];
  v96 = v14;
  v15 = v1[9];
  v97 = v1[8];
  v98 = v15;
  v16 = v1[3];
  v92[1] = v1[2];
  v92[2] = v16;
  v17 = v1[5];
  v93 = v1[4];
  v94 = v17;
  v18 = v1[1];
  v91 = *v1;
  v92[0] = v18;
  v75 = *(v1 + 184);
  v76 = *(v1 + 25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD0, &qword_242C4C360);
  sub_242C4A2AC();
  v89 = MEMORY[0x277D837D0];
  v90 = MEMORY[0x277D63F80];
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v104 = *(&v92[1] + 8);
  v81 = MEMORY[0x277D837D0];
  v82 = MEMORY[0x277D63F80];
  v80 = *(&v92[1] + 8);
  v19 = swift_allocObject();
  v20 = v99[1];
  *(v19 + 11) = v99[0];
  *(v19 + 12) = v20;
  v21 = v101;
  *(v19 + 13) = v100;
  *(v19 + 14) = v21;
  v22 = v96;
  *(v19 + 7) = v95;
  *(v19 + 8) = v22;
  v23 = v98;
  *(v19 + 9) = v97;
  *(v19 + 10) = v23;
  v24 = v92[2];
  *(v19 + 3) = v92[1];
  *(v19 + 4) = v24;
  v25 = v94;
  *(v19 + 5) = v93;
  *(v19 + 6) = v25;
  v26 = v92[0];
  *(v19 + 1) = v91;
  *(v19 + 2) = v26;
  v102 = *(v99 + 8);
  sub_242C3FCA0(&v104, &v75);
  sub_242C3FCFC(&v91, &v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9FD8, &qword_242C4C368);
  sub_242C4A2CC();
  v27 = v75;
  v28 = v76;
  v102 = v91;
  v103[0] = v92[0];
  *(v103 + 15) = *(v92 + 15);
  v29 = type metadata accessor for CarCommandsToggleButton();
  v77 = v29;
  v78 = sub_242C40AD0(&qword_27ECE9FE0, type metadata accessor for CarCommandsToggleButton);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v75);
  *boxed_opaque_existential_1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECE9E68, &qword_242C4C3A0);
  swift_storeEnumTagMultiPayload();
  v31 = (boxed_opaque_existential_1 + v29[6]);
  *v31 = sub_242C3FC98;
  v31[1] = v19;
  v32 = boxed_opaque_existential_1 + v29[5];
  *v32 = v27;
  v32[16] = v28;
  v33 = boxed_opaque_existential_1 + v29[7];
  v34 = v102;
  v35 = v103[0];
  *(v33 + 31) = *(v103 + 15);
  *v33 = v34;
  *(v33 + 1) = v35;
  sub_242C40A74(&v102, &v74);
  sub_242C4A3FC();
  sub_242C40AD0(&qword_27ECE9FE8, MEMORY[0x277D63E70]);
  v36 = v72;
  sub_242C4A1DC();
  (*(v67 + 8))(v5, v2);
  v37 = *(&v97 + 1);
  v38 = v98;
  sub_242C4A44C();
  sub_242C40AD0(&qword_27ECE99B0, MEMORY[0x277D63F60]);

  v39 = sub_242C4A01C();
  v40 = v68;
  v41 = &v36[*(v68 + 36)];
  *v41 = v39;
  v41[1] = v42;
  v41[2] = v37;
  v41[3] = v38;
  v43 = swift_allocObject();
  v44 = v99[1];
  v43[11] = v99[0];
  v43[12] = v44;
  v45 = v101;
  v43[13] = v100;
  v43[14] = v45;
  v46 = v96;
  v43[7] = v95;
  v43[8] = v46;
  v47 = v98;
  v43[9] = v97;
  v43[10] = v47;
  v48 = v92[2];
  v43[3] = v92[1];
  v43[4] = v48;
  v49 = v94;
  v43[5] = v93;
  v43[6] = v49;
  v50 = v92[0];
  v43[1] = v91;
  v43[2] = v50;
  sub_242C3FCFC(&v91, &v75);
  v51 = sub_242C40B20();
  v52 = sub_242C40C60();
  v53 = sub_242C40CB4();
  v54 = sub_242C40D08();
  v55 = v72;
  sub_242C4A16C();

  sub_242C2C018(v55);
  v56 = swift_allocObject();
  v57 = v99[1];
  v56[11] = v99[0];
  v56[12] = v57;
  v58 = v101;
  v56[13] = v100;
  v56[14] = v58;
  v59 = v96;
  v56[7] = v95;
  v56[8] = v59;
  v60 = v98;
  v56[9] = v97;
  v56[10] = v60;
  v61 = v92[2];
  v56[3] = v92[1];
  v56[4] = v61;
  v62 = v94;
  v56[5] = v93;
  v56[6] = v62;
  v63 = v92[0];
  v56[1] = v91;
  v56[2] = v63;
  sub_242C3FCFC(&v91, &v75);
  *&v75 = v40;
  *(&v75 + 1) = &type metadata for CarCommandsToggleSnippetUpdateValue;
  v76 = v51;
  v77 = v52;
  v78 = v53;
  v79 = v54;
  swift_getOpaqueTypeConformance2();
  sub_242C40E04();
  sub_242C40E58();
  sub_242C40EAC();
  v64 = v69;
  v65 = v73;
  sub_242C4A16C();

  return (*(v70 + 8))(v65, v64);
}