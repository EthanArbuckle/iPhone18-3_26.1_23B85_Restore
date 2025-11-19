uint64_t sub_21E3C0C00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_21E3E25D0();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21E3C0C94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_21E3E25D0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3C0D14()
{
  v1 = (type metadata accessor for TipSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_21E3E25D0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C0E00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_21E3E2850();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21E3C0E94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_21E3E2850();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3C0F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26F0, &qword_21E3E3E30);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21E3C0F80()
{
  sub_21E3C7F24(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3C0FEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E3DA560();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E3C1044()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC26C8, &qword_21E3E3E08);
  sub_21E3C7BF0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21E3C10B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_21E3E2740();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21E3C114C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_21E3E2740();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3C11CC()
{
  v1 = (type metadata accessor for SupplementarySnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_21E3E2740();
  OUTLINED_FUNCTION_0_0(v6);
  (*(v7 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C12A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2798, &qword_21E3E3FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3C1318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2798, &qword_21E3E3FA0);
  OUTLINED_FUNCTION_0_0(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21E3C1374()
{
  v1 = sub_21E3E26D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for SupplementarySnippet() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[7];
  v12 = sub_21E3E2740();
  OUTLINED_FUNCTION_0_0(v12);
  (*(v13 + 8))(v0 + v8 + v11);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_21E3C1518(uint64_t a1, uint64_t a2)
{
  if (a2 == 2147483646)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    v3 = v2 - 1;
    if (v3 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    sub_21E3E25D0();
    v6 = OUTLINED_FUNCTION_9();

    return __swift_getEnumTagSinglePayload(v6, a2, v7);
  }
}

void sub_21E3C15A8()
{
  OUTLINED_FUNCTION_3_0();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    sub_21E3E25D0();
    v3 = OUTLINED_FUNCTION_9();

    __swift_storeEnumTagSinglePayload(v3, v0, v0, v4);
  }
}

uint64_t sub_21E3C1620()
{
  v1 = (type metadata accessor for TipSnippetContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_21E3E25D0();
  OUTLINED_FUNCTION_0_0(v7);
  (*(v8 + 8))(v0 + v3 + v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C16FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3C187C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_3_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28C8, "B'");
  v7 = OUTLINED_FUNCTION_2_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v10, v3, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28D0, &qword_21E3E4238);
  v12 = OUTLINED_FUNCTION_2_1(v11);
  if (*(v13 + 84) == v3)
  {
    v9 = v12;
    v14 = a3[6];
LABEL_14:
    v10 = v4 + v14;
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28D8, &qword_21E3E4240);
  v16 = OUTLINED_FUNCTION_2_1(v15);
  if (*(v17 + 84) == v3)
  {
    v9 = v16;
    v14 = a3[7];
    goto LABEL_14;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28E0, &qword_21E3E4248);
  v19 = OUTLINED_FUNCTION_2_1(v18);
  if (*(v20 + 84) == v3)
  {
    v9 = v19;
    v14 = a3[8];
    goto LABEL_14;
  }

  if (v3 != 0x7FFFFFFF)
  {
    v9 = sub_21E3E3060();
    v14 = a3[15];
    goto LABEL_14;
  }

  v21 = *(v4 + a3[13]);
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  return (v21 + 1);
}

uint64_t sub_21E3C1A34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_3_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28C8, "B'");
  v9 = OUTLINED_FUNCTION_2_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28D0, &qword_21E3E4238);
    v14 = OUTLINED_FUNCTION_2_1(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28D8, &qword_21E3E4240);
      v18 = OUTLINED_FUNCTION_2_1(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28E0, &qword_21E3E4248);
        result = OUTLINED_FUNCTION_2_1(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = result;
          v16 = a4[8];
        }

        else
        {
          if (a3 == 0x7FFFFFFF)
          {
            *(v5 + a4[13]) = (v4 - 1);
            return result;
          }

          v11 = sub_21E3E3060();
          v16 = a4[15];
        }
      }
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_21E3C1BE8()
{
  OUTLINED_FUNCTION_3_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28D0, &qword_21E3E4238);
  v3 = OUTLINED_FUNCTION_2_1(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2940, ",'");
    v6 = OUTLINED_FUNCTION_9();
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_21E3C1C90(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_3_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28D0, &qword_21E3E4238);
  v7 = OUTLINED_FUNCTION_2_1(v6);
  if (*(v8 + 84) == a3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2940, ",'");
    v10 = OUTLINED_FUNCTION_9();
  }

  return __swift_storeEnumTagSinglePayload(v10, v3, v3, v9);
}

uint64_t sub_21E3C1D4C()
{
  OUTLINED_FUNCTION_3_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A08, &qword_21E3E4430);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_5();
  v5(v4);
  return v0;
}

uint64_t sub_21E3C1DB0()
{
  OUTLINED_FUNCTION_3_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AA8, &qword_21E3E44F0);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 32);
  v4 = OUTLINED_FUNCTION_5();
  v5(v4);
  return v0;
}

uint64_t sub_21E3C1E28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E3E2CE0();
  *a1 = result;
  return result;
}

uint64_t sub_21E3C1E7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_21E3E26F0();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21E3C1F10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_21E3E26F0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3C1F90()
{
  v1 = (type metadata accessor for LearnMoreSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_21E3E26F0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C2078()
{
  sub_21E3C7F24(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3C20BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B38, &qword_21E3E4638);
  sub_21E3D15EC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21E3C212C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3C2174()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3C21AC()
{
  v1 = sub_21E3E29A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v6 = *(v0 + v5 + 16);

  v7 = *(v0 + v5 + 24);

  return MEMORY[0x2821FE8E8](v0, v5 + 32, v3 | 7);
}

uint64_t sub_21E3C2260(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E3E2870();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21E3C22A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E3E2870();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21E3C22F4()
{
  v1 = *(type metadata accessor for TroubleshootingSnippet() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21E3E2870();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C23C0()
{
  sub_21E3C7F24(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3C2404()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B98, &qword_21E3E47A8);
  sub_21E3D2C70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21E3C2474(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_21E3E28F0();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21E3C2508(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_21E3E28F0();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3C258C()
{
  sub_21E3C7F24(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3C25D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BF0, &qword_21E3E4858);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21E3C2638()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2BB8, &qword_21E3E4838);
  sub_21E3D53BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21E3C26AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_21E3E2780();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_21E3C2740(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_21E3E2780();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3C27C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E3E24E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21E3C27F4@<X0>(uint64_t a1@<X8>)
{
  result = sub_21E3E2DA0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21E3C282C()
{
  v2 = type metadata accessor for AttributionItemListSnippet();
  OUTLINED_FUNCTION_1_3(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_21E3E2520();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v5 + v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v4 | v10;
  v14 = (v1 + v5);

  v15 = *(v0 + 28);
  v16 = sub_21E3E2780();
  OUTLINED_FUNCTION_0_0(v16);
  (*(v17 + 8))(v14 + v15);
  (*(v9 + 8))(v1 + v11, v8);

  return MEMORY[0x2821FE8E8](v1, v11 + v12, v13 | 7);
}

uint64_t sub_21E3C29D8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E3C2A10()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21E3C2A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CB8, &qword_21E3E4B80);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21E3C2AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CB8, &qword_21E3E4B80);
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21E3C2B20()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21E3C2B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28E0, &qword_21E3E4248);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21E3C2C54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28E0, &qword_21E3E4248);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21E3C2D0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3C2D44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E3E2D00();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E3C2E5C()
{
  OUTLINED_FUNCTION_22();
  v1 = sub_21E3E2370();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  v11 = *(v0 + v6);

  v12 = *(v0 + v8 + 8);

  v13 = *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_21E3C2F68()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3C2FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E3E2170();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21E3C3088(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E3E2170();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_21E3C3134()
{
  v1 = type metadata accessor for AttributionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_21E3E2170();
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = v0 + v3 + *(v1 + 20);
  if (*(v7 + 24))
  {
    sub_21E3C7F24(*v7, *(v7 + 8), *(v7 + 16));
    v8 = *(v7 + 24);
  }

  v9 = (v0 + v3 + *(v1 + 24));
  if (*v9)
  {
    v10 = v9[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C331C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E3E26D0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21E3C3364(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E3E26D0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21E3C33B0()
{
  OUTLINED_FUNCTION_2_5();
  result = sub_21E3E2D60();
  *v0 = result;
  return result;
}

uint64_t sub_21E3C33DC()
{
  OUTLINED_FUNCTION_2_5();
  result = sub_21E3E2D80();
  *v0 = result;
  return result;
}

uint64_t sub_21E3C3448@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21E3E2B00();
  v3 = OUTLINED_FUNCTION_0(v2);
  v51 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2660, &qword_21E3E3CD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_21E3E2520();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(sub_21E3E2610() + 16);

  v26 = sub_21E3E2610();
  if (v25 < 2)
  {
    sub_21E3DB89C(v26, v16);

    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      v35 = &qword_27CEC2660;
      v36 = &qword_21E3E3CD0;
      v37 = v16;
    }

    else
    {
      (*(v20 + 32))(v24, v16, v17);
      v38 = sub_21E3E24C0();
      v39 = [v38 punchOutUri];

      if (v39)
      {
        sub_21E3E21F0();

        v40 = sub_21E3E2210();
        __swift_storeEnumTagSinglePayload(v12, 0, 1, v40);
        sub_21E3C413C(v12, &qword_27CEC2658, &qword_21E3E3CC8);
        v41 = sub_21E3E24C0();
        (*(v20 + 8))(v24, v17);
        *a1 = v41;
        v42 = *MEMORY[0x277D63AD0];
        v43 = sub_21E3E3310();
        OUTLINED_FUNCTION_1(v43);
        (*(v44 + 104))(a1, v42, v43);
        v31 = OUTLINED_FUNCTION_3();
        return __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
      }

      (*(v20 + 8))(v24, v17);
      v45 = sub_21E3E2210();
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v45);
      v35 = &qword_27CEC2658;
      v36 = &qword_21E3E3CC8;
      v37 = v12;
    }

    sub_21E3C413C(v37, v35, v36);
    sub_21E3E2AE0();
    v46 = sub_21E3E2AF0();
    v47 = sub_21E3E35C0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_21E3BF000, v46, v47, "punchOutUri not found for attribution item", v48, 2u);
      MEMORY[0x223D58FC0](v48, -1, -1);
    }

    (*(v51 + 8))(v8, v2);
    v34 = sub_21E3E3310();
    v31 = a1;
    v32 = 1;
    v33 = 1;
  }

  else
  {
    v27 = sub_21E3C3938(v26);

    *a1 = v27;
    v28 = *MEMORY[0x277D63AD8];
    v29 = sub_21E3E3310();
    OUTLINED_FUNCTION_1(v29);
    (*(v30 + 104))(a1, v28, v29);
    v31 = OUTLINED_FUNCTION_3();
  }

  return __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
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

uint64_t sub_21E3C3938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2668, &qword_21E3E3CD8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_21E3E33E0();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v33 - v13;
  v38 = v14;
  v15 = 0;
  v16 = *(a1 + 16);
  v17 = (v14 + 32);
  v39 = MEMORY[0x277D84F90];
  while (v16 != v15)
  {
    v18 = *(sub_21E3E2520() - 8);
    sub_21E3C3CCC(a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15, v5);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_21E3C413C(v5, &qword_27CEC2668, &qword_21E3E3CD8);
      ++v15;
    }

    else
    {
      v19 = *v17;
      v20 = v12;
      v21 = v17;
      v22 = v37;
      v19(v37, v5, v6);
      v23 = v22;
      v17 = v21;
      v35 = v19;
      v19(v20, v23, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_21E3C41C4(0, *(v39 + 16) + 1, 1, v39, sub_21E3C91BC, MEMORY[0x277D63CE8], MEMORY[0x277D63CE8]);
      }

      v26 = *(v39 + 16);
      v25 = *(v39 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v34 = v26 + 1;
        v31 = sub_21E3C41C4(v25 > 1, v26 + 1, 1, v39, sub_21E3C91BC, MEMORY[0x277D63CE8], MEMORY[0x277D63CE8]);
        v27 = v34;
        v39 = v31;
      }

      ++v15;
      v28 = v38;
      v29 = v39;
      *(v39 + 16) = v27;
      v30 = v29 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26;
      v12 = v36;
      v35(v30, v36, v6);
    }
  }

  return v39;
}

uint64_t sub_21E3C3CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_21E3E2520();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E3E2B00();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E3E3310();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = sub_21E3E24C0();
  v20 = [v19 punchOutUri];

  if (v20)
  {
    sub_21E3E21F0();

    v21 = sub_21E3E2210();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v21);
    sub_21E3C413C(v18, &qword_27CEC2658, &qword_21E3E3CC8);
    sub_21E3E2500();
    *v14 = sub_21E3E24C0();
    (*(v11 + 104))(v14, *MEMORY[0x277D63AD0], v10);
    v22 = v40;
    sub_21E3E33D0();
    v23 = 0;
  }

  else
  {
    v24 = v36;
    v25 = sub_21E3E2210();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v25);
    sub_21E3C413C(v18, &qword_27CEC2658, &qword_21E3E3CC8);
    sub_21E3E2AE0();
    (*(v37 + 16))(v6, a1, v38);
    v26 = sub_21E3E2AF0();
    v27 = sub_21E3E35C0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      v30 = sub_21E3E24E0();
      v32 = v31;
      (*(v37 + 8))(v6, v38);
      v33 = sub_21E3C9300(v30, v32, &v41);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_21E3BF000, v26, v27, "punchOutUri not found for attribution item %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223D58FC0](v29, -1, -1);
      MEMORY[0x223D58FC0](v28, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v6, v38);
    }

    (*(v24 + 8))(v39, v7);
    v23 = 1;
    v22 = v40;
  }

  v34 = sub_21E3E33E0();
  return __swift_storeEnumTagSinglePayload(v22, v23, 1, v34);
}

uint64_t sub_21E3C413C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_21E3C41C4(uint64_t result, int64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  v10 = result;
  if (a3)
  {
    v11 = *(a4 + 24);
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if ((v12 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = *(a4 + 16);
  v14 = a5(v13, v12);
  v15 = *(a6(0) - 8);
  if (v10)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_21E3C42CC(a4 + v16, v13, v14 + v16, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_21E3C42CC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_1(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_2();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_2();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21E3C43E8(uint64_t a1, int a2)
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

uint64_t sub_21E3C4408(uint64_t result, int a2, int a3)
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

void sub_21E3C4444(uint64_t a1, unint64_t *a2)
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

uint64_t type metadata accessor for TipSnippet()
{
  result = qword_281223680;
  if (!qword_281223680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3C4550()
{
  sub_21E3C45D4();
  if (v0 <= 0x3F)
  {
    sub_21E3E25D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21E3C45D4()
{
  if (!qword_2812230F8)
  {
    sub_21E3E3480();
    sub_21E3C4D58(&qword_281223080, MEMORY[0x277D63F60]);
    v0 = sub_21E3E2CD0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812230F8);
    }
  }
}

uint64_t sub_21E3C4684@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for TipSnippet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = *(MEMORY[0x28223BE20](v3 - 8) + 28);
  v7 = *(type metadata accessor for TipSnippetContentView(0) + 20);
  v8 = sub_21E3E25D0();
  (*(*(v8 - 8) + 16))(&a1[v7], v1 + v6, v8);
  v17[1] = sub_21E3E2E30();
  sub_21E3E32A0();
  *a1 = v18;
  *&v18 = sub_21E3E3230();
  BYTE8(v18) = 0;
  sub_21E3C4A48(v1, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_21E3C4AAC(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2678, &qword_21E3E3D70) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2680, &qword_21E3E3D78);
  sub_21E3C4B70();
  sub_21E3E31C0();

  v12 = sub_21E3E3300();
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2698, &qword_21E3E3D88);
  v16 = &v11[*(result + 36)];
  *v16 = v12;
  v16[1] = v14;
  return result;
}

uint64_t sub_21E3C4894(uint64_t a1)
{
  v2 = sub_21E3E2210();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for TipSnippet() + 20);
  v8 = sub_21E3E25B0();
  v9 = type metadata accessor for ActionHandler();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  sub_21E3E2AE0();
  *(v12 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext) = v8;
  sub_21E3E2540();
  if (*a1)
  {
    v13 = *a1;
    sub_21E3DC6A4();

    swift_setDeallocating();
    sub_21E3DD768();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v15 = *(a1 + 8);
    sub_21E3E3480();
    sub_21E3C4D58(&qword_281223080, MEMORY[0x277D63F60]);
    result = sub_21E3E2CB0();
    __break(1u);
  }

  return result;
}

uint64_t sub_21E3C4A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3C4AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3C4B10()
{
  v1 = *(type metadata accessor for TipSnippet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21E3C4894(v2);
}

unint64_t sub_21E3C4B70()
{
  result = qword_27CEC2688;
  if (!qword_27CEC2688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2680, &qword_21E3E3D78);
    sub_21E3C4DA0(&qword_2812230D8, &qword_27CEC2690, &qword_21E3E3D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2688);
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

unint64_t sub_21E3C4C70()
{
  result = qword_27CEC26A0;
  if (!qword_27CEC26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2678, &qword_21E3E3D70);
    sub_21E3C4D58(&qword_27CEC26A8, type metadata accessor for TipSnippetContentView);
    sub_21E3C4DA0(&qword_27CEC26B0, &qword_27CEC2698, &qword_21E3E3D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC26A0);
  }

  return result;
}

uint64_t sub_21E3C4D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E3C4DA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for ListStyleAnswerSnippet()
{
  result = qword_281223380;
  if (!qword_281223380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3C4E5C()
{
  sub_21E3C45D4();
  if (v0 <= 0x3F)
  {
    sub_21E3C4EF8();
    if (v1 <= 0x3F)
    {
      sub_21E3E2850();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21E3C4EF8()
{
  if (!qword_281223120)
  {
    type metadata accessor for VRXIdiom(255);
    v0 = sub_21E3E2BB0();
    if (!v1)
    {
      atomic_store(v0, &qword_281223120);
    }
  }
}

uint64_t sub_21E3C4F6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v81 = sub_21E3E27C0();
  v3 = OUTLINED_FUNCTION_0(v81);
  v79 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v77 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = &v70 - v9;
  v80 = sub_21E3E2750();
  v10 = OUTLINED_FUNCTION_0(v80);
  v78 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v76 = v15 - v14;
  v75 = sub_21E3E2850();
  v16 = OUTLINED_FUNCTION_0(v75);
  v73 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v72 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26B8, &qword_21E3E3DF8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v70 - v24;
  v26 = type metadata accessor for ListStyleAnswerSnippet();
  v27 = v26 - 8;
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26C0, &qword_21E3E3E00);
  v30 = OUTLINED_FUNCTION_0(v71);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v36 = &v70 - v35;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26C8, &qword_21E3E3E08);
  v37 = OUTLINED_FUNCTION_1(v83);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v70 - v40;
  sub_21E3C7AAC(v2, &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v43 = swift_allocObject();
  sub_21E3C7B1C(&v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26D0, &qword_21E3E3E10);
  sub_21E3C4DA0(&qword_2812230A0, &qword_27CEC26D0, &qword_21E3E3E10);
  sub_21E3E3390();
  v44 = *(v27 + 32);
  sub_21E3E2790();
  v45 = sub_21E3E2660();
  if (__swift_getEnumTagSinglePayload(v25, 1, v45) == 1)
  {
    sub_21E3C413C(v25, &qword_27CEC26B8, &qword_21E3E3DF8);
    v46 = 0;
  }

  else
  {
    v46 = sub_21E3DBB5C();
    (*(*(v45 - 8) + 8))(v25, v45);
  }

  v47 = sub_21E3E2820();
  sub_21E3E3480();
  sub_21E3C80F4(&qword_281223080, MEMORY[0x277D63F60]);
  v48 = sub_21E3E2CC0();
  v50 = v49;
  v51 = *(v32 + 32);
  v70 = v41;
  v51(v41, v36, v71);
  v52 = &v41[*(v83 + 36)];
  *v52 = v48;
  v52[1] = v50;
  v52[2] = v46;
  v52[3] = v47;
  v53 = v72;
  v54 = v73;
  v55 = v75;
  (*(v73 + 16))(v72, v2 + v44, v75);
  v56 = v74;
  sub_21E3E27A0();
  v57 = v79;
  v58 = v77;
  v59 = v81;
  (*(v79 + 104))(v77, *MEMORY[0x277D04800], v81);
  LOBYTE(v47) = sub_21E3E27B0();
  v60 = *(v57 + 8);
  v60(v58, v59);
  v60(v56, v59);
  v61 = v78;
  v62 = MEMORY[0x277D047F8];
  if ((v47 & 1) == 0)
  {
    v62 = MEMORY[0x277D047F0];
  }

  v63 = v76;
  v64 = v80;
  (*(v78 + 104))(v76, *v62, v80);
  v65 = sub_21E3E2670();
  v67 = v66;
  (*(v61 + 8))(v63, v64);
  (*(v54 + 8))(v53, v55);
  v84 = v65;
  v85 = v67;
  sub_21E3C7BF0();
  v68 = v70;
  sub_21E3E3160();

  return sub_21E3C413C(v68, &qword_27CEC26C8, &qword_21E3E3E08);
}

uint64_t sub_21E3C55F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v222 = a2;
  v206 = sub_21E3E2E60();
  v205 = *(v206 - 8);
  v3 = *(v205 + 64);
  MEMORY[0x28223BE20](v206);
  v204 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_21E3E2EE0();
  v202 = *(v203 - 8);
  v5 = *(v202 + 64);
  MEMORY[0x28223BE20](v203);
  v201 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ListStyleAnswerSnippet();
  v8 = v7 - 8;
  v186 = *(v7 - 8);
  v9 = *(v186 + 64);
  MEMORY[0x28223BE20](v7);
  v187 = v10;
  v188 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for AttributionView();
  v11 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v189 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26D8, &qword_21E3E3E18);
  v192 = *(v195 - 8);
  v13 = *(v192 + 64);
  MEMORY[0x28223BE20](v195);
  v190 = &v175 - v14;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26E0, &qword_21E3E3E20);
  v196 = *(v198 - 8);
  v15 = *(v196 + 64);
  MEMORY[0x28223BE20](v198);
  v193 = &v175 - v16;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26E8, &qword_21E3E3E28);
  v199 = *(v200 - 8);
  v17 = *(v199 + 64);
  MEMORY[0x28223BE20](v200);
  v197 = &v175 - v18;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26F0, &qword_21E3E3E30);
  v19 = *(*(v220 - 8) + 64);
  MEMORY[0x28223BE20](v220);
  v194 = &v175 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26B8, &qword_21E3E3DF8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v213 = &v175 - v23;
  v217 = sub_21E3E2660();
  v216 = *(v217 - 8);
  v24 = *(v216 + 64);
  MEMORY[0x28223BE20](v217);
  v215 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26F8, &qword_21E3E3E38);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v221 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v232 = &v175 - v30;
  v183 = sub_21E3E3400();
  v180 = *(v183 - 8);
  v31 = *(v180 + 64);
  MEMORY[0x28223BE20](v183);
  v178 = &v175 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2700, &unk_21E3E3E40);
  v184 = *(v185 - 8);
  v33 = *(v184 + 64);
  MEMORY[0x28223BE20](v185);
  v182 = &v175 - v34;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2708, &qword_21E3E4870);
  v181 = *(v224 - 8);
  v35 = *(v181 + 64);
  MEMORY[0x28223BE20](v224);
  v179 = &v175 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2710, &qword_21E3E3E50);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v219 = &v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v234 = &v175 - v41;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2718, &qword_21E3E3E58);
  v218 = *(v231 - 8);
  v42 = *(v218 + 64);
  v43 = MEMORY[0x28223BE20](v231);
  v230 = &v175 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v233 = &v175 - v45;
  v227 = sub_21E3E22B0();
  v226 = *(v227 - 8);
  v46 = *(v226 + 64);
  MEMORY[0x28223BE20](v227);
  v225 = &v175 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_21E3E33C0();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v208 = &v175 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2720, &qword_21E3E3E60);
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  v210 = &v175 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2728, &qword_21E3E3E68);
  v228 = *(v56 - 8);
  v57 = *(v228 + 8);
  MEMORY[0x28223BE20](v56);
  v207 = &v175 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2730, &qword_21E3E3E70);
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x28223BE20](v59 - 8);
  v214 = &v175 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v229 = &v175 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v235 = &v175 - v66;
  MEMORY[0x28223BE20](v65);
  v68 = &v175 - v67;
  v69 = *(v8 + 32);
  v236 = a1;
  v70 = sub_21E3E2830();
  v71 = MEMORY[0x277D638E8];
  v223 = v69;
  v212 = v52;
  v211 = v53;
  v177 = v48;
  v209 = v49;
  if (v70)
  {
    v72 = sub_21E3E27F0();
    v73 = sub_21E3D5698(v72);
    v75 = v74;
    v77 = v76;
    v176 = v56;
    v79 = v78;

    v248 = MEMORY[0x277CE0BD8];
    v249 = v71;
    v80 = swift_allocObject();
    v246 = v80;
    *(v80 + 16) = v73;
    *(v80 + 24) = v75;
    v81 = v227;
    v82 = v77 & 1;
    v83 = MEMORY[0x277D62F38];
    *(v80 + 32) = v82;
    *(v80 + 40) = v79;
    v84 = v208;
    v85 = v226;
    v86 = v225;
    sub_21E3E33B0();
    v87 = sub_21E3C80F4(&qword_281223090, MEMORY[0x277D63C80]);
    v88 = v210;
    sub_21E3E3140();
    (*(v209 + 8))(v84, v48);
    (*(v85 + 104))(v86, *v83, v81);
    v246 = v48;
    v247 = v87;
    swift_getOpaqueTypeConformance2();
    v89 = v207;
    v90 = v212;
    sub_21E3E3120();
    (*(v85 + 8))(v86, v81);
    (*(v211 + 8))(v88, v90);
    v91 = v228;
    v92 = v176;
    (*(v228 + 4))(v68, v89, v176);
    v93 = 0;
  }

  else
  {
    v93 = 1;
    v92 = v56;
    v91 = v228;
  }

  v94 = 1;
  v228 = v68;
  __swift_storeEnumTagSinglePayload(v68, v93, 1, v92);
  sub_21E3C6EF0();
  if (sub_21E3E2840())
  {
    v95 = sub_21E3E2800();
    v96 = sub_21E3D5698(v95);
    v98 = v97;
    v100 = v99;
    v101 = v208;
    v103 = v102;

    v248 = MEMORY[0x277CE0BD8];
    v249 = MEMORY[0x277D638E8];
    v104 = swift_allocObject();
    v246 = v104;
    *(v104 + 16) = v96;
    *(v104 + 24) = v98;
    v105 = v227;
    *(v104 + 32) = v100 & 1;
    *(v104 + 40) = v103;
    v106 = v226;
    sub_21E3E33B0();
    v107 = sub_21E3C80F4(&qword_281223090, MEMORY[0x277D63C80]);
    v108 = v210;
    v109 = v177;
    sub_21E3E3140();
    (*(v209 + 8))(v101, v109);
    v110 = v225;
    (*(v106 + 104))(v225, *MEMORY[0x277D62F38], v105);
    v246 = v109;
    v247 = v107;
    swift_getOpaqueTypeConformance2();
    v111 = v207;
    v112 = v212;
    sub_21E3E3120();
    (*(v106 + 8))(v110, v105);
    (*(v211 + 8))(v108, v112);
    (*(v91 + 32))(v235, v111, v92);
    v94 = 0;
  }

  v113 = 1;
  __swift_storeEnumTagSinglePayload(v235, v94, 1, v92);
  if (sub_21E3E27E0())
  {
    v114 = sub_21E3E27D0();
    v115 = sub_21E3D5698(v114);
    v117 = v116;
    v119 = v118;
    v121 = v120;

    v248 = MEMORY[0x277CE0BD8];
    v249 = MEMORY[0x277D638E8];
    v122 = swift_allocObject();
    v246 = v122;
    *(v122 + 16) = v115;
    *(v122 + 24) = v117;
    *(v122 + 32) = v119 & 1;
    *(v122 + 40) = v121;
    v123 = MEMORY[0x277D62F38];
    v245 = 0;
    v243 = 0u;
    v244 = 0u;
    v242 = 0;
    v240 = 0u;
    v241 = 0u;
    v239 = 0;
    v238 = 0u;
    v237 = 0u;
    v124 = v178;
    sub_21E3E33F0();
    v125 = sub_21E3C80F4(&qword_281223088, MEMORY[0x277D63DD0]);
    v126 = v182;
    v127 = v183;
    sub_21E3E3140();
    (*(v180 + 8))(v124, v127);
    v128 = *v123;
    v129 = v226;
    v130 = v225;
    v131 = v227;
    (*(v226 + 104))(v225, v128, v227);
    v246 = v127;
    v247 = v125;
    swift_getOpaqueTypeConformance2();
    v132 = v179;
    v133 = v185;
    sub_21E3E3120();
    (*(v129 + 8))(v130, v131);
    (*(v184 + 8))(v126, v133);
    (*(v181 + 32))(v234, v132, v224);
    v113 = 0;
  }

  __swift_storeEnumTagSinglePayload(v234, v113, 1, v224);
  v134 = v213;
  sub_21E3E2790();
  v135 = v217;
  if (__swift_getEnumTagSinglePayload(v134, 1, v217) == 1)
  {
    sub_21E3C413C(v134, &qword_27CEC26B8, &qword_21E3E3DF8);
    v136 = 1;
    v137 = v232;
  }

  else
  {
    v138 = v225;
    v139 = v227;
    v140 = v226;
    (*(v216 + 32))(v215, v134, v135);
    v141 = v189;
    sub_21E3E2650();
    v142 = v188;
    sub_21E3C7AAC(v236, v188);
    v143 = (*(v186 + 80) + 16) & ~*(v186 + 80);
    v144 = swift_allocObject();
    sub_21E3C7B1C(v142, v144 + v143);
    v145 = v191;
    v146 = (v141 + *(v191 + 20));
    *v146 = 0u;
    v146[1] = 0u;
    v147 = (v141 + *(v145 + 24));
    *v147 = sub_21E3C7E48;
    v147[1] = v144;
    v148 = sub_21E3C80F4(qword_281223558, type metadata accessor for AttributionView);
    v149 = v190;
    sub_21E3E3140();
    sub_21E3C7EC8(v141);
    (*(v140 + 104))(v138, *MEMORY[0x277D62F38], v139);
    v246 = v145;
    v247 = v148;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v151 = v193;
    v152 = v195;
    sub_21E3E3120();
    (*(v140 + 8))(v138, v139);
    (*(v192 + 8))(v149, v152);
    v153 = v201;
    sub_21E3E2ED0();
    v246 = v152;
    v247 = OpaqueTypeConformance2;
    v154 = swift_getOpaqueTypeConformance2();
    v155 = v197;
    v156 = v198;
    sub_21E3E3200();
    (*(v202 + 8))(v153, v203);
    (*(v196 + 8))(v151, v156);
    v157 = v204;
    sub_21E3E2E50();
    v246 = v156;
    v247 = v154;
    swift_getOpaqueTypeConformance2();
    v158 = v194;
    v159 = v200;
    sub_21E3E3210();
    (*(v205 + 8))(v157, v206);
    (*(v199 + 8))(v155, v159);
    (*(v216 + 8))(v215, v135);
    v160 = v158;
    v137 = v232;
    sub_21E3C0F18(v160, v232);
    v136 = 0;
  }

  __swift_storeEnumTagSinglePayload(v137, v136, 1, v220);
  v161 = v229;
  sub_21E3C7CFC(v228, v229, &qword_27CEC2730, &qword_21E3E3E70);
  v162 = v218;
  v163 = *(v218 + 16);
  v164 = v230;
  v163(v230, v233, v231);
  v165 = v214;
  sub_21E3C7CFC(v235, v214, &qword_27CEC2730, &qword_21E3E3E70);
  v166 = v219;
  sub_21E3C7CFC(v234, v219, &qword_27CEC2710, &qword_21E3E3E50);
  v167 = v137;
  v168 = v221;
  sub_21E3C7CFC(v167, v221, &qword_27CEC26F8, &qword_21E3E3E38);
  v169 = v161;
  v170 = v222;
  sub_21E3C7CFC(v169, v222, &qword_27CEC2730, &qword_21E3E3E70);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2738, &qword_21E3E3E78);
  v172 = v231;
  v163((v170 + v171[12]), v164, v231);
  sub_21E3C7CFC(v165, v170 + v171[16], &qword_27CEC2730, &qword_21E3E3E70);
  sub_21E3C7CFC(v166, v170 + v171[20], &qword_27CEC2710, &qword_21E3E3E50);
  sub_21E3C7CFC(v168, v170 + v171[24], &qword_27CEC26F8, &qword_21E3E3E38);
  sub_21E3C413C(v232, &qword_27CEC26F8, &qword_21E3E3E38);
  sub_21E3C413C(v234, &qword_27CEC2710, &qword_21E3E3E50);
  sub_21E3C413C(v235, &qword_27CEC2730, &qword_21E3E3E70);
  v173 = *(v162 + 8);
  v173(v233, v172);
  sub_21E3C413C(v228, &qword_27CEC2730, &qword_21E3E3E70);
  sub_21E3C413C(v168, &qword_27CEC26F8, &qword_21E3E3E38);
  sub_21E3C413C(v166, &qword_27CEC2710, &qword_21E3E3E50);
  sub_21E3C413C(v165, &qword_27CEC2730, &qword_21E3E3E70);
  v173(v230, v172);
  return sub_21E3C413C(v229, &qword_27CEC2730, &qword_21E3E3E70);
}

