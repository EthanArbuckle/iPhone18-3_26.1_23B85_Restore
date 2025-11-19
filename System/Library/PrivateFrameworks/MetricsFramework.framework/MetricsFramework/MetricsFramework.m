uint64_t sub_258DDA4B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_DWORD *sub_258DDA518@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_258DDA544(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for EventMetadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_258DDA5F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EventMetadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_258DDA76C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_258DDA7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258F09B00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258F0A370();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_258DDA8C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_258F09B00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258F0A370();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_258DDA9C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDA9FC()
{
  v1 = sub_258F0A370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C68, &qword_258F0D398);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v15 = *(v8 + 64);
  v11 = v3 | v9;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  v13 = *(v0 + v6);

  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v15, v11 | 7);
}

uint64_t sub_258DDAB84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDABBC()
{
  v1 = sub_258F0A370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C90, &qword_258F0D3D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v16 = *(v8 + 64);
  v11 = v3 | v9;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  v14 = *(v0 + v6);

  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v16, v11 | 7);
}

uint64_t sub_258DDAD4C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_258DDADD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_258F09A70();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 52);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_258DDAE88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_258F09A70();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GMAssetAvailability(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GMAssetAvailability(uint64_t result, int a2, int a3)
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

uint64_t sub_258DDAFF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_258DDB06C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDB0A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for EventMetadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_258DDB154(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EventMetadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_258DDB1FC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_258DDB234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_258DDB2FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_258DDB40C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258DDB484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258DDB500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 76);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_258DDB5C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_258DDB678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_258DDB7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_258DDB904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258F09B00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258F0A370();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_258DDB9F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_258F09B00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258F0A370();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_258DDBAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
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

uint64_t sub_258DDBBC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
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

uint64_t sub_258DDBC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
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

uint64_t sub_258DDBD5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_258DDBE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_258DDBF54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_258DDC180()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDC1B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_258DDC260(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09B00();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258DDC2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09B00();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258DDC33C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDC384()
{
  v20 = sub_258F09A20();
  v1 = *(v20 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v4 + ((v2 + v21 + 8) & ~v2)) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 32);

  v11 = *(v1 + 8);
  v11(v0 + v3, v20);
  v12 = *(v0 + v5);

  v13 = *(v0 + v6);

  v14 = *(v0 + v7);

  v15 = *(v0 + v8);

  v16 = *(v0 + v9);

  v17 = *(v0 + v21);

  v11(v0 + ((v2 + v21 + 8) & ~v2), v20);
  v18 = *(v0 + v22);

  return MEMORY[0x2821FE8E8](v0, v22 + 8, v2 | 7);
}

uint64_t sub_258DDC510(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_258F098D0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_258F0A370();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_258DDC634(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_258F098D0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_258F0A370();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_258DDC758()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDC7A0()
{
  v20 = sub_258F09A20();
  v1 = *(v20 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v4 + ((v2 + v21 + 8) & ~v2)) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  v11 = *(v1 + 8);
  v11(v0 + v3, v20);
  v12 = *(v0 + v5);

  v13 = *(v0 + v6);

  v14 = *(v0 + v7);

  v15 = *(v0 + v8);

  v16 = *(v0 + v9);

  v17 = *(v0 + v21);

  v11(v0 + ((v2 + v21 + 8) & ~v2), v20);
  v18 = *(v0 + v22);

  return MEMORY[0x2821FE8E8](v0, v22 + 8, v2 | 7);
}

uint64_t sub_258DDC928@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_258DDC988()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDCA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258DDCA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258DDCAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F30, qword_258F132E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258F0A370();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_258DDCBF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F30, qword_258F132E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258F0A370();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_258DDCD00()
{
  v1 = type metadata accessor for PoirotODDIMetricsConcluder(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_258F09CD0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 20);
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v2 | 7);
}

uint64_t sub_258DDCE74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDCEB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_258F098D0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_258F0A370();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_258DDCFDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_258F098D0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_258F0A370();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_258DDD150()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDD188(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for EventMetadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_258DDD234(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EventMetadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_258DDD2D8()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[21];

  v10 = v0[23];

  v11 = v0[25];

  v12 = v0[30];

  v13 = v0[34];

  v14 = v0[35];

  return MEMORY[0x2821FE8E8](v0, 288, 7);
}

uint64_t sub_258DDD37C()
{
  v1 = sub_258F09A20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_258DDD414()
{
  v1 = sub_258F09A20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 5);

  v9 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);
  v10 = *&v0[v5];

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_258DDD514()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDD5E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDD664()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDD6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258F09B00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_258F0A370();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_258DDD800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_258F09B00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_258F0A370();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_258DDD908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_258DDD970@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_258DDDAA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework29SiriSegmentCohortSELFReporter_odBatchClientEvents;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_258DDDB08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDDB50()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258DDDB88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDDBC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258DDDC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 104);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_258DDDCD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 104);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_258DDDDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258F09B00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258F0A370();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_258DDDEBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_258F09B00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258F0A370();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_258DDDFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_258DDE08C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_258DDE150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AA58, &unk_258F174B0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_258DDE228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AA58, &unk_258F174B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t CombinedAIRAssetStatusData.rows.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CombinedAIRAssetStatusData.eventMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CombinedAIRAssetStatusData(0) + 20);

  return sub_258DDE438(v3, a1);
}

uint64_t sub_258DDE438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CombinedAIRAssetStatusData.eventMetadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CombinedAIRAssetStatusData(0) + 20);

  return sub_258DDE4E0(a1, v3);
}

uint64_t sub_258DDE4E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AIRAssetStatusResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AIRAssetStatusResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t AIRAssetStatusResults.combined.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t AIRAssetStatusCalculator.__allocating_init(logger:sqlFileURL:bookmarkService:oddId:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v50 = a4;
  v48 = a3;
  v44 = a2;
  v46 = a1;
  v6 = sub_258F09A70();
  v7 = *(v6 - 8);
  v8 = v7;
  v42 = v6;
  v43 = v7;
  v9 = *(v7 + 64);
  (MEMORY[0x28223BE20])();
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v11;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v14 = &v40 - v13;
  v15 = sub_258F0A370();
  v16 = *(v15 - 8);
  v17 = v16[8];
  (MEMORY[0x28223BE20])();
  v40 = v16[2];
  v41 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40();
  v19 = v14;
  sub_258DE20C0(a2, v14, &qword_27F988720, &qword_258F0B830);
  (*(v8 + 16))(v11, v50, v6);
  type metadata accessor for BiomeResultsWrapperFactory();
  v45 = swift_allocObject();
  v20 = type metadata accessor for CAAnalyticsEventSubmitter();
  v21 = swift_allocObject();
  v51[3] = v20;
  v51[4] = &off_286A2C648;
  v51[0] = v21;
  v22 = type metadata accessor for AIRAssetStatusCalculator(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v51, v20);
  v27 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v26, v26);
  v29 = (&v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v29;
  v32 = (v25 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_analyticsEventSubmitter);
  v32[3] = v20;
  v32[4] = &off_286A2C648;
  *v32 = v31;
  sub_258F09AC0();
  v33 = v41;
  (v40)(v25 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger, v41, v15);
  v34 = v19;
  sub_258DE20C0(v19, v25 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v35 = (v25 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService);
  v35[3] = sub_258F09C20();
  v35[4] = &off_286A2FA30;
  *v35 = v48;
  v36 = v42;
  v37 = v43;
  (*(v43 + 8))(v50, v42);
  sub_258DE2184(v44, &qword_27F988720, &qword_258F0B830);
  v38 = v16[1];
  v38(v46, v15);
  sub_258DE2184(v34, &qword_27F988720, &qword_258F0B830);
  v38(v33, v15);
  (*(v37 + 32))(v25 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_oddId, v47, v36);
  *(v25 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_biomeResultsFactory) = v45;
  *(v25 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_defaults) = v49;
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  return v25;
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

uint64_t sub_258DDEB4C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_258DDEBD4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for EventMetadata(0);
  v2[10] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = sub_258F09A20();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258DDEDA8, 0, 0);
}

