uint64_t sub_1C599C9EC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1C694BE20](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C599CA40(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1C694BE30](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_1C599CAC8(uint64_t a1, id *a2)
{
  result = sub_1C5BCAE54();
  *a2 = 0;
  return result;
}

uint64_t sub_1C599CB40(uint64_t a1, id *a2)
{
  v3 = sub_1C5BCAE64();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C599CBC0@<X0>(uint64_t *a1@<X8>)
{
  sub_1C5BCAE74();
  v2 = sub_1C5BCAE44();

  *a1 = v2;
  return result;
}

uint64_t sub_1C599CC14(uint64_t a1)
{
  v2 = sub_1C599D80C(&qword_1EDA45F18, type metadata accessor for AVError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C599CC80(uint64_t a1)
{
  v2 = sub_1C599D80C(&qword_1EDA45F18, type metadata accessor for AVError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C599CCEC(void *a1, uint64_t a2)
{
  v4 = sub_1C599D80C(&qword_1EDA45F18, type metadata accessor for AVError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C599CDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C599D80C(&qword_1EDA45F18, type metadata accessor for AVError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C599CE1C()
{
  sub_1C5BCBF54();
  sub_1C5BCAD44();
  return sub_1C5BCBF94();
}

uint64_t sub_1C599CF20()
{
  sub_1C5BCBF54();
  swift_getWitnessTable();
  sub_1C5BC7C34();
  return sub_1C5BCBF94();
}

_DWORD *sub_1C599CF88@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1C599CF98()
{
  sub_1C599D80C(&qword_1EC190F18, type metadata accessor for CAGradientLayerType);
  sub_1C599D80C(&qword_1EC190F20, type metadata accessor for CAGradientLayerType);

  return sub_1C5BCBC94();
}

double sub_1C599D054@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1C599D060()
{
  sub_1C599D80C(&qword_1EC190FE0, type metadata accessor for Weight);
  sub_1C599D80C(&qword_1EC190FE8, type metadata accessor for Weight);
  sub_1C599F060();
  return sub_1C5BCBC94();
}

uint64_t sub_1C599D128()
{
  sub_1C599D80C(&qword_1EC190F58, type metadata accessor for TraitKey);
  sub_1C599D80C(&unk_1EC190F60, type metadata accessor for TraitKey);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599D1E4()
{
  sub_1C599D80C(&qword_1EDA4E0C8, type metadata accessor for AttributeName);
  sub_1C599D80C(&qword_1EC190F50, type metadata accessor for AttributeName);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599D2A0()
{
  sub_1C599D80C(&qword_1EC190F38, type metadata accessor for Name);
  sub_1C599D80C(&unk_1EC190F40, type metadata accessor for Name);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599D35C()
{
  sub_1C599D80C(&qword_1EC191088, type metadata accessor for Key);
  sub_1C599D80C(&qword_1EC191090, type metadata accessor for Key);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599D418(uint64_t a1)
{
  v2 = sub_1C599D80C(&qword_1EDA45F20, type metadata accessor for AVError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C599D484(uint64_t a1)
{
  v2 = sub_1C599D80C(&qword_1EDA45F20, type metadata accessor for AVError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C599D4F0(uint64_t a1)
{
  v2 = sub_1C599D80C(&qword_1EDA45F18, type metadata accessor for AVError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C599D55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C599D80C(&qword_1EDA45F18, type metadata accessor for AVError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1C599D5E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6C290](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C599D64C()
{
  sub_1C599D80C(&qword_1EDA4E610, type metadata accessor for Option);
  sub_1C599D80C(&qword_1EC190F70, type metadata accessor for Option);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599D708()
{
  sub_1C599D80C(&qword_1EDA4E140, type metadata accessor for CIImageOption);
  sub_1C599D80C(&qword_1EC190DC8, type metadata accessor for CIImageOption);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599D80C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C599D89C()
{
  sub_1C599D80C(&qword_1EC190DB0, type metadata accessor for NSKeyValueChangeKey);
  sub_1C599D80C(&unk_1EC190DB8, type metadata accessor for NSKeyValueChangeKey);

  return sub_1C5BCBC94();
}

unint64_t sub_1C599DCB8()
{
  result = qword_1EC190DA8;
  if (!qword_1EC190DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190DA8);
  }

  return result;
}

uint64_t sub_1C599DD0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C5BCAE44();

  *a1 = v2;
  return result;
}

uint64_t sub_1C599DD54()
{
  sub_1C599D80C(&qword_1EC190F28, type metadata accessor for URLResourceKey);
  sub_1C599D80C(&qword_1EC190F30, type metadata accessor for URLResourceKey);

  return sub_1C5BCBC94();
}

uint64_t sub_1C599DE18()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1C69501C0](*&v1);
}

uint64_t sub_1C599DE6C()
{
  v0 = sub_1C5BCAE74();
  v1 = MEMORY[0x1C694F1E0](v0);

  return v1;
}

uint64_t sub_1C599DEA8()
{
  sub_1C5BCAE74();
  sub_1C5BCAF04();
}

uint64_t sub_1C599DEFC()
{
  sub_1C5BCAE74();
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v0 = sub_1C5BCBF94();

  return v0;
}

uint64_t sub_1C599DF84()
{
  v0 = sub_1C5BCAE74();
  v2 = v1;
  if (v0 == sub_1C5BCAE74() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C5BCBDE4();
  }

  return v5 & 1;
}

uint64_t sub_1C599E00C(uint64_t a1)
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

unint64_t sub_1C599E044()
{
  result = qword_1EC190DD0;
  if (!qword_1EC190DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190DD0);
  }

  return result;
}

unint64_t sub_1C599E098()
{
  result = qword_1EC190DD8;
  if (!qword_1EC190DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190DD8);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1C599E130(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C599E150(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C599E1EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C599E20C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for WaveformTheme.ArtworkTreatment(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ScrubberSensitivityInteractionDirection(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrubberSensitivityInteractionDirection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C599E3DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C599E424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1C599E49C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C599E4BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C599E52C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C599E54C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_1C599E6D0()
{
  result = qword_1EC190E58;
  if (!qword_1EC190E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190E58);
  }

  return result;
}

unint64_t sub_1C599EDFC()
{
  result = qword_1EC190EF8;
  if (!qword_1EC190EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190EF8);
  }

  return result;
}

unint64_t sub_1C599EF70()
{
  result = qword_1EC190F10;
  if (!qword_1EC190F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190F10);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C599F00C()
{
  result = qword_1EC190FB0;
  if (!qword_1EC190FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190FB0);
  }

  return result;
}

unint64_t sub_1C599F060()
{
  result = qword_1EC190FF0;
  if (!qword_1EC190FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC190FF0);
  }

  return result;
}

unint64_t sub_1C599F100()
{
  result = qword_1EC191018;
  if (!qword_1EC191018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190F88);
    sub_1C599F18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191018);
  }

  return result;
}

unint64_t sub_1C599F18C()
{
  result = qword_1EC191020;
  if (!qword_1EC191020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190F80);
    sub_1C5924F54(&qword_1EC191028, &unk_1EC191030);
    sub_1C5924F54(&qword_1EDA461D8, &qword_1EC191040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191020);
  }

  return result;
}

unint64_t sub_1C599F2B4()
{
  result = qword_1EC196470;
  if (!qword_1EC196470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196470);
  }

  return result;
}

unint64_t sub_1C599F30C()
{
  result = qword_1EC191060;
  if (!qword_1EC191060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191060);
  }

  return result;
}

unint64_t sub_1C599F364()
{
  result = qword_1EC191068;
  if (!qword_1EC191068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191068);
  }

  return result;
}

unint64_t sub_1C599F4A0()
{
  result = qword_1EC191098;
  if (!qword_1EC191098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191098);
  }

  return result;
}

uint64_t sub_1C599F598()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0);
  sub_1C5BCA834();
  return v1;
}

uint64_t sub_1C599F5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[2] = a1;
  v19[3] = a3;
  swift_getWitnessTable();
  sub_1C5BC9394();
  v5 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191168);
  sub_1C5BC8AB4();
  v25 = *(a2 + 24);
  v6 = v25;
  v26 = sub_1C5924F54(qword_1EC191318, &qword_1EC191168);
  v19[1] = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  type metadata accessor for Popover();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v24 = MEMORY[0x1E69805B0];
  swift_getWitnessTable();
  v19[0] = sub_1C5BC92A4();
  v7 = sub_1C5BC8AB4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  v19[6] = v5;
  v19[7] = v6;
  v20 = v3;
  sub_1C5BCAA54();
  v14 = swift_getWitnessTable();
  sub_1C5BC9CE4();
  v15 = swift_getWitnessTable();
  v21 = v14;
  v22 = v15;
  v16 = swift_getWitnessTable();
  sub_1C593EDC0(v11, v7, v16);
  v17 = *(v8 + 8);
  v17(v11, v7);
  sub_1C593EDC0(v13, v7, v16);
  return (v17)(v13, v7);
}

uint64_t sub_1C599F90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = type metadata accessor for PopoverViewModifier();
  v6 = sub_1C599F598();
  v28 = v7;
  v29 = v6;
  v23 = v8;
  v27 = *(a1 + 24);
  v26 = *(a1 + 32);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v24 = *(a1 + 80);
  v25 = *(a1 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = *(a1 + 80);
  *(v13 + 96) = *(a1 + 64);
  *(v13 + 112) = v14;
  *(v13 + 128) = *(a1 + 96);
  v15 = *(a1 + 16);
  *(v13 + 32) = *a1;
  *(v13 + 48) = v15;
  v16 = *(a1 + 48);
  *(v13 + 64) = *(a1 + 32);
  *(v13 + 80) = v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191168);
  sub_1C5BC8AB4();
  v37 = a3;
  v38 = sub_1C5924F54(qword_1EC191318, &qword_1EC191168);
  swift_getWitnessTable();
  *&v47 = v29;
  *(&v47 + 1) = v28;
  LOBYTE(v48) = v23 & 1;
  *(&v48 + 1) = v27;
  LOBYTE(v49) = v26;
  *(&v49 + 1) = v10;
  *&v50 = v9;
  *(&v50 + 1) = v11;
  *&v51 = v12;
  *(&v51 + 1) = v25;
  *v52 = v24;
  *&v52[8] = sub_1C59A5638;
  *&v52[16] = v13;
  v17 = v9;

  sub_1C5974668(v11);
  sub_1C5974668(v25);
  (*(*(v30 - 8) + 16))(&v53, a1);
  v18 = type metadata accessor for Popover();
  swift_getWitnessTable();
  sub_1C5BC9FA4();
  v45[4] = v51;
  v45[5] = *v52;
  v46 = v13;
  v45[0] = v47;
  v45[1] = v48;
  v45[2] = v49;
  v45[3] = v50;
  (*(*(v18 - 8) + 8))(v45, v18);
  v35 = v57;
  v36[0] = v58[0];
  *(v36 + 9) = *(v58 + 9);
  v31 = v53;
  v32 = v54;
  v33 = v55;
  v34 = v56;
  v19 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v31, v19, WitnessTable);
  v51 = v35;
  *v52 = v36[0];
  *&v52[9] = *(v36 + 9);
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v21 = *(*(v19 - 8) + 8);
  v21(&v47, v19);
  v35 = v43;
  v36[0] = v44[0];
  *(v36 + 9) = *(v44 + 9);
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  sub_1C593EDC0(&v31, v19, WitnessTable);
  v57 = v35;
  v58[0] = v36[0];
  *(v58 + 9) = *(v36 + 9);
  v53 = v31;
  v54 = v32;
  v55 = v33;
  v56 = v34;
  return (v21)(&v53, v19);
}

uint64_t sub_1C599FCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914B8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v26 - v9;
  v26[0] = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191168);
  v13 = sub_1C5BC8AB4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v26 - v19;
  (*(a1 + 88))(v18);
  swift_getKeyPath();
  v21 = sub_1C5BCA9E4();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_1C5BC9DF4();

  sub_1C59A5644(v10);
  (*(v26[0] + 8))(v12, a2);
  v22 = sub_1C5924F54(qword_1EC191318, &qword_1EC191168);
  v26[2] = a3;
  v26[3] = v22;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v17, v13, WitnessTable);
  v24 = *(v14 + 8);
  v24(v17, v13);
  sub_1C593EDC0(v20, v13, WitnessTable);
  return (v24)(v20, v13);
}

uint64_t sub_1C59A0020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914B8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  sub_1C59400B0(a1, &v9 - v6, &qword_1EC1914B8);
  sub_1C59400B0(v7, v5, &qword_1EC1914B8);
  sub_1C59A57CC();
  sub_1C5BC8F54();
  return sub_1C59A5644(v7);
}

uint64_t sub_1C59A011C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C59400B0(v2, &v14 - v9, &qword_1EC1914C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C5BC9114();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1C59A0368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = *(a1 + 16);
  v38 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v36 = &v33 - v8;
  v34 = v7;
  v41 = *(v7 + 24);
  v9 = sub_1C5BC81E4();
  v37 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v33 - v13;
  v14 = sub_1C5BC9114();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C5BC92D4();
  v39 = *(v18 - 8);
  v40 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  v21 = v2;
  sub_1C59A011C(v17);
  v22 = sub_1C5BC9104();
  v23 = (*(v15 + 8))(v17, v14);
  if (v22)
  {
    MEMORY[0x1EEE9AC00](v23);
    v24 = v41;
    *(&v33 - 4) = v3;
    *(&v33 - 3) = v24;
    *(&v33 - 2) = v21;
    sub_1C5BC9874();
    sub_1C5BC81F4();
    WitnessTable = swift_getWitnessTable();
    v26 = v35;
    sub_1C593EDC0(v12, v9, WitnessTable);
    v27 = *(v37 + 8);
    v27(v12, v9);
    sub_1C593EDC0(v26, v9, WitnessTable);
    sub_1C5950E54(v12, v9);
    v27(v12, v9);
    v27(v26, v9);
  }

  else
  {
    (*(v21 + *(v34 + 36)))(v23);
    v28 = v36;
    v24 = v41;
    sub_1C593EDC0(v6, v3, v41);
    v29 = *(v38 + 8);
    v29(v6, v3);
    sub_1C593EDC0(v28, v3, v24);
    swift_getWitnessTable();
    sub_1C5941738(v6, v9, v3);
    v29(v6, v3);
    v29(v28, v3);
  }

  v43 = swift_getWitnessTable();
  v44 = v24;
  v30 = v40;
  v31 = swift_getWitnessTable();
  sub_1C593EDC0(v20, v30, v31);
  return (*(v39 + 8))(v20, v30);
}

uint64_t sub_1C59A0864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = type metadata accessor for AXPopoverContainer();
  (*(a1 + *(v12 + 36)))();
  sub_1C593EDC0(v9, a2, a3);
  v13 = *(v6 + 8);
  v13(v9, a2);
  sub_1C593EDC0(v11, a2, a3);
  return (v13)(v11, a2);
}

uint64_t sub_1C59A09C4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C8);

  return swift_storeEnumTagMultiPayload();
}

id sub_1C59A0A28(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for Popover.Coordinator();
  v8 = *(v1 + 88);
  v9 = *(a1 - 8);
  v10 = (*(v9 + 16))(v14, v1, a1);
  v8(v10);
  v11 = sub_1C59A3D2C(v1, v7);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v2, a1);
  return v11;
}

void sub_1C59A0B98(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v111 = a1;
  v110 = sub_1C5BC7DC4();
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1C5BC8284();
  v107 = *(v108 - 8);
  v8 = MEMORY[0x1EEE9AC00](v108);
  v106 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v98 - v10;
  v104 = sub_1C5BC8F34();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1913A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v113 = (&v98 - v13);
  v14 = *(a3 + 16);
  v112 = *(a3 + 24);
  v15 = type metadata accessor for AXPopoverContainer();
  v16 = v15 - 8;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v98 - v18;
  MEMORY[0x1EEE9AC00](v17);
  swift_getWitnessTable();
  sub_1C5BC9834();
  sub_1C5BC9814();
  v20 = v115;
  v21 = *(v115 + qword_1EC191190);

  (*(v4 + 88))();
  sub_1C5BC91B4();

  sub_1C5BC9814();
  v22 = aBlock[0];
  v23 = *(aBlock[0] + qword_1EC191188);

  v24 = swift_allocObject();
  v25 = v112;
  *(v24 + 16) = v14;
  *(v24 + 24) = v25;
  v26 = *(v4 + 80);
  *(v24 + 96) = *(v4 + 64);
  *(v24 + 112) = v26;
  *(v24 + 128) = *(v4 + 96);
  v27 = *(v4 + 16);
  *(v24 + 32) = *v4;
  *(v24 + 48) = v27;
  v28 = *(v4 + 48);
  *(v24 + 64) = *(v4 + 32);
  *(v24 + 80) = v28;
  v29 = v113;
  sub_1C59A09C4(v113);
  sub_1C59A56EC(v29, v19);
  v30 = &v19[*(v16 + 44)];
  *v30 = sub_1C59A575C;
  v30[1] = v24;
  v31 = *(*(a3 - 8) + 16);
  v101 = a3;
  v100 = v31;
  v31(&v115, v4, a3);
  sub_1C5BC91B4();

  sub_1C5BC9814();
  v32 = v115;
  v33 = *(v4 + 72);
  v34 = *(v4 + 80);
  v113 = v4;
  sub_1C5974668(v33);
  v35 = &v32[qword_1EC1911A0];
  v36 = *&v32[qword_1EC1911A0];
  v99 = v33;
  *v35 = v33;
  v35[1] = v34;
  v98 = v34;
  sub_1C59261FC(v36);

  v112 = a2;
  sub_1C5BC9814();
  v37 = v115;
  v38 = *(v115 + qword_1EC191188);

  if (_UISolariumEnabled())
  {
    v39 = v38;
    v40 = v102;
    sub_1C5BC9824();
    v41 = v105;
    sub_1C5BC8CD4();
    (*(v103 + 8))(v40, v104);
    v42 = v107;
    v43 = v106;
    v44 = v108;
    (*(v107 + 104))(v106, *MEMORY[0x1E697DBA8], v108);
    sub_1C5BC8274();
    v45 = *(v42 + 8);
    v45(v43, v44);
    v45(v41, v44);
    sub_1C5BCB534();
    sub_1C5BC7D94();
    sub_1C5BCB544();
  }

  v115 = *v113;
  v116 = *(v113 + 16);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0);
  MEMORY[0x1C694EA50](aBlock, v46);
  v47 = v111;
  if (LOBYTE(aBlock[0]) != 1)
  {
    goto LABEL_26;
  }

  v48 = [v111 presentedViewController];
  if (v48)
  {

    goto LABEL_26;
  }

  v49 = v38;
  [v49 setModalPresentationStyle_];
  v50 = [v49 popoverPresentationController];
  if (v50)
  {
    v51 = v50;
    sub_1C5BC9814();
    v52 = v115;
    [v51 setDelegate_];
  }

  v53 = [v49 popoverPresentationController];
  if (v53)
  {
    v54 = v53;
    v55 = [v47 view];
    [v54 setSourceView_];
  }

  v56 = [v49 popoverPresentationController];
  if (v56)
  {
    v57 = v56;
    v58 = [v47 view];
    if (!v58)
    {
      __break(1u);
      goto LABEL_38;
    }

    v59 = v58;
    [v58 bounds];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;

    [v57 setSourceRect_];
  }

  v68 = [v49 popoverPresentationController];
  if (v68)
  {
    v69 = v68;
    [v68 setPermittedArrowDirections_];
  }

  v70 = [v49 popoverPresentationController];
  if (v70)
  {
    v71 = v70;
    sub_1C59A2648();
    v72 = sub_1C5BCB044();
    [v71 setPassthroughViews_];
  }

  v73 = [v49 popoverPresentationController];
  if (v73)
  {
    v74 = v73;
    v75 = v113[6];
    if (v75)
    {
      [v75 safeAreaInsets];
    }

    else
    {
      v78 = 10.0;
      v77 = 19.0;
      v76 = 30.0;
      v79 = 19.0;
    }

    [v74 setPopoverLayoutMargins_];
  }

  v80 = v49;
  if (!_UISolariumEnabled())
  {
    goto LABEL_25;
  }

  v81 = [v49 view];

  if (!v81)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v80 = [objc_opt_self() clearColor];
  [v81 setBackgroundColor_];

