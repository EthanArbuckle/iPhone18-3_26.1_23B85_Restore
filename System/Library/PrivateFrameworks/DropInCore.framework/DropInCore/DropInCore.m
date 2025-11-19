void sub_249DEFE70(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_249DEFE68();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_249DEFEDC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DEFF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A628();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_249E7A5B8();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 24) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_249DEFFE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A628();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_249E7A5B8();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_249DF00F0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_249DF0124()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_249DF0180()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_249DF01E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249DF0228()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_249DF0284()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF0314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A628();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_249DF03BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A628();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_249DF04A0()
{
  MEMORY[0x24C205940](v0 + 16);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF04D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_249DF0514()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_249DF054C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249DF0594()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249DF069C()
{
  MEMORY[0x24C205940](v0 + 16);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF06D8()
{
  v1 = sub_249E7A628();
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = OUTLINED_FUNCTION_68();
  v9(v8);
  v10 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_249DF0790(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_249DF07B0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_34_0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();
  v8 = *(v1 + 32);

  v9 = sub_249E7A628();
  if (!OUTLINED_FUNCTION_320(v9))
  {
    (*(*(v0 - 8) + 8))(v1 + ((v4 + 40) & ~v4), v0);
  }

  v10 = OUTLINED_FUNCTION_309();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_249DF08A4()
{
  v1 = sub_249E7A5B8();
  OUTLINED_FUNCTION_3(v1);
  v4 = *(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80));
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = OUTLINED_FUNCTION_68();
  v8(v7);
  v9 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_249DF095C()
{
  v1 = sub_249E7A628();
  OUTLINED_FUNCTION_3(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_160();
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = OUTLINED_FUNCTION_68();
  v9(v8);
  v10 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_249DF0A1C()
{
  v1 = sub_249E7A628();
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = OUTLINED_FUNCTION_68();
  v9(v8);
  v10 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_249DF0ADC()
{
  v2 = type metadata accessor for DropInStateManager.Context(0);
  OUTLINED_FUNCTION_281(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64) + v4;
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();
  v8 = *(v1 + 32);

  v9 = v1 + v4;
  v10 = *(v9 + 16);

  v11 = *(v0 + 32);
  v12 = sub_249E7A5B8();
  OUTLINED_FUNCTION_28_0(v12);
  (*(v13 + 8))(v9 + v11);
  v14 = OUTLINED_FUNCTION_309();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_249DF0BC0()
{
  v2 = type metadata accessor for DropInStateManager.Context(0);
  OUTLINED_FUNCTION_281(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();
  v8 = *(v1 + 32);

  v9 = *(v1 + v4 + 16);

  v10 = *(v0 + 32);
  v11 = sub_249E7A5B8();
  OUTLINED_FUNCTION_28_0(v11);
  (*(v12 + 8))(v1 + v4 + v10);
  v13 = OUTLINED_FUNCTION_309();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_249DF0D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A628();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_249E7A5B8();
    v8 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 28) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_249DF0DF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A628();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_249E7A5B8();
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_249DF0EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_249E7A5B8();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_249DF0F4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_249E7A5B8();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_249DF0FCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249DF100C(uint64_t a1, uint64_t a2)
{
  v4 = sub_249E7A628();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_249DF1054(uint64_t a1, uint64_t a2)
{
  v4 = sub_249E7A628();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_249DF10A0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_249E7A5B8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_249DF1128(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_249E7A5B8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_249DF11E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_249DF11A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_249DF1294()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249DF12D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249DF1328(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

double sub_249DF1390@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_249E3B9A4(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

char *sub_249DF13E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

uint64_t sub_249DF140C()
{
  v1 = sub_249E7A5B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_249DF1550()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DF1588()
{
  MEMORY[0x24C205940](v0 + 16);
  v1 = OUTLINED_FUNCTION_2_12();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF15B8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_8_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249DF1610()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249DF1650()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249DF1698()
{
  v1 = OUTLINED_FUNCTION_2_12();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF16C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249DF1724(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_249DF17C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_249DF1858()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_249DF188C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_249DF18EC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_8_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249DF1920()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_249DF1974()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF19A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_39_1();
  v4 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_249DF1A08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_249DF1AD8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_249DF1B2C()
{
  MEMORY[0x24C205940](v0 + 16);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF1B60()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_249DF1B98()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_249DF1BE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_249E521BC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_249DF1C38()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF1C6C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_249DF1CA4()
{
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF1CD8()
{
  OUTLINED_FUNCTION_8_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF1D14()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_8_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249DF1D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A628();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_249DF1E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A628();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_249DF1F2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DF1F64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_249DF1FB8()
{
  v1 = sub_249E7A628();
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 113) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  v9 = *(v0 + 40);

  OUTLINED_FUNCTION_39_1();
  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t sub_249DF20A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF240A0, &qword_249E80258);
  OUTLINED_FUNCTION_28_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249DF2130()
{
  MEMORY[0x24C205940](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DF2168()
{
  v1 = sub_249E7A628();
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v11 = *(v0 + v7 + 8);

  v12 = *(v0 + v8);

  v13 = *(v0 + v9);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v4 | 7);
}

uint64_t sub_249DF2290()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249DF22D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DF233C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A628();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_249DF23E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A628();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_249DF2490()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24168, &unk_249E806B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249DF254C()
{
  MEMORY[0x24C205940](v0 + 16);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF2580()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_249DF25B8()
{
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF25FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249DF2634()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249DF267C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249DF26C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A6B8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_249DF2770(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A6B8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_249DF2874()
{
  MEMORY[0x24C205940](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DF28AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249DF28EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249DF294C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249E7A628();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_249E7A5B8();
    v8 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 28) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_249DF2A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249E7A628();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_249E7A5B8();
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_249DF2BD4()
{
  MEMORY[0x24C205940](v0 + 16);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249DF2C10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249DF2C5C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

id sub_249DF2C94(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void sub_249DF2CB0(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_249DF2D58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_249DF2F84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 65))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249DF2FC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

void sub_249DF3064(uint64_t a1, unint64_t *a2)
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

uint64_t sub_249DF30B0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  if (a1[8])
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return 0;
    }

    v9 = a1[4];
    v8 = a1[5];
    v10 = a1[7];
    v12 = *(a2 + 16);
    v11 = *(a2 + 24);
    v14 = *(a2 + 32);
    v13 = *(a2 + 40);
    v15 = *(a2 + 56);
    v25 = *(a2 + 48);
    v26 = a1[6];
    v16 = v4 == *a2 && v5 == *(a2 + 8);
    if (!v16 && (sub_249E7B318() & 1) == 0)
    {
      return 0;
    }

    if (v7)
    {
      if (!v11)
      {
        return 0;
      }

      v17 = v6 == v12 && v7 == v11;
      if (!v17 && (sub_249E7B318() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (v8)
    {
      if (!v13)
      {
        return 0;
      }

      v23 = v9 == v14 && v8 == v13;
      if (!v23 && (sub_249E7B318() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v13)
    {
      return 0;
    }

    if (v10)
    {
      if (v15)
      {
        v24 = v26 == v25 && v10 == v15;
        if (v24 || (sub_249E7B318() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v15)
    {
      return 1;
    }

    return 0;
  }

  if (*(a2 + 64))
  {
    return 0;
  }

  v19 = *(a2 + 16);
  v20 = *(a2 + 24);
  v21 = v4 == *a2 && v5 == *(a2 + 8);
  if (!v21 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  if (v6 == v19 && v7 == v20)
  {
    return 1;
  }

  return sub_249E7B318();
}

uint64_t sub_249DF3274()
{
  if (v0[8])
  {
    v6 = *(v0 + 2);
    v7 = *(v0 + 3);
    v2 = *v0;
    v3 = v0[1];
    v4 = v0[2];
    v5 = v0[3];
    MEMORY[0x24C205020](1);
    return sub_249E30EBC();
  }

  else
  {
    MEMORY[0x24C205020](0);
    sub_249E7AB18();

    return sub_249E7AB18();
  }
}

uint64_t sub_249DF3334()
{
  sub_249E7B408();
  if (v0[8])
  {
    v6 = *(v0 + 2);
    v7 = *(v0 + 3);
    v2 = *v0;
    v3 = v0[1];
    v4 = v0[2];
    v5 = v0[3];
    MEMORY[0x24C205020](1);
    sub_249E30EBC();
  }

  else
  {
    MEMORY[0x24C205020](0);
    sub_249E7AB18();
    sub_249E7AB18();
  }

  return sub_249E7B438();
}

uint64_t sub_249DF33F0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 64);
  sub_249E7B408();
  if (v5)
  {
    v7 = *(v0 + 2);
    v8 = *(v0 + 3);
    MEMORY[0x24C205020](1);
    sub_249E30EBC();
  }

  else
  {
    MEMORY[0x24C205020](0);
    sub_249E7AB18();
    sub_249E7AB18();
  }

  return sub_249E7B438();
}

uint64_t sub_249DF349C()
{
  if (*(v0 + 64))
  {
    return 0;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_249E7AA88();
}

uint64_t sub_249DF34CC()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (v0[8])
  {
    v8 = *(v0 + 2);
    v9 = *(v0 + 3);
    v7[0] = v2;
    v7[1] = v1;
    v7[2] = v4;
    v7[3] = v3;
    v5 = sub_249E30C28();
    MEMORY[0x24C204750](v5);

    MEMORY[0x24C204750](93, 0xE100000000000000);
    return 0x726F70706152285BLL;
  }

  else
  {
    sub_249E7B128();

    strcpy(v7, "[(IDS) SCI = ");
    MEMORY[0x24C204750](v2, v1);
    MEMORY[0x24C204750](0x44496D6F7266202CLL, 0xEB00000000203D20);
    MEMORY[0x24C204750](v4, v3);
    MEMORY[0x24C204750](93, 0xE100000000000000);
    return v7[0];
  }
}

uint64_t sub_249DF3610()
{
  v1 = OUTLINED_FUNCTION_0();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

unint64_t sub_249DF3648()
{
  result = qword_27EF231A0;
  if (!qword_27EF231A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF231A0);
  }

  return result;
}

uint64_t sub_249DF3718()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249DF3748()
{
  sub_249DF3718();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_249DF3794(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_249E7A5B8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_249DF381C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_249E7A5B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = v8;
  v14 = *(v6 + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v22 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v22 = (a1 + v14) & ~v12;
    }

    return __swift_getEnumTagSinglePayload(v22, v10, v13);
  }

  v15 = (v14 & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_249DF3A64(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_249E7A5B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v10 - 8) + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v12 = v9;
            v10 = v7;
          }

          else
          {
            v24 = &a1[v15] & ~v14;
            v25 = a2;
          }

          __swift_storeEnumTagSinglePayload(v24, v25, v12, v10);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_249DF3DA4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_249E7B2F8();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_249E7A4C8();

  v11 = [v10 description];
  v12 = sub_249E7AAA8();

  return v12;
}

uint64_t sub_249DF3F70()
{
  v1 = [v0 category];
  v2 = [v1 categoryType];

  v3 = sub_249E7AAA8();
  v5 = v4;

  v6 = *MEMORY[0x277CCE8B0];
  if (v3 == sub_249E7AAA8() && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_249E7B318();
  }

  return v9 & 1;
}

id sub_249DF4038()
{
  v2 = sub_249E7A628();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  if (![v0 supportsDropIn])
  {
    if (qword_28130D340 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v34 = sub_249E7A6B8();
    __swift_project_value_buffer(v34, qword_28130E708);
    v35 = v0;
    v36 = sub_249E7A698();
    v37 = sub_249E7AE28();

    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_4();
    v38 = OUTLINED_FUNCTION_2();
    *v1 = 138412290;
    *(v1 + 4) = v35;
    *v38 = v35;
    v39 = v35;
    v40 = "Accessory does not support Drop In. Not creating Drop In Device from Accessory %@";
    goto LABEL_22;
  }

  if ((sub_249DF3F70() & 1) == 0)
  {
    if (qword_28130D340 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v41 = sub_249E7A6B8();
    __swift_project_value_buffer(v41, qword_28130E708);
    v42 = v0;
    v36 = sub_249E7A698();
    v37 = sub_249E7AE28();

    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_4();
    v38 = OUTLINED_FUNCTION_2();
    *v1 = 138412290;
    *(v1 + 4) = v42;
    *v38 = v42;
    v43 = v42;
    v40 = "Unsupported Accessory. Not creating Drop In Device from Accessory %@";
LABEL_22:
    _os_log_impl(&dword_249DEE000, v36, v37, v40, v1, 0xCu);
    sub_249DF4A68(v38);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
LABEL_23:

    return 0;
  }

  if (qword_28130D340 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = sub_249E7A6B8();
  v14 = __swift_project_value_buffer(v13, qword_28130E708);
  v15 = v0;
  v16 = sub_249E7A698();
  v17 = sub_249E7AE28();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_4();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_249DEE000, v16, v17, "Creating Drop In Device from Accessory %@", v18, 0xCu);
    sub_249DF4A68(v19);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D069A8]) init];
  v22 = [v15 name];
  if (!v22)
  {
    sub_249E7AAA8();
    v22 = sub_249E7AA88();
  }

  [v21 setName_];

  v23 = [v15 uniqueIdentifier];
  sub_249E7A608();

  v24 = sub_249E7A5E8();
  v25 = *(v5 + 8);
  v25(v12, v2);
  [v21 setHomeKitIdentifier_];

  v26 = [v15 home];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 uniqueIdentifier];

    sub_249E7A608();
    v27 = sub_249E7A5E8();
    v25(v10, v2);
  }

  [v21 setHomeKitHomeIdentifier_];

  [v21 setIsCurrentDevice_];
  v29 = v21;
  v30 = sub_249E7A698();
  v31 = sub_249E7AE28();

  if (os_log_type_enabled(v30, v31))
  {
    OUTLINED_FUNCTION_4();
    v32 = OUTLINED_FUNCTION_2();
    *v14 = 138412290;
    *(v14 + 4) = v29;
    *v32 = v29;
    v33 = v29;
    _os_log_impl(&dword_249DEE000, v30, v31, "Successfully created Drop In Device %@", v14, 0xCu);
    sub_249DF4A68(v32);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  return v29;
}

id sub_249DF4570(void *a1)
{
  v1 = a1;
  HMAccessory.description.getter();

  v2 = sub_249E7AA88();

  return v2;
}

uint64_t HMAccessory.description.getter()
{
  v1 = v0;
  v2 = sub_249E7A628();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 room];
  v11 = &off_278FBA000;
  if (v10)
  {
    v12 = v10;
    v13 = [v10 uniqueIdentifier];
    sub_249E7A608();

    v14 = sub_249E7A5D8();
    v16 = v15;
    (*(v5 + 8))(v9, v2);
    v43 = v14;
    v44 = v16;

    MEMORY[0x24C204750](47, 0xE100000000000000);

    v18 = v43;
    v17 = v44;
    v19 = [v12 name];
    v20 = sub_249E7AAA8();
    v22 = v21;

    v43 = v18;
    v44 = v17;

    MEMORY[0x24C204750](v20, v22);

    v11 = &off_278FBA000;

    v24 = v43;
    v23 = v44;
  }

  else
  {
    v24 = 0;
    v23 = 0xE000000000000000;
  }

  v25 = [v1 supportsDropIn];
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_249E7B128();
  MEMORY[0x24C204750](0x203D20656D614E5BLL, 0xE800000000000000);
  v26 = [v1 v11[220]];
  v27 = sub_249E7AAA8();
  v29 = v28;

  MEMORY[0x24C204750](v27, v29);

  MEMORY[0x24C204750](0x69746E656449202CLL, 0xEF203D2072656966);
  v30 = [v1 uniqueIdentifier];
  sub_249E7A608();

  sub_249DF49D8();
  v31 = sub_249E7B2D8();
  MEMORY[0x24C204750](v31);

  (*(v5 + 8))(v9, v2);
  MEMORY[0x24C204750](0x3D206D6F6F52202CLL, 0xE900000000000020);
  MEMORY[0x24C204750](v24, v23);

  MEMORY[0x24C204750](0xD000000000000015, 0x8000000249E82170);
  if (v25)
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (v25)
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  MEMORY[0x24C204750](v32, v33);

  MEMORY[0x24C204750](0xD000000000000016, 0x8000000249E82190);
  v34 = [v1 supportsAnnounce];
  v35 = v34 == 0;
  if (v34)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v35)
  {
    v37 = 0xE500000000000000;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  MEMORY[0x24C204750](v36, v37);

  MEMORY[0x24C204750](0x6D6F48207349202CLL, 0xEF203D20646F5065);
  v38 = sub_249DF3F70();
  v39 = (v38 & 1) == 0;
  if (v38)
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v39)
  {
    v41 = 0xE500000000000000;
  }

  else
  {
    v41 = 0xE400000000000000;
  }

  MEMORY[0x24C204750](v40, v41);

  MEMORY[0x24C204750](93, 0xE100000000000000);
  return v43;
}

unint64_t sub_249DF49D8()
{
  result = qword_28130D350;
  if (!qword_28130D350)
  {
    sub_249E7A628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D350);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_249DF4A68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1()
{

  JUMPOUT(0x24C205870);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_slowAlloc();
}

uint64_t sub_249DF4C00()
{
  v0 = sub_249E7A6B8();
  __swift_allocate_value_buffer(v0, qword_27EF23410);
  __swift_project_value_buffer(v0, qword_27EF23410);
  return sub_249E7A6A8();
}

uint64_t *sub_249DF4C80()
{
  v1 = v0[15];
  sub_249DF2D58(v0[14]);
  v2 = v0[17];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249DF4CB0()
{
  v0 = sub_249DF4C80();

  return MEMORY[0x282200960](v0);
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

uint64_t sub_249DF4D64(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_249DF4DB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_249DF4E08(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_249DF4E20(void *result, int a2)
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

id sub_249DF4E60(uint64_t a1, char **a2)
{
  result = sub_249E51FB4(a1);
  v18 = result;
  for (i = 0; v18 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x24C204D50](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = *(a1 + 8 * i + 32);
    }

    v6 = result;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v7 = [result description];
    v8 = sub_249E7AAA8();
    v10 = v9;

    MEMORY[0x24C204750](v8, v10);

    sub_249E3A128();
    v11 = *(*a2 + 2);
    sub_249E3A220(v11);
    v12 = *a2;
    *(v12 + 2) = v11 + 1;
    v13 = &v12[16 * v11];
    *(v13 + 4) = 0x205D656D6F485BLL;
    *(v13 + 5) = 0xE700000000000000;
    v14 = [v6 accessories];
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v15 = sub_249E7ABE8();

    sub_249DF5054(v15, a2);

    v16 = sub_249DF8ABC();
    v17 = v6;
    sub_249DF5224(v16, v17, a2);
  }

  return result;
}

void sub_249DF5054(uint64_t a1, char **a2)
{
  v19 = sub_249E51FB4(a1);
  for (i = 0; v19 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C204D50](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    sub_249E7B128();

    strcpy(v18, "- [Accessory] ");
    HIBYTE(v18[1]) = -18;
    v7 = [v6 description];
    v8 = sub_249E7AAA8();
    v10 = v9;

    MEMORY[0x24C204750](v8, v10);

    v12 = v18[0];
    v11 = v18[1];
    v13 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_249E3A324(0, *(v13 + 2) + 1, 1, v13);
      *a2 = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_249E3A324((v15 > 1), v16 + 1, 1, v13);
      *a2 = v13;
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v11;
  }
}

void sub_249DF5224(uint64_t a1, void *a2, uint64_t *a3)
{
  v7 = sub_249E51FB4(a1);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C204D50](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v9;
    sub_249DF5734(&v11, a2, a3);
    if (v3)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_249DF530C(uint64_t a1)
{
  v3 = [v1 allHomes];
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v4 = sub_249E7ABE8();

  v8[2] = a1;
  sub_249E51F9C(sub_249DF53BC, v8, v4);
  v6 = v5;

  return v6;
}

id sub_249DF53DC(uint64_t a1)
{
  v3 = [v1 allHomes];
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v4 = sub_249E7ABE8();

  v5 = sub_249E51FB4(v4);
  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  while (1)
  {
    if (v5 == v6)
    {
      v14 = 0;
LABEL_10:

      return v14;
    }

    sub_249E51FD8(v6, v7 == 0, v4);
    result = v7 ? MEMORY[0x24C204D50](v6, v4) : *(v4 + 8 * v6 + 32);
    v9 = result;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v10 = [result accessories];
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v11 = sub_249E7ABE8();

    MEMORY[0x28223BE20](v12);
    v15[2] = a1;
    sub_249E51F9C(sub_249DF6B74, v15, v11);
    v14 = v13;

    ++v6;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249DF558C(id *a1)
{
  v2 = sub_249E7A628();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_249E7A608();

  v8 = sub_249E7A5F8();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

char *sub_249DF5698()
{
  v4 = MEMORY[0x277D84F90];
  v1 = [v0 allHomes];
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v2 = sub_249E7ABE8();

  sub_249DF4E60(v2, &v4);

  return v4;
}

uint64_t sub_249DF5734(void *a1, id a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = [a2 homeAccessControlForUser_];
  v6 = [v5 isRemoteAccessAllowed];

  v7 = sub_249DF8B94(v4);
  sub_249E7B128();
  MEMORY[0x24C204750](0x5D726573555B202DLL, 0xE900000000000020);
  v8 = [v4 description];
  v9 = sub_249E7AAA8();
  v11 = v10;

  MEMORY[0x24C204750](v9, v11);

  MEMORY[0x24C204750](0xD000000000000012, 0x8000000249E82250);
  if (v6)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x24C204750](v12, v13);

  MEMORY[0x24C204750](0xD000000000000013, 0x8000000249E82270);
  if (v7)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v7)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x24C204750](v14, v15);

  MEMORY[0x24C204750](41, 0xE100000000000000);
  sub_249E3A128();
  v16 = *(*a3 + 16);
  result = sub_249E3A220(v16);
  v18 = *a3;
  *(v18 + 16) = v16 + 1;
  v19 = v18 + 16 * v16;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0xE000000000000000;
  return result;
}

void sub_249DF5924()
{
  v1 = [v0 allHomes];
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v2 = sub_249E7ABE8();

  v3 = 0;
  v45 = v2 & 0xC000000000000001;
  v46 = sub_249E51FB4(v2);
  v44 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = MEMORY[0x277D84F90];
  v40 = v2;
  v43 = v2 + 32;
  while (v3 != v46)
  {
    if (v45)
    {
      v5 = MEMORY[0x24C204D50](v3, v40);
    }

    else
    {
      if (v3 >= *(v44 + 16))
      {
        goto LABEL_53;
      }

      v5 = *(v43 + 8 * v3);
    }

    v6 = v5;
    v7 = __OFADD__(v3++, 1);
    if (v7)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      return;
    }

    v8 = [v5 accessories];
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v9 = sub_249E7ABE8();

    if (v9 >> 62)
    {
      v10 = sub_249E7B068();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v12 = sub_249E7B068();
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v12 + v10;
    if (__OFADD__(v12, v10))
    {
      goto LABEL_54;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v11)
      {
LABEL_19:
        sub_249E7B068();
      }

      else
      {
        v14 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
        v15 = *(v14 + 16);
      }

      v4 = sub_249E7B158();
      v14 = v4 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_21;
    }

    if (v11)
    {
      goto LABEL_19;
    }

    v14 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v13 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_21:
    v16 = *(v14 + 16);
    v17 = (*(v14 + 24) >> 1) - v16;
    v18 = v14 + 8 * v16;
    if (v9 >> 62)
    {
      v21 = sub_249E7B068();
      if (!v21)
      {
        goto LABEL_35;
      }

      v22 = v21;
      v23 = sub_249E7B068();
      if (v17 < v23)
      {
        goto LABEL_60;
      }

      if (v22 < 1)
      {
        goto LABEL_61;
      }

      v41 = v23;
      v42 = v4;
      v24 = v18 + 32;
      sub_249DF695C();
      for (i = 0; i != v22; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234C8, &unk_249E7D650);
        v26 = sub_249E51E9C(v47, i, v9);
        v28 = *v27;
        (v26)(v47, 0);
        *(v24 + 8 * i) = v28;
      }

      v4 = v42;
      v19 = v41;
LABEL_31:

      if (v19 < v10)
      {
        goto LABEL_55;
      }

      if (v19 > 0)
      {
        v29 = *(v14 + 16);
        v7 = __OFADD__(v29, v19);
        v30 = v29 + v19;
        if (v7)
        {
          goto LABEL_58;
        }

        *(v14 + 16) = v30;
      }
    }

    else
    {
      v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        if (v17 < v19)
        {
          goto LABEL_59;
        }

        v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        swift_arrayInitWithCopy();
        goto LABEL_31;
      }

LABEL_35:

      if (v10 > 0)
      {
        goto LABEL_55;
      }
    }
  }

  v47[0] = MEMORY[0x277D84F90];
  v31 = sub_249E51FB4(v4);
  v32 = 0;
  v33 = v4 & 0xC000000000000001;
  v34 = v4;
  v35 = v4 & 0xFFFFFFFFFFFFFF8;
  while (v31 != v32)
  {
    if (v33)
    {
      v36 = MEMORY[0x24C204D50](v32, v34);
    }

    else
    {
      if (v32 >= *(v35 + 16))
      {
        goto LABEL_57;
      }

      v36 = *(v34 + 8 * v32 + 32);
    }

    v37 = v36;
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_56;
    }

    v39 = sub_249DF4038();

    ++v32;
    if (v39)
    {
      MEMORY[0x24C2047D0]();
      if (*((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_249E7AC08();
      }

      sub_249E7AC18();
      v32 = v38;
    }
  }
}

uint64_t sub_249DF5D84(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v2 = sub_249E7ABE8();
  return sub_249DF5DE8(v1, v2);
}

uint64_t sub_249DF5E08(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_249E7A628();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23750, &qword_249E7E130);
  v2[28] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249DF5F54, 0, 0);
}

uint64_t sub_249DF5F54()
{
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_249DF6070;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF234B8, &qword_249E7D648);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_249DF5D84;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 loadHomes_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_249DF6070()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_249DF6150, 0, 0);
}

void sub_249DF6150()
{
  v1 = *(v0 + 176);
  v2 = v0 + 144;
  v3 = 0;
  v77 = v1 & 0xC000000000000001;
  v79 = sub_249E51FB4(v1);
  v69 = v1;
  v73 = v1 + 32;
  v75 = v1 & 0xFFFFFFFFFFFFFF8;
  v4 = MEMORY[0x277D84F90];
  while (v3 != v79)
  {
    if (v77)
    {
      v5 = MEMORY[0x24C204D50](v3, v69);
    }

    else
    {
      if (v3 >= *(v75 + 16))
      {
        goto LABEL_63;
      }

      v5 = *(v73 + 8 * v3);
    }

    v6 = v5;
    v7 = __OFADD__(v3, 1);
    v8 = v3 + 1;
    if (v7)
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return;
    }

    v9 = [v5 accessories];
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v10 = sub_249E7ABE8();

    if (v10 >> 62)
    {
      v11 = sub_249E7B068();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v4 >> 62;
    if (v4 >> 62)
    {
      v13 = sub_249E7B068();
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v13 + v11;
    if (__OFADD__(v13, v11))
    {
      goto LABEL_64;
    }

    v83 = v11;
    v85 = v8;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v12)
      {
LABEL_19:
        sub_249E7B068();
      }

      else
      {
        v15 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
        v17 = *(v15 + 16);
      }

      v4 = sub_249E7B158();
      v15 = v4 & 0xFFFFFFFFFFFFFF8;
      v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_21;
    }

    if (v12)
    {
      goto LABEL_19;
    }

    v15 = v4 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v16 < v14)
    {
      goto LABEL_18;
    }

LABEL_21:
    v18 = *(v15 + 16);
    v19 = v16 - v18;
    v20 = v15 + 8 * v18;
    if (v10 >> 62)
    {
      v23 = sub_249E7B068();
      if (!v23)
      {
        goto LABEL_35;
      }

      v24 = v23;
      v25 = sub_249E7B068();
      if (v19 < v25)
      {
        goto LABEL_70;
      }

      if (v24 < 1)
      {
        goto LABEL_71;
      }

      v70 = v25;
      v81 = v4;
      v26 = v20 + 32;
      sub_249DF695C();
      for (i = 0; i != v24; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234C8, &unk_249E7D650);
        v28 = sub_249E51E9C(v2, i, v10);
        v30 = *v29;
        (v28)(v2, 0);
        *(v26 + 8 * i) = v30;
      }

      v4 = v81;
      v21 = v70;
LABEL_31:

      v3 = v85;
      if (v21 < v83)
      {
        goto LABEL_65;
      }

      if (v21 > 0)
      {
        v31 = *(v15 + 16);
        v7 = __OFADD__(v31, v21);
        v32 = v31 + v21;
        if (v7)
        {
          goto LABEL_68;
        }

        *(v15 + 16) = v32;
      }
    }

    else
    {
      v21 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        if (v19 < v21)
        {
          goto LABEL_69;
        }

        v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        swift_arrayInitWithCopy();
        goto LABEL_31;
      }

LABEL_35:

      v3 = v85;
      if (v83 > 0)
      {
        goto LABEL_65;
      }
    }
  }

  v33 = v68[28];
  v34 = v68[26];

  v35 = 0;
  v84 = v4 & 0xC000000000000001;
  v86 = sub_249E51FB4(v4);
  v80 = v4 & 0xFFFFFFFFFFFFFF8;
  v82 = v4;
  v71 = (v34 + 32);
  v76 = (v34 + 8);
  v78 = v33;
  while (1)
  {
    if (v86 == v35)
    {

      v37 = 0;
      goto LABEL_59;
    }

    if (v84)
    {
      v36 = MEMORY[0x24C204D50](v35, v4);
    }

    else
    {
      if (v35 >= *(v80 + 16))
      {
        goto LABEL_67;
      }

      v36 = *(v4 + 8 * v35 + 32);
    }

    v37 = v36;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_66;
    }

    v38 = v68[32];
    v39 = v68[25];
    v40 = v68[23];
    v41 = [v36 uniqueIdentifier];
    sub_249E7A608();

    v42 = 1;
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
    v43 = [v40 homeKitIdentifier];
    if (v43)
    {
      v44 = v43;
      v45 = v68[31];
      sub_249E7A608();

      v42 = 0;
    }

    v47 = v68[31];
    v46 = v68[32];
    v48 = v68[29];
    v49 = v68[25];
    __swift_storeEnumTagSinglePayload(v47, v42, 1, v49);
    v50 = *(v33 + 48);
    sub_249DF6A08(v46, v48);
    sub_249DF6A08(v47, v48 + v50);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v49);
    v52 = v68[25];
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    sub_249DF6A08(v68[29], v68[30]);
    v54 = __swift_getEnumTagSinglePayload(v48 + v50, 1, v52);
    v55 = v68[31];
    v56 = v68[32];
    v57 = v68[30];
    if (v54 == 1)
    {
      v58 = v68[25];
      sub_249DF6A78(v68[31], &qword_27EF234B0, &qword_249E7D910);
      sub_249DF6A78(v56, &qword_27EF234B0, &qword_249E7D910);
      (*v76)(v57, v58);
      v33 = v78;
      goto LABEL_53;
    }

    v74 = v68[29];
    v59 = v68[27];
    v60 = v68[25];
    (*v71)(v59, v48 + v50, v60);
    sub_249DF6AD8();
    v72 = sub_249E7AA78();
    v61 = *v76;
    (*v76)(v59, v60);
    sub_249DF6A78(v55, &qword_27EF234B0, &qword_249E7D910);
    sub_249DF6A78(v56, &qword_27EF234B0, &qword_249E7D910);
    v61(v57, v60);
    sub_249DF6A78(v74, &qword_27EF234B0, &qword_249E7D910);
    v4 = v82;
    v33 = v78;
    if (v72)
    {
      goto LABEL_58;
    }

LABEL_55:

    ++v35;
  }

  v53 = v68[32];
  sub_249DF6A78(v68[31], &qword_27EF234B0, &qword_249E7D910);
  sub_249DF6A78(v53, &qword_27EF234B0, &qword_249E7D910);
  if (__swift_getEnumTagSinglePayload(v48 + v50, 1, v52) != 1)
  {
LABEL_53:
    sub_249DF6A78(v68[29], &qword_27EF23750, &qword_249E7E130);
    v4 = v82;
    goto LABEL_55;
  }

  sub_249DF6A78(v68[29], &qword_27EF234B0, &qword_249E7D910);
LABEL_58:

LABEL_59:
  v63 = v68[31];
  v62 = v68[32];
  v64 = v68[29];
  v65 = v68[30];
  v66 = v68[27];

  v67 = v68[1];

  v67(v37);
}

uint64_t sub_249DF686C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_249DF691C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_249DF695C()
{
  result = qword_28130D290;
  if (!qword_28130D290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF234C8, &unk_249E7D650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D290);
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

uint64_t sub_249DF6A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249DF6A78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_249DF6AD8()
{
  result = qword_27EF23760;
  if (!qword_27EF23760)
  {
    sub_249E7A628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23760);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_249DF6C2C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_249E7A6B8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_249E7A6A8();
}

uint64_t sub_249DF6CAC()
{
  sub_249DF758C();

  v1 = OBJC_IVAR____TtC10DropInCore18AudioSystemManager_logger;
  v2 = sub_249E7A6B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_249DF77C0(v0 + OBJC_IVAR____TtC10DropInCore18AudioSystemManager_xpcClientDataSource);
  return v0;
}

uint64_t sub_249DF6D28()
{
  sub_249DF6CAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AudioSystemManager()
{
  result = qword_28130DA38;
  if (!qword_28130DA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249DF6DD4()
{
  result = sub_249E7A6B8();
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

uint64_t sub_249DF6E7C()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = *MEMORY[0x277D6EF70];
  v2 = swift_allocObject();
  swift_weakInit();
  v18 = sub_249DF7628;
  v19 = v2;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_249DF7064;
  v17 = &block_descriptor_0;
  v3 = _Block_copy(&v14);

  v4 = OUTLINED_FUNCTION_2_0();
  v6 = [v4 v5];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v7 = *MEMORY[0x277D6EF68];
  v8 = swift_allocObject();
  swift_weakInit();
  v18 = sub_249DF7674;
  v19 = v8;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_249DF7064;
  v17 = &block_descriptor_15;
  v9 = _Block_copy(&v14);

  v10 = OUTLINED_FUNCTION_2_0();
  v12 = [v10 v11];
  _Block_release(v9);

  return swift_unknownObjectRelease();
}

uint64_t sub_249DF7064(uint64_t a1)
{
  v2 = sub_249E7A468();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  sub_249E7A448();

  v12(v10);

  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_249DF7144(uint64_t a1, uint64_t a2, const char *a3, SEL *a4, SEL *a5)
{
  v7 = type metadata accessor for XPCClient();
  v8 = OUTLINED_FUNCTION_3(v7);
  v57 = v9;
  v58 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = sub_249E7A468();
  v16 = OUTLINED_FUNCTION_3(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    (*(v18 + 16))(v23, a1, v15);
    v26 = sub_249E7A698();
    v27 = sub_249E7AE28();
    v56 = v25;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v52 = a3;
      v29 = swift_slowAlloc();
      v60 = v29;
      *v28 = 136315138;
      sub_249DF7768();
      v30 = sub_249E7B2D8();
      v32 = v31;
      (*(v18 + 8))(v23, v15);
      v33 = sub_249E3A958(v30, v32, &v60);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_249DEE000, v26, v27, v52, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C205870](v29, -1, -1);
      MEMORY[0x24C205870](v28, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v23, v15);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v34 = sub_249E3F064();
      swift_unknownObjectRelease();
      v35 = v34 + 56;
      v36 = 1 << *(v34 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & *(v34 + 56);
      v39 = (v36 + 63) >> 6;

      v40 = 0;
      v41 = &off_278FBA000;
      v42 = &qword_27EF234D0;
      v43 = MEMORY[0x277D84F70];
      v53 = v34;
      if (v38)
      {
        goto LABEL_13;
      }

      while (1)
      {
        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v44 >= v39)
        {
        }

        v38 = *(v35 + 8 * v44);
        ++v40;
        if (v38)
        {
          v40 = v44;
          do
          {
LABEL_13:
            sub_249DF76A8(*(v34 + 48) + *(v57 + 72) * (__clz(__rbit64(v38)) | (v40 << 6)), v14);
            v45 = [*(v14 + *(v58 + 20)) v41[241]];
            sub_249E7AFF8();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(v42, &qword_249E7D6C8);
            if (swift_dynamicCast())
            {
              v46 = v14;
              v47 = v43;
              v48 = v42;
              v49 = v41;
              v50 = *(v56 + 16);
              swift_unknownObjectRetain();
              v51 = v50;
              v41 = v49;
              v42 = v48;
              v43 = v47;
              v14 = v46;
              v34 = v53;
              [v59 *a5];
              swift_unknownObjectRelease_n();
            }

            v38 &= v38 - 1;
            result = sub_249DF770C(v14);
          }

          while (v38);
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

void sub_249DF758C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D6EF70] object:0];
  [v1 removeObserver:v0 name:*MEMORY[0x277D6EF68] object:0];
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249DF76A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCClient();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249DF770C(uint64_t a1)
{
  v2 = type metadata accessor for XPCClient();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_249DF7768()
{
  result = qword_28130D370[0];
  if (!qword_28130D370[0])
  {
    sub_249E7A468();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28130D370);
  }

  return result;
}

id sub_249DF7818()
{
  v1 = [v0 userIDSURI];
  if (qword_27EF22FA8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v2 = sub_249E7A6B8();
  __swift_project_value_buffer(v2, qword_27EF291A0);
  v3 = v1;
  v4 = v0;
  v5 = sub_249E7A698();
  v6 = sub_249E7AE28();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_6();
    v9 = OUTLINED_FUNCTION_4_0();
    v16 = v9;
    *v7 = 136315394;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234F0, &qword_249E7D770);
    v11 = sub_249E7AAC8();
    v13 = sub_249E3A958(v11, v12, &v16);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = v4;
    v14 = v4;
    _os_log_impl(&dword_249DEE000, v5, v6, "UserIDSURI = %s for User %@", v7, 0x16u);
    sub_249DF6A78(v8, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  return v1;
}

id sub_249DF79F8(uint64_t a1)
{
  v3 = [v1 device];
  v4 = [v3 IDSDestinationForIDSService_];
  if (qword_27EF22FA8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v5 = sub_249E7A6B8();
  __swift_project_value_buffer(v5, qword_27EF291A0);
  v6 = v4;
  v7 = v3;
  v8 = v1;
  v9 = sub_249E7A698();
  v10 = sub_249E7AE28();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_4_0();
    v12 = OUTLINED_FUNCTION_6();
    v23 = swift_slowAlloc();
    *v11 = 136315650;
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234E0, &qword_249E7D760);
    v14 = sub_249E7AAC8();
    v16 = sub_249E3A958(v14, v15, &v23);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234E8, &qword_249E7D768);
    v18 = sub_249E7AAC8();
    v20 = sub_249E3A958(v18, v19, &v23);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2112;
    *(v11 + 24) = v8;
    *v12 = v8;
    v21 = v8;
    _os_log_impl(&dword_249DEE000, v9, v10, "IDSDestination = %s, Home Device = %s, for Accessory %@", v11, 0x20u);
    sub_249DF6A78(v12, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {
  }

  return v4;
}

uint64_t sub_249DF7C78(void *a1)
{
  v3 = sub_249E7A628();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = [a1 activeDevices];
  v45 = sub_249DF89D8();
  v15 = sub_249E7ABE8();

  sub_249DF80E4(v15);
  v17 = v16;

  v55 = MEMORY[0x277D84F90];
  v18 = sub_249E51FB4(v17);
  v19 = 0;
  v49 = v17 & 0xC000000000000001;
  v50 = v18;
  v46 = v17;
  v47 = v17 + 32;
  v48 = v17 & 0xFFFFFFFFFFFFFF8;
  v53 = v6 + 16;
LABEL_2:
  while (v19 != v50)
  {
    if (v49)
    {
      v20 = MEMORY[0x24C204D50](v19, v46);
    }

    else
    {
      if (v19 >= *(v48 + 16))
      {
        goto LABEL_23;
      }

      v20 = *(v47 + 8 * v19);
    }

    v21 = v20;
    if (__OFADD__(v19++, 1))
    {
      goto LABEL_22;
    }

    v23 = sub_249DF8978(v20);
    if (v23)
    {
      v24 = v23;
      v51 = v21;
      v52 = v19;
      v25 = 0;
      v26 = *(v23 + 16);
      while (1)
      {
        if (v26 == v25)
        {

          v19 = v52;
          goto LABEL_2;
        }

        if (v25 >= *(v24 + 16))
        {
          break;
        }

        (*(v6 + 16))(v13, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25++, v1);
        v27 = [v54 uniqueIdentifier];
        sub_249E7A608();

        LOBYTE(v27) = sub_249E7A5F8();
        v28 = *(v6 + 8);
        v28(v11, v1);
        v28(v13, v1);
        if (v27)
        {

          sub_249E7B1A8();
          v29 = v55[2];
          sub_249E7B1D8();
          sub_249E7B1E8();
          sub_249E7B1B8();
          v19 = v52;
          goto LABEL_2;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v1 = v55;
  if (qword_27EF22FA8 == -1)
  {
    goto LABEL_17;
  }

LABEL_24:
  OUTLINED_FUNCTION_0_2();
LABEL_17:
  v30 = sub_249E7A6B8();
  __swift_project_value_buffer(v30, qword_27EF291A0);
  v31 = v46;

  v32 = v54;
  v33 = sub_249E7A698();
  v34 = sub_249E7AE28();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_4_0();
    v36 = OUTLINED_FUNCTION_6();
    v37 = OUTLINED_FUNCTION_4_0();
    v55 = v37;
    *v35 = 134218498;
    v38 = sub_249E51FB4(v31);

    *(v35 + 4) = v38;

    *(v35 + 12) = 2080;
    v39 = MEMORY[0x24C204800](v1, v45);
    v41 = sub_249E3A958(v39, v40, &v55);

    *(v35 + 14) = v41;
    *(v35 + 22) = 2112;
    *(v35 + 24) = v32;
    *v36 = v32;
    v42 = v32;
    _os_log_impl(&dword_249DEE000, v33, v34, "All User Rapport Devices Count = %ld, User Devices = %s for User %@", v35, 0x20u);
    sub_249DF6A78(v36, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v1;
}

void sub_249DF80E4(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = sub_249E51FB4();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C204D50](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    if (sub_249E616D8() && !sub_249E61798())
    {
      sub_249E7B1A8();
      v6 = *(v7 + 16);
      sub_249E7B1D8();
      sub_249E7B1E8();
      sub_249E7B1B8();
    }

    else
    {
    }
  }
}

char *sub_249DF8210(void *a1)
{
  v3 = sub_249E7A628();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23750, &qword_249E7E130);
  v10 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v12 = &v56 - v11;
  v13 = &qword_27EF234B0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v64 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v56 - v21);
  v23 = [a1 activeDevices];
  v57 = sub_249DF89D8();
  v24 = sub_249E7ABE8();

  sub_249DF884C(v24);
  v26 = v25;

  v71 = MEMORY[0x277D84F90];
  v27 = sub_249E51FB4(v26);
  v28 = 0;
  v67 = v26 & 0xFFFFFFFFFFFFFF8;
  v68 = v26 & 0xC000000000000001;
  v58 = (v6 + 32);
  v59 = v22;
  v62 = (v6 + 8);
  v63 = v27;
  v65 = v26;
  while (v27 != v28)
  {
    if (v68)
    {
      v29 = MEMORY[0x24C204D50](v28, v26);
    }

    else
    {
      if (v28 >= *(v67 + 16))
      {
        goto LABEL_30;
      }

      v29 = *(v26 + 8 * v28 + 32);
    }

    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v70 = v29;
    v30 = [v29 homeKitIdentifier];
    if (v30)
    {
      v31 = v30;
      sub_249E7A608();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    __swift_storeEnumTagSinglePayload(v22, v32, 1, v1);
    v33 = [v69 uniqueIdentifier];
    sub_249E7A608();

    __swift_storeEnumTagSinglePayload(v20, 0, 1, v1);
    v34 = *(v66 + 48);
    sub_249DF6A08(v22, v12);
    sub_249DF6A08(v20, &v12[v34]);
    OUTLINED_FUNCTION_5(v12);
    if (v36)
    {
      OUTLINED_FUNCTION_2_1(v20);
      OUTLINED_FUNCTION_2_1(v22);
      OUTLINED_FUNCTION_5(&v12[v34]);
      if (!v36)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_2_1(v12);
    }

    else
    {
      v35 = v64;
      sub_249DF6A08(v12, v64);
      OUTLINED_FUNCTION_5(&v12[v34]);
      if (v36)
      {
        OUTLINED_FUNCTION_2_1(v20);
        OUTLINED_FUNCTION_2_1(v22);
        (*v62)(v35, v1);
        v27 = v63;
LABEL_18:
        sub_249DF6A78(v12, &qword_27EF23750, &qword_249E7E130);
LABEL_19:

        goto LABEL_22;
      }

      v37 = v13;
      v38 = v60;
      (*v58)(v60, &v12[v34], v1);
      sub_249DF6AD8();
      v61 = sub_249E7AA78();
      v39 = *v62;
      v40 = v38;
      v22 = v59;
      v13 = v37;
      (*v62)(v40, v1);
      OUTLINED_FUNCTION_2_1(v20);
      OUTLINED_FUNCTION_2_1(v22);
      v39(v35, v1);
      v26 = v65;
      OUTLINED_FUNCTION_2_1(v12);
      v27 = v63;
      if ((v61 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_249E7B1A8();
    v41 = v71[2];
    sub_249E7B1D8();
    v26 = v65;
    sub_249E7B1E8();
    sub_249E7B1B8();
LABEL_22:
    ++v28;
  }

  v22 = v71;
  if (qword_27EF22FA8 == -1)
  {
    goto LABEL_25;
  }

LABEL_31:
  OUTLINED_FUNCTION_0_2();
LABEL_25:
  v42 = sub_249E7A6B8();
  __swift_project_value_buffer(v42, qword_27EF291A0);

  v43 = v69;
  v44 = sub_249E7A698();
  v45 = sub_249E7AE28();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_4_0();
    v47 = v26;
    v48 = OUTLINED_FUNCTION_6();
    v49 = OUTLINED_FUNCTION_4_0();
    v71 = v49;
    *v46 = 134218498;
    v50 = sub_249E51FB4(v47);

    *(v46 + 4) = v50;

    *(v46 + 12) = 2080;
    v51 = MEMORY[0x24C204800](v22, v57);
    v53 = sub_249E3A958(v51, v52, &v71);

    *(v46 + 14) = v53;
    *(v46 + 22) = 2112;
    *(v46 + 24) = v43;
    *v48 = v43;
    v54 = v43;
    _os_log_impl(&dword_249DEE000, v44, v45, "All Accessory Rapport Devices Count = %ld, Accessory Devices = %s for Accessory %@", v46, 0x20u);
    sub_249DF6A78(v48, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v22;
}

void sub_249DF884C(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = sub_249E51FB4(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C204D50](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    if (sub_249E616D8() && sub_249E61798())
    {
      sub_249E7B1A8();
      v6 = *(v7 + 16);
      sub_249E7B1D8();
      sub_249E7B1E8();
      sub_249E7B1B8();
    }

    else
    {
    }
  }
}

uint64_t sub_249DF8978(void *a1)
{
  v1 = [a1 homeKitUserIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_249E7A628();
  v3 = sub_249E7ABE8();

  return v3;
}

unint64_t sub_249DF89D8()
{
  result = qword_27EF234D8;
  if (!qword_27EF234D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF234D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{

  return sub_249DF6A78(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6()
{

  return swift_slowAlloc();
}

uint64_t sub_249DF8ABC()
{
  v1 = [v0 dic_users];
  sub_249DF691C(0, &unk_28130D190, 0x277CD1EE0);
  v2 = OUTLINED_FUNCTION_14();

  v3 = [v0 currentUser];
  MEMORY[0x24C2047D0]();
  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_249E7AC08();
  }

  sub_249E7AC18();
  return v2;
}

uint64_t sub_249DF8B94(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24200, &qword_249E80860);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v29[-v10];
  v12 = [v2 homeAccessControlForUser_];
  v13 = [v12 audioAnalysisUserDropInAccessLevel];

  v14 = v13 == 2;
  sub_249E7A788();
  sub_249DFC174(&qword_28130D338);
  sub_249DFC174(&qword_28130D330);
  sub_249DFC174(&qword_28130D328);
  sub_249E7A6E8();
  (*(v7 + 8))(v11, v4);
  if (v29[15] == 1)
  {
    if (qword_27EF22FA0 != -1)
    {
      swift_once();
    }

    v15 = sub_249E7A6B8();
    __swift_project_value_buffer(v15, qword_27EF29188);
    v16 = a1;
    v17 = sub_249E7A698();
    v18 = sub_249E7AE28();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v13 == 2;
      v20 = swift_slowAlloc();
      v21 = OUTLINED_FUNCTION_6();
      *v20 = 138412546;
      *(v20 + 4) = v16;
      *v21 = v16;
      *(v20 + 12) = 1024;
      *(v20 + 14) = v19;
      v22 = v16;
      OUTLINED_FUNCTION_1_1();
      _os_log_impl(v23, v24, v25, v26, v27, 0x12u);
      sub_249DF6A78(v21, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_3_1();
    }

    return 1;
  }

  return v14;
}

void sub_249DF8E38()
{
  v1 = [v0 accessories];
  sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
  v2 = sub_249E7ABE8();

  v9 = MEMORY[0x277D84F90];
  v3 = sub_249E51FB4(v2);
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C204D50](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v8 = sub_249DF4038();

    ++v4;
    if (v8)
    {
      MEMORY[0x24C2047D0]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_249E7AC08();
      }

      sub_249E7AC18();
      v4 = v7;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

id sub_249DF8FA4(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (qword_27EF22FB8 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_3();
  }

  v13 = sub_249E7A6B8();
  __swift_project_value_buffer(v13, qword_27EF291B8);

  v14 = a7;

  v15 = sub_249E7A698();
  v16 = sub_249E7ADE8();

  v44 = a4;
  v43 = a3;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = OUTLINED_FUNCTION_6();
    v49[0] = swift_slowAlloc();
    *v17 = 136315906;
    *(v17 + 4) = sub_249E3A958(a1, a2, v49);
    *(v17 + 12) = 2080;
    v47 = a3;
    v48 = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
    v18 = sub_249E7AAC8();
    v20 = sub_249E3A958(v18, v19, v49);

    *(v17 + 14) = v20;
    *(v17 + 22) = 2080;
    v47 = a5;
    v48 = a6;

    v21 = sub_249E7AAC8();
    v23 = sub_249E3A958(v21, v22, v49);

    *(v17 + 24) = v23;
    *(v17 + 32) = 2112;
    *(v17 + 34) = v14;
    *v42 = v14;
    v24 = v14;
    _os_log_impl(&dword_249DEE000, v15, v16, "Searching for User with senderCorrelationIdentifier: %s, fromID: %s, pairingIdentityIdentifier: %s, IDSService: %@", v17, 0x2Au);
    sub_249DF6A78(v42, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_3_1();
  }

  a7 = sub_249DF8ABC();
  v25 = sub_249E51FB4(a7);
  a4 = 0;
  a3 = (a7 & 0xC000000000000001);
  while (v25 != a4)
  {
    if (a3)
    {
      v28 = OUTLINED_FUNCTION_13();
      v26 = MEMORY[0x24C204D50](v28);
    }

    else
    {
      if (a4 >= *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v26 = *(a7 + 8 * a4 + 32);
    }

    v27 = v26;
    if (__OFADD__(a4, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v47 = v26;
    if (sub_249DF9388(&v47, a5, a6, a1, a2))
    {

      return v27;
    }

    ++a4;
  }

  if (!v44)
  {
    goto LABEL_18;
  }

  v29 = sub_249E7A698();
  v30 = sub_249E7ADE8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v31);
    _os_log_impl(&dword_249DEE000, v29, v30, "Failed to find a user. Searching for IDS for owner device with fromID", 0, 2u);
    OUTLINED_FUNCTION_3_1();
  }

  v32 = sub_249DFC1C4(v43, v44, v14);
  if (!v32 || (v32, (v27 = [v45 currentUser]) == 0))
  {
LABEL_18:
    v33 = sub_249E7A698();
    v34 = sub_249E7AE08();
    if (OUTLINED_FUNCTION_4_1(v34))
    {
      v35 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6_0(v35);
      OUTLINED_FUNCTION_1_1();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_3_1();
    }

    return 0;
  }

  return v27;
}

uint64_t sub_249DF9388(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = *a1;
  if (a3)
  {
    v10 = [*a1 pairingIdentity];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 identifier];

      v13 = sub_249E7AAA8();
      v15 = v14;

      if (v13 == a2 && v15 == v7)
      {
        LODWORD(v7) = 1;
      }

      else
      {
        LODWORD(v7) = sub_249E7B318();
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  v17 = sub_249DFC27C(v8, &selRef_senderCorrelationIdentifier);
  if (v18)
  {
    if (v17 == a4 && v18 == a5)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_249E7B318();
    }
  }

  else
  {
    v20 = 0;
  }

  if (qword_27EF22FB8 != -1)
  {
    swift_once();
  }

  v21 = sub_249E7A6B8();
  __swift_project_value_buffer(v21, qword_27EF291B8);
  v22 = v8;
  v23 = sub_249E7A698();
  v24 = sub_249E7ADE8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412802;
    *(v25 + 4) = v22;
    *v26 = v22;
    *(v25 + 12) = 1026;
    *(v25 + 14) = v20 & 1;
    *(v25 + 18) = 1026;
    *(v25 + 20) = v7 & 1;
    v27 = v22;
    _os_log_impl(&dword_249DEE000, v23, v24, "User: %@, SenderCorrelationIdentifierMatches = %{BOOL,public}d, PairingIdentityIdentifierMatches = %{BOOL,public}d", v25, 0x18u);
    sub_249DF6A78(v26, &unk_27EF23C30, &qword_249E7DA20);
    MEMORY[0x24C205870](v26, -1, -1);
    MEMORY[0x24C205870](v25, -1, -1);
  }

  return (v7 | v20) & 1;
}

id sub_249DF95FC(id a1, void *a2)
{
  v3 = v2;
  if (qword_27EF22FB8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = sub_249E7A6B8();
    __swift_project_value_buffer(v6, qword_27EF291B8);
    v7 = a1;
    a1 = a2;
    v8 = sub_249E7A698();
    v9 = sub_249E7ADE8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *(v10 + 12) = 2112;
      *(v10 + 14) = a1;
      *v11 = v7;
      v11[1] = a1;
      v12 = v7;
      v13 = a1;
      _os_log_impl(&dword_249DEE000, v8, v9, "Searching for Accessory with IDS device: %@, IDSService: %@", v10, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    result = [v7 destination];
    if (!result)
    {
      break;
    }

    v15 = result;
    a2 = sub_249DF98D8();

    v16 = [v3 accessories];
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v17 = sub_249E7ABE8();

    v18 = sub_249E51FB4(v17);
    v19 = 0;
    v3 = 0;
    while (1)
    {
      if (v18 == v19)
      {

        v22 = sub_249E7A698();
        v23 = sub_249E7ADE8();
        if (OUTLINED_FUNCTION_4_1(v23))
        {
          v24 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_6_0(v24);
          OUTLINED_FUNCTION_1_1();
          _os_log_impl(v25, v26, v27, v28, v29, 2u);
          OUTLINED_FUNCTION_3_1();
        }

        return 0;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C204D50](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v30 = v20;
      if (sub_249DF9978(&v30, a1, a2))
      {

        return v21;
      }

      ++v19;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    OUTLINED_FUNCTION_0_3();
  }

  __break(1u);
  return result;
}

uint64_t sub_249DF98D8()
{
  v1 = [v0 destinationURIs];
  v2 = sub_249E7AD58();

  v3 = sub_249DFBCD8(v2);

  return sub_249DFBFBC(v3);
}

uint64_t sub_249DF9978(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 device];
  if (!v6 || (v7 = v6, v8 = [v6 IDSDestinationForIDSService_], v7, !v8))
  {
    if (qword_27EF22FB8 != -1)
    {
      swift_once();
    }

    v17 = sub_249E7A6B8();
    __swift_project_value_buffer(v17, qword_27EF291B8);
    v18 = v5;
    v14 = sub_249E7A698();
    v19 = sub_249E7ADE8();

    if (!os_log_type_enabled(v14, v19))
    {
      v12 = 0;
      goto LABEL_13;
    }

    v16 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v18;
    *v20 = v18;
    v21 = v18;
    _os_log_impl(&dword_249DEE000, v14, v19, "Failed to find destination URIs for accessory: %@", v16, 0xCu);
    sub_249DF6A78(v20, &unk_27EF23C30, &qword_249E7DA20);
    MEMORY[0x24C205870](v20, -1, -1);
    v12 = 0;
    goto LABEL_11;
  }

  v9 = [v8 destinationURIs];

  v10 = sub_249E7AD58();
  v11 = sub_249DF9C28(a3, v10);

  v12 = v11 ^ 1;
  if (qword_27EF22FB8 != -1)
  {
    swift_once();
  }

  v13 = sub_249E7A6B8();
  __swift_project_value_buffer(v13, qword_27EF291B8);
  v14 = sub_249E7A698();
  v15 = sub_249E7ADE8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v12 & 1;
    _os_log_impl(&dword_249DEE000, v14, v15, "Found Match: %{BOOL}d", v16, 8u);
LABEL_11:
    MEMORY[0x24C205870](v16, -1, -1);
  }

LABEL_13:

  return v12 & 1;
}

uint64_t sub_249DF9C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v25 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v6 + 40);
      sub_249E7B408();

      sub_249E7AB18();
      v19 = sub_249E7B438();
      v20 = ~(-1 << *(v6 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v6 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v4 = v25;
          goto LABEL_13;
        }

        v22 = (*(v6 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v16)
        {
          break;
        }

        v24 = sub_249E7B318();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_249DF9E00(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, void *a6, void *a7, unint64_t a8, uint64_t a9)
{
  if (qword_27EF22FB8 != -1)
  {
LABEL_67:
    OUTLINED_FUNCTION_0_3();
  }

  v16 = sub_249E7A6B8();
  __swift_project_value_buffer(v16, qword_27EF291B8);

  v17 = a9;

  v18 = sub_249E7A698();
  v19 = sub_249E7ADE8();

  v109 = a4;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v103 = OUTLINED_FUNCTION_6();
    v111 = swift_slowAlloc();
    *v20 = 136316162;
    *(v20 + 4) = sub_249E3A958(a1, a2, &v111);
    *(v20 + 12) = 2080;
    v112 = a3;
    v113 = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
    v104 = a1;
    v21 = a7;
    v22 = sub_249E7AAC8();
    v24 = sub_249E3A958(v22, v23, &v111);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    v112 = a5;
    v113 = a6;

    v25 = sub_249E7AAC8();
    v27 = sub_249E3A958(v25, v26, &v111);

    *(v20 + 24) = v27;
    a4 = v109;
    *(v20 + 32) = 2080;
    v112 = a7;
    v113 = a8;

    v28 = sub_249E7AAC8();
    v30 = sub_249E3A958(v28, v29, &v111);

    *(v20 + 34) = v30;
    a7 = v21;
    a1 = v104;
    *(v20 + 42) = 2112;
    *(v20 + 44) = v17;
    *v103 = v17;
    v31 = v17;
    _os_log_impl(&dword_249DEE000, v18, v19, "Searching for Accessory in IDS with senderCorrelationIdentifier: %s, fromID: %s, idsDeviceID: %s, pairingIdentityIdentifier: %s, idsService: %@", v20, 0x34u);
    sub_249DF6A78(v103, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_7();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_1();
  }

  v32 = v106;
  v33 = sub_249DF8FA4(a1, a2, a3, a4, a7, a8, v17);
  if (v33)
  {
    a1 = v33;
    v34 = v33;
    v35 = sub_249E7A698();
    v36 = sub_249E7ADE8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_4();
      a7 = v34;
      v38 = OUTLINED_FUNCTION_6();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = a1;
      v39 = v34;
      _os_log_impl(&dword_249DEE000, v35, v36, "Found user as potential accessory owner: %@", v37, 0xCu);
      sub_249DF6A78(v38, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_1();
      v32 = v106;
      OUTLINED_FUNCTION_1();
    }

    a9 = [v32 homeAccessControlForUser_];
    v40 = [a9 isOwner];

    if (v40)
    {
      v105 = v34;
      v102 = v17;
      if (a6)
      {
        v41 = sub_249E69574(v17);
        if (v41)
        {
          v42 = v41;
          a2 = sub_249E51FB4(v41);
          v43 = 0;
          a8 = v42 & 0xC000000000000001;
          a4 = v42 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (a2 == v43)
            {

              a4 = v109;
              v34 = v105;
              goto LABEL_30;
            }

            if (a8)
            {
              v44 = MEMORY[0x24C204D50](v43, v42);
            }

            else
            {
              if (v43 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_66;
              }

              v44 = *(v42 + 8 * v43 + 32);
            }

            a1 = v44;
            if (__OFADD__(v43, 1))
            {
              __break(1u);
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v45 = sub_249DFC27C(v44, &selRef_uniqueID);
            if (v46)
            {
              a7 = v46;
              if (v45 == a5 && v46 == a6)
              {

LABEL_55:

                v87 = sub_249DF95FC(a1, v17);
                a4 = v109;
                v34 = v105;
                if (v87)
                {
                  v88 = v87;
                  v89 = v87;
                  v90 = sub_249E7A698();
                  v91 = sub_249E7ADE8();

                  if (os_log_type_enabled(v90, v91))
                  {
                    v92 = OUTLINED_FUNCTION_4();
                    v93 = OUTLINED_FUNCTION_6();
                    *v92 = 138412290;
                    *(v92 + 4) = v89;
                    *v93 = v88;
                    v94 = v89;
                    _os_log_impl(&dword_249DEE000, v90, v91, "Found accessory: %@", v92, 0xCu);
                    sub_249DF6A78(v93, &unk_27EF23C30, &qword_249E7DA20);
                    OUTLINED_FUNCTION_1();
                    OUTLINED_FUNCTION_1();
                  }

                  return;
                }

                if (v109)
                {
                  goto LABEL_31;
                }

LABEL_62:
                v56 = sub_249E7A698();
                v95 = sub_249E7ADE8();
                if (OUTLINED_FUNCTION_4_1(v95))
                {
LABEL_63:
                  v96 = OUTLINED_FUNCTION_9();
                  OUTLINED_FUNCTION_6_0(v96);
                  OUTLINED_FUNCTION_1_1();
                  _os_log_impl(v97, v98, v99, v100, v101, 2u);
                  OUTLINED_FUNCTION_3_1();
                }

LABEL_64:

                return;
              }

              a9 = sub_249E7B318();

              if (a9)
              {
                goto LABEL_55;
              }
            }

            ++v43;
          }
        }
      }

      else
      {
LABEL_30:
        if (!a4)
        {
          goto LABEL_62;
        }

LABEL_31:

        v58 = sub_249E7A698();
        v59 = sub_249E7ADE8();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = OUTLINED_FUNCTION_4();
          v61 = OUTLINED_FUNCTION_4_0();
          v112 = v61;
          *v60 = 136315138;
          *(v60 + 4) = sub_249E3A958(a3, a4, &v112);
          _os_log_impl(&dword_249DEE000, v58, v59, "Searching for accessory with matching fromID: %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v61);
          OUTLINED_FUNCTION_1();
          OUTLINED_FUNCTION_7();
        }

        v62 = [v106 accessories];
        sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
        v63 = OUTLINED_FUNCTION_14();

        v64 = sub_249E51FB4(v63);
        v65 = 0;
        v66 = v63 & 0xC000000000000001;
        v67 = v63 & 0xFFFFFFFFFFFFFF8;
        v108 = v63;
        v68 = v63 + 32;
        v69 = &off_278FBA000;
        while (1)
        {
          if (v65 == v64)
          {

            v34 = v105;
            goto LABEL_62;
          }

          if (v66)
          {
            v70 = MEMORY[0x24C204D50](v65, v108);
          }

          else
          {
            if (v65 >= *(v67 + 16))
            {
              goto LABEL_69;
            }

            v70 = *(v68 + 8 * v65);
          }

          v71 = v70;
          if (__OFADD__(v65++, 1))
          {
            break;
          }

          v73 = [v70 v69[248]];
          if (v73)
          {
            v74 = v73;
            v75 = [v73 IDSDestinationForIDSService_];

            if (v75)
            {
              v76 = [v75 destinationURIs];

              v77 = sub_249E7AD58();
              if (*(v77 + 16))
              {
                v78 = *(v77 + 40);
                sub_249E7B408();
                sub_249E7AB18();
                v79 = sub_249E7B438();
                v80 = a3;
                v81 = ~(-1 << *(v77 + 32));
                while (1)
                {
                  v82 = v79 & v81;
                  if (((*(v77 + 56 + (((v79 & v81) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v79 & v81)) & 1) == 0)
                  {
                    break;
                  }

                  v83 = (*(v77 + 48) + 16 * v82);
                  if (*v83 != v80 || v83[1] != v109)
                  {
                    v85 = sub_249E7B318();
                    v80 = a3;
                    v86 = v85;
                    v79 = v82 + 1;
                    if ((v86 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  return;
                }
              }

              v17 = v102;
              v69 = &off_278FBA000;
            }
          }
        }

        __break(1u);
LABEL_69:
        __break(1u);
      }

      __break(1u);
      return;
    }

    v56 = sub_249E7A698();
    v57 = sub_249E7AE08();
    if (OUTLINED_FUNCTION_4_1(v57))
    {
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  v48 = sub_249E7A698();
  v49 = sub_249E7AE08();
  if (OUTLINED_FUNCTION_4_1(v49))
  {
    v50 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v50);
    OUTLINED_FUNCTION_1_1();
    _os_log_impl(v51, v52, v53, v54, v55, 2u);
    OUTLINED_FUNCTION_3_1();
  }
}

void sub_249DFA758(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_249E7A628();
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  if (qword_27EF22FB8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v12 = sub_249E7A6B8();
  __swift_project_value_buffer(v12, qword_27EF291B8);
  sub_249DFC328(a1, v94);
  v13 = a3;
  v14 = a2;
  v15 = v13;
  v16 = v14;
  v17 = sub_249E7A698();
  v18 = sub_249E7ADE8();
  sub_249DFC384(a1);

  if (os_log_type_enabled(v17, v18))
  {
    v83 = v17;
    v19 = OUTLINED_FUNCTION_4_0();
    v90 = a1;
    v20 = swift_slowAlloc();
    v86 = OUTLINED_FUNCTION_4_0();
    v94[0] = v86;
    *v19 = 136315650;
    v21 = sub_249E30C28();
    v23 = v16;
    v24 = sub_249E3A958(v21, v22, v94);

    *(v19 + 4) = v24;
    v16 = v23;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v23;
    *(v19 + 22) = 2112;
    *(v19 + 24) = v15;
    *v20 = v23;
    v20[1] = a3;
    v25 = v23;
    v26 = v15;
    _os_log_impl(&dword_249DEE000, v83, v18, "Searching for user with senderContext: %s, companionLinkClient: %@, idsService: %@", v19, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    swift_arrayDestroy();
    a1 = v90;
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v86);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();

    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (!a3)
    {
      goto LABEL_11;
    }
  }

  *v94 = *(a1 + 16);
  v27 = v94[1];
  if (!v94[1])
  {
    goto LABEL_11;
  }

  v84 = a3;
  v87 = v16;
  v28 = v94[0];
  v29 = v15;
  sub_249DFC41C(v94, v93);
  v30 = sub_249E7A698();
  v31 = sub_249E7ADE8();
  sub_249DF6A78(v94, &unk_27EF23FA0, &unk_249E7DF00);
  if (os_log_type_enabled(v30, v31))
  {
    v91 = a1;
    v32 = swift_slowAlloc();
    v81 = v28;
    v33 = OUTLINED_FUNCTION_6();
    v34 = OUTLINED_FUNCTION_4_0();
    v93[0] = v34;
    *v32 = 136315394;
    *(v32 + 4) = sub_249E3A958(v81, v27, v93);
    *(v32 + 12) = 2112;
    *(v32 + 14) = v29;
    *v33 = v84;
    v35 = v29;
    _os_log_impl(&dword_249DEE000, v30, v31, "Searching for user with senderCorrelationIdentifier: %s, idsService: %@", v32, 0x16u);
    sub_249DF6A78(v33, &unk_27EF23C30, &qword_249E7DA20);
    v28 = v81;
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_1();
    a1 = v91;
    OUTLINED_FUNCTION_1();
  }

  v36 = sub_249DF8FA4(v28, v27, 0, 0, *(a1 + 48), *(a1 + 56), v29);
  v16 = v87;
  if (!v36)
  {
LABEL_11:
    v37 = [v16 activeDevices];
    sub_249DF691C(0, &qword_27EF234D8, 0x277D44170);
    v38 = sub_249E7ABE8();

    sub_249DFAE4C(*a1, *(a1 + 8), v38);
    v40 = v39;

    if (v40 && (v41 = sub_249DFC214(v40)) != 0)
    {
      v42 = v41;
      v43 = sub_249E7A698();
      v44 = sub_249E7ADE8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = OUTLINED_FUNCTION_4();
        v46 = OUTLINED_FUNCTION_4_0();
        v93[0] = v46;
        *v45 = 136315138;
        v47 = MEMORY[0x24C204800](v42, v6);
        v49 = sub_249E3A958(v47, v48, v93);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_249DEE000, v43, v44, "Searching home for user with in home from rapport userIdentifiers: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_1();
      }

      v50 = sub_249DF8ABC();
      v51 = sub_249E51FB4(v50);
      v52 = 0;
      v53 = v50 & 0xC000000000000001;
      v54 = v50 & 0xFFFFFFFFFFFFFF8;
      v88 = v51;
      v89 = v50;
      v55 = v50 + 32;
      v92 = (v9 + 8);
      v82 = v54;
      v85 = v53;
      v80 = v55;
      while (v52 != v51)
      {
        if (v53)
        {
          v56 = MEMORY[0x24C204D50](v52, v89);
        }

        else
        {
          if (v52 >= *(v54 + 16))
          {
            __break(1u);
LABEL_34:
            __break(1u);
            return;
          }

          v56 = *(v55 + 8 * v52);
        }

        v57 = v56;
        if (__OFADD__(v52++, 1))
        {
          goto LABEL_34;
        }

        v59 = [v56 uniqueIdentifier];
        sub_249E7A608();

        v60 = 0;
        v61 = *(v42 + 16);
        while (v61 != v60)
        {
          v62 = v60 + 1;
          v63 = v42 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v60;
          sub_249DFC3D8(&qword_27EF23760);
          v64 = sub_249E7AA78();
          v60 = v62;
          if (v64)
          {
            v76 = *v92;
            v77 = OUTLINED_FUNCTION_13();
            v78(v77);

            return;
          }
        }

        v65 = *v92;
        v66 = OUTLINED_FUNCTION_13();
        v67(v66);

        v53 = v85;
        v51 = v88;
        v55 = v80;
        v54 = v82;
      }

      v68 = sub_249E7A698();
      v79 = sub_249E7AE08();
      if (!OUTLINED_FUNCTION_4_1(v79))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v68 = sub_249E7A698();
      v69 = sub_249E7AE08();
      if (!OUTLINED_FUNCTION_4_1(v69))
      {
LABEL_29:

        return;
      }
    }

    v70 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v70);
    OUTLINED_FUNCTION_1_1();
    _os_log_impl(v71, v72, v73, v74, v75, 2u);
    OUTLINED_FUNCTION_3_1();
    goto LABEL_29;
  }
}

void sub_249DFAE4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = sub_249E51FB4(a3);
    v15 = 0;
    v36 = a3 & 0xC000000000000001;
    v37 = v14;
    v35 = a3 & 0xFFFFFFFFFFFFFF8;
    while (v37 != v15)
    {
      if (v36)
      {
        v16 = MEMORY[0x24C204D50](v15, a3);
      }

      else
      {
        if (v15 >= *(v35 + 16))
        {
          goto LABEL_33;
        }

        v16 = *(a3 + 8 * v15 + 32);
      }

      v17 = v16;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      v18 = [v16 effectiveIdentifier];
      v19 = sub_249E7AAA8();
      v21 = v20;

      if (v19 == a1 && v21 == a2)
      {
LABEL_30:

        return;
      }

      v23 = sub_249E7B318();

      if (v23)
      {
        return;
      }

      v24 = sub_249DFC27C(v17, &selRef_idsDeviceIdentifier);
      if (v25)
      {
        if (v24 == a1 && v25 == a2)
        {
          goto LABEL_30;
        }

        v27 = sub_249E7B318();

        if (v27)
        {
          return;
        }
      }

      v28 = [v17 homeKitIdentifier];
      if (v28)
      {
        v29 = v28;
        sub_249E7A608();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = sub_249E7A628();
      __swift_storeEnumTagSinglePayload(v10, v30, 1, v31);
      sub_249DFC48C(v10, v12);
      if (__swift_getEnumTagSinglePayload(v12, 1, v31) == 1)
      {
        sub_249DF6A78(v12, &qword_27EF234B0, &qword_249E7D910);
      }

      else
      {
        v40 = a1;
        v41 = a2;
        v38 = sub_249E7A5D8();
        v39 = v32;
        sub_249DFC4FC();
        v33 = sub_249E7AFE8();

        (*(*(v31 - 8) + 8))(v12, v31);
        if (!v33)
        {
          return;
        }
      }

      ++v15;
    }
  }
}

uint64_t sub_249DFB168(uint64_t *a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v99 - v11;
  v107 = sub_249E7A628();
  v13 = OUTLINED_FUNCTION_3(v107);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v105 = &v99 - v21;
  if (qword_27EF22FB8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v22 = sub_249E7A6B8();
  v23 = __swift_project_value_buffer(v22, qword_27EF291B8);
  sub_249DFC328(a1, v108);
  v24 = a3;
  v25 = a2;
  v106 = v23;
  v26 = sub_249E7A698();
  v27 = sub_249E7ADE8();
  sub_249DFC384(a1);

  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_4_0();
    v102 = v20;
    v29 = v28;
    v30 = swift_slowAlloc();
    v103 = v15;
    v31 = v30;
    v101 = OUTLINED_FUNCTION_4_0();
    v108[0] = v101;
    *v29 = 136315650;
    v100 = v27;
    v32 = sub_249E30C28();
    v34 = sub_249E3A958(v32, v33, v108);
    v99 = v26;
    v35 = v24;
    v36 = a1;
    v37 = v25;
    v38 = a3;
    v39 = v10;
    v40 = v12;
    v41 = v34;

    *(v29 + 4) = v41;
    v12 = v40;
    v10 = v39;
    v42 = v38;
    v25 = v37;
    a1 = v36;
    v24 = v35;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v25;
    *(v29 + 22) = 2112;
    *(v29 + 24) = v35;
    *v31 = v25;
    v31[1] = v42;
    v43 = v25;
    v44 = v35;
    v45 = v99;
    _os_log_impl(&dword_249DEE000, v99, v100, "Searching for accessory with senderContext: %s, companionLinkClient: %@, idsService: %@", v29, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    swift_arrayDestroy();
    v15 = v103;
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v101);
    OUTLINED_FUNCTION_7();
    v20 = v102;
    OUTLINED_FUNCTION_1();

    if (!v42)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!a3)
    {
      goto LABEL_10;
    }
  }

  v46 = a1[3];
  if (v46)
  {
    v47 = a1[5];
    if (v47)
    {
      v48 = v25;
      v49 = v12;
      v50 = a1[2];
      v51 = v24;
      v52 = a1[4];
      v102 = v20;
      v103 = v15;
      v53 = a1[6];
      v54 = a1[7];
      v55 = v51;
      v101 = v10;
      v56 = v55;
      v98 = v55;
      v57 = v50;
      v12 = v49;
      v25 = v48;
      v58 = v53;
      v59 = v54;
      v20 = v102;
      v15 = v103;
      sub_249DF9E00(v57, v46, 0, 0, v52, v47, v58, v59, v98);
      v61 = v60;

      v10 = v101;
      if (v61)
      {
        return v61;
      }
    }
  }

LABEL_10:
  v62 = [v25 activeDevices];
  sub_249DF691C(0, &qword_27EF234D8, 0x277D44170);
  v63 = OUTLINED_FUNCTION_14();

  sub_249DFAE4C(*a1, a1[1], v63);
  v65 = v64;

  if (!v65)
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v107);
    goto LABEL_16;
  }

  v66 = [v65 homeKitIdentifier];

  if (v66)
  {
    sub_249E7A608();

    v67 = 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = v105;
  v69 = v107;
  __swift_storeEnumTagSinglePayload(v10, v67, 1, v107);
  sub_249DFC48C(v10, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v69) == 1)
  {
LABEL_16:
    sub_249DF6A78(v12, &qword_27EF234B0, &qword_249E7D910);
    v70 = sub_249E7A698();
    v71 = sub_249E7ADE8();
    if (OUTLINED_FUNCTION_4_1(v71))
    {
      v72 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6_0(v72);
      OUTLINED_FUNCTION_1_1();
      _os_log_impl(v73, v74, v75, v76, v77, 2u);
      OUTLINED_FUNCTION_3_1();
    }

    return 0;
  }

  v78 = v107;
  (*(v15 + 32))(v68, v12, v107);
  (*(v15 + 16))(v20, v68, v78);
  v79 = sub_249E7A698();
  v80 = sub_249E7ADE8();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = OUTLINED_FUNCTION_4();
    v82 = OUTLINED_FUNCTION_4_0();
    v108[0] = v82;
    *v81 = 136315138;
    OUTLINED_FUNCTION_5_0(&qword_28130D350);
    v83 = v107;
    v84 = sub_249E7B2D8();
    v86 = v85;
    v87 = v83;
    v88 = *(v15 + 8);
    v88(v20, v87);
    v89 = sub_249E3A958(v84, v86, v108);

    *(v81 + 4) = v89;
    _os_log_impl(&dword_249DEE000, v79, v80, "Searching Rapport Device for accessory with matching identifier: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7();
  }

  else
  {

    v88 = *(v15 + 8);
    v88(v20, v107);
  }

  v90 = [v104 accessories];
  sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
  v91 = OUTLINED_FUNCTION_14();

  MEMORY[0x28223BE20](v92);
  v98 = v68;
  sub_249E51F9C(sub_249DFC550, &(&v99)[-4], v91);
  v61 = v93;

  if (!v61)
  {
    v94 = sub_249E7A698();
    v95 = sub_249E7ADE8();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = OUTLINED_FUNCTION_9();
      *v96 = 0;
      _os_log_impl(&dword_249DEE000, v94, v95, "Failed to find accessory in Rapport", v96, 2u);
      OUTLINED_FUNCTION_1();
    }
  }

  v88(v68, v107);
  return v61;
}

uint64_t sub_249DFB8C8(id *a1)
{
  v2 = sub_249E7A628();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_249E7A608();

  v8 = sub_249E7A5F8();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

id sub_249DFB9D4(void *a1)
{
  v1 = a1;
  HMHome.description.getter();

  v2 = sub_249E7AA88();

  return v2;
}

uint64_t HMHome.description.getter()
{
  v1 = v0;
  v2 = sub_249E7A628();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_249E7B128();

  v17 = 0x203D20656D614E5BLL;
  v18 = 0xE800000000000000;
  v10 = [v0 name];
  v11 = sub_249E7AAA8();
  v13 = v12;

  MEMORY[0x24C204750](v11, v13);

  MEMORY[0x24C204750](0x69746E656449202CLL, 0xEF203D2072656966);
  v14 = [v1 uniqueIdentifier];
  sub_249E7A608();

  OUTLINED_FUNCTION_5_0(&qword_28130D350);
  v15 = sub_249E7B2D8();
  MEMORY[0x24C204750](v15);

  (*(v5 + 8))(v9, v2);
  MEMORY[0x24C204750](93, 0xE100000000000000);
  return v17;
}

unint64_t sub_249DFBC04(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_249E7AB38();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_249E7AB78();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249DFBCD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v37 = MEMORY[0x277D84F90];
    sub_249E5DA8C(0, v1, 0);
    v3 = v37;
    result = sub_249DFC2DC(v2);
    v7 = result;
    v8 = 0;
    v36 = v2 + 56;
    v31 = v2 + 64;
    v32 = v1;
    v33 = v2;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v2 + 32))
      {
        v9 = v7 >> 6;
        if ((*(v36 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v2 + 36) != v5)
        {
          goto LABEL_29;
        }

        v34 = v6;
        v35 = v5;
        v10 = (*(v2 + 48) + 16 * v7);
        v12 = *v10;
        v11 = v10[1];

        result = sub_249E7AB68();
        if (result)
        {

          v13 = sub_249E7AB28();
          v14 = sub_249DFBC04(v13, v12, v11);
          v12 = MEMORY[0x24C204710](v14);
          v16 = v15;

          v11 = v16;
        }

        v17 = v34;
        v19 = *(v37 + 16);
        v18 = *(v37 + 24);
        v20 = v35;
        if (v19 >= v18 >> 1)
        {
          result = sub_249E5DA8C(v18 > 1, v19 + 1, 1);
          v17 = v34;
          v20 = v35;
        }

        *(v37 + 16) = v19 + 1;
        v21 = v37 + 16 * v19;
        *(v21 + 32) = v12;
        *(v21 + 40) = v11;
        if (v17)
        {
          goto LABEL_33;
        }

        v2 = v33;
        v22 = 1 << *(v33 + 32);
        if (v7 >= v22)
        {
          goto LABEL_30;
        }

        v23 = *(v36 + 8 * v9);
        if ((v23 & (1 << v7)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v33 + 36) != v20)
        {
          goto LABEL_32;
        }

        v24 = v23 & (-2 << (v7 & 0x3F));
        if (v24)
        {
          v22 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v25 = v32;
        }

        else
        {
          v26 = v9 << 6;
          v27 = v9 + 1;
          v25 = v32;
          v28 = (v31 + 8 * v9);
          while (v27 < (v22 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              result = sub_249DFC31C(v7, v20, 0);
              v22 = __clz(__rbit64(v29)) + v26;
              goto LABEL_21;
            }
          }

          result = sub_249DFC31C(v7, v20, 0);
        }

LABEL_21:
        if (++v8 == v25)
        {

          return v3;
        }

        v6 = 0;
        v5 = *(v33 + 36);
        v7 = v22;
        if (v22 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_249DFBFBC(uint64_t a1)
{
  result = MEMORY[0x24C204980](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_249E63E28(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_249DFC07C(uint64_t a1)
{
  v2 = sub_249E51FB4(a1);
  v3 = sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
  v4 = sub_249DFC570();
  v9[1] = MEMORY[0x24C204980](v2, v3, v4);
  v5 = sub_249E51FB4(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_13();
      v7 = MEMORY[0x24C204D50](v8);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_249E63F70(v9, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_249DFC174(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF24200, &qword_249E80860);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_249DFC1C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_249E7AA88();
  v5 = [a3 deviceForFromID_];

  return v5;
}

uint64_t sub_249DFC214(void *a1)
{
  v2 = [a1 homeKitUserIdentifiers];

  if (!v2)
  {
    return 0;
  }

  sub_249E7A628();
  v3 = sub_249E7ABE8();

  return v3;
}

uint64_t sub_249DFC27C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_249E7AAA8();

  return v4;
}

uint64_t sub_249DFC2DC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_249E7B028();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_249DFC31C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_249DFC3D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_249E7A628();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249DFC41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249DFC48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249DFC4FC()
{
  result = qword_27EF234F8;
  if (!qword_27EF234F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF234F8);
  }

  return result;
}

unint64_t sub_249DFC570()
{
  result = qword_28130D158;
  if (!qword_28130D158)
  {
    sub_249DF691C(255, &qword_28130D160, 0x277D069A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D158);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_1()
{

  JUMPOUT(0x24C205870);
}

BOOL OUTLINED_FUNCTION_4_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_0(unint64_t *a1)
{

  return sub_249DFC3D8(a1);
}

void OUTLINED_FUNCTION_7()
{

  JUMPOUT(0x24C205870);
}

uint64_t OUTLINED_FUNCTION_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14()
{

  return sub_249E7ABE8();
}

void *sub_249DFC6C8()
{
  v1 = v0;
  v34 = *MEMORY[0x277D85DE8];
  started = type metadata accessor for StartDropInResponse();
  v3 = *(v0 + started[8]);
  if (v3)
  {
    v4 = objc_opt_self();
    *&v32 = 0;
    v5 = v3;
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v32];
    v7 = v32;
    if (!v6)
    {
      v28 = v7;
      sub_249E7A4D8();

      swift_willThrow();
      goto LABEL_12;
    }

    v8 = sub_249E7A4F8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7C0;
  *(inited + 32) = 0x696E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_249E7A5D8();
  v13 = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  OUTLINED_FUNCTION_3_2();
  *(inited + 72) = v13;
  *(inited + 80) = v15;
  *(inited + 88) = 0xE600000000000000;
  v16 = v1 + started[5];
  *(inited + 96) = sub_249E7A5D8();
  *(inited + 104) = v17;
  *(inited + 120) = v13;
  *(inited + 128) = 0x7350656369766564;
  *(inited + 136) = 0xEF6D796E6F647565;
  v18 = (v1 + started[6]);
  v19 = v18[1];
  *(inited + 144) = *v18;
  *(inited + 152) = v19;
  *(inited + 168) = v13;
  *(inited + 176) = 0xD000000000000019;
  *(inited + 184) = 0x8000000249E82340;
  v20 = started[7];
  v21 = sub_249E7A5B8();
  *(inited + 216) = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 192));
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v1 + v20, v21);

  v5 = sub_249E7AA08();
  if (v10 >> 60 == 15)
  {
    v23 = sub_249DFDA24(0x726F727265, 0xE500000000000000);
    if (v24)
    {
      v25 = v23;
      swift_isUniquelyReferenced_nonNull_native();
      v26 = v5[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23510, &qword_249E7D8E8);
      sub_249E7B208();
      v27 = *(v5[6] + 16 * v25 + 8);

      sub_249DFDB78((v5[7] + 32 * v25), v31);
      sub_249E7B218();
    }

    else
    {
      memset(v31, 0, sizeof(v31));
    }

    sub_249DF6A78(v31, &unk_27EF23C40, &qword_249E7D8E0);
  }

  else
  {
    v33 = MEMORY[0x277CC9318];
    *&v32 = v8;
    *(&v32 + 1) = v10;
    sub_249DFDB78(&v32, v31);
    swift_isUniquelyReferenced_nonNull_native();
    sub_249DFDB88(v31, 0x726F727265, 0xE500000000000000);
  }

LABEL_12:
  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_249DFCA5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v73 - v7;
  v9 = sub_249E7A5B8();
  v10 = OUTLINED_FUNCTION_3(v9);
  v80 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v81 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v73 - v20;
  v87 = sub_249E7A628();
  v22 = OUTLINED_FUNCTION_3(v87);
  v82 = v23;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v22);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v73 - v29;
  sub_249E55870(0x696E6F6973736573, 0xE900000000000064, a1, &v85);
  if (!v86)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_1();
  if ((OUTLINED_FUNCTION_7_0() & 1) == 0)
  {
    goto LABEL_14;
  }

  v78 = a2;
  v79 = v9;
  sub_249E55870(0x6469656D6F68, 0xE600000000000000, a1, &v85);
  if (!v86)
  {

LABEL_10:

LABEL_11:
    v32 = &unk_27EF23C40;
    v33 = &qword_249E7D8E0;
    v34 = &v85;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_1();
  if ((OUTLINED_FUNCTION_7_0() & 1) == 0)
  {

LABEL_14:

    goto LABEL_15;
  }

  v76 = v83;
  v77 = v84;
  sub_249E7A5C8();

  v31 = v87;
  if (__swift_getEnumTagSinglePayload(v21, 1, v87) == 1)
  {

    v32 = &qword_27EF234B0;
    v33 = &qword_249E7D910;
    v34 = v21;
LABEL_12:
    sub_249DF6A78(v34, v32, v33);
LABEL_15:
    sub_249DFE8A4();
    swift_allocError();
    return swift_willThrow();
  }

  v37 = *(v82 + 32);
  v36 = v82 + 32;
  v38 = OUTLINED_FUNCTION_2_2();
  v75 = v39;
  (v39)(v38);
  sub_249E7A5C8();

  v40 = v31;
  if (__swift_getEnumTagSinglePayload(v19, 1, v31) == 1)
  {
    v41 = *(v82 + 8);
    v42 = OUTLINED_FUNCTION_2_2();
    v43(v42);

    v32 = &qword_27EF234B0;
    v33 = &qword_249E7D910;
    v34 = v19;
    goto LABEL_12;
  }

  v75(v28, v19, v31);
  sub_249E55870(0x7350656369766564, 0xEF6D796E6F647565, a1, &v85);
  if (!v86)
  {

    v52 = *(v82 + 8);
    v52(v28, v31);
    v53 = OUTLINED_FUNCTION_2_2();
    (v52)(v53);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_1();
  v44 = OUTLINED_FUNCTION_7_0();
  v45 = v82;
  if ((v44 & 1) == 0)
  {

    v54 = *(v45 + 8);
    v54(v28, v31);
    v55 = OUTLINED_FUNCTION_2_2();
    (v54)(v55);
    goto LABEL_15;
  }

  v77 = v36;
  v46 = v28;
  v47 = v84;
  v76 = v83;
  sub_249E55870(0xD000000000000019, 0x8000000249E82340, a1, &v85);
  if (!v86)
  {

    v56 = *(v45 + 8);
    v56(v28, v40);
    v57 = OUTLINED_FUNCTION_2_2();
    (v56)(v57);
    sub_249DF6A78(&v85, &unk_27EF23C40, &qword_249E7D8E0);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v79);
    goto LABEL_26;
  }

  v74 = v47;
  v48 = v79;
  v49 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v8, v49 ^ 1u, 1, v48);
  if (__swift_getEnumTagSinglePayload(v8, 1, v48) == 1)
  {

    v50 = *(v45 + 8);
    v50(v28, v87);
    v51 = OUTLINED_FUNCTION_2_2();
    (v50)(v51);
LABEL_26:
    v32 = &qword_27EF236C0;
    v33 = &unk_249E7F8F0;
    v34 = v8;
    goto LABEL_12;
  }

  v58 = v80;
  v73 = *(v80 + 32);
  v73(v81, v8, v48);
  sub_249E55870(0x726F727265, 0xE500000000000000, a1, &v85);

  if (v86)
  {
    OUTLINED_FUNCTION_5_1();
    if (OUTLINED_FUNCTION_7_0())
    {
      v59 = v83;
      v60 = v84;
      sub_249DF691C(0, &qword_27EF23528, 0x277CCAAC8);
      sub_249DF691C(0, &qword_28130D168, 0x277CCA9B8);
      v61 = sub_249E7AE38();
      if (v2)
      {

        sub_249DFE8F8(v59, v60);
        (*(v58 + 8))(v81, v79);
        v62 = *(v82 + 8);
        v63 = v87;
        v62(v46, v87);
        return (v62)(v30, v63);
      }

      v64 = v61;
      sub_249DFE8F8(v59, v60);
    }

    else
    {
      v64 = 0;
    }

    v65 = v87;
  }

  else
  {
    sub_249DF6A78(&v85, &unk_27EF23C40, &qword_249E7D8E0);
    v64 = 0;
    v65 = v87;
  }

  v66 = v78;
  v67 = v75;
  v75(v78, v30, v65);
  started = type metadata accessor for StartDropInResponse();
  v69 = v65;
  v70 = started;
  v67(&v66[*(started + 20)], v46, v69);
  result = (v73)(&v66[v70[7]], v81, v79);
  v71 = &v66[v70[6]];
  v72 = v74;
  *v71 = v76;
  v71[1] = v72;
  *&v66[v70[8]] = v64;
  return result;
}

uint64_t sub_249DFD280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_249E7A628();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_249DFD320()
{
  sub_249E05058();
  sub_249E7A9E8();
  OUTLINED_FUNCTION_4_2();
  return v0;
}

uint64_t sub_249DFD390(uint64_t (*a1)(void))
{
  sub_249DFD870(a1);
  sub_249E7A9E8();
  OUTLINED_FUNCTION_4_2();
  return v1;
}

uint64_t sub_249DFD3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  OUTLINED_FUNCTION_3_2();
  *(v1 + 32) = v2;
  *(v1 + 40) = 0xE600000000000000;
  v3 = sub_249E7A5D8();
  v4 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  sub_249E7AA08();
  sub_249E7A9E8();
  OUTLINED_FUNCTION_4_2();
  return v4;
}

uint64_t sub_249DFD4D4(void (*a1)(void))
{
  a1();
  v1 = sub_249E7A9E8();

  return v1;
}

BOOL sub_249DFD588(uint64_t a1, uint64_t a2)
{
  if ((sub_249E7A5F8() & 1) == 0)
  {
    return 0;
  }

  started = type metadata accessor for StartDropInResponse();
  v5 = started[5];
  if ((sub_249E7A5F8() & 1) == 0)
  {
    return 0;
  }

  v6 = started[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  v11 = started[7];
  if ((sub_249E7A578() & 1) == 0)
  {
    return 0;
  }

  v12 = started[8];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  result = (v13 | v14) == 0;
  if (v13)
  {
    if (v14)
    {
      sub_249DF691C(0, &qword_28130D168, 0x277CCA9B8);
      v16 = v14;
      v17 = v13;
      v18 = sub_249E7AF78();

      return v18 & 1;
    }
  }

  return result;
}

uint64_t sub_249DFD68C(uint64_t a1)
{
  result = sub_249DFE7AC(&qword_27EF23500, type metadata accessor for StartDropInResponse);
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for StartDropInResponse()
{
  result = qword_27EF23538;
  if (!qword_27EF23538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249DFD730(uint64_t a1)
{
  result = sub_249DFE7AC(&qword_27EF23508, type metadata accessor for StartDropInResponse);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249DFD788(uint64_t a1)
{
  result = sub_249DFE7AC(&qword_27EF23508, type metadata accessor for StartDropInResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_249DFD870(uint64_t (*a1)(void))
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7E0;
  OUTLINED_FUNCTION_3_2();
  *(v5 + 32) = v6;
  *(v5 + 40) = 0xE600000000000000;
  v7 = sub_249E7A5D8();
  v8 = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = v8;
  *(inited + 80) = 0x726F737365636361;
  *(inited + 88) = 0xEB00000000646979;
  v10 = a1(0);
  v11 = v1 + v10[5];
  *(inited + 96) = sub_249E7A5D8();
  *(inited + 104) = v12;
  *(inited + 120) = v8;
  *(inited + 128) = 0x6574617473;
  *(inited + 136) = 0xE500000000000000;
  v13 = MEMORY[0x277D83B88];
  *(inited + 144) = *(v3 + v10[6]);
  *(inited + 168) = v13;
  *(inited + 176) = 0x6E6F73616572;
  *(inited + 184) = 0xE600000000000000;
  v14 = (v3 + v10[7]);
  v15 = v14[1];
  *(inited + 192) = *v14;
  *(inited + 200) = v15;
  *(inited + 216) = v8;
  *(inited + 224) = 0x6974617269707865;
  *(inited + 232) = 0xEA00000000006E6FLL;
  v16 = sub_249E7A5B8();
  *(inited + 264) = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 240));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v3 + v10[8], v16);

  return sub_249E7AA08();
}

unint64_t sub_249DFDA24(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_249E7B408();
  sub_249E7AB18();
  v6 = sub_249E7B438();

  return sub_249DFE478(a1, a2, v6);
}

unint64_t sub_249DFDA9C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_249E7B0A8();

  return sub_249DFE52C(a1, v5);
}

unint64_t sub_249DFDAE0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_249E7A628();
  sub_249DFE7AC(&qword_28130D360, MEMORY[0x277CC95F0]);
  v5 = sub_249E7AA48();

  return sub_249DFE5F0(a1, v5);
}

_OWORD *sub_249DFDB78(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_249DFDB88(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_249DFDA24(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23510, &qword_249E7D8E8);
  if ((sub_249E7B208() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_249DFDA24(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_249E7B378();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v17);

    return sub_249DFDB78(a1, v17);
  }

  else
  {
    sub_249DFE228(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_249DFDCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249DFDA24(a3, a4);
  OUTLINED_FUNCTION_0_4(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23530, &qword_249E7D918);
  if ((sub_249E7B208() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_249DFDA24(a3, a4);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_249E7B378();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_249DFE294(v16, a3, a4, a1, a2, v21);
    OUTLINED_FUNCTION_6_1();
  }
}

void sub_249DFDE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_249DFDA24(a2, a3);
  OUTLINED_FUNCTION_0_4(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23518, &unk_249E7D8F0);
  if ((sub_249E7B208() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_249DFDA24(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_249E7B378();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    sub_249DFE2E0(v14, a2, a3, a1, v19);
  }
}

_OWORD *sub_249DFDF38(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_249DFDA9C(a2);
  OUTLINED_FUNCTION_0_4(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23520, &qword_249E80210);
  if ((sub_249E7B208() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v3;
  v15 = sub_249DFDA9C(a2);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_249E7B378();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *v3;
  if (v13)
  {
    v18 = (v17[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0(v18);

    return sub_249DFDB78(a1, v18);
  }

  else
  {
    sub_249DFE7F4(a2, v20);
    return sub_249DFE328(v12, v20, a1, v17);
  }
}

void sub_249DFE06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a2;
  v35 = a3;
  v8 = sub_249E7A628();
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v4;
  v17 = sub_249DFDAE0(a4);
  OUTLINED_FUNCTION_0_4(v17, v18);
  if (v21)
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = v19;
  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23F80, &unk_249E7D900);
  if ((sub_249E7B208() & 1) == 0)
  {
    goto LABEL_5;
  }

  v24 = *v5;
  v25 = sub_249DFDAE0(a4);
  if ((v23 & 1) != (v26 & 1))
  {
LABEL_11:
    sub_249E7B378();
    __break(1u);
    return;
  }

  v22 = v25;
LABEL_5:
  v27 = *v5;
  if (v23)
  {
    v28 = (v27[7] + 24 * v22);
    v30 = v28[1];
    v29 = v28[2];
    v32 = v34;
    v31 = v35;
    *v28 = a1;
    v28[1] = v32;
    v28[2] = v31;

    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    (*(v11 + 16))(v15, a4, v8);
    sub_249DFE3A4(v22, v15, a1, v34, v35, v27);
    OUTLINED_FUNCTION_6_1();
  }
}

_OWORD *sub_249DFE228(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_249DFDB78(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_249DFE294(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_249DFE2E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_249DFE328(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_249DFDB78(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_249DFE3A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_249E7A628();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

unint64_t sub_249DFE478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_249E7B318() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_249DFE52C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_249DFE7F4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x24C204CC0](v8, a1);
    sub_249DFE850(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_249DFE5F0(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_249E7A628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_249DFE7AC(&qword_27EF23760, MEMORY[0x277CC95F0]);
    v10 = sub_249E7AA78();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_249DFE7AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_249DFE8A4()
{
  result = qword_27EF237F0;
  if (!qword_27EF237F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF237F0);
  }

  return result;
}

uint64_t sub_249DFE8F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_249DFE978()
{
  sub_249E7A628();
  if (v0 <= 0x3F)
  {
    sub_249E7A5B8();
    if (v1 <= 0x3F)
    {
      sub_249DFEA24();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_249DFEA24()
{
  if (!qword_27EF23548[0])
  {
    sub_249DF691C(255, &qword_28130D168, 0x277CCA9B8);
    v0 = sub_249E7AFC8();
    if (!v1)
    {
      atomic_store(v0, qword_27EF23548);
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_2()
{
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return swift_dynamicCast();
}

uint64_t sub_249DFEB14(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_249DFEBA0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_249DFED68(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_249DFF00C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_22();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = v13;

  v15 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v15, v16, v2, v17, v14);
}

uint64_t sub_249DFF104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_249DFF128, 0, 0);
}

uint64_t sub_249DFF128()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);
    *(v0 + 104) = v3;
    v4 = v3;
    v5 = OUTLINED_FUNCTION_29();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_249DFF210;

    return sub_249E0B10C();
  }

  else
  {
    v7 = *(v0 + 80);
    (*(v0 + 72))();
    OUTLINED_FUNCTION_9_0();

    return v8();
  }
}

uint64_t sub_249DFF210()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249DFF310()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 96);

  v2 = OUTLINED_FUNCTION_46();
  v3(v2);

  OUTLINED_FUNCTION_9_0();

  return v4();
}

uint64_t sub_249DFF4C0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  sub_249E7AC78();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_22();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = v20;
  v21[7] = a1;
  v21[8] = a2;
  v21[9] = a3;

  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v25, v26, v15, v27, v21);
}

uint64_t sub_249DFF5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x2822009F8](sub_249DFF620, 0, 0);
}

uint64_t sub_249DFF620()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);
    *(v0 + 96) = v3;
    v4 = v3;
    v5 = OUTLINED_FUNCTION_29();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_249DFF70C;
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = OUTLINED_FUNCTION_8(*(v0 + 64));

    return sub_249E0B1D0(v8, v9, v10);
  }

  else
  {
    v12 = *(v0 + 48);
    (*(v0 + 40))();
    OUTLINED_FUNCTION_9_0();

    return v13();
  }
}

uint64_t sub_249DFF70C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249DFF80C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 88);

  v2 = *(v0 + 48);
  (*(v0 + 40))(0);
  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249DFF968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_249DFF990, 0, 0);
}

uint64_t sub_249DFF990()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_49(Strong);
    v4 = v3;
    v5 = OUTLINED_FUNCTION_29();
    v6 = OUTLINED_FUNCTION_47(v5);
    *v6 = v7;
    OUTLINED_FUNCTION_7_1(v6);

    return sub_249E0B3F0();
  }

  else
  {
    v9 = *(v0 + 80);
    (*(v0 + 72))(0, 0);
    OUTLINED_FUNCTION_9_0();

    return v10();
  }
}

uint64_t sub_249DFFA6C()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v8 = *(v7 + 128);
  v9 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v10 = v9;
  *(v5 + 136) = v0;

  if (!v0)
  {

    *(v5 + 144) = v3;
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_249DFFB80()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);

  v3 = OUTLINED_FUNCTION_27();
  v4(v3, 0);

  OUTLINED_FUNCTION_9_0();

  return v5();
}

void sub_249DFFD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_249E7A4C8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_249DFFDC0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_22();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v16;
  v17[7] = a1;
  v17[8] = a2;

  v18 = a1;
  v19 = a2;
  v20 = OUTLINED_FUNCTION_51();
  sub_249E5ED90(v20, v21, v22, v23, v17);
}

uint64_t sub_249DFFECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_249DFFEF4, 0, 0);
}

uint64_t sub_249DFFEF4()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_49(Strong);
    v4 = v3;
    v5 = OUTLINED_FUNCTION_29();
    v6 = OUTLINED_FUNCTION_47(v5);
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_7_1(v6);

    return sub_249E0B79C(v8, v9);
  }

  else
  {
    v11 = *(v0 + 80);
    (*(v0 + 72))();
    OUTLINED_FUNCTION_9_0();

    return v12();
  }
}

uint64_t sub_249DFFFCC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E000CC()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 112);

  v2 = OUTLINED_FUNCTION_46();
  v3(v2);

  OUTLINED_FUNCTION_9_0();

  return v4();
}

uint64_t sub_249E0026C(int a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, id, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_22();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a3;
  v15 = a4;

  a8(v14, v15, a7, v13);
}

uint64_t sub_249E00350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_249E00374, 0, 0);
}

uint64_t sub_249E00374()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[5];
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_249E00444;

    return sub_249E0BA70();
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v6();
  }
}

uint64_t sub_249E00444()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  v3 = *(v1 + 72);
  v9 = *v0;
  *(v2 + 80) = v4;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249E00538()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  (*(v0 + 48))(v1);

  OUTLINED_FUNCTION_9_0();

  return v4();
}

uint64_t sub_249E005E8(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_22();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  a6(a5, v9);
}

void sub_249E0067C(char a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  _Block_copy(a3);
  v11 = [v10 currentConnection];
  if (v11)
  {
    v12 = v11;
    if (qword_27EF22FD0 != -1)
    {
      swift_once();
    }

    v13 = sub_249E3CED8();
    if (v13 != 2 && (v13 & 1) != 0)
    {
      v14 = sub_249E7AC78();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = v15;
      *(v16 + 40) = sub_249E04BAC;
      *(v16 + 48) = v9;
      *(v16 + 56) = a1 & 1;

      sub_249E5ED90(0, 0, v8, &unk_249E7DAD0, v16);

      _Block_release(a3);
      return;
    }

    v17 = sub_249E7A698();
    v18 = sub_249E7AE08();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315138;
      v21 = sub_249E7A898();
      v23 = sub_249E3A958(v21, v22, &v31);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_249DEE000, v17, v18, "Missing Entitlement: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C205870](v20, -1, -1);
      MEMORY[0x24C205870](v19, -1, -1);
    }

    sub_249E03D30();
    v24 = swift_allocError();
    *v25 = 2;
    v26 = sub_249E7A4C8();
    (a3)[2](a3, v26);
  }

  else
  {
    sub_249E03D30();
    v27 = swift_allocError();
    *v28 = 1;
    v29 = sub_249E7A4C8();
    (a3)[2](a3, v29);
  }

  _Block_release(a3);
}

uint64_t sub_249E00A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 128) = a7;
  *(v7 + 80) = a5;
  *(v7 + 88) = a6;
  *(v7 + 72) = a4;
  return MEMORY[0x2822009F8](sub_249E00A6C, 0, 0);
}

uint64_t sub_249E00A6C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);
    *(v0 + 104) = v3;
    v4 = v3;
    v5 = OUTLINED_FUNCTION_29();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_249E00B50;
    v6 = *(v0 + 128);

    return sub_249E0BB20(v6);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v8();
  }
}

uint64_t sub_249E00B50()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E00C50()
{
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  (*(v0 + 80))(0);

  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249E00CC4()
{
  OUTLINED_FUNCTION_17();
  v20 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  v3 = v1;
  v4 = sub_249E7A698();
  v5 = sub_249E7AE08();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 120);
    v7 = OUTLINED_FUNCTION_4();
    v8 = OUTLINED_FUNCTION_4_0();
    v19 = v8;
    *v7 = 136315138;
    OUTLINED_FUNCTION_16();
    v9 = OUTLINED_FUNCTION_39();
    v11 = sub_249E3A958(v9, v10, &v19);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v12, v13, "Failed to set uplink muted status for current session %s");
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_1();
  }

  v14 = *(v0 + 120);
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  (*(v0 + 80))(v14);

  OUTLINED_FUNCTION_9_0();

  return v17();
}

void sub_249E00E80(uint64_t a1)
{
  if (a1)
  {
    sub_249E7A4C8();
  }

  v1 = OUTLINED_FUNCTION_20();
  v4 = v2;
  v3(v1);
}

uint64_t sub_249E00EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_22();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = a1;
  v13[6] = a2;

  v14 = OUTLINED_FUNCTION_51();
  sub_249E5ED90(v14, v15, v16, v17, v13);
}

uint64_t sub_249E00FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_249E01010, 0, 0);
}

uint64_t sub_249E01010()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[9];
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);
    v0[13] = v3;
    v4 = v3;
    v5 = OUTLINED_FUNCTION_29();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_249E010EC;

    return sub_249E0BD68();
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v7();
  }
}

uint64_t sub_249E010EC()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v10 = v9;
  *(v5 + 120) = v0;

  if (!v0)
  {

    *(v5 + 128) = v3 & 1;
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_249E01204()
{
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  (*(v0 + 80))(*(v0 + 128), 0);

  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249E0127C()
{
  OUTLINED_FUNCTION_17();
  v20 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  v3 = v1;
  v4 = sub_249E7A698();
  v5 = sub_249E7AE08();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 120);
    v7 = OUTLINED_FUNCTION_4();
    v8 = OUTLINED_FUNCTION_4_0();
    v19 = v8;
    *v7 = 136315138;
    OUTLINED_FUNCTION_16();
    v9 = OUTLINED_FUNCTION_39();
    v11 = sub_249E3A958(v9, v10, &v19);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v12, v13, "Failed to get uplink muted status for current session %s");
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_1();
  }

  v14 = *(v0 + 120);
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  (*(v0 + 80))(0, v14);

  OUTLINED_FUNCTION_9_0();

  return v17();
}

void sub_249E01400(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_249E7A4C8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_249E01470(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF235D8, &qword_249E7DAA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for XPCClient();
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  sub_249DF691C(0, &qword_27EF235E0, 0x277CCAE80);
  Strong = swift_unknownObjectWeakLoadStrong();
  _Block_copy(a3);
  sub_249E0181C(Strong, v11);
  swift_unknownObjectRelease();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_249E044D0(v11, &qword_27EF235D8, &qword_249E7DAA0);
    sub_249E03D30();
    v20 = swift_allocError();
    *v21 = 3;
    sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
    v22 = sub_249E7ABD8();
    v23 = sub_249E7A4C8();
    (a3)[2](a3, v22, v23);
  }

  else
  {
    sub_249E04524(v11, v17);
    v24 = sub_249E7AC78();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v24);
    v25 = swift_allocObject();
    swift_weakInit();
    sub_249DF76A8(v17, v15);
    v26 = (*(v30 + 80) + 56) & ~*(v30 + 80);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = sub_249E04698;
    v27[5] = v18;
    v27[6] = v25;
    sub_249E04524(v15, v27 + v26);
    v28 = v31;
    *(v27 + ((v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;

    v29 = v28;
    sub_249E5ED90(0, 0, v7, &unk_249E7DAC0, v27);

    sub_249DF770C(v17);
  }

  _Block_release(a3);
}

uint64_t sub_249E0181C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XPCClient();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = [objc_opt_self() currentConnection];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11;
  if (!a1)
  {

LABEL_16:
    OUTLINED_FUNCTION_28();

    return __swift_storeEnumTagSinglePayload(v26, v27, v28, v4);
  }

  v30 = a2;
  v13 = sub_249E3F064();
  v14 = v13;
  v15 = v13 + 56;
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 56);
  v19 = (v16 + 63) >> 6;

  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_10:
      sub_249DF76A8(*(v14 + 48) + *(v31 + 72) * (__clz(__rbit64(v18)) | (v22 << 6)), v10);
      sub_249E04524(v10, v8);
      sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
      v23 = *&v8[*(v4 + 20)];
      if (sub_249E7AF78())
      {
        break;
      }

      v18 &= v18 - 1;
      result = sub_249DF770C(v8);
      v21 = v22;
      if (!v18)
      {
        goto LABEL_7;
      }
    }

    v29 = v30;
    sub_249E04524(v8, v30);
    v24 = v29;
    v25 = 0;
LABEL_14:
    __swift_storeEnumTagSinglePayload(v24, v25, 1, v4);
  }

  else
  {
LABEL_7:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        v24 = v30;
        v25 = 1;
        goto LABEL_14;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_249E01AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_249E01AD0, 0, 0);
}

uint64_t sub_249E01AD0()
{
  OUTLINED_FUNCTION_23();
  v2 = v1[11];
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  v1[14] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_49(Strong);
    v5 = v4;
    v6 = OUTLINED_FUNCTION_29();
    v7 = OUTLINED_FUNCTION_47(v6);
    *v7 = v8;
    OUTLINED_FUNCTION_7_1(v7);

    return sub_249E0BFC4();
  }

  else
  {
    v11 = v1[9];
    v10 = v1[10];
    sub_249E03D30();
    v12 = OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_48(v12, v13);
    v11(MEMORY[0x277D84F90], v0);

    OUTLINED_FUNCTION_9_0();

    return v14();
  }
}

uint64_t sub_249E01BE0()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v8 = *(v7 + 128);
  v9 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v10 = v9;
  *(v5 + 136) = v0;

  if (!v0)
  {

    *(v5 + 144) = v3;
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_249E01CF4()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 112);

  v2 = *(v0 + 144);
  v3 = OUTLINED_FUNCTION_27();
  v4(v3, 0);

  OUTLINED_FUNCTION_9_0();

  return v5();
}

void sub_249E01EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
  v5 = sub_249E7ABD8();
  if (a2)
  {
    v6 = sub_249E7A4C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_249E01F48(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF235D8, &qword_249E7DAA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for XPCClient();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  sub_249DF691C(0, &qword_27EF235E0, 0x277CCAE80);
  Strong = swift_unknownObjectWeakLoadStrong();
  _Block_copy(a3);
  sub_249E0181C(Strong, v11);
  swift_unknownObjectRelease();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_249E044D0(v11, &qword_27EF235D8, &qword_249E7DAA0);
    sub_249E03D30();
    v20 = swift_allocError();
    *v21 = 3;
    v22 = sub_249E7A4C8();
    (a3)[2](a3, v22);
  }

  else
  {
    sub_249E04524(v11, v17);
    v23 = sub_249E7AC78();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v23);
    v24 = swift_allocObject();
    swift_weakInit();
    sub_249DF76A8(v17, v15);
    v25 = (*(v29 + 80) + 56) & ~*(v29 + 80);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = sub_249E04BAC;
    v26[5] = v18;
    v26[6] = v24;
    sub_249E04524(v15, v26 + v25);
    v27 = v30;
    *(v26 + ((v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;

    v28 = v27;
    sub_249E5ED90(0, 0, v7, &unk_249E7DAB0, v26);

    sub_249DF770C(v17);
  }

  _Block_release(a3);
}

uint64_t sub_249E022BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_249E022E4, 0, 0);
}

uint64_t sub_249E022E4()
{
  OUTLINED_FUNCTION_23();
  v2 = v1[11];
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  v1[14] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_49(Strong);
    v5 = v4;
    v6 = OUTLINED_FUNCTION_29();
    v7 = OUTLINED_FUNCTION_47(v6);
    *v7 = v8;
    OUTLINED_FUNCTION_7_1(v7);

    return sub_249E0C690();
  }

  else
  {
    v11 = v1[9];
    v10 = v1[10];
    sub_249E03D30();
    v12 = OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_48(v12, v13);
    v11();

    OUTLINED_FUNCTION_9_0();

    return v14();
  }
}

uint64_t sub_249E023E8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E02600(uint64_t a1, int a2, void *a3, void *aBlock, void (*a5)(id, uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;

  a5(v9, a1, v8);
  _Block_release(v8);
}

void sub_249E02684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v68 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v63 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  v13 = objc_opt_self();
  _Block_copy(a5);
  v14 = [v13 currentConnection];
  if (v14)
  {
    v15 = v14;
    if (qword_27EF22FC8 != -1)
    {
      swift_once();
    }

    v16 = sub_249E3CED8();
    if (v16 != 2 && (v16 & 1) != 0)
    {
      v17 = OBJC_IVAR____TtC10DropInCore13XPCDispatcher_logger;
      v18 = v15;
      v63[1] = v17;
      v19 = sub_249E7A698();
      v20 = sub_249E7AE28();
      v67 = v18;

      v66 = v20;
      v21 = os_log_type_enabled(v19, v20);
      v64 = a1;
      v65 = a2;
      if (v21)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v70 = v24;
        *v22 = 138412546;
        v25 = v67;
        *(v22 + 4) = v67;
        *v23 = v15;
        *(v22 + 12) = 2080;
        v69[0] = sub_249E043B8(v25);
        v69[1] = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
        v27 = sub_249E7AAC8();
        v29 = sub_249E3A958(v27, v28, &v70);

        *(v22 + 14) = v29;
        _os_log_impl(&dword_249DEE000, v19, v66, "Connection = %@, BundleID = %s", v22, 0x16u);
        sub_249E044D0(v23, &unk_27EF23C30, &qword_249E7DA20);
        MEMORY[0x24C205870](v23, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x24C205870](v24, -1, -1);
        MEMORY[0x24C205870](v22, -1, -1);
      }

      sub_249E043B8(v67);
      if (!v30)
      {
        goto LABEL_19;
      }

      v31 = sub_249E5613C();
      if (v31 - 1 < 3)
      {
        v32 = sub_249E7AC78();
        __swift_storeEnumTagSinglePayload(v11, 1, 1, v32);
        v33 = swift_allocObject();
        swift_weakInit();
        v34 = swift_allocObject();
        v34[2] = 0;
        v34[3] = 0;
        v34[4] = sub_249E04BAC;
        v34[5] = v12;
        v36 = v64;
        v35 = v65;
        v34[6] = v33;
        v34[7] = v36;
        v37 = v68;
        v34[8] = v35;
        v34[9] = v37;

        sub_249E5ED90(0, 0, v11, &unk_249E7DA90, v34);

LABEL_21:

        _Block_release(a5);
        return;
      }

      if (v31 != 7)
      {
        v55 = v31;
        v56 = sub_249E7A698();
        v57 = sub_249E7AE18();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v69[0] = v59;
          *v58 = 136315138;
          v60 = sub_249E56188(v55);
          v62 = sub_249E3A958(v60, v61, v69);

          *(v58 + 4) = v62;
          _os_log_impl(&dword_249DEE000, v56, v57, "Client not allowed to set Drop In State. Client Bundle ID = %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v59);
          MEMORY[0x24C205870](v59, -1, -1);
          MEMORY[0x24C205870](v58, -1, -1);
        }

        sub_249E03D30();
        v52 = swift_allocError();
        v53 = 5;
      }

      else
      {
LABEL_19:
        sub_249E03D30();
        v52 = swift_allocError();
        v53 = 4;
      }

      *v51 = v53;
      v54 = sub_249E7A4C8();
      (a5)[2](a5, v54);

      goto LABEL_21;
    }

    v38 = sub_249E7A698();
    v39 = sub_249E7AE08();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v69[0] = v41;
      *v40 = 136315138;
      v42 = sub_249E7A878();
      v44 = sub_249E3A958(v42, v43, v69);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_249DEE000, v38, v39, "Missing Entitlement: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C205870](v41, -1, -1);
      MEMORY[0x24C205870](v40, -1, -1);
    }

    sub_249E03D30();
    v45 = swift_allocError();
    *v46 = 2;
    v47 = sub_249E7A4C8();
    (a5)[2](a5, v47);
  }

  else
  {
    sub_249E03D30();
    v48 = swift_allocError();
    *v49 = 1;
    v50 = sub_249E7A4C8();
    (a5)[2](a5, v50);
  }

  _Block_release(a5);
}

uint64_t sub_249E02D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x2822009F8](sub_249E02D6C, 0, 0);
}

uint64_t sub_249E02D6C()
{
  OUTLINED_FUNCTION_23();
  v2 = v1[7];
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  v1[11] = Strong;
  if (Strong)
  {
    v4 = *(Strong + 16);
    v1[12] = v4;
    v5 = v4;
    v6 = OUTLINED_FUNCTION_29();
    v1[13] = v6;
    *v6 = v1;
    v6[1] = sub_249E02E84;
    v7 = v1[9];
    v8 = v1[10];
    OUTLINED_FUNCTION_8(v1[8]);

    return sub_249E0C90C();
  }

  else
  {
    v11 = v1[5];
    v10 = v1[6];
    sub_249E03D30();
    v12 = OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_48(v12, v13);
    v11();

    OUTLINED_FUNCTION_9_0();

    return v14();
  }
}

uint64_t sub_249E02E84()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v7 + 112) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E02F9C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 88);

  v2 = *(v0 + 48);
  (*(v0 + 40))(0);

  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249E0300C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);

  v3 = *(v0 + 48);
  (*(v0 + 40))(v1);

  OUTLINED_FUNCTION_9_0();

  return v4();
}

uint64_t sub_249E03120(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_22();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = v15;
  v16[7] = a1;

  v17 = a1;
  v18 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v18, v19, v3, v20, v16);
}

uint64_t sub_249E03220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  return MEMORY[0x2822009F8](sub_249E03244, 0, 0);
}