uint64_t sub_258DDEDA8()
{
  v163 = v0;
  v1 = v0[7];

  v2 = sub_258F0A350();
  v3 = sub_258F0A810();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v162[0] = v6;
    *v5 = 136315138;
    sub_258F09A70();
    sub_258DE35A8(&qword_27F988758, MEMORY[0x277CC95F0]);
    v7 = sub_258F0AD60();
    v9 = sub_258DE3018(v7, v8, v162);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_258DD8000, v2, v3, "SQL calculator invoked: AIRAssetStatusCalculator %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C9EF40](v6, -1, -1);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v10 = v0[20];
  sub_258DE20C0(v0[7] + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_sqlFileURL, v10, &qword_27F988720, &qword_258F0B830);
  v11 = sub_258F098D0();
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  sub_258DE2184(v10, &qword_27F988720, &qword_258F0B830);
  if (v12 != 1)
  {
    v14 = v0[7];
    sub_258DDFD68(&OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_sqlFileURL, &OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger);
    v15 = v0[7];
    v16 = sub_258DE06EC(&OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService, &OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger);
    v17 = v0[19];
    v18 = *__swift_project_boxed_opaque_existential_1((v0[7] + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService), *(v0[7] + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService + 24));
    sub_258F09BF0();
    sub_258F09910();
    result = sub_258F099E0();
    v21 = v20 * 1000.0;
    if (COERCE__INT64(fabs(v20 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_54:
      __break(1u);
    }

    else if (v21 > -1.0)
    {
      if (v21 < 1.84467441e19)
      {
        v22 = v0[7];
        v158 = v16;
        v23 = sub_258DE0804(v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
        v24 = *(sub_258F0A190() - 8);
        v25 = *(v24 + 72);
        v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        *(swift_allocObject() + 16) = xmmword_258F0B820;
        v27 = sub_258F0A1B0();
        v29 = v28;
        v30 = swift_allocObject();
        *(v30 + 16) = v27;
        *(v30 + 24) = v29;
        sub_258F0A160();
        v31 = v23;
        v32 = sub_258F0A350();
        v33 = sub_258F0A810();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v162[0] = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_258DE3018(0x7465737341524941, 0xEE00737574617453, v162);
          _os_log_impl(&dword_258DD8000, v32, v33, "%s: current date data NOT included for aggregation.", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v35);
          MEMORY[0x259C9EF40](v35, -1, -1);
          MEMORY[0x259C9EF40](v34, -1, -1);
        }

        v36 = v0[7];
        sub_258F0A050();
        v37 = v31;

        v38 = sub_258F0A010();
        v39 = sub_258F0A040();

        type metadata accessor for BiomeResultsWrapper();
        inited = swift_initStackObject();
        *(inited + 16) = v39;
        v41 = MEMORY[0x259C9E880]();
        sub_258DE0F50(inited, v36, v0 + 5, v162);
        v152 = v37;
        v53 = v0[7];
        objc_autoreleasePoolPop(v41);
        v54 = sub_258DE1084(v162[0], v21);

        v55 = *(v54 + 16);
        v56 = v54 - 744;
        v57 = v55 + 1;
        while (--v57)
        {
          v58 = (v56 + 792);
          v59 = *(v56 + 800);
          v56 += 792;
          if (v59)
          {
            v60 = v0[12];
            v61 = *v58;
            swift_bridgeObjectRetain_n();
            sub_258F09A30();
            swift_bridgeObjectRelease_n();
            goto LABEL_18;
          }
        }

        v62 = v0[12];
        v63 = sub_258F09A70();
        (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
LABEL_18:
        v64 = v0[11];
        v160 = v0[12];
        v65 = v0[10];
        v66 = v0[7];
        v67 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_oddId;
        v68 = sub_258F09A70();
        v69 = *(v68 - 8);
        (*(v69 + 16))(v64, v66 + v67, v68);
        v70 = *(v69 + 56);
        v70(v64, 0, 1, v68);
        sub_258DE20C0(v160, v64 + v65[5], &qword_27F988730, &unk_258F0F8E0);
        result = v70(v64 + v65[6], 1, 1, v68);
        v71 = v64 + v65[7];
        *v71 = 0;
        *(v71 + 8) = 1;
        *(v64 + v65[8]) = 0;
        v72 = v64 + v65[9];
        *v72 = 0;
        *(v72 + 8) = 1;
        v73 = v64 + v65[10];
        *v73 = 0;
        *(v73 + 8) = 1;
        v74 = v64 + v65[11];
        *v74 = 0;
        *(v74 + 4) = 1;
        *(v64 + v65[12]) = 2;
        if (v55)
        {
          v75 = v0[11];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988748, &qword_258F0B858);
          v76 = (type metadata accessor for CombinedAIRAssetStatusData(0) - 8);
          v77 = *(*v76 + 72);
          v78 = (*(*v76 + 80) + 32) & ~*(*v76 + 80);
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_258F0B820;
          v161 = v79;
          v80 = (v79 + v78);
          sub_258DDE438(v75, v80 + v76[7]);
          *v80 = v54;
        }

        else
        {
          v161 = MEMORY[0x277D84F90];
        }

        v81 = 0;
        v82 = MEMORY[0x277D84F90];
LABEL_22:
        v83 = (v54 + 40 + 792 * v81);
        while (v55 != v81)
        {
          if (v81 >= *(v54 + 16))
          {
            __break(1u);
            goto LABEL_54;
          }

          v84 = v83 + 792;
          ++v81;
          v85 = *v83;
          v83 += 792;
          if ((v85 & 1) == 0)
          {
            v86 = *(v84 - 100);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_258DE1FBC(0, *(v82 + 16) + 1, 1, v82);
              v82 = result;
            }

            v88 = *(v82 + 16);
            v87 = *(v82 + 24);
            if (v88 >= v87 >> 1)
            {
              result = sub_258DE1FBC((v87 > 1), v88 + 1, 1, v82);
              v82 = result;
            }

            *(v82 + 16) = v88 + 1;
            *(v82 + 8 * v88 + 32) = v86;
            goto LABEL_22;
          }
        }

        v89 = *(v82 + 16);
        if (!v89)
        {

          v93 = 1;
LABEL_44:
          v105 = v0[13];
          v106 = v0[14];
          v108 = v0[8];
          v107 = v0[9];
          (*(v106 + 56))(v107, v93, 1, v105);
          sub_258DE20C0(v107, v108, &qword_27F988728, &unk_258F0B840);
          if ((*(v106 + 48))(v108, 1, v105) == 1)
          {
            sub_258DE2184(v0[8], &qword_27F988728, &unk_258F0B840);
            v109 = sub_258F0A350();
            v110 = sub_258F0A800();
            if (os_log_type_enabled(v109, v110))
            {
              v111 = swift_slowAlloc();
              *v111 = 0;
              _os_log_impl(&dword_258DD8000, v109, v110, "No valid AIR event timestamps for bookmark update. Bookmark is not updated.", v111, 2u);
              MEMORY[0x259C9EF40](v111, -1, -1);
            }

            v156 = MEMORY[0x277D84F90];
            v112 = v109;
            v113 = v152;
          }

          else
          {
            v114 = v0[17];
            v115 = v0[18];
            v117 = v0[15];
            v116 = v0[16];
            v119 = v0[13];
            v118 = v0[14];
            (*(v118 + 32))(v115, v0[8], v119);
            sub_258F099E0();
            sub_258F099D0();
            v120 = *(v118 + 16);
            v120(v116, v114, v119);
            v120(v117, v115, v119);
            v121 = sub_258F0A350();
            v122 = sub_258F0A800();
            v123 = os_log_type_enabled(v121, v122);
            v125 = v0[15];
            v124 = v0[16];
            v127 = v0[13];
            v126 = v0[14];
            if (v123)
            {
              v154 = v0[15];
              v128 = swift_slowAlloc();
              v157 = swift_slowAlloc();
              v162[0] = v157;
              *v128 = 136315394;
              sub_258DE35A8(&qword_27F988750, MEMORY[0x277CC9578]);
              v149 = v122;
              v129 = sub_258F0AD60();
              v131 = v130;
              v132 = *(v126 + 8);
              v132(v124, v127);
              v133 = sub_258DE3018(v129, v131, v162);

              *(v128 + 4) = v133;
              *(v128 + 12) = 2080;
              v134 = sub_258F0AD60();
              v136 = v135;
              v132(v154, v127);
              v137 = sub_258DE3018(v134, v136, v162);

              *(v128 + 14) = v137;
              _os_log_impl(&dword_258DD8000, v121, v149, "AIR staged bookmark endTime (exclusive): %s from lastEvent=%s", v128, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x259C9EF40](v157, -1, -1);
              MEMORY[0x259C9EF40](v128, -1, -1);
            }

            else
            {

              v132 = *(v126 + 8);
              v132(v125, v127);
              v132(v124, v127);
            }

            v139 = v0[17];
            v138 = v0[18];
            v140 = v0[13];
            v156 = sub_258F09B70();
            v132(v139, v140);
            v132(v138, v140);
            v112 = v158;
            v113 = v152;
          }

          v142 = v0[19];
          v141 = v0[20];
          v150 = v0[18];
          v151 = v0[17];
          v153 = v0[16];
          v155 = v0[15];
          v143 = v0[13];
          v144 = v0[14];
          v145 = v0[11];
          v146 = v0[12];
          v147 = v0[9];
          v159 = v0[8];
          v148 = v0[6];

          sub_258DE2184(v147, &qword_27F988728, &unk_258F0B840);
          sub_258DE2128(v145);
          sub_258DE2184(v146, &qword_27F988730, &unk_258F0F8E0);
          (*(v144 + 8))(v142, v143);
          *v148 = v156;
          v148[1] = MEMORY[0x277D84F90];
          v148[2] = v161;

          v52 = v0[1];
          goto LABEL_11;
        }

        v90 = *(v82 + 32);
        v91 = v89 - 1;
        if (v89 != 1)
        {
          if (v89 < 5)
          {
            v92 = 1;
            goto LABEL_39;
          }

          v92 = v91 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v94 = vdupq_n_s64(v90);
          v95 = (v82 + 56);
          v96 = v91 & 0xFFFFFFFFFFFFFFFCLL;
          v97 = v94;
          do
          {
            v94 = vbslq_s8(vcgtq_u64(v94, v95[-1]), v94, v95[-1]);
            v97 = vbslq_s8(vcgtq_u64(v97, *v95), v97, *v95);
            v95 += 2;
            v96 -= 4;
          }

          while (v96);
          v98 = vbslq_s8(vcgtq_u64(v94, v97), v94, v97);
          v99 = vextq_s8(v98, v98, 8uLL).u64[0];
          v90 = vbsl_s8(vcgtd_u64(v98.u64[0], v99), *v98.i8, v99);
          if (v91 != (v91 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_39:
            v100 = v89 - v92;
            v101 = (v82 + 8 * v92 + 32);
            do
            {
              v103 = *v101++;
              v102 = v103;
              if (v90 <= v103)
              {
                v90 = v102;
              }

              --v100;
            }

            while (v100);
          }
        }

        v104 = v0[9];
        sub_258F099D0();
        v93 = 0;
        goto LABEL_44;
      }

LABEL_56:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_56;
  }

  sub_258DE1858();
  swift_allocError();
  *v13 = 9;
  swift_willThrow();
  v43 = v0[19];
  v42 = v0[20];
  v45 = v0[17];
  v44 = v0[18];
  v47 = v0[15];
  v46 = v0[16];
  v49 = v0[11];
  v48 = v0[12];
  v50 = v0[8];
  v51 = v0[9];

  v52 = v0[1];
LABEL_11:

  return v52();
}

uint64_t sub_258DDFD68(uint64_t *a1, uint64_t *a2)
{
  v49 = a2;
  v4 = sub_258F0A540();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v46 - v15;
  v17 = *a1;
  v50 = v2;
  sub_258DE20C0(v2 + v17, &v46 - v15, &qword_27F988720, &qword_258F0B830);
  v18 = sub_258F098D0();
  v19 = *(v18 - 8);
  v20 = v19 + 48;
  v21 = *(v19 + 48);
  LODWORD(a1) = v21(v16, 1, v18);
  sub_258DE2184(v16, &qword_27F988720, &qword_258F0B830);
  if (a1 == 1)
  {
    sub_258DE403C();
    swift_allocError();
    *v22 = 9;
    swift_willThrow();
    return v20;
  }

  sub_258DE20C0(v50 + v17, v13, &qword_27F988720, &qword_258F0B830);
  result = v21(v13, 1, v18);
  if (result != 1)
  {
    v20 = v47;
    sub_258F0A530();
    v24 = v48;
    v25 = sub_258F0A4C0();
    v27 = v24;
    if (v24)
    {
      (*(v19 + 8))(v13, v18);
      v28 = *v49;

      v29 = sub_258F0A350();
      v30 = sub_258F0A820();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v52 = v32;
        *v31 = 136315138;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888C0, &unk_258F0FA30);
        v33 = sub_258F0A550();
        v35 = sub_258DE3018(v33, v34, &v52);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_258DD8000, v29, v30, "#%s: SQL file could not be loaded", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x259C9EF40](v32, -1, -1);
        MEMORY[0x259C9EF40](v31, -1, -1);
      }

      sub_258DE403C();
      swift_allocError();
      *v36 = 10;
      swift_willThrow();
    }

    else
    {
      v20 = v25;
      v37 = v26;
      (*(v19 + 8))(v13, v18);
      v38 = *v49;

      v39 = sub_258F0A350();
      v40 = sub_258F0A810();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v52 = v42;
        *v41 = 136315394;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888C0, &unk_258F0FA30);
        v43 = sub_258F0A550();
        v45 = sub_258DE3018(v43, v44, &v52);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_258DE3018(v20, v37, &v52);
        _os_log_impl(&dword_258DD8000, v39, v40, "#%s: SQL: %s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v42, -1, -1);
        MEMORY[0x259C9EF40](v41, -1, -1);
      }
    }

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_258DE04C8()
{
  v2 = v0;
  v3 = *__swift_project_boxed_opaque_existential_1((v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 24));
  result = sub_258F09BD0();
  if (v1)
  {
    v5 = result;
    v6 = v2 + *(*v2 + 112);
    v7 = sub_258F0A350();
    v8 = sub_258F0A800();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_258DD8000, v7, v8, "No bookmark found for the extension", v9, 2u);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }

    sub_258DE403C();
    swift_allocError();
    *v10 = 8;
    swift_willThrow();

    return v5;
  }

  return result;
}

uint64_t sub_258DE06EC(void *a1, void *a2)
{
  v5 = v2;
  v6 = *__swift_project_boxed_opaque_existential_1((v2 + *a1), *(v2 + *a1 + 24));
  result = sub_258F09BD0();
  if (v3)
  {
    v8 = result;
    v9 = v5 + *a2;
    v10 = sub_258F0A350();
    v11 = sub_258F0A800();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_258DD8000, v10, v11, "No bookmark found for the extension", v12, 2u);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    sub_258DE403C();
    swift_allocError();
    *v13 = 8;
    swift_willThrow();

    return v8;
  }

  return result;
}

id sub_258DE0804(void *a1)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v66[-v6];
  v8 = sub_258F09A20();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v66[-v17];
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v66[-v21];
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v66[-v25];
  MEMORY[0x28223BE20](v24, v27);
  v77 = &v66[-v28];
  v29 = *(v1 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_defaults);
  v30 = sub_258F0A4E0();
  LODWORD(v29) = [v29 BOOLForKey_];

  if (v29)
  {
    v75 = v7;
    v31 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService), *(v2 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService + 24));
    sub_258F09BF0();
    v32 = v77;
    sub_258F09910();
    sub_258F09B50();
    sub_258F09930();
    v33 = v9[1];
    v76 = v9 + 1;
    v33(v22, v8);
    v34 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger;
    v74 = v9;
    v35 = v9[2];
    v35(v18, v32, v8);
    v35(v14, v26, v8);
    v72 = v34;
    v73 = v2;
    v36 = sub_258F0A350();
    v37 = sub_258F0A800();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v70 = v35;
      v39 = v38;
      v69 = swift_slowAlloc();
      v80[0] = v69;
      *v39 = 136315394;
      sub_258DE35A8(&qword_27F988750, MEMORY[0x277CC9578]);
      v71 = v26;
      v68 = v36;
      v40 = sub_258F0AD60();
      v67 = v37;
      v42 = v41;
      v33(v18, v8);
      v43 = sub_258DE3018(v40, v42, v80);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = sub_258F0AD60();
      v46 = v45;
      v33(v14, v8);
      v47 = sub_258DE3018(v44, v46, v80);
      v26 = v71;

      *(v39 + 14) = v47;
      v48 = v68;
      _os_log_impl(&dword_258DD8000, v68, v67, "AIR IncludeCurrentDate override ON. existing BookmarkStart=%s, overrideStart=%s", v39, 0x16u);
      v49 = v69;
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v49, -1, -1);
      v50 = v39;
      v35 = v70;
      MEMORY[0x259C9EF40](v50, -1, -1);
    }

    else
    {

      v33(v14, v8);
      v33(v18, v8);
    }

    [v78 copy];
    sub_258F0A9C0();
    swift_unknownObjectRelease();
    sub_258F0A140();
    v51 = swift_dynamicCast();
    v52 = v74;
    v53 = v75;
    if (v51)
    {
      v54 = v79;
      v35(v75, v26, v8);
      (v52[7])(v53, 0, 1, v8);
      v55 = sub_258F0A110();
      sub_258DE2184(v53, &qword_27F988728, &unk_258F0B840);
      if (v55)
      {
        v33(v26, v8);
        v33(v77, v8);
        return v54;
      }

      v61 = sub_258F0A350();
      v62 = sub_258F0A820();
      if (os_log_type_enabled(v61, v62))
      {
        v59 = v26;
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_258DD8000, v61, v62, "AIR IncludeCurrentDate override: failed to apply override start to existing bookmark", v63, 2u);
        MEMORY[0x259C9EF40](v63, -1, -1);

        goto LABEL_12;
      }
    }

    else
    {
      v57 = sub_258F0A350();
      v58 = sub_258F0A820();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = v26;
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_258DD8000, v57, v58, "AIR IncludeCurrentDate override: failed to copy bookmark for override", v60, 2u);
        MEMORY[0x259C9EF40](v60, -1, -1);

LABEL_12:
        v64 = v59;
LABEL_16:
        v33(v64, v8);
        v33(v77, v8);
        goto LABEL_17;
      }
    }

    v64 = v26;
    goto LABEL_16;
  }

LABEL_17:
  v65 = v78;

  return v65;
}

uint64_t sub_258DE0EF8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v3 = a1();
  v5 = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
  a2[3] = result;
  *a2 = v3;
  a2[1] = v5;
  return result;
}

void sub_258DE0F50(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = sub_258DE41F4(*(a1 + 16), a2 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger);
  sub_258DFCCF8(a1, 0);
  if (v4)
  {

    *a3 = v4;
  }

  else
  {

    v9 = sub_258F0A350();
    v10 = sub_258F0A810();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v8 + 2);

      _os_log_impl(&dword_258DD8000, v9, v10, "AIRAssetStatusCalculator query yielded %ld rows", v11, 0xCu);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    else
    {
    }

    *a4 = v8;
  }
}