LABEL_25:
  v82 = swift_allocObject();
  v83 = v113;
  v84 = *(v113 + 5);
  *(v82 + 80) = *(v113 + 4);
  *(v82 + 96) = v84;
  v85 = v83[12];
  v86 = *(v83 + 1);
  *(v82 + 16) = *v83;
  *(v82 + 32) = v86;
  v87 = *(v83 + 3);
  *(v82 + 48) = *(v83 + 2);
  *(v82 + 64) = v87;
  *(v82 + 112) = v85;
  *(v82 + 120) = v49;
  aBlock[4] = sub_1C59A5784;
  aBlock[5] = v82;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor;
  v88 = _Block_copy(aBlock);
  v100(&v115, v83, v101);
  v89 = v49;

  [v47 presentViewController:v89 animated:1 completion:v88];
  _Block_release(v88);
LABEL_26:
  v115 = *v113;
  v116 = *(v113 + 16);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0);
  MEMORY[0x1C694EA50](aBlock, v90);
  if (aBlock[0])
  {
    goto LABEL_36;
  }

  v91 = [v47 presentedViewController];
  if (!v91)
  {
    goto LABEL_36;
  }

  v92 = v91;
  sub_1C5BC9814();
  v93 = *(v115 + qword_1EC191180);

  if (v93 == 2)
  {

    return;
  }

  if (v93)
  {
LABEL_35:

LABEL_36:
    return;
  }

  sub_1C5BC9814();
  v94 = v115;
  *(v115 + qword_1EC191180) = 1;

  v95 = v99;
  if (!v99)
  {
LABEL_34:
    [v47 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_35;
  }

  v96 = [v92 view];
  if (v96)
  {
    v97 = v96;
    v95();

    goto LABEL_34;
  }

LABEL_39:
  __break(1u);
}

void sub_1C59A1708(__int128 *a1, void *a2)
{
  type metadata accessor for Popover();
  v9 = *a1;
  v10 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0);
  MEMORY[0x1C694EA50](&v8, v4);
  if (v8 == 1)
  {
    v5 = *(a1 + 7);
    if (v5)
    {
      v6 = [a2 view];
      if (v6)
      {
        v7 = v6;
        v5();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1C59A1804(void *a1, uint64_t a2)
{
  v7 = [a1 presentedViewController];
  if (v7)
  {
    *(a2 + qword_1EC191180) = 1;
    v4 = *(a2 + qword_1EC1911A0);
    if (v4)
    {
      sub_1C5974668(v4);
      v5 = [v7 view];
      if (!v5)
      {
        __break(1u);
        return;
      }

      v6 = v5;
      v4();
      sub_1C59261FC(v4);
    }

    [a1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1C59A1924(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EC1911A0);
  v4 = *(v2 + qword_1EC1911A0);
  *v3 = a1;
  v3[1] = a2;
  return sub_1C59261FC(v4);
}

id sub_1C59A1944(void *a1)
{
  v2 = v1;
  v3 = [a1 sourceView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (v5)
    {
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v16.origin.x = v7;
      v16.origin.y = v9;
      v16.size.width = v11;
      v16.size.height = v13;
      CGRectGetWidth(v16);
    }
  }

  v14 = *(v2 + qword_1EC191188);
  sub_1C5BC9164();
  result = [v14 setPreferredContentSize_];
  *(v2 + qword_1EC191180) = 0;
  return result;
}

void sub_1C59A1A48(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C59A1944(v4);
}

void sub_1C59A1AB0(void *a1)
{
  *(v1 + qword_1EC191180) = 1;
  v3 = *(v1 + qword_1EC191198 + 72);
  type metadata accessor for Popover();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0);
  sub_1C5BCA824();
  if (v3)
  {
    v4 = [a1 presentedViewController];
    v5 = [v4 view];

    if (v5)
    {
      v3(v5);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C59A1BD8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C59A1AB0(v4);
}

id sub_1C59A1CB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Popover.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C59A1D20(uint64_t a1)
{
  v2 = *(a1 + qword_1EC191198 + 48);
  v3 = *(a1 + qword_1EC191198 + 56);
  v4 = *(a1 + qword_1EC191198 + 72);

  sub_1C59261FC(v3);
  sub_1C59261FC(v4);

  v5 = *(a1 + qword_1EC1911A0);

  return sub_1C59261FC(v5);
}

id sub_1C59A1DF8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DD258]);

  return [v0 init];
}

id sub_1C59A1E88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C59A0A28(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C59A1F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C59A1F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1C59A2010()
{
  swift_getWitnessTable();
  sub_1C5BC9784();
  __break(1u);
}

uint64_t PopoverHostingControllerModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191160) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191168) + 28);
  v7 = sub_1C5BCA9E4();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *v5 = KeyPath;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC191170);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_1C59A2160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191160) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191168) + 28);
  v7 = sub_1C5BCA9E4();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *v5 = KeyPath;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC191170);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_1C59A2270()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 24);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C59A22F0(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PopoverViewController + 24);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C59A2418()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 32);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C59A2498(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PopoverViewController + 32);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C59A25C0()
{
  v1 = [v0 popoverPresentationController];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = [v1 passthroughViews];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C59A2648();
  v4 = sub_1C5BCB054();

  return v4;
}

unint64_t sub_1C59A2648()
{
  result = qword_1EDA4E078;
  if (!qword_1EDA4E078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA4E078);
  }

  return result;
}

void sub_1C59A2694()
{
  v1 = [v0 popoverPresentationController];
  if (v1)
  {
    v2 = v1;
    sub_1C59A2648();
    v3 = sub_1C5BCB044();

    [v2 setPassthroughViews_];
  }

  else
  {
  }
}

void (*sub_1C59A274C(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1C59A25C0();
  return sub_1C59A2794;
}

void sub_1C59A2794(uint64_t a1, char a2)
{
  if (a2)
  {

    sub_1C59A2694();
  }

  else
  {
    sub_1C59A2694();
  }
}

void sub_1C59A27EC(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PopoverViewController + 40);
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v5 = [v1 popoverPresentationController];
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + v3);
    [v6 setSourceView_];
  }

  v8 = [v1 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    v10 = *(v1 + v3);
    if (v10)
    {
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = sub_1C59A2CB0();
      v21 = UIEdgeInsetsInsetRect(v12, v14, v16, v18, v19, v20);
    }

    else
    {
      v21 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
    }

    [v9 setSourceRect_];
  }
}

void *sub_1C59A297C()
{
  v0 = sub_1C59A3DBC();
  v1 = v0;
  return v0;
}

void sub_1C59A29A8(void *a1)
{
  sub_1C59A3E3C(a1);
}

void (*sub_1C59A29E0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PopoverViewController + 40);
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1C59A2AB8;
}

void sub_1C59A2AB8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1C59A3E3C(v3);

    v3 = *v4;
  }

  else
  {
    sub_1C59A3E3C(*(*a1 + 24));
  }

  free(v2);
}

void sub_1C59A2B34(__n128 a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for PopoverViewController + 48));
  swift_beginAccess();
  *&v7.f64[0] = a1.n128_u64[0];
  v7.f64[1] = a2;
  v8.f64[0] = a3;
  v8.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v6, v7), vceqq_f64(v6[1], v8)))) & 1) == 0)
  {
    v9 = [v4 popoverPresentationController];
    if (v9)
    {
      v10 = v9;
      v11 = *((*v5 & *v4) + class metadata base offset for PopoverViewController + 40);
      swift_beginAccess();
      v12 = *(v4 + v11);
      if (v12)
      {
        [v12 frame];
        v17 = UIEdgeInsetsInsetRect(v13, v14, v15, v16, v6->f64[0], v6->f64[1]);
      }

      else
      {
        v17 = 0.0;
        v18 = 0.0;
        v19 = 0.0;
        v20 = 0.0;
      }

      [v10 setSourceRect_];
    }
  }
}

double sub_1C59A2CB0()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 48);
  swift_beginAccess();
  return *v1;
}

void sub_1C59A2D38(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for PopoverViewController + 48));
  swift_beginAccess();
  v10.n128_u64[0] = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = *(v9 + 3);
  *v9 = a1;
  *(v9 + 1) = a2;
  *(v9 + 2) = a3;
  *(v9 + 3) = a4;
  sub_1C59A2B34(v10, v11, v12, v13);
}

void (*sub_1C59A2DEC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PopoverViewController + 48));
  swift_beginAccess();
  v6 = v5[1];
  *v4 = *v5;
  v4[1] = v6;
  return sub_1C59A2EC0;
}

void sub_1C59A2EC0(double **a1)
{
  v1 = *a1;
  sub_1C59A2D38(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

uint64_t sub_1C59A2F04@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_1C59A3EDC();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v2 = v4;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C59A57A4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a1 = v7;
  a1[1] = v6;

  return sub_1C5974668(v2);
}

uint64_t sub_1C59A2F98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C59A579C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C5974668(v1);
  return sub_1C59A305C(v4, v3);
}

uint64_t sub_1C59A3028()
{
  v0 = sub_1C59A3EDC();
  sub_1C5974668(v0);
  return v0;
}

uint64_t sub_1C59A305C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for PopoverViewController + 56));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1C59261FC(v6);
}

void *PopoverViewController.__allocating_init(rootView:sourceView:sourceRectInsets:)(uint64_t a1, void *a2, int8x16_t *a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = sub_1C59A3F60(a1, a2, a3);

  (*(*(*(v4 + class metadata base offset for PopoverViewController) - 8) + 8))(a1);
  return v9;
}

void *PopoverViewController.init(rootView:sourceView:sourceRectInsets:)(uint64_t a1, void *a2, int8x16_t *a3)
{
  v6 = *MEMORY[0x1E69E7D40] & *v3;
  v7 = sub_1C59A3F60(a1, a2, a3);

  (*(*(*(v6 + class metadata base offset for PopoverViewController) - 8) + 8))(a1);
  return v7;
}

id PopoverViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1C59A3398(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C59A482C();
}

id sub_1C59A33F8()
{
  result = [v0 preferredContentSize];
  if (v2 != 1.79769313e308)
  {
    result = [v0 preferredContentSize];
    if (v3 != 0.0)
    {
      v4 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 32);
      result = swift_beginAccess();
      if (*(v0 + v4) == 1)
      {
        [v0 preferredContentSize];
        sub_1C5BC9164();
        return [v0 setPreferredContentSize_];
      }
    }
  }

  return result;
}

uint64_t sub_1C59A35D4()
{
  v1 = MEMORY[0x1E69E7D40];

  v2 = *(v0 + *((*v1 & *v0) + class metadata base offset for PopoverViewController + 56));

  return sub_1C59261FC(v2);
}

id PopoverViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PopoverViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C59A3750(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *(a1 + *((*v2 & *a1) + class metadata base offset for PopoverViewController + 56));

  return sub_1C59261FC(v3);
}

uint64_t View.popover<A>(isPresented:permittedArrowDirections:isDismissable:passthroughViews:containerView:onAppear:onDismiss:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, void *a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *&v18 = a1;
  *(&v18 + 1) = a2;
  LOBYTE(v19) = a3;
  *(&v19 + 1) = a4;
  LOBYTE(v20) = a5;
  *(&v20 + 1) = a6;
  *&v21 = a7;
  *(&v21 + 1) = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v15 = a7;

  sub_1C5974668(a8);
  sub_1C5974668(*(&a9 + 1));
  v16 = type metadata accessor for PopoverViewModifier();

  MEMORY[0x1C694E550](&v18, a12, v16, a14);
  v25[4] = v22;
  v25[5] = v23;
  v26 = v24;
  v25[0] = v18;
  v25[1] = v19;
  v25[2] = v20;
  v25[3] = v21;
  return (*(*(v16 - 8) + 8))(v25, v16);
}

id sub_1C59A39B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1913A0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = (v33 - v9);
  v10 = *((v6 & v5) + 0x50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = v33 - v12;
  v14 = *((v6 & v5) + 0x58);
  v15 = type metadata accessor for AXPopoverContainer();
  MEMORY[0x1EEE9AC00](v15);
  v35 = v33 - v16;
  *(v3 + qword_1EC191180) = 2;
  v17 = (v3 + qword_1EC1911A0);
  *v17 = 0;
  v17[1] = 0;
  v18 = v3 + qword_1EC191198;
  v19 = *(a1 + 80);
  *(v18 + 4) = *(a1 + 64);
  *(v18 + 5) = v19;
  *(v18 + 12) = *(a1 + 96);
  v20 = *(a1 + 16);
  *v18 = *a1;
  *(v18 + 1) = v20;
  v21 = *(a1 + 48);
  *(v18 + 2) = *(a1 + 32);
  *(v18 + 3) = v21;
  swift_getWitnessTable();
  v22 = sub_1C5BC91C4();
  v23 = *(v11 + 16);
  v33[1] = v22;
  v34 = v23;
  v23(v13, v37, v10);
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v10;
  *(v25 + 24) = v14;
  (*(v11 + 32))(v25 + v24, v13, v10);
  v26 = v36;
  sub_1C59A09C4(v36);
  v27 = v26;
  v28 = v35;
  sub_1C59A56EC(v27, v35);
  v29 = (v28 + *(v15 + 36));
  *v29 = sub_1C59A56AC;
  v29[1] = v25;
  v30 = type metadata accessor for Popover();
  (*(*(v30 - 8) + 16))(v39, a1, v30);
  *(v3 + qword_1EC191188) = sub_1C5BC9194();
  sub_1C5BC91C4();
  v34(v13, v37, v10);
  *(v3 + qword_1EC191190) = sub_1C5BC9194();
  v31 = type metadata accessor for Popover.Coordinator();
  v38.receiver = v3;
  v38.super_class = v31;
  return objc_msgSendSuper2(&v38, sel_init);
}

uint64_t sub_1C59A3DBC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 40);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C59A3E3C(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PopoverViewController + 40);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1C59A27EC(v4);
}

uint64_t sub_1C59A3EDC()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 56);
  swift_beginAccess();
  return *v1;
}