uint64_t sub_21E3C6EF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2750, &qword_21E3E3E98);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v14 - v3);
  v5 = v0 + *(type metadata accessor for ListStyleAnswerSnippet() + 24);
  v6 = sub_21E3E2810();
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for ItemListView();
  v8 = v4 + v7[5];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = (v4 + v7[6]);
  v14[1] = 0;
  sub_21E3E32A0();
  v10 = v14[3];
  *v9 = v14[2];
  v9[1] = v10;
  *(v4 + v7[7]) = v6;
  LOBYTE(v6) = sub_21E3C795C();
  KeyPath = swift_getKeyPath();
  v12 = v4 + *(v1 + 36);
  *v12 = KeyPath;
  v12[8] = v6 & 1;
  sub_21E3C800C();
  sub_21E3E3140();
  return sub_21E3C413C(v4, &qword_27CEC2750, &qword_21E3E3E98);
}

uint64_t sub_21E3C70A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a2;
  v84 = a1;
  v4 = sub_21E3E2B00();
  v83 = *(v4 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2740, &unk_21E3E3E80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v69 - v10;
  v12 = sub_21E3E33A0();
  v80 = *(v12 - 8);
  v81 = v12;
  v13 = *(v80 + 64);
  MEMORY[0x28223BE20](v12);
  v82 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21E3E22C0();
  v77 = *(v15 - 8);
  v78 = v15;
  v16 = *(v77 + 64);
  MEMORY[0x28223BE20](v15);
  v79 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26B8, &qword_21E3E3DF8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2660, &qword_21E3E3CD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v69 - v24;
  v26 = sub_21E3E2520();
  v85 = *(v26 - 8);
  v27 = *(v85 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v76 = &v69 - v31;
  v75 = *(type metadata accessor for ListStyleAnswerSnippet() + 24);
  sub_21E3E2790();
  v32 = sub_21E3E2660();
  if (__swift_getEnumTagSinglePayload(v21, 1, v32) != 1)
  {
    v70 = v11;
    v71 = v25;
    v72 = a3;
    v73 = v7;
    v74 = v4;
    v35 = sub_21E3E2640();
    (*(*(v32 - 8) + 8))(v21, v32);
    v36 = *(v35 + 16);
    v37 = v85;
    if (v36)
    {
      v38 = 0;
      v39 = v35 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v40 = v85 + 8;
      while (1)
      {
        v33 = v86;
        if (v38 >= *(v35 + 16))
        {
          break;
        }

        (*(v37 + 16))(v30, v39 + *(v37 + 72) * v38, v26);
        v41 = sub_21E3E24C0();
        v42 = sub_21E3D5628(v41);
        if (v33)
        {
          if (v43)
          {
            v33 = v86;
            if (v42 == v84 && v43 == v86)
            {

              goto LABEL_19;
            }

            v45 = sub_21E3E3690();

            if (v45)
            {
              v33 = v86;
LABEL_19:

              v37 = v85;
              v25 = v71;
              (*(v85 + 32))(v71, v30, v26);
              v46 = 0;
              v7 = v73;
              v4 = v74;
              v34 = v83;
              v40 = v72;
              goto LABEL_20;
            }
          }
        }

        else
        {
          if (!v43)
          {
            goto LABEL_19;
          }
        }

        ++v38;
        (*v40)(v30, v26);
        v37 = v85;
        if (v36 == v38)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:

      v46 = 1;
      v7 = v73;
      v4 = v74;
      v34 = v83;
      v25 = v71;
      v40 = v72;
      v33 = v86;
LABEL_20:
      __swift_storeEnumTagSinglePayload(v25, v46, 1, v26);
      if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
      {
        goto LABEL_21;
      }

      v56 = v76;
      (*(v37 + 32))(v76, v25, v26);
      sub_21E3E2600();
      v57 = v37;
      sub_21E3E25F0();
      v58 = sub_21E3E24C0();
      sub_21E3E2820();
      sub_21E3D079C(v58);

      v59 = sub_21E3E24C0();
      v60 = v78;
      v61 = v79;
      *v79 = v59;
      *(v61 + 8) = 1;
      (*(v77 + 104))(v61, *MEMORY[0x277D63720], v60);
      (*(v80 + 104))(v82, *MEMORY[0x277D63BF8], v81);
      v62 = v70;
      sub_21E3E3360();
      v63 = sub_21E3E3370();
      __swift_storeEnumTagSinglePayload(v62, 0, 1, v63);
      v64 = objc_allocWithZone(sub_21E3E3420());
      v65 = sub_21E3E3410();
      if (*v40)
      {
        v66 = v65;
        v67 = *v40;
        sub_21E3E3460();

        return (*(v57 + 8))(v56, v26);
      }
    }

    v68 = *(v40 + 8);
    sub_21E3E3480();
    sub_21E3C80F4(&qword_281223080, MEMORY[0x277D63F60]);
    result = sub_21E3E2CB0();
    __break(1u);
    return result;
  }

  sub_21E3C413C(v21, &qword_27CEC26B8, &qword_21E3E3DF8);
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
  v33 = v86;
  v34 = v83;
LABEL_21:
  sub_21E3C413C(v25, &qword_27CEC2660, &qword_21E3E3CD0);
  sub_21E3E2AE0();
  sub_21E3E2430();
  v47 = sub_21E3E2AF0();
  v48 = sub_21E3E35C0();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = v33;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v88 = v49;
    v89 = v51;
    *v50 = 136315138;
    v87 = v84;
    sub_21E3E2430();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2748, &qword_21E3E3E90);
    v52 = sub_21E3E34E0();
    v54 = sub_21E3C9300(v52, v53, &v89);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_21E3BF000, v47, v48, "No attribution item found for %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x223D58FC0](v51, -1, -1);
    MEMORY[0x223D58FC0](v50, -1, -1);
  }

  return (*(v34 + 8))(v7, v4);
}

BOOL sub_21E3C795C()
{
  v1 = sub_21E3E27C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = v0 + *(type metadata accessor for ListStyleAnswerSnippet() + 24);
  sub_21E3E27A0();
  (*(v2 + 104))(v6, *MEMORY[0x277D04800], v1);
  LOBYTE(v9) = sub_21E3E27B0();
  v10 = *(v2 + 8);
  v10(v6, v1);
  v10(v8, v1);
  return (v9 & 1) == 0;
}

uint64_t sub_21E3C7AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListStyleAnswerSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3C7B10(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21E3C7B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListStyleAnswerSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3C7B80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListStyleAnswerSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21E3C55F0(v4, a1);
}

unint64_t sub_21E3C7BF0()
{
  result = qword_281223110;
  if (!qword_281223110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC26C8, &qword_21E3E3E08);
    sub_21E3C4DA0(&qword_281223098, &qword_27CEC26C0, &qword_21E3E3E00);
    sub_21E3C7CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223110);
  }

  return result;
}

unint64_t sub_21E3C7CA8()
{
  result = qword_281223428[0];
  if (!qword_281223428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281223428);
  }

  return result;
}

uint64_t sub_21E3C7CFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ListStyleAnswerSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_21E3C7B10(*(v0 + v3 + 16), *(v0 + v3 + 24));
  v5 = v1[8];
  v6 = sub_21E3E2850();
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3C7E48(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ListStyleAnswerSnippet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E3C70A0(a1, a2, v6);
}

uint64_t sub_21E3C7EC8(uint64_t a1)
{
  v2 = type metadata accessor for AttributionView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E3C7F24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21E3C7F58(uint64_t a1)
{
  v2 = sub_21E3E2C80();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  (*(v8 + 16))(v7 - v6, a1);
  return sub_21E3E2D50();
}

unint64_t sub_21E3C800C()
{
  result = qword_281223118;
  if (!qword_281223118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2750, &qword_21E3E3E98);
    sub_21E3C80F4(qword_2812235F8, type metadata accessor for ItemListView);
    sub_21E3C4DA0(&qword_2812230C8, &qword_27CEC2760, &unk_21E3E3F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223118);
  }

  return result;
}