uint64_t sub_258DE1084(uint64_t a1, unint64_t a2)
{
  v90 = sub_258F09A20();
  v88 = *(v90 - 8);
  v4 = *(v88 + 64);
  v6 = MEMORY[0x28223BE20](v90, v5);
  v8 = &v80[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v92 = &v80[-v10];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v11 = *(*(v86 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v86, v12);
  v85 = &v80[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v80[-v17];
  result = MEMORY[0x28223BE20](v16, v19);
  v91 = &v80[-v21];
  v22 = *(a1 + 16);
  v89 = a1;
  if (v22)
  {
    v23 = 0;
    v24 = a1 + 32;
    v25 = MEMORY[0x277D84F90];
    while (2)
    {
      v26 = v25;
      v27 = (v24 + 792 * v23);
      v28 = v23;
      while (1)
      {
        if (v28 >= v22)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          return result;
        }

        result = memcpy(v94, v27, 0x311uLL);
        v23 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_48;
        }

        if ((v94[1] & 1) == 0 && v94[0] > a2)
        {
          break;
        }

        ++v28;
        v27 += 792;
        if (v23 == v22)
        {
          v25 = v26;
          goto LABEL_17;
        }
      }

      sub_258DE40EC(v94, v93);
      v25 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_258E14B68(0, *(v26 + 16) + 1, 1);
        v25 = v95;
      }

      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_258E14B68((v30 > 1), v31 + 1, 1);
        v25 = v95;
      }

      *(v25 + 16) = v31 + 1;
      result = memcpy((v25 + 792 * v31 + 32), v94, 0x311uLL);
      if (v23 != v22)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

LABEL_17:
  if (v22 != *(v25 + 16))
  {
    v82 = v22 - *(v25 + 16);
    v84 = v25;
    v32 = 0;
    v33 = (v89 + 40);
    v34 = MEMORY[0x277D84F90];
LABEL_19:
    v35 = (v33 + 792 * v32);
    while (v22 != v32)
    {
      if (v32 >= v22)
      {
        goto LABEL_49;
      }

      v36 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_50;
      }

      v37 = *v35;
      ++v32;
      v35 += 792;
      if ((v37 & 1) == 0)
      {
        v89 = v33;
        v38 = *(v35 - 100);
        result = swift_isUniquelyReferenced_nonNull_native();
        v39 = v8;
        if ((result & 1) == 0)
        {
          result = sub_258DE1FBC(0, *(v34 + 16) + 1, 1, v34);
          v34 = result;
        }

        v41 = *(v34 + 16);
        v40 = *(v34 + 24);
        if (v41 >= v40 >> 1)
        {
          result = sub_258DE1FBC((v40 > 1), v41 + 1, 1, v34);
          v34 = result;
        }

        *(v34 + 16) = v41 + 1;
        *(v34 + 8 * v41 + 32) = v38;
        v32 = v36;
        v8 = v39;
        v33 = v89;
        goto LABEL_19;
      }
    }

    v83 = v8;
    v89 = v18;
    v42 = *(v34 + 16);
    v44 = v91;
    v43 = v92;
    if (!v42)
    {

      v45 = 0;
      v50 = 1;
      v47 = v90;
      v48 = v88;
LABEL_42:
      (*(v48 + 56))(v44, v50, 1, v47);
      sub_258F099D0();
      v61 = v83;
      (*(v48 + 16))(v83, v43, v47);
      sub_258DE20C0(v44, v89, &qword_27F988728, &unk_258F0B840);
      v62 = sub_258F0A350();
      v63 = sub_258F0A800();
      if (os_log_type_enabled(v62, v63))
      {
        v81 = v42 == 0;
        v64 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v93[0] = v88;
        *v64 = 134219010;
        *(v64 + 4) = v82;
        *(v64 + 12) = 2048;
        *(v64 + 14) = a2;
        *(v64 + 22) = 2080;
        sub_258DE35A8(&qword_27F988750, MEMORY[0x277CC9578]);
        LODWORD(v87) = v63;
        v65 = sub_258F0AD60();
        v67 = v66;
        v68 = *(v48 + 8);
        v68(v61, v47);
        v69 = sub_258DE3018(v65, v67, v93);

        *(v64 + 24) = v69;
        *(v64 + 32) = 2080;
        v94[0] = v45;
        LOBYTE(v94[1]) = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988948, &unk_258F0C0F0);
        v70 = sub_258F0A550();
        v72 = sub_258DE3018(v70, v71, v93);

        *(v64 + 34) = v72;
        *(v64 + 42) = 2080;
        v73 = v89;
        sub_258DE20C0(v89, v85, &qword_27F988728, &unk_258F0B840);
        v74 = sub_258F0A550();
        v76 = v75;
        sub_258DE2184(v73, &qword_27F988728, &unk_258F0B840);
        v77 = sub_258DE3018(v74, v76, v93);

        *(v64 + 44) = v77;
        _os_log_impl(&dword_258DD8000, v62, v87, "AIR guard filtered=%ld behind bookmark; savedStart ms=%llu time=%s, minReturned ms=%s time=%s", v64, 0x34u);
        v78 = v88;
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v78, -1, -1);
        MEMORY[0x259C9EF40](v64, -1, -1);

        v68(v92, v90);
      }

      else
      {

        sub_258DE2184(v89, &qword_27F988728, &unk_258F0B840);
        v79 = *(v48 + 8);
        v79(v61, v47);
        v79(v92, v47);
      }

      sub_258DE2184(v91, &qword_27F988728, &unk_258F0B840);
      return v84;
    }

    v45 = *(v34 + 32);
    v46 = v42 - 1;
    v47 = v90;
    v48 = v88;
    if (v42 != 1)
    {
      if (v42 < 5)
      {
        v49 = 1;
        goto LABEL_37;
      }

      v49 = v46 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v51 = vdupq_n_s64(v45);
      v52 = (v34 + 56);
      v53 = v46 & 0xFFFFFFFFFFFFFFFCLL;
      v54 = v51;
      do
      {
        v51 = vbslq_s8(vcgtq_u64(v51, v52[-1]), v52[-1], v51);
        v54 = vbslq_s8(vcgtq_u64(v54, *v52), *v52, v54);
        v52 += 2;
        v53 -= 4;
      }

      while (v53);
      v55 = vbslq_s8(vcgtq_u64(v54, v51), v51, v54);
      v56 = vextq_s8(v55, v55, 8uLL).u64[0];
      v45 = vbsl_s8(vcgtd_u64(v56, v55.u64[0]), *v55.i8, v56);
      if (v46 != (v46 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_37:
        v57 = v42 - v49;
        v58 = (v34 + 8 * v49 + 32);
        do
        {
          v60 = *v58++;
          v59 = v60;
          if (v60 < v45)
          {
            v45 = v59;
          }

          --v57;
        }

        while (v57);
      }
    }

    sub_258F099D0();
    v50 = 0;
    goto LABEL_42;
  }

  return v25;
}

unint64_t sub_258DE1858()
{
  result = qword_27F988738;
  if (!qword_27F988738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988738);
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

uint64_t sub_258DE18F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3();
  v7 = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
  a1[3] = result;
  *a1 = v5;
  a1[1] = v7;
  return result;
}

uint64_t AIRAssetStatusCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_biomeResultsFactory);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_analyticsEventSubmitter));
  v4 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_calendar;
  v5 = sub_258F09B00();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return v0;
}

uint64_t AIRAssetStatusCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_biomeResultsFactory);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_analyticsEventSubmitter));
  v4 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_calendar;
  v5 = sub_258F09B00();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258DE1CA0@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_258DE1D28(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258DDEBD4(a1);
}

uint64_t sub_258DE1DC4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_258DE1EB8()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258F0AE70();
  return sub_258F0AE90();
}

uint64_t sub_258DE1F2C()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258F0AE70();
  return sub_258F0AE90();
}