void *sub_1C59A3F60(uint64_t a1, void *a2, int8x16_t *a3)
{
  v4 = v3;
  v66 = a1;
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x1E69E7D40];
  v65 = (*MEMORY[0x1E69E7D40] & *v4);
  v8 = sub_1C5BC9804();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v65[class metadata base offset for PopoverViewController];
  v11 = *&v65[class metadata base offset for PopoverViewController];
  v12 = sub_1C5BC8AB4();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v58 - v14;
  v15 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v58 - v16;
  *(v4 + *(v10 + 3)) = 1;
  *(v4 + *((*v7 & *v4) + class metadata base offset for PopoverViewController + 32)) = 1;
  v18 = *((*v7 & *v4) + class metadata base offset for PopoverViewController + 40);
  *(v4 + v18) = 0;
  v19 = (v4 + *((*v7 & *v4) + class metadata base offset for PopoverViewController + 48));
  v20 = a3[1];
  v62 = *a3;
  v63 = v20;
  v22 = *MEMORY[0x1E69DDCE0];
  v61 = *(MEMORY[0x1E69DDCE0] + 16);
  v21 = v61;
  v60 = v22;
  *v19 = v22;
  v19[1] = v21;
  v23 = (v4 + *((*v7 & *v4) + class metadata base offset for PopoverViewController + 56));
  *v23 = 0;
  v23[1] = 0;
  swift_beginAccess();
  *(v4 + v18) = a2;
  if (a3[2].i8[0])
  {
    v24 = -1;
  }

  else
  {
    v24 = 0;
  }

  v25 = vdupq_n_s64(v24);
  v62 = vbslq_s8(v25, v60, v62);
  v63 = vbslq_s8(v25, v61, v63);
  swift_beginAccess();
  v26 = v63;
  *v19 = v62;
  v19[1] = v26;
  sub_1C5BC91C4();
  (*(v15 + 16))(v17, v66, v11);
  v63.i64[0] = a2;
  v65 = a2;
  v27 = sub_1C5BC9194();
  *(v4 + *((*v7 & *v4) + class metadata base offset for PopoverViewController + 16)) = v27;
  v28 = v27;
  sub_1C5BC9164();

  MEMORY[0x1C694E550]();
  v29 = sub_1C5BC91A4();
  sub_1C5BC97F4();
  sub_1C5BC9174();
  sub_1C5BC9164();
  [v29 setPreferredContentSize_];
  [v29 setModalPresentationStyle_];
  v30 = [v29 popoverPresentationController];

  if (v30)
  {
    [v30 setDelegate_];
  }

  v31 = [v29 popoverPresentationController];
  v32 = v65;
  [v31 setSourceView_];

  v33 = [v29 popoverPresentationController];
  if (v33)
  {
    v34 = v33;
    if (v63.i64[0])
    {
      [v32 bounds];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v43 = (v29 + *((*v7 & *v29) + class metadata base offset for PopoverViewController + 48));
      swift_beginAccess();
      v44 = UIEdgeInsetsInsetRect(v36, v38, v40, v42, *v43, v43[1]);
    }

    else
    {
      v44 = 0.0;
      v45 = 0.0;
      v46 = 0.0;
      v47 = 0.0;
    }

    [v34 setSourceRect_];
  }

  if (!_UISolariumEnabled())
  {
    goto LABEL_14;
  }

  result = [v29 view];
  if (result)
  {
    v49 = result;
    v50 = [objc_opt_self() clearColor];
    [v49 setBackgroundColor_];

LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914D0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1C5BD21E0;
    v52 = sub_1C5BC7E34();
    v53 = MEMORY[0x1E69DC2B0];
    *(v51 + 32) = v52;
    *(v51 + 40) = v53;
    v54 = sub_1C5BC7E14();
    v55 = MEMORY[0x1E69DC130];
    *(v51 + 48) = v54;
    *(v51 + 56) = v55;
    v56 = sub_1C5BC7DF4();
    v57 = MEMORY[0x1E69DC0C8];
    *(v51 + 64) = v56;
    *(v51 + 72) = v57;
    *(swift_allocObject() + 16) = ObjectType;
    sub_1C5BCB554();
    swift_unknownObjectRelease();

    return v29;
  }

  __break(1u);
  return result;
}

void _s11MediaCoreUI21PopoverViewControllerC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PopoverViewController + 24)) = 1;
  *(v0 + *((*v1 & *v0) + class metadata base offset for PopoverViewController + 32)) = 1;
  *(v0 + *((*v1 & *v0) + class metadata base offset for PopoverViewController + 40)) = 0;
  v2 = (v0 + *((*v1 & *v0) + class metadata base offset for PopoverViewController + 48));
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  v2[1] = v3;
  v4 = (v0 + *((*v1 & *v0) + class metadata base offset for PopoverViewController + 56));
  *v4 = 0;
  v4[1] = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

uint64_t sub_1C59A482C()
{
  result = sub_1C59A3EDC();
  if (result)
  {
    v1 = result;

    v1(v2);

    return sub_1C59261FC(v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PopoverHostingControllerModifier(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PopoverHostingControllerModifier(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t dispatch thunk of PopoverViewController.__allocating_init(rootView:sourceView:sourceRectInsets:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + class metadata base offset for PopoverViewController + 208);
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v5;
  return v4(a1, a2, v8);
}

unint64_t sub_1C59A5208()
{
  result = qword_1EC191308;
  if (!qword_1EC191308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191160);
    sub_1C5924F54(&qword_1EC191310, &unk_1EC191170);
    sub_1C5924F54(qword_1EC191318, &qword_1EC191168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191308);
  }

  return result;
}

uint64_t sub_1C59A52EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_So6UIViewCIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

void sub_1C59A5384()
{
  sub_1C59A5448();
  if (v0 <= 0x3F)
  {
    sub_1C5927B74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C59A5448()
{
  if (!qword_1EC191428[0])
  {
    sub_1C5BC9114();
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, qword_1EC191428);
    }
  }
}

uint64_t sub_1C59A54A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59A54DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C59A5524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C59A5644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59A56EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1913A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C59A57CC()
{
  result = qword_1EC1914D8;
  if (!qword_1EC1914D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1914D8);
  }

  return result;
}

uint64_t sub_1C59A5830@<X0>(_BYTE *a1@<X8>)
{
  sub_1C599DCB8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t MCUINamespace<A>.debugPadding(_:_:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v7[0] = a1;
  v8 = a4;
  KeyPath = swift_getKeyPath();
  v10 = 0;
  v11 = swift_getKeyPath();
  v12 = 0;
  MEMORY[0x1C694E550](v7, *(a2 + 16), &type metadata for DebugPaddingModifier, a3);
}

uint64_t MCUINamespace<A>.debugPadding(_:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1C5BC9894();

  return MCUINamespace<A>.debugPadding(_:_:)(v6, a1, a2, a3);
}

uint64_t sub_1C59A5A40(void (*a1)(void))
{
  a1();
  sub_1C5BC8F44();
  return v2;
}

uint64_t sub_1C59A5A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();

  return sub_1C5BC8F54();
}

unint64_t sub_1C59A5AEC()
{
  result = qword_1EC191550;
  if (!qword_1EC191550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191550);
  }

  return result;
}

uint64_t sub_1C59A5B40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C59A5B88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C59A5C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BCAA54();
  v7 = v6;
  sub_1C59A5F30(v2, &v40);
  v48 = v42;
  v49 = v43;
  v50 = v44;
  v51 = v45;
  v46 = v40;
  v47 = v41;
  *&v52 = v5;
  *(&v52 + 1) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191558);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191560) + 36));
  v10 = v51;
  v9[4] = v50;
  v9[5] = v10;
  v9[6] = v52;
  v11 = v47;
  *v9 = v46;
  v9[1] = v11;
  v12 = v49;
  v9[2] = v48;
  v9[3] = v12;
  v53[0] = v40;
  v53[1] = v41;
  v53[4] = v44;
  v53[5] = v45;
  v53[2] = v42;
  v53[3] = v43;
  v54 = v5;
  v55 = v7;
  sub_1C59400B0(&v46, &v38, &qword_1EC191568);
  sub_1C5924EF4(v53, &qword_1EC191568);
  LOBYTE(v5) = *v2;
  sub_1C5BC8174();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191570) + 36);
  *v21 = v5;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = sub_1C5BCAA54();
  v24 = v23;
  v38 = *(v2 + 16);
  v39 = *(v2 + 24);
  *&v40 = *(v2 + 32);
  BYTE8(v40) = *(v2 + 40);
  v25 = swift_allocObject();
  v26 = *(v2 + 16);
  v25[1] = *v2;
  v25[2] = v26;
  *(v25 + 41) = *(v2 + 25);
  v27 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191578) + 36));
  *v27 = sub_1C59A7AD0;
  v27[1] = v25;
  v27[2] = v22;
  v27[3] = v24;
  sub_1C59400B0(&v38, v37, &qword_1EC190FB8);
  sub_1C59400B0(&v40, v37, &qword_1EC190FB8);
  v28 = sub_1C5BCAA54();
  v30 = v29;
  v31 = swift_allocObject();
  v32 = *(v2 + 16);
  v31[1] = *v2;
  v31[2] = v32;
  *(v31 + 41) = *(v2 + 25);
  v33 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191580) + 36));
  *v33 = sub_1C59A7AD8;
  v33[1] = v31;
  v33[2] = v28;
  v33[3] = v30;
  KeyPath = swift_getKeyPath();
  v35 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191588) + 36);
  *v35 = KeyPath;
  *(v35 + 8) = 1;
  sub_1C59400B0(&v38, v37, &qword_1EC190FB8);
  return sub_1C59400B0(&v40, v37, &qword_1EC190FB8);
}

double sub_1C59A5F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCA484();
  v9 = *(a1 + 32);
  v17 = v9;
  v18 = *(a1 + 40);
  if (v18 == 1)
  {
    v16 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v17, &qword_1EC190FB8);
    (*(v5 + 8))(v7, v4);
    v9 = v16;
  }

  sub_1C59A60FC(v9, v8, v14);

  v11 = v14[3];
  *(a2 + 32) = v14[2];
  *(a2 + 48) = v11;
  *(a2 + 64) = v14[4];
  *(a2 + 80) = v15;
  result = *v14;
  v13 = v14[1];
  *a2 = v14[0];
  *(a2 + 16) = v13;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_1C59A60FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C5BC83C4();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;

  v12 = sub_1C5BCAA54();
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v13 = *v29;
  v14 = *&v29[16];
  v36 = *v29;
  v37 = *&v29[16];
  v35[0] = v33[0];
  v35[1] = v31;
  *&v38 = v12;
  *(&v38 + 1) = v15;
  v16 = v31;
  *(a3 + 8) = v33[0];
  v17 = v37;
  *(a3 + 72) = v38;
  v18 = v36;
  *(a3 + 56) = v17;
  *a3 = a2;
  *(a3 + 40) = v18;
  *(a3 + 24) = v16;
  v39[2] = v13;
  v39[3] = v14;
  v39[0] = v27;
  v39[1] = v28;
  v40 = v12;
  v41 = v15;
  sub_1C59400B0(v33, v20, &qword_1EC1915C0);

  sub_1C59400B0(v35, v20, &qword_1EC1915C8);
  sub_1C5924EF4(v39, &qword_1EC1915C8);
  *v20 = v7;
  *&v20[1] = v6;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a1;
  v26 = 256;
  return sub_1C5924EF4(v20, &qword_1EC1915C0);
}

double sub_1C59A62B0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  LOBYTE(v136) = 0;
  LOBYTE(v121) = 0;
  LOBYTE(v118[0]) = 0;
  *&v150[7] = v88;
  *&v150[23] = v89;
  *&v150[39] = v90;
  *&v91 = v3;
  *(&v91 + 1) = KeyPath;
  LOBYTE(v92) = 0;
  *(&v92 + 1) = v5;
  LOBYTE(v93) = 0;
  *(&v93 + 1) = v6;
  v94[0] = 0;
  *&v94[48] = *(&v90 + 1);
  *&v94[33] = *&v150[32];
  *&v94[17] = *&v150[16];
  *&v94[1] = *v150;
  v44 = sub_1C5BCA484();
  v7 = sub_1C5BCAA64();
  v9 = v8;
  v85 = *&v94[16];
  v86 = *&v94[32];
  v87 = *&v94[48];
  v81 = v91;
  v82 = v92;
  v83 = v93;
  v84 = *v94;
  sub_1C59400B0(&v91, v150, &qword_1EC191598);
  sub_1C59A6D28(&v81, MEMORY[0x1E6980D38], &v136);
  v95[8] = v144;
  v95[9] = v145;
  v95[10] = v146;
  v95[4] = v140;
  v95[5] = v141;
  v95[7] = v143;
  v95[6] = v142;
  v95[0] = v136;
  v95[1] = v137;
  v95[3] = v139;
  v95[2] = v138;
  v181 = v144;
  v182 = v145;
  v177 = v140;
  v178 = v141;
  v180 = v143;
  v179 = v142;
  v173 = v136;
  v174 = v137;
  *&v96 = v7;
  *(&v96 + 1) = v9;
  v176 = v139;
  v175 = v138;
  v183 = v146;
  v184 = v96;
  v97[8] = v144;
  v97[9] = v145;
  v97[10] = v146;
  v97[4] = v140;
  v97[5] = v141;
  v97[7] = v143;
  v97[6] = v142;
  v97[0] = v136;
  v97[1] = v137;
  v97[3] = v139;
  v97[2] = v138;
  v98 = v7;
  v99 = v9;
  sub_1C59400B0(v95, v150, &qword_1EC1915A0);
  sub_1C5924EF4(v97, &qword_1EC1915A0);
  v100[4] = v85;
  v100[5] = v86;
  v101 = v87;
  v100[0] = v81;
  v100[1] = v82;
  v100[3] = v84;
  v100[2] = v83;
  sub_1C5924EF4(v100, &qword_1EC191598);
  v10 = sub_1C5BCAA74();
  v12 = v11;
  v78 = *&v94[16];
  v79 = *&v94[32];
  v80 = *&v94[48];
  v74 = v91;
  v75 = v92;
  v76 = v93;
  v77 = *v94;
  sub_1C59400B0(&v91, v150, &qword_1EC191598);
  sub_1C59A6D28(&v74, MEMORY[0x1E6980D40], &v136);
  v102[8] = v144;
  v102[9] = v145;
  v102[10] = v146;
  v102[4] = v140;
  v102[5] = v141;
  v102[7] = v143;
  v102[6] = v142;
  v102[0] = v136;
  v102[1] = v137;
  v102[3] = v139;
  v102[2] = v138;
  v169 = v144;
  v170 = v145;
  v165 = v140;
  v166 = v141;
  v168 = v143;
  v167 = v142;
  v161 = v136;
  v162 = v137;
  *&v103 = v10;
  *(&v103 + 1) = v12;
  v164 = v139;
  v163 = v138;
  v171 = v146;
  v172 = v103;
  v104[8] = v144;
  v104[9] = v145;
  v104[10] = v146;
  v104[4] = v140;
  v104[5] = v141;
  v104[7] = v143;
  v104[6] = v142;
  v104[0] = v136;
  v104[1] = v137;
  v104[3] = v139;
  v104[2] = v138;
  v105 = v10;
  v106 = v12;
  sub_1C59400B0(v102, v150, &qword_1EC1915A0);
  sub_1C5924EF4(v104, &qword_1EC1915A0);
  v107[4] = v78;
  v107[5] = v79;
  v108 = v80;
  v107[0] = v74;
  v107[1] = v75;
  v107[3] = v77;
  v107[2] = v76;
  sub_1C5924EF4(v107, &qword_1EC191598);
  v13 = sub_1C5BCAA34();
  v15 = v14;
  v71 = *&v94[16];
  v72 = *&v94[32];
  v73 = *&v94[48];
  v67 = v91;
  v68 = v92;
  v69 = v93;
  v70 = *v94;
  sub_1C59400B0(&v91, v150, &qword_1EC191598);
  sub_1C59A6FB0(&v67, MEMORY[0x1E6980D28], &v121);
  v109[10] = v131;
  v109[11] = v132;
  v109[6] = v127;
  v109[7] = v128;
  v109[9] = v130;
  v109[8] = v129;
  v109[2] = v123;
  v109[3] = v124;
  v109[5] = v126;
  v109[4] = v125;
  v109[1] = v122;
  v109[0] = v121;
  *&v110 = v133;
  *(&v110 + 1) = v13;
  v157 = v131;
  v158 = v132;
  v153 = v127;
  v154 = v128;
  v155 = v129;
  v156 = v130;
  *&v150[32] = v123;
  *&v150[48] = v124;
  v151 = v125;
  v152 = v126;
  *v150 = v121;
  *&v150[16] = v122;
  v159 = v110;
  v112[10] = v131;
  v112[11] = v132;
  v112[6] = v127;
  v112[7] = v128;
  v112[9] = v130;
  v112[8] = v129;
  v112[2] = v123;
  v112[3] = v124;
  v112[5] = v126;
  v112[4] = v125;
  v111 = v15;
  v160 = v15;
  v112[1] = v122;
  v112[0] = v121;
  v113 = v133;
  v114 = v13;
  v115 = v15;
  sub_1C59400B0(v109, &v136, &qword_1EC1915A8);
  sub_1C5924EF4(v112, &qword_1EC1915A8);
  v116[4] = v71;
  v116[5] = v72;
  v117 = v73;
  v116[0] = v67;
  v116[1] = v68;
  v116[3] = v70;
  v116[2] = v69;
  sub_1C5924EF4(v116, &qword_1EC191598);
  v16 = sub_1C5BCAA44();
  v18 = v17;
  v64 = *&v94[16];
  v65 = *&v94[32];
  v66 = *&v94[48];
  v60 = v91;
  v61 = v92;
  v62 = v93;
  v63 = *v94;
  sub_1C59400B0(&v91, &v136, &qword_1EC191598);
  sub_1C59A6FB0(&v60, MEMORY[0x1E6980D30], &v47);
  sub_1C5924EF4(&v91, &qword_1EC191598);
  v118[10] = v57;
  v118[11] = v58;
  v118[6] = v53;
  v118[7] = v54;
  v118[9] = v56;
  v118[8] = v55;
  v118[2] = v49;
  v118[3] = v50;
  v118[5] = v52;
  v118[4] = v51;
  v118[1] = v48;
  v118[0] = v47;
  *&v119 = v59;
  *(&v119 + 1) = v16;
  v146 = v57;
  v147 = v58;
  v142 = v53;
  v143 = v54;
  v144 = v55;
  v145 = v56;
  v138 = v49;
  v139 = v50;
  v140 = v51;
  v141 = v52;
  v136 = v47;
  v137 = v48;
  v148 = v119;
  v131 = v57;
  v132 = v58;
  v127 = v53;
  v128 = v54;
  v130 = v56;
  v129 = v55;
  v123 = v49;
  v124 = v50;
  v126 = v52;
  v125 = v51;
  v120 = v18;
  v149 = v18;
  v122 = v48;
  v121 = v47;
  v133 = v59;
  v134 = v16;
  v135 = v18;
  sub_1C59400B0(v118, v45, &qword_1EC1915A8);
  sub_1C5924EF4(&v121, &qword_1EC1915A8);
  v45[4] = v64;
  v45[5] = v65;
  v46 = v66;
  v45[0] = v60;
  v45[1] = v61;
  v45[2] = v62;
  v45[3] = v63;
  sub_1C5924EF4(v45, &qword_1EC191598);
  *a2 = v44;
  v19 = v182;
  *(a2 + 136) = v181;
  *(a2 + 152) = v19;
  v20 = v184;
  *(a2 + 168) = v183;
  *(a2 + 184) = v20;
  v21 = v178;
  *(a2 + 72) = v177;
  *(a2 + 88) = v21;
  v22 = v180;
  *(a2 + 104) = v179;
  *(a2 + 120) = v22;
  v23 = v174;
  *(a2 + 8) = v173;
  *(a2 + 24) = v23;
  v24 = v176;
  *(a2 + 40) = v175;
  *(a2 + 56) = v24;
  v25 = v170;
  *(a2 + 328) = v169;
  *(a2 + 344) = v25;
  v26 = v172;
  *(a2 + 360) = v171;
  *(a2 + 376) = v26;
  v27 = v166;
  *(a2 + 264) = v165;
  *(a2 + 280) = v27;
  v28 = v168;
  *(a2 + 296) = v167;
  *(a2 + 312) = v28;
  v29 = v162;
  *(a2 + 200) = v161;
  *(a2 + 216) = v29;
  v30 = v164;
  *(a2 + 232) = v163;
  *(a2 + 248) = v30;
  v31 = v158;
  *(a2 + 552) = v157;
  *(a2 + 568) = v31;
  *(a2 + 584) = v159;
  *(a2 + 600) = v160;
  v32 = v154;
  *(a2 + 488) = v153;
  *(a2 + 504) = v32;
  v33 = v156;
  *(a2 + 520) = v155;
  *(a2 + 536) = v33;
  v34 = *&v150[48];
  *(a2 + 424) = *&v150[32];
  *(a2 + 440) = v34;
  v35 = v152;
  *(a2 + 456) = v151;
  *(a2 + 472) = v35;
  v36 = *&v150[16];
  *(a2 + 392) = *v150;
  *(a2 + 408) = v36;
  v37 = v147;
  *(a2 + 768) = v146;
  *(a2 + 784) = v37;
  *(a2 + 800) = v148;
  *(a2 + 816) = v149;
  v38 = v143;
  *(a2 + 704) = v142;
  *(a2 + 720) = v38;
  v39 = v145;
  *(a2 + 736) = v144;
  *(a2 + 752) = v39;
  v40 = v139;
  *(a2 + 640) = v138;
  *(a2 + 656) = v40;
  v41 = v141;
  *(a2 + 672) = v140;
  *(a2 + 688) = v41;
  result = *&v136;
  v43 = v137;
  *(a2 + 608) = v136;
  *(a2 + 624) = v43;
  *(a2 + 824) = 0;
  return result;
}