uint64_t sub_21E3C80F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SupplementarySnippet()
{
  result = qword_281223418;
  if (!qword_281223418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3C81C0()
{
  sub_21E3C45D4();
  if (v0 <= 0x3F)
  {
    sub_21E3E2740();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21E3C8260()
{
  v1 = type metadata accessor for SupplementarySnippet();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_21E3C9084(v0, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_21E3C90E8(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2768, &qword_21E3E3F78);
  sub_21E3C4DA0(&qword_27CEC2770, &qword_27CEC2768, &qword_21E3E3F78);
  return sub_21E3E3390();
}

void sub_21E3C83A8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SupplementarySnippet();
  v5 = v4 - 8;
  v86 = *(v4 - 8);
  v6 = *(v86 + 8);
  MEMORY[0x28223BE20](v4);
  v87 = v7;
  v88 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2778, &qword_21E3E3F80);
  v8 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v90 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2780, &qword_21E3E3F88);
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = *(v94 + 64);
  MEMORY[0x28223BE20](v10);
  v91 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2788, &qword_21E3E3F90);
  v92 = *(v13 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x28223BE20](v13);
  v89 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2790, &qword_21E3E3F98);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v80 - v18;
  v100 = sub_21E3E26D0();
  v102 = *(v100 - 8);
  v20 = *(v102 + 64);
  v21 = MEMORY[0x28223BE20](v100);
  v84 = v22;
  v85 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v99 = &v80 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2798, &qword_21E3E3FA0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v101 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v80 - v28;
  v30 = *(v5 + 28);
  v31 = a1;
  v32 = sub_21E3E2720();
  v33 = sub_21E3C8BCC(1, v32);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v97 = v13;
  v98 = a2;
  if ((v38 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_21E3E36A0();
  swift_unknownObjectRetain_n();
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
    swift_unknownObjectRelease();
    v44 = MEMORY[0x277D84F90];
  }

  v45 = *(v44 + 16);

  if (__OFSUB__(v39 >> 1, v37))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v45 != (v39 >> 1) - v37)
  {
LABEL_15:
    swift_unknownObjectRelease();
    v13 = v97;
    a2 = v98;
LABEL_2:
    sub_21E3C9870(v33, v35, v37, v39);
    v41 = v40;
    v42 = v31;
    v43 = v100;
    goto LABEL_9;
  }

  v41 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v13 = v97;
  a2 = v98;
  v42 = v31;
  v43 = v100;
  if (v41)
  {
    goto LABEL_10;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v46 = sub_21E3E2730();
  sub_21E3E3480();
  sub_21E3C9BAC(&qword_281223080, MEMORY[0x277D63F60]);
  v100 = sub_21E3E2CC0();
  v96 = v47;
  sub_21E3E2710();
  if (__swift_getEnumTagSinglePayload(v19, 1, v43) == 1)
  {
    sub_21E3C9BF4(v19, &qword_27CEC2790, &qword_21E3E3F98);
    v48 = 1;
  }

  else
  {
    v49 = v102;
    v81 = *(v102 + 32);
    v50 = v99;
    v81(v99, v19, v43);
    v82 = v46;
    v51 = *(v49 + 16);
    v52 = v43;
    v83 = v41;
    v53 = v90;
    v51(v90, v50, v43);
    v54 = sub_21E3E2F10();
    v55 = &v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC27A8, &unk_21E3E3FB0) + 36)];
    *v55 = v54;
    *(v55 + 8) = 0u;
    *(v55 + 24) = 0u;
    v55[40] = 1;
    v56 = v42;
    v57 = v93;
    v53[*(v93 + 36)] = 0;
    v58 = v85;
    v59 = v50;
    v60 = v52;
    v51(v85, v59, v52);
    v13 = v97;
    v61 = v88;
    sub_21E3C9084(v56, v88);
    v62 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v63 = v86[80];
    v86 = v29;
    v64 = (v84 + v63 + v62) & ~v63;
    v65 = swift_allocObject();
    v66 = v58;
    v67 = v60;
    v81((v65 + v62), v66, v60);
    v68 = v61;
    v46 = v82;
    sub_21E3C90E8(v68, v65 + v64);
    v69 = sub_21E3C9A38();
    v70 = v91;
    sub_21E3E31C0();

    v71 = v53;
    v41 = v83;
    sub_21E3C9BF4(v71, &qword_27CEC2778, &qword_21E3E3F80);
    v103 = v57;
    v104 = v69;
    a2 = v98;
    swift_getOpaqueTypeConformance2();
    v72 = v89;
    v73 = v95;
    sub_21E3E3140();
    v74 = v70;
    v29 = v86;
    (*(v94 + 8))(v74, v73);
    (*(v102 + 8))(v99, v67);
    (*(v92 + 32))(v29, v72, v13);
    v48 = 0;
  }

  __swift_storeEnumTagSinglePayload(v29, v48, 1, v13);
  v75 = v101;
  sub_21E3C12A8(v29, v101);
  v76 = v100;
  v77 = v96;
  *a2 = v100;
  a2[1] = v77;
  a2[2] = v41;
  a2[3] = v46;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC27A0, &qword_21E3E3FA8);
  sub_21E3C12A8(v75, a2 + *(v78 + 48));
  v79 = v76;
  sub_21E3E2430();

  sub_21E3C1318(v29);
  sub_21E3C1318(v75);
}

uint64_t sub_21E3C8BCC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_21E3C9D50(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_21E3C9CA8(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E3C8C60(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_21E3E2210();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E3E26D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E3E2B00();
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E3E2AE0();
  v16 = *(v8 + 16);
  v44 = a1;
  v16(v11, a1, v7);
  v17 = sub_21E3E2AF0();
  v18 = sub_21E3E35B0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41 = v3;
    v21 = v20;
    v47 = v20;
    *v19 = 136315138;
    v22 = sub_21E3E26A0();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    v40 = v4;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    (*(v8 + 8))(v11, v7);
    v26 = sub_21E3C9300(v24, v25, &v47);
    v4 = v40;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_21E3BF000, v17, v18, "Tip Collection (%s) tapped", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v27 = v21;
    v3 = v41;
    MEMORY[0x223D58FC0](v27, -1, -1);
    MEMORY[0x223D58FC0](v19, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  (*(v42 + 8))(v15, v43);
  v28 = type metadata accessor for SupplementarySnippet();
  v29 = v45;
  v30 = v45 + *(v28 + 20);
  v31 = sub_21E3E2730();
  v32 = type metadata accessor for ActionHandler();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  sub_21E3E2AE0();
  *(v35 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext) = v31;
  v36 = v46;
  sub_21E3E2680();
  if (*v29)
  {
    v37 = *v29;
    sub_21E3DC6A4();

    swift_setDeallocating();
    sub_21E3DD768();
    return (*(v4 + 8))(v36, v3);
  }

  else
  {
    v39 = *(v29 + 8);
    sub_21E3E3480();
    sub_21E3C9BAC(&qword_281223080, MEMORY[0x277D63F60]);
    result = sub_21E3E2CB0();
    __break(1u);
  }

  return result;
}

uint64_t sub_21E3C9084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupplementarySnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3C90E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupplementarySnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21E3C914C(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for SupplementarySnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21E3C83A8(v4, a1);
}

size_t sub_21E3C920C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_1_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21E3C9300(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_21E3E2430();
  v6 = sub_21E3C93C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_21E3C9C48(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21E3C93C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21E3C94C4(a5, a6);
    *a1 = v9;
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
    result = sub_21E3E3640();
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

uint64_t sub_21E3C94C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_21E3C9510(a1, a2);
  sub_21E3C9628(&unk_282F7D568);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21E3C9510(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21E3E3510())
  {
    result = sub_21E3C970C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21E3E3620();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_21E3E3640();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21E3C9628(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_21E3C977C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21E3C970C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC27C8, &qword_21E3E3FC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_21E3C977C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC27C8, &qword_21E3E3FC0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_21E3C9870(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (v5)
  {
    sub_21E3C920C(v5, 0, &qword_27CEC27D0, &qword_21E3E3FC8, MEMORY[0x277D04878]);
    if (v4 != a3)
    {
      v7 = *(sub_21E3E29A0() - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = *(v7 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_21E3C9974()
{
  v1 = sub_21E3E26D0();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for SupplementarySnippet() - 8);
  v7 = v0 + ((v3 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21E3C8C60(v0 + v3, v7);
}

unint64_t sub_21E3C9A38()
{
  result = qword_27CEC27B0;
  if (!qword_27CEC27B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2778, &qword_21E3E3F80);
    sub_21E3C9AF0();
    sub_21E3C4DA0(&qword_2812230D8, &qword_27CEC2690, &qword_21E3E3D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC27B0);
  }

  return result;
}

unint64_t sub_21E3C9AF0()
{
  result = qword_27CEC27B8;
  if (!qword_27CEC27B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC27A8, &unk_21E3E3FB0);
    sub_21E3C9BAC(&qword_27CEC27C0, type metadata accessor for TipCollectionBannerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC27B8);
  }

  return result;
}

uint64_t sub_21E3C9BAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E3C9BF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_21E3C9C48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21E3C9CA8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(sub_21E3E29A0() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    return sub_21E3E2430();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_21E3C9D50(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_21E3C9E08()
{
  sub_21E3CE188(319, &qword_27CEC2838, MEMORY[0x277CE00B0], MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_21E3E25D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21E3C9F04(char a1)
{
  sub_21E3E3710();
  MEMORY[0x223D58B30](a1 & 1);
  return sub_21E3E3730();
}

uint64_t sub_21E3C9F68()
{
  v1 = *v0;
  sub_21E3E3710();
  MEMORY[0x223D58B30](v1);
  return sub_21E3E3730();
}

uint64_t sub_21E3C9FAC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2840, &qword_21E3E4088);
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v47 - v7;
  v9 = type metadata accessor for TipSnippetContentView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2848, &qword_21E3E4090);
  sub_21E3E32B0();
  *a1 = *v48;
  *(a1 + 8) = 0x402C000000000000;
  *(a1 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2850, &qword_21E3E4098);
  sub_21E3CA3D0(a1 + *(v12 + 44));
  sub_21E3CE850();
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_21E3CE8B4();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21E3CAB88;
  *(v15 + 24) = v14;
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2858, &qword_21E3E40A0) + 36));
  *v16 = sub_21E3CABE8;
  v16[1] = v15;
  LOBYTE(v15) = sub_21E3E2F00();
  sub_21E3E2B70();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2860, &qword_21E3E40A8) + 36);
  *v25 = v15;
  *(v25 + 8) = v18;
  *(v25 + 16) = v20;
  *(v25 + 24) = v22;
  *(v25 + 32) = v24;
  *(v25 + 40) = 0;
  type metadata accessor for CGSize(0);
  v47[1] = v26;
  *v48 = 0uLL;
  sub_21E3E32A0();
  v27 = v49;
  v28 = v50;
  v29 = sub_21E3E3250();
  KeyPath = swift_getKeyPath();
  sub_21E3E2FA0();
  v31 = sub_21E3E2F70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v31);
  v32 = sub_21E3E2FB0();
  sub_21E3C9BF4(v8, &qword_27CEC2840, &qword_21E3E4088);
  v33 = swift_getKeyPath();
  v34 = sub_21E3E32F0();
  v36 = v35;
  *v48 = v27;
  OUTLINED_FUNCTION_6();
  *&v48[16] = v28;
  *&v48[24] = v37;
  *&v48[32] = 0xE90000000000006CLL;
  *&v48[40] = KeyPath;
  *&v48[48] = v29;
  *&v48[56] = v33;
  *&v48[64] = v32;
  *&v48[72] = v38;
  *&v48[80] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2868, &unk_21E3E4110);
  memcpy((a1 + *(v40 + 36)), v48, 0x58uLL);
  v49 = v27;
  OUTLINED_FUNCTION_6();
  v50 = v28;
  v51 = v41;
  v52 = 0xE90000000000006CLL;
  v53 = KeyPath;
  v54 = v29;
  v55 = v33;
  v56 = v32;
  v57 = v34;
  v58 = v36;
  sub_21E3CF558();
  sub_21E3C9BF4(&v49, &qword_27CEC2870, &qword_21E3E5380);
  v47[2] = 0;
  v47[3] = 0;
  sub_21E3E32A0();
  v42 = v47[4];
  v43 = v47[5];
  v44 = v47[6];
  v45 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2878, &qword_21E3E4120) + 36));
  *v45 = v42;
  v45[1] = v43;
  v45[2] = v44;
  LOBYTE(v44) = sub_21E3E2F00();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2880, &qword_21E3E4128);
  *(a1 + *(result + 36)) = v44;
  return result;
}

uint64_t sub_21E3CA3D0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2888, &qword_21E3E4130);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2890, &qword_21E3E4138);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v46 - v14);
  v16 = *(type metadata accessor for TipSnippetContentView(0) + 20);
  v17 = v15 + *(type metadata accessor for TipSnippetContentView.ImageView(0) + 20);
  sub_21E3E2590();
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2898, &qword_21E3E4170);
  swift_storeEnumTagMultiPayload();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = sub_21E3E3300();
  v20 = (v15 + *(v9 + 44));
  *v20 = sub_21E3CDBF4;
  v20[1] = v18;
  v20[2] = v19;
  v20[3] = v21;
  v22 = sub_21E3E25A0();
  v48 = v23;
  v49 = v22;
  v47 = sub_21E3E2530();
  v24 = sub_21E3E25C0();
  v26 = v25;
  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v29 = type metadata accessor for TipSnippetContentView.BodyView(0);
  *&v7[v29[6]] = v28;
  swift_storeEnumTagMultiPayload();
  *&v7[v29[7]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28A0, &qword_21E3E41D0);
  swift_storeEnumTagMultiPayload();
  *&v7[v29[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  swift_storeEnumTagMultiPayload();
  *&v54 = 0x4010000000000000;
  sub_21E3CDC54();
  sub_21E3E2BC0();
  v30 = &v7[v29[5]];
  *v30 = KeyPath;
  *(v30 + 1) = 0;
  v30[16] = 0;
  v31 = v29[9];
  v52 = 0x7FFFFFFFFFFFFFFFLL;
  sub_21E3E32A0();
  *&v7[v31] = v54;
  v32 = v29[10];
  v52 = 0x7FFFFFFFFFFFFFFFLL;
  sub_21E3E32A0();
  *&v7[v32] = v54;
  v33 = &v7[v29[11]];
  type metadata accessor for CGSize(0);
  v52 = 0;
  v53 = 0;
  sub_21E3E32A0();
  v34 = v55;
  *v33 = v54;
  *(v33 + 2) = v34;
  v35 = &v7[v29[12]];
  v36 = v48;
  *v35 = v49;
  *(v35 + 1) = v36;
  *&v7[v29[13]] = v47;
  v37 = &v7[v29[14]];
  *v37 = v24;
  v37[1] = v26;
  v38 = &v7[v29[15]];
  sub_21E3E3050();
  v39 = swift_allocObject();
  *(v39 + 16) = 1;
  v40 = sub_21E3E3300();
  v41 = &v7[*(v2 + 44)];
  *v41 = sub_21E3CF7B0;
  v41[1] = v39;
  v41[2] = v40;
  v41[3] = v42;
  sub_21E3CF558();
  v43 = v50;
  sub_21E3CF558();
  sub_21E3CF558();
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28B0, &qword_21E3E4210) + 48);
  sub_21E3CF558();
  sub_21E3C9BF4(v7, &qword_27CEC2888, &qword_21E3E4130);
  sub_21E3C9BF4(v15, &qword_27CEC2890, &qword_21E3E4138);
  sub_21E3C9BF4(v43, &qword_27CEC2888, &qword_21E3E4130);
  return sub_21E3C9BF4(v13, &qword_27CEC2890, &qword_21E3E4138);
}

uint64_t sub_21E3CA87C(uint64_t a1)
{
  sub_21E3CA91C(0, a1);
  if (v4 & 1) != 0 || (v5 = v3, sub_21E3CA91C(1, a1), (v7) || v5 >= v6)
  {
    sub_21E3E2E30();
  }

  else
  {
    sub_21E3E2E20();
  }

  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2848, &qword_21E3E4090);
  return sub_21E3E32C0();
}

uint64_t sub_21E3CA91C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_21E3CDB04(a1 & 1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) + 16 * v3);
  result = *v5;
  v7 = v5[1];
  return result;
}

uint64_t sub_21E3CA984@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E3E2DD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2898, &qword_21E3E4170);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v15 - v9);
  sub_21E3CF558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E3E2BA0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = *v10;
    sub_21E3E35D0();
    v14 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_21E3CAB88(uint64_t a1)
{
  v3 = type metadata accessor for TipSnippetContentView(0);
  OUTLINED_FUNCTION_7(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  return sub_21E3CA87C(a1);
}

uint64_t sub_21E3CABE8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_21E3CAC14@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v1 = sub_21E3E22E0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v68[1] = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_21E3E3330();
  v70 = *(v73 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v73);
  v69 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AA0, &qword_21E3E44E8);
  v72 = *(v74 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = v68 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AA8, &qword_21E3E44F0);
  v8 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v77 = v68 - v9;
  v10 = sub_21E3E2BA0();
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v68[0] = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v80 = v68 - v21;
  v81 = sub_21E3E2210();
  v76 = *(v81 - 1);
  v22 = *(v76 + 64);
  MEMORY[0x28223BE20](v81);
  v75 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2940, ",'");
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = v68 - v26;
  v28 = sub_21E3E2580();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(type metadata accessor for TipSnippetContentView.ImageView(0) + 20);
  sub_21E3CF558();
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    v34 = &qword_27CEC2940;
    v35 = ",'";
  }

  else
  {
    (*(v29 + 32))(v32, v27, v28);
    sub_21E3CA984(v16);
    v37 = v78;
    v36 = v79;
    (*(v78 + 104))(v14, *MEMORY[0x277CDF3D0], v79);
    v38 = sub_21E3E2B90();
    v39 = *(v37 + 8);
    v39(v14, v36);
    v39(v16, v36);
    v27 = v80;
    if (v38)
    {
      sub_21E3E2560();
    }

    else
    {
      sub_21E3E2550();
    }

    v40 = v81;
    if (__swift_getEnumTagSinglePayload(v27, 1, v81) != 1)
    {
      v79 = v29;
      v80 = v28;
      v81 = v32;
      v45 = v75;
      v44 = v76;
      (*(v76 + 32))(v75, v27, v40);
      v46 = v68[0];
      __swift_storeEnumTagSinglePayload(v68[0], 1, 1, v40);
      sub_21E3E22D0();
      sub_21E3C9BF4(v46, &qword_27CEC2658, &qword_21E3E3CC8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AB0, &qword_21E3E44F8);
      sub_21E3CF48C();
      v47 = v69;
      sub_21E3E3340();
      v48 = sub_21E3CF510(&qword_27CEC2AC0, MEMORY[0x277D63B20]);
      v49 = v71;
      v50 = v73;
      sub_21E3E3150();
      (*(v70 + 8))(v47, v50);
      sub_21E3CB5BC();
      sub_21E3CB5BC();
      *&v84 = v50;
      *(&v84 + 1) = v48;
      swift_getOpaqueTypeConformance2();
      v51 = v77;
      v52 = v74;
      sub_21E3E3100();
      (*(v72 + 8))(v49, v52);
      v53 = [objc_opt_self() tertiarySystemFillColor];
      v54 = sub_21E3E3280();
      LOBYTE(v48) = sub_21E3E2F00();
      v55 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AC8, &qword_21E3E4500) + 36)];
      *v55 = v54;
      v55[8] = v48;
      v56 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AD0, &qword_21E3E4508) + 36)];
      v57 = *(sub_21E3E2C90() + 20);
      v58 = *MEMORY[0x277CE0118];
      v59 = sub_21E3E2E40();
      (*(*(v59 - 8) + 104))(&v56[v57], v58, v59);
      __asm { FMOV            V0.2D, #10.0 }

      *v56 = _Q0;
      *&v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AD8, &qword_21E3E4510) + 36)] = 256;
      sub_21E3CB5BC();
      sub_21E3CB5BC();
      sub_21E3E3300();
      sub_21E3E2C20();
      v65 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2AE0, &qword_21E3E4518) + 36)];
      v66 = v85;
      *v65 = v84;
      *(v65 + 1) = v66;
      *(v65 + 2) = v86;
      v43 = v82;
      sub_21E3CA984(&v51[*(v82 + 52)]);
      (*(v44 + 8))(v45, v40);
      (*(v79 + 8))(v81, v80);
      v42 = v83;
      sub_21E3C1DB0();
      v41 = 0;
      return __swift_storeEnumTagSinglePayload(v42, v41, 1, v43);
    }

    (*(v29 + 8))(v32, v28);
    v34 = &qword_27CEC2658;
    v35 = &qword_21E3E3CC8;
  }

  sub_21E3C9BF4(v27, v34, v35);
  v41 = 1;
  v43 = v82;
  v42 = v83;
  return __swift_storeEnumTagSinglePayload(v42, v41, 1, v43);
}

uint64_t sub_21E3CB534@<X0>(uint64_t a1@<X8>)
{
  if (!sub_21E3E3320())
  {
    sub_21E3E3230();
  }

  result = sub_21E3E2E90();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

double sub_21E3CB5BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2940, ",'");
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = *(type metadata accessor for TipSnippetContentView.ImageView(0) + 20);
  sub_21E3CF558();
  v5 = sub_21E3E2580();
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_21E3C9BF4(v3, &qword_27CEC2940, ",'");
    v6 = 1.0;
  }

  else
  {
    sub_21E3E2570();
    v6 = v7;
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  return 102.0 / v6;
}