uint64_t sub_258DE1F70(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_258DE1FBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988940, &qword_258F0C0E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_258DE20C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258DE2128(uint64_t a1)
{
  v2 = type metadata accessor for EventMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258DE2184(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_258DE21E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988950, &qword_258F0DC10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 792);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[792 * v8])
    {
      memmove(v12, v13, 792 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258DE2348(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988930, &unk_258F0DBF0);
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

char *sub_258DE2460(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_258DE255C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988880, &unk_258F0C030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988888, &unk_258F0DC00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258DE26F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988918, &qword_258F0C0C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258DE2864(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988908, &qword_258F0C0B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_258DE2990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888D0, &qword_258F0DBA0);
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

char *sub_258DE2AC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888F8, &qword_258F0C0A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 272);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[272 * v8])
    {
      memmove(v12, v13, 272 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_258DE2C0C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988890, &unk_258F0C040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988898, &qword_258F14EF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_258DE2DB8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_258DE2FBC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_258DE3018(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_258DE3018(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_258DE30E4(v11, 0, 0, 1, a1, a2);
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
    sub_258DE4090(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_258DE30E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_258DE31F0(a5, a6);
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
    result = sub_258F0AB10();
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

uint64_t sub_258DE31F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_258DE323C(a1, a2);
  sub_258DE336C(&unk_286A27CE8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_258DE323C(uint64_t a1, unint64_t a2)
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

  v6 = sub_258EAEF54(v5, 0);
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

  result = sub_258F0AB10();
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
        v10 = sub_258F0A600();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_258EAEF54(v10, 0);
        result = sub_258F0AAC0();
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

uint64_t sub_258DE336C(uint64_t result)
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

  result = sub_258DE3458(result, v12, 1, v3);
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

char *sub_258DE3458(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988938, &qword_258F0C0E0);
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

_BYTE **sub_258DE354C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_258DE35A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258DE35F0()
{
  result = qword_27F988760;
  if (!qword_27F988760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988760);
  }

  return result;
}

uint64_t sub_258DE3644(uint64_t a1)
{
  result = sub_258DE35A8(&qword_27F988768, type metadata accessor for AIRAssetStatusCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258DE369C(uint64_t a1)
{
  result = sub_258DE35A8(&qword_27F988770, type metadata accessor for AIRAssetStatusCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258DE36F4()
{
  result = qword_27F988778;
  if (!qword_27F988778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988778);
  }

  return result;
}

void sub_258DE3770()
{
  sub_258DE4170(319, &qword_27F988790, &type metadata for AIRAssetStatusData, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EventMetadata(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_258DE382C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_258DE3874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_258DE38CC()
{
  v0 = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_258DE3B74();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_258F09B00();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_258F09A70();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of AIRAssetStatusCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

void sub_258DE3B74()
{
  if (!qword_27F9887A8)
  {
    sub_258F098D0();
    v0 = sub_258F0A920();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9887A8);
    }
  }
}

uint64_t sub_258DE3FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_258DE403C()
{
  result = qword_27F9888B8;
  if (!qword_27F9888B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9888B8);
  }

  return result;
}

uint64_t sub_258DE4090(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_258DE4170(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

char *sub_258DE41F4(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v47 = sub_258F0A370();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v47, v5);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_258F0A070() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v44 = (v3 + 16);
  v49 = MEMORY[0x277D84F90];
  v45 = a1;
  while (2)
  {
    v11 = sub_258F0A060();
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = v11;
    v50 = 0;
    v13 = sub_258DFBCE0(MEMORY[0x277D84F90]);
    v14 = 0;
    v15 = v12 + 64;
    v16 = 1 << *(v12 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v12 + 64);
    v19 = (v16 + 63) >> 6;
    v51 = v12;
    v52 = v12 + 64;
    if (!v18)
    {
LABEL_14:
      if (v19 <= v14 + 1)
      {
        v21 = v14 + 1;
      }

      else
      {
        v21 = v19;
      }

      v22 = v21 - 1;
      while (1)
      {
        v20 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v20 >= v19)
        {
          v18 = 0;
          v14 = v22;
          memset(v53, 0, 72);
          goto LABEL_23;
        }

        v18 = *(v15 + 8 * v20);
        ++v14;
        if (v18)
        {
          v14 = v20;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      result = sub_258F0ADC0();
      __break(1u);
      return result;
    }

    while (1)
    {
      v20 = v14;
LABEL_22:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v23 | (v20 << 6);
      sub_258DEB85C(*(v12 + 48) + 40 * v24, v56);
      sub_258DE4090(*(v12 + 56) + 32 * v24, v55);
      v53[0] = v56[0];
      v53[1] = v56[1];
      *&v53[2] = v57;
      sub_258DEB8B8(v55, (&v53[2] + 8));
      v15 = v52;
LABEL_23:
      *&v54[32] = v53[2];
      *&v54[48] = v53[3];
      *&v54[64] = *&v53[4];
      *v54 = v53[0];
      *&v54[16] = v53[1];
      if (!*(&v53[1] + 1))
      {
        break;
      }

      sub_258DEB8B8(&v54[40], v56);
      v53[0] = *v54;
      v53[1] = *&v54[16];
      *&v53[2] = *&v54[32];
      if (swift_dynamicCast())
      {
        v25 = v55[0];
        sub_258DE4090(v56, v53);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v55[0] = v13;
        v28 = sub_258E2E9B4(v25, *(&v25 + 1));
        v29 = v13[2];
        v30 = (v27 & 1) == 0;
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          goto LABEL_47;
        }

        v32 = v27;
        if (v13[3] >= v31)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v12 = v51;
            if ((v27 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            sub_258ED833C();
            v12 = v51;
            if ((v32 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          sub_258ED4EAC(v31, isUniquelyReferenced_nonNull_native);
          v33 = sub_258E2E9B4(v25, *(&v25 + 1));
          if ((v32 & 1) != (v34 & 1))
          {
            goto LABEL_49;
          }

          v28 = v33;
          v12 = v51;
          if ((v32 & 1) == 0)
          {
LABEL_35:
            v13 = *&v55[0];
            *(*&v55[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
            *(v13[6] + 16 * v28) = v25;
            sub_258DEB8B8(v53, (v13[7] + 32 * v28));
            __swift_destroy_boxed_opaque_existential_1Tm(v56);
            v36 = v13[2];
            v37 = __OFADD__(v36, 1);
            v38 = v36 + 1;
            if (v37)
            {
              goto LABEL_48;
            }

            v13[2] = v38;
            goto LABEL_37;
          }
        }

        v13 = *&v55[0];
        v35 = (*(*&v55[0] + 56) + 32 * v28);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        sub_258DEB8B8(v53, v35);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
LABEL_37:
        v15 = v52;
        if (!v18)
        {
          goto LABEL_14;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        if (!v18)
        {
          goto LABEL_14;
        }
      }
    }

    v7 = v46;
    (*v44)(v46, v48, v47);
    v8 = v7;
    v9 = v50;
    sub_258DE7A54(v13, v8, v54);
    if (v9)
    {

      sub_258F0A820();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v10 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      memcpy(v53, v54, 0x311uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_258DE21E4(0, *(v49 + 2) + 1, 1, v49);
      }

      v40 = *(v49 + 2);
      v39 = *(v49 + 3);
      if (v40 >= v39 >> 1)
      {
        v49 = sub_258DE21E4((v39 > 1), v40 + 1, 1, v49);
      }

      v41 = v49;
      *(v49 + 2) = v40 + 1;
      memcpy(&v41[792 * v40 + 32], v53, 0x311uLL);
    }

LABEL_5:
    if (sub_258F0A070())
    {
      continue;
    }

    return v49;
  }
}

unint64_t sub_258DE4740(char a1)
{
  result = 0x757461745377656ELL;
  switch(a1)
  {
    case 1:
      result = 0x7461745376657270;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
      result = 0xD000000000000028;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000029;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD00000000000002DLL;
      break;
    case 8:
    case 9:
      result = 0xD000000000000024;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000034;
      break;
    case 14:
      result = 0xD00000000000002CLL;
      break;
    case 15:
      result = 0x4965736143657375;
      break;
    case 16:
      result = 0x4D746E6572727563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258DE49B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_258DE8634();
  *a2 = result;
  return result;
}

unint64_t sub_258DE49E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_258DE4740(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_258DE4A30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258DE8634();
  *a1 = result;
  return result;
}

uint64_t sub_258DE4A64(uint64_t a1)
{
  v2 = sub_258DEB6E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258DE4AA0(uint64_t a1)
{
  v2 = sub_258DEB6E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258DE4ADC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9889D8, &qword_258F0C6A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v44 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258DEB6E4();
  sub_258F0AEE0();
  v12 = *v3;
  v13 = *(v3 + 8);
  v46 = 0;
  sub_258F0ACF0();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    v46 = 1;
    sub_258F0ACF0();
    v16 = v3[4];
    v17 = *(v3 + 40);
    v46 = 2;
    sub_258F0ACC0();
    v18 = v3[6];
    v19 = *(v3 + 56);
    v46 = 3;
    sub_258F0ACC0();
    v20 = *(v3 + 57);
    v46 = 4;
    sub_258F0ACB0();
    v21 = *(v3 + 58);
    v46 = 5;
    sub_258F0ACB0();
    v22 = *(v3 + 59);
    v46 = 6;
    sub_258F0ACB0();
    v23 = v3[8];
    v24 = *(v3 + 72);
    v46 = 7;
    sub_258F0ACC0();
    v25 = v3[10];
    v26 = *(v3 + 88);
    v46 = 8;
    sub_258F0ACC0();
    v27 = v3[12];
    v28 = *(v3 + 104);
    v46 = 9;
    sub_258F0ACC0();
    v29 = v3[14];
    v30 = *(v3 + 120);
    v46 = 10;
    sub_258F0ACC0();
    v31 = *(v3 + 31);
    v32 = *(v3 + 128);
    v46 = 11;
    v45 = v32;
    sub_258F0ACE0();
    v33 = *(v3 + 33);
    v34 = *(v3 + 136);
    v46 = 12;
    v45 = v34;
    sub_258F0ACE0();
    v35 = *(v3 + 35);
    v36 = *(v3 + 144);
    v46 = 13;
    v45 = v36;
    sub_258F0ACE0();
    v37 = v3[19];
    v38 = *(v3 + 160);
    v46 = 14;
    sub_258F0ACC0();
    v39 = v3[21];
    v40 = v3[22];
    v46 = 15;
    sub_258F0ACA0();
    v41 = v3[23];
    v42 = v3[24];
    v46 = 16;
    sub_258F0ACA0();
  }

  return (*(v6 + 8))(v10, v5);
}

__n128 sub_258DE4EC8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258DE8688(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11;
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_258DE4F64(char a1)
{
  result = 0x737574617473;
  switch(a1)
  {
    case 1:
      result = 0x64616F6C6E776F64;
      break;
    case 2:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD000000000000030;
      break;
    case 4:
      result = 0xD00000000000002ELL;
      break;
    case 5:
      result = 0xD000000000000027;
      break;
    case 6:
      result = 0xD000000000000029;
      break;
    case 7:
      result = 0x756F43726F727265;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
    case 12:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0x656C61636F6CLL;
      break;
    case 16:
      result = 0xD00000000000002DLL;
      break;
    case 17:
      result = 0xD00000000000002CLL;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0x555350746E756F63;
      break;
    case 20:
      result = 0xD000000000000013;
      break;
    case 21:
      result = 0x4965736143657375;
      break;
    case 22:
      result = 0xD000000000000024;
      break;
    case 23:
      result = 0xD00000000000001ELL;
      break;
    case 24:
      result = 0x6174537964647562;
      break;
    case 25:
    case 26:
      result = 0xD000000000000021;
      break;
    case 27:
      result = 0xD000000000000031;
      break;
    case 28:
      result = 0xD000000000000033;
      break;
    case 29:
      result = 0x4D746E6572727563;
      break;
    case 30:
      result = 0xD000000000000011;
      break;
    case 31:
      result = 0xD00000000000001ALL;
      break;
    case 32:
      result = 0xD000000000000034;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258DE533C()
{
  v1 = *v0;
  sub_258F0AE40();
  MEMORY[0x259C9E710](v1);
  return sub_258F0AE90();
}

uint64_t sub_258DE5384()
{
  v1 = *v0;
  sub_258F0AE40();
  MEMORY[0x259C9E710](v1);
  return sub_258F0AE90();
}

uint64_t sub_258DE53C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9889E8, &qword_258F0C6B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v79 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258DEB738();
  sub_258F0AEE0();
  v12 = *v3;
  v13 = *(v3 + 8);
  v81 = 0;
  sub_258F0ACF0();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v81 = 1;
    sub_258F0ACA0();
    v16 = v3[4];
    v17 = v3[5];
    v81 = 2;
    sub_258F0ACA0();
    v18 = v3[6];
    v19 = *(v3 + 56);
    v81 = 3;
    sub_258F0ACC0();
    v20 = v3[8];
    v21 = *(v3 + 72);
    v81 = 4;
    sub_258F0ACC0();
    v22 = *(v3 + 19);
    v23 = *(v3 + 80);
    v81 = 5;
    v80 = v23;
    sub_258F0ACE0();
    v24 = v3[11];
    v25 = v3[12];
    v81 = 6;
    sub_258F0ACA0();
    v26 = *(v3 + 26);
    v27 = *(v3 + 108);
    v81 = 7;
    v80 = v27;
    sub_258F0ACE0();
    v28 = v3[14];
    v29 = v3[15];
    v81 = 8;
    sub_258F0ACA0();
    v30 = v3[16];
    v31 = v3[17];
    v81 = 9;
    sub_258F0ACA0();
    v32 = *(v3 + 36);
    v33 = *(v3 + 148);
    v81 = 10;
    v80 = v33;
    sub_258F0ACE0();
    v34 = v3[19];
    v35 = v3[20];
    v81 = 11;
    sub_258F0ACA0();
    v36 = *(v3 + 42);
    v37 = *(v3 + 172);
    v81 = 12;
    v80 = v37;
    sub_258F0ACE0();
    v38 = *(v3 + 44);
    v39 = *(v3 + 180);
    v81 = 13;
    v80 = v39;
    sub_258F0ACE0();
    v40 = v3[23];
    v41 = v3[24];
    v81 = 14;
    sub_258F0ACA0();
    v42 = v3[25];
    v43 = v3[26];
    v81 = 15;
    sub_258F0ACA0();
    v44 = v3[27];
    v45 = *(v3 + 224);
    v81 = 16;
    sub_258F0ACC0();
    v46 = v3[29];
    v47 = *(v3 + 240);
    v81 = 17;
    sub_258F0ACC0();
    v48 = v3[31];
    v49 = *(v3 + 256);
    v81 = 18;
    sub_258F0ACC0();
    v50 = v3[33];
    v51 = *(v3 + 272);
    v81 = 19;
    sub_258F0ACF0();
    v52 = *(v3 + 69);
    v53 = *(v3 + 280);
    v81 = 20;
    v80 = v53;
    sub_258F0ACE0();
    v54 = v3[36];
    v55 = v3[37];
    v81 = 21;
    sub_258F0ACA0();
    v56 = v3[38];
    v57 = *(v3 + 312);
    v81 = 22;
    sub_258F0ACC0();
    v58 = v3[40];
    v59 = *(v3 + 328);
    v81 = 23;
    sub_258F0ACC0();
    v60 = v3[42];
    v61 = v3[43];
    v81 = 24;
    sub_258F0ACA0();
    v62 = v3[44];
    v63 = v3[45];
    v81 = 25;
    sub_258F0ACA0();
    v64 = *(v3 + 92);
    v65 = *(v3 + 372);
    v81 = 26;
    v80 = v65;
    sub_258F0ACE0();
    v66 = *(v3 + 94);
    v67 = *(v3 + 380);
    v81 = 27;
    v80 = v67;
    sub_258F0ACE0();
    v68 = v3[48];
    v69 = v3[49];
    v81 = 28;
    sub_258F0ACA0();
    v70 = v3[50];
    v71 = v3[51];
    v81 = 29;
    sub_258F0ACA0();
    v72 = v3[52];
    v73 = v3[53];
    v81 = 30;
    sub_258F0ACA0();
    v74 = v3[54];
    v75 = v3[55];
    v81 = 31;
    sub_258F0ACA0();
    v76 = v3[56];
    v77 = *(v3 + 456);
    v81 = 32;
    sub_258F0ACC0();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_258DE5A8C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000017;
    v6 = 0xD000000000000018;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000015;
    if (a1 == 5)
    {
      v7 = 0x75706E4969726973;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x75426D6574737973;
    v2 = 0x7954656369766564;
    if (a1 != 3)
    {
      v2 = 0x436D6172676F7270;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001BLL;
    if (a1)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_258DE5C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258DE93D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258DE5C38(uint64_t a1)
{
  v2 = sub_258DEB738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258DE5C74(uint64_t a1)
{
  v2 = sub_258DEB738();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_258DE5CB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_258DE9DB8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x1C9uLL);
  }

  return result;
}

uint64_t sub_258DE5D2C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_258F0AD80();
  }

  return v12 & 1;
}

uint64_t sub_258DE5DD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_258F0AE40();
  a3(v5);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258DE5E5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_258F0A5B0();
}

uint64_t sub_258DE5ECC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_258F0AE40();
  a4(v6);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258DE5F34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_258DEB698();
  *a2 = result;
  return result;
}

uint64_t sub_258DE5F64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258DE5A8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_258DE5FAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258DEB698();
  *a1 = result;
  return result;
}

uint64_t sub_258DE5FF0(uint64_t a1)
{
  v2 = sub_258DE65A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258DE602C(uint64_t a1)
{
  v2 = sub_258DE65A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AIRAssetStatusData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988968, &unk_258F0C1B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v31 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = v1[3];
  v31[13] = v1[2];
  v31[14] = v9;
  v12 = v1[5];
  v31[11] = v1[4];
  v31[12] = v11;
  v13 = v1[7];
  v31[9] = v1[6];
  v31[10] = v12;
  v14 = v1[8];
  v31[7] = v1[9];
  v31[8] = v13;
  v15 = v1[10];
  v31[5] = v1[11];
  v31[6] = v14;
  v16 = v1[12];
  v31[3] = v1[13];
  v31[4] = v15;
  v17 = v1[15];
  v31[0] = v1[14];
  v31[1] = v17;
  v31[2] = v16;
  v18 = *(v1 + 8);
  v19 = *(v1 + 9);
  v20 = *(v1 + 10);
  v52 = *(v1 + 11);
  v51 = v20;
  v49 = v18;
  v50 = v19;
  v21 = *(v1 + 12);
  v22 = *(v1 + 13);
  v23 = *(v1 + 14);
  v56 = *(v1 + 15);
  v55 = v23;
  v53 = v21;
  v54 = v22;
  v24 = *(v1 + 16);
  v25 = *(v1 + 17);
  v26 = *(v1 + 18);
  v27 = *(v1 + 19);
  v61 = v1[40];
  v60 = v27;
  v59 = v26;
  v57 = v24;
  v58 = v25;
  memcpy(v62, v1 + 41, 0x1C9uLL);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258DE65A0();
  sub_258F0AEE0();
  v33[0] = 0;
  v29 = v31[15];
  sub_258F0ACF0();
  if (!v29)
  {
    v33[0] = 1;
    sub_258F0ACA0();
    v33[0] = 2;
    sub_258F0ACA0();
    v33[0] = 3;
    sub_258F0ACA0();
    v33[0] = 4;
    sub_258F0ACA0();
    v33[0] = 5;
    sub_258F0ACA0();
    v33[0] = 6;
    sub_258F0ACA0();
    v33[0] = 7;
    sub_258F0ACA0();
    v46 = v59;
    v47 = v60;
    v48 = v61;
    v42 = v55;
    v43 = v56;
    v45 = v58;
    v44 = v57;
    v38 = v51;
    v39 = v52;
    v41 = v54;
    v40 = v53;
    v37 = v50;
    v36 = v49;
    v62[487] = 8;
    sub_258DE20C0(&v49, v33, &qword_27F988978, qword_258F0CD00);
    sub_258DE65F4();
    sub_258F0ACD0();
    v34[10] = v46;
    v34[11] = v47;
    v35 = v48;
    v34[6] = v42;
    v34[7] = v43;
    v34[9] = v45;
    v34[8] = v44;
    v34[2] = v38;
    v34[3] = v39;
    v34[5] = v41;
    v34[4] = v40;
    v34[1] = v37;
    v34[0] = v36;
    sub_258DE2184(v34, &qword_27F988978, qword_258F0CD00);
    memcpy(v33, v62, 0x1C9uLL);
    v62[486] = 9;
    sub_258DE20C0(v62, v32, &qword_27F988988, &qword_258F0C1C0);
    sub_258DE6648();
    sub_258F0ACD0();
    memcpy(v32, v33, 0x1C9uLL);
    sub_258DE2184(v32, &qword_27F988988, &qword_258F0C1C0);
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_258DE65A0()
{
  result = qword_27F988970;
  if (!qword_27F988970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988970);
  }

  return result;
}

unint64_t sub_258DE65F4()
{
  result = qword_27F988980;
  if (!qword_27F988980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988980);
  }

  return result;
}

unint64_t sub_258DE6648()
{
  result = qword_27F988990;
  if (!qword_27F988990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988990);
  }

  return result;
}

uint64_t AIRAssetStatusData.init(from:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988998, &qword_258F0C1C8);
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v52, v8);
  v10 = &v42 - v9;
  v141 = 1;
  sub_258DE7154(v142);
  v136 = v142[9];
  v137 = v142[10];
  v138 = v142[11];
  v132 = v142[5];
  v133 = v142[6];
  v134 = v142[7];
  v135 = v142[8];
  v128 = v142[1];
  v129 = v142[2];
  v130 = v142[3];
  v131 = v142[4];
  v139 = v143;
  v127 = v142[0];
  sub_258DE7180(v144);
  memcpy(v126, v144, 0x1C9uLL);
  v11 = v3[3];
  v12 = v3[4];
  v54 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v11);
  sub_258DE65A0();
  sub_258F0AED0();
  if (v2)
  {
    v145 = v2;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v59 = 0;
    v60 = 0;
    v53 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    LOBYTE(v95) = 0;
    v13 = v52;
    v51 = sub_258F0AC40();
    v141 = v24 & 1;
    LOBYTE(v95) = 1;
    v49 = sub_258F0ABF0();
    v50 = v25;
    LOBYTE(v95) = 2;
    v47 = sub_258F0ABF0();
    v48 = v26;
    LOBYTE(v95) = 3;
    v45 = sub_258F0ABF0();
    v46 = v27;
    LOBYTE(v95) = 4;
    v44 = sub_258F0ABF0();
    v53 = v28;
    LOBYTE(v95) = 5;
    v59 = sub_258F0ABF0();
    v60 = v29;
    LOBYTE(v95) = 6;
    v56 = sub_258F0ABF0();
    v58 = v30;
    LOBYTE(v95) = 7;
    v31 = sub_258F0ABF0();
    v145 = 0;
    v55 = v31;
    v57 = v32;
    v81 = 8;
    sub_258DE7200();
    v33 = v145;
    sub_258F0AC20();
    v145 = v33;
    if (v33)
    {
      (*(v6 + 8))(v10, v13);
    }

    else
    {
      v43 = v5;
      v76 = v92;
      v77 = v93;
      v78 = v94;
      v72 = v88;
      v73 = v89;
      v74 = v90;
      v75 = v91;
      v68 = v84;
      v69 = v85;
      v70 = v86;
      v71 = v87;
      v66 = v82;
      v67 = v83;
      v79[10] = v137;
      v79[11] = v138;
      v80 = v139;
      v79[6] = v133;
      v79[7] = v134;
      v79[8] = v135;
      v79[9] = v136;
      v79[2] = v129;
      v79[3] = v130;
      v79[4] = v131;
      v79[5] = v132;
      v79[0] = v127;
      v79[1] = v128;
      sub_258DE2184(v79, &qword_27F988978, qword_258F0CD00);
      v136 = v75;
      v137 = v76;
      v138 = v77;
      v132 = v71;
      v133 = v72;
      v134 = v73;
      v135 = v74;
      v128 = v67;
      v129 = v68;
      v130 = v69;
      v131 = v70;
      v139 = v78;
      v127 = v66;
      v64 = 9;
      sub_258DE7254();
      v34 = v145;
      sub_258F0AC20();
      v145 = v34;
      if (!v34)
      {
        (*(v6 + 8))(v10, v52);
        memcpy(v61, v65, 0x1C9uLL);
        memcpy(v62, v126, 0x1C9uLL);
        sub_258DE2184(v62, &qword_27F988988, &qword_258F0C1C0);
        v35 = v50;
        *v63 = v51;
        LODWORD(v52) = v141;
        v63[8] = v141;
        v37 = v48;
        v36 = v49;
        *&v63[16] = v49;
        *&v63[24] = v50;
        v38 = v46;
        v39 = v47;
        *&v63[32] = v47;
        *&v63[40] = v48;
        v40 = v45;
        *&v63[48] = v45;
        *&v63[56] = v46;
        *&v63[64] = v44;
        v41 = v53;
        *&v63[72] = v53;
        *&v63[80] = v59;
        *&v63[88] = v60;
        *&v63[96] = v56;
        *&v63[104] = v58;
        *&v63[112] = v55;
        *&v63[120] = v57;
        *&v63[288] = v76;
        *&v63[304] = v77;
        *&v63[320] = v78;
        *&v63[224] = v72;
        *&v63[240] = v73;
        *&v63[272] = v75;
        *&v63[256] = v74;
        *&v63[160] = v68;
        *&v63[176] = v69;
        *&v63[208] = v71;
        *&v63[192] = v70;
        *&v63[144] = v67;
        *&v63[128] = v66;
        memcpy(&v63[328], v61, 0x1C9uLL);
        memcpy(v43, v63, 0x311uLL);
        sub_258DE40EC(v63, &v95);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        v95 = v51;
        v96 = v52;
        v98 = v36;
        v99 = v35;
        v100 = v39;
        v101 = v37;
        v102 = v40;
        v103 = v38;
        v104 = v44;
        v105 = v41;
        v106 = v59;
        v107 = v60;
        v108 = v56;
        v109 = v58;
        v110 = v55;
        v111 = v57;
        v115 = v69;
        v114 = v68;
        v112 = v66;
        v113 = v67;
        v119 = v73;
        v118 = v72;
        v116 = v70;
        v117 = v71;
        v124 = v78;
        v123 = v77;
        v122 = v76;
        v120 = v74;
        v121 = v75;
        v22 = v61;
        goto LABEL_5;
      }

      (*(v6 + 8))(v10, v52);
    }

    v19 = v50;
    v21 = v51;
    v17 = v48;
    v20 = v49;
    v15 = v46;
    v18 = v47;
    v14 = v44;
    v16 = v45;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  v95 = v21;
  v96 = v141;
  *v97 = *v140;
  *&v97[3] = *&v140[3];
  v98 = v20;
  v99 = v19;
  v100 = v18;
  v101 = v17;
  v102 = v16;
  v103 = v15;
  v104 = v14;
  v105 = v53;
  v106 = v59;
  v107 = v60;
  v108 = v56;
  v109 = v58;
  v110 = v55;
  v111 = v57;
  v122 = v137;
  v123 = v138;
  v124 = v139;
  v118 = v133;
  v119 = v134;
  v121 = v136;
  v120 = v135;
  v114 = v129;
  v115 = v130;
  v117 = v132;
  v116 = v131;
  v113 = v128;
  v112 = v127;
  v22 = v126;
LABEL_5:
  memcpy(v125, v22, sizeof(v125));
  return sub_258DE71D0(&v95);
}

double sub_258DE7154(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 1;
  return result;
}

double sub_258DE7180(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 441) = 0u;
  return result;
}

unint64_t sub_258DE7200()
{
  result = qword_27F9889A0;
  if (!qword_27F9889A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889A0);
  }

  return result;
}

unint64_t sub_258DE7254()
{
  result = qword_27F9889A8;
  if (!qword_27F9889A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MetricsFramework27AIRAvailabilityChangeStatusVSg(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_16MetricsFramework29AIRAvailabilityDetailedStatusVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258DE7328(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 785))
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

uint64_t sub_258DE7384(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 776) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 784) = 0;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 785) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 785) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_258DE74C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 457))
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

uint64_t sub_258DE751C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 456) = 0;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 457) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 457) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_258DE763C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 200))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 176);
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

uint64_t sub_258DE7698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 176) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AIRAssetStatusData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AIRAssetStatusData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_258DE7890()
{
  result = qword_27F9889B0;
  if (!qword_27F9889B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9889B8, qword_258F0C4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889B0);
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

unint64_t sub_258DE7940()
{
  result = qword_27F9889C0;
  if (!qword_27F9889C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889C0);
  }

  return result;
}

unint64_t sub_258DE7998()
{
  result = qword_27F9889C8;
  if (!qword_27F9889C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889C8);
  }

  return result;
}

unint64_t sub_258DE79F0()
{
  result = qword_27F9889D0;
  if (!qword_27F9889D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889D0);
  }

  return result;
}

void *sub_258DE7A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v99 = a2;
  if (*(a1 + 16) && (v7 = sub_258E2E9B4(0xD00000000000001BLL, 0x8000000258F18670), (v8 & 1) != 0) && (sub_258DE4090(*(a1 + 56) + 32 * v7, __src), sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    v64 = [v79[0] unsignedLongLongValue];

    v63 = 0;
    if (!*(a1 + 16))
    {
LABEL_5:
      v61 = 0;
      v62 = 0;
LABEL_25:
      v59 = 0;
      v60 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v64 = 0;
    v63 = 1;
    if (!*(a1 + 16))
    {
      goto LABEL_5;
    }
  }

  v9 = sub_258E2E9B4(0xD000000000000013, 0x8000000258F18690);
  if (v10)
  {
    sub_258DE4090(*(a1 + 56) + 32 * v9, __src);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v79[0];
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v79[1];
    }

    else
    {
      v13 = 0;
    }

    v61 = v13;
    v62 = v12;
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v61 = 0;
    v62 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }
  }

  v14 = sub_258E2E9B4(0x75426D6574737973, 0xEB00000000646C69);
  if (v15)
  {
    sub_258DE4090(*(a1 + 56) + 32 * v14, __src);
    v16 = swift_dynamicCast();
    if (v16)
    {
      v17 = v79[0];
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v79[1];
    }

    else
    {
      v18 = 0;
    }

    v59 = v18;
    v60 = v17;
    if (!*(a1 + 16))
    {
LABEL_26:
      v57 = 0;
      v58 = 0;
      if (*(a1 + 16))
      {
        goto LABEL_27;
      }

LABEL_55:
      v55 = 0;
      v56 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v59 = 0;
    v60 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_26;
    }
  }

  v29 = sub_258E2E9B4(0x7954656369766564, 0xEA00000000006570);
  if ((v30 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v29, __src);
  v31 = swift_dynamicCast();
  if (v31)
  {
    v32 = v79[0];
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v33 = v79[1];
  }

  else
  {
    v33 = 0;
  }

  v57 = v33;
  v58 = v32;
  if (!*(a1 + 16))
  {
    goto LABEL_55;
  }

LABEL_27:
  v19 = sub_258E2E9B4(0x436D6172676F7270, 0xEB0000000065646FLL);
  if ((v20 & 1) == 0)
  {
    v55 = 0;
    v56 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_37;
    }

LABEL_56:
    v53 = 0;
    v54 = 0;
    goto LABEL_57;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v19, __src);
  v21 = swift_dynamicCast();
  if (v21)
  {
    v22 = v79[0];
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v79[1];
  }

  else
  {
    v23 = 0;
  }

  v55 = v23;
  v56 = v22;
  if (!*(a1 + 16))
  {
    goto LABEL_56;
  }

LABEL_37:
  v24 = sub_258E2E9B4(0x75706E4969726973, 0xEF656C61636F4C74);
  if (v25)
  {
    sub_258DE4090(*(a1 + 56) + 32 * v24, __src);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v27 = v79[0];
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v79[1];
    }

    else
    {
      v28 = 0;
    }

    v53 = v28;
    v54 = v27;
    if (!*(a1 + 16))
    {
LABEL_57:
      v34 = 0;
      v35 = 0;
      if (!*(a1 + 16))
      {
        goto LABEL_74;
      }

      goto LABEL_58;
    }
  }

  else
  {
    v53 = 0;
    v54 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_57;
    }
  }

  v41 = sub_258E2E9B4(0xD000000000000015, 0x8000000258F186C0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_57;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v41, __src);
  v43 = swift_dynamicCast();
  if (v43)
  {
    v34 = v79[0];
  }

  else
  {
    v34 = 0;
  }

  if (v43)
  {
    v35 = v79[1];
  }

  else
  {
    v35 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_74;
  }