__n128 sub_1C59A6D28@<Q0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1C5BC9884();
  sub_1C5BC98D4();
  if (sub_1C5BC98D4() == v6 || (v7 = a2(), sub_1C5BC98D4(), sub_1C5BC98D4() == v7))
  {
    v24 = sub_1C5BCA484();
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    v8 = v51;
    v9 = v53;
    v10 = v55;
    v11 = v56;
    v12 = sub_1C5BCAA54();
    v13 = *(a1 + 80);
    v29 = *(a1 + 64);
    v30 = v13;
    v31 = *(a1 + 96);
    v14 = *(a1 + 16);
    v26[0] = *a1;
    v26[1] = v14;
    v15 = *(a1 + 48);
    v27 = *(a1 + 32);
    v28 = v15;
    v35[0] = v26[0];
    v35[1] = v14;
    v35[2] = v27;
    v35[3] = v15;
    v35[4] = v29;
    v35[5] = v13;
    v32[3] = v15;
    v32[4] = v29;
    v32[5] = v13;
    v32[1] = v14;
    v32[2] = v27;
    v32[0] = v26[0];
    *&v33 = v31;
    *(&v33 + 1) = v12;
    v34 = v16;
    LOBYTE(v47) = v52;
    v25 = v54;
    v46 = v16;
    v41 = v27;
    v42 = v15;
    v39 = v26[0];
    v40 = v14;
    v43 = v29;
    v44 = v13;
    v45 = v33;
    v36 = v31;
    v37 = v12;
    v38 = v16;
    sub_1C59400B0(v26, &v57, &qword_1EC191598);
    sub_1C59400B0(v32, &v57, &qword_1EC1915B8);
    sub_1C5924EF4(v35, &qword_1EC1915B8);
    *&v50[72] = v43;
    *&v50[88] = v44;
    *&v50[104] = v45;
    *&v50[8] = v39;
    *&v50[24] = v40;
    *&v50[40] = v41;
    v17 = v47;
    *&v47 = v24;
    *(&v47 + 1) = v8;
    LOBYTE(v48) = v17;
    *(&v48 + 1) = v9;
    LOBYTE(v49) = v25;
    *(&v49 + 1) = v10;
    *v50 = v11;
    *&v50[120] = v46;
    *&v50[56] = v42;
    CGSizeMake(&v47, v18);
    v65 = *&v50[80];
    v66 = *&v50[96];
    v67 = *&v50[112];
    v61 = *&v50[16];
    v62 = *&v50[32];
    v63 = *&v50[48];
    v64 = *&v50[64];
    v57 = v47;
    v58 = v48;
    v59 = v49;
    v60 = *v50;
  }

  else
  {
    sub_1C59A7B8C(&v57);
  }

  v19 = v66;
  *(a3 + 128) = v65;
  *(a3 + 144) = v19;
  *(a3 + 160) = v67;
  v20 = v62;
  *(a3 + 64) = v61;
  *(a3 + 80) = v20;
  v21 = v64;
  *(a3 + 96) = v63;
  *(a3 + 112) = v21;
  v22 = v58;
  *a3 = v57;
  *(a3 + 16) = v22;
  result = v60;
  *(a3 + 32) = v59;
  *(a3 + 48) = result;
  return result;
}

__n128 sub_1C59A6FB0@<Q0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1C5BC98F4();
  sub_1C5BC98D4();
  if (sub_1C5BC98D4() == v6 || (v7 = a2(), sub_1C5BC98D4(), sub_1C5BC98D4() == v7))
  {
    v32 = sub_1C5BCA484();
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    v8 = v66;
    v30 = v68;
    v31 = v64;
    v29 = v69;
    v9 = sub_1C5BCAA54();
    v11 = v10;
    v12 = *(a1 + 80);
    v34[4] = *(a1 + 64);
    v34[5] = v12;
    v35 = *(a1 + 96);
    v13 = *(a1 + 16);
    v34[0] = *a1;
    v34[1] = v13;
    v14 = *(a1 + 48);
    v34[2] = *(a1 + 32);
    v34[3] = v14;
    sub_1C5BCABD4();
    v15 = *(a1 + 80);
    v43 = *(a1 + 64);
    v44 = v15;
    v16 = *(a1 + 96);
    v17 = *(a1 + 16);
    v40[0] = *a1;
    v40[1] = v17;
    v18 = *(a1 + 48);
    v41 = *(a1 + 32);
    v42 = v18;
    v36[0] = v40[0];
    v36[1] = v17;
    v36[2] = v41;
    v36[4] = v43;
    v36[5] = v15;
    v36[3] = v18;
    *&v37 = v16;
    *(&v37 + 1) = 0xBFF921FB54442D18;
    *&v38 = v19;
    *(&v38 + 1) = v20;
    *&v39 = v9;
    *(&v39 + 1) = v11;
    LOBYTE(v60) = v65;
    v33 = v67;
    v53 = v41;
    v54 = v18;
    v51 = v40[0];
    v52 = v17;
    v58 = v38;
    v59 = v39;
    v56 = v15;
    v57 = v37;
    v55 = v43;
    v45 = v16;
    v46 = 0xBFF921FB54442D18;
    v47 = v19;
    v48 = v20;
    v49 = v9;
    v50 = v11;
    sub_1C59400B0(v34, &v70, &qword_1EC191598);
    sub_1C59400B0(v36, &v70, &qword_1EC1915B0);
    sub_1C5924EF4(v40, &qword_1EC1915B0);
    *&v63[88] = v56;
    *&v63[104] = v57;
    *&v63[120] = v58;
    *&v63[136] = v59;
    *&v63[24] = v52;
    *&v63[40] = v53;
    *&v63[56] = v54;
    *&v63[72] = v55;
    v21 = v60;
    *&v60 = v32;
    *(&v60 + 1) = v31;
    v61.n128_u8[0] = v21;
    v61.n128_u64[1] = v8;
    LOBYTE(v62) = v33;
    *(&v62 + 1) = v30;
    *v63 = v29;
    *&v63[8] = v51;
    CGSizeMake(&v60, v22);
    v80 = *&v63[112];
    v81 = *&v63[128];
    v82 = *&v63[144];
    v76 = *&v63[48];
    v77 = *&v63[64];
    v78 = *&v63[80];
    v79 = *&v63[96];
    v72 = v62;
    v73 = *v63;
    v74 = *&v63[16];
    v75 = *&v63[32];
    v70 = v60;
    v71 = v61;
  }

  else
  {
    sub_1C59A7B68(&v70);
  }

  v23 = v81;
  *(a3 + 160) = v80;
  *(a3 + 176) = v23;
  *(a3 + 192) = v82;
  v24 = v77;
  *(a3 + 96) = v76;
  *(a3 + 112) = v24;
  v25 = v79;
  *(a3 + 128) = v78;
  *(a3 + 144) = v25;
  v26 = v73;
  *(a3 + 32) = v72;
  *(a3 + 48) = v26;
  v27 = v75;
  *(a3 + 64) = v74;
  *(a3 + 80) = v27;
  result = v71;
  *a3 = v70;
  *(a3 + 16) = result;
  return result;
}

__n128 sub_1C59A72D8@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BCA484();
  v5 = sub_1C5BCAA64();
  v7 = v6;
  sub_1C59A765C(a1, MEMORY[0x1E6980D38], &v70);
  v32[0] = v70;
  v32[1] = v71;
  v32[2] = v72;
  *&v33 = v73;
  *(&v33 + 1) = v5;
  v34 = v7;
  v35[0] = v70;
  v31 = v7;
  v29 = v72;
  v30 = v33;
  v27 = v70;
  v28 = v71;
  v35[1] = v71;
  v35[2] = v72;
  v36 = v73;
  v37 = v5;
  v38 = v7;
  sub_1C59400B0(v32, &v70, &qword_1EC191590);
  sub_1C5924EF4(v35, &qword_1EC191590);
  v8 = sub_1C5BCAA74();
  v10 = v9;
  sub_1C59A765C(a1, MEMORY[0x1E6980D40], &v70);
  v39[0] = v70;
  v39[1] = v71;
  v39[2] = v72;
  *&v40 = v73;
  *(&v40 + 1) = v8;
  v41 = v10;
  v42[0] = v70;
  v74 = v10;
  v73 = v40;
  v42[1] = v71;
  v42[2] = v72;
  v43 = v40;
  v44 = v8;
  v45 = v10;
  sub_1C59400B0(v39, &v65, &qword_1EC191590);
  sub_1C5924EF4(v42, &qword_1EC191590);
  v11 = sub_1C5BCAA34();
  v13 = v12;
  sub_1C59A7878(a1, MEMORY[0x1E6980D28], &v65);
  v46[0] = v65;
  v46[1] = v66;
  v46[2] = v67;
  *&v47 = v68;
  *(&v47 + 1) = v11;
  v48 = v13;
  v69 = v13;
  v68 = v47;
  v49[0] = v65;
  v49[1] = v66;
  v49[2] = v67;
  v50 = v47;
  v51 = v11;
  v52 = v13;
  sub_1C59400B0(v46, &v60, &qword_1EC191590);
  sub_1C5924EF4(v49, &qword_1EC191590);
  v14 = sub_1C5BCAA44();
  v16 = v15;
  sub_1C59A7878(a1, MEMORY[0x1E6980D30], &v60);
  v17 = v63;
  v53[0] = v60;
  v53[1] = v61;
  v53[2] = v62;
  *&v54 = v63;
  *(&v54 + 1) = v14;
  v55 = v16;
  v64 = v16;
  v63 = v54;
  v56[0] = v60;
  v56[1] = v61;
  v56[2] = v62;
  v57 = v17;
  v58 = v14;
  v59 = v16;
  sub_1C59400B0(v53, v26, &qword_1EC191590);
  sub_1C5924EF4(v56, &qword_1EC191590);
  v18 = v27;
  *(a2 + 24) = v28;
  v19 = v30;
  *(a2 + 40) = v29;
  *(a2 + 56) = v19;
  *(a2 + 8) = v18;
  v20 = v73;
  *(a2 + 112) = v72;
  *(a2 + 128) = v20;
  v21 = v71;
  *(a2 + 80) = v70;
  *(a2 + 96) = v21;
  v22 = v65;
  *(a2 + 168) = v66;
  v23 = v68;
  *(a2 + 184) = v67;
  *a2 = v4;
  *(a2 + 72) = v31;
  *(a2 + 144) = v74;
  *(a2 + 200) = v23;
  *(a2 + 216) = v69;
  *(a2 + 152) = v22;
  v24 = v63;
  *(a2 + 256) = v62;
  *(a2 + 272) = v24;
  *(a2 + 288) = v64;
  result = v61;
  *(a2 + 224) = v60;
  *(a2 + 240) = result;
  *(a2 + 296) = 0;
  return result;
}

uint64_t sub_1C59A765C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC9884();
  sub_1C5BC98D4();
  if (sub_1C5BC98D4() == v10 || (v11 = a2(), sub_1C5BC98D4(), result = sub_1C5BC98D4(), result == v11))
  {
    v27 = *(a1 + 24);
    v13 = *(a1 + 16);
    v26 = v13;
    v14 = v27;

    if ((v14 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v15 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v26, &qword_1EC190FB8);
      (*(v7 + 8))(v9, v6);
      v13 = v21;
    }

    sub_1C5BCAA54();
    result = sub_1C5BC85D4();
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
  }

  else
  {
    v13 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0uLL;
  }

  *a3 = v13;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  return result;
}

uint64_t sub_1C59A7878@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC98F4();
  sub_1C5BC98D4();
  if (sub_1C5BC98D4() == v10 || (v11 = a2(), sub_1C5BC98D4(), result = sub_1C5BC98D4(), result == v11))
  {
    v27 = *(a1 + 24);
    v13 = *(a1 + 16);
    v26 = v13;
    v14 = v27;

    if ((v14 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v15 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v26, &qword_1EC190FB8);
      (*(v7 + 8))(v9, v6);
      v13 = v21;
    }

    sub_1C5BCAA54();
    result = sub_1C5BC85D4();
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
  }

  else
  {
    v13 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0uLL;
  }

  *a3 = v13;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  return result;
}

uint64_t sub_1C59A7AE0()
{
  result = sub_1C5BCA484();
  qword_1EC191540 = result;
  return result;
}

uint64_t sub_1C59A7B24()
{
  result = sub_1C5BCA484();
  qword_1EC191548 = result;
  return result;
}

double sub_1C59A7B68(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1C59A7B8C(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1C59A7BAC()
{
  result = qword_1EC1915D0;
  if (!qword_1EC1915D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1915D0);
  }

  return result;
}

unint64_t sub_1C59A7C00()
{
  result = qword_1EC1915D8;
  if (!qword_1EC1915D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1915D8);
  }

  return result;
}

unint64_t sub_1C59A7C74()
{
  result = qword_1EC1915E0;
  if (!qword_1EC1915E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191588);
    sub_1C59A7D2C();
    sub_1C5924F54(&qword_1EC191638, &qword_1EC191640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1915E0);
  }

  return result;
}

unint64_t sub_1C59A7D2C()
{
  result = qword_1EC1915E8;
  if (!qword_1EC1915E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191580);
    sub_1C59A7DE4();
    sub_1C5924F54(&qword_1EC191628, &qword_1EC191630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1915E8);
  }

  return result;
}

unint64_t sub_1C59A7DE4()
{
  result = qword_1EC1915F0;
  if (!qword_1EC1915F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191578);
    sub_1C59A7E9C();
    sub_1C5924F54(&qword_1EC191618, &qword_1EC191620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1915F0);
  }

  return result;
}

unint64_t sub_1C59A7E9C()
{
  result = qword_1EC1915F8;
  if (!qword_1EC1915F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191570);
    sub_1C59A7F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1915F8);
  }

  return result;
}

unint64_t sub_1C59A7F28()
{
  result = qword_1EC191600;
  if (!qword_1EC191600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191560);
    sub_1C5924F54(&qword_1EC191608, &qword_1EC191558);
    sub_1C5924F54(&qword_1EC191610, &qword_1EC191568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191600);
  }

  return result;
}

uint64_t NowPlayingViewModel.PlayerStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C59A809C()
{
  swift_getKeyPath();
  sub_1C59A8828();
  sub_1C5BC7B74();

  return *(v0 + 16);
}

uint64_t sub_1C59A810C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C59A8828();
    sub_1C5BC7B64();
  }

  return result;
}

void sub_1C59A81F4()
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5BC7D64();
  __swift_project_value_buffer(v0, qword_1EDA5DA78);

  oslog = sub_1C5BC7D44();
  v1 = sub_1C5BCB4F4();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v11 = v3;
    *v2 = 136446466;
    swift_getKeyPath();
    sub_1C59A8828();
    sub_1C5BC7B74();

    v4 = sub_1C5BCAEA4();
    v6 = sub_1C592ADA8(v4, v5, &v11);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2082;
    v7 = sub_1C5BCAEA4();
    v9 = sub_1C592ADA8(v7, v8, &v11);

    *(v2 + 14) = v9;
    _os_log_impl(&dword_1C5922000, oslog, v1, "Will update player style from %{public}s to %{public}s", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v3, -1, -1);
    MEMORY[0x1C69510F0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C59A841C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C59A8828();
  sub_1C5BC7B74();

  *a1 = *(v1 + 17);
  return result;
}