uint64_t sub_21E3CB6F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E3E2DD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28A0, &qword_21E3E41D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v16 - v9);
  v11 = *(type metadata accessor for TipSnippetContentView.BodyView(0) + 28);
  sub_21E3CF558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21E3E2B80();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = *v10;
    sub_21E3E35D0();
    v15 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_21E3CB8F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E3E2DD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v16 - v9);
  v11 = *(type metadata accessor for TipSnippetContentView.BodyView(0) + 32);
  sub_21E3CF558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21E3E2C80();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = *v10;
    sub_21E3E35D0();
    v15 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_21E3CBB00()
{
  v1 = (v0 + *(type metadata accessor for TipSnippetContentView.BodyView(0) + 48));
  if (v1[1])
  {
    v2 = *v1;
  }

  sub_21E3CEDE0();
  sub_21E3E2430();
  v3 = sub_21E3E30C0();
  v5 = v4;
  v7 = v6;
  if (qword_27CEC2620 != -1)
  {
    swift_once();
  }

  v8 = sub_21E3E3090();
  sub_21E3C7F24(v3, v5, v7 & 1);

  return v8;
}

double sub_21E3CBC24()
{
  v1 = sub_21E3E2DD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for TipSnippetContentView.BodyView(0) + 20);
  v7 = *v6;
  if (*(v6 + 16) == 1)
  {
    v8 = *v6;
  }

  else
  {
    v9 = *(v6 + 8);
    v10 = *v6;

    sub_21E3E35D0();
    v11 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();
    sub_21E3CE8A8(v7, v9, 0);
    (*(v2 + 8))(v5, v1);
    v8 = v13;
  }

  return v8 + -5.0;
}

uint64_t sub_21E3CBD98@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v71 = sub_21E3E2B80();
  v72 = *(v71 - 8);
  v2 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  v68 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TipSnippetContentView.BodyView(0);
  v67 = *(v4 - 8);
  v80 = *(v67 + 64);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A38, &unk_21E3E4490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v61 = &v60 - v12;
  v64 = sub_21E3E2B30();
  v66 = *(v64 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A40, &qword_21E3E44A0);
  v15 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v60 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A48, &qword_21E3E44A8);
  v70 = *(v69 - 8);
  v17 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  v81 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A50, &qword_21E3E44B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v60 - v21;
  v23 = sub_21E3E2B60();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_21E3E2B50();
  v77 = *(v75 - 8);
  v28 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  v76 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [objc_opt_self() preferredFontForTextStyle_];
  sub_21E3E3260();
  v87 = 0u;
  v88 = 0u;
  v89 = 0;
  (*(v24 + 104))(v27, *MEMORY[0x277D719B0], v23);
  v31 = v1;
  v82 = *(v1 + v5[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A10, &qword_21E3E4438);
  sub_21E3E32B0();
  v32 = (v1 + v5[16]);
  v33 = *v32;
  v34 = v32[1];
  swift_bridgeObjectRetain_n();
  sub_21E3E2260();
  v35 = sub_21E3E2270();
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v35);
  sub_21E3E2B10();
  v36 = v76;
  sub_21E3E2B40();
  v60 = v5;
  v37 = *(v1 + v5[15]);
  v38 = sub_21E3E2210();
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v38);
  v39 = v62;
  v40 = v75;
  (*(v77 + 16))(v62, v36, v75);
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v40);
  v41 = (v31 + v5[13]);
  v74 = v31;
  v43 = v41[1];
  v44 = v41[2];
  *&v82 = *v41;
  v42 = v82;
  *(&v82 + 1) = v43;
  v83 = v44;
  sub_21E3E2430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  sub_21E3E32B0();
  *&v82 = v42;
  *(&v82 + 1) = v43;
  v83 = v44;
  sub_21E3E32B0();
  v45 = v63;
  sub_21E3E2B20();
  sub_21E3CE850();
  v46 = *(v67 + 80);
  swift_allocObject();
  sub_21E3CE8B4();
  sub_21E3CF510(&qword_27CEC2A60, MEMORY[0x277D719A8]);
  v47 = v78;
  v48 = v64;
  sub_21E3E3180();

  (*(v66 + 8))(v45, v48);
  sub_21E3CE850();
  v49 = swift_allocObject();
  sub_21E3CE8B4();
  v50 = &v47[*(v79 + 36)];
  *v50 = sub_21E3CEC24;
  *(v50 + 1) = v49;
  *(v50 + 2) = 0;
  *(v50 + 3) = 0;
  v51 = v68;
  sub_21E3CB6F0(v68);
  sub_21E3CE850();
  swift_allocObject();
  sub_21E3CE8B4();
  v67 = sub_21E3CEC28();
  v52 = sub_21E3CF510(&qword_27CEC2A70, MEMORY[0x277CDD6C8]);
  v53 = v71;
  v54 = v78;
  sub_21E3E3220();

  (*(v72 + 8))(v51, v53);
  sub_21E3C9BF4(v54, &qword_27CEC2A40, &qword_21E3E44A0);
  v55 = (v74 + v60[14]);
  v56 = v55[1];
  v85 = *v55;
  v86 = v56;
  sub_21E3CE850();
  swift_allocObject();
  sub_21E3CE8B4();
  sub_21E3E2430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2748, &qword_21E3E3E90);
  *&v82 = v79;
  *(&v82 + 1) = v53;
  v83 = v67;
  v84 = v52;
  swift_getOpaqueTypeConformance2();
  sub_21E3CED64();
  v57 = v69;
  v58 = v81;
  sub_21E3E3220();

  (*(v70 + 8))(v58, v57);
  return (*(v77 + 8))(v76, v75);
}

uint64_t sub_21E3CC888(uint64_t a1, double a2, double a3)
{
  v5 = (a1 + *(type metadata accessor for TipSnippetContentView.BodyView(0) + 44));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  sub_21E3E32C0();
  sub_21E3E32B0();
  return sub_21E3CC940(a2, a3);
}

uint64_t sub_21E3CC940(double a1, double a2)
{
  v5 = sub_21E3E2C80();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A80, &qword_21E3E44C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A88, &qword_21E3E44D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v47 - v15;
  v17 = sub_21E3E3040();
  v18 = *(*(v17 - 8) + 64);
  result = MEMORY[0x28223BE20](v17);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 0.0 || a2 != 0.0)
  {
    v54 = v20;
    v48 = v6;
    v49 = v5;
    v23 = v2;
    v47 = type metadata accessor for TipSnippetContentView.BodyView(0);
    v24 = *(v47 + 60);
    if (qword_27CEC2628 != -1)
    {
      swift_once();
    }

    v53 = sub_21E3E3010();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v53);
    v51 = sub_21E3E30A0();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v51);
    sub_21E3E3030();
    v50 = v24;
    sub_21E3E3020();
    v26 = v25;
    v54 = *(v54 + 8);
    (v54)(v22, v17);
    v27 = sub_21E3CBB00();
    v29 = v28;
    v31 = v30;
    v52 = v17;
    sub_21E3CBC24();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v53);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v51);
    sub_21E3E3030();
    sub_21E3E3020();
    v33 = v32;
    sub_21E3C7F24(v27, v29, v31 & 1);

    result = (v54)(v22, v52);
    v34 = round(v33 / v26);
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v36 = v48;
      v35 = v49;
      if (v34 > -9.22337204e18)
      {
        if (v34 < 9.22337204e18)
        {
          v37 = v34;
          v38 = v55;
          sub_21E3CB8F8(v55);
          v39 = sub_21E3E2C70();
          v40 = *(v36 + 8);
          v40(v38, v35);
          if (v39)
          {
            if (v37 >= 9)
            {
LABEL_10:
              sub_21E3CB8F8(v38);
              v41 = sub_21E3E2C70();
              v40(v38, v35);
              if (v41)
              {
                v37 = 9;
              }

              else
              {
                v37 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v42 = v47;
              v57 = *(v23 + *(v47 + 40));
              v43 = 1;
              goto LABEL_19;
            }
          }

          else if (v37 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_10;
          }

          sub_21E3CB8F8(v38);
          v44 = sub_21E3E2C70();
          result = (v40)(v38, v35);
          v45 = 10;
          if ((v44 & 1) == 0)
          {
            v45 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v46 = __OFSUB__(v45, v37);
          v43 = v45 - v37;
          if (!v46)
          {
            v42 = v47;
            v57 = *(v23 + *(v47 + 40));
LABEL_19:
            v56 = v43;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A10, &qword_21E3E4438);
            sub_21E3E32C0();
            v57 = *(v23 + *(v42 + 36));
            v56 = v37;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A10, &qword_21E3E4438);
            return sub_21E3E32C0();
          }

LABEL_24:
          __break(1u);
          return result;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_21E3CCE88(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for TipSnippetContentView.BodyView(0) + 44));
  v5 = *v1;
  v6 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  sub_21E3E32B0();
  return sub_21E3CC940(v3, v4);
}

void *sub_21E3CCEFC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_21E3E2270();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC29D0, &qword_21E3E4408);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC29D8, &qword_21E3E4410);
  v28 = *(v29 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC29E0, &qword_21E3E4418);
  v30 = *(v13 - 8);
  v31 = v13;
  v14 = *(v30 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = sub_21E3E2E80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28C8, "B'");
  sub_21E3E2BD0();
  v18 = __src[0];
  *v9 = v17;
  *(v9 + 1) = v18;
  v9[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC29E8, &qword_21E3E4420);
  sub_21E3CD324(v1, &v9[*(v19 + 44)]);
  sub_21E3CE80C();
  sub_21E3E35E0();
  v20 = sub_21E3C4DA0(&qword_27CEC29F8, &qword_27CEC29D0, &qword_21E3E4408);
  sub_21E3E31E0();
  sub_21E3C9BF4(v9, &qword_27CEC29D0, &qword_21E3E4408);
  v21 = (v1 + *(type metadata accessor for TipSnippetContentView.BodyView(0) + 56));
  v22 = *v21;
  v23 = v21[1];
  sub_21E3E2430();
  sub_21E3E2260();
  __src[0] = v6;
  __src[1] = v20;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  sub_21E3E31F0();
  (*(v32 + 8))(v5, v33);
  (*(v28 + 8))(v12, v24);
  sub_21E3E3300();
  sub_21E3E2CA0();
  v25 = v34;
  (*(v30 + 32))(v34, v16, v31);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A00, &qword_21E3E4428);
  return memcpy((v25 + *(v26 + 36)), __src, 0x70uLL);
}

uint64_t sub_21E3CD324@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A08, &qword_21E3E4430);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v41 = sub_21E3CBB00();
  v40 = v11;
  v13 = v12;
  v39 = v14;
  v38 = sub_21E3E2F20();
  sub_21E3CBC24();
  sub_21E3E2B70();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v45 = v13 & 1;
  v23 = v13 & 1;
  v36 = v23;
  v44 = 0;
  v24 = type metadata accessor for TipSnippetContentView.BodyView(0);
  v47 = *(a1 + *(v24 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A10, &qword_21E3E4438);
  sub_21E3E32B0();
  v43 = __src[0];
  KeyPath = swift_getKeyPath();
  v35 = KeyPath;
  LOBYTE(v47) = 0;
  v37 = sub_21E3E2EB0();
  sub_21E3CBD98(v10);
  v47 = *(a1 + *(v24 + 40));
  sub_21E3E32B0();
  v26 = __src[0];
  v27 = swift_getKeyPath();
  v28 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A18, &qword_21E3E4470) + 36)];
  *v28 = v27;
  *(v28 + 1) = v26;
  v28[16] = 0;
  LODWORD(v27) = sub_21E3E2EC0();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A20, &qword_21E3E4478) + 36)] = v27;
  *&v10[*(v4 + 44)] = 256;
  v29 = v8;
  sub_21E3C1D4C();
  v30 = v41;
  __src[0] = v41;
  v31 = v40;
  __src[1] = v40;
  LOBYTE(__src[2]) = v23;
  v32 = v39;
  __src[3] = v39;
  LOBYTE(v23) = v38;
  LOBYTE(__src[4]) = v38;
  __src[5] = v16;
  __src[6] = v18;
  __src[7] = v20;
  __src[8] = v22;
  LOBYTE(__src[9]) = 0;
  __src[10] = KeyPath;
  __src[11] = v43;
  LOBYTE(__src[12]) = 0;
  LODWORD(KeyPath) = v37;
  HIDWORD(__src[12]) = v37;
  LOWORD(__src[13]) = 256;
  memcpy(v42, __src, 0x6AuLL);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A28, &qword_21E3E4480) + 48);
  sub_21E3C1D4C();
  sub_21E3CF558();
  sub_21E3C9BF4(v10, &qword_27CEC2A08, &qword_21E3E4430);
  sub_21E3C9BF4(v29, &qword_27CEC2A08, &qword_21E3E4430);
  *&v47 = v30;
  *(&v47 + 1) = v31;
  v48 = v36;
  v49 = v32;
  v50 = v23;
  v51 = v16;
  v52 = v18;
  v53 = v20;
  v54 = v22;
  v55 = 0;
  v56 = v35;
  v57 = v43;
  v58 = 0;
  v59 = KeyPath;
  v60 = 256;
  return sub_21E3C9BF4(&v47, &qword_27CEC2A30, &qword_21E3E4488);
}

uint64_t sub_21E3CD708()
{
  sub_21E3E2F40();
  v0 = sub_21E3E2F50();

  qword_27CEC27F8 = v0;
  return result;
}

uint64_t sub_21E3CD744()
{
  if (qword_27CEC2620 != -1)
  {
    swift_once();
  }

  v0 = sub_21E3E3090();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  qword_27CEC2800 = v0;
  *algn_27CEC2808 = v2;
  byte_27CEC2810 = v4 & 1;
  qword_27CEC2818 = v6;
  return result;
}

uint64_t sub_21E3CD800()
{
  type metadata accessor for CGSize(0);
  sub_21E3CDCA8();
  result = sub_21E3E3490();
  qword_27CEC2820 = result;
  return result;
}

uint64_t sub_21E3CD8B8@<X0>(void *a1@<X8>)
{
  if (qword_27CEC2630 != -1)
  {
    swift_once();
  }

  *a1 = qword_27CEC2820;

  return sub_21E3E2430();
}

uint64_t sub_21E3CD930@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = sub_21E3E3230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28B8, &qword_21E3E4218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E3E4000;
  *(inited + 32) = a1 & 1;
  sub_21E3E2C30();
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  type metadata accessor for CGSize(0);
  sub_21E3CDCA8();
  result = sub_21E3E3490();
  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_21E3CDA0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  return sub_21E3D7BE0();
}

uint64_t sub_21E3CDA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_21E3CDB04(char a1)
{
  v3 = *(v1 + 40);
  sub_21E3E3710();
  MEMORY[0x223D58B30](a1 & 1);
  v4 = sub_21E3E3730();

  return sub_21E3CDB70(a1 & 1, v4);
}

unint64_t sub_21E3CDB70(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

uint64_t sub_21E3CDC1C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21E3CDC54()
{
  result = qword_27CEC28A8;
  if (!qword_27CEC28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC28A8);
  }

  return result;
}

unint64_t sub_21E3CDCA8()
{
  result = qword_27CEC28C0;
  if (!qword_27CEC28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC28C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TipSnippetContentView.ViewIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TipSnippetContentView.ViewIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_21E3CDEAC()
{
  sub_21E3CE12C();
  if (v0 <= 0x3F)
  {
    sub_21E3CE358(319, &qword_27CEC2900, type metadata accessor for CGSize, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21E3CE358(319, &qword_27CEC2908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21E3CE358(319, &qword_27CEC2910, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_21E3CE358(319, &qword_281223128, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_21E3CE188(319, &qword_27CEC2918, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_21E3CE358(319, &qword_27CEC2920, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_21E3CE188(319, &qword_27CEC2928, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_21E3CE1D8();
                  if (v8 <= 0x3F)
                  {
                    sub_21E3E3060();
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_21E3CE12C()
{
  if (!qword_27CEC28F8)
  {
    sub_21E3CDC54();
    v0 = sub_21E3E2BE0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEC28F8);
    }
  }
}

void sub_21E3CE188(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21E3CE1D8()
{
  if (!qword_27CEC2930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2938, "J'");
    v0 = sub_21E3E3530();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEC2930);
    }
  }
}

void sub_21E3CE274()
{
  sub_21E3CE358(319, &qword_27CEC2908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21E3CE358(319, &qword_27CEC2958, MEMORY[0x277D047D8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21E3CE358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21E3CE3BC()
{
  result = qword_27CEC2960;
  if (!qword_27CEC2960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2880, &qword_21E3E4128);
    sub_21E3CE474();
    sub_21E3C4DA0(&qword_27CEC29B8, &qword_27CEC29C0, qword_21E3E42B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2960);
  }

  return result;
}

unint64_t sub_21E3CE474()
{
  result = qword_27CEC2968;
  if (!qword_27CEC2968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2878, &qword_21E3E4120);
    sub_21E3CE500();
    sub_21E3CE728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2968);
  }

  return result;
}

unint64_t sub_21E3CE500()
{
  result = qword_27CEC2970;
  if (!qword_27CEC2970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2868, &unk_21E3E4110);
    sub_21E3CE5B8();
    sub_21E3C4DA0(&qword_27CEC29A8, &qword_27CEC2870, &qword_21E3E5380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2970);
  }

  return result;
}

unint64_t sub_21E3CE5B8()
{
  result = qword_27CEC2978;
  if (!qword_27CEC2978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2860, &qword_21E3E40A8);
    sub_21E3CE644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2978);
  }

  return result;
}

unint64_t sub_21E3CE644()
{
  result = qword_27CEC2980;
  if (!qword_27CEC2980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2858, &qword_21E3E40A0);
    sub_21E3C4DA0(&qword_27CEC2988, &qword_27CEC2990, &qword_21E3E42A0);
    sub_21E3C4DA0(&qword_27CEC2998, &qword_27CEC29A0, &qword_21E3E42A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2980);
  }

  return result;
}

unint64_t sub_21E3CE728()
{
  result = qword_27CEC29B0;
  if (!qword_27CEC29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC29B0);
  }

  return result;
}

unint64_t sub_21E3CE7B8()
{
  result = qword_27CEC29C8;
  if (!qword_27CEC29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC29C8);
  }

  return result;
}

unint64_t sub_21E3CE80C()
{
  result = qword_27CEC29F0;
  if (!qword_27CEC29F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEC29F0);
  }

  return result;
}

uint64_t sub_21E3CE850()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_5();
  v6(v5);
  return v0;
}

uint64_t sub_21E3CE8A8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21E3CE8B4()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_5();
  v6(v5);
  return v0;
}

uint64_t sub_21E3CE90C(double a1, double a2)
{
  v5 = type metadata accessor for TipSnippetContentView.BodyView(0);
  OUTLINED_FUNCTION_7(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_21E3CC888(v7, a1, a2);
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for TipSnippetContentView.BodyView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28C8, "B'");
  OUTLINED_FUNCTION_0_0(v6);
  (*(v7 + 8))(v0 + v3);
  sub_21E3CE8A8(*(v5 + v1[5]), *(v5 + v1[5] + 8), *(v5 + v1[5] + 16));
  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2898, &qword_21E3E4170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21E3E2BA0();
    OUTLINED_FUNCTION_0_0(v9);
    (*(v10 + 8))(v5 + v8);
  }

  else
  {
    v11 = *(v5 + v8);
  }

  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC28A0, &qword_21E3E41D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21E3E2B80();
    OUTLINED_FUNCTION_0_0(v13);
    (*(v14 + 8))(v5 + v12);
  }

  else
  {
    v15 = *(v5 + v12);
  }

  v16 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21E3E2C80();
    OUTLINED_FUNCTION_0_0(v17);
    (*(v18 + 8))(v5 + v16);
  }

  else
  {
    v19 = *(v5 + v16);
  }

  OUTLINED_FUNCTION_8(v1[9]);

  OUTLINED_FUNCTION_8(v1[10]);

  v20 = *(v5 + v1[11] + 16);

  OUTLINED_FUNCTION_8(v1[12]);

  v21 = *(v5 + v1[13]);

  OUTLINED_FUNCTION_8(v1[14]);

  v22 = v1[15];
  v23 = sub_21E3E3060();
  OUTLINED_FUNCTION_0_0(v23);
  (*(v24 + 8))(v5 + v22);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_21E3CEC28()
{
  result = qword_27CEC2A68;
  if (!qword_27CEC2A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2A40, &qword_21E3E44A0);
    sub_21E3E2B30();
    sub_21E3CF510(&qword_27CEC2A60, MEMORY[0x277D719A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2A68);
  }

  return result;
}