LABEL_58:
  v36 = sub_258E2E9B4(0xD000000000000017, 0x8000000258F186E0);
  if (v37)
  {
    sub_258DE4090(*(a1 + 56) + 32 * v36, v98);
    v38 = swift_dynamicCast();
    if (v38)
    {
      v39 = *&__src[0];
    }

    else
    {
      v39 = 0;
    }

    if (v38)
    {
      v40 = *(&__src[0] + 1);
    }

    else
    {
      v40 = 0;
    }

    goto LABEL_75;
  }

LABEL_74:
  v39 = 0;
  v40 = 0;
LABEL_75:
  sub_258DE7154(&v85);
  if (*(a1 + 16) && (v44 = sub_258E2E9B4(0xD000000000000018, 0x8000000258F18700), (v45 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v44, v78);
    sub_258DEB8B8(v78, v84);
    sub_258DE823C(v84);
    if (v3)
    {

      v4 = 0;
      v77 = v97;
      v75 = v95;
      v76 = v96;
      v71 = v91;
      v72 = v92;
      v73 = v93;
      v74 = v94;
      v67 = v87;
      v68 = v88;
      v69 = v89;
      v70 = v90;
      v47 = v85;
      v46 = v86;
    }

    else
    {
      *&v79[20] = __src[10];
      *&v79[22] = __src[11];
      v79[24] = *&__src[12];
      *&v79[12] = __src[6];
      *&v79[14] = __src[7];
      *&v79[16] = __src[8];
      *&v79[18] = __src[9];
      *&v79[4] = __src[2];
      *&v79[6] = __src[3];
      *&v79[8] = __src[4];
      *&v79[10] = __src[5];
      *v79 = __src[0];
      *&v79[2] = __src[1];
      nullsub_1(v79);
      v75 = *&v79[20];
      v76 = *&v79[22];
      v77 = v79[24];
      v71 = *&v79[12];
      v72 = *&v79[14];
      v73 = *&v79[16];
      v74 = *&v79[18];
      v67 = *&v79[4];
      v68 = *&v79[6];
      v69 = *&v79[8];
      v70 = *&v79[10];
      v47 = *v79;
      v46 = *&v79[2];
    }

    v65 = v47;
    v66 = v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
  }

  else
  {
    v75 = v95;
    v76 = v96;
    v77 = v97;
    v71 = v91;
    v72 = v92;
    v73 = v93;
    v74 = v94;
    v67 = v87;
    v68 = v88;
    v69 = v89;
    v70 = v90;
    v65 = v85;
    v66 = v86;
  }

  sub_258DE7180(__src);
  if (*(a1 + 16) && (v48 = sub_258E2E9B4(0xD00000000000001ALL, 0x8000000258F18720), (v49 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v48, v81);

    sub_258DEB8B8(v81, v82);
    sub_258DE8438(v82);
    if (v4)
    {

      memcpy(__dst, __src, sizeof(__dst));
    }

    else
    {
      memcpy(v78, v79, 0x1C9uLL);
      nullsub_1(v78);
      memcpy(__dst, v78, sizeof(__dst));
    }

    v51 = sub_258F0A370();
    (*(*(v51 - 8) + 8))(v99, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
  }

  else
  {

    v50 = sub_258F0A370();
    (*(*(v50 - 8) + 8))(v99, v50);
    memcpy(__dst, __src, sizeof(__dst));
  }

  *a3 = v64;
  *(a3 + 8) = v63;
  *(a3 + 16) = v62;
  *(a3 + 24) = v61;
  *(a3 + 32) = v60;
  *(a3 + 40) = v59;
  *(a3 + 48) = v58;
  *(a3 + 56) = v57;
  *(a3 + 64) = v56;
  *(a3 + 72) = v55;
  *(a3 + 80) = v54;
  *(a3 + 88) = v53;
  *(a3 + 96) = v34;
  *(a3 + 104) = v35;
  *(a3 + 112) = v39;
  *(a3 + 120) = v40;
  *(a3 + 160) = v67;
  *(a3 + 176) = v68;
  *(a3 + 128) = v65;
  *(a3 + 144) = v66;
  *(a3 + 224) = v71;
  *(a3 + 240) = v72;
  *(a3 + 192) = v69;
  *(a3 + 208) = v70;
  *(a3 + 320) = v77;
  *(a3 + 288) = v75;
  *(a3 + 304) = v76;
  *(a3 + 256) = v73;
  *(a3 + 272) = v74;
  return memcpy((a3 + 328), __dst, 0x1C9uLL);
}

uint64_t sub_258DE823C(uint64_t a1)
{
  v2 = sub_258F0A540();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258DE4090(a1, v17);
  if (swift_dynamicCast() && (sub_258F0A530(), v8 = sub_258F0A500(), v10 = v9, , (*(v3 + 8))(v7, v2), v10 >> 60 != 15))
  {
    v13 = sub_258F09840();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_258F09830();
    sub_258DE7200();
    sub_258F09820();

    return sub_258DEB964(v8, v10);
  }

  else
  {
    sub_258DEB910();
    swift_allocError();
    strcpy(v11, "object payload");
    v11[15] = -18;
    return swift_willThrow();
  }
}

uint64_t sub_258DE8438(uint64_t a1)
{
  v2 = sub_258F0A540();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258DE4090(a1, v17);
  if (swift_dynamicCast() && (sub_258F0A530(), v8 = sub_258F0A500(), v10 = v9, , (*(v3 + 8))(v7, v2), v10 >> 60 != 15))
  {
    v13 = sub_258F09840();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_258F09830();
    sub_258DE7254();
    sub_258F09820();

    return sub_258DEB964(v8, v10);
  }

  else
  {
    sub_258DEB910();
    swift_allocError();
    strcpy(v11, "object payload");
    v11[15] = -18;
    return swift_willThrow();
  }
}

uint64_t sub_258DE8634()
{
  v0 = sub_258F0AD90();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_258DE8688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9889F8, &qword_258F0C6B8);
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v55, v7);
  v9 = &v38 - v8;
  v151 = 1;
  v149 = 1;
  v147 = 1;
  v145 = 1;
  v144 = 1;
  v142 = 1;
  v140 = 1;
  v138 = 1;
  v135 = 1;
  v132 = 1;
  v129 = 1;
  v127 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_258DEB6E4();
  sub_258F0AED0();
  if (v2)
  {
    v152 = v2;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v56 = 0;
    v57 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    v81 = 0;
    v82 = v151;
    *v83 = *v150;
    *&v83[3] = *&v150[3];
    v84 = 0;
    v85 = v149;
    *v86 = *v148;
    *&v86[3] = *&v148[3];
    v87 = 0;
    v88 = v147;
    *&v89[3] = *&v146[3];
    *v89 = *v146;
    v90 = 0;
    v91 = v145;
    v92 = 2;
    v93 = 2;
    v94 = 2;
    v95 = v60;
    v96 = v144;
    *v97 = *v143;
    *&v97[3] = *&v143[3];
    v98 = v59;
    v99 = v142;
    *&v100[3] = *&v141[3];
    *v100 = *v141;
    v101 = v66;
    v102 = v140;
    *&v103[3] = *&v139[3];
    *v103 = *v139;
    v104 = v65;
    v105 = v138;
    v106 = v136;
    v107 = v137;
    v108 = v64;
    v109 = v135;
    v111 = v134;
    v110 = v133;
    v112 = v63;
    v113 = v132;
    v115 = v131;
    v114 = v130;
    v116 = v62;
    v117 = v129;
    *&v118[3] = *&v128[3];
    *v118 = *v128;
    v119 = v61;
    v120 = v127;
    *&v121[3] = *&v126[3];
    *v121 = *v126;
    v122 = v57;
    v123 = v56;
    v125 = 0;
    v124 = 0;
    return sub_258DEB78C(&v81);
  }

  else
  {
    LOBYTE(v81) = 0;
    v54 = sub_258F0AC40();
    v151 = v13 & 1;
    LOBYTE(v81) = 1;
    v53 = sub_258F0AC40();
    v149 = v14 & 1;
    LOBYTE(v81) = 2;
    v52 = sub_258F0AC10();
    v147 = v15 & 1;
    LOBYTE(v81) = 3;
    v51 = sub_258F0AC10();
    v145 = v16 & 1;
    LOBYTE(v81) = 4;
    v50 = sub_258F0AC00();
    LOBYTE(v81) = 5;
    v49 = sub_258F0AC00();
    LOBYTE(v81) = 6;
    v48 = sub_258F0AC00();
    LOBYTE(v81) = 7;
    v60 = sub_258F0AC10();
    v144 = v17 & 1;
    LOBYTE(v81) = 8;
    v18 = sub_258F0AC10();
    v152 = 0;
    v59 = v18;
    v142 = v19 & 1;
    LOBYTE(v81) = 9;
    v66 = sub_258F0AC10();
    v152 = 0;
    v140 = v20 & 1;
    LOBYTE(v81) = 10;
    v65 = sub_258F0AC10();
    v152 = 0;
    v138 = v21 & 1;
    LOBYTE(v81) = 11;
    v64 = sub_258F0AC30();
    v152 = 0;
    v135 = BYTE4(v64) & 1;
    LOBYTE(v81) = 12;
    v63 = sub_258F0AC30();
    v152 = 0;
    v132 = BYTE4(v63) & 1;
    LOBYTE(v81) = 13;
    v62 = sub_258F0AC30();
    v152 = 0;
    v129 = BYTE4(v62) & 1;
    LOBYTE(v81) = 14;
    v61 = sub_258F0AC10();
    v152 = 0;
    v127 = v22 & 1;
    LOBYTE(v81) = 15;
    v23 = sub_258F0ABF0();
    v56 = v24;
    v57 = v23;
    v152 = 0;
    v80 = 16;
    v25 = sub_258F0ABF0();
    v152 = 0;
    v26 = v25;
    v28 = v27;
    (*(v5 + 8))(v9, v55);
    *&v67 = v54;
    LODWORD(v55) = v151;
    BYTE8(v67) = v151;
    *(&v67 + 9) = *v150;
    HIDWORD(v67) = *&v150[3];
    *&v68 = v53;
    v47 = v149;
    BYTE8(v68) = v149;
    *(&v68 + 9) = *v148;
    HIDWORD(v68) = *&v148[3];
    *&v69 = v52;
    v46 = v147;
    BYTE8(v69) = v147;
    HIDWORD(v69) = *&v146[3];
    *(&v69 + 9) = *v146;
    *&v70 = v51;
    v45 = v145;
    BYTE8(v70) = v145;
    BYTE9(v70) = v50;
    BYTE10(v70) = v49;
    BYTE11(v70) = v48;
    *&v71 = v60;
    v44 = v144;
    BYTE8(v71) = v144;
    *(&v71 + 9) = *v143;
    HIDWORD(v71) = *&v143[3];
    *&v72 = v59;
    v43 = v142;
    BYTE8(v72) = v142;
    HIDWORD(v72) = *&v141[3];
    *(&v72 + 9) = *v141;
    *&v73 = v66;
    v42 = v140;
    BYTE8(v73) = v140;
    HIDWORD(v73) = *&v139[3];
    *(&v73 + 9) = *v139;
    *&v74 = v65;
    v41 = v138;
    BYTE8(v74) = v138;
    *(&v74 + 9) = v136;
    BYTE11(v74) = v137;
    HIDWORD(v74) = v64;
    v40 = v135;
    LOBYTE(v75) = v135;
    BYTE3(v75) = v134;
    *(&v75 + 1) = v133;
    DWORD1(v75) = v63;
    v39 = v132;
    BYTE8(v75) = v132;
    BYTE11(v75) = v131;
    *(&v75 + 9) = v130;
    HIDWORD(v75) = v62;
    HIDWORD(v38) = v129;
    LOBYTE(v76) = v129;
    DWORD1(v76) = *&v128[3];
    *(&v76 + 1) = *v128;
    *(&v76 + 1) = v61;
    DWORD1(v77) = *&v126[3];
    *(&v77 + 1) = *v126;
    v29 = v127;
    LOBYTE(v77) = v127;
    v30 = v56;
    v31 = v57;
    *(&v77 + 1) = v57;
    *&v78 = v56;
    *(&v78 + 1) = v26;
    v79 = v28;
    sub_258DEB7BC(&v67, &v81);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    v81 = v54;
    v82 = v55;
    v84 = v53;
    *v83 = *v150;
    *&v83[3] = *&v150[3];
    v85 = v47;
    *v86 = *v148;
    *&v86[3] = *&v148[3];
    v87 = v52;
    v88 = v46;
    *v89 = *v146;
    *&v89[3] = *&v146[3];
    v90 = v51;
    v91 = v45;
    v92 = v50;
    v93 = v49;
    v94 = v48;
    v95 = v60;
    v96 = v44;
    *v97 = *v143;
    *&v97[3] = *&v143[3];
    v98 = v59;
    v99 = v43;
    *v100 = *v141;
    *&v100[3] = *&v141[3];
    v101 = v66;
    v102 = v42;
    *v103 = *v139;
    *&v103[3] = *&v139[3];
    v104 = v65;
    v105 = v41;
    v107 = v137;
    v106 = v136;
    v108 = v64;
    v109 = v40;
    v111 = v134;
    v110 = v133;
    v112 = v63;
    v113 = v39;
    v115 = v131;
    v114 = v130;
    v116 = v62;
    v117 = BYTE4(v38);
    *&v118[3] = *&v128[3];
    *v118 = *v128;
    v119 = v61;
    v120 = v29;
    *&v121[3] = *&v126[3];
    *v121 = *v126;
    v122 = v31;
    v123 = v30;
    v124 = v26;
    v125 = v28;
    result = sub_258DEB78C(&v81);
    v32 = v78;
    *(a2 + 160) = v77;
    *(a2 + 176) = v32;
    *(a2 + 192) = v79;
    v33 = v74;
    *(a2 + 96) = v73;
    *(a2 + 112) = v33;
    v34 = v76;
    *(a2 + 128) = v75;
    *(a2 + 144) = v34;
    v35 = v70;
    *(a2 + 32) = v69;
    *(a2 + 48) = v35;
    v36 = v72;
    *(a2 + 64) = v71;
    *(a2 + 80) = v36;
    v37 = v68;
    *a2 = v67;
    *(a2 + 16) = v37;
  }

  return result;
}