uint64_t sub_1C59A8494(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == *(v1 + 17))
  {
    sub_1C59A81F4();
    *(v1 + 17) = v2;
    swift_getKeyPath();
    sub_1C59A8828();
    sub_1C5BC7B74();

    return sub_1C5BC7F34();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C59A8828();
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C59A85D8(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  sub_1C59A81F4();
  *(a1 + 17) = v3;
  swift_getKeyPath();
  sub_1C59A8828();
  sub_1C5BC7B74();

  return sub_1C5BC7F34();
}

uint64_t sub_1C59A8684()
{

  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel12Presentation___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s12PresentationCMa()
{
  result = qword_1EDA4AF60;
  if (!qword_1EDA4AF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C59A877C()
{
  result = sub_1C5BC7BB4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C59A8828()
{
  result = qword_1EDA4AF70;
  if (!qword_1EDA4AF70)
  {
    _s12PresentationCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4AF70);
  }

  return result;
}

uint64_t sub_1C59A88A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 9);

  if ((v10 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v9 = v18;
  }

  swift_getKeyPath();
  v18 = v9;
  sub_1C59A8828();
  sub_1C5BC7B74();

  v13 = *(v9 + 17);

  if ((v11 ^ v13))
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191648);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191650);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_1C59A8ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C59A8B24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_1C59A8B68@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t WaveformState.SamplingMode.ValueProvider.__allocating_init(value:)(double a1, double a2, double a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191658);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtCOO11MediaCoreUI13WaveformState12SamplingMode13ValueProvider__value;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  sub_1C5BC7FF4();
  (*(v11 + 32))(v14 + v15, v13, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v17 = a1;
  *(&v17 + 1) = a2;
  *&v18 = a3;
  *(&v18 + 1) = a4;
  v19 = *&a5;
  v20 = 0;

  sub_1C5BC8044();
  return v14;
}

uint64_t WaveformState.SamplingMode.ValueProvider.init(value:)(double a1, double a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191658);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  v15 = OBJC_IVAR____TtCOO11MediaCoreUI13WaveformState12SamplingMode13ValueProvider__value;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  sub_1C5BC7FF4();
  (*(v12 + 32))(v5 + v15, v14, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v17 = a1;
  *(&v17 + 1) = a2;
  *&v18 = a3;
  *(&v18 + 1) = a4;
  v19 = *&a5;
  v20 = 0;

  sub_1C5BC8044();
  return v5;
}

uint64_t sub_1C59A8F00()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5BC8044();
}

uint64_t WaveformState.SamplingMode.ValueProvider.init(fiveBarProvider:)(uint64_t a1)
{
  v1 = sub_1C59A9B20(a1);

  return v1;
}

__n128 sub_1C59A8FF4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_1C59A9024(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_allocObject();
  v4 = a2(a1);

  return v4;
}

uint64_t WaveformState.SamplingMode.ValueProvider.init(sixBarProvider:)(uint64_t a1)
{
  v1 = sub_1C59A9F9C(a1);

  return v1;
}

__n128 sub_1C59A90B4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = 1;
  return result;
}

double sub_1C59A90D0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  result = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t WaveformState.SamplingMode.ValueProvider.FiveBar.__allocating_init(value:)()
{
  v0 = swift_allocObject();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191668);
  sub_1C5BC7FF4();
  swift_endAccess();
  return v0;
}

uint64_t WaveformState.SamplingMode.ValueProvider.FiveBar.init(value:)()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191668);
  sub_1C5BC7FF4();
  swift_endAccess();
  return v0;
}

uint64_t WaveformState.SamplingMode.ValueProvider.FiveBar.update(to:)()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5BC8044();
}

double sub_1C59A9390@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t WaveformState.SamplingMode.ValueProvider.SixBar.__allocating_init(value:)()
{
  v0 = swift_allocObject();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191680);
  sub_1C5BC7FF4();
  swift_endAccess();
  return v0;
}

uint64_t WaveformState.SamplingMode.ValueProvider.SixBar.init(value:)()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191680);
  sub_1C5BC7FF4();
  swift_endAccess();
  return v0;
}

uint64_t WaveformState.SamplingMode.ValueProvider.SixBar.update(to:)()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5BC8044();
}

uint64_t sub_1C59A9678(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  return v2;
}

uint64_t sub_1C59A96F4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1C59A9790@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WaveformState.SamplingMode.ValueProvider(0);
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

double sub_1C59A97D0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1C59A9860()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5BC8044();
}

double sub_1C59A98FC@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  result = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1C59A9984()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5BC8044();
}

double sub_1C59A9A10@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C59A9A98()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5BC8044();
}

uint64_t sub_1C59A9B20(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916B8);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916E8);
  v13 = *(v12 - 8);
  v26 = v12;
  v27 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191658);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  v20 = OBJC_IVAR____TtCOO11MediaCoreUI13WaveformState12SamplingMode13ValueProvider__value;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  sub_1C5BC7FF4();
  (*(v17 + 32))(v2 + v20, v19, v16);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191670);
  sub_1C5BC8004();
  swift_endAccess();
  sub_1C5924F54(&qword_1EDA46860, &qword_1EC1916E0);
  sub_1C5BC8084();
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  sub_1C5BC8004();
  swift_endAccess();
  sub_1C5924F54(&qword_1EC1916F0, &qword_1EC1916E8);
  v21 = v26;
  sub_1C5BC8124();
  (*(v27 + 8))(v15, v21);
  v22 = v29;
  v23 = v30;
  (*(v29 + 16))(v28, v7, v30);
  swift_beginAccess();
  sub_1C5BC8014();
  swift_endAccess();
  (*(v22 + 8))(v7, v23);
  return v2;
}

uint64_t sub_1C59A9F9C(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916B8);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916C0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916C8);
  v13 = *(v12 - 8);
  v26 = v12;
  v27 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191658);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  v20 = OBJC_IVAR____TtCOO11MediaCoreUI13WaveformState12SamplingMode13ValueProvider__value;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  sub_1C5BC7FF4();
  (*(v17 + 32))(v2 + v20, v19, v16);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191688);
  sub_1C5BC8004();
  swift_endAccess();
  sub_1C5924F54(&qword_1EC1916D0, &qword_1EC1916C0);
  sub_1C5BC8084();
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  sub_1C5BC8004();
  swift_endAccess();
  sub_1C5924F54(&qword_1EC1916D8, &qword_1EC1916C8);
  v21 = v26;
  sub_1C5BC8124();
  (*(v27 + 8))(v15, v21);
  v22 = v29;
  v23 = v30;
  (*(v29 + 16))(v28, v7, v30);
  swift_beginAccess();
  sub_1C5BC8014();
  swift_endAccess();
  (*(v22 + 8))(v7, v23);
  return v2;
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI13WaveformStateO12SamplingModeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI13WaveformStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C59AA460(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C59AA4C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1C59AA514(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFD)
  {
    v2 = -2147483646;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 1;
  }

  *result = v2 + a2;
  return result;
}

uint64_t sub_1C59AA554(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C59AA5A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1C59AA604(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1C59AA65C()
{
  sub_1C59AA764();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C59AA764()
{
  if (!qword_1EDA46848)
  {
    v0 = sub_1C5BC8054();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46848);
    }
  }
}

void sub_1C59AA7F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  sub_1C59AA930(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C59AA930(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1C5BC8054();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C59AA98C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, double a5)
{
  v24 = a4;
  v9 = sub_1C5BC7D64();
  v23[0] = *(v9 - 8);
  v23[1] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916F8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - v15;
  (*(v14 + 16))(v23 - v15, a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, v16, v13);
  type metadata accessor for AudioTapQueueProcessor();
  swift_allocObject();
  v19 = sub_1C5A4EFB0(a2, a3, v24, sub_1C59AAF18, v18, a5);

  sub_1C5BCB224();
  v20 = sub_1C5BCB214();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v19;
  sub_1C5AD0FB8(0, 0, v12, &unk_1C5BD2F48, v21);
}

uint64_t sub_1C59AAE14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191708);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916F8);
  sub_1C5BCB234();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C59AAF18(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916F8);

  return sub_1C59AAE14(a1);
}

uint64_t sub_1C59AAF94(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1C5BCB214();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_1C5AD0FB8(0, 0, v5, &unk_1C5BD2F58, v7);
}

uint64_t sub_1C59AB0C0()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  sub_1C59AB370(v1 + 144, v0 + 16);
  v2 = *(v0 + 40);
  sub_1C5924EF4(v0 + 16, &qword_1EC191700);
  if (v2)
  {
    v3 = *(*(v0 + 96) + 112);
    if (v3)
    {
      AudioQueueStop(v3, 1u);
    }

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    swift_beginAccess();
    sub_1C59AB3E0(v0 + 16, v1 + 144);
    swift_endAccess();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C59AB1C0()
{
  v1 = v0[12];
  swift_beginAccess();
  sub_1C59AB370(v1 + 144, (v0 + 2));
  v2 = v0[5];
  sub_1C5924EF4((v0 + 2), &qword_1EC191700);
  if (!v2)
  {
    v3 = v0[12];
    v4 = *(v3 + 112);
    if (v4)
    {
      AudioQueueStart(v4, 0);
      v3 = v0[12];
    }

    v0[5] = type metadata accessor for AudioTapQueueProcessor();
    v0[2] = v3;
    swift_beginAccess();

    sub_1C59AB3E0((v0 + 2), v1 + 144);
    swift_endAccess();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C59AB2BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C59AB1A0(a1, v4, v5, v6);
}

uint64_t sub_1C59AB370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59AB3E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C59AB490(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C59AB0A0(a1, v4, v5, v6);
}

uint64_t sub_1C59AB544(uint64_t a1, double a2)
{
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v46 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v51 = &v46 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v50 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  if ((a1 & 0x100000000) != 0)
  {
    a1 = getpid();
  }

  v18 = log2(48000.0 / (a2 + COERCE_DOUBLE(1)));
  v19 = exp2(ceil(v18));
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v19 < 9.22337204e18)
  {
    if (qword_1EDA46940 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  swift_once();
LABEL_7:
  v20 = __swift_project_value_buffer(v4, qword_1EDA5DA48);
  v21 = *(v5 + 16);
  v46 = v20;
  v52 = v21;
  (v21)(v17);
  v22 = sub_1C5BC7D44();
  v23 = sub_1C5BCB4F4();
  v24 = os_log_type_enabled(v22, v23);
  v48 = v8;
  v49 = a1;
  v47 = v11;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 134349314;
    *(v25 + 4) = a1;
    *(v25 + 12) = 2082;
    v53 = 0;
    v54 = 0xE000000000000000;
    v55 = v26;
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0x5268736572666572, 0xED0000203A657461);
    sub_1C5BCB324();
    MEMORY[0x1C694F170](31304, 0xE200000000000000);
    v27 = sub_1C592ADA8(v53, v54, &v55);

    *(v25 + 14) = v27;
    _os_log_impl(&dword_1C5922000, v22, v23, "AudioTapSetup initialized for pid: %{public}ld, framing: %{public}s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1C69510F0](v26, -1, -1);
    MEMORY[0x1C69510F0](v25, -1, -1);
  }

  v28 = *(v5 + 8);
  v28(v17, v4);
  v29 = v46;
  v52(v50, v46, v4);
  sub_1C59AA984();
  sub_1C59AA984();
  v30 = sub_1C5BC7D44();
  v31 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 68157952;
    *(v32 + 8) = 2050;
    *(v32 + 10) = 0x40E7700000000000;
    _os_log_impl(&dword_1C5922000, v30, v31, "AudioTapSetup sampleRate: %{public}.*fHz", v32, 0x12u);
    MEMORY[0x1C69510F0](v32, -1, -1);
  }

  v33 = v19;

  v28(v50, v4);
  v52(v51, v29, v4);
  sub_1C59AA984();
  sub_1C59AA984();
  v34 = sub_1C5BC7D44();
  v35 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 68157952;
    *(v36 + 4) = 1;
    *(v36 + 8) = 2050;
    *(v36 + 10) = 48000.0 / v33;
    _os_log_impl(&dword_1C5922000, v34, v35, "AudioTapSetup actual refresh rate: %{public}.*fHz", v36, 0x12u);
    MEMORY[0x1C69510F0](v36, -1, -1);
  }

  v28(v51, v4);
  v37 = v47;
  v52(v47, v29, v4);
  v38 = sub_1C5BC7D44();
  v39 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134349056;
    *(v40 + 4) = v33;
    _os_log_impl(&dword_1C5922000, v38, v39, "AudioTapSetup frameCount: %{public}ld", v40, 0xCu);
    MEMORY[0x1C69510F0](v40, -1, -1);
  }

  v28(v37, v4);
  v41 = v48;
  v52(v48, v29, v4);
  v42 = sub_1C5BC7D44();
  v43 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134349312;
    *(v44 + 4) = v33 / 48000.0 * 1000.0;
    *(v44 + 12) = 2050;
    *(v44 + 14) = 48000.0 / v33;
    _os_log_impl(&dword_1C5922000, v42, v43, "AudioTapSetup FFT info: dt=%{public}f, df=%{public}f", v44, 0x16u);
    MEMORY[0x1C69510F0](v44, -1, -1);
  }

  v28(v41, v4);
  return v49;
}

uint64_t FittedTextStack.init(totalLineLimit:alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for FittedTextStack(0);
  sub_1C5BC9BA4();
  v13 = (a6 + *(v12 + 36));
  v14 = sub_1C5BCA684();
  *v13 = v17;
  v13[1] = v18;
  if (a1 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a1;
  }

  *a6 = v15;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  result = a5(v14);
  *(a6 + 32) = result;
  return result;
}

uint64_t FittedTextStack.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FittedTextStack(0);
  v5 = v4 - 8;
  v27[0] = *(v4 - 8);
  v6 = *(v27[0] + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1C5BC9BB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v2 + *(v5 + 40), v7);
  v11 = *v2;
  v12 = (v2 + *(v5 + 44));
  v13 = *v12;
  v14 = v12[1];
  v27[2] = v13;
  v27[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA694();
  v15 = v27[1];
  type metadata accessor for FittedTextHeightResolver(0);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_cache;
  *(v16 + v17) = sub_1C59AD25C(MEMORY[0x1E69E7CC0]);
  (*(v8 + 32))(v16 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_measurements, v10, v7);
  *(v16 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_availableLines) = v11;
  *(v16 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_containerWidth) = v15;
  v18 = *(v2 + 24);
  *a1 = *(v2 + 8);
  *(a1 + 16) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191738);
  sub_1C59AC080(v2, v16, a1 + *(v19 + 44));
  v20 = sub_1C5BCAA54();
  v22 = v21;
  swift_setDeallocating();
  (*(v8 + 8))(v16 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_measurements, v7);

  swift_deallocClassInstance();
  sub_1C59AEC94(v2, v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FittedTextStack);
  v23 = (*(v27[0] + 80) + 16) & ~*(v27[0] + 80);
  v24 = swift_allocObject();
  sub_1C59AD444(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191740);
  v26 = (a1 + *(result + 36));
  *v26 = sub_1C59AD4A8;
  v26[1] = v24;
  v26[2] = v20;
  v26[3] = v22;
  return result;
}