uint64_t sub_21E3CED14()
{
  v1 = type metadata accessor for TipSnippetContentView.BodyView(0);
  OUTLINED_FUNCTION_7(v1);
  return sub_21E3CCE88(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

unint64_t sub_21E3CED64()
{
  result = qword_27CEC2A78;
  if (!qword_27CEC2A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2748, &qword_21E3E3E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2A78);
  }

  return result;
}

unint64_t sub_21E3CEDE0()
{
  result = qword_281223078;
  if (!qword_281223078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223078);
  }

  return result;
}

uint64_t sub_21E3CEE34(double *a1, char a2, double a3, double a4)
{
  *a1 = a3;
  a1[1] = a4;
  return a2 & 1;
}

uint64_t sub_21E3CEE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_21E3CEEB4(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

uint64_t sub_21E3CEEB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v41 = a5;
  sub_21E3CF448(a1, a2, a3, v40);
  v6 = v40[1];
  v7 = v40[3];
  v8 = v40[4];
  v35 = v40[5];
  v36 = v40[0];
  v9 = (v40[2] + 64) >> 6;
  sub_21E3E2430();

  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = *(v36 + 56);
      v38[0] = *(*(v36 + 48) + v12);
      v39 = *(v13 + 16 * v12);
      v35(v37, v38);
      v14 = v37[0];
      v16 = v37[1];
      v15 = v37[2];
      v17 = *v41;
      v19 = sub_21E3CDB04(v37[0]);
      v20 = *(v17 + 16);
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        break;
      }

      v23 = v18;
      if (*(v17 + 24) >= v22)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A90, &qword_21E3E44D8);
          sub_21E3E3660();
        }
      }

      else
      {
        v24 = v41;
        sub_21E3CF114(v22, a4 & 1);
        v25 = *v24;
        v26 = sub_21E3CDB04(v14);
        if ((v23 & 1) != (v27 & 1))
        {
          goto LABEL_23;
        }

        v19 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v41;
      if (v23)
      {
        v29 = (v28[7] + 16 * v19);
        *v29 = v16;
        v29[1] = v15;
      }

      else
      {
        v28[(v19 >> 6) + 8] |= 1 << v19;
        *(v28[6] + v19) = v14;
        v30 = (v28[7] + 16 * v19);
        *v30 = v16;
        v30[1] = v15;
        v31 = v28[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_22;
        }

        v28[2] = v33;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        sub_21E3CF484();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_21E3E36B0();
  __break(1u);
  return result;
}

uint64_t sub_21E3CF114(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A98, &qword_21E3E44E0);
  result = sub_21E3E3680();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v8;
    return result;
  }

  v35 = a2;
  v36 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      sub_21E3CF39C(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + v19);
    v21 = (*(v5 + 56) + 16 * v19);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(v8 + 40);
    sub_21E3E3710();
    MEMORY[0x223D58B30](v20);
    result = sub_21E3E3730();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v8 + 48) + v28) = v20;
    v33 = (*(v8 + 56) + 16 * v28);
    *v33 = v23;
    v33[1] = v22;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_21E3CF39C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_21E3E4010;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

__n128 sub_21E3CF400@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_21E3CEE34(v5.n128_f64, *a1, *(a1 + 8), *(a1 + 16));
  result = v5;
  *a2 = v3 & 1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_21E3CF448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

unint64_t sub_21E3CF48C()
{
  result = qword_27CEC2AB8;
  if (!qword_27CEC2AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2AB0, &qword_21E3E44F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2AB8);
  }

  return result;
}

uint64_t sub_21E3CF510(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E3CF558()
{
  OUTLINED_FUNCTION_3_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_5();
  v7(v6);
  return v0;
}

unint64_t sub_21E3CF5B0()
{
  result = qword_27CEC2AE8;
  if (!qword_27CEC2AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2A00, &qword_21E3E4428);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC29D8, &qword_21E3E4410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC29D0, &qword_21E3E4408);
    sub_21E3C4DA0(&qword_27CEC29F8, &qword_27CEC29D0, &qword_21E3E4408);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2AE8);
  }

  return result;
}

unint64_t sub_21E3CF6F0()
{
  result = qword_27CEC2AF0;
  if (!qword_27CEC2AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2AF8, &unk_21E3E4520);
    sub_21E3C4DA0(&qword_27CEC2B00, &qword_27CEC2AA8, &qword_21E3E44F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2AF0);
  }

  return result;
}

uint64_t DeviceExpertUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  v161 = type metadata accessor for TroubleshootingSnippet();
  v1 = OUTLINED_FUNCTION_1(v161);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6_0(v4);
  v160 = sub_21E3E2870();
  v5 = OUTLINED_FUNCTION_0(v160);
  v158 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6_0(v9);
  v156 = type metadata accessor for TipSnippet();
  v10 = OUTLINED_FUNCTION_1(v156);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6_0(v13);
  v155 = sub_21E3E25D0();
  v14 = OUTLINED_FUNCTION_0(v155);
  v153 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6_0(v18);
  v166 = type metadata accessor for SupplementarySnippet();
  v19 = OUTLINED_FUNCTION_1(v166);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_1();
  v164 = v22;
  OUTLINED_FUNCTION_7_0();
  v165 = sub_21E3E2740();
  v23 = OUTLINED_FUNCTION_0(v165);
  v163 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6_0(v27);
  v171 = type metadata accessor for SummarizedAnswerSnippet();
  v28 = OUTLINED_FUNCTION_1(v171);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_1();
  v169 = v31;
  OUTLINED_FUNCTION_7_0();
  v170 = sub_21E3E28F0();
  v32 = OUTLINED_FUNCTION_0(v170);
  v168 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_1();
  v167 = v36;
  OUTLINED_FUNCTION_7_0();
  v176 = type metadata accessor for ListStyleAnswerSnippet();
  v37 = OUTLINED_FUNCTION_1(v176);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_1();
  v174 = v40;
  OUTLINED_FUNCTION_7_0();
  v175 = sub_21E3E2850();
  v41 = OUTLINED_FUNCTION_0(v175);
  v173 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_1();
  v172 = v45;
  OUTLINED_FUNCTION_7_0();
  v180 = type metadata accessor for LearnMoreSnippet();
  v46 = OUTLINED_FUNCTION_1(v180);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_0();
  v51 = (v50 - v49);
  v52 = sub_21E3E26F0();
  v53 = OUTLINED_FUNCTION_0(v52);
  v178 = v54;
  v179 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_1_1();
  v177 = v57;
  OUTLINED_FUNCTION_7_0();
  v58 = type metadata accessor for AttributionItemListSnippet();
  v59 = OUTLINED_FUNCTION_1(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_0();
  v64 = (v63 - v62);
  v65 = sub_21E3E2780();
  v66 = OUTLINED_FUNCTION_0(v65);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_2_0();
  v73 = v72 - v71;
  v74 = sub_21E3E2900();
  v75 = OUTLINED_FUNCTION_0(v74);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_2_0();
  v82 = v81 - v80;
  (*(v77 + 16))(v81 - v80, a1, v74);
  v83 = (*(v77 + 88))(v82, v74);
  if (v83 == *MEMORY[0x277D04830])
  {
    v84 = OUTLINED_FUNCTION_5_0();
    v85(v84);
    (*(v68 + 32))(v73, v82, v65);
    (*(v68 + 16))(v64 + *(v58 + 20), v73, v65);
    sub_21E3E3480();
    OUTLINED_FUNCTION_0_1();
    sub_21E3D0658(v86, v87);
    *v64 = OUTLINED_FUNCTION_10();
    v64[1] = v88;
    sub_21E3D0658(&qword_27CEC2B30, type metadata accessor for AttributionItemListSnippet);
    v89 = sub_21E3E30E0();
    sub_21E3D05B8(v64, type metadata accessor for AttributionItemListSnippet);
    (*(v68 + 8))(v73, v65);
    return v89;
  }

  if (v83 == *MEMORY[0x277D04858])
  {
    v90 = OUTLINED_FUNCTION_5_0();
    v91(v90);
    v93 = v177;
    v92 = v178;
    v94 = v179;
    (*(v178 + 32))(v177, v82, v179);
    (*(v178 + 16))(v51 + *(v180 + 20), v177, v179);
    sub_21E3E3480();
    OUTLINED_FUNCTION_0_1();
    sub_21E3D0658(v95, v96);
    *v51 = OUTLINED_FUNCTION_10();
    v51[1] = v97;
    sub_21E3D0658(&qword_27CEC2B28, type metadata accessor for LearnMoreSnippet);
    OUTLINED_FUNCTION_9_0();
    v89 = sub_21E3E30E0();
    v98 = type metadata accessor for LearnMoreSnippet;
    v99 = v51;
LABEL_5:
    sub_21E3D05B8(v99, v98);
    (*(v92 + 8))(v93, v94);
    return v89;
  }

  if (v83 == *MEMORY[0x277D04838])
  {
    v100 = OUTLINED_FUNCTION_5_0();
    v101(v100);
    v103 = v172;
    v102 = v173;
    OUTLINED_FUNCTION_13();
    v104 = OUTLINED_FUNCTION_12();
    v105 = v175;
    v106(v104);
    v107 = *(v176 + 24);
    OUTLINED_FUNCTION_11();
    v108 = v174;
    v110 = OUTLINED_FUNCTION_8_0(v109);
    v111(v110);
    sub_21E3E3480();
    OUTLINED_FUNCTION_0_1();
    sub_21E3D0658(v112, v113);
    *v174 = OUTLINED_FUNCTION_10();
    *(v174 + 8) = v114;
    *(v174 + 16) = swift_getKeyPath();
    *(v174 + 24) = 0;
    sub_21E3D0658(qword_281223390, type metadata accessor for ListStyleAnswerSnippet);
    OUTLINED_FUNCTION_9_0();
    v89 = sub_21E3E30E0();
    v115 = type metadata accessor for ListStyleAnswerSnippet;
LABEL_14:
    sub_21E3D05B8(v108, v115);
    (*(v102 + 8))(v103, v105);
    return v89;
  }

  if (v83 == *MEMORY[0x277D04848])
  {
    v116 = OUTLINED_FUNCTION_5_0();
    v117(v116);
    v103 = v167;
    v102 = v168;
    OUTLINED_FUNCTION_13();
    v118 = OUTLINED_FUNCTION_12();
    v105 = v170;
    v119(v118);
    v120 = *(v171 + 24);
    OUTLINED_FUNCTION_11();
    v108 = v169;
    v122 = OUTLINED_FUNCTION_8_0(v121);
    v123(v122);
    sub_21E3E3480();
    OUTLINED_FUNCTION_0_1();
    sub_21E3D0658(v124, v125);
    *v169 = OUTLINED_FUNCTION_10();
    *(v169 + 8) = v126;
    *(v169 + 16) = swift_getKeyPath();
    *(v169 + 24) = 0;
    sub_21E3D0658(&qword_27CEC2B20, type metadata accessor for SummarizedAnswerSnippet);
    OUTLINED_FUNCTION_9_0();
    v89 = sub_21E3E30E0();
    v115 = type metadata accessor for SummarizedAnswerSnippet;
    goto LABEL_14;
  }

  if (v83 == *MEMORY[0x277D04828])
  {
    v127 = OUTLINED_FUNCTION_5_0();
    v128(v127);
    v102 = v163;
    OUTLINED_FUNCTION_13();
    v103 = v162;
    v129 = OUTLINED_FUNCTION_12();
    v105 = v165;
    v130(v129);
    v131 = *(v166 + 20);
    OUTLINED_FUNCTION_11();
    v108 = v164;
    v133 = OUTLINED_FUNCTION_8_0(v132);
    v134(v133);
    sub_21E3E3480();
    OUTLINED_FUNCTION_0_1();
    sub_21E3D0658(v135, v136);
    *v164 = OUTLINED_FUNCTION_10();
    v164[1] = v137;
    sub_21E3D0658(&qword_27CEC2B18, type metadata accessor for SupplementarySnippet);
    OUTLINED_FUNCTION_9_0();
    v89 = sub_21E3E30E0();
    v115 = type metadata accessor for SupplementarySnippet;
    goto LABEL_14;
  }

  if (v83 == *MEMORY[0x277D04850])
  {
    v138 = OUTLINED_FUNCTION_5_0();
    v139(v138);
    v102 = v153;
    OUTLINED_FUNCTION_13();
    v103 = v152;
    v140 = OUTLINED_FUNCTION_12();
    v105 = v155;
    v141(v140);
    v142 = *(v156 + 20);
    OUTLINED_FUNCTION_11();
    v108 = v154;
    v144 = OUTLINED_FUNCTION_8_0(v143);
    v145(v144);
    sub_21E3E3480();
    OUTLINED_FUNCTION_0_1();
    sub_21E3D0658(v146, v147);
    *v154 = OUTLINED_FUNCTION_10();
    v154[1] = v148;
    sub_21E3D0658(&qword_27CEC2B10, type metadata accessor for TipSnippet);
    OUTLINED_FUNCTION_9_0();
    v89 = sub_21E3E30E0();
    v115 = type metadata accessor for TipSnippet;
    goto LABEL_14;
  }

  if (v83 == *MEMORY[0x277D04840])
  {
    v150 = OUTLINED_FUNCTION_5_0();
    v151(v150);
    v92 = v158;
    v93 = v157;
    v94 = v160;
    (*(v158 + 32))(v157, v82, v160);
    (*(v158 + 16))(v159, v157, v160);
    sub_21E3D0658(&qword_27CEC2B08, type metadata accessor for TroubleshootingSnippet);
    v89 = sub_21E3E30E0();
    v98 = type metadata accessor for TroubleshootingSnippet;
    v99 = v159;
    goto LABEL_5;
  }

  sub_21E3E3630();
  MEMORY[0x223D58910](0xD00000000000001BLL, 0x800000021E3E9500);
  sub_21E3E3650();
  result = sub_21E3E3670();
  __break(1u);
  return result;
}

uint64_t sub_21E3D0578@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceExpertUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t sub_21E3D05B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_21E3D0658(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_9_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10()
{

  return sub_21E3E2CC0();
}

id sub_21E3D079C(void *a1)
{
  v3 = *(*(sub_21E3E2700() - 8) + 64);
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_2_0();
  v43 = v5 - v4;
  v6 = sub_21E3E2480();
  v7 = OUTLINED_FUNCTION_0(v6);
  v40 = v8;
  v41 = v7;
  v10 = *(v9 + 64);
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = sub_21E3E24B0();
  v15 = OUTLINED_FUNCTION_0(v14);
  v42 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = sub_21E3E2210();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v30 = v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = v39 - v31;
  result = [a1 punchOutUri];
  if (result)
  {
    v34 = result;
    sub_21E3E21F0();

    (*(v25 + 32))(v32, v30, v22);
    v35 = sub_21E3E2470();
    v39[0] = v36;
    v39[1] = v35;
    sub_21E3E2450();
    v39[2] = v1;
    (*(v25 + 16))(v13, v32, v22);
    (*(v40 + 104))(v13, *MEMORY[0x277D047B8], v41);
    sub_21E3E2440();
    sub_21E3E2460();
    sub_21E3E2490();
    v44[3] = v14;
    v44[4] = MEMORY[0x277D047C8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
    v38 = v42;
    (*(v42 + 16))(boxed_opaque_existential_1, v21, v14);
    sub_21E3E25E0();
    (*(v38 + 8))(v21, v14);
    (*(v25 + 8))(v32, v22);
    return __swift_destroy_boxed_opaque_existential_0(v44);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_21E3D0B2C()
{
  v0 = sub_21E3E2700();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_2_0();
  v2 = sub_21E3E2480();
  v3 = OUTLINED_FUNCTION_0(v2);
  v24 = v4;
  v25 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = sub_21E3E24B0();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  sub_21E3E2470();
  sub_21E3E2450();
  MEMORY[0x223D57D60]();
  MEMORY[0x223D57D50]();
  v19 = MEMORY[0x223D57D40]();
  if (v19)
  {
    if (v19[2])
    {
      v20 = v19[4];
      v21 = v19[5];
      sub_21E3E2430();
    }
  }

  sub_21E3E24A0();
  (*(v24 + 104))(v9, *MEMORY[0x277D047C0], v25);
  sub_21E3E2440();
  sub_21E3E2460();
  sub_21E3E2490();
  v26[3] = v10;
  v26[4] = MEMORY[0x277D047C8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(v13 + 16))(boxed_opaque_existential_1, v18, v10);
  sub_21E3E25E0();
  (*(v13 + 8))(v18, v10);
  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t type metadata accessor for LearnMoreSnippet()
{
  result = qword_2812234B0;
  if (!qword_2812234B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3D0E28()
{
  sub_21E3C45D4();
  if (v0 <= 0x3F)
  {
    sub_21E3E26F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21E3D0EC8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_21E3E2750();
  v2 = OUTLINED_FUNCTION_0(v32);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LearnMoreSnippet();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B38, &qword_21E3E4638);
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v31 - v19;
  sub_21E3D146C(v1, &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  sub_21E3D14D0(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B40, &unk_21E3E4640);
  v23 = sub_21E3E33C0();
  v24 = sub_21E3D15A4(&qword_281223090, MEMORY[0x277D63C80]);
  v34 = v23;
  v35 = v24;
  swift_getOpaqueTypeConformance2();
  sub_21E3E3390();
  v25 = *(v10 + 28);
  v26 = v32;
  (*(v4 + 104))(v8, *MEMORY[0x277D047E8], v32);
  sub_21E3E26F0();
  v27 = sub_21E3E2670();
  v29 = v28;
  (*(v4 + 8))(v8, v26);
  v34 = v27;
  v35 = v29;
  sub_21E3D15EC();
  sub_21E3E3160();

  return (*(v16 + 8))(v20, v13);
}

uint64_t sub_21E3D1204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_21E3E22B0();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E3E33C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for LearnMoreSnippet() + 20);
  v13 = sub_21E3E26E0();
  v14 = sub_21E3D5698(v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v28 = MEMORY[0x277CE0BD8];
  v29 = MEMORY[0x277D638E8];
  v21 = swift_allocObject();
  v27 = v21;
  *(v21 + 16) = v14;
  *(v21 + 24) = v16;
  *(v21 + 32) = v18 & 1;
  *(v21 + 40) = v20;
  sub_21E3E33B0();
  v22 = v25;
  (*(v3 + 104))(v6, *MEMORY[0x277D62F20], v25);
  sub_21E3D15A4(&qword_281223090, MEMORY[0x277D63C80]);
  sub_21E3E3120();
  (*(v3 + 8))(v6, v22);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_21E3D146C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D14D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D1534@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LearnMoreSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21E3D1204(v4, a1);
}

uint64_t sub_21E3D15A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21E3D15EC()
{
  result = qword_27CEC2B48;
  if (!qword_27CEC2B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B38, &qword_21E3E4638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2B48);
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

uint64_t sub_21E3D165C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E3D169C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21E3D1708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21E3DAD5C(a3);
  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21E3D23D8;
  *(v9 + 24) = v8;
  v10 = a1;
  sub_21E3E2430();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B50, &qword_21E3E4708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B58, &qword_21E3E4710);
  sub_21E3C4DA0(&qword_27CEC2B60, &qword_27CEC2B50, &qword_21E3E4708);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B68, &qword_21E3E4718);
  sub_21E3E3380();
  sub_21E3C4DA0(&qword_27CEC2B70, &qword_27CEC2B68, &qword_21E3E4718);
  sub_21E3D2488(&qword_27CEC2B78, MEMORY[0x277D63B78]);
  swift_getOpaqueTypeConformance2();
  return sub_21E3E32E0();
}

uint64_t sub_21E3D1934@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v34 = a4;
  v35 = a5;
  v31 = a2;
  v32 = a3;
  v38 = a6;
  v7 = sub_21E3E3380();
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E3E29A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B68, &qword_21E3E4718);
  v16 = *(v33 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v33);
  v19 = &v31 - v18;
  (*(v13 + 16))(v15, a1, v12);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v13 + 32))(v22 + v20, v15, v12);
  v23 = (v22 + v21);
  v24 = v31;
  v25 = v32;
  *v23 = v31;
  v23[1] = v25;
  v26 = v35;
  v23[2] = v34;
  v23[3] = v26;
  v39 = a1;
  v27 = v24;
  sub_21E3E2430();

  sub_21E3E32D0();
  sub_21E3E2EA0();
  sub_21E3C4DA0(&qword_27CEC2B70, &qword_27CEC2B68, &qword_21E3E4718);
  sub_21E3D2488(&qword_27CEC2B78, MEMORY[0x277D63B78]);
  v28 = v33;
  v29 = v36;
  sub_21E3E31B0();
  (*(v37 + 8))(v11, v29);
  return (*(v16 + 8))(v19, v28);
}

uint64_t sub_21E3D1CA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v60 = a2;
  v51 = a3;
  v5 = sub_21E3E2B00();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_21E3E2960();
  v54 = *(v56 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v51 - v12;
  v14 = sub_21E3E2210();
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21E3E2920();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21E3E2970();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E3E2990();
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 == *MEMORY[0x277D04868])
  {
    (*(v24 + 96))(v27, v23);
    v29 = (*(v19 + 32))(v22, v27, v18);
    MEMORY[0x223D57D20](v29);
    sub_21E3E2200();

    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      (*(v19 + 8))(v22, v18);
      return sub_21E3D24D0(v13);
    }

    v40 = v53;
    (*(v53 + 32))(v17, v13, v14);
    v41 = type metadata accessor for ActionHandler();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    v44 = swift_allocObject();
    v45 = v59;

    sub_21E3E2AE0();
    *(v44 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext) = v45;
    if (v60)
    {
      v46 = v60;
      sub_21E3DC6A4();

      swift_setDeallocating();
      sub_21E3DD768();
      (*(v40 + 8))(v17, v14);
      return (*(v19 + 8))(v22, v18);
    }

    goto LABEL_13;
  }

  if (v28 == *MEMORY[0x277D04870])
  {
    (*(v24 + 96))(v27, v23);
    v31 = v54;
    v32 = v52;
    v33 = v56;
    (*(v54 + 32))(v52, v27, v56);
    v34 = type metadata accessor for ActionHandler();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v37 = swift_allocObject();
    v38 = v59;

    sub_21E3E2AE0();
    *(v37 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext) = v38;
    if (v60)
    {
      v39 = v60;
      sub_21E3DCD20();

      return (*(v31 + 8))(v32, v33);
    }

LABEL_13:
    sub_21E3E3480();
    sub_21E3D2488(&qword_281223080, MEMORY[0x277D63F60]);
    result = sub_21E3E2CB0();
    __break(1u);
    return result;
  }

  v47 = v55;
  sub_21E3E2AE0();
  v48 = sub_21E3E2AF0();
  v49 = sub_21E3E35C0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_21E3BF000, v48, v49, "Unknown action button type selected.", v50, 2u);
    MEMORY[0x223D58FC0](v50, -1, -1);
  }

  (*(v57 + 8))(v47, v58);
  return (*(v24 + 8))(v27, v23);
}