uint64_t sub_258DE93D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000028 && 0x8000000258F19040 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000030 && 0x8000000258F19070 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000002ELL && 0x8000000258F190B0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000027 && 0x8000000258F190E0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000029 && 0x8000000258F19110 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x756F43726F727265 && a2 == 0xEA0000000000746ELL || (sub_258F0AD80() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000258F19140 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000258F19160 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000258F19180 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000258F191A0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000258F191C0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000258F191E0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000258F19200 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_258F0AD80() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000002DLL && 0x8000000258F184F0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000002CLL && 0x8000000258F18620 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000258F18580 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x555350746E756F63 && a2 == 0xEF73746573734153 || (sub_258F0AD80() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000258F19220 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x4965736143657375 && a2 == 0xE900000000000044 || (sub_258F0AD80() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000258F19240 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000258F19270 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6174537964647562 && a2 == 0xEB00000000737574 || (sub_258F0AD80() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000258F19290 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000258F192C0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000031 && 0x8000000258F192F0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000033 && 0x8000000258F19330 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x4D746E6572727563 && a2 == 0xEB0000000065646FLL || (sub_258F0AD80() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000258F19370 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000258F19390 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000034 && 0x8000000258F193B0 == a2)
  {

    return 32;
  }

  else
  {
    v6 = sub_258F0AD80();

    if (v6)
    {
      return 32;
    }

    else
    {
      return 33;
    }
  }
}

void *sub_258DE9DB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A00, &qword_258F0C6C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v54 - v9;
  v255 = 1;
  v253 = 1;
  v251 = 1;
  v248 = 1;
  v246 = 1;
  v243 = 1;
  v240 = 1;
  v237 = 1;
  v234 = 1;
  v232 = 1;
  v230 = 1;
  v228 = 1;
  v225 = 1;
  v223 = 1;
  v221 = 1;
  v219 = 1;
  v216 = 1;
  v213 = 1;
  v11 = a1[3];
  v12 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_258DEB738();
  sub_258F0AED0();
  if (v2)
  {
    v256 = v2;
    v102 = 0;
    v103 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v92 = 0;
    v93 = 0;
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v86 = 0;
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    v80 = 0;
    v81 = 0;
    v79 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    v122 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v129 = 0;
    v132 = 0;
    v136 = v109;
    v139 = v107;
    v140 = v108;
    v141 = v106;
    v145 = v104;
    v146 = v105;
    v147 = v118;
    v148 = v119;
    v149 = v117;
    v153 = v115;
    v154 = v116;
    v123 = v255;
    *v124 = *v254;
    *&v124[3] = *&v254[3];
    v130 = v253;
    *v131 = *v252;
    *&v131[3] = *&v252[3];
    v133 = v251;
    v134 = v249;
    v135 = v250;
    v137 = v248;
    *v138 = *v247;
    *&v138[3] = *&v247[3];
    v142 = v246;
    v144 = v245;
    v143 = v244;
    v150 = v243;
    v152 = v242;
    v151 = v241;
    v155 = v114;
    v156 = v240;
    v158 = v239;
    v157 = v238;
    v159 = v113;
    v160 = v237;
    v162 = v236;
    v161 = v235;
    v163 = v111;
    v164 = v112;
    v165 = v97;
    v166 = v98;
    v167 = v96;
    v168 = v234;
    *&v169[3] = *&v233[3];
    *v169 = *v233;
    v170 = v95;
    v171 = v232;
    *&v172[3] = *&v231[3];
    *v172 = *v231;
    v173 = v94;
    v174 = v230;
    *v175 = *v229;
    *&v175[3] = *&v229[3];
    v176 = v101;
    v177 = v228;
    v178 = v226;
    v179 = v227;
    v180 = v100;
    v181 = v225;
    *v182 = *v224;
    *&v182[3] = *&v224[3];
    v183 = v99;
    v184 = v103;
    v185 = v102;
    v186 = v223;
    *v187 = *v222;
    *&v187[3] = *&v222[3];
    v188 = v93;
    v189 = v221;
    *v190 = *v220;
    *&v190[3] = *&v220[3];
    v191 = v92;
    v192 = v91;
    v193 = v90;
    v194 = v89;
    v195 = v88;
    v196 = v219;
    v197 = v217;
    v198 = v218;
    v199 = v87;
    v200 = v216;
    v201 = v214;
    v202 = v215;
    v203 = v86;
    v204 = v85;
    v205 = v84;
    v206 = v83;
    v207 = v82;
    v208 = v81;
    v209 = v80;
    v210 = v79;
    v211 = 0;
    v212 = v213;
    return sub_258DEB7F4(&v122);
  }

  else
  {
    LOBYTE(v122) = 0;
    v78 = sub_258F0AC40();
    v255 = v14 & 1;
    LOBYTE(v122) = 1;
    v76 = sub_258F0ABF0();
    v77 = v15;
    LOBYTE(v122) = 2;
    v74 = sub_258F0ABF0();
    v75 = v16;
    LOBYTE(v122) = 3;
    v73 = sub_258F0AC10();
    v253 = v17 & 1;
    LOBYTE(v122) = 4;
    v72 = sub_258F0AC10();
    v251 = v18 & 1;
    LOBYTE(v122) = 5;
    v109 = sub_258F0AC30();
    v248 = BYTE4(v109) & 1;
    LOBYTE(v122) = 6;
    v107 = sub_258F0ABF0();
    v108 = v19;
    LOBYTE(v122) = 7;
    v106 = sub_258F0AC30();
    v246 = BYTE4(v106) & 1;
    LOBYTE(v122) = 8;
    v20 = sub_258F0ABF0();
    v256 = 0;
    v21 = a2;
    v104 = v20;
    v105 = v22;
    LOBYTE(v122) = 9;
    v118 = sub_258F0ABF0();
    v119 = v23;
    v256 = 0;
    LOBYTE(v122) = 10;
    v117 = sub_258F0AC30();
    v256 = 0;
    v243 = BYTE4(v117) & 1;
    LOBYTE(v122) = 11;
    v115 = sub_258F0ABF0();
    v116 = v24;
    v256 = 0;
    LOBYTE(v122) = 12;
    v114 = sub_258F0AC30();
    v256 = 0;
    v240 = BYTE4(v114) & 1;
    LOBYTE(v122) = 13;
    v113 = sub_258F0AC30();
    v256 = 0;
    v237 = BYTE4(v113) & 1;
    LOBYTE(v122) = 14;
    v111 = sub_258F0ABF0();
    v112 = v25;
    v256 = 0;
    LOBYTE(v122) = 15;
    v97 = sub_258F0ABF0();
    v98 = v26;
    v256 = 0;
    LOBYTE(v122) = 16;
    v96 = sub_258F0AC10();
    v256 = 0;
    v234 = v27 & 1;
    LOBYTE(v122) = 17;
    v95 = sub_258F0AC10();
    v256 = 0;
    v232 = v28 & 1;
    LOBYTE(v122) = 18;
    v94 = sub_258F0AC10();
    v256 = 0;
    v230 = v29 & 1;
    LOBYTE(v122) = 19;
    v101 = sub_258F0AC40();
    v256 = 0;
    v228 = v30 & 1;
    LOBYTE(v122) = 20;
    v100 = sub_258F0AC30();
    v256 = 0;
    v225 = BYTE4(v100) & 1;
    LOBYTE(v122) = 21;
    v99 = sub_258F0ABF0();
    v103 = v31;
    v256 = 0;
    LOBYTE(v122) = 22;
    v102 = sub_258F0AC10();
    v256 = 0;
    v223 = v32 & 1;
    LOBYTE(v122) = 23;
    v93 = sub_258F0AC10();
    v256 = 0;
    v221 = v33 & 1;
    LOBYTE(v122) = 24;
    v34 = sub_258F0ABF0();
    v91 = v35;
    v92 = v34;
    v256 = 0;
    LOBYTE(v122) = 25;
    v36 = sub_258F0ABF0();
    v89 = v37;
    v90 = v36;
    v256 = 0;
    LOBYTE(v122) = 26;
    v88 = sub_258F0AC30();
    v256 = 0;
    v219 = BYTE4(v88) & 1;
    LOBYTE(v122) = 27;
    v87 = sub_258F0AC30();
    v256 = 0;
    v216 = BYTE4(v87) & 1;
    LOBYTE(v122) = 28;
    v38 = sub_258F0ABF0();
    v85 = v39;
    v86 = v38;
    v256 = 0;
    LOBYTE(v122) = 29;
    v40 = sub_258F0ABF0();
    v83 = v41;
    v84 = v40;
    v256 = 0;
    LOBYTE(v122) = 30;
    v42 = sub_258F0ABF0();
    v81 = v43;
    v82 = v42;
    v256 = 0;
    LOBYTE(v122) = 31;
    v44 = sub_258F0ABF0();
    v79 = v45;
    v80 = v44;
    v256 = 0;
    v121 = 32;
    v71 = sub_258F0AC10();
    v256 = 0;
    v47 = v46;
    (*(v6 + 8))(v10, v5);
    v213 = v47 & 1;
    *v120 = v78;
    v63 = v255;
    v120[8] = v255;
    *&v120[9] = *v254;
    *&v120[12] = *&v254[3];
    *&v120[16] = v76;
    *&v120[24] = v77;
    *&v120[32] = v74;
    *&v120[40] = v75;
    *&v120[48] = v73;
    v62 = v253;
    v120[56] = v253;
    *&v120[57] = *v252;
    *&v120[60] = *&v252[3];
    *&v120[64] = v72;
    v61 = v251;
    v120[72] = v251;
    *&v120[73] = v249;
    v120[75] = v250;
    *&v120[76] = v109;
    v60 = v248;
    v120[80] = v248;
    *&v120[81] = *v247;
    *&v120[84] = *&v247[3];
    *&v120[88] = v107;
    *&v120[96] = v108;
    *&v120[104] = v106;
    v59 = v246;
    v120[108] = v246;
    v120[111] = v245;
    *&v120[109] = v244;
    *&v120[112] = v104;
    *&v120[120] = v105;
    *&v120[128] = v118;
    *&v120[136] = v119;
    *&v120[144] = v117;
    v58 = v243;
    v120[148] = v243;
    v120[151] = v242;
    *&v120[149] = v241;
    *&v120[152] = v115;
    *&v120[160] = v116;
    *&v120[168] = v114;
    v57 = v240;
    v120[172] = v240;
    v120[175] = v239;
    *&v120[173] = v238;
    v48 = v112;
    *&v120[176] = v113;
    v56 = v237;
    v120[180] = v237;
    v120[183] = v236;
    *&v120[181] = v235;
    *&v120[184] = v111;
    *&v120[192] = v112;
    v49 = v97;
    *&v120[200] = v97;
    *&v120[208] = v98;
    v50 = v95;
    *&v120[216] = v96;
    v55 = v234;
    v120[224] = v234;
    *&v120[228] = *&v233[3];
    *&v120[225] = *v233;
    *&v120[232] = v95;
    v51 = v232;
    v120[240] = v232;
    *&v120[244] = *&v231[3];
    *&v120[241] = *v231;
    v52 = v94;
    *&v120[248] = v94;
    v53 = v230;
    v120[256] = v230;
    *&v120[257] = *v229;
    *&v120[260] = *&v229[3];
    *&v120[264] = v101;
    v70 = v228;
    v120[272] = v228;
    *&v120[273] = v226;
    v120[275] = v227;
    *&v120[276] = v100;
    v69 = v225;
    v120[280] = v225;
    *&v120[281] = *v224;
    *&v120[284] = *&v224[3];
    *&v120[288] = v99;
    *&v120[296] = v103;
    *&v120[304] = v102;
    v68 = v223;
    v120[312] = v223;
    *&v120[313] = *v222;
    *&v120[316] = *&v222[3];
    *&v120[320] = v93;
    v67 = v221;
    v120[328] = v221;
    *&v120[329] = *v220;
    *&v120[332] = *&v220[3];
    *&v120[336] = v92;
    *&v120[344] = v91;
    *&v120[352] = v90;
    *&v120[360] = v89;
    *&v120[368] = v88;
    *&v120[373] = v217;
    v66 = v219;
    v120[372] = v219;
    v120[375] = v218;
    *&v120[376] = v87;
    *&v120[381] = v214;
    v64 = v216;
    v120[380] = v216;
    v120[383] = v215;
    *&v120[384] = v86;
    *&v120[392] = v85;
    *&v120[400] = v84;
    *&v120[408] = v83;
    *&v120[416] = v82;
    *&v120[424] = v81;
    *&v120[432] = v80;
    *&v120[440] = v79;
    *&v120[448] = v71;
    v65 = v213;
    v120[456] = v213;
    sub_258DEB824(v120, &v122);
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    v122 = v78;
    v123 = v63;
    v125 = v76;
    v126 = v77;
    v127 = v74;
    v128 = v75;
    v129 = v73;
    v130 = v62;
    v132 = v72;
    v133 = v61;
    v136 = v109;
    v137 = v60;
    v139 = v107;
    v140 = v108;
    v141 = v106;
    v142 = v59;
    v145 = v104;
    v146 = v105;
    v147 = v118;
    v148 = v119;
    v149 = v117;
    v150 = v58;
    v153 = v115;
    v154 = v116;
    v155 = v114;
    v156 = v57;
    v159 = v113;
    v160 = v56;
    v163 = v111;
    v164 = v48;
    v165 = v49;
    v166 = v98;
    v167 = v96;
    v168 = v55;
    v170 = v50;
    v171 = v51;
    v173 = v52;
    v174 = v53;
    *v124 = *v254;
    *v131 = *v252;
    v134 = v249;
    *v138 = *v247;
    v143 = v244;
    v151 = v241;
    v157 = v238;
    v161 = v235;
    *&v169[3] = *&v233[3];
    *v169 = *v233;
    *&v172[3] = *&v231[3];
    *v172 = *v231;
    *v175 = *v229;
    *&v124[3] = *&v254[3];
    *&v131[3] = *&v252[3];
    v135 = v250;
    *&v138[3] = *&v247[3];
    v144 = v245;
    v152 = v242;
    v158 = v239;
    v162 = v236;
    *&v175[3] = *&v229[3];
    v176 = v101;
    v177 = v70;
    v178 = v226;
    v179 = v227;
    v180 = v100;
    v181 = v69;
    *v182 = *v224;
    *&v182[3] = *&v224[3];
    v183 = v99;
    v184 = v103;
    v185 = v102;
    v186 = v68;
    *v187 = *v222;
    *&v187[3] = *&v222[3];
    v188 = v93;
    v189 = v67;
    *v190 = *v220;
    *&v190[3] = *&v220[3];
    v191 = v92;
    v192 = v91;
    v193 = v90;
    v194 = v89;
    v195 = v88;
    v196 = v66;
    v197 = v217;
    v198 = v218;
    v199 = v87;
    v200 = v64;
    v201 = v214;
    v202 = v215;
    v203 = v86;
    v204 = v85;
    v205 = v84;
    v206 = v83;
    v207 = v82;
    v208 = v81;
    v209 = v80;
    v210 = v79;
    v211 = v71;
    v212 = v65;
    sub_258DEB7F4(&v122);
    return memcpy(v21, v120, 0x1C9uLL);
  }
}

uint64_t sub_258DEB698()
{
  v0 = sub_258F0ABE0();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_258DEB6E4()
{
  result = qword_27F9889E0;
  if (!qword_27F9889E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889E0);
  }

  return result;
}

unint64_t sub_258DEB738()
{
  result = qword_27F9889F0;
  if (!qword_27F9889F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9889F0);
  }

  return result;
}

_OWORD *sub_258DEB8B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_258DEB8C8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_258DEB910()
{
  result = qword_27F988A18;
  if (!qword_27F988A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A18);
  }

  return result;
}