uint64_t sub_1C59AC080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v35[1] = a3;
  v4 = type metadata accessor for FittedText();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v39 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v10 = v35 - v9;
  v11 = *(a1 + 32);
  v37 = v11[2];
  if (!v37)
  {
    v14 = MEMORY[0x1E69E7CC8];
LABEL_17:
    v40 = v11;
    *(swift_allocObject() + 16) = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191878);
    sub_1C5BC7B04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191880);
    sub_1C5924F54(&qword_1EC191888, &qword_1EC191878);
    sub_1C59AED60();
    sub_1C59AEDDC();
    return sub_1C5BCA8B4();
  }

  v12 = 0;
  v35[0] = v7;
  v13 = &v10[*(v7 + 20)];
  v36 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v14 = MEMORY[0x1E69E7CC8];
  while (v12 < v11[2])
  {
    v15 = v8;
    v16 = *(v8 + 72);
    sub_1C59AEC94(v36 + v16 * v12, v10, type metadata accessor for FittedText);
    sub_1C59AC99C(*v13, *(v13 + 1), v13[16], *(v13 + 3), v10);
    v18 = v17;
    v19 = v39;
    sub_1C59AEC94(v10, v39, type metadata accessor for FittedText);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v14;
    v21 = sub_1C5AB6E44(v19);
    v23 = v14[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v14[3] < v26)
    {
      sub_1C5AF0E88(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1C5AB6E44(v39);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      v14 = v40;
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v33 = v21;
    sub_1C5AF48D0();
    v21 = v33;
    v14 = v40;
    if (v27)
    {
LABEL_3:
      *(v14[7] + 8 * v21) = v18;
      sub_1C59AECFC(v39);
      goto LABEL_4;
    }

LABEL_12:
    v14[(v21 >> 6) + 8] |= 1 << v21;
    v29 = v21;
    v30 = v39;
    sub_1C59AEC94(v39, v14[6] + v21 * v16, type metadata accessor for FittedText);
    *(v14[7] + 8 * v29) = v18;
    sub_1C59AECFC(v30);
    v31 = v14[2];
    v25 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v25)
    {
      goto LABEL_20;
    }

    v14[2] = v32;
LABEL_4:
    ++v12;
    sub_1C59AECFC(v10);
    v8 = v15;
    if (v37 == v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1C5BCBE84();
  __break(1u);
  return result;
}

unint64_t sub_1C59AC44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = type metadata accessor for FittedText();
  if (*(a2 + 16) && (v7 = result, v8 = a1 + *(result + 20), v9 = *v8, v10 = *(v8 + 8), v11 = *(v8 + 16), v12 = *(v8 + 24), result = sub_1C5AB6E44(a1), (v13 & 1) != 0) && *(*(a2 + 56) + 8 * result) > 0.0)
  {
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    LOBYTE(v17) = v11;
    *&v22 = v9;
    *(&v22 + 1) = v10;
    LOBYTE(v23) = v11;
    *(&v23 + 1) = v12;
    v14 = *(a1 + *(v7 + 28));
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v17 = v22;
    v18 = v23;
    sub_1C59AEE34(v9, v10, v11);

    sub_1C59400B0(&v22, &v16, &qword_1EC1918A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1918A0);
    sub_1C59AEE44();
    sub_1C5BCA804();
    v15 = v14();
    sub_1C59AEEC8(&v22);
  }

  else
  {
    v15 = 0;
  }

  *a3 = v15;
  return result;
}

uint64_t sub_1C59AC5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v32 = a3;
  v5 = sub_1C5BC86E4();
  v6 = *(v5 - 8);
  v30 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FittedTextStack(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1C5BCA484();
  v28 = type metadata accessor for FittedTextStack;
  sub_1C59AEC94(a2, v12, type metadata accessor for FittedTextStack);
  v27 = *(v6 + 16);
  v13 = a1;
  v14 = a1;
  v15 = v5;
  v27(v8, v13, v5);
  v16 = *(v10 + 80);
  v17 = (v16 + 16) & ~v16;
  v18 = *(v6 + 80);
  v19 = (v11 + v18 + v17) & ~v18;
  v26 = v16 | v18;
  v20 = swift_allocObject();
  v31 = v20;
  sub_1C59AD444(v12, v20 + v17);
  v25 = *(v6 + 32);
  v25(v20 + v19, v8, v15);
  v35 = v33;
  v36 = sub_1C59AEF30;
  v37 = v20;
  v38 = 0;
  v39 = 0;
  sub_1C5BC86C4();
  v34 = v21;
  sub_1C59AEC94(v29, v12, v28);
  v27(v8, v14, v15);
  v22 = swift_allocObject();
  sub_1C59AD444(v12, v22 + v17);
  v25(v22 + v19, v8, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191870);
  sub_1C59AEBBC();
  sub_1C59AEC40();
  sub_1C5BCA344();
}

uint64_t sub_1C59AC8E4()
{
  result = sub_1C5BC86C4();
  if (v1 != 0.0)
  {
    v2 = v1;
    type metadata accessor for FittedTextStack(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
    result = sub_1C5BCA694();
    if (v3 != v2)
    {
      return sub_1C5BCA6A4();
    }
  }

  return result;
}

uint64_t sub_1C59AC99C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v91 = a4;
  v90 = a3;
  v89 = a2;
  v82 = a1;
  v7 = sub_1C5BC7B04();
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v81 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917E8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = &v66 - v12;
  v80 = sub_1C5BC9B94();
  v13 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_cache;
  swift_beginAccess();
  v92 = v5;
  v16 = *(v5 + v15);
  if (*(v16 + 16))
  {

    v17 = sub_1C5AB6D70(a5);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      if (*(v19 + 16))
      {
        sub_1C5AB6EF8(*(v92 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_containerWidth));
        if (v20)
        {
        }
      }
    }
  }

  v71 = v15;
  v67 = v7;
  v22 = OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_measurements;
  v23 = sub_1C5BC9B54();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v79;
  v87 = v23;
  v86 = v25;
  v75 = v24 + 56;
  (v25)(v79, 1, 1);
  v27 = sub_1C5BC9C54();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v85 = v27;
  v84 = v29;
  v74 = v28 + 56;
  (v29)(v81, 1, 1);
  v30 = v78;
  sub_1C5BC9B84();
  v31 = v92;
  v88 = v22;
  sub_1C5BC9B74();
  v33 = v32;
  v35 = *(v13 + 8);
  v34 = v13 + 8;
  v76 = v34;
  v73 = v35;
  v35(v30, v80);
  v36 = *(type metadata accessor for FittedText() + 24);
  v70 = a5;
  v37 = a5 + v36;
  v38 = (v31 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_availableLines);
  if (*(v37 + 8))
  {
    v37 = v31 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_availableLines;
  }

  v39 = *v37;
  v40 = *v38;
  if (*v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = *v38;
  }

  v77 = OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_containerWidth;
  if (v41 >= 1)
  {
    v66 = (v31 + OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_availableLines);
    v42 = 0;
    v72 = v41;
    v43 = v41;
    v44 = 0.0;
    v45 = v73;
    while (1)
    {
      v83 = v42;
      v26 = v79;
      v30 = v75;
      v86(v79, 1, 1, v87);
      v46 = v81;
      v84(v81, 1, 1, v85);
      v47 = v78;
      sub_1C5BC9B84();
      sub_1C5BC9B74();
      v49 = v48;
      v34 = v80;
      v45(v47, v80);
      v86(v26, 1, 1, v87);
      v84(v46, 1, 1, v85);
      sub_1C5BC9B84();
      v50 = sub_1C5BC9B64();
      v45(v47, v34);
      if ((v50 & 0x8000000000000000) != 0)
      {
        break;
      }

      v42 = v83;
      if (v50 != v83)
      {
        v43 = v43 + 1.0;
        v42 = v50;
        v44 = v49;
        if (v50 < v72)
        {
          continue;
        }
      }

      v38 = v66;
      v40 = *v66;
      goto LABEL_19;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v42 = 0;
  v44 = 0.0;
LABEL_19:
  v51 = __OFSUB__(v40, v42);
  v52 = v40 - v42;
  v47 = v71;
  if (v51)
  {
    goto LABEL_29;
  }

  *v38 = v52;
  v53 = v92;
  v33 = *(v92 + v77);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = *&v47[v53];
  v55 = v93;
  *&v47[v53] = 0x8000000000000000;
  v30 = v70;
  v26 = sub_1C5AB6D70(v70);
  v57 = v55[2];
  v58 = (v56 & 1) == 0;
  v59 = v57 + v58;
  if (__OFADD__(v57, v58))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  LOBYTE(v34) = v56;
  if (v55[3] >= v59)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_31:
      sub_1C5AF4C50();
      v55 = v93;
    }
  }

  else
  {
    sub_1C5AF14AC(v59, isUniquelyReferenced_nonNull_native);
    v55 = v93;
    v60 = sub_1C5AB6D70(v30);
    if ((v34 & 1) != (v61 & 1))
    {
      result = sub_1C5BCBE84();
      __break(1u);
      return result;
    }

    v26 = v60;
  }

  *&v47[v92] = v55;
  if ((v34 & 1) == 0)
  {
    v62 = sub_1C59AD8B4(MEMORY[0x1E69E7CC0]);
    v63 = v68;
    (*(v69 + 16))(v68, v30, v67);
    sub_1C5B3CC40(v26, v63, v62, v55);
  }

  v64 = v55[7];
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(v64 + 8 * v26);
  *(v64 + 8 * v26) = 0x8000000000000000;
  sub_1C5B3BF18(v65, v44, v33);
  *(v64 + 8 * v26) = v93;

  return swift_endAccess();
}

uint64_t sub_1C59AD1B0()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUIP33_6CBD87A2320B99A868A4969384204E9624FittedTextHeightResolver_measurements;
  v2 = sub_1C5BC9BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1C59AD25C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1918A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1918B0);
    v7 = sub_1C5BCBC74();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C59400B0(v9, v5, &qword_1EC1918A8);
      result = sub_1C5AB6D70(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1C5BC7B04();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1C59AD444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FittedTextStack(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59AD4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FittedTextStack(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C59AC5CC(a1, v6, a2);
}

void sub_1C59AD56C()
{
  sub_1C59AD6C8(319, &qword_1EDA46AC0, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C59AD670();
    if (v1 <= 0x3F)
    {
      sub_1C5BC9BB4();
      if (v2 <= 0x3F)
      {
        sub_1C59AD6C8(319, &qword_1EDA45FF8, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C59AD670()
{
  if (!qword_1EC191758)
  {
    type metadata accessor for FittedText();
    v0 = sub_1C5BCB144();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC191758);
    }
  }
}

void sub_1C59AD6C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7DE0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C59AD724()
{
  result = sub_1C5BC9BB4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C59AD7D0()
{
  result = qword_1EC191770;
  if (!qword_1EC191770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191740);
    sub_1C5924F54(&qword_1EC191778, &qword_1EC191780);
    sub_1C5924F54(&qword_1EC191788, &qword_1EC191790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191770);
  }

  return result;
}

unint64_t sub_1C59AD8B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917F0);
    v3 = sub_1C5BCBC74();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C5AB6EF8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1C59AD990(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917A0);
    v3 = sub_1C5BCBC74();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C59400B0(v4, &v13, &qword_1EC1917A8);
      v5 = v13;
      v6 = v14;
      result = sub_1C596FBD8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C593F33C(&v15, (v3[7] + 32 * result));
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

void *sub_1C59ADAC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917D0);
  v3 = sub_1C5BCBC74();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1C5AB97D8(v4);
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

    v8 = sub_1C5AB97D8(v4);
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

unint64_t sub_1C59ADBF8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1C5BCBC74();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1C596FBD8(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_1C59ADCF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917C8);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C596FBD8(v5, v6);
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

unint64_t sub_1C59ADDF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191798);
    v3 = sub_1C5BCBC74();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C59400B0(v4, &v11, &qword_1EC198CA0);
      v5 = v11;
      result = sub_1C5AB97DC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C593F33C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1C59ADF18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917D8);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1C5AB70E8(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1C59AE010(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917C0);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1C5AB97DC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1C59AE100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917B0);
    v3 = sub_1C5BCBC74();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C59400B0(v4, &v11, &qword_1EC1917B8);
      v5 = v11;
      result = sub_1C5AB97DC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C593F33C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1C59AE228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191808);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191810);
    v7 = sub_1C5BCBC74();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C59400B0(v9, v5, &qword_1EC191808);
      result = sub_1C5AB71BC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1C5BC7A24();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1C59AE410(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191860);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C596FBD8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1C59AE524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A30);
    v3 = sub_1C5BCBC74();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C59400B0(v4, v13, &qword_1EC191858);
      result = sub_1C5AB7290(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C593F33C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1C59AE660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191850);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1C5AB97DC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1C59AE750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191840);
    v3 = sub_1C5BCBC74();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C59400B0(v4, &v11, &qword_1EC191848);
      v5 = v11;
      result = sub_1C5AB97DC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C593F33C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1C59AE878(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191838);
  v3 = sub_1C5BCBC74();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1C5AB6FAC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1C5AB6FAC(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for FittedTextStack(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1C5BC86E4();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  v7 = v1[10];
  v8 = sub_1C5BC9BB4();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1C59AEAFC()
{
  type metadata accessor for FittedTextStack(0);
  sub_1C5BC86E4();
  return sub_1C59AC8E4();
}

unint64_t sub_1C59AEBBC()
{
  result = qword_1EDA46530;
  if (!qword_1EDA46530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46530);
  }

  return result;
}

unint64_t sub_1C59AEC40()
{
  result = qword_1EDA46AD0;
  if (!qword_1EDA46AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46AD0);
  }

  return result;
}

uint64_t sub_1C59AEC94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C59AECFC(uint64_t a1)
{
  v2 = type metadata accessor for FittedText();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C59AED60()
{
  result = qword_1EC191890;
  if (!qword_1EC191890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191890);
  }

  return result;
}

unint64_t sub_1C59AEDDC()
{
  result = qword_1EC191898;
  if (!qword_1EC191898)
  {
    type metadata accessor for FittedText();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191898);
  }

  return result;
}

uint64_t sub_1C59AEE34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1C59AEE44()
{
  result = qword_1EDA465A8;
  if (!qword_1EDA465A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1918A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465A8);
  }

  return result;
}

uint64_t sub_1C59AEEC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1918A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Numeric<>.isApproximatelyEqual(to:relativeTolerance:norm:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  v20 = a1;
  v21 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  sub_1C5BCAD04();
  swift_getAssociatedConformanceWitness();
  sub_1C5BCB3A4();
  v18 = *(v12 + 8);
  v18(v15, AssociatedTypeWitness);
  LOBYTE(a7) = AdditiveArithmetic.isApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(v20, v17, a2, v21, v22, a5, AssociatedTypeWitness, *(a6 + 8), a7);
  v18(v17, AssociatedTypeWitness);
  return a7 & 1;
}

uint64_t AdditiveArithmetic.isApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a4;
  v46 = a3;
  v47 = a2;
  v12 = *(a6 - 8);
  v40 = a5;
  v41 = v12;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v45 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v38 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v42 = &v38 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v38 - v27;
  v30 = v29;
  if (sub_1C5BCADB4())
  {
    v31 = 1;
  }

  else
  {
    v38 = a9;
    sub_1C5BCBBE4();
    v39 = v28;
    v32 = v44;
    v44(v15);
    (*(v41 + 8))(v15, a6);
    v32(v9);
    v33 = v39;
    v32(v30);
    v34 = v42;
    sub_1C5BCBE44();
    v35 = *(v43 + 8);
    v35(v21, a7);
    v35(v24, a7);
    sub_1C5BCB3A4();
    v36 = v45;
    sub_1C5BCBE44();
    v35(v24, a7);
    if (sub_1C5BCAD14())
    {
      v31 = sub_1C5BCAD94();
    }

    else
    {
      v31 = 0;
    }

    v35(v36, a7);
    v35(v34, a7);
    v35(v33, a7);
  }

  return v31 & 1;
}

uint64_t Numeric<>.isApproximatelyEqual(to:absoluteTolerance:relativeTolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v14 = a5;
  v15 = a6;
  KeyPath = swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = AdditiveArithmetic.isApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(a1, a2, a3, sub_1C59AF584, v13, a4, AssociatedTypeWitness, *(v14 + 8), v15);

  return v11 & 1;
}

uint64_t sub_1C59AF58C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(a2, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(a2) = v17[15];
  }

  *(a1 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isBlurEnabled) = a2 & 1;
  sub_1C59AF7A0();
  if ((a5 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(a4, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(a4) = v17[14];
  }

  *(a1 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isColorAdjustmentEnabled) = a4 & 1;
  return sub_1C59AF7A0();
}

uint64_t sub_1C59AF7A0()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer);
  if (v1)
  {
    [v1 setMask_];
  }

  KeyPath = swift_getKeyPath();
  v3 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isBlurEnabled;
  sub_1C5B865E4(KeyPath, *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isBlurEnabled));

  v4 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer);
  if (v4)
  {
    [v4 setMask_];
  }

  v5 = swift_getKeyPath();
  sub_1C5B8674C(v5, *(v0 + v3));

  v6 = swift_getKeyPath();
  sub_1C5B86764(v6, *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isColorAdjustmentEnabled));
}

void *sub_1C59AF88C()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer);
  v2 = v1;
  return v1;
}

void *sub_1C59AF8BC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer);
  v2 = v1;
  return v1;
}

void *sub_1C59AF8EC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer);
  v2 = v1;
  return v1;
}

id sub_1C59AF91C()
{
  v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isBlurEnabled] = 1;
  v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isColorAdjustmentEnabled] = 1;
  *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer] = 0;
  v1 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurMask;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for LockScreenSquareAssetOverlayEffect.FirstBlurOpacityMask()) init];
  *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer] = 0;
  v2 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurMask;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for LockScreenSquareAssetOverlayEffect.SecondBlurOpacityMask()) init];
  *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for LockScreenSquareAssetOverlayEffect.EffectLayer();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1C59AF7A0();

  return v3;
}

id sub_1C59AFA20(void *a1)
{
  v1[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isBlurEnabled] = 1;
  v1[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isColorAdjustmentEnabled] = 1;
  *&v1[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer] = 0;
  v3 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurMask;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for LockScreenSquareAssetOverlayEffect.FirstBlurOpacityMask()) init];
  *&v1[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer] = 0;
  v4 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurMask;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for LockScreenSquareAssetOverlayEffect.SecondBlurOpacityMask()) init];
  *&v1[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_1C5BCBDD4();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LockScreenSquareAssetOverlayEffect.EffectLayer();
  v6 = objc_msgSendSuper2(&v9, sel_initWithLayer_, v5);
  swift_unknownObjectRelease();
  v7 = v6;
  sub_1C59AF7A0();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

id sub_1C59AFB88()
{
  v61.receiver = v0;
  v61.super_class = type metadata accessor for LockScreenSquareAssetOverlayEffect.EffectLayer();
  objc_msgSendSuper2(&v61, sel_layoutSublayers);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  [v0 bounds];
  v4 = round(sub_1C59B1A0C(v2, v3));
  [v0 bounds];
  Width = CGRectGetWidth(v62);
  [v0 bounds];
  Height = CGRectGetHeight(v63);
  v7 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer;
  v8 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer];
  if (Height <= Width)
  {
    if (v8)
    {
      v32 = v8;
      CATransform3DMakeRotation(&v60, 1.57079633, 0.0, 0.0, 1.0);
      [v32 setTransform_];

      v33 = *&v0[v7];
      if (v33)
      {
        v34 = v33;
        [v0 bounds];
        MinX = CGRectGetMinX(v72);
        [v0 bounds];
        MinY = CGRectGetMinY(v73);
        [v0 bounds];
        [v34 setFrame_];
      }
    }

    v37 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurMask];
    [v0 bounds];
    [v37 setFrame_];

    v38 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer;
    v39 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer];
    if (v39)
    {
      v40 = v39;
      CATransform3DMakeRotation(&v60, 4.71238898, 0.0, 0.0, 1.0);
      [v40 setTransform_];

      v41 = *&v0[v38];
      if (v41)
      {
        v42 = v41;
        [v0 bounds];
        v43 = CGRectGetMaxX(v76) - v4;
        [v0 bounds];
        v44 = CGRectGetMinY(v77);
        [v0 bounds];
        [v42 setFrame_];
      }
    }

    v45 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurMask];
    [v0 bounds];
    [v45 setFrame_];

    v46 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer];
    if (v46)
    {
      v47 = v46;
      CATransform3DMakeRotation(&v60, 1.57079633, 0.0, 0.0, 1.0);
      [v47 setTransform_];
    }
  }

  else
  {
    if (v8)
    {
      v9 = v8;
      CATransform3DMakeScale(&v60, 1.0, -1.0, 1.0);
      [v9 setTransform_];

      v10 = *&v0[v7];
      if (v10)
      {
        v11 = v10;
        [v0 bounds];
        v12 = CGRectGetMinX(v64);
        [v0 bounds];
        v13 = CGRectGetMinY(v65);
        [v0 bounds];
        [v11 setFrame_];
      }
    }

    v14 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurMask];
    [v0 bounds];
    [v14 setFrame_];

    v15 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer;
    v16 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer];
    v17 = MEMORY[0x1E69792E8];
    if (v16)
    {
      v18 = *(MEMORY[0x1E69792E8] + 80);
      *&v60.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&v60.m33 = v18;
      v19 = *(MEMORY[0x1E69792E8] + 112);
      *&v60.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&v60.m43 = v19;
      v20 = *(MEMORY[0x1E69792E8] + 16);
      *&v60.m11 = *MEMORY[0x1E69792E8];
      *&v60.m13 = v20;
      v21 = *(MEMORY[0x1E69792E8] + 48);
      *&v60.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&v60.m23 = v21;
      [v16 setTransform_];
      v22 = *&v0[v15];
      if (v22)
      {
        v23 = v22;
        [v0 bounds];
        v24 = CGRectGetMinX(v68);
        [v0 bounds];
        v25 = CGRectGetMaxY(v69) - v4;
        [v0 bounds];
        [v23 setFrame_];
      }
    }

    v26 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurMask];
    [v0 bounds];
    [v26 setFrame_];

    v27 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer];
    if (v27)
    {
      v28 = v17[5];
      *&v60.m31 = v17[4];
      *&v60.m33 = v28;
      v29 = v17[7];
      *&v60.m41 = v17[6];
      *&v60.m43 = v29;
      v30 = v17[1];
      *&v60.m11 = *v17;
      *&v60.m13 = v30;
      v31 = v17[3];
      *&v60.m21 = v17[2];
      *&v60.m23 = v31;
      [v27 setTransform_];
    }
  }

  [v0 bounds];
  sub_1C59B1A80(&v60, v48, v49, v4);
  if (*&v60.m21)
  {
    v50 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer;
    v51 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer];
    if (v51 && (v52 = *&v60.m13, [v51 setStartPoint_], (v53 = *&v0[v50]) != 0) && (objc_msgSend(v53, sel_setEndPoint_, v52), (v54 = *&v0[v50]) != 0))
    {
      sub_1C59B1CD0();
      v55 = v54;
      v56 = sub_1C5BCB044();
      sub_1C59B1D1C(&v60);
      [v55 setLocations_];
    }

    else
    {
      sub_1C59B1D1C(&v60);
    }
  }

  v57 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer];
  if (v57)
  {
    v58 = v57;
    [v0 bounds];
    [v58 setFrame_];
  }

  return [v1 commit];
}