uint64_t sub_249E03244()
{
  OUTLINED_FUNCTION_23();
  v2 = v1[11];
  OUTLINED_FUNCTION_5_2();
  Strong = swift_weakLoadStrong();
  v1[13] = Strong;
  if (Strong)
  {
    v4 = *(Strong + 16);
    v1[14] = v4;
    v5 = v4;
    v6 = OUTLINED_FUNCTION_29();
    v1[15] = v6;
    *v6 = v1;
    v6[1] = sub_249E03358;
    OUTLINED_FUNCTION_8(v1[12]);

    return sub_249E0D014();
  }

  else
  {
    v9 = v1[9];
    v8 = v1[10];
    sub_249E03D30();
    v10 = OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_48(v10, v11);
    v9();

    OUTLINED_FUNCTION_9_0();

    return v12();
  }
}

uint64_t sub_249E03358()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E03458()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 104);

  v2 = OUTLINED_FUNCTION_46();
  v3(v2);

  OUTLINED_FUNCTION_9_0();

  return v4();
}

uint64_t sub_249E034C4()
{
  v27 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 96);

  v4 = v3;
  v5 = v1;
  v6 = sub_249E7A698();
  v7 = sub_249E7AE08();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 128);
    v9 = *(v0 + 96);
    v25 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = OUTLINED_FUNCTION_4_0();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    OUTLINED_FUNCTION_16();
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);
    v15 = v9;
    v16 = sub_249E7B3A8();
    v18 = sub_249E3A958(v16, v17, &v26);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_249DEE000, v6, v7, "Failed to request state for device %@ %s", v10, 0x16u);
    sub_249E044D0(v11, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_1();
  }

  else
  {
    v19 = *(v0 + 104);
  }

  v20 = *(v0 + 128);
  v21 = OUTLINED_FUNCTION_27();
  v22(v21);

  OUTLINED_FUNCTION_9_0();

  return v23();
}