uint64_t sub_258DEB964(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258DEB978(a1, a2);
  }

  return a1;
}

uint64_t sub_258DEB978(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_258DEB9D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_258DEBA20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AIRAvailabilityDetailedStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AIRAvailabilityDetailedStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AIRAvailabilityChangeStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AIRAvailabilityChangeStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258DEBD18()
{
  result = qword_27F988A20;
  if (!qword_27F988A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A20);
  }

  return result;
}

unint64_t sub_258DEBD70()
{
  result = qword_27F988A28;
  if (!qword_27F988A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A28);
  }

  return result;
}

unint64_t sub_258DEBDC8()
{
  result = qword_27F988A30;
  if (!qword_27F988A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A30);
  }

  return result;
}

unint64_t sub_258DEBE20()
{
  result = qword_27F988A38;
  if (!qword_27F988A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A38);
  }

  return result;
}

unint64_t sub_258DEBE78()
{
  result = qword_27F988A40;
  if (!qword_27F988A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A40);
  }

  return result;
}

unint64_t sub_258DEBED0()
{
  result = qword_27F988A48;
  if (!qword_27F988A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988A48);
  }

  return result;
}

uint64_t sub_258DEBF54()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op provider invoked: AIRAssetStatusDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_258DEC034()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AIRAssetStatusDataProvider()
{
  result = qword_27F988A58;
  if (!qword_27F988A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258DEC124()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_258DEC1B4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258DEBF34();
}

uint64_t sub_258DEC244@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AIRAssetStatusCalculator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t AIRAssetStatusMetrics.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, char *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  AIRAssetStatusMetrics.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v11;
}

char *AIRAssetStatusMetrics.init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, char *a4)
{
  v139 = a4;
  v136 = a3;
  v140 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v127 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v133 = &v114 - v12;
  v122 = sub_258F09B00();
  v121 = *(v122 - 8);
  v13 = v121[8];
  MEMORY[0x28223BE20](v122, v14);
  v119 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_258F09A20();
  v118 = *(v120 - 8);
  v16 = *(v118 + 64);
  MEMORY[0x28223BE20](v120, v17);
  v117 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_258F0A370();
  v149 = *(v19 - 8);
  v20 = v149;
  v21 = *(v149 + 8);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v132 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v135 = &v114 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v114 - v29;
  v31 = sub_258F09A70();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v31, v34);
  v131 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v114 - v38;
  v40 = *(v20 + 2);
  v128 = OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_logger;
  v40(&v4[OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_logger], a2, v19);
  sub_258F09A60();
  v141 = v32;
  v41 = *(v32 + 32);
  v137 = OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_oddId;
  v130 = v39;
  v142 = v31;
  v124 = v32 + 32;
  v123 = v41;
  v41(&v4[OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_oddId], v39, v31);
  v42 = &v4[OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_fbfBundleId];
  v43 = v139;
  *v42 = v136;
  v42[1] = v43;
  v40(v30, a2, v19);
  v44 = type metadata accessor for AIRAssetStatusDataProvider();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  v48 = *(v149 + 4);
  v134 = v30;
  v126 = v149 + 32;
  v125 = v48;
  v48(v47 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusDataProvider_logger, v30, v19);
  v139 = v4;
  *(v4 + 3) = v47;
  v49 = sub_258F0A1F0();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v52 = v140;
  v53 = sub_258F0A1E0();
  v147 = v49;
  v148 = MEMORY[0x277D04548];
  *&v146 = v53;
  v140 = a2;
  v54 = v19;
  v129 = v40;
  v136 = v20 + 16;
  v40(v135, v140, v19);
  v55 = sub_258F09C20();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v58 = v138;
  v59 = sub_258F09BE0();
  if (v58)
  {
    v60 = *(v149 + 1);
    v60(v140, v19);

    v61 = v139;
    v62 = *(v139 + 3);

    v60(v128 + v61, v54);
    (*(v141 + 8))(&v137[v61], v142);
    v63 = v42[1];

    type metadata accessor for AIRAssetStatusMetrics();
    v64 = *(*v61 + 48);
    v65 = *(*v61 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v66 = v59;
    v67 = v117;
    sub_258F0A090();
    v68 = v119;
    sub_258F09AC0();
    v138 = v66;
    v116 = v55;
    sub_258F09C10();
    (v121[1])(v68, v122);
    (*(v118 + 8))(v67, v120);
    v69 = v134;
    v115 = v54;
    v70 = v129;
    v129(v134, v140, v54);
    v128 = v42;
    v135 = 0;
    v71 = *(v141 + 16);
    v61 = v139;
    v72 = v130;
    v71(v130, &v137[v139], v142);
    v137 = v52;

    v73 = v133;
    sub_258DEC244(v133);
    v70(v132, v69, v54);
    v74 = v73;
    v75 = v127;
    sub_258DECF90(v74, v127);
    v76 = v72;
    v77 = v142;
    v71(v131, v76, v142);
    type metadata accessor for BiomeResultsWrapperFactory();
    v122 = swift_allocObject();
    v78 = type metadata accessor for CAAnalyticsEventSubmitter();
    v79 = swift_allocObject();
    v147 = v78;
    v148 = &off_286A2C648;
    *&v146 = v79;
    v80 = type metadata accessor for AIRAssetStatusCalculator(0);
    v81 = *(v80 + 48);
    v82 = *(v80 + 52);
    v83 = swift_allocObject();
    v84 = __swift_mutable_project_boxed_opaque_existential_1(&v146, v78);
    v121 = &v114;
    v85 = *(*(v78 - 8) + 64);
    MEMORY[0x28223BE20](v84, v84);
    v87 = (&v114 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v88 + 16))(v87);
    v89 = *v87;
    v144 = v78;
    v145 = &off_286A2C648;
    *&v143 = v89;
    sub_258F09AC0();
    v90 = v132;
    v91 = v115;
    v70((v83 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_logger), v132, v115);
    sub_258DECF90(v75, v83 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_sqlFileURL);
    v92 = (v83 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_bookmarkService);
    v92[3] = v116;
    v92[4] = &off_286A2FA30;
    *v92 = v138;
    sub_258DED000(v75);
    v93 = *(v149 + 1);
    v94 = v91;
    v93(v90, v91);
    v149 = v93;
    sub_258DED000(v133);
    v95 = v77;
    (*(v141 + 8))(v130, v77);
    v96 = v134;
    v93(v134, v91);
    v123(v83 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_oddId, v131, v95);
    *(v83 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_biomeResultsFactory) = v122;
    sub_258DDA76C(&v143, v83 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_analyticsEventSubmitter);
    *(v83 + OBJC_IVAR____TtC16MetricsFramework24AIRAssetStatusCalculator_defaults) = v137;
    __swift_destroy_boxed_opaque_existential_1Tm(&v146);
    v61[4] = v83;
    v97 = v140;
    v129(v96, v140, v91);
    v99 = *v128;
    v98 = v128[1];

    v100 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v99, v98);
    v101 = type metadata accessor for AIRAssetStatusSELFReporter();
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    v104 = swift_allocObject();
    v147 = type metadata accessor for SELFReportingService();
    v148 = &protocol witness table for SELFReportingService;
    *&v146 = v100;
    v125(v104 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_logger, v96, v94);
    sub_258DDA76C(&v146, v104 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_reportingService);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_258F0CA20;
    *(v105 + 32) = v104;
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A88, &qword_258F0CA30);
    v107 = *(v106 + 48);
    v108 = *(v106 + 52);
    swift_allocObject();

    *&v146 = sub_258F09BA0();
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A90, qword_258F0CA38);
    v110 = *(v109 + 48);
    v111 = *(v109 + 52);
    swift_allocObject();
    v112 = sub_258F09BC0();

    v149(v97, v94);
    v61[2] = v112;
  }

  return v61;
}