uint64_t sub_1C59B036C()
{
  if (qword_1EC1904F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC1A6960;
  v1 = qword_1EC1A6960;
  return v0;
}

id sub_1C59B04D0()
{
  if (qword_1EC1904F8 != -1)
  {
    swift_once();
  }

  [v0 setContents_];
  v1 = *MEMORY[0x1E6979DE0];

  return [v0 setContentsGravity_];
}

id sub_1C59B056C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1C59B05CC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_unknownObjectRetain();
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  v6 = sub_1C5BCBDD4();
  v9.receiver = a1;
  v9.super_class = a4(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithLayer_, v6);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

id sub_1C59B0690(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_1C59B0728(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1C59B08E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C59B0940@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC190500 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = qword_1EC1918B8;
  v2 = unk_1EC1918C0;
  v4 = qword_1EC1918C8;
  v3 = qword_1EC1918D0;
  v5 = dword_1EC1918D8;
  *a1 = qword_1EC1918B8;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  v6 = v1;
}

uint64_t sub_1C59B09E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C59B0A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C59B0A9C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  type metadata accessor for LockScreenSquareAssetOverlayEffect.EffectLayer();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  sub_1C5950E48(v1, v2);
  sub_1C5950E48(v3, v4);

  return sub_1C5BC85C4();
}

uint64_t sub_1C59B0B84()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v1) = 1054951342;
  LODWORD(v2) = 1058306785;
  LODWORD(v3) = 1.0;
  v4 = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  v5 = sub_1C59B1344(80, 80, v4, 1, 1.02, 1.1);
  v6 = sub_1C5B86A7C(0x50, 80, v5, 1);

  qword_1EC1A6960 = v6;
  return result;
}

uint64_t sub_1C59B0C40()
{
  v0 = *MEMORY[0x1E6979EB8];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 functionWithName_];

  v4 = sub_1C59B0F74(80, 80, v3, 0, 1.02, 0.1);
  v5 = sub_1C5B86934(0x50, 80, v4, 0);

  qword_1EC1A6968 = v5;
  return result;
}

double sub_1C59B0D08()
{
  v0 = *MEMORY[0x1E6979DB0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C5BD31B0;
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 blackColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [v5 CGColor];
  *(v1 + 32) = v6;
  v7 = [v2 blackColor];
  v8 = [v7 colorWithAlphaComponent_];

  v9 = [v8 CGColor];
  *(v1 + 40) = v9;
  v10 = [v2 blackColor];
  v11 = [v10 colorWithAlphaComponent_];

  v12 = [v11 CGColor];
  *(v1 + 48) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C5BD31C0;
  v14 = *MEMORY[0x1E6979ED8];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 functionWithName_];

  *(v13 + 32) = v17;
  v18 = *MEMORY[0x1E6979EB8];
  v19 = [v15 functionWithName_];

  *(v13 + 40) = v19;
  qword_1EC1918B8 = v3;
  unk_1EC1918C0 = v1;
  qword_1EC1918C8 = v13;
  result = 2.77068541e-11;
  qword_1EC1918D0 = 0x3DBE76C93F333333;
  dword_1EC1918D8 = 1075419546;
  return result;
}

uint64_t sub_1C59B0F74(uint64_t a1, int64_t a2, void *a3, char a4, float a5, float a6)
{
  if (a4)
  {
    v8 = 65535.0;
  }

  else
  {
    v8 = 255.0;
  }

  v9 = a1 * a2;
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
    goto LABEL_50;
  }

  if (v9 + 0x4000000000000000 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v10 = 2 * v9;
  if (2 * v9 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v10)
  {
    v13 = sub_1C5BCB0C4();
    *(v13 + 16) = v10;
    bzero((v13 + 32), v10);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = vcvts_n_f32_s64(a2, 1uLL);
  v15 = v14 * a5;
  v16 = sqrtf(((v15 * v15) * 4.0) - (a2 * a2));
  if (((((v16 * 0.5) - v15) + a1) * a6) > 0.0)
  {
    v17 = (((v16 * 0.5) - v15) + a1) * a6;
  }

  else
  {
    v17 = 1.1755e-38;
  }

  v18 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    goto LABEL_53;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
      return v13;
    }

    if (v18 < -1)
    {
      goto LABEL_55;
    }

    v19 = 0;
    v20 = 0;
    v21 = -(v16 * 0.5);
    v22 = v13 + 32;
    v40 = 2 * a2;
    v41 = a1;
    v42 = v18 / 2 + 1;
    v23 = v13 + 33;
LABEL_19:
    v24 = v20 + 1;
    v25 = (v20 + 1) * a2;
    if (((v20 + 1) * a2) >> 64 == v25 >> 63)
    {
      if (v25 + 0x4000000000000000 >= 0)
      {
        if ((v20 * a2) >> 64 == (v20 * a2) >> 63)
        {
          v26 = 0;
          v27 = 0;
          v28 = 2 * v25;
          v29 = v21 - v20;
          v30 = v42;
          while (1)
          {
            v31 = (hypotf(v14 - v27, v29) - v15) / v17;
            v32 = 0.0;
            if (v31 > 0.0)
            {
              v32 = v8;
              if (v31 < 1.0)
              {
                [a3 _solveForInput_];
                v32 = v8 * v33;
              }
            }

            sub_1C59B1898(v44, roundf(v32));
            if ((v44[0] & 0x100) != 0)
            {
              goto LABEL_56;
            }

            if (v19 < 0)
            {
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            v34 = *(v13 + 16);
            if (v19 + v26 >= v34)
            {
              goto LABEL_41;
            }

            v35 = v44[0];
            *(v23 + v26 - 1) = 0;
            if (v19 + v26 + 1 >= v34)
            {
              goto LABEL_42;
            }

            *(v23 + v26) = v35;
            if ((a2 & 1) != 0 && v30 == 1)
            {
              goto LABEL_18;
            }

            v36 = v28 - v26;
            if (__OFSUB__(v28, v26))
            {
              goto LABEL_43;
            }

            v37 = __OFSUB__(v36, 1);
            v38 = v36 - 1;
            if (v37)
            {
              goto LABEL_44;
            }

            if (v38 < 1 || v38 > v34)
            {
              goto LABEL_45;
            }

            *(v22 + v38 - 1) = 0;
            if (v38 >= v34)
            {
              goto LABEL_46;
            }

            *(v22 + v38) = v35;
            ++v27;
            v26 += 2;
            if (!--v30)
            {
LABEL_18:
              v19 += v40;
              v23 += v40;
              v20 = v24;
              if (v24 == v41)
              {
                return v13;
              }

              goto LABEL_19;
            }
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
LABEL_47:
      __break(1u);
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x1C694F170](0xD00000000000001ELL, 0x80000001C5BF5F70);
  MEMORY[0x1C694F170](0x38746E4955, 0xE500000000000000);
  MEMORY[0x1C694F170](0xD00000000000002ELL, 0x80000001C5BF5F90);
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

uint64_t sub_1C59B1344(uint64_t a1, int64_t a2, void *a3, char a4, float a5, float a6)
{
  if (a4)
  {
    v8 = 65535.0;
  }

  else
  {
    v8 = 255.0;
  }

  v9 = a1 * a2;
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
    goto LABEL_50;
  }

  if (v9 + 0x4000000000000000 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v10 = 2 * v9;
  if (2 * v9 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v10)
  {
    v13 = sub_1C5BCB0C4();
    *(v13 + 16) = v10;
    bzero((v13 + 32), 4 * v9);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = vcvts_n_f32_s64(a2, 1uLL);
  v15 = v14 * a5;
  v16 = sqrtf(((v15 * v15) * 4.0) - (a2 * a2));
  if (((((v16 * 0.5) - v15) + a1) * a6) > 0.0)
  {
    v17 = (((v16 * 0.5) - v15) + a1) * a6;
  }

  else
  {
    v17 = 1.1755e-38;
  }

  v18 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    goto LABEL_53;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
      return v13;
    }

    if (v18 < -1)
    {
      goto LABEL_55;
    }

    v19 = 0;
    v20 = 0;
    v21 = -(v16 * 0.5);
    v40 = a1;
    v41 = v18 / 2 + 1;
    v22 = (v13 + 34);
LABEL_19:
    v23 = v20 + 1;
    v24 = (v20 + 1) * a2;
    if (((v20 + 1) * a2) >> 64 == v24 >> 63)
    {
      if (v24 + 0x4000000000000000 >= 0)
      {
        if ((v20 * a2) >> 64 == (v20 * a2) >> 63)
        {
          v25 = 0;
          v26 = 0;
          v27 = 2 * v24;
          v28 = v21 - v20;
          v42 = v22;
          v29 = v41;
          while (1)
          {
            v30 = (hypotf(v14 - v26, v28) - v15) / v17;
            v31 = 0.0;
            if (v30 > 0.0)
            {
              v31 = v8;
              if (v30 < 1.0)
              {
                [a3 _solveForInput_];
                v31 = v8 * v32;
              }
            }

            sub_1C59B1724(v44, roundf(v31));
            if ((v44[0] & 0x10000) != 0)
            {
              goto LABEL_56;
            }

            if (v19 < 0)
            {
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            v33 = *(v13 + 16);
            if (v19 + v25 >= v33)
            {
              goto LABEL_41;
            }

            v34 = v44[0];
            *(v22 - 1) = 0;
            if (v19 + v25 + 1 >= v33)
            {
              goto LABEL_42;
            }

            *v22 = v34;
            if ((a2 & 1) != 0 && v29 == 1)
            {
              goto LABEL_18;
            }

            v35 = v27 - v25;
            if (__OFSUB__(v27, v25))
            {
              goto LABEL_43;
            }

            v36 = __OFSUB__(v35, 1);
            v37 = v35 - 1;
            if (v36)
            {
              goto LABEL_44;
            }

            if (v37 < 1 || v37 > v33)
            {
              goto LABEL_45;
            }

            v38 = (v13 + 32 + 2 * v37);
            *(v38 - 1) = 0;
            if (v37 >= v33)
            {
              goto LABEL_46;
            }

            *v38 = v34;
            ++v26;
            v25 += 2;
            v22 += 2;
            if (!--v29)
            {
LABEL_18:
              v19 += 2 * a2;
              v22 = &v42[2 * a2];
              v20 = v23;
              if (v23 == v40)
              {
                return v13;
              }

              goto LABEL_19;
            }
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
LABEL_47:
      __break(1u);
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x1C694F170](0xD00000000000001ELL, 0x80000001C5BF5F70);
  MEMORY[0x1C694F170](0x3631746E4955, 0xE600000000000000);
  MEMORY[0x1C694F170](0xD00000000000002ELL, 0x80000001C5BF5F90);
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

BOOL sub_1C59B1724(uint64_t a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_24;
  }

  LOWORD(v6) = 0;
  v7 = 1;
  if (v4 == 255)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_1C5BCB354();
      if (v9 > 15)
      {
        LOWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_24;
      }

      v10 = v9;
      v11 = sub_1C5BCB344();
      v12 = v11 + __clz(__rbit32(v5));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 15)
        {
          if (v13 < -16 || v13 > 16)
          {
LABEL_9:
            LOWORD(v6) = 0;
            LOWORD(v14) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          if (v13 < 0)
          {
            if (v13 == -16)
            {
              goto LABEL_9;
            }

            v6 = LOWORD(a2) >> (v12 - v10);
          }

          else
          {
            if (v13 == 16)
            {
              goto LABEL_9;
            }

            v6 = LODWORD(a2) << v13;
          }

LABEL_20:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_22:
            v14 = 1 << v10;
            goto LABEL_23;
          }

          LOWORD(v14) = 0;
LABEL_23:
          v7 = 0;
          LOWORD(v6) = v6 | v14;
          result = v10 >= v11;
          goto LABEL_24;
        }

        if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_13:
          LOWORD(v6) = 0;
          goto LABEL_20;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x20)
          {
            v6 = v5 << v13;
            goto LABEL_20;
          }

          goto LABEL_13;
        }
      }

      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_20;
    }
  }

LABEL_24:
  *a1 = v6;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_1C59B1898(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_24;
  }

  LOBYTE(v6) = 0;
  v7 = 1;
  if (v4 == 255)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_1C5BCB354();
      if (v9 > 7)
      {
        LOBYTE(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_24;
      }

      v10 = v9;
      v11 = sub_1C5BCB344();
      v12 = v11 + __clz(__rbit32(v5));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 7)
        {
          if (v13 < -8 || v13 > 8)
          {
LABEL_9:
            LOBYTE(v6) = 0;
            LOBYTE(v14) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          if (v13 < 0)
          {
            if (v13 == -8)
            {
              goto LABEL_9;
            }

            v6 = LOBYTE(a2) >> (v12 - v10);
          }

          else
          {
            if (v13 == 8)
            {
              goto LABEL_9;
            }

            v6 = LODWORD(a2) << v13;
          }

LABEL_20:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_22:
            v14 = 1 << v10;
            goto LABEL_23;
          }

          LOBYTE(v14) = 0;
LABEL_23:
          v7 = 0;
          LOBYTE(v6) = v6 | v14;
          result = v10 >= v11;
          goto LABEL_24;
        }

        if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_13:
          LOBYTE(v6) = 0;
          goto LABEL_20;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x20)
          {
            v6 = v5 << v13;
            goto LABEL_20;
          }

          goto LABEL_13;
        }
      }

      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_20;
    }
  }

LABEL_24:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

double sub_1C59B1A0C(double a1, double a2)
{
  if (a2 >= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (a1 <= a2)
  {
    a1 = a2;
  }

  v3 = 1.0;
  if (v2 > 0.0 && a1 > 0.0)
  {
    v3 = 1.422 / (a1 / v2);
    if (v3 < 1.0)
    {
      v3 = sqrt(v3);
    }
  }

  v4 = (a1 - v2) * 0.5 * 2.8 * v3;
  result = a1 * 0.5;
  if (result >= v4)
  {
    return v4;
  }

  return result;
}

void sub_1C59B1A80(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v5 = 0;
  v6 = 0uLL;
  if (a2 == 0.0 || a3 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if (a4 != 0.0)
    {
      if (a2 > a3)
      {
        v8 = a2;
      }

      else
      {
        v8 = a3;
      }

      if (a3 >= a2)
      {
        v9 = a2;
      }

      else
      {
        v9 = a3;
      }

      v10 = 1.0 - a4 / v8;
      if (v10 <= 0.0)
      {
        v10 = 0.0;
      }

      if (v10 <= 1.0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 1.0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1C5BD31B0;
      sub_1C59B1CD0();
      *(v7 + 32) = sub_1C5BCB714();
      *(v7 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      *(v7 + 48) = sub_1C5BCB714();
      v13 = v8 / v9 * (v9 / a4 * 1.01999998);
      if (v13 == 0.0)
      {
        v13 = 1.0;
      }

      v14 = sqrt(1.0 / (v13 * v13) + 1.0);
      v15.f64[0] = v13 * v14;
      v15.f64[1] = v14;
      __asm { FMOV            V1.2D, #0.5 }

      v6 = vaddq_f64(vmulq_f64(v15, _Q1), _Q1);
      v5 = 0x3FE0000000000000;
    }
  }

  *a1 = v5;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
}

void sub_1C59B1BE8()
{
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isBlurEnabled) = 1;
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_isColorAdjustmentEnabled) = 1;
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer) = 0;
  v1 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurMask;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for LockScreenSquareAssetOverlayEffect.FirstBlurOpacityMask()) init];
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer) = 0;
  v2 = OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurMask;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockScreenSquareAssetOverlayEffect.SecondBlurOpacityMask()) init];
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

unint64_t sub_1C59B1CD0()
{
  result = qword_1EDA4E048;
  if (!qword_1EDA4E048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA4E048);
  }

  return result;
}

uint64_t sub_1C59B1D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59B1D84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C59B1DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C59B1E24()
{
  result = qword_1EC191928;
  if (!qword_1EC191928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191928);
  }

  return result;
}