uint64_t sub_21E3D2304@<X0>(uint64_t a1@<X8>)
{
  MEMORY[0x223D57D90]();
  sub_21E3CEDE0();
  result = sub_21E3E30C0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21E3D2360(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B80, &unk_21E3E4720);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_21E3D23EC()
{
  v1 = *(sub_21E3E29A0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);

  return sub_21E3D1CA0(v0 + v2, v4, v5, v6, v7);
}

uint64_t sub_21E3D2488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E3D24D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E3D2538()
{
  result = qword_27CEC2B88;
  if (!qword_27CEC2B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B90, &unk_21E3E4730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B68, &qword_21E3E4718);
    sub_21E3E3380();
    sub_21E3C4DA0(&qword_27CEC2B70, &qword_27CEC2B68, &qword_21E3E4718);
    sub_21E3D2488(&qword_27CEC2B78, MEMORY[0x277D63B78]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2B88);
  }

  return result;
}

uint64_t type metadata accessor for TroubleshootingSnippet()
{
  result = qword_2812232C0;
  if (!qword_2812232C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E3D26F0()
{
  result = sub_21E3E2870();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21E3D2778@<X0>(uint64_t a1@<X8>)
{
  v27[1] = a1;
  v27[0] = sub_21E3E2750();
  v2 = OUTLINED_FUNCTION_0(v27[0]);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TroubleshootingSnippet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B98, &qword_21E3E47A8);
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = v27 - v18;
  sub_21E3D2AE0(v1, v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_21E3D2B44(v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_21E3E33C0();
  sub_21E3D2C18();
  sub_21E3E3390();
  v22 = v27[0];
  (*(v4 + 104))(v8, *MEMORY[0x277D047E8], v27[0]);
  sub_21E3E2870();
  v23 = sub_21E3E2670();
  v25 = v24;
  (*(v4 + 8))(v8, v22);
  v27[2] = v23;
  v27[3] = v25;
  sub_21E3D2C70();
  sub_21E3E3160();

  return (*(v15 + 8))(v19, v12);
}

uint64_t sub_21E3D2A34()
{
  v0 = sub_21E3E2860();
  v1 = sub_21E3D5698(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v3;
  *(v9 + 32) = v5 & 1;
  *(v9 + 40) = v7;
  return sub_21E3E33B0();
}

uint64_t sub_21E3D2AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TroubleshootingSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D2B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TroubleshootingSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D2BA8()
{
  v0 = *(*(type metadata accessor for TroubleshootingSnippet() - 8) + 80);

  return sub_21E3D2A34();
}

unint64_t sub_21E3D2C18()
{
  result = qword_281223090;
  if (!qword_281223090)
  {
    sub_21E3E33C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223090);
  }

  return result;
}

unint64_t sub_21E3D2C70()
{
  result = qword_27CEC2BA0;
  if (!qword_27CEC2BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2B98, &qword_21E3E47A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2BA0);
  }

  return result;
}

id sub_21E3D2CE4()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CEC2BA8 = result;
  return result;
}

id static NSBundle.current.getter()
{
  if (qword_27CEC2638 != -1)
  {
    swift_once();
  }

  v1 = qword_27CEC2BA8;

  return v1;
}

uint64_t type metadata accessor for SummarizedAnswerSnippet()
{
  result = qword_281223258;
  if (!qword_281223258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3D2E30()
{
  sub_21E3C45D4();
  if (v0 <= 0x3F)
  {
    sub_21E3C4EF8();
    if (v1 <= 0x3F)
    {
      sub_21E3E28F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21E3D2EE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_21E3E2750();
  v4 = OUTLINED_FUNCTION_0(v3);
  v49 = v5;
  v50 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26B8, &qword_21E3E3DF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for SummarizedAnswerSnippet();
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BB0, &qword_21E3E4830);
  v17 = OUTLINED_FUNCTION_0(v46);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v46 - v22;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BB8, &qword_21E3E4838);
  v24 = OUTLINED_FUNCTION_1(v47);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v46 - v27;
  sub_21E3D5284(v2, &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v30 = swift_allocObject();
  sub_21E3D52E8(&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BC0, &qword_21E3E4840);
  sub_21E3C4DA0(&qword_27CEC2BC8, &qword_27CEC2BC0, &qword_21E3E4840);
  sub_21E3E3390();
  v31 = *(v14 + 32);
  sub_21E3E2880();
  v32 = sub_21E3E2660();
  if (__swift_getEnumTagSinglePayload(v12, 1, v32) == 1)
  {
    sub_21E3C413C(v12, &qword_27CEC26B8, &qword_21E3E3DF8);
    v33 = 0;
  }

  else
  {
    v33 = sub_21E3DBB5C();
    (*(*(v32 - 8) + 8))(v12, v32);
  }

  v34 = sub_21E3E28D0();
  sub_21E3E3480();
  sub_21E3D55E0(&qword_281223080, MEMORY[0x277D63F60]);
  v35 = sub_21E3E2CC0();
  v37 = v36;
  (*(v19 + 32))(v28, v23, v46);
  v38 = v48;
  v39 = &v28[*(v47 + 36)];
  *v39 = v35;
  v39[1] = v37;
  v39[2] = v33;
  v39[3] = v34;
  v41 = v49;
  v40 = v50;
  (*(v49 + 104))(v38, *MEMORY[0x277D047E8], v50);
  sub_21E3E28F0();
  v42 = sub_21E3E2670();
  v44 = v43;
  (*(v41 + 8))(v38, v40);
  v52 = v42;
  v53 = v44;
  sub_21E3D53BC();
  sub_21E3E3160();

  return sub_21E3C413C(v28, &qword_27CEC2BB8, &qword_21E3E4838);
}

uint64_t sub_21E3D33A8@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v200 = a2;
  v190 = sub_21E3E2E60();
  v189 = *(v190 - 8);
  v3 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v188 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_21E3E2EE0();
  v186 = *(v187 - 8);
  v5 = *(v186 + 64);
  MEMORY[0x28223BE20](v187);
  v185 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SummarizedAnswerSnippet();
  v8 = v7 - 8;
  v171 = *(v7 - 8);
  v9 = *(v171 + 64);
  MEMORY[0x28223BE20](v7);
  v172 = v10;
  v173 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for AttributionView();
  v11 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v176 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BE0, &qword_21E3E4848);
  v180 = *(v182 - 8);
  v13 = *(v180 + 64);
  MEMORY[0x28223BE20](v182);
  v177 = &v162 - v14;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BE8, &qword_21E3E4850);
  v183 = *(v184 - 8);
  v15 = *(v183 + 64);
  MEMORY[0x28223BE20](v184);
  v181 = &v162 - v16;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BF0, &qword_21E3E4858);
  v17 = *(*(v198 - 8) + 64);
  MEMORY[0x28223BE20](v198);
  v179 = &v162 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26B8, &qword_21E3E3DF8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v194 = &v162 - v21;
  v196 = sub_21E3E2660();
  v175 = *(v196 - 8);
  v22 = *(v175 + 64);
  MEMORY[0x28223BE20](v196);
  v174 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2BF8, &unk_21E3E4860);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v199 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v162 - v28;
  v168 = sub_21E3E3400();
  v166 = *(v168 - 8);
  v30 = *(v166 + 64);
  MEMORY[0x28223BE20](v168);
  v164 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2700, &unk_21E3E3E40);
  v169 = *(v170 - 8);
  v32 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v167 = &v162 - v33;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2708, &qword_21E3E4870);
  v165 = *(v193 - 8);
  v34 = *(v165 + 64);
  MEMORY[0x28223BE20](v193);
  v163 = &v162 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2710, &qword_21E3E3E50);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v195 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v215 = &v162 - v40;
  v211 = sub_21E3E22B0();
  v210 = *(v211 - 8);
  v41 = *(v210 + 64);
  MEMORY[0x28223BE20](v211);
  v43 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_21E3E33C0();
  v201 = *(v202 - 8);
  v44 = *(v201 + 64);
  MEMORY[0x28223BE20](v202);
  v46 = &v162 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2720, &qword_21E3E3E60);
  v203 = *(v204 - 8);
  v47 = *(v203 + 64);
  MEMORY[0x28223BE20](v204);
  v49 = &v162 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2728, &qword_21E3E3E68);
  v205 = *(v50 - 8);
  v51 = *(v205 + 64);
  v52 = MEMORY[0x28223BE20](v50);
  v214 = &v162 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v55 = &v162 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2730, &qword_21E3E3E70);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v208 = &v162 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v61 = &v162 - v60;
  v62 = *(v8 + 32);
  v63 = sub_21E3E28E0();
  v209 = a1;
  v207 = v62;
  v197 = v29;
  v206 = v50;
  v213 = v55;
  v212 = v61;
  if (v63)
  {
    v64 = sub_21E3E28C0();
    v65 = sub_21E3D5698(v64);
    v67 = v66;
    v69 = v68;
    v71 = v70;

    v227 = MEMORY[0x277CE0BD8];
    v228 = MEMORY[0x277D638E8];
    v72 = swift_allocObject();
    v225 = v72;
    *(v72 + 16) = v65;
    *(v72 + 24) = v67;
    *(v72 + 32) = v69 & 1;
    *(v72 + 40) = v71;
    sub_21E3E33B0();
    v73 = sub_21E3D55E0(&qword_281223090, MEMORY[0x277D63C80]);
    v74 = v202;
    sub_21E3E3140();
    (*(v201 + 8))(v46, v74);
    v75 = *MEMORY[0x277D62F38];
    v76 = v210;
    v77 = v211;
    (*(v210 + 104))(v43, v75, v211);
    v225 = v74;
    v226 = v73;
    swift_getOpaqueTypeConformance2();
    v78 = v213;
    v79 = v204;
    sub_21E3E3120();
    (*(v76 + 8))(v43, v77);
    (*(v203 + 8))(v49, v79);
    v80 = v212;
    v81 = v78;
    v82 = v75;
    v83 = v206;
    (*(v205 + 32))(v212, v81, v206);
    __swift_storeEnumTagSinglePayload(v80, 0, 1, v83);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v50);
    v82 = *MEMORY[0x277D62F38];
  }

  v84 = sub_21E3E28B0();
  v85 = sub_21E3D5698(v84);
  v87 = v86;
  v89 = v88;
  v91 = v90;

  v227 = MEMORY[0x277CE0BD8];
  v228 = MEMORY[0x277D638E8];
  v92 = swift_allocObject();
  v225 = v92;
  *(v92 + 16) = v85;
  *(v92 + 24) = v87;
  *(v92 + 32) = v89 & 1;
  *(v92 + 40) = v91;
  v93 = v209;
  sub_21E3E33B0();
  v94 = sub_21E3D55E0(&qword_281223090, MEMORY[0x277D63C80]);
  v95 = v202;
  sub_21E3E3140();
  (*(v201 + 8))(v46, v95);
  v96 = v210;
  v97 = *(v210 + 104);
  LODWORD(v201) = v82;
  v98 = v82;
  v99 = v211;
  v192 = v97;
  v191 = v210 + 104;
  v97(v43, v98, v211);
  v225 = v95;
  v226 = v94;
  v100 = 1;
  swift_getOpaqueTypeConformance2();
  v101 = v204;
  sub_21E3E3120();
  v104 = *(v96 + 8);
  v102 = v96 + 8;
  v103 = v104;
  v104(v43, v99);
  (*(v203 + 8))(v49, v101);
  v105 = sub_21E3E28A0();
  v106 = v43;
  v107 = v193;
  if (v105)
  {
    v108 = sub_21E3E2890();
    v109 = sub_21E3D5698(v108);
    v111 = v110;
    v113 = v112;
    v115 = v114;

    v227 = MEMORY[0x277CE0BD8];
    v228 = MEMORY[0x277D638E8];
    v116 = swift_allocObject();
    v225 = v116;
    *(v116 + 16) = v109;
    *(v116 + 24) = v111;
    v93 = v209;
    *(v116 + 32) = v113 & 1;
    *(v116 + 40) = v115;
    v224 = 0;
    v222 = 0u;
    v223 = 0u;
    v221 = 0;
    v219 = 0u;
    v220 = 0u;
    v218 = 0;
    v217 = 0u;
    v216 = 0u;
    v117 = v164;
    sub_21E3E33F0();
    v118 = sub_21E3D55E0(&qword_281223088, MEMORY[0x277D63DD0]);
    v119 = v167;
    v120 = v168;
    sub_21E3E3140();
    (*(v166 + 8))(v117, v120);
    v121 = v102;
    v122 = v211;
    v192(v106, v201, v211);
    v225 = v120;
    v226 = v118;
    swift_getOpaqueTypeConformance2();
    v123 = v163;
    v124 = v170;
    sub_21E3E3120();
    v125 = v122;
    v102 = v121;
    v103(v106, v125);
    (*(v169 + 8))(v119, v124);
    (*(v165 + 32))(v215, v123, v107);
    v100 = 0;
  }

  __swift_storeEnumTagSinglePayload(v215, v100, 1, v107);
  v126 = v194;
  sub_21E3E2880();
  v127 = v196;
  if (__swift_getEnumTagSinglePayload(v126, 1, v196) == 1)
  {
    sub_21E3C413C(v126, &qword_27CEC26B8, &qword_21E3E3DF8);
    v128 = 1;
    v129 = v197;
  }

  else
  {
    v209 = v103;
    v130 = v175;
    v131 = v174;
    (*(v175 + 32))(v174, v126, v127);
    v210 = v102;
    v132 = v176;
    sub_21E3E2650();
    v133 = v93;
    v134 = v173;
    sub_21E3D5284(v133, v173);
    v135 = (*(v171 + 80) + 16) & ~*(v171 + 80);
    v136 = swift_allocObject();
    sub_21E3D52E8(v134, v136 + v135);
    v137 = v178;
    v138 = (v132 + *(v178 + 20));
    *v138 = 0u;
    v138[1] = 0u;
    v139 = (v132 + *(v137 + 24));
    *v139 = sub_21E3D5560;
    v139[1] = v136;
    v140 = v211;
    v192(v106, v201, v211);
    v141 = sub_21E3D55E0(qword_281223558, type metadata accessor for AttributionView);
    v142 = v177;
    sub_21E3E3120();
    v209(v106, v140);
    sub_21E3C7EC8(v132);
    v143 = v185;
    sub_21E3E2ED0();
    v225 = v137;
    v226 = v141;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v145 = v181;
    v146 = v182;
    sub_21E3E3200();
    (*(v186 + 8))(v143, v187);
    (*(v180 + 8))(v142, v146);
    v147 = v188;
    sub_21E3E2E50();
    v225 = v146;
    v226 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v148 = v179;
    v149 = v184;
    sub_21E3E3210();
    (*(v189 + 8))(v147, v190);
    (*(v183 + 8))(v145, v149);
    (*(v130 + 8))(v131, v127);
    v129 = v197;
    sub_21E3C25D0(v148, v197);
    v128 = 0;
  }

  v150 = v205;
  __swift_storeEnumTagSinglePayload(v129, v128, 1, v198);
  v151 = v208;
  sub_21E3C7CFC(v212, v208, &qword_27CEC2730, &qword_21E3E3E70);
  v152 = *(v150 + 16);
  v153 = v213;
  v154 = v206;
  v152(v213, v214, v206);
  v155 = v195;
  sub_21E3C7CFC(v215, v195, &qword_27CEC2710, &qword_21E3E3E50);
  v156 = v199;
  sub_21E3C7CFC(v129, v199, &qword_27CEC2BF8, &unk_21E3E4860);
  v157 = v200;
  sub_21E3C7CFC(v151, v200, &qword_27CEC2730, &qword_21E3E3E70);
  v158 = v129;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C00, &qword_21E3E4878);
  v152((v157 + v159[12]), v153, v154);
  sub_21E3C7CFC(v155, v157 + v159[16], &qword_27CEC2710, &qword_21E3E3E50);
  sub_21E3C7CFC(v156, v157 + v159[20], &qword_27CEC2BF8, &unk_21E3E4860);
  sub_21E3C413C(v158, &qword_27CEC2BF8, &unk_21E3E4860);
  sub_21E3C413C(v215, &qword_27CEC2710, &qword_21E3E3E50);
  v160 = *(v150 + 8);
  v160(v214, v154);
  sub_21E3C413C(v212, &qword_27CEC2730, &qword_21E3E3E70);
  sub_21E3C413C(v156, &qword_27CEC2BF8, &unk_21E3E4860);
  sub_21E3C413C(v155, &qword_27CEC2710, &qword_21E3E3E50);
  v160(v213, v154);
  return sub_21E3C413C(v208, &qword_27CEC2730, &qword_21E3E3E70);
}

uint64_t sub_21E3D49C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a2;
  v84 = a1;
  v4 = sub_21E3E2B00();
  v83 = *(v4 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2740, &unk_21E3E3E80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v69 - v10;
  v12 = sub_21E3E33A0();
  v80 = *(v12 - 8);
  v81 = v12;
  v13 = *(v80 + 64);
  MEMORY[0x28223BE20](v12);
  v82 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21E3E22C0();
  v77 = *(v15 - 8);
  v78 = v15;
  v16 = *(v77 + 64);
  MEMORY[0x28223BE20](v15);
  v79 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC26B8, &qword_21E3E3DF8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2660, &qword_21E3E3CD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v69 - v24;
  v26 = sub_21E3E2520();
  v85 = *(v26 - 8);
  v27 = *(v85 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v76 = &v69 - v31;
  v75 = *(type metadata accessor for SummarizedAnswerSnippet() + 24);
  sub_21E3E2880();
  v32 = sub_21E3E2660();
  if (__swift_getEnumTagSinglePayload(v21, 1, v32) != 1)
  {
    v70 = v11;
    v71 = v25;
    v72 = a3;
    v73 = v7;
    v74 = v4;
    v35 = sub_21E3E2640();
    (*(*(v32 - 8) + 8))(v21, v32);
    v36 = *(v35 + 16);
    v37 = v85;
    if (v36)
    {
      v38 = 0;
      v39 = v35 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v40 = v85 + 8;
      while (1)
      {
        v33 = v86;
        if (v38 >= *(v35 + 16))
        {
          break;
        }

        (*(v37 + 16))(v30, v39 + *(v37 + 72) * v38, v26);
        v41 = sub_21E3E24C0();
        v42 = sub_21E3D5628(v41);
        if (v33)
        {
          if (v43)
          {
            v33 = v86;
            if (v42 == v84 && v43 == v86)
            {

              goto LABEL_19;
            }

            v45 = sub_21E3E3690();

            if (v45)
            {
              v33 = v86;
LABEL_19:

              v37 = v85;
              v25 = v71;
              (*(v85 + 32))(v71, v30, v26);
              v46 = 0;
              v7 = v73;
              v4 = v74;
              v34 = v83;
              v40 = v72;
              goto LABEL_20;
            }
          }
        }

        else
        {
          if (!v43)
          {
            goto LABEL_19;
          }
        }

        ++v38;
        (*v40)(v30, v26);
        v37 = v85;
        if (v36 == v38)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:

      v46 = 1;
      v7 = v73;
      v4 = v74;
      v34 = v83;
      v25 = v71;
      v40 = v72;
      v33 = v86;
LABEL_20:
      __swift_storeEnumTagSinglePayload(v25, v46, 1, v26);
      if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
      {
        goto LABEL_21;
      }

      v56 = v76;
      (*(v37 + 32))(v76, v25, v26);
      sub_21E3E2600();
      v57 = v37;
      sub_21E3E25F0();
      v58 = sub_21E3E24C0();
      sub_21E3E28D0();
      sub_21E3D079C(v58);

      v59 = sub_21E3E24C0();
      v60 = v78;
      v61 = v79;
      *v79 = v59;
      *(v61 + 8) = 1;
      (*(v77 + 104))(v61, *MEMORY[0x277D63720], v60);
      (*(v80 + 104))(v82, *MEMORY[0x277D63BF8], v81);
      v62 = v70;
      sub_21E3E3360();
      v63 = sub_21E3E3370();
      __swift_storeEnumTagSinglePayload(v62, 0, 1, v63);
      v64 = objc_allocWithZone(sub_21E3E3420());
      v65 = sub_21E3E3410();
      if (*v40)
      {
        v66 = v65;
        v67 = *v40;
        sub_21E3E3460();

        return (*(v57 + 8))(v56, v26);
      }
    }

    v68 = *(v40 + 8);
    sub_21E3E3480();
    sub_21E3D55E0(&qword_281223080, MEMORY[0x277D63F60]);
    result = sub_21E3E2CB0();
    __break(1u);
    return result;
  }

  sub_21E3C413C(v21, &qword_27CEC26B8, &qword_21E3E3DF8);
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
  v33 = v86;
  v34 = v83;
LABEL_21:
  sub_21E3C413C(v25, &qword_27CEC2660, &qword_21E3E3CD0);
  sub_21E3E2AE0();
  sub_21E3E2430();
  v47 = sub_21E3E2AF0();
  v48 = sub_21E3E35C0();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = v33;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v88 = v49;
    v89 = v51;
    *v50 = 136315138;
    v87 = v84;
    sub_21E3E2430();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2748, &qword_21E3E3E90);
    v52 = sub_21E3E34E0();
    v54 = sub_21E3C9300(v52, v53, &v89);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_21E3BF000, v47, v48, "No attribution item found for %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x223D58FC0](v51, -1, -1);
    MEMORY[0x223D58FC0](v50, -1, -1);
  }

  return (*(v34 + 8))(v7, v4);
}