uint64_t type metadata accessor for AIRAssetStatusMetrics()
{
  result = qword_27F988AB0;
  if (!qword_27F988AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258DECF90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258DED000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258DED068(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258DED088, 0, 0);
}

uint64_t sub_258DED088()
{
  v1 = *(v0[3] + 24);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258DEBF34();
}

uint64_t sub_258DED124(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258DED154, 0, 0);
}

uint64_t sub_258DED154()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + 16);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DED218;

  return v6(v0 + 16);
}

uint64_t sub_258DED218()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258DEE378, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_258DED34C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258DED36C, 0, 0);
}

uint64_t sub_258DED36C()
{
  v1 = *(v0[3] + 32);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED408;
  v3 = v0[2];

  return sub_258DDEBD4(v3);
}

uint64_t sub_258DED408()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258DEE380, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

char *AIRAssetStatusMetrics.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_fbfBundleId + 8];

  return v0;
}

uint64_t AIRAssetStatusMetrics.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC16MetricsFramework21AIRAssetStatusMetrics_fbfBundleId + 8];

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258DED710(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258DED734, 0, 0);
}

uint64_t sub_258DED734()
{
  v1 = *(v0[3] + 24);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258DEBF34();
}

uint64_t sub_258DED7D0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_258DED8C4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258DED8E8, 0, 0);
}

uint64_t sub_258DED8E8()
{
  v1 = *(v0[3] + 32);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED984;
  v3 = v0[2];

  return sub_258DDEBD4(v3);
}

uint64_t sub_258DED984()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258DEDAB8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_258DEDAD0(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258DEDB04, 0, 0);
}

uint64_t sub_258DEDB04()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + 16);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DEDBC8;

  return v6(v0 + 16);
}

uint64_t sub_258DEDBC8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258DEDCFC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_258DEDDB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AIRAssetStatusMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AIRAssetStatusDataRecord(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AIRAssetStatusDataRecord(_WORD *result, int a2, int a3)
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

uint64_t sub_258DEDEDC()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_258F09A70();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of AIRAssetStatusMetrics.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of AIRAssetStatusMetrics.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of AIRAssetStatusMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258DEE440(uint64_t a1)
{
  v4 = *(**v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t dispatch thunk of AIRAssetStatusReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

id sub_258DEE6C0(void *__src)
{
  memcpy(__dst, __src, 0x311uLL);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v2 = result;
    if (__dst[5])
    {
      v3 = result;

      v4 = sub_258F0A4E0();
      [v3 setSystemBuild_];

      if (!__dst[13])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = result;
      if (!__dst[13])
      {
LABEL_4:
        v5 = __dst[11];
        if (__dst[11])
        {
LABEL_5:
          v6 = __dst[10];

          v7 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v6, v5);
          [v2 setSiriInputLocale_];

          sub_258DE71D0(__dst);

          return v2;
        }

LABEL_17:

        sub_258DE71D0(__dst);
        return v2;
      }
    }

    v9 = sub_258F0A4E0();
    if ([v9 isEqualToString:@"UNKNOWN"])
    {
      v10 = 0;
    }

    else if ([v9 isEqualToString:@"OPTED_IN"])
    {
      v10 = 1;
    }

    else if ([v9 isEqualToString:@"OPTED_OUT"])
    {
      v10 = 2;
    }

    else if ([v9 isEqualToString:@"DISMISSED"])
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    [v2 setDataSharingOptInStatus_];

    v5 = __dst[11];
    if (__dst[11])
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_258DEE8A8(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    [a2 setCurrentStatus_];
    if (*(a1 + 24))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = a2;
  if ((*(a1 + 24) & 1) == 0)
  {
LABEL_7:
    [a2 setPreviousStatus_];
    [a2 setHasPreviousStatus_];
  }

LABEL_8:
  if (*(a1 + 40))
  {
    if (*(a1 + 56))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [a2 setTimeSinceLastStatusChangeInSeconds_];
  if ((*(a1 + 56) & 1) == 0)
  {
LABEL_10:
    [a2 setTimeSinceLastAvailabilityChangeInSeconds_];
  }

LABEL_11:
  v4 = *(a1 + 57);
  if (v4 != 2)
  {
    [a2 setIsAppleIntelligenceEligible_];
  }

  v5 = *(a1 + 58);
  if (v5 != 2)
  {
    [a2 setIsAppleIntelligenceAllowedThroughWaitlist_];
  }

  v6 = *(a1 + 59);
  if (v6 == 2)
  {
    if (*(a1 + 72))
    {
      goto LABEL_17;
    }
  }

  else
  {
    [a2 setIsAppleIntelligenceToggled_];
    if (*(a1 + 72))
    {
LABEL_17:
      if (*(a1 + 88))
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }
  }

  [a2 setTimeSinceLastAppleIntelligenceToggleInSeconds_];
  if (*(a1 + 88))
  {
LABEL_18:
    if (*(a1 + 104))
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  [a2 setTimeSinceLastEligibleChangeInSeconds_];
  if (*(a1 + 104))
  {
LABEL_19:
    if (*(a1 + 120))
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  [a2 setTimeSinceLastWaitlistChangeInSeconds_];
  if (*(a1 + 120))
  {
LABEL_20:
    if (*(a1 + 144))
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_30:
  [a2 setTimeSinceLastBootInSeconds_];
  if (*(a1 + 144))
  {
LABEL_21:
    if (*(a1 + 160))
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

LABEL_31:
  [a2 setHasModelCatalogSubscriptionHashChangedFromLastStatus_];
  if (*(a1 + 160))
  {
LABEL_22:
    v7 = *(a1 + 176);
    if (!v7)
    {
      goto LABEL_38;
    }

LABEL_33:
    v8 = *(a1 + 168);
    if (v8 == 0xD000000000000024 && 0x8000000258F194F0 == v7 || (sub_258F0AD80() & 1) != 0)
    {
      v9 = 1;
    }

    else if (v8 == 0xD00000000000002ELL && 0x8000000258F19520 == v7 || (sub_258F0AD80() & 1) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
      if (v8 != 0x6C7070612E6D6F63 || v7 != 0xEE00697269732E65)
      {
        if (sub_258F0AD80())
        {
          v9 = 3;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    [a2 setUseCase_];

    goto LABEL_38;
  }

LABEL_32:
  [a2 setTimeSinceLastModelCatalogSubscriptionHashChangeInSeconds_];
  v7 = *(a1 + 176);
  if (v7)
  {
    goto LABEL_33;
  }

LABEL_38:
}

void sub_258DEEC18(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    [a2 setCurrentStatus_];
    v4 = *(a1 + 208);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = a2;
  v4 = *(a1 + 208);
  if (v4)
  {
LABEL_7:
    v5 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(*(a1 + 200), v4);
    [a2 setAppleIntelligenceLocale_];
  }

LABEL_8:
  if (*(a1 + 224))
  {
    if (*(a1 + 240))
    {
      goto LABEL_10;
    }
  }

  else
  {
    [a2 setTimeSinceLastAppleIntelligenceToggleInSeconds_];
    if (*(a1 + 240))
    {
LABEL_10:
      if (*(a1 + 256))
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  [a2 setTimeSinceLastModelCatalogSubscriptionHashChangeInSeconds_];
  if (*(a1 + 256))
  {
LABEL_11:
    v6 = *(a1 + 296);
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  [a2 setTimeSinceLastBootInSeconds_];
  v6 = *(a1 + 296);
  if (v6)
  {
LABEL_12:
    v7 = *(a1 + 288);
    if (v7 == 0xD000000000000024 && 0x8000000258F194F0 == v6 || (v8 = *(a1 + 288), (sub_258F0AD80() & 1) != 0))
    {
      v9 = 1;
    }

    else if (v7 == 0xD00000000000002ELL && 0x8000000258F19520 == v6 || (sub_258F0AD80() & 1) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
      if (v7 != 0x6C7070612E6D6F63 || v6 != 0xEE00697269732E65)
      {
        if (sub_258F0AD80())
        {
          v9 = 3;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    [a2 setUseCase_];
    v10 = *(a1 + 24);
    v11 = sub_258DEFAA8;
    if (v10)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_26:
  v10 = *(a1 + 24);
  v11 = sub_258DEF380;
  if (v10)
  {
LABEL_17:
    v12 = v11;
    v13 = *(a1 + 16);

    [a2 setDownloadState_];
  }

LABEL_18:
  if (*(a1 + 312))
  {
    if (*(a1 + 328))
    {
      goto LABEL_20;
    }
  }

  else
  {
    [a2 setTimeSinceLastSoftwareUpdateInSeconds_];
    if (*(a1 + 328))
    {
LABEL_20:
      if (*(a1 + 344))
      {
        goto LABEL_21;
      }

LABEL_30:
      if (!*(a1 + 360))
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  [a2 setTimeSinceSampledErrorInSeconds_];
  if (!*(a1 + 344))
  {
    goto LABEL_30;
  }

LABEL_21:
  v14 = *(a1 + 336);

  v15 = sub_258F0A4E0();
  if ([v15 isEqualToString:@"SADBUDDYOPTINSTATE_UNKNOWN"])
  {
    v16 = 0;
  }

  else if ([v15 isEqualToString:@"SADBUDDYOPTINSTATE_OPTEDIN"])
  {
    v16 = 1;
  }

  else if ([v15 isEqualToString:@"SADBUDDYOPTINSTATE_OPTEDOUT"])
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  [a2 setBuddyStatus_];

  if (*(a1 + 360))
  {
LABEL_31:
    v17 = *(a1 + 352);
    v18 = sub_258F0A4E0();
    [a2 setBuildVersionPriorToSoftwareUpdate_];
  }

LABEL_32:
  if (*(a1 + 372))
  {
    if (*(a1 + 380))
    {
      goto LABEL_34;
    }
  }

  else
  {
    [a2 setInvocationsCountWhileNotAvailable_];
    if (*(a1 + 380))
    {
LABEL_34:
      if (!*(a1 + 392))
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  [a2 setLastMobileAssetDownloadAttemptErrorUnderlyingCode_];
  if (*(a1 + 392))
  {
LABEL_35:
    v19 = *(a1 + 384);
    v20 = sub_258F0A4E0();
    [a2 setLastMobileAssetDownloadAttemptErrorUnderlyingDomain_];
  }

LABEL_36:
  if (*(a1 + 424))
  {
    v21 = *(a1 + 416);
    v22 = sub_258F0A4E0();
    [a2 setSampledErrorAsset_];
  }

  if (*(a1 + 440))
  {
    v23 = *(a1 + 432);
    v24 = *(a1 + 440);

    v25 = sub_258F0A4E0();
    if ([v25 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_UNKNOWN"])
    {
      v26 = 0;
    }

    else if ([v25 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_NOT_DOWNLOADING"])
    {
      v26 = 1;
    }

    else if ([v25 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_DOWNLOADING"])
    {
      v26 = 2;
    }

    else if ([v25 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_DOWNLOAD_STALLED"])
    {
      v26 = 3;
    }

    else if ([v25 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_COMPLETE"])
    {
      v26 = 4;
    }

    else if ([v25 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_OUT_OF_SPACE"])
    {
      v26 = 5;
    }

    else if ([v25 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_ERROR"])
    {
      v26 = 6;
    }

    else if ([v25 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_NETWORK_ERROR"])
    {
      v26 = 7;
    }

    else if ([v25 isEqualToString:@"UAFSUBSCRIPTIONDOWNLOADSTATUS_DOWNGRADE_ERROR"])
    {
      v26 = 8;
    }

    else
    {
      v26 = 0;
    }

    [a2 setSubscriptionDownloadStatus_];
  }

  if (*(a1 + 456))
  {
    if (*(a1 + 56))
    {
      goto LABEL_80;
    }

LABEL_86:
    [a2 setTimeSinceLastMobileAssetDownloadAttemptInSeconds_];
    if (*(a1 + 72))
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  [a2 setTimeSinceSubscriptionDownloadStatusCompleteInSeconds_];
  if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_86;
  }

LABEL_80:
  if ((*(a1 + 72) & 1) == 0)
  {
LABEL_81:
    [a2 setTimeSinceLastMobileAssetDownloadErrorInSeconds_];
  }

LABEL_82:
}