__n128 DeviceMetrics.safeAreaInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t DeviceMetrics.Layout.description.getter()
{
  v1 = 0x72616C75676572;
  if (*v0 != 1)
  {
    v1 = 0x4572616C75676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

void (*MCUINamespace<A>.deviceMetrics.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  *(v3 + 168) = sub_1C593F9B0();
  sub_1C5BC8F44();
  return sub_1C59B2070;
}

void sub_1C59B2070(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v1[7] = *(*a1 + 32);
  v1[8] = v2;
  *(v1 + 137) = *(v1 + 57);
  v3 = v1[1];
  v1[5] = *v1;
  v1[6] = v3;
  sub_1C5BC8F54();

  free(v1);
}

double MCUINamespace<A>.safeAreaInsets.getter()
{
  sub_1C593F8A4();
  sub_1C5BC8F44();
  return v1;
}

void (*MCUINamespace<A>.safeAreaInsets.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_1C593F8A4();
  sub_1C5BC8F44();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_1C59B21EC;
}

void sub_1C59B21EC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v1[2] = *v1;
  v1[3] = v2;
  sub_1C5BC8F54();

  free(v1);
}

uint64_t sub_1C59B2244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C59B31E0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.deviceMetrics.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_1C5BC8F34();
  (*(*(v4 - 8) + 16))(v3, v0, v4);
  sub_1C593F9B0();
  sub_1C5BC8F44();
  return sub_1C59B2FC0(v3);
}

__n128 sub_1C59B2388@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = sub_1C5BC8F34();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_1C593F9B0();
  sub_1C5BC8F44();
  sub_1C59B2FC0(v6);
  v8 = v11[0];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v8;
  *(a2 + 57) = *(v11 + 9);
  result = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1C59B2484(__int128 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = a1[3];
  v16 = a1[2];
  v17[0] = v7;
  *(v17 + 9) = *(a1 + 57);
  v8 = a1[1];
  v14 = *a1;
  v15 = v8;
  v9 = sub_1C5BC8F34();
  v10 = *(*(v9 - 8) + 32);
  v10(v6, a2, v9);
  v12[2] = v16;
  v13[0] = v17[0];
  *(v13 + 9) = *(v17 + 9);
  v12[0] = v14;
  v12[1] = v15;
  sub_1C593F9B0();
  sub_1C5BC8F54();
  return (v10)(a2, v6, v9);
}

uint64_t EnvironmentValues.deviceMetrics.setter(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = a1[3];
  v16 = a1[2];
  v17[0] = v7;
  *(v17 + 9) = *(a1 + 57);
  v8 = a1[1];
  v14 = *a1;
  v15 = v8;
  v9 = sub_1C5BC8F34();
  v10 = *(*(v9 - 8) + 32);
  v10(v6, v2, v9);
  v12[2] = v16;
  v13[0] = v17[0];
  *(v13 + 9) = *(v17 + 9);
  v12[0] = v14;
  v12[1] = v15;
  sub_1C593F9B0();
  sub_1C5BC8F54();
  return (v10)(v2, v6, v9);
}

void (*EnvironmentValues.deviceMetrics.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x118uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 240) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[31] = v7;
  v9 = sub_1C5BC8F34();
  v5[32] = v9;
  v10 = *(v9 - 8);
  v5[33] = v10;
  (*(v10 + 16))(v8, v1, v9);
  v5[34] = sub_1C593F9B0();
  sub_1C5BC8F44();
  sub_1C59B2FC0(v8);
  return sub_1C59B2830;
}

void sub_1C59B2830(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 33) + 32);
  v6 = *(*a1 + 30);
  v5 = *(*a1 + 31);
  v10 = (*a1)[2];
  *v11 = (*a1)[3];
  *&v11[9] = *(*a1 + 57);
  v8 = **a1;
  v9 = (*a1)[1];
  v7 = *v4;
  if (a2)
  {
    (*v4)(v5, v6, v3);
    v2[7] = v10;
    v2[8] = *v11;
    *(v2 + 137) = *&v11[9];
    v2[5] = v8;
    v2[6] = v9;
  }

  else
  {
    (*v4)(v5, v6, v3);
    v2[12] = v10;
    v2[13] = *v11;
    *(v2 + 217) = *&v11[9];
    v2[10] = v8;
    v2[11] = v9;
  }

  sub_1C5BC8F54();
  v7(v6, v5, v3);
  free(v5);

  free(v2);
}

double EnvironmentValues.safeAreaInsets.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_1C5BC8F34();
  (*(*(v4 - 8) + 16))(v3, v0, v4);
  sub_1C593F8A4();
  sub_1C5BC8F44();
  sub_1C59B2FC0(v3);
  return v6;
}

double sub_1C59B2A54@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = sub_1C5BC8F34();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_1C593F8A4();
  sub_1C5BC8F44();
  sub_1C59B2FC0(v6);
  result = *v10;
  v9 = v10[1];
  *a2 = v10[0];
  a2[1] = v9;
  return result;
}

uint64_t sub_1C59B2B40(__int128 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1C5BC8F34();
  v8 = *(*(v7 - 8) + 32);
  v9 = *a1;
  v11 = a1[1];
  v12 = v9;
  v8(v6, a2, v7);
  v13 = v12;
  v14 = v11;
  sub_1C593F8A4();
  sub_1C5BC8F54();
  return (v8)(a2, v6, v7);
}

uint64_t EnvironmentValues.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v16 - v11;
  v13 = sub_1C5BC8F34();
  v14 = *(*(v13 - 8) + 32);
  v14(v12, v5, v13);
  *v16 = a1;
  *&v16[1] = a2;
  *&v16[2] = a3;
  *&v16[3] = a4;
  sub_1C593F8A4();
  sub_1C5BC8F54();
  return (v14)(v5, v12, v13);
}

void (*EnvironmentValues.safeAreaInsets.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 128) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 136) = v7;
  v9 = sub_1C5BC8F34();
  *(v5 + 144) = v9;
  v10 = *(v9 - 8);
  *(v5 + 152) = v10;
  (*(v10 + 16))(v8, v1, v9);
  *(v5 + 160) = sub_1C593F8A4();
  sub_1C5BC8F44();
  sub_1C59B2FC0(v8);
  v11 = *(v5 + 48);
  *v5 = *(v5 + 32);
  *(v5 + 16) = v11;
  return sub_1C59B2EC4;
}

void sub_1C59B2EC4(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v8 = *((*a1)[19] + 32);
  v8((*a1)[17], (*a1)[16], (*a1)[18]);
  v9 = (a2 & 1) == 0;
  v10 = v3[17];
  v11 = v3[18];
  v12 = 12;
  if (!v9)
  {
    v12 = 8;
  }

  v13 = 13;
  v14 = v3[16];
  if (!v9)
  {
    v13 = 9;
  }

  v15 = 14;
  if (!v9)
  {
    v15 = 10;
  }

  v3[v12] = v4;
  v3[v13] = v5;
  v16 = 11;
  if (v9)
  {
    v16 = 15;
  }

  v3[v15] = v6;
  v3[v16] = v7;
  sub_1C5BC8F54();
  v8(v14, v10, v11);
  free(v10);

  free(v3);
}

uint64_t sub_1C59B2FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C59B302C()
{
  result = qword_1EC191940;
  if (!qword_1EC191940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191940);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceMetrics.SizeClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceMetrics.SizeClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C59B31E0()
{
  result = qword_1EDA467F8;
  if (!qword_1EDA467F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA467F8);
  }

  return result;
}

MediaCoreUI::MotionMode_optional __swiftcall MotionMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MotionMode.description.getter()
{
  v1 = 28271;
  if (*v0 == 1)
  {
    v1 = 0x796C6E4F69666977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6710895;
  }
}

uint64_t sub_1C59B32E0()
{
  v1 = 28271;
  if (*v0 == 1)
  {
    v1 = 0x796C6E4F69666977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6710895;
  }
}

unint64_t sub_1C59B3348()
{
  result = qword_1EC191948;
  if (!qword_1EC191948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC191948);
  }

  return result;
}

uint64_t SplitPercentageLayout.locations.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SplitPercentageLayout.init(axis:locations:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result & 1;
  *(a3 + 8) = a2;
  return result;
}

double SplitPercentageLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t SplitPercentageLayout.placeSubviews(in:proposal:subviews:cache:)(void (**a1)(char *), int a2, void (**a3)(char *), int a4, uint64_t a5)
{
  v6 = v5;
  LODWORD(v88) = a4;
  v86 = a3;
  LODWORD(v87) = a2;
  v85 = a1;
  v92 = sub_1C5BC8744();
  v78 = *(v92 - 8);
  v8 = MEMORY[0x1EEE9AC00](v92);
  v84 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v77 = &v76 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v83 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919B0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v82 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v76 - v18;
  v19 = sub_1C5BC8894();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919B8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v76 - v23;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919C0);
  v25 = MEMORY[0x1EEE9AC00](v80);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v76 - v28;
  v79 = *v6;
  v30 = *(v6 + 1);
  v31 = *(v30 + 16);
  v32 = sub_1C59B3F0C(&qword_1EDA4E1A0);
  swift_bridgeObjectRetain_n();
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  if (v31 == sub_1C5BCB414())
  {

    (*(v20 + 16))(v24, a5, v19);
    (*(v20 + 32))(v89, v24, v19);
    sub_1C59B3F0C(&qword_1EDA466A0);
    v91 = v30;
    v33 = v92;
    if (v79)
    {
      if (v88)
      {
        v34 = 10.0;
      }

      else
      {
        v34 = *&v86;
      }

      sub_1C5BCAFE4();
      v35 = v80;
      v36 = &v29[*(v80 + 52)];
      *v36 = v30;
      *(v36 + 1) = 0;
      v88 = v36;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919C8) + 36);
      sub_1C5BCB424();
      if (*&v29[v37] == v93[0])
      {
        v27 = v29;
      }

      else
      {
        v56 = v30;
        v30 = 0;
        v86 = (v78 + 16);
        v84 = (v56 + 32);
        v82 = (v78 + 32);
        v89 = (v78 + 8);
        v57 = 0.0;
        v58 = v90;
        while (1)
        {
          v59 = sub_1C5BCB484();
          (*v86)(v58);
          v59(v93, 0);
          sub_1C5BCB434();
          v60 = *(v91 + 16);
          if (v30 == v60)
          {
            break;
          }

          if (v30 >= v60)
          {
            goto LABEL_44;
          }

          v61 = v30 + 1;
          v62 = *&v84[8 * v30];
          *(v88 + 1) = v30 + 1;
          v27 = v29;
          v63 = *v82;
          v64 = v37;
          v65 = v32;
          v66 = v81;
          v67 = v92;
          (*v82)(v81, v90, v92);
          v68 = v83;
          v69 = v66;
          v32 = v65;
          v37 = v64;
          v63(v83, v69, v67);
          if (v62 > 0.0)
          {
            v70 = v62;
          }

          else
          {
            v70 = 0.0;
          }

          if (v62 >= 1.0)
          {
            v70 = 1.0;
          }

          v71 = v34 * v70 - v57;
          if (v71 < 0.0)
          {
            v72 = 0.0;
          }

          else
          {
            v72 = v71;
          }

          sub_1C5BCAB94();
          LOBYTE(v93[0]) = v87 & 1;
          LOBYTE(v94) = 0;
          sub_1C5BC8724();
          (*v89)(v68, v67);
          v57 = v57 + v72;
          sub_1C5BCB424();
          v30 = v61;
          v58 = v90;
          if (*&v29[v64] == v93[0])
          {
            goto LABEL_41;
          }
        }

        v27 = v29;
LABEL_40:
        (*v89)(v58, v92);
LABEL_41:
        v35 = v80;
      }

      goto LABEL_42;
    }

    if (v87)
    {
      v38 = 10.0;
    }

    else
    {
      v38 = *&v85;
    }

    sub_1C5BCAFE4();
    v35 = v80;
    v39 = &v27[*(v80 + 52)];
    *v39 = v30;
    *(v39 + 1) = 0;
    v87 = v39;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919C8) + 36);
    v90 = v19;
    sub_1C5BCB424();
    if (*&v27[v40] == v93[0])
    {
LABEL_42:
      v27[*(v35 + 56)] = 1;
      return sub_1C59B3F50(v27);
    }

    v41 = v30;
    v30 = v33;
    v42 = 0;
    v85 = (v78 + 16);
    v83 = (v41 + 32);
    v43 = (v78 + 32);
    v89 = (v78 + 8);
    v44 = 0.0;
    v45 = v77;
    while (1)
    {
      v46 = sub_1C5BCB484();
      (*v85)(v45);
      v46(v93, 0);
      sub_1C5BCB434();
      v47 = *(v91 + 16);
      if (v42 == v47)
      {
        v58 = v45;
        goto LABEL_40;
      }

      if (v42 >= v47)
      {
        break;
      }

      v48 = v42 + 1;
      v49 = *&v83[8 * v42];
      *(v87 + 1) = v42 + 1;
      v50 = *v43;
      v51 = v82;
      v30 = v92;
      (*v43)(v82, v45, v92);
      v52 = v84;
      v50(v84, v51, v30);
      if (v49 > 0.0)
      {
        v53 = v49;
      }

      else
      {
        v53 = 0.0;
      }

      if (v49 >= 1.0)
      {
        v53 = 1.0;
      }

      v54 = v38 * v53 - v44;
      if (v54 < 0.0)
      {
        v55 = 0.0;
      }

      else
      {
        v55 = v54;
      }

      sub_1C5BCAB94();
      LOBYTE(v93[0]) = 0;
      LOBYTE(v94) = v88 & 1;
      sub_1C5BC8724();
      (*v89)(v52, v30);
      v44 = v44 + v55;
      sub_1C5BCB424();
      v42 = v48;
      if (*&v27[v40] == v93[0])
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  v93[0] = 0;
  v93[1] = 0xE000000000000000;
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD00000000000003CLL, 0x80000001C5BF60C0);
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  v94 = sub_1C5BCB414();
  v74 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v74);

  MEMORY[0x1C694F170](0xD000000000000025, 0x80000001C5BF6100);
  v94 = *(v30 + 16);
  v75 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v75);

  MEMORY[0x1C694F170](41, 0xE100000000000000);
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

uint64_t sub_1C59B3F0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C5BC8894();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C59B3F50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C59B3FBC()
{
  result = qword_1EDA489D0[0];
  if (!qword_1EDA489D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA489D0);
  }

  return result;
}

double sub_1C59B4020(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_1C59B405C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

uint64_t MaterialView.init(_:placeholder:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = type metadata accessor for MaterialView();
  v9 = (a3 + v8[10]);
  *v9 = sub_1C59B4208();
  v9[1] = v10;
  v11 = a3 + v8[11];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a3 + v8[12];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a3 + v8[13];
  v14 = sub_1C5BCA684();
  *v13 = v16;
  *(v13 + 8) = v17;
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  return a2(v14);
}

uint64_t sub_1C59B4208()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1919F8);
  sub_1C5BCA684();
  return v1;
}

uint64_t sub_1C59B4250()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AA8);
  sub_1C5BCA694();
  return v1;
}

uint64_t sub_1C59B42FC(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 44));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1C59B444C@<X0>(void *a1@<X8>)
{
  sub_1C59B5ECC();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C59B449C()
{
  sub_1C59B5ECC();

  return sub_1C5BC8F54();
}

uint64_t sub_1C59B44FC(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[15];
  }

  return v8;
}

uint64_t sub_1C59B4650@<X0>(_BYTE *a1@<X8>)
{
  sub_1C59B5E78();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C59B46EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA694();
  return v1;
}

uint64_t MaterialView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v58 = sub_1C5BCB214();
  v57 = *(v58 - 8);
  v4 = MEMORY[0x1EEE9AC00](v58);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a1 - 8);
  v67 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1919D0);
  v46 = sub_1C5BC8AB4();
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v61 = &v45 - v8;
  v47 = sub_1C5BC8AB4();
  v51 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v68 = &v45 - v9;
  v50 = sub_1C5BC8AB4();
  v55 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v69 = &v45 - v10;
  sub_1C5BC87B4();
  v54 = sub_1C5BC8AB4();
  v53 = *(v54 - 8);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v45 - v13;
  v14 = *(a1 + 24);
  v71 = v7;
  v72 = v14;
  v15 = v2;
  v73 = v2;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1919D8);
  sub_1C59B50B8();
  v65 = v2;
  v63 = v7;
  sub_1C5BCA2C4();
  v16 = v70;
  v64 = *(v70 + 16);
  v17 = v66;
  v64(v66, v15, a1);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  *(v19 + 24) = v14;
  v20 = *(v16 + 32);
  v70 = v16 + 32;
  v62 = v20;
  v21 = a1;
  v20(v19 + v18, v17, a1);
  v22 = sub_1C59B51F4();
  v80 = v14;
  v81 = v22;
  v23 = v14;
  v60 = MEMORY[0x1E697E858];
  v24 = v46;
  WitnessTable = swift_getWitnessTable();
  v26 = v61;
  sub_1C5BC9E34();

  (*(v48 + 8))(v26, v24);
  v27 = v66;
  v64(v66, v65, a1);
  v28 = swift_allocObject();
  *(v28 + 16) = v63;
  *(v28 + 24) = v23;
  v62(v28 + v18, v27, a1);
  v78 = WitnessTable;
  v79 = MEMORY[0x1E69805D0];
  v29 = v47;
  v30 = swift_getWitnessTable();
  v31 = v68;
  sub_1C5BCA324();

  (*(v51 + 8))(v31, v29);
  v64(v27, v65, v21);
  v32 = swift_allocObject();
  *(v32 + 16) = v63;
  *(v32 + 24) = v23;
  v62(v32 + v18, v27, v21);
  v76 = v30;
  v77 = MEMORY[0x1E69805D0];
  v33 = v50;
  v34 = swift_getWitnessTable();
  v35 = v56;
  sub_1C5BCB1F4();
  v36 = v49;
  v37 = v69;
  sub_1C5BCA224();

  (*(v57 + 8))(v35, v58);
  (*(v55 + 8))(v37, v33);
  v38 = sub_1C59B575C();
  v74 = v34;
  v75 = v38;
  v39 = v54;
  swift_getWitnessTable();
  v40 = v53;
  v41 = *(v53 + 16);
  v42 = v52;
  v41(v52, v36, v39);
  v43 = *(v40 + 8);
  v43(v36, v39);
  v41(v59, v42, v39);
  return (v43)(v42, v39);
}