uint64_t sub_249E03750(uint64_t a1, int a2, char a3, void *aBlock, SEL *a5)
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);

  sub_249E037C8(a3, a1, v8, a5);
  _Block_release(v8);
}

void sub_249E037C8(char a1, uint64_t a2, const void *a3, SEL *a4)
{
  v8 = [objc_opt_self() currentConnection];
  if (v8)
  {
    v9 = v8;
    if (qword_27EF22FD0 != -1)
    {
      swift_once();
    }

    v10 = sub_249E3CED8();
    if (v10 != 2 && (v10 & 1) != 0)
    {
      [*(*(a2 + 24) + 16) *a4];

      v11 = OUTLINED_FUNCTION_20();
      v12(v11, 0);
      goto LABEL_12;
    }

    v13 = sub_249E7A698();
    v14 = sub_249E7AE08();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_4();
      v16 = OUTLINED_FUNCTION_4_0();
      v26 = v16;
      *v15 = 136315138;
      v17 = sub_249E7A898();
      v19 = sub_249E3A958(v17, v18, &v26);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_249DEE000, v13, v14, "Missing Entitlement: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_1();
    }

    sub_249E03D30();
    v20 = OUTLINED_FUNCTION_40();
    *v21 = 2;
  }

  else
  {
    sub_249E03D30();
    v20 = OUTLINED_FUNCTION_40();
    *v22 = 1;
  }

  v23 = sub_249E7A4C8();
  v24 = OUTLINED_FUNCTION_20();
  v25(v24, v23);