uint64_t sub_21E3D5284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizedAnswerSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D52E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizedAnswerSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D534C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummarizedAnswerSnippet() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_21E3D33A8(v4, a1);
}

unint64_t sub_21E3D53BC()
{
  result = qword_27CEC2BD0;
  if (!qword_27CEC2BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2BB8, &qword_21E3E4838);
    sub_21E3C4DA0(&qword_27CEC2BD8, &qword_27CEC2BB0, &qword_21E3E4830);
    sub_21E3C7CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2BD0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for SummarizedAnswerSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_21E3C7B10(*(v0 + v3 + 16), *(v0 + v3 + 24));
  v5 = v1[8];
  v6 = sub_21E3E28F0();
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3D5560(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SummarizedAnswerSnippet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E3D49C4(a1, a2, v6);
}

uint64_t sub_21E3D55E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E3D5628(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21E3E34D0();

  return v3;
}

void (*sub_21E3D5698(uint64_t a1))(void, void)
{
  v133 = sub_21E3E2A30();
  v2 = OUTLINED_FUNCTION_0(v133);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0(v126 - v8);
  v9 = sub_21E3E2A40();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0(v126 - v16);
  v142 = sub_21E3E2A60();
  v17 = OUTLINED_FUNCTION_0(v142);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0(v126 - v23);
  v151 = sub_21E3E29E0();
  v24 = OUTLINED_FUNCTION_0(v151);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0(v30 - v29);
  v31 = sub_21E3E2A70();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_0();
  v39 = v38 - v37;
  v40 = sub_21E3E2A90();
  v41 = OUTLINED_FUNCTION_0(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_0();
  v46 = v45 - v44;
  v47 = 0;
  v162 = 0;
  v161 = 0;
  v154 = a1;
  v155 = *(a1 + 16);
  v149 = v48 + 16;
  v148 = v34 + 88;
  v147 = *MEMORY[0x277D04888];
  v131 = *MEMORY[0x277D04890];
  v126[2] = v34 + 8;
  v49 = v34 + 96;
  v50 = v31;
  v137 = v49;
  v126[1] = v4 + 32;
  v136 = v12 + 88;
  v135 = *MEMORY[0x277D04880];
  v126[5] = v12 + 8;
  v134 = v19 + 8;
  v52 = v51;
  v126[0] = v4 + 16;
  v130 = (v4 + 8);
  v129 = v26 + 32;
  v128 = v26 + 8;
  v53 = v46;
  v150 = v48;
  v146 = v48 + 8;
  v54 = MEMORY[0x277D84F90];
  v55 = 0xE000000000000000;
  v143 = v9;
  v141 = v50;
  v140 = v39;
  v139 = v51;
  v138 = v46;
  while (v155 != v47)
  {
    (*(v150 + 16))(v53, v154 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v47, v52);
    sub_21E3E2A80();
    v56 = OUTLINED_FUNCTION_1_2(&v173);
    v57(v56);
    OUTLINED_FUNCTION_14(&v172 + 4);
    if (v65)
    {
      v156 = v55;
      v58 = OUTLINED_FUNCTION_1_2(v167);
      v59(v58);
      OUTLINED_FUNCTION_3_1(v160);
      v61 = v60(v159, v39, v151);
      MEMORY[0x223D57DE0](v61);
      sub_21E3E2A50();
      v62 = OUTLINED_FUNCTION_2_2(v166);
      v63(v62);
      OUTLINED_FUNCTION_14(v165);
      v158 = v47;
      if (v65)
      {
        v64 = sub_21E3E2EC0();
        v169 = MEMORY[0x277CE04F8];
        OUTLINED_FUNCTION_12_0(v64, MEMORY[0x277CE04E8]);
      }

      else
      {
        v75 = sub_21E3E2EB0();
        v169 = MEMORY[0x277CE04F8];
        OUTLINED_FUNCTION_12_0(v75, MEMORY[0x277CE04E8]);
        v76 = OUTLINED_FUNCTION_2_2(&v157);
        v77(v76);
      }

      sub_21E3D618C(&v168, &v170);
      OUTLINED_FUNCTION_3_1(v164);
      v78(v152, v142);
      v79 = v173;
      v80 = __swift_project_boxed_opaque_existential_1(&v170, v172);
      v81 = v80;
      v82 = v159;
      *&v168 = MEMORY[0x223D57DD0](v80, v83, v84);
      *(&v168 + 1) = v85;
      sub_21E3CEDE0();
      sub_21E3E30C0();
      OUTLINED_FUNCTION_6_1();
      sub_21E3E3070();
      OUTLINED_FUNCTION_13_0();
      v86 = OUTLINED_FUNCTION_8_1();
      v87 = MEMORY[0x223D57DC0](v86);
      v157 = v54;
      if (v87)
      {
        if (UIAccessibilityIsBoldTextEnabled())
        {
          sub_21E3E2F80();
        }

        else
        {
          sub_21E3E2FA0();
        }
      }

      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_6_1();
      sub_21E3C7F24(v79, v39, v81 & 1);

      __swift_destroy_boxed_opaque_existential_0(&v170);
      v145 = OUTLINED_FUNCTION_4();
      v144 = v106;
      v108 = v107;
      v110 = v109;
      OUTLINED_FUNCTION_8_1();
      sub_21E3C7F24(v82, v79, v54 & 1);

      OUTLINED_FUNCTION_3_1(&v159);
      v111(v159, v151);
      v54 = v110;
      v162 = v145;
      v112 = &v170;
    }

    else
    {
      OUTLINED_FUNCTION_14(v163);
      if (!v65)
      {
        v88 = OUTLINED_FUNCTION_1_2(&v154);
        v89(v88);
        goto LABEL_29;
      }

      v156 = v55;
      v66 = OUTLINED_FUNCTION_1_2(v167);
      v67(v66);
      OUTLINED_FUNCTION_3_1(&v153);
      v68 = v39;
      v69 = v133;
      v71 = v70(v153, v68, v133);
      MEMORY[0x223D57E30](v71);
      sub_21E3E2A50();
      v72 = OUTLINED_FUNCTION_2_2(v166);
      v73(v72);
      OUTLINED_FUNCTION_14(v165);
      if (v65)
      {
        v74 = sub_21E3E2EC0();
        v169 = MEMORY[0x277CE04F8];
        OUTLINED_FUNCTION_12_0(v74, MEMORY[0x277CE04E8]);
      }

      else
      {
        v90 = sub_21E3E2EB0();
        v169 = MEMORY[0x277CE04F8];
        OUTLINED_FUNCTION_12_0(v90, MEMORY[0x277CE04E8]);
        v91 = OUTLINED_FUNCTION_2_2(&v157);
        v92(v91);
      }

      v93 = v126[4];
      sub_21E3D618C(&v168, &v170);
      OUTLINED_FUNCTION_3_1(v164);
      v94(v132, v142);
      v95 = v172;
      v144 = v173;
      v127 = __swift_project_boxed_opaque_existential_1(&v170, v172);
      OUTLINED_FUNCTION_3_1(&v152);
      v97 = v96(v93, v153, v69);
      v98 = MEMORY[0x223D57E20](v97);
      v100 = v99;
      sub_21E3D61E8();
      sub_21E3E2430();
      v101 = sub_21E3D622C(v98, v100);
      if (v101)
      {
        v102 = v101;
        sub_21E3E2430();
        sub_21E3E3290();

        v103 = sub_21E3E30D0();
      }

      else
      {

        *&v168 = MEMORY[0x223D57E10](v113);
        *(&v168 + 1) = v114;
        sub_21E3CEDE0();
        v103 = sub_21E3E30C0();
      }

      v115 = v103;
      v116 = v104;
      v117 = v105;
      v145 = *v130;
      v145(v93, v69);
      sub_21E3E3070();
      OUTLINED_FUNCTION_13_0();
      sub_21E3C7F24(v115, v116, v117 & 1);

      v119 = MEMORY[0x223D57E00](v118);
      v158 = v47;
      v157 = v54;
      if (v119)
      {
        if (UIAccessibilityIsBoldTextEnabled())
        {
          sub_21E3E2F80();
        }

        else
        {
          sub_21E3E2FA0();
        }
      }

      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_6_1();
      sub_21E3C7F24(v95, v69, v100 & 1);

      __swift_destroy_boxed_opaque_existential_0(&v170);
      v144 = OUTLINED_FUNCTION_4();
      v127 = v120;
      v108 = v121;
      v123 = v122;
      OUTLINED_FUNCTION_8_1();
      sub_21E3C7F24(v47, v95, v54 & 1);

      v145(v153, v133);
      v54 = v123;
      v162 = v144;
      v112 = &v158;
    }

    v55 = *(v112 - 32);
    v161 = v108;
    v39 = v140;
    v52 = v139;
    v53 = v138;
    v47 = v158;
LABEL_29:
    OUTLINED_FUNCTION_3_1(v171);
    v124(v53, v52);
    ++v47;
  }

  return v162;
}

uint64_t sub_21E3D618C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21E3D61E8()
{
  result = qword_27CEC2C08;
  if (!qword_27CEC2C08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEC2C08);
  }

  return result;
}

id sub_21E3D622C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_21E3E34C0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

uint64_t OUTLINED_FUNCTION_4()
{
  v2 = *(v0 - 252);
  v3 = *(v0 - 248);
  v4 = *(v0 - 288);
  v5 = *(v0 - 280);

  return sub_21E3E3080();
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  sub_21E3C7F24(v0, v1, v2 & 1);
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_21E3E3000();
}

uint64_t OUTLINED_FUNCTION_12_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 136) = a2;
  *(v2 - 168) = result;
  return result;
}

uint64_t type metadata accessor for AttributionItemListSnippet()
{
  result = qword_2812231C0;
  if (!qword_2812231C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3D644C()
{
  sub_21E3C45D4();
  if (v0 <= 0x3F)
  {
    sub_21E3E2780();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21E3D64EC()
{
  v1 = type metadata accessor for AttributionItemListSnippet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_21E3D7160(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_21E3D71C4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C10, &qword_21E3E48F0);
  sub_21E3D7298();
  return sub_21E3E3390();
}

uint64_t sub_21E3D6610(uint64_t a1)
{
  v2 = type metadata accessor for AttributionItemListSnippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28);
  v11[3] = sub_21E3E2760();
  swift_getKeyPath();
  sub_21E3D7160(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21E3D71C4(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C28, &qword_21E3E4928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C30, &qword_21E3E4930);
  sub_21E3C4DA0(&qword_27CEC2C38, &qword_27CEC2C28, &qword_21E3E4928);
  v8 = sub_21E3E3440();
  v9 = sub_21E3D75E8(&qword_27CEC2C20, MEMORY[0x277D63E70]);
  v11[1] = v8;
  v11[2] = v9;
  swift_getOpaqueTypeConformance2();
  return sub_21E3E32E0();
}

uint64_t sub_21E3D682C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21E3E2430();
  return sub_21E3E24F0();
}

uint64_t sub_21E3D686C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v52 = a1;
  v71 = a3;
  v68 = sub_21E3E2520();
  v67 = *(v68 - 8);
  v70 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributionItemListSnippet();
  v65 = *(v4 - 8);
  v64 = *(v65 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_21E3E22A0();
  v59 = *(v60 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E3E22E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E3E3330();
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C40, &qword_21E3E4938);
  v58 = *(v57 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v17 = &v51 - v16;
  v61 = sub_21E3E3440();
  v62 = *(v61 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v54 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_21E3E2500();
  v87 = v20;
  sub_21E3CEDE0();
  v21 = sub_21E3E30C0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  KeyPath = swift_getKeyPath();
  v86 = v21;
  v87 = v23;
  v88 = v25 & 1;
  v89 = v27;
  v90 = KeyPath;
  v91 = 2;
  v92 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C48, &qword_21E3E4970);
  sub_21E3D7530();
  v29 = sub_21E3E30E0();
  sub_21E3C7F24(v21, v23, v25 & 1);

  v30 = MEMORY[0x277D63A60];
  v89 = MEMORY[0x277CE11C8];
  v90 = MEMORY[0x277D63A60];
  v86 = v29;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v31 = v52;
  v32 = sub_21E3E2510();
  v81 = MEMORY[0x277D837D0];
  v82 = MEMORY[0x277D63F80];
  v79 = v32;
  v80 = v33;
  v78 = 0;
  v77 = 0u;
  v76 = 0u;
  sub_21E3E24D0();
  sub_21E3E3350();
  v34 = v59;
  v35 = v55;
  v36 = v60;
  (*(v59 + 104))(v55, *MEMORY[0x277D62B38], v60);
  v37 = sub_21E3D75E8(&qword_27CEC2AC0, MEMORY[0x277D63B20]);
  sub_21E3E3110();
  (*(v34 + 8))(v35, v36);
  (*(v56 + 8))(v14, v11);
  v72 = v11;
  v73 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v57;
  v39 = sub_21E3E30E0();
  (*(v58 + 8))(v17, v38);
  v75 = v30;
  v74 = MEMORY[0x277CE11C8];
  v72 = v39;
  v40 = v54;
  sub_21E3E3430();
  v41 = v63;
  sub_21E3D7160(v69, v63);
  v42 = v67;
  v43 = v66;
  v44 = v68;
  (*(v67 + 16))(v66, v31, v68);
  v45 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v46 = v42;
  v47 = (v64 + *(v42 + 80) + v45) & ~*(v42 + 80);
  v48 = swift_allocObject();
  sub_21E3D71C4(v41, v48 + v45);
  (*(v46 + 32))(v48 + v47, v43, v44);
  sub_21E3D75E8(&qword_27CEC2C20, MEMORY[0x277D63E70]);
  v49 = v61;
  sub_21E3E3130();

  return (*(v62 + 8))(v40, v49);
}

uint64_t sub_21E3D7048(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for AttributionItemListSnippet() + 20);
  v3 = sub_21E3E2770();
  v4 = type metadata accessor for ActionHandler();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_21E3E2AE0();
  *(v7 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext) = v3;
  v8 = sub_21E3E24C0();
  if (*a1)
  {
    v9 = v8;
    v10 = *a1;
    sub_21E3DC9B4();

    swift_setDeallocating();
    return sub_21E3DD768();
  }

  else
  {
    v12 = *(a1 + 8);
    sub_21E3E3480();
    sub_21E3D75E8(&qword_281223080, MEMORY[0x277D63F60]);
    result = sub_21E3E2CB0();
    __break(1u);
  }

  return result;
}

uint64_t sub_21E3D7160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItemListSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D71C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItemListSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3D7228()
{
  v1 = *(type metadata accessor for AttributionItemListSnippet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21E3D6610(v2);
}

unint64_t sub_21E3D7298()
{
  result = qword_27CEC2C18;
  if (!qword_27CEC2C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2C10, &qword_21E3E48F0);
    sub_21E3E3440();
    sub_21E3D75E8(&qword_27CEC2C20, MEMORY[0x277D63E70]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2C18);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v2 = type metadata accessor for AttributionItemListSnippet();
  OUTLINED_FUNCTION_1_3(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);

  v8 = *(v0 + 28);
  v9 = sub_21E3E2780();
  OUTLINED_FUNCTION_0_0(v9);
  (*(v10 + 8))(v1 + v5 + v8);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_21E3D744C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AttributionItemListSnippet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E3D686C(a1, v6, a2);
}

uint64_t sub_21E3D74CC@<X0>(uint64_t a1@<X8>)
{
  result = sub_21E3E2DA0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21E3D7500(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_21E3E2DB0();
}

unint64_t sub_21E3D7530()
{
  result = qword_27CEC2C50;
  if (!qword_27CEC2C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2C48, &qword_21E3E4970);
    sub_21E3C4DA0(&qword_27CEC2C58, &qword_27CEC2C60, &qword_21E3E4978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2C50);
  }

  return result;
}

uint64_t sub_21E3D75E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E3D7630()
{
  v1 = *(type metadata accessor for AttributionItemListSnippet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_21E3E2520() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21E3D7048(v0 + v2);
}

uint64_t sub_21E3D7710@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21E3E2E30();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CA0, &qword_21E3E4B68);
  sub_21E3D77CC(v1, a1 + *(v3 + 44));
  sub_21E3E2F10();
  sub_21E3E2B70();
  OUTLINED_FUNCTION_3_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CA8, &qword_21E3E4B70);
  OUTLINED_FUNCTION_0_2(v4);
  sub_21E3E2F20();
  sub_21E3E2B70();
  OUTLINED_FUNCTION_3_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CB0, &qword_21E3E4B78);
  return OUTLINED_FUNCTION_0_2(v5);
}

uint64_t sub_21E3D77CC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CB8, &qword_21E3E4B80);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(a1 + 3);
  v13 = *(a1 + 4);
  sub_21E3E2430();
  *&v18 = sub_21E3E3290();
  v21 = *a1;
  v22 = *(a1 + 2);
  v14 = swift_allocObject();
  v15 = a1[1];
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 4);
  sub_21E3E2430();
  sub_21E3D7FC4(&v21, &v19);
  sub_21E3E3180();

  v19 = v21;
  v20 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  sub_21E3E32B0();
  *&v11[*(v5 + 44)] = v18;
  sub_21E3C2A50(v11, v9);
  *a2 = 0;
  *(a2 + 8) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2CC0, &qword_21E3E4B88);
  sub_21E3C2A50(v9, a2 + *(v16 + 48));
  sub_21E3C2AB8(v11);
  return sub_21E3C2AB8(v9);
}

uint64_t sub_21E3D79BC(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  return sub_21E3E32C0();
}

uint64_t sub_21E3D7A18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_21E3D7710(a1);
}

uint64_t sub_21E3D7A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  sub_21E3E32B0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C88, &qword_21E3E4B50);
  OUTLINED_FUNCTION_1(v11);
  (*(v12 + 16))(a3, a1);
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C90, &qword_21E3E4B58) + 36));
  *v13 = KeyPath;
  v13[1] = v17;
  v13[2] = v18;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  *(v14 + 32) = a2;
  v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2C98, &qword_21E3E4B60) + 36));
  *v15 = sub_21E3D7FB0;
  v15[1] = v14;
}

double sub_21E3D7BA4()
{
  sub_21E3D7C1C();
  sub_21E3E2DE0();
  return v1;
}

unint64_t sub_21E3D7C1C()
{
  result = qword_27CEC2C78;
  if (!qword_27CEC2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2C78);
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

uint64_t sub_21E3D7C94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E3D7CE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

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

uint64_t sub_21E3D7D5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E3D7D9C(uint64_t result, int a2, int a3)
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

uint64_t sub_21E3D7E28(__int128 *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  return sub_21E3E32C0();
}

double sub_21E3D7EB0(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_21E3D7EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21E3D7F58();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_21E3D7F58()
{
  result = qword_27CEC2C80;
  if (!qword_27CEC2C80)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2C80);
  }

  return result;
}

uint64_t sub_21E3D7FB0(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_21E3D7E28(a1);
}