LABEL_12:

  _Block_release(a3);
}

void sub_249E039F8(uint64_t a1, const void *a2, SEL *a3)
{
  [*(*(a1 + 24) + 16) *a3];
  v4 = OUTLINED_FUNCTION_20();
  v5(v4);

  _Block_release(a2);
}

uint64_t sub_249E03A54(int a1, int a2, void *aBlock, SEL *a4)
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  sub_249E039F8(v6, v5, a4);
  _Block_release(v5);
}

uint64_t sub_249E03AC0()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC10DropInCore13XPCDispatcher_logger;
  v3 = sub_249E7A6B8();
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0 + v2);
  sub_249DF77C0(v0 + OBJC_IVAR____TtC10DropInCore13XPCDispatcher_xpcClientDataSource);
  return v0;
}

uint64_t sub_249E03B34()
{
  sub_249E03AC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for XPCDispatcher()
{
  result = qword_28130DE10;
  if (!qword_28130DE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E03BE0()
{
  result = sub_249E7A6B8();
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

uint64_t sub_249E03C94()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_4_3();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_31();

  return sub_249E03220(v6, v7, v8, v9, v10, v11, v12);
}

unint64_t sub_249E03D30()
{
  result = qword_27EF235D0;
  if (!qword_27EF235D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF235D0);
  }

  return result;
}

uint64_t sub_249E03DBC(unsigned __int8 a1)
{
  sub_249E7B408();
  MEMORY[0x24C205020](a1);
  return sub_249E7B438();
}

uint64_t sub_249E03E20()
{
  v1 = *v0;
  sub_249E7B408();
  MEMORY[0x24C205020](v1);
  return sub_249E7B438();
}

uint64_t sub_249E03E64()
{
  OUTLINED_FUNCTION_4_3();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  *v3 = v4;
  v3[1] = sub_249E04BA4;
  v5 = OUTLINED_FUNCTION_0_5();

  return sub_249E00FEC(v5, v6, v7, v8, v9, v1);
}