uint64_t sub_21E3D7FC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2A58, &unk_21E3E44B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E3D8040()
{
  result = qword_27CEC2CC8;
  if (!qword_27CEC2CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2C98, &qword_21E3E4B60);
    sub_21E3D80F8();
    sub_21E3C4DA0(&qword_27CEC2CF0, &qword_27CEC2CF8, &qword_21E3E4BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2CC8);
  }

  return result;
}

unint64_t sub_21E3D80F8()
{
  result = qword_27CEC2CD0;
  if (!qword_27CEC2CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2C90, &qword_21E3E4B58);
    sub_21E3C4DA0(&qword_27CEC2CD8, &qword_27CEC2C88, &qword_21E3E4B50);
    sub_21E3C4DA0(&qword_27CEC2CE0, &qword_27CEC2CE8, &qword_21E3E4BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2CD0);
  }

  return result;
}

unint64_t sub_21E3D81DC()
{
  result = qword_27CEC2D00;
  if (!qword_27CEC2D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2CB0, &qword_21E3E4B78);
    sub_21E3D8268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2D00);
  }

  return result;
}

unint64_t sub_21E3D8268()
{
  result = qword_27CEC2D08;
  if (!qword_27CEC2D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2CA8, &qword_21E3E4B70);
    sub_21E3C4DA0(&qword_27CEC2D10, &qword_27CEC2D18, qword_21E3E4BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2D08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t result)
{
  v7 = v1 + *(result + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_21E3D835C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E3D839C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21E3D8408@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a3;
  v37 = a2;
  v39 = a6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D20, &qword_21E3E4CB8);
  v9 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D28, &qword_21E3E4CC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D30, &qword_21E3E4CC8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  if (a4 && (objc_opt_self(), (v21 = swift_dynamicCastObjCClass()) != 0))
  {
    v22 = v21;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D38, &unk_21E3E4CD0);
    (*(*(v35 - 8) + 16))(v15, a1, v35);
    v15[*(v12 + 36)] = 0;
    v23 = swift_allocObject();
    v34 = v16;
    v24 = v36;
    v25 = v37;
    v23[2] = v37;
    v23[3] = v24;
    v23[4] = a4;
    v23[5] = a5;
    v23[6] = v22;
    v26 = sub_21E3D890C();
    v27 = a4;
    v28 = v25;

    v29 = v26;
    sub_21E3E31C0();

    sub_21E3D8A00(v15);
    v30 = v34;
    (*(v17 + 16))(v11, v20, v34);
    swift_storeEnumTagMultiPayload();
    v40 = v12;
    v41 = v29;
    swift_getOpaqueTypeConformance2();
    sub_21E3C4DA0(&qword_2812230D0, &qword_27CEC2D38, &unk_21E3E4CD0);
    sub_21E3E2E90();

    return (*(v17 + 8))(v20, v30);
  }

  else
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D38, &unk_21E3E4CD0);
    (*(*(v32 - 8) + 16))(v11, a1, v32);
    swift_storeEnumTagMultiPayload();
    v33 = sub_21E3D890C();
    v40 = v12;
    v41 = v33;
    swift_getOpaqueTypeConformance2();
    sub_21E3C4DA0(&qword_2812230D0, &qword_27CEC2D38, &unk_21E3E4CD0);
    return sub_21E3E2E90();
  }
}

uint64_t sub_21E3D8834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ActionHandler();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();

  sub_21E3E2AE0();
  *(v9 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext) = a4;
  if (a1)
  {
    v10 = a1;
    sub_21E3DC9B4();

    swift_setDeallocating();
    return sub_21E3DD768();
  }

  else
  {
    sub_21E3E3480();
    sub_21E3D8A68();
    result = sub_21E3E2CB0();
    __break(1u);
  }

  return result;
}

unint64_t sub_21E3D890C()
{
  result = qword_281223108;
  if (!qword_281223108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2D28, &qword_21E3E4CC0);
    sub_21E3C4DA0(&qword_2812230D0, &qword_27CEC2D38, &unk_21E3E4CD0);
    sub_21E3C4DA0(&qword_2812230D8, &qword_27CEC2690, &qword_21E3E3D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223108);
  }

  return result;
}

uint64_t sub_21E3D8A00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D28, &qword_21E3E4CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E3D8A68()
{
  result = qword_281223080;
  if (!qword_281223080)
  {
    sub_21E3E3480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223080);
  }

  return result;
}

unint64_t sub_21E3D8AC0()
{
  result = qword_2812230E0;
  if (!qword_2812230E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2D40, &unk_21E3E4CE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2D28, &qword_21E3E4CC0);
    sub_21E3D890C();
    swift_getOpaqueTypeConformance2();
    sub_21E3C4DA0(&qword_2812230D0, &qword_27CEC2D38, &unk_21E3E4CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812230E0);
  }

  return result;
}

uint64_t sub_21E3D8BB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ItemListView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E3E2C80();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E3DAAB0(v16);
  v17 = sub_21E3E2C70();
  (*(v12 + 8))(v16, v9);
  sub_21E3DAC7C(v2, v8);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  if (v17)
  {
    v19 = sub_21E3DB320;
  }

  else
  {
    v19 = sub_21E3DAD44;
  }

  v20 = swift_allocObject();
  sub_21E3DACE0(v8, v20 + v18);
  v21 = sub_21E3D9164();
  v23 = v22;
  v24 = sub_21E3D9314();
  *a1 = v21;
  *(a1 + 8) = v23;
  *(a1 + 16) = v24;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x4018000000000000;
  *(a1 + 40) = 0;
  LODWORD(v23) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D68, &qword_21E3E4E40) + 44);
  v28[1] = sub_21E3DB030(*(v2 + *(v5 + 36)));
  swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  *(v25 + 24) = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_21E3DB1A4;
  *(v26 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D70, &qword_21E3E4E68);
  sub_21E3C4DA0(&qword_281223060, &qword_27CEC2D70, &qword_21E3E4E68);
  return sub_21E3E32E0();
}

uint64_t sub_21E3D8EC4(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D78, &qword_21E3E4E70);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v19[-v13];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v19[*(v12 + 36) - v13];
  *v15 = sub_21E3E2E80();
  *(v15 + 1) = 0x4010000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D80, &qword_21E3E4E78);
  sub_21E3D951C(a1, a2, a3, a4 & 1, a5, &v15[*(v16 + 44)]);
  sub_21E3C4DA0(&qword_27CEC2D88, &qword_27CEC2D78, &qword_21E3E4E70);
  v17 = sub_21E3E30E0();
  sub_21E3C413C(v14, &qword_27CEC2D78, &qword_21E3E4E70);
  return v17;
}

uint64_t sub_21E3D902C(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E18, &qword_21E3E4F10);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v19[-v15];
  *v16 = 0;
  v16[8] = 1;
  sub_21E3D9F6C(a6, a1, a2, a3, a4 & 1, a5, &v19[*(v14 + 36) - v15]);
  sub_21E3C4DA0(&qword_2812230A8, &qword_27CEC2E18, &qword_21E3E4F10);
  v17 = sub_21E3E30E0();
  sub_21E3C413C(v16, &qword_27CEC2E18, &qword_21E3E4F10);
  return v17;
}

uint64_t sub_21E3D9164()
{
  v1 = sub_21E3E2DD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ItemListView() + 20);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    if ((v7 & 1) == 0)
    {
LABEL_3:
      v8 = sub_21E3E2E80();
      sub_21E3E2E00();
      return v8;
    }
  }

  else
  {

    sub_21E3E35D0();
    v9 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();
    sub_21E3C7B10(v7, 0);
    (*(v2 + 8))(v5, v1);
    if ((v11[15] & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27CEC2640 != -1)
  {
    swift_once();
  }

  return qword_27CEC2D48;
}

double sub_21E3D9314()
{
  v1 = sub_21E3E2DD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ItemListView() + 20);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_21E3E35D0();
    v8 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();
    sub_21E3C7B10(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  result = 6.0;
  if (v7)
  {
    return 4.0;
  }

  return result;
}

uint64_t sub_21E3D9478(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, void (*)(void, void), uint64_t, void, uint64_t))
{
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = sub_21E3D5698(a2);
    v7 = v6;
    v9 = v8;
    v11 = a3(v3, v5, v6, v8 & 1, v10);
    sub_21E3C7F24(v5, v7, v9 & 1);

    return v11;
  }

  return result;
}

uint64_t sub_21E3D951C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, _BYTE *a6@<X8>)
{
  v29 = a3;
  v30 = a5;
  v28 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D90, &qword_21E3E4E80);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v27[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v27[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v27[-v21];
  sub_21E3D9754(a1, &v27[-v21]);
  sub_21E3D9B98(a2, v29, v28 & 1, v30, v20);
  v23 = v10[2];
  v23(v17, v22, v9);
  v23(v14, v20, v9);
  v23(a6, v17, v9);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D98, &qword_21E3E4E88);
  v23(&a6[*(v24 + 48)], v14, v9);
  v25 = v10[1];
  v25(v20, v9);
  v25(v22, v9);
  v25(v14, v9);
  return (v25)(v17, v9);
}

uint64_t sub_21E3D9754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_21E3E22B0();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v5);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21E3E3450();
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_21E3E33C0();
  v39 = *(v37 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2DA0, &qword_21E3E4E90);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v36 = &v36 - v17;
  sub_21E3DA1D4(v3, a1, &v47);
  v19 = v47;
  v18 = v48;
  v21 = v49;
  v20 = v50;
  v22 = v51;
  LODWORD(a1) = sub_21E3E2EC0();
  KeyPath = swift_getKeyPath();
  v54 = v22;
  v47 = v19;
  v48 = v18;
  v49 = v21;
  v50 = v20;
  LOBYTE(v51) = v22;
  HIDWORD(v51) = a1;
  v52 = KeyPath;
  v53 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2DB0, &qword_21E3E4ED0);
  sub_21E3DB470();
  v24 = sub_21E3E30E0();
  sub_21E3DB6E0(v19, v18, v21);

  v50 = MEMORY[0x277CE11C8];
  v51 = MEMORY[0x277D63A60];
  v47 = v24;
  sub_21E3E33B0();
  *v10 = 0;
  v10[1] = 0;
  v25 = v38;
  v26 = v40;
  (*(v38 + 104))(v10, *MEMORY[0x277D63EE0], v40);
  v27 = sub_21E3D2C18();
  v29 = v36;
  v28 = v37;
  sub_21E3E3170();
  (*(v25 + 8))(v10, v26);
  v30 = v28;
  (*(v39 + 8))(v13, v28);
  v31 = v43;
  v32 = v44;
  v33 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277D62F38], v45);
  v47 = v30;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v34 = v41;
  sub_21E3E3120();
  (*(v32 + 8))(v31, v33);
  return (*(v42 + 8))(v29, v34);
}

uint64_t sub_21E3D9B98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v32 = a3;
  v38 = a5;
  v7 = sub_21E3E22B0();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v35 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21E3E3450();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_21E3E33C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v31[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2DA0, &qword_21E3E4E90);
  v20 = *(v34 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v34);
  v23 = &v31[-v22];
  v39 = a1;
  v40 = a2;
  v41 = v32 & 1;
  v42 = v33;
  LOWORD(v43) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2DA8, &qword_21E3E4E98);
  sub_21E3DB3EC();
  v24 = sub_21E3E30E0();
  v42 = MEMORY[0x277CE11C8];
  v43 = MEMORY[0x277D63A60];
  v39 = v24;
  sub_21E3E33B0();
  *v14 = 0;
  v14[1] = 0;
  (*(v11 + 104))(v14, *MEMORY[0x277D63EE0], v10);
  v25 = sub_21E3D2C18();
  sub_21E3E3170();
  (*(v11 + 8))(v14, v10);
  (*(v16 + 8))(v19, v15);
  v27 = v35;
  v26 = v36;
  v28 = v37;
  (*(v36 + 104))(v35, *MEMORY[0x277D62F38], v37);
  v39 = v15;
  v40 = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v34;
  sub_21E3E3120();
  (*(v26 + 8))(v27, v28);
  return (*(v20 + 8))(v23, v29);
}

uint64_t sub_21E3D9F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a4;
  v40 = a6;
  v37 = a5;
  v38 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2D90, &qword_21E3E4E80);
  v34 = *(v36 - 8);
  v10 = v34;
  v11 = *(v34 + 64);
  v12 = MEMORY[0x28223BE20](v36);
  v41 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &KeyPath - v14;
  sub_21E3DA1D4(a1, a2, &v42);
  v16 = v42;
  v17 = v43;
  v30 = v43;
  v31 = v42;
  v18 = v44;
  v33 = v45;
  v19 = v46;
  v32 = sub_21E3E2EC0();
  KeyPath = swift_getKeyPath();
  LOBYTE(v42) = v19;
  v35 = v15;
  sub_21E3D9B98(v38, v39, v37 & 1, v40, v15);
  v20 = *(v10 + 16);
  LOBYTE(v10) = v42;
  v21 = v41;
  v22 = v36;
  v20(v41, v15, v36);
  *a7 = v16;
  *(a7 + 8) = v17;
  v23 = v33;
  *(a7 + 16) = v18;
  *(a7 + 24) = v23;
  *(a7 + 32) = v10;
  *(a7 + 36) = v32;
  *(a7 + 40) = KeyPath;
  *(a7 + 48) = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E20, &unk_21E3E4F18);
  v20((a7 + *(v24 + 48)), v21, v22);
  v26 = v30;
  v25 = v31;
  sub_21E3DB770(v31, v30, v18);
  v27 = *(v34 + 8);

  v27(v35, v22);
  v27(v41, v22);
  sub_21E3DB6E0(v25, v26, v18);
}

double sub_21E3DA1D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21E3E2280();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v26[1] = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E08, &qword_21E3E4F00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - v12;
  v14 = sub_21E3E2DD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1 + *(type metadata accessor for ItemListView() + 20);
  v20 = *v19;
  v21 = MEMORY[0x277D84F90];
  if (*(v19 + 8) != 1)
  {

    sub_21E3E35D0();
    v26[0] = v14;
    v22 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    v21 = MEMORY[0x277D84F90];
    sub_21E3E2DC0();
    swift_getAtKeyPath();
    sub_21E3C7B10(v20, 0);
    (*(v15 + 8))(v18, v26[0]);
    if ((v31 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v27 = xmmword_21E3E4CF0;
    v28 = 0;
    v29 = v21;
    v30 = 1;
    goto LABEL_6;
  }

  if (v20)
  {
    goto LABEL_5;
  }

LABEL_3:
  *&v31 = a2;
  sub_21E3E2250();
  sub_21E3DB71C();
  sub_21E3E21A0();
  sub_21E3C4DA0(&qword_281223728, &qword_27CEC2E08, &qword_21E3E4F00);
  sub_21E3E3610();
  (*(v10 + 8))(v13, v9);
  v31 = v27;
  MEMORY[0x223D58910](46, 0xE100000000000000);
  v27 = v31;
  v28 = 0;
  v29 = v21;
  v30 = 0;
LABEL_6:
  sub_21E3E2E90();
  result = *&v31;
  v24 = v32;
  v25 = v33;
  *a3 = v31;
  *(a3 + 16) = v24;
  *(a3 + 32) = v25;
  return result;
}

uint64_t sub_21E3DA560()
{
  sub_21E3DA5DC();
  sub_21E3E2DE0();
  return v1;
}

unint64_t sub_21E3DA5DC()
{
  result = qword_2812230F0;
  if (!qword_2812230F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812230F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ItemListView.ListStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for ItemListView()
{
  result = qword_2812235E8;
  if (!qword_2812235E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3DA790()
{
  sub_21E3DA88C();
  if (v0 <= 0x3F)
  {
    sub_21E3DA8E4(319, &qword_281223130, &type metadata for ItemListView.ListStyle, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21E3DA8E4(319, &qword_2812230B0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_21E3DA934();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21E3DA88C()
{
  if (!qword_281223128)
  {
    sub_21E3E2C80();
    v0 = sub_21E3E2BB0();
    if (!v1)
    {
      atomic_store(v0, &qword_281223128);
    }
  }
}

void sub_21E3DA8E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21E3DA934()
{
  if (!qword_281223068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2D58, qword_21E3E4D40);
    v0 = sub_21E3E3530();
    if (!v1)
    {
      atomic_store(v0, &qword_281223068);
    }
  }
}

unint64_t sub_21E3DA99C()
{
  result = qword_27CEC2D60;
  if (!qword_27CEC2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2D60);
  }

  return result;
}

uint64_t sub_21E3DA9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21E3DA99C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21E3DAA7C()
{
  v0 = sub_21E3E2E70();
  result = sub_21E3E2E10();
  qword_27CEC2D48 = v0;
  unk_27CEC2D50 = result;
  return result;
}

uint64_t sub_21E3DAAB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E3E2DD0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v23 - v16);
  sub_21E3DB7BC(v2, &v23 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_21E3E2C80();
    OUTLINED_FUNCTION_1(v18);
    return (*(v19 + 32))(a1, v17);
  }

  else
  {
    v21 = *v17;
    sub_21E3E35D0();
    v22 = sub_21E3E2EF0();
    sub_21E3E2AD0();

    sub_21E3E2DC0();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v11, v4);
  }
}

uint64_t sub_21E3DAC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemListView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3DACE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemListView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3DAD5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B80, &unk_21E3E4720);
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  v12 = 0;
  v13 = 0;
  v47 = v14;
  v45 = *(v14 + 80);
  v15 = MEMORY[0x277D84F90];
  v46 = (v45 + 32) & ~v45;
  v16 = MEMORY[0x277D84F90] + v46;
  v17 = *(a1 + 16);
  v43 = v17;
  v44 = &v42 - v10;
  while (1)
  {
    if (v17 == v13)
    {
      v39 = v15[3];
      if (v39 >= 2)
      {
        v40 = v39 >> 1;
        v38 = __OFSUB__(v40, v12);
        v41 = v40 - v12;
        if (v38)
        {
          goto LABEL_35;
        }

        v15[2] = v41;
      }

      return v15;
    }

    v18 = sub_21E3E29A0();
    OUTLINED_FUNCTION_1(v18);
    v20 = *(v19 + 16);
    v21 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v13;
    v22 = *(v2 + 48);
    *v8 = v13;
    v20(&v8[v22], v21);
    result = sub_21E3DB82C(v8, v11);
    if (v12)
    {
      v23 = v15;
    }

    else
    {
      v24 = v15[3];
      if (((v24 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v25 = v2;
      v26 = a1;
      v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
      if (v27 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E28, &qword_21E3E4F28);
      v29 = v46;
      v30 = *(v47 + 72);
      v23 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v23);
      if (!v30)
      {
        goto LABEL_33;
      }

      v31 = result - v29;
      if (result - v29 == 0x8000000000000000 && v30 == -1)
      {
        goto LABEL_34;
      }

      v33 = v31 / v30;
      v23[2] = v28;
      v23[3] = 2 * (v31 / v30);
      v34 = v23 + v29;
      v35 = v15[3];
      v36 = (v35 >> 1) * v30;
      if (v15[2])
      {
        if (v23 < v15 || v34 >= v15 + v46 + v36)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v23 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v15[2] = 0;
      }

      v16 = &v34[v36];
      v12 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - (v35 >> 1);

      a1 = v26;
      v2 = v25;
      v17 = v43;
      v11 = v44;
    }

    v38 = __OFSUB__(v12--, 1);
    if (v38)
    {
      break;
    }

    result = sub_21E3DB82C(v11, v16);
    v16 += *(v47 + 72);
    ++v13;
    v15 = v23;
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

uint64_t sub_21E3DB030(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = *(result + 16);
  v5 = (MEMORY[0x277D84F90] + 32);
  v6 = result + 32;
  while (1)
  {
    if (v4 == v2)
    {
      v18 = v3[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v17 = __OFSUB__(v19, v1);
        v20 = v19 - v1;
        if (v17)
        {
          goto LABEL_27;
        }

        v3[2] = v20;
      }

      return v3;
    }

    v7 = *(v6 + 8 * v2);
    if (v1)
    {
      v8 = *(v6 + 8 * v2);
      result = sub_21E3E2430();
      v9 = v3;
    }

    else
    {
      v10 = v3[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      v12 = v11 <= 1 ? 1 : v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E10, &qword_21E3E4F08);
      v9 = swift_allocObject();
      v13 = (_swift_stdlib_malloc_size(v9) - 32) / 16;
      v9[2] = v12;
      v9[3] = 2 * v13;
      v14 = v9 + 4;
      v15 = v3[3] >> 1;
      v5 = &v9[2 * v15 + 4];
      v1 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;
      if (v3[2])
      {
        if (v9 != v3 || v14 >= &v3[2 * v15 + 4])
        {
          memmove(v14, v3 + 4, 16 * v15);
        }

        sub_21E3E2430();
        v3[2] = 0;
      }

      else
      {
        sub_21E3E2430();
      }
    }

    v17 = __OFSUB__(v1--, 1);
    if (v17)
    {
      break;
    }

    *v5 = v2;
    v5[1] = v7;
    v5 += 2;
    ++v2;
    v3 = v9;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}