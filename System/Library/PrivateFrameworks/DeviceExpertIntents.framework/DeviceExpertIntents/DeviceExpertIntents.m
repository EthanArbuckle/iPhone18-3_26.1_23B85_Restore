uint64_t sub_1DA2E2604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DA2E2658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DA2E272C@<X0>(uint64_t *a1@<X8>)
{
  result = AttributionListSnippetModel.attributions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E275C@<X0>(uint64_t *a1@<X8>)
{
  result = AttributionListSnippetModel.context.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E278C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5918, &qword_1DA34E248);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1DA2E2840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5918, &qword_1DA34E248);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1DA2E299C()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2E2A20()
{
  sub_1DA34CBE0();
}

unint64_t sub_1DA2E2A90(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x746E6F4379646F62;
      break;
    case 3:
      result = 0x65676175676E616CLL;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA2E2B6C()
{
  OUTLINED_FUNCTION_20_0();
  result = TipSnippetModel.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DA2E2B98()
{
  OUTLINED_FUNCTION_20_0();
  result = TipSnippetModel.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DA2E2BC4()
{
  OUTLINED_FUNCTION_20_0();
  result = TipSnippetModel.bodyContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E2BF0()
{
  OUTLINED_FUNCTION_20_0();
  result = TipSnippetModel.language.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DA2E2C44()
{
  OUTLINED_FUNCTION_20_0();
  result = TipSnippetModel.context.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E2C70(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  v7 = OUTLINED_FUNCTION_9_0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
    v12 = OUTLINED_FUNCTION_9_0(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
      v16 = OUTLINED_FUNCTION_9_0(v15);
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
        v19 = OUTLINED_FUNCTION_9_0(v18);
        if (*(v20 + 84) == v3)
        {
          v9 = v19;
          v14 = a3[8];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
          v14 = a3[9];
        }
      }
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1DA2E2E00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_62();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  v9 = OUTLINED_FUNCTION_9_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
    v14 = OUTLINED_FUNCTION_9_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
      v18 = OUTLINED_FUNCTION_9_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
        v21 = OUTLINED_FUNCTION_9_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[8];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
          v16 = a4[9];
        }
      }
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_1DA2E2F98()
{
  OUTLINED_FUNCTION_62();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1DA2E2FE8()
{
  OUTLINED_FUNCTION_62();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

char *sub_1DA2E30C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

uint64_t sub_1DA2E30E4@<X0>(uint64_t *a1@<X8>)
{
  result = AttributionItem.appPunchOut.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E3114(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DA34C0C0();
    v9 = OUTLINED_FUNCTION_9_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 32);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
      v12 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1DA2E31E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1DA34C0C0();
    v9 = OUTLINED_FUNCTION_9_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 32);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
      v12 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1DA2E3308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21_0();
  v6 = sub_1DA34BFB0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DA2E33C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DA34BFB0();
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

uint64_t sub_1DA2E34E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DA2E3534(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DA2E3634()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_8();

  return MEMORY[0x1EEE6BDD0]();
}

uint64_t sub_1DA2E3698()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_3_8();

  return MEMORY[0x1EEE6BDD0]();
}

uint64_t sub_1DA2E36D0()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BE00();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E3708()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BE00();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E3740()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BF70();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E3778()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BF70();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E37B0()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BAC0();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E37E8()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BAC0();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E3830@<X0>(uint64_t *a1@<X8>)
{
  result = SupplementarySnippetModel.actions.getter();
  *a1 = result;
  return result;
}

double sub_1DA2E3888@<D0>(_OWORD *a1@<X8>)
{
  SupplementarySnippetModel.tipCollectionModel.getter();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1DA2E38D0@<X0>(uint64_t *a1@<X8>)
{
  result = SupplementarySnippetModel.context.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E3900(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  v7 = OUTLINED_FUNCTION_9_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    v12 = OUTLINED_FUNCTION_9_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
      v16 = OUTLINED_FUNCTION_9_0(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
        v14 = a3[7];
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1DA2E3A48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  v9 = OUTLINED_FUNCTION_9_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    v14 = OUTLINED_FUNCTION_9_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
      v18 = OUTLINED_FUNCTION_9_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
        v16 = a4[7];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1DA2E3BFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  OUTLINED_FUNCTION_0_12(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_1DA34C410();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v6 + v4 + 1, v3 | 7);
}

uint64_t sub_1DA2E3D80@<X0>(uint64_t *a1@<X8>)
{
  result = TroubleshootingSnippetModel.actions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E3DB0@<X0>(uint64_t *a1@<X8>)
{
  result = TroubleshootingSnippetModel.body.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E3DE0@<X0>(uint64_t *a1@<X8>)
{
  result = TroubleshootingSnippetModel.context.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E3E10(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
    v9 = OUTLINED_FUNCTION_9_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
      v14 = OUTLINED_FUNCTION_9_0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1DA2E3F3C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
    v9 = OUTLINED_FUNCTION_9_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
      v14 = OUTLINED_FUNCTION_9_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
        v12 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1DA2E40FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA30BC7C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DA2E41B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LinkUsedEvent.LinkType(0);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DA2E423C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LinkUsedEvent.LinkType(0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA2E42BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA2E4464@<X0>(uint64_t *a1@<X8>)
{
  result = BluetoothState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA2E4490@<X0>(uint64_t *a1@<X8>)
{
  result = FindMyState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA2E4778()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_61_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DA2E47B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA2E47F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA2E4840()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA2E4880()
{
  v1 = sub_1DA34BFB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA2E494C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA2E49F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA2E49D4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DA2E4A40()
{
  OUTLINED_FUNCTION_20_0();
  result = ListStyleAnswerSnippetModel.title.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E4A6C()
{
  OUTLINED_FUNCTION_20_0();
  result = ListStyleAnswerSnippetModel.intro.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E4A98()
{
  OUTLINED_FUNCTION_20_0();
  result = ListStyleAnswerSnippetModel.steps.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E4AC4()
{
  OUTLINED_FUNCTION_20_0();
  result = ListStyleAnswerSnippetModel.outro.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E4AF0()
{
  OUTLINED_FUNCTION_20_0();
  result = ListStyleAnswerSnippetModel.disclaimer.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E4B44()
{
  OUTLINED_FUNCTION_20_0();
  result = ListStyleAnswerSnippetModel.context.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E4B70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v7 = OUTLINED_FUNCTION_9_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
    v12 = OUTLINED_FUNCTION_9_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[6];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
      v16 = OUTLINED_FUNCTION_9_0(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[9];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
        v19 = OUTLINED_FUNCTION_9_0(v18);
        if (*(v20 + 84) != a2)
        {
          v22 = *(a1 + a3[11]);
          if (v22 >= 2)
          {
            return v22 - 1;
          }

          else
          {
            return 0;
          }
        }

        v9 = v19;
        v14 = a3[10];
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1DA2E4D08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v9 = OUTLINED_FUNCTION_9_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
    v14 = OUTLINED_FUNCTION_9_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
      v18 = OUTLINED_FUNCTION_9_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[9];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
        result = OUTLINED_FUNCTION_9_0(v20);
        if (*(v22 + 84) != a3)
        {
          *(a1 + a4[11]) = a2 + 1;
          return result;
        }

        v11 = result;
        v16 = a4[10];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1DA2E4F88()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DA2E4FBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  sub_1DA33A904(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1DA2E5010()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 154, 7);
}

uint64_t sub_1DA2E5068()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA2E516C()
{
  OUTLINED_FUNCTION_20_0();
  result = SummarizedAnswerSnippetModel.title.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E5198()
{
  OUTLINED_FUNCTION_20_0();
  result = SummarizedAnswerSnippetModel.body.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E51C4()
{
  OUTLINED_FUNCTION_20_0();
  result = SummarizedAnswerSnippetModel.disclaimer.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E5218()
{
  OUTLINED_FUNCTION_20_0();
  result = SummarizedAnswerSnippetModel.context.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E5244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v7 = OUTLINED_FUNCTION_9_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    v12 = OUTLINED_FUNCTION_9_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
      v14 = *(a3 + 32);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1DA2E5340(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v9 = OUTLINED_FUNCTION_9_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    v14 = OUTLINED_FUNCTION_9_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 28);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
      v16 = *(a4 + 32);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1DA2E546C@<X0>(uint64_t *a1@<X8>)
{
  result = LearnMoreSnippetModel.body.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E549C@<X0>(uint64_t *a1@<X8>)
{
  result = LearnMoreSnippetModel.context.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E54CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1DA2E5580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1DA2E568C()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BA10();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E56C4()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BA10();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E56FC()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BD50();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E5734()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BD50();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E576C()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BBF0();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E57A4()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BBF0();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E57DC()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BCC0();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E5814()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BCC0();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E58A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA34B6B0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DA2E58F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA34B6B0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DA2E5974@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DA34A398();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DA2E59CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DA34A4B4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1DA2E5A28(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *&result = sub_1DA34A628(a1).n128_u64[0];
  return result;
}

uint64_t sub_1DA2E5A4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DA34A6B4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DA2E5B48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t FeedbackModel.question.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FeedbackModel.question.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FeedbackModel.answer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FeedbackModel.answer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FeedbackModel.init(result:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53[13] = *MEMORY[0x1E69E9840];
  v4 = sub_1DA34BED0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v50 = v6;
  v51 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA34CB80();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57C8, &unk_1DA34DA10);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  sub_1DA34C470();
  sub_1DA34C460();
  sub_1DA34C450();

  v19 = sub_1DA34C710();
  v21 = v20;

  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v52 = a1;
  sub_1DA2E616C(a1, v18);
  v24 = sub_1DA34BFB0();
  if (__swift_getEnumTagSinglePayload(v18, 1, v24) == 1)
  {
    sub_1DA2E6204(v18);
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v25 = sub_1DA34BF40();
    v26 = v27;
    (*(*(v24 - 8) + 8))(v18, v24);
  }

  v28 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57D0, &qword_1DA350CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA34DA00;
  *(inited + 32) = 0x6E656B6F7073;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  *(inited + 64) = 0x6465686374616DLL;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = v25;
  *(inited + 88) = v26;
  sub_1DA34CAC0();
  v30 = sub_1DA34CAA0();

  v53[0] = 0;
  v31 = [v28 dataWithJSONObject:v30 options:0 error:v53];

  v32 = v53[0];
  if (v31)
  {
    v33 = sub_1DA34B8E0();
    v35 = v34;

    sub_1DA34CB70();
    v36 = sub_1DA34CB60();
    v38 = v37;
    sub_1DA2E62C4(v33, v35);
    v39 = v52;
    if (!v38)
    {
      v36 = 0;
      v38 = 0xE000000000000000;
    }
  }

  else
  {
    v40 = v32;
    v41 = sub_1DA34B7E0();

    swift_willThrow();
    v36 = 0;
    v38 = 0xE000000000000000;
    v39 = v52;
  }

  sub_1DA2E616C(v39, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v24) == 1)
  {
    sub_1DA2E6204(v16);
    v42 = 0;
    v43 = 0xE000000000000000;
  }

  else
  {
    v44 = v49;
    sub_1DA34BEE0();
    (*(*(v24 - 8) + 8))(v16, v24);
    sub_1DA2E626C();
    v45 = v51;
    v42 = sub_1DA34C7A0();
    v43 = v46;
    (*(v50 + 8))(v44, v45);
  }

  result = sub_1DA2E6204(v39);
  *a2 = v36;
  a2[1] = v38;
  a2[2] = v42;
  a2[3] = v43;
  v48 = *MEMORY[0x1E69E9840];
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

uint64_t sub_1DA2E616C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57C8, &unk_1DA34DA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2E6204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57C8, &unk_1DA34DA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA2E626C()
{
  result = qword_1EE109F10;
  if (!qword_1EE109F10)
  {
    sub_1DA34BED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109F10);
  }

  return result;
}

uint64_t sub_1DA2E62C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DA2E631C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697473657571 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726577736E61 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA34D160();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DA2E6420(char a1)
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](a1 & 1);
  return sub_1DA34D230();
}

uint64_t sub_1DA2E6474(char a1)
{
  if (a1)
  {
    return 0x726577736E61;
  }

  else
  {
    return 0x6E6F697473657571;
  }
}

uint64_t sub_1DA2E64C4()
{
  v1 = *v0;
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](v1);
  return sub_1DA34D230();
}

uint64_t sub_1DA2E6510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2E631C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2E6558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA2E63E0();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E6580(uint64_t a1)
{
  v2 = sub_1DA2E67AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2E65BC(uint64_t a1)
{
  v2 = sub_1DA2E67AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedbackModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57D8, &qword_1DA34DA20);
  v5 = OUTLINED_FUNCTION_0(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2E67AC();
  sub_1DA34D250();
  v19 = 0;
  sub_1DA34D0F0();
  if (!v2)
  {
    v18 = 1;
    sub_1DA34D0F0();
  }

  return (*(v17 + 8))(v10, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1DA2E67AC()
{
  result = qword_1ECBA57E0;
  if (!qword_1ECBA57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA57E0);
  }

  return result;
}

uint64_t FeedbackModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57E8, &qword_1DA34DA28);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2E67AC();
  sub_1DA34D240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v14 = sub_1DA34D060();
  v16 = v15;
  v24 = 1;
  v17 = sub_1DA34D060();
  v19 = v18;
  v20 = *(v8 + 8);
  v23 = v17;
  v20(v12, v5);
  *a2 = v14;
  a2[1] = v16;
  a2[2] = v23;
  a2[3] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA2E6A7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1DA2E6ABC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for FeedbackModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for FeedbackModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA2E6C98()
{
  result = qword_1ECBA57F8;
  if (!qword_1ECBA57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA57F8);
  }

  return result;
}

unint64_t sub_1DA2E6CF0()
{
  result = qword_1ECBA5800;
  if (!qword_1ECBA5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5800);
  }

  return result;
}

unint64_t sub_1DA2E6D48()
{
  result = qword_1ECBA5808;
  if (!qword_1ECBA5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5808);
  }

  return result;
}

uint64_t sub_1DA2E6D9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA2F8188();
  *a1 = result;
  return result;
}

void sub_1DA2E6DCC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1DA2E6E00();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1DA2E6E08@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

void sub_1DA2E6E48(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1DA2E6EAC()
{
  v0 = [objc_opt_self() deviceClass];
  sub_1DA34CB40();

  v1 = sub_1DA34CBB0();
  v3 = v2;

  qword_1EE10E020 = v1;
  *algn_1EE10E028 = v3;
  return result;
}

uint64_t sub_1DA2E6F2C(uint64_t a1)
{
  *(v1 + 39) = -18;
  *(v1 + 16) = a1;
  strcpy((v1 + 24), "com.apple.tips");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5828, &qword_1DA34EF30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DA34DC80;
  v3 = qword_1EE1091A0;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v4 = *algn_1EE10E028;
  *(v2 + 32) = qword_1EE10E020;
  *(v2 + 40) = v4;

  *(v1 + 40) = v2;
  return v1;
}

BOOL sub_1DA2E6FFC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DA2E70B4();
  if (v5)
  {
    v6 = *(v2 + 40);
    v10[0] = a1;
    v10[1] = a2;
    MEMORY[0x1EEE9AC00](v5);
    v9[2] = v10;

    v7 = sub_1DA2E7C00(sub_1DA2E7F1C, v9, v6);
  }

  else
  {
    return 0;
  }

  return v7;
}

id sub_1DA2E70B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v4 = sub_1DA2E7D70(v1, v2, 0);
  v5 = [v4 applicationState];
  v6 = [v5 isInstalled];

  return v6;
}

uint64_t sub_1DA2E72E4()
{
  sub_1DA34CA00();
  v0 = *MEMORY[0x1E69DA3F8];
  sub_1DA34CB40();
  sub_1DA34C9F0();
}

uint64_t sub_1DA2E73A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA2E73C8, 0, 0);
}

uint64_t sub_1DA2E73C8()
{
  v1 = v0[2];
  if (sub_1DA2E77F4())
  {
    v0[4] = *(v0[3] + 16);
    v2 = *(MEMORY[0x1E69DA3B8] + 4);

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_1DA2E74AC;

    return MEMORY[0x1EEE49B08]();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1DA2E74AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1DA2E7648;
  }

  else
  {
    v8 = *(v4 + 32);

    *(v4 + 56) = a1;
    v7 = sub_1DA2E75DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DA2E75DC()
{
  v1 = v0[3];
  v2 = *(v1 + 40);
  *(v1 + 40) = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DA2E7648()
{
  v1 = v0[4];

  if (qword_1EE109058 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_1DA34C8E0();
  __swift_project_value_buffer(v3, qword_1EE109060);
  v4 = v2;
  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CDA0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1DA2E0000, v5, v6, "Error fetching user guide identifiers: %@", v9, 0xCu);
    sub_1DA2E7E4C(v10, &qword_1ECBA5820, &unk_1DA34DD00);
    MEMORY[0x1DA74B3A0](v10, -1, -1);
    MEMORY[0x1DA74B3A0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DA2E77F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5818, &unk_1DA352560);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v40 - v2;
  v45 = sub_1DA34BC60();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA34BA40();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1DA34BAF0();
  v19 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v21 = 0;
    v47 = result + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v46 = v12 + 16;
    v43 = *MEMORY[0x1E69BCCC0];
    v41 = (v5 + 8);
    v42 = (v5 + 32);
    while (v21 < *(v19 + 16))
    {
      (*(v12 + 16))(v17, v47 + *(v12 + 72) * v21, v10);
      sub_1DA34BA30();
      v22 = sub_1DA34BA20();
      if (__swift_getEnumTagSinglePayload(v3, 1, v22) == 1)
      {
        v23 = OUTLINED_FUNCTION_1();
        v24(v23);
        result = sub_1DA2E7E4C(v3, &qword_1ECBA5818, &unk_1DA352560);
      }

      else
      {
        OUTLINED_FUNCTION_2();
        v26 = v25;
        v28 = (*(v27 + 88))(v3, v22);
        if (v28 == v43)
        {
          (*(v26 + 96))(v3, v22);
          (*v42)(v44, v3, v45);
          v29 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
          v31 = v30;
          if (qword_1EE1091A0 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          if (v29 == qword_1EE10E020 && v31 == *algn_1EE10E028)
          {

            (*v41)(v44, v45);
            v38 = OUTLINED_FUNCTION_1();
            result = v39(v38);
          }

          else
          {
            v33 = sub_1DA34D160();

            (*v41)(v44, v45);
            v34 = OUTLINED_FUNCTION_1();
            result = v35(v34);
            if ((v33 & 1) == 0)
            {

              return 1;
            }
          }
        }

        else
        {
          v36 = OUTLINED_FUNCTION_1();
          v37(v36);
          result = (*(v26 + 8))(v3, v22);
        }
      }

      if (v20 == ++v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    return 0;
  }

  return result;
}

BOOL sub_1DA2E7C00(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void *sub_1DA2E7CB0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1DA2E7CE0()
{
  sub_1DA2E7CB0();

  return swift_deallocClassInstance();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1DA2E7D70(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DA34CB30();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1DA34B7E0();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1DA2E7E4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DA2E7EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DA34D160() & 1;
  }
}

uint64_t SiriKitTaskLoggingProvider.send(_:)()
{
  sub_1DA34C180();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1DA34C190();
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t SiriKitTaskLoggingProvider.donateCurareResponse(from:)()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  sub_1DA34C7C0();
  return sub_1DA2E8024(v1);
}

uint64_t sub_1DA2E8024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5830, &qword_1DA34DD20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA2E814C()
{
  v0 = sub_1DA34BF30();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v10 = sub_1DA34C8E0();
    __swift_project_value_buffer(v10, qword_1EE109060);
    v11 = sub_1DA34C8C0();
    v12 = sub_1DA34CD80();
    if (OUTLINED_FUNCTION_3(v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5(&dword_1DA2E0000, v13, v14, "No platform specified in result");
      OUTLINED_FUNCTION_6();
    }

    return 1;
  }

  v4 = sub_1DA34BF30();
  v6 = v5;
  v7 = v4 == 7565161 && v5 == 0xE300000000000000;
  if (v7 || (v8 = v4, (OUTLINED_FUNCTION_2_0() & 1) != 0))
  {

    OUTLINED_FUNCTION_0_1();
    if ((sub_1DA34C240() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_1();
      v9 = sub_1DA34C230();
      return v9 & 1;
    }

    return 1;
  }

  v16 = v8 == 0x736F63616DLL && v6 == 0xE500000000000000;
  if (v16 || (OUTLINED_FUNCTION_2_0() & 1) != 0)
  {

    OUTLINED_FUNCTION_0_1();
    v9 = sub_1DA34C220();
    return v9 & 1;
  }

  v17 = v8 == 1936684660 && v6 == 0xE400000000000000;
  if (v17 || (OUTLINED_FUNCTION_2_0() & 1) != 0)
  {

    OUTLINED_FUNCTION_0_1();
    v9 = sub_1DA34C260();
    return v9 & 1;
  }

  v18 = v8 == 0x736F6863746177 && v6 == 0xE700000000000000;
  if (v18 || (OUTLINED_FUNCTION_2_0() & 1) != 0)
  {

    OUTLINED_FUNCTION_0_1();
    v9 = sub_1DA34C250();
    return v9 & 1;
  }

  if (v8 == 0x736F6E6F69736976 && v6 == 0xE800000000000000)
  {

LABEL_44:
    OUTLINED_FUNCTION_0_1();
    v9 = sub_1DA34C200();
    return v9 & 1;
  }

  v20 = OUTLINED_FUNCTION_2_0();

  result = 0;
  if (v20)
  {
    goto LABEL_44;
  }

  return result;
}

id sub_1DA2E838C()
{
  v0 = *(sub_1DA34BB80() + 16);

  if (!v0)
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v9 = sub_1DA34C8E0();
    __swift_project_value_buffer(v9, qword_1EE109060);
    v10 = sub_1DA34C8C0();
    v11 = sub_1DA34CD80();
    if (!OUTLINED_FUNCTION_3(v11))
    {
      goto LABEL_14;
    }

    *swift_slowAlloc() = 0;
    v14 = "No device family specified in result";
    goto LABEL_13;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    v3 = MobileGestalt_copy_deviceName_obj();

    if (v3)
    {
      v4 = sub_1DA34CB40();
      v6 = v5;

      strcpy(v18, "deviceFamily/");
      v18[7] = -4864;
      MEMORY[0x1DA74A690](v4, v6);

      v7 = sub_1DA34BB80();
      MEMORY[0x1EEE9AC00](v7);
      v17[2] = v18;
      v8 = sub_1DA2E7C00(sub_1DA2E7F1C, v17, v7);

      return v8;
    }

    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v15 = sub_1DA34C8E0();
    __swift_project_value_buffer(v15, qword_1EE109060);
    v10 = sub_1DA34C8C0();
    v16 = sub_1DA34CDA0();
    if (!OUTLINED_FUNCTION_3(v16))
    {
LABEL_14:

      return 1;
    }

    *swift_slowAlloc() = 0;
    v14 = "Failed to retrieve current device class name";
LABEL_13:
    OUTLINED_FUNCTION_5(&dword_1DA2E0000, v12, v13, v14);
    OUTLINED_FUNCTION_6();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA2E85CC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DA34BFB0();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1DA2E814C() & 1) != 0 && (sub_1DA2E838C())
  {
    v8 = *(v32 + 16);

    return v8(a1, v1, v4);
  }

  else
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v10 = sub_1DA34C8E0();
    __swift_project_value_buffer(v10, qword_1EE109060);
    v11 = *(v32 + 16);
    v11(v7, v1, v4);
    v12 = sub_1DA34C8C0();
    v13 = sub_1DA34CDA0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v31 = a1;
      v15 = v14;
      v16 = swift_slowAlloc();
      v30 = v11;
      v17 = v16;
      v33[0] = v16;
      *v15 = 136315138;
      v18 = sub_1DA34BD10();
      v20 = v19;
      v21 = OUTLINED_FUNCTION_4();
      v22(v21);
      v23 = sub_1DA300D78(v18, v20, v33);

      *(v15 + 4) = v23;
      _os_log_impl(&dword_1DA2E0000, v12, v13, "Removing actions for %s due to mismatched platform and/or device family", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v11 = v30;
      OUTLINED_FUNCTION_6();
      a1 = v31;
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v24 = OUTLINED_FUNCTION_4();
      v25(v24);
    }

    v11(a1, v2, v4);
    v26 = sub_1DA34BF00();
    v28 = *v27;
    *v27 = MEMORY[0x1E69E7CC0];

    return v26(v33, 0);
  }
}

uint64_t OUTLINED_FUNCTION_0_1()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return sub_1DA34D160();
}

BOOL OUTLINED_FUNCTION_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x1DA74B3A0);
}

uint64_t sub_1DA2E8970()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 8);
  v15 = v1 + 8;
  v16 = v2 + *v2;
  v3 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DA2E8A9C;
  OUTLINED_FUNCTION_36();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t sub_1DA2E8A9C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return v5();
}

void *sub_1DA2E8B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_1DA2E8B8C()
{
  OUTLINED_FUNCTION_59();
  v3 = v2;
  v5 = v4;
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v6;
  v1[3] = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5838, &qword_1DA34DE60) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[8] = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v1[9] = v9;
  *v9 = v10;
  v9[1] = sub_1DA2E8C8C;

  return sub_1DA2E93A4(v8, v5, v3);
}

uint64_t sub_1DA2E8C8C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA2E8D70()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[8];
  v2 = type metadata accessor for SnippetResponseComponents();
  v0[10] = v2;
  OUTLINED_FUNCTION_67(v1, v3, v2);
  if (v4)
  {
    sub_1DA2EF188(v1, &qword_1ECBA5838, &qword_1DA34DE60);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[11] = v5;
    *v5 = v6;
    v5[1] = sub_1DA2E8E88;
    v7 = v0[7];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[3];

    return sub_1DA2E9A20(v7, v10, v8);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];

    OUTLINED_FUNCTION_15();

    return v15();
  }
}

uint64_t sub_1DA2E8E88()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA2E8F6C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[7];
  OUTLINED_FUNCTION_67(v1, v2, v0[10]);
  if (v3)
  {
    sub_1DA2EF188(v1, &qword_1ECBA5838, &qword_1DA34DE60);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[12] = v4;
    *v4 = v5;
    v4[1] = sub_1DA2E9074;
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[3];
    v9 = v0[4];

    return sub_1DA2EA1F8(v6, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];

    OUTLINED_FUNCTION_15();

    return v14();
  }
}

uint64_t sub_1DA2E9074()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA2E9158()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[6];
  OUTLINED_FUNCTION_67(v1, v2, v0[10]);
  if (v3)
  {
    sub_1DA2EF188(v1, &qword_1ECBA5838, &qword_1DA34DE60);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[13] = v4;
    *v4 = v5;
    v4[1] = sub_1DA2E9260;
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[2];
    v9 = v0[3];

    return sub_1DA2EA848(v8, v9, v6);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];

    OUTLINED_FUNCTION_15();

    return v14();
  }
}

uint64_t sub_1DA2E9260()
{
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = v1[8];
  v6 = v1[7];
  v7 = v1[6];

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_1DA2E93A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1DA34BFB0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA2E9474, 0, 0);
}

uint64_t sub_1DA2E9474()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[3];
  sub_1DA34BD70();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_13();
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_46(v3);

    return sub_1DA2EAF18(v4);
  }

  else
  {
    type metadata accessor for SnippetResponseComponents();
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[2];
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);

    OUTLINED_FUNCTION_15();

    return v13();
  }
}

uint64_t sub_1DA2E9564()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA2E964C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_63();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[11];
  if (v25)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_44();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      if (qword_1EE109058 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v28 = v22[9];
      v29 = v22[6];
      v30 = v22[7];
      v31 = v22[3];
      v32 = sub_1DA34C8E0();
      __swift_project_value_buffer(v32, qword_1EE109060);
      v33 = *(v30 + 16);
      v34 = OUTLINED_FUNCTION_42();
      v35(v34);
      v36 = v25;
      v37 = sub_1DA34C8C0();
      v38 = sub_1DA34CD90();

      v39 = os_log_type_enabled(v37, v38);
      v40 = v22[9];
      v42 = v22[6];
      v41 = v22[7];
      if (v39)
      {
        v43 = swift_slowAlloc();
        a10 = swift_slowAlloc();
        a11 = a10;
        *v43 = 136315394;
        v44 = [v27 identifier];
        v45 = sub_1DA34CB40();
        HIDWORD(a9) = v38;
        v47 = v46;

        v48 = sub_1DA300D78(v45, v47, &a11);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2080;
        v49 = sub_1DA34BD10();
        v51 = v50;
        (*(v41 + 8))(v40, v42);
        sub_1DA300D78(v49, v51, &a11);
        OUTLINED_FUNCTION_55();
        *(v43 + 14) = v40;
        _os_log_impl(&dword_1DA2E0000, v37, BYTE4(a9), "Found eligible tip %s for result %s", v43, 0x16u);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_23();
      }

      else
      {

        (*(v41 + 8))(v40, v42);
      }

      v79 = v22[4];
      v80 = v22[2];

      v81 = OUTLINED_FUNCTION_40();
      TipSnippetModel.init(tip:context:)(v81, v82, v83);
      v84 = type metadata accessor for TellMeGeneratedSnippetModels();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_45();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v84);
      v77 = type metadata accessor for SnippetResponseComponents();
      v88 = *(v77 + 20);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v84);
      v78 = 0;
      goto LABEL_16;
    }
  }

  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v53 = v22[7];
  v52 = v22[8];
  v54 = v22[6];
  v55 = v22[3];
  v56 = sub_1DA34C8E0();
  __swift_project_value_buffer(v56, qword_1EE109060);
  v57 = OUTLINED_FUNCTION_2_1();
  v58(v57);
  v59 = sub_1DA34C8C0();
  v60 = sub_1DA34CD80();
  v61 = OUTLINED_FUNCTION_28(v60);
  v63 = v22[7];
  v62 = v22[8];
  v64 = v22[6];
  if (v61)
  {
    v65 = OUTLINED_FUNCTION_37();
    a11 = OUTLINED_FUNCTION_39();
    *v65 = 136315138;
    sub_1DA34BD70();
    OUTLINED_FUNCTION_48();
    v66 = OUTLINED_FUNCTION_10_0();
    v68 = v67(v66);
    OUTLINED_FUNCTION_53(v68, v69);
    OUTLINED_FUNCTION_55();
    *(v65 + 4) = v62;
    OUTLINED_FUNCTION_20();
    _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v75 = OUTLINED_FUNCTION_10_0();
    v76(v75);
  }

  v77 = type metadata accessor for SnippetResponseComponents();
  v78 = 1;
LABEL_16:
  v93 = v22[8];
  v92 = v22[9];
  __swift_storeEnumTagSinglePayload(v22[2], v78, 1, v77);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_35();

  return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DA2E9A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt") - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_1DA34BFB0();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA2E9B34, 0, 0);
}

uint64_t sub_1DA2E9B34()
{
  OUTLINED_FUNCTION_59();
  v1 = v0[3];
  sub_1DA34BC70();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_13();
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_46(v3);

    return sub_1DA2EAF18(v4);
  }

  else
  {
    type metadata accessor for SnippetResponseComponents();
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[9];
    v9 = v0[6];
    v10 = v0[2];
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);

    OUTLINED_FUNCTION_15();

    return v15();
  }
}

uint64_t sub_1DA2E9C48()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA2E9D30()
{
  v96 = v0;
  v3 = v0[13];
  if (v3)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_44();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      if (qword_1EE109058 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v6 = v0[11];
      v8 = v0[7];
      v7 = v0[8];
      v9 = v0[3];
      v10 = sub_1DA34C8E0();
      __swift_project_value_buffer(v10, qword_1EE109060);
      v11 = *(v7 + 16);
      v12 = OUTLINED_FUNCTION_42();
      v94 = v13;
      v13(v12);
      v14 = v3;
      v15 = sub_1DA34C8C0();
      v16 = sub_1DA34CD90();

      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[11];
      v20 = v0[7];
      v19 = v0[8];
      if (v17)
      {
        v21 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v21 = 136315394;
        v22 = [v5 identifier];
        v90 = v14;
        v92 = v5;
        v23 = sub_1DA34CB40();
        v25 = v24;

        v26 = sub_1DA300D78(v23, v25, &v95);

        *(v21 + 4) = v26;
        *(v21 + 12) = 2080;
        v27 = sub_1DA34BD10();
        v29 = v28;
        (*(v19 + 8))(v18, v20);
        v30 = v27;
        v14 = v90;
        v31 = sub_1DA300D78(v30, v29, &v95);
        v5 = v92;

        *(v21 + 14) = v31;
        _os_log_impl(&dword_1DA2E0000, v15, v16, "Found eligible collection %s for result %s", v21, 0x16u);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_14();
      }

      else
      {

        (*(v19 + 8))(v18, v20);
      }

      v57 = v0[10];
      v58 = v0[6];
      v59 = v0[3];
      v60 = v0[4];
      v89 = v59;
      v91 = v0[7];
      v61 = v0[2];
      v94(v57);
      v62 = type metadata accessor for AttributionModel();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
      v93 = v14;

      v66 = OUTLINED_FUNCTION_58();
      sub_1DA303FBC(v66, v67, v5, v60, v68);
      v69 = type metadata accessor for TellMeGeneratedSnippetModels();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_45();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
      v55 = type metadata accessor for SnippetResponseComponents();
      v73 = *(v55 + 20);
      (v94)(v57, v89, v91);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v62);

      v77 = OUTLINED_FUNCTION_58();
      sub_1DA32A2E0(v77, v78, v60, v79);

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_45();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v69);
      v56 = 0;
      goto LABEL_16;
    }
  }

  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v33 = v0[8];
  v32 = v0[9];
  v34 = v0[7];
  v35 = v0[3];
  v36 = sub_1DA34C8E0();
  __swift_project_value_buffer(v36, qword_1EE109060);
  v37 = OUTLINED_FUNCTION_2_1();
  v38(v37);
  v39 = sub_1DA34C8C0();
  v40 = sub_1DA34CDA0();
  v41 = OUTLINED_FUNCTION_28(v40);
  v43 = v0[8];
  v42 = v0[9];
  v44 = v0[7];
  if (v41)
  {
    v45 = OUTLINED_FUNCTION_37();
    v95 = OUTLINED_FUNCTION_39();
    *v45 = 136315138;
    sub_1DA34BC70();
    OUTLINED_FUNCTION_48();
    v46 = OUTLINED_FUNCTION_10_0();
    v47(v46);
    sub_1DA300D78(v1, v2, &v95);
    OUTLINED_FUNCTION_55();
    *(v45 + 4) = v42;
    OUTLINED_FUNCTION_20();
    _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v53 = OUTLINED_FUNCTION_10_0();
    v54(v53);
  }

  v55 = type metadata accessor for SnippetResponseComponents();
  v56 = 1;
LABEL_16:
  v84 = v0[10];
  v83 = v0[11];
  v85 = v0[9];
  v86 = v0[6];
  __swift_storeEnumTagSinglePayload(v0[2], v56, 1, v55);

  OUTLINED_FUNCTION_15();

  return v87();
}

uint64_t sub_1DA2EA1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  v7 = sub_1DA34BFB0();
  v4[5] = v7;
  v8 = *(v7 - 8);
  v4[6] = v8;
  v9 = *(v8 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5870, &qword_1DA34DEC0) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v4[9] = v11;
  v12 = type metadata accessor for TroubleshootingSnippetModel();
  v4[10] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v14 = swift_task_alloc();
  v4[13] = v14;
  *v14 = v4;
  v14[1] = sub_1DA2EA394;

  return sub_1DA2EB86C(v11, a2, a3);
}

uint64_t sub_1DA2EA394()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA2EA478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_63();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[9];
  OUTLINED_FUNCTION_67(v25, v26, v22[10]);
  if (v27)
  {
    v28 = v22[3];
    sub_1DA2EF188(v25, &qword_1ECBA5870, &qword_1DA34DEC0);
    sub_1DA34BB10();
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_13();
    if (v29)
    {
      if (qword_1EE109058 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v31 = v22[6];
      v30 = v22[7];
      v32 = v22[5];
      v33 = v22[3];
      v34 = sub_1DA34C8E0();
      __swift_project_value_buffer(v34, qword_1EE109060);
      v35 = OUTLINED_FUNCTION_2_1();
      v36(v35);
      v37 = sub_1DA34C8C0();
      v38 = sub_1DA34CDA0();
      v39 = OUTLINED_FUNCTION_28(v38);
      v41 = v22[6];
      v40 = v22[7];
      v42 = v22[5];
      if (v39)
      {
        v43 = OUTLINED_FUNCTION_37();
        a11 = OUTLINED_FUNCTION_39();
        *v43 = 136315138;
        sub_1DA34BB10();
        OUTLINED_FUNCTION_48();
        v44 = OUTLINED_FUNCTION_10_0();
        v46 = v45(v44);
        OUTLINED_FUNCTION_53(v46, v47);
        OUTLINED_FUNCTION_55();
        *(v43 + 4) = v40;
        OUTLINED_FUNCTION_20();
        _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_6();
      }

      else
      {

        v88 = OUTLINED_FUNCTION_10_0();
        v89(v88);
      }
    }

    v87 = 1;
  }

  else
  {
    v53 = v22[12];
    sub_1DA2EF1E0();
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v54 = v22[11];
    v55 = v22[12];
    v56 = v22[8];
    v57 = v22[5];
    v58 = v22[6];
    v59 = v22[3];
    v60 = sub_1DA34C8E0();
    __swift_project_value_buffer(v60, qword_1EE109060);
    sub_1DA2EF25C();
    v61 = *(v58 + 16);
    v62 = OUTLINED_FUNCTION_42();
    v63(v62);
    v64 = sub_1DA34C8C0();
    v65 = sub_1DA34CD90();
    v66 = OUTLINED_FUNCTION_28(v65);
    v67 = v22[11];
    v68 = v22[8];
    v70 = v22[5];
    v69 = v22[6];
    if (v66)
    {
      v71 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      a11 = a10;
      *v71 = 136315394;
      v72 = *v67;
      v73 = v67[1];

      OUTLINED_FUNCTION_4_0();
      sub_1DA2EF31C(v67, v74);
      v75 = sub_1DA300D78(v72, v73, &a11);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2080;
      sub_1DA34BD10();
      OUTLINED_FUNCTION_48();
      v76 = (*(v69 + 8))(v68, v70);
      OUTLINED_FUNCTION_53(v76, v77);
      OUTLINED_FUNCTION_55();
      *(v71 + 14) = v68;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v78, v79, v80, v81, v82, 0x16u);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      (*(v69 + 8))(v68, v70);
      OUTLINED_FUNCTION_4_0();
      sub_1DA2EF31C(v67, v83);
    }

    v84 = v22[12];
    v85 = v22[4];
    sub_1DA2EC878(v84, v22[2]);
    OUTLINED_FUNCTION_4_0();
    sub_1DA2EF31C(v84, v86);
    v87 = 0;
  }

  v91 = v22[11];
  v90 = v22[12];
  v93 = v22[8];
  v92 = v22[9];
  v94 = v22[7];
  v95 = v22[2];
  v96 = type metadata accessor for SnippetResponseComponents();
  __swift_storeEnumTagSinglePayload(v95, v87, 1, v96);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_35();

  return v98(v97, v98, v99, v100, v101, v102, v103, v104, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DA2EA848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt") - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v6 = sub_1DA34BAE0();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v8 = *(v7 + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = sub_1DA34BFB0();
  v4[20] = v9;
  v10 = *(v9 - 8);
  v4[21] = v10;
  v11 = *(v10 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA2EA9AC, 0, 0);
}

uint64_t sub_1DA2EA9AC()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_60();
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[13];
  v5 = sub_1DA34C8E0();
  __swift_project_value_buffer(v5, qword_1EE109060);
  v6 = OUTLINED_FUNCTION_2_1();
  v7(v6);
  v8 = sub_1DA34C8C0();
  v9 = sub_1DA34CD90();
  v10 = OUTLINED_FUNCTION_28(v9);
  v11 = v0[23];
  v12 = v0[20];
  v13 = v0[21];
  if (v10)
  {
    v15 = v0[18];
    v14 = v0[19];
    v37 = v0[17];
    v16 = OUTLINED_FUNCTION_37();
    *v16 = 134217984;
    sub_1DA34BB00();
    v17 = sub_1DA34BAD0();
    (*(v15 + 8))(v14, v37);
    v19 = *(v13 + 8);
    v18 = v13 + 8;
    v20 = OUTLINED_FUNCTION_58();
    v21(v20);
    *(v16 + 4) = v17;
    _os_log_impl(&dword_1DA2E0000, v8, v4, "Result with preferred template type %ld", v16, 0xCu);
    OUTLINED_FUNCTION_6();
  }

  else
  {
    v22 = *(v13 + 8);
    v18 = v13 + 8;
    v23 = OUTLINED_FUNCTION_58();
    v24(v23);
  }

  v0[24] = v18;
  v25 = v0[22];
  v26 = v0[15];
  v27 = v0[13];

  sub_1DA2EEF28(*(v26 + 32) + 16, (v0 + 2));
  sub_1DA2E85CC(v25);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v28 = *(v26 + 16);
  v29 = type metadata accessor for TipsApp();
  swift_allocObject();

  v31 = sub_1DA2E6F2C(v30);
  v0[10] = v29;
  v0[11] = &off_1F55E0128;
  v0[7] = v31;
  v32 = swift_task_alloc();
  v0[25] = v32;
  *v32 = v0;
  v32[1] = sub_1DA2EABDC;
  v33 = v0[22];
  OUTLINED_FUNCTION_27();

  return sub_1DA2E73A8(v34);
}

uint64_t sub_1DA2EABDC()
{
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = v1[25];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[26] = v6;
  *v6 = v5;
  v6[1] = sub_1DA2EAD40;
  v7 = v1[22];
  v8 = v1[16];
  v9 = v1[15];

  return sub_1DA2ECD74(v8, v7, (v2 + 7));
}

uint64_t sub_1DA2EAD40()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 208);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA2EAE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_60();
  v13 = v12[23];
  v14 = v12[24];
  v16 = v12[21];
  v15 = v12[22];
  v17 = v12[20];
  v32 = v12[19];
  v18 = v12[15];
  v19 = v12[16];
  v20 = v12[14];
  v21 = v12[12];
  v22 = type metadata accessor for SnippetResponseComponents();
  sub_1DA2EDCF4(v21, v21 + *(v22 + 20), v15, v19, (v12 + 7), v20);
  sub_1DA2EF188(v19, &qword_1ECBA5840, "lt");
  (*(v16 + 8))(v15, v17);
  __swift_destroy_boxed_opaque_existential_1(v12 + 7);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, a10, a11, a12);
}

uint64_t sub_1DA2EAF18(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA2EAF38, 0, 0);
}

uint64_t sub_1DA2EAF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_29();
  v49 = v10;
  v12 = v10[2];
  v10[4] = sub_1DA34BC70();
  v10[5] = v13;

  OUTLINED_FUNCTION_13();
  v14 = v10[2];
  if (v15)
  {
    v16 = sub_1DA34BC70();
  }

  else
  {
    v16 = sub_1DA34BD70();
  }

  v18 = v16;
  v19 = v17;
  v10[6] = v17;
  v10[7] = v16;
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v20 = sub_1DA34C8E0();
  v10[8] = __swift_project_value_buffer(v20, qword_1EE109060);

  v21 = sub_1DA34C8C0();
  v22 = sub_1DA34CD90();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_37();
    v48 = OUTLINED_FUNCTION_25();
    *v11 = 136315138;
    *(v11 + 4) = sub_1DA300D78(v18, v19, &v48);
    _os_log_impl(&dword_1DA2E0000, v21, v22, "Evaluating %s eligibility...", v11, 0xCu);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_23();
  }

  v23 = v10[2];
  v24 = sub_1DA34BD70();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    OUTLINED_FUNCTION_61();
    v28 = *(MEMORY[0x1E69DA3A0] + 4);
    v29 = swift_task_alloc();
    v10[9] = v29;
    *v29 = v10;
    v29[1] = sub_1DA2EB204;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    if (!v30)
    {
      OUTLINED_FUNCTION_32();
      v41 = sub_1DA34C8C0();
      sub_1DA34CDA0();
      OUTLINED_FUNCTION_52();
      if (OUTLINED_FUNCTION_51())
      {
        OUTLINED_FUNCTION_33();
        v48 = OUTLINED_FUNCTION_25();
        *v11 = 136315138;
        sub_1DA300D78(v19, v26, &v48);
        OUTLINED_FUNCTION_57();
        *(v11 + 4) = v19;
        OUTLINED_FUNCTION_11(&dword_1DA2E0000, v42, v43, "Error fetching or evaluating tip document: %s");
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_23();
      }

      else
      {
        v44 = v10[6];
      }

      OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_65();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_61();
    v31 = *(MEMORY[0x1E69DA3A0] + 4);
    v32 = swift_task_alloc();
    v10[11] = v32;
    *v32 = v10;
    OUTLINED_FUNCTION_1_1(v32);
  }

  OUTLINED_FUNCTION_65();

  return MEMORY[0x1EEE49AF0](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_1DA2EB204()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 72);
  *v3 = *v1;
  *(v2 + 80) = v6;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA2EB30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  v13 = v11[10];
  if (v13)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_44();
    if (swift_dynamicCastObjCClass())
    {
      v14 = v11[6];

      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_19();
  if (!v15)
  {
    OUTLINED_FUNCTION_32();
    v26 = sub_1DA34C8C0();
    sub_1DA34CDA0();
    OUTLINED_FUNCTION_52();
    if (OUTLINED_FUNCTION_51())
    {
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_26(4.8149e-34, v27);
      OUTLINED_FUNCTION_57();
      *(v12 + 4) = v10;
      OUTLINED_FUNCTION_11(&dword_1DA2E0000, v28, v29, "Error fetching or evaluating tip document: %s");
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_23();
    }

    else
    {
      v30 = v11[6];
    }

LABEL_12:
    v31 = v11[1];
    OUTLINED_FUNCTION_36();

    return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }

  OUTLINED_FUNCTION_61();
  v16 = *(MEMORY[0x1E69DA3A0] + 4);
  v17 = swift_task_alloc();
  v11[11] = v17;
  *v17 = v11;
  OUTLINED_FUNCTION_1_1(v17);
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE49AF0](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1DA2EB470()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  *(v2 + 96) = v6;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA2EB578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  v13 = v11[12];
  if (v13)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_44();
    if (swift_dynamicCastObjCClass())
    {
      v14 = v11[6];

      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_32();
  v15 = sub_1DA34C8C0();
  sub_1DA34CDA0();
  OUTLINED_FUNCTION_52();
  if (OUTLINED_FUNCTION_51())
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_26(4.8149e-34, v16);
    OUTLINED_FUNCTION_57();
    *(v12 + 4) = v10;
    OUTLINED_FUNCTION_11(&dword_1DA2E0000, v17, v18, "Error fetching or evaluating tip document: %s");
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_23();
  }

  else
  {
    v19 = v11[6];
  }

LABEL_8:
  v20 = v11[1];
  OUTLINED_FUNCTION_36();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1DA2EB680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19();
  if (v13)
  {
    OUTLINED_FUNCTION_61();
    v14 = *(MEMORY[0x1E69DA3A0] + 4);
    v15 = swift_task_alloc();
    *(v11 + 88) = v15;
    *v15 = v11;
    OUTLINED_FUNCTION_1_1(v15);
    OUTLINED_FUNCTION_36();

    return MEMORY[0x1EEE49AF0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_32();
    v24 = sub_1DA34C8C0();
    sub_1DA34CDA0();
    OUTLINED_FUNCTION_52();
    if (OUTLINED_FUNCTION_51())
    {
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_26(4.8149e-34, v25);
      OUTLINED_FUNCTION_57();
      *(v12 + 4) = v10;
      OUTLINED_FUNCTION_11(&dword_1DA2E0000, v26, v27, "Error fetching or evaluating tip document: %s");
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_23();
    }

    else
    {
      v28 = *(v11 + 48);
    }

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_36();

    return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }
}

uint64_t sub_1DA2EB7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v13 = sub_1DA34C8C0();
  sub_1DA34CDA0();
  OUTLINED_FUNCTION_52();
  if (OUTLINED_FUNCTION_51())
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_26(4.8149e-34, v14);
    OUTLINED_FUNCTION_57();
    *(v12 + 4) = v10;
    OUTLINED_FUNCTION_11(&dword_1DA2E0000, v15, v16, "Error fetching or evaluating tip document: %s");
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_23();
  }

  else
  {
    v17 = *(v11 + 48);
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1DA2EB86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1DA34BFB0();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = sub_1DA34B940();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v11 = *(type metadata accessor for Action(0) - 8);
  v4[20] = v11;
  v12 = *(v11 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA2EB9E4, 0, 0);
}

uint64_t sub_1DA2EB9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_43();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_60();
  a18 = v20;
  v25 = v20[11];
  v26 = sub_1DA34BB10();
  v20[22] = v26;
  v20[23] = v27;
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = v20[11];
    sub_1DA2EEF28(*(v20[13] + 32) + 16, (v20 + 2));
    LOBYTE(v29) = sub_1DA2E814C();
    __swift_destroy_boxed_opaque_existential_1(v20 + 2);
    if (v29)
    {
      v30 = v20[11];
      if (sub_1DA2E838C())
      {
        v20[24] = *(v20[13] + 24);
        v31 = swift_task_alloc();
        v20[25] = v31;
        *v31 = v20;
        v31[1] = sub_1DA2EBC5C;
        OUTLINED_FUNCTION_27();

        return sub_1DA32446C(v32, v33);
      }
    }

    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v37 = v20[15];
    v36 = v20[16];
    v38 = v20[14];
    v39 = v20[11];
    v40 = sub_1DA34C8E0();
    __swift_project_value_buffer(v40, qword_1EE109060);
    v41 = OUTLINED_FUNCTION_2_1();
    v42(v41);
    v43 = sub_1DA34C8C0();
    v44 = sub_1DA34CD80();
    v45 = OUTLINED_FUNCTION_28(v44);
    v47 = v20[15];
    v46 = v20[16];
    v48 = v20[14];
    if (v45)
    {
      v49 = OUTLINED_FUNCTION_37();
      a9 = OUTLINED_FUNCTION_39();
      *v49 = 136315138;
      sub_1DA34BD10();
      OUTLINED_FUNCTION_48();
      v50 = OUTLINED_FUNCTION_10_0();
      v51(v50);
      sub_1DA300D78(v21, v22, &a9);
      OUTLINED_FUNCTION_55();
      *(v49 + 4) = v46;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v58 = OUTLINED_FUNCTION_10_0();
      v59(v58);
    }

    v60 = v20[10];
  }

  else
  {
    v57 = v20[10];
  }

  type metadata accessor for TroubleshootingSnippetModel();
  v61 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_30(v61, v62, v63, v64);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12);
}

uint64_t sub_1DA2EBC5C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 200);
  *v3 = *v1;
  *(v2 + 208) = v6;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA2EBD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_50();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_29();
  a16 = v18;
  v22 = *(v18 + 208);
  if (v22)
  {
    v23 = *(v18 + 192);
    *(v18 + 224) = sub_1DA3248D0(*(v18 + 176), *(v18 + 184), *(v18 + 208));
    *(v18 + 232) = v24;
    if (v24)
    {
      v25 = swift_task_alloc();
      *(v18 + 240) = v25;
      *v25 = v18;
      v25[1] = sub_1DA2EBF2C;
      v26 = *(v18 + 192);
      OUTLINED_FUNCTION_36();

      return sub_1DA324AA8();
    }
  }

  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v29 = *(v18 + 184);
  v30 = sub_1DA34C8E0();
  __swift_project_value_buffer(v30, qword_1EE109060);

  v31 = sub_1DA34C8C0();
  sub_1DA34CDA0();
  OUTLINED_FUNCTION_52();
  v32 = OUTLINED_FUNCTION_51();
  v33 = *(v18 + 184);
  if (v32)
  {
    v34 = *(v18 + 176);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_49();
    *v19 = 136315138;
    v35 = sub_1DA300D78(v34, v33, &a10);

    *(v19 + 4) = v35;
    OUTLINED_FUNCTION_11(&dword_1DA2E0000, v36, v37, "No dialog result found for %s");
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_23();
  }

  else
  {
  }

  OUTLINED_FUNCTION_69();
  v38 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_30(v38, v39, v40, v41);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10);
}

uint64_t sub_1DA2EBF2C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 240);
  *v3 = *v1;
  v2[31] = v6;
  v2[32] = v7;
  v2[33] = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA2EC030()
{
  v52 = v0;
  v2 = v0[32];
  if (v2)
  {
    v42 = v0[31];
    v47 = v0[28];
    v48 = v0[29];
    v3 = v0[22];
    v4 = v0[23];
    v46 = v3;
    v43 = v0[21];
    v44 = v0[33];
    v45 = v0[20];
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[17];
    v49 = v0[12];
    v50 = v0[26];
    v8 = v0[10];
    sub_1DA34B930();
    v9 = sub_1DA34B920();
    v11 = v10;
    (*(v6 + 8))(v5, v7);
    sub_1DA34CEC0();

    v51[0] = 0xD000000000000014;
    v51[1] = 0x80000001DA354B30;
    MEMORY[0x1DA74A690](v3, v4);
    MEMORY[0x1DA74A690](0xD000000000000018, 0x80000001DA354B50);
    sub_1DA34BE00();
    v12 = swift_task_alloc();
    v12[2] = v9;
    v12[3] = v11;
    v12[4] = v42;
    v12[5] = v2;
    v12[6] = 0xD000000000000014;
    v12[7] = 0x80000001DA354B30;
    sub_1DA2EF2D8(&qword_1ECBA58A8, MEMORY[0x1E69BCD78]);
    sub_1DA34C7B0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58B0, &unk_1DA34DF00);
    v13 = *(v45 + 72);
    v14 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DA34DC80;
    sub_1DA2EF25C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58B8, &qword_1DA34FEF0);
    v16 = *(type metadata accessor for TextRun(0) - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DA34DC80;
    sub_1DA34BA10();
    v20 = swift_task_alloc();
    *(v20 + 16) = v47;
    *(v20 + 24) = v48;
    *(v20 + 32) = 1;
    sub_1DA2EF2D8(&qword_1EE10ACC8, MEMORY[0x1E69BCCB0]);
    sub_1DA34C7B0();

    *v8 = v46;
    v8[1] = v4;
    v21 = type metadata accessor for TroubleshootingSnippetModel();
    v22 = v21[5];
    v0[7] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5890, &unk_1DA34F7F0);
    sub_1DA34C0D0();
    v23 = v21[6];
    v0[8] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    sub_1DA34C0D0();
    v24 = v21[7];
    v0[9] = v49;
    type metadata accessor for FlowContext();

    sub_1DA34C0D0();

    sub_1DA2EF31C(v43, type metadata accessor for Action);
    OUTLINED_FUNCTION_45();
    v28 = v21;
  }

  else
  {
    v29 = v0[29];
    v30 = v0[26];

    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v31 = v0[23];
    v32 = sub_1DA34C8E0();
    __swift_project_value_buffer(v32, qword_1EE109060);

    v33 = sub_1DA34C8C0();
    sub_1DA34CDA0();
    OUTLINED_FUNCTION_52();
    v34 = OUTLINED_FUNCTION_51();
    v35 = v0[23];
    if (v34)
    {
      v36 = v0[22];
      OUTLINED_FUNCTION_37();
      v51[0] = OUTLINED_FUNCTION_25();
      *v1 = 136315138;
      v37 = sub_1DA300D78(v36, v35, v51);

      *(v1 + 4) = v37;
      OUTLINED_FUNCTION_11(&dword_1DA2E0000, v38, v39, "No dialog result found for %s");
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_23();
    }

    else
    {
    }

    OUTLINED_FUNCTION_69();
    v25 = OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_30(v25, v26, v27, v28);

  OUTLINED_FUNCTION_15();

  return v40();
}

void sub_1DA2EC588()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[27];
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v2 = v0[23];
  v3 = sub_1DA34C8E0();
  __swift_project_value_buffer(v3, qword_1EE109060);

  v4 = sub_1DA34C8C0();
  v5 = sub_1DA34CDA0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[23];
  if (v6)
  {
    v8 = v0[22];
    v9 = OUTLINED_FUNCTION_37();
    v10 = OUTLINED_FUNCTION_39();
    v18 = OUTLINED_FUNCTION_64(4.8149e-34, v10, v11, v12, v13, v14, v15, v16, v17, v10);

    *(v9 + 4) = v18;
    OUTLINED_FUNCTION_66(&dword_1DA2E0000, v19, v20, "Error creating TroubleshootingSnippetModel for %s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_14();
  }

  else
  {
  }

  OUTLINED_FUNCTION_69();
  v21 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_30(v21, v22, v23, v24);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_65();

  __asm { BRAA            X1, X16 }
}

void sub_1DA2EC6F8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[29];
  v2 = v0[26];

  v3 = v0[33];
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v4 = v0[23];
  v5 = sub_1DA34C8E0();
  __swift_project_value_buffer(v5, qword_1EE109060);

  v6 = sub_1DA34C8C0();
  v7 = sub_1DA34CDA0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[23];
  if (v8)
  {
    v10 = v0[22];
    v11 = OUTLINED_FUNCTION_37();
    v12 = OUTLINED_FUNCTION_39();
    v20 = OUTLINED_FUNCTION_64(4.8149e-34, v12, v13, v14, v15, v16, v17, v18, v19, v12);

    *(v11 + 4) = v20;
    OUTLINED_FUNCTION_66(&dword_1DA2E0000, v21, v22, "Error creating TroubleshootingSnippetModel for %s");
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_14();
  }

  else
  {
  }

  OUTLINED_FUNCTION_69();
  v23 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_30(v23, v24, v25, v26);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_65();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DA2EC878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v4 = *(*(v39 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v39);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v33 - v16;
  v17 = type metadata accessor for TroubleshootingSnippetModel();
  v18 = *(v17 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  sub_1DA34C0F0();
  v19 = *(v41 + 16);

  if (v19)
  {
    sub_1DA34C0F0();
    v34 = v41;
    v20 = type metadata accessor for AttributionModel();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
    v21 = *(v17 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA34C0F0();
    v36 = v41;
    v22 = type metadata accessor for SupplementarySnippetModel();
    v38 = a2;
    v23 = v22[5];
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v20);
    v37 = a1;
    sub_1DA2EEED0();
    sub_1DA34C0D0();
    v33 = v10;
    sub_1DA2EF188(v8, &qword_1ECBA5840, "lt");
    v24 = v22[6];
    v35 = xmmword_1DA34DDC0;
    v41 = xmmword_1DA34DDC0;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5888, &unk_1DA34DEE0);
    sub_1DA34C0D0();
    *&v41 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5890, &unk_1DA34F7F0);
    sub_1DA34C0D0();
    sub_1DA2EEED0();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    (*(*(v25 - 8) + 8))(&v15[v23], v25);
    sub_1DA2EEED0();
    a2 = v38;
    sub_1DA34C0D0();
    sub_1DA2EF188(v8, &qword_1ECBA5840, "lt");
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
    (*(*(v26 - 8) + 8))(&v15[v24], v26);
    v41 = v35;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    sub_1DA34C0D0();
    v27 = v22[7];
    *&v41 = v36;
    type metadata accessor for FlowContext();
    sub_1DA34C0D0();
    sub_1DA2EF188(v33, &qword_1ECBA5840, "lt");
    v28 = type metadata accessor for TellMeGeneratedSnippetModels();
    swift_storeEnumTagMultiPayload();
    v29 = v15;
    v30 = 0;
  }

  else
  {
    v28 = type metadata accessor for TellMeGeneratedSnippetModels();
    v29 = v15;
    v30 = 1;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  sub_1DA2EF030();
  v31 = *(type metadata accessor for SnippetResponseComponents() + 20);
  sub_1DA2EF25C();
  type metadata accessor for TellMeGeneratedSnippetModels();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(a2 + v31, 0, 1, v28);
  return sub_1DA2EF030();
}

uint64_t sub_1DA2ECD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5858, &qword_1DA34DEA8) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5860, &unk_1DA34DEB0) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5868, &qword_1DA34F040);
  v4[44] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[45] = swift_task_alloc();
  v9 = *(*(sub_1DA34B740() - 8) + 64) + 15;
  v4[46] = swift_task_alloc();
  v10 = sub_1DA34B700();
  v4[47] = v10;
  v11 = *(v10 - 8);
  v4[48] = v11;
  v12 = *(v11 + 64) + 15;
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA2ECF34, 0, 0);
}

void *sub_1DA2ECF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_63();
  v15 = v14[41];
  v70 = v14[39];
  sub_1DA2EEF28(v14[40], (v14 + 11));
  v16 = *(v15 + 24);
  v14[53] = v16;
  v17 = *(v15 + 32);
  v18 = v14[14];
  __swift_mutable_project_boxed_opaque_existential_1((v14 + 11), v18);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  v14[54] = v21;
  (*(v19 + 16))();
  v22 = *v21;
  v23 = type metadata accessor for TipsApp();
  v14[16] = v22;
  v14[19] = v23;
  v14[20] = &off_1F55E0128;
  type metadata accessor for AttributionItemFactory();
  inited = swift_initStackObject();
  v14[55] = inited;
  v25 = v14[19];
  v26 = __swift_mutable_project_boxed_opaque_existential_1((v14 + 16), v25);
  v27 = *(v25 - 8);
  v28 = *(v27 + 64) + 15;
  v29 = swift_task_alloc();
  (*(v27 + 16))(v29, v26, v25);
  v30 = *v29;
  inited[5] = v23;
  inited[6] = &off_1F55E0128;
  inited[7] = v16;
  inited[2] = v30;
  inited[8] = v17;

  __swift_destroy_boxed_opaque_existential_1(v14 + 16);

  __swift_destroy_boxed_opaque_existential_1(v14 + 11);
  v31 = sub_1DA34BAF0();
  v32 = sub_1DA32820C(v31);

  Array<A>.asAttributionGroups()(v32);
  v34 = v33;
  v14[56] = v33;

  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  v14[58] = 0;
  v14[59] = v36;
  v14[57] = v35;
  result = v14[56];
  if (v35)
  {
    if (result[2])
    {
      v14[60] = result[4];
      v14[61] = result[5];
      v14[62] = result[7];
      v38 = result[8];
      v14[63] = v38;
      v39 = *(v38 + 16);
      swift_bridgeObjectRetain_n();

      v40 = swift_task_alloc();
      v14[64] = v40;
      *v40 = v14;
      OUTLINED_FUNCTION_17(v40);
      OUTLINED_FUNCTION_35();

      return sub_1DA2FD6A0(v41, v42, v43);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v45 = *(v36 + 16);
    if (v45)
    {
      sub_1DA348A4C(0, v45, 0);
      v46 = v36;
      v47 = *(v36 + 16);
      v48 = (v36 + 56);
      v49 = 16 * v47;
      do
      {
        v51 = *(v48 - 1);
        v50 = *v48;
        v52 = v47 + 1;
        v53 = *(v46 + 24);

        if (v47 >= v53 >> 1)
        {
          sub_1DA348A4C(v53 > 1, v52, 1);
        }

        *(v46 + 16) = v52;
        v54 = v46 + v49;
        *(v54 + 32) = v51;
        *(v54 + 40) = v50;
        v49 += 16;
        v48 += 5;
        ++v47;
        --v45;
      }

      while (v45);
      v14[66] = v46;
      v55 = swift_task_alloc();
      v14[67] = v55;
      *v55 = v14;
      OUTLINED_FUNCTION_18(v55);
      OUTLINED_FUNCTION_35();

      return sub_1DA2FDCD4(v56);
    }

    else
    {

      OUTLINED_FUNCTION_54();
      swift_setDeallocating();
      sub_1DA328944();
      OUTLINED_FUNCTION_68();

      type metadata accessor for AttributionModel();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
      OUTLINED_FUNCTION_34();

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_35();

      return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, v70, a11, a12, a13, a14);
    }
  }

  return result;
}

uint64_t sub_1DA2ED38C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v1[30] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v6 = *(v5 + 512);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v10 + 520) = v9;

  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DA2ED474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_60();
  v13 = *(v12 + 520);
  if (v13)
  {
    v14 = *(v12 + 248);
    v15 = *(v12 + 488);

    v16 = *(v12 + 488);
  }

  else
  {
    v14 = *(v12 + 480);
    v13 = *(v12 + 488);
  }

  v17 = *(v12 + 504);
  v18 = *(v12 + 472);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v12 + 472);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DA2FC02C(0, *(v20 + 16) + 1, 1, *(v12 + 472));
    v20 = v64;
  }

  v22 = *(v20 + 16);
  v21 = *(v20 + 24);
  if (v22 >= v21 >> 1)
  {
    sub_1DA2FC02C(v21 > 1, v22 + 1, 1, v20);
    v20 = v65;
  }

  v24 = *(v12 + 496);
  v23 = *(v12 + 504);
  v26 = *(v12 + 480);
  v25 = *(v12 + 488);

  *(v20 + 16) = v22 + 1;
  v27 = (v20 + 40 * v22);
  v27[4] = v26;
  v27[5] = v25;
  v27[6] = v14;
  v27[7] = v13;
  v27[8] = v23;
  v28 = *(v12 + 456);
  v29 = *(v12 + 464) + 1;
  *(v12 + 464) = v29;
  *(v12 + 472) = v20;
  result = *(v12 + 448);
  if (v29 == v28)
  {

    v31 = *(v20 + 16);
    if (v31)
    {
      v66 = MEMORY[0x1E69E7CC0];
      sub_1DA348A4C(0, v31, 0);
      v32 = v66;
      v33 = *(v66 + 16);
      v34 = 16 * v33;
      v35 = (v20 + 56);
      do
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        v38 = v33 + 1;
        v39 = *(v66 + 24);

        if (v33 >= v39 >> 1)
        {
          sub_1DA348A4C(v39 > 1, v38, 1);
        }

        *(v66 + 16) = v38;
        v40 = v66 + v34;
        *(v40 + 32) = v37;
        *(v40 + 40) = v36;
        v34 += 16;
        v35 += 5;
        ++v33;
        --v31;
      }

      while (v31);
      goto LABEL_20;
    }

    v32 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_20:
      *(v12 + 528) = v32;
      v49 = swift_task_alloc();
      *(v12 + 536) = v49;
      *v49 = v12;
      OUTLINED_FUNCTION_18(v49);
      OUTLINED_FUNCTION_27();

      return sub_1DA2FDCD4(v50);
    }

    OUTLINED_FUNCTION_54();
    swift_setDeallocating();
    sub_1DA328944();
    OUTLINED_FUNCTION_68();

    type metadata accessor for AttributionModel();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
    OUTLINED_FUNCTION_34();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_27();

    return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
  }

  else if (v29 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v41 = (result + 40 * v29);
    *(v12 + 480) = v41[4];
    *(v12 + 488) = v41[5];
    *(v12 + 496) = v41[7];
    v42 = v41[8];
    *(v12 + 504) = v42;
    v43 = *(v42 + 16);
    swift_bridgeObjectRetain_n();

    v44 = swift_task_alloc();
    *(v12 + 512) = v44;
    *v44 = v12;
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_27();

    return sub_1DA2FD6A0(v45, v46, v47);
  }

  return result;
}

uint64_t sub_1DA2ED7D8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v1[33] = v0;
  v1[34] = v3;
  v1[35] = v4;
  v6 = *(v5 + 536);
  v7 = *(v5 + 528);
  v8 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;
  *(v11 + 544) = v10;

  v12 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DA2ED8DC()
{
  if (v0[68])
  {
    v1 = v0[34];
    v2 = v0[59];
    v4 = v0[50];
    v3 = v0[51];
    v5 = v0[47];
    v6 = v0[48];
    v7 = v0[46];
    sub_1DA34B730();
    OUTLINED_FUNCTION_40();
    sub_1DA34B710();
    v47 = *(v6 + 16);
    v47(v4, v3, v5);
    v8 = *(v2 + 16);
    if (v8)
    {
      v9 = v0[59];
      v48 = sub_1DA34B970();
      v10 = (v9 + 64);
      do
      {
        v51 = v0[47];
        v52 = v0[50];
        v11 = v0[43];
        v53 = v0[44];
        v12 = v0[42];
        v13 = *(v10 - 3);
        v14 = *(v10 - 1);
        v15 = *v10;
        v49 = *(v10 - 2);
        v50 = *(v10 - 4);
        v0[36] = v49;
        v0[37] = v14;
        OUTLINED_FUNCTION_21();
        __swift_storeEnumTagSinglePayload(v16, v17, v18, v48);
        sub_1DA2EF2D8(&qword_1EE109F38, MEMORY[0x1E6968848]);
        sub_1DA2EEFDC();
        v54 = v13;

        swift_bridgeObjectRetain_n();
        v55 = v15;

        sub_1DA34B850();
        sub_1DA2EF188(v12, &qword_1ECBA5858, &qword_1DA34DEA8);

        if (__swift_getEnumTagSinglePayload(v11, 1, v53) == 1)
        {
          v19 = v0[43];

          v20 = v19;
          v21 = &unk_1ECBA5860;
          v22 = &unk_1DA34DEB0;
        }

        else
        {
          v23 = v0[50];
          v25 = v0[44];
          v24 = v0[45];
          v26 = v0[43];
          sub_1DA2EF030();
          sub_1DA2EF088();
          v27 = sub_1DA34B720();
          v0[21] = v50;
          v0[22] = v54;
          v0[23] = v49;
          v0[24] = v14;
          v0[25] = v55;
          sub_1DA2EF134();
          sub_1DA34B780();
          v27(v0 + 26, 0);
          v20 = v24;
          v21 = &qword_1ECBA5868;
          v22 = &qword_1DA34F040;
        }

        sub_1DA2EF188(v20, v21, v22);
        v10 += 5;
        --v8;
      }

      while (v8);
    }

    v28 = v0[59];
    v29 = v0[55];
    v30 = v0[52];
    v32 = v0[49];
    v31 = v0[50];
    v33 = v0[47];
    v34 = v0[48];
    v35 = v0[38];
    v56 = v0[54];
    v36 = *(v34 + 8);
    v36(v0[51], v33);

    (*(v34 + 32))(v30, v31, v33);
    v47(v32, v30, v33);
    AttributionModel.init(label:)(v32);
    swift_setDeallocating();
    sub_1DA328944();
    OUTLINED_FUNCTION_68();
    v36(v30, v33);
    type metadata accessor for AttributionModel();
    OUTLINED_FUNCTION_45();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  }

  else
  {
    OUTLINED_FUNCTION_54();
    swift_setDeallocating();
    sub_1DA328944();
    OUTLINED_FUNCTION_68();

    type metadata accessor for AttributionModel();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  }

  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_15();

  return v45();
}

uint64_t sub_1DA2EDCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v77 = a1;
  v74 = a6;
  v68 = a5;
  v78 = a4;
  v8 = type metadata accessor for TellMeGeneratedSnippetModels();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v62 - v13;
  v15 = sub_1DA34BFB0();
  v72 = *(v15 - 8);
  v73 = v15;
  v16 = *(v72 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v69 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - v19;
  v21 = sub_1DA34BAE0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v66 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v62 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v75 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v62 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v62 - v35;
  __swift_storeEnumTagSinglePayload(&v62 - v35, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  sub_1DA34BB00();
  v67 = v22;
  v37 = *(v22 + 88);
  v70 = v21;
  v38 = v37(v27, v21);
  v39 = *MEMORY[0x1E69BCCE8];
  v76 = a3;
  if (v38 == v39)
  {
    v40 = v74;
    sub_1DA2EE4CC(a3, v78, v74, v34);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v8);
    sub_1DA2EEE60(v34, a2);
    v41 = a2;
  }

  else
  {
    v65 = a2;
    v42 = v74;
    if (v38 == *MEMORY[0x1E69BCCE0])
    {
      (*(v72 + 16))(v20, v76, v73);
      sub_1DA2EEED0();
      v40 = v42;

      sub_1DA340330(v20, v14, v42, v34);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v34, 0, 1, v8);
      v41 = v65;
      sub_1DA2EEE60(v34, v65);
    }

    else
    {
      v43 = v73;
      if (v38 == *MEMORY[0x1E69BCCF0])
      {
        v44 = v76;
        (*(v72 + 16))(v20, v76, v73);
        v40 = v42;

        LearnMoreSnippetModel.init(result:context:)(v20, v42);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v34, 0, 1, v8);
        v41 = v65;
        sub_1DA2EEE60(v34, v65);
        sub_1DA2EE72C(v44, v68, v42);
        sub_1DA2EF188(v36, &qword_1ECBA5848, qword_1DA34DF20);
        __swift_storeEnumTagSinglePayload(v34, 0, 1, v8);
        sub_1DA2EF030();
      }

      else
      {
        v45 = v76;
        if (qword_1EE109058 != -1)
        {
          swift_once();
        }

        v46 = sub_1DA34C8E0();
        __swift_project_value_buffer(v46, qword_1EE109060);
        v47 = v72;
        v48 = v69;
        (*(v72 + 16))(v69, v45, v43);
        v49 = sub_1DA34C8C0();
        LODWORD(v68) = sub_1DA34CDA0();
        v50 = os_log_type_enabled(v49, v68);
        v51 = v70;
        if (v50)
        {
          v63 = swift_slowAlloc();
          *v63 = 134217984;
          v52 = v66;
          v64 = v49;
          sub_1DA34BB00();
          v62 = sub_1DA34BAD0();
          v53 = *(v67 + 8);
          v54 = v52;
          v51 = v70;
          v53(v54, v70);
          (*(v47 + 8))(v69, v43);
          v55 = v63;
          *(v63 + 4) = v62;
          v56 = v64;
          _os_log_impl(&dword_1DA2E0000, v64, v68, "Unhandled template type: %ld", v55, 0xCu);
          MEMORY[0x1DA74B3A0](v55, -1, -1);
        }

        else
        {
          (*(v47 + 8))(v48, v43);

          v53 = *(v67 + 8);
        }

        v41 = v65;
        v53(v27, v51);
        v40 = v42;
      }
    }
  }

  v57 = v75;
  sub_1DA2EEED0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v8);
  sub_1DA2EF188(v57, &qword_1ECBA5848, qword_1DA34DF20);
  if (EnumTagSinglePayload == 1)
  {
    sub_1DA2EE9D4(v76, v78, v40, v34);
    sub_1DA2EF188(v36, &qword_1ECBA5848, qword_1DA34DF20);
    sub_1DA2EF030();
  }

  if (__swift_getEnumTagSinglePayload(v41, 1, v8))
  {
    v59 = 0;
  }

  else
  {
    v60 = v71;
    sub_1DA2EF25C();
    v59 = sub_1DA30B5E8();
    sub_1DA2EF31C(v60, type metadata accessor for TellMeGeneratedSnippetModels);
  }

  swift_beginAccess();
  *(v40 + 97) = v59 & 1;
  return sub_1DA2EF030();
}

uint64_t sub_1DA2EE4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a2;
  v24 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_1DA34BFB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DA34BED0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA34BEE0();
  v20 = sub_1DA34BA50();
  (*(v16 + 8))(v19, v15);
  v21 = *(v20 + 16);

  (*(v11 + 16))(v14, a1, v10);
  sub_1DA2EEED0();

  if (v21)
  {
    sub_1DA32A2E0(v14, v9, a3, v24);
  }

  else
  {
    sub_1DA340330(v14, v9, a3, v24);
  }

  type metadata accessor for TellMeGeneratedSnippetModels();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DA2EE72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DA2EEF28(a2, v31);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v7 = v32;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v14 = type metadata accessor for TipsApp();
  v29 = v14;
  v30 = &off_1F55E0128;
  v28[0] = v13;
  type metadata accessor for AttributionItemFactory();
  inited = swift_initStackObject();
  v16 = v29;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  inited[5] = v14;
  inited[6] = &off_1F55E0128;
  inited[2] = v22;
  inited[7] = v6;
  inited[8] = v5;

  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  v23 = sub_1DA34BAF0();
  v24 = sub_1DA32820C(v23);

  v27 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5850, &qword_1DA34DEA0);
  sub_1DA34C0D0();
  LODWORD(v5) = *(type metadata accessor for AttributionListSnippetModel() + 20);
  v27 = a3;
  type metadata accessor for FlowContext();

  sub_1DA34C0D0();
  swift_setDeallocating();
  sub_1DA328944();
  swift_deallocClassInstance();
  type metadata accessor for TellMeGeneratedSnippetModels();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DA2EE9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v40 = a4;
  v36[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = v36 - v7;
  v37 = sub_1DA34BFB0();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SupplementarySnippetModel();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA34BAE0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v36 - v22;
  sub_1DA34BB00();
  (*(v17 + 104))(v21, *MEMORY[0x1E69BCCF0], v16);
  sub_1DA2EF2D8(&qword_1EE109F20, MEMORY[0x1E69BCCF8]);
  sub_1DA34CC40();
  sub_1DA34CC40();
  v24 = *(v17 + 8);
  v24(v21, v16);
  v24(v23, v16);
  v26 = v41;
  v25 = v42;
  (*(v8 + 16))(v11, a1, v37);
  if (v25 == v26)
  {
    v27 = v38;
    sub_1DA2EEED0();
  }

  else
  {
    v28 = type metadata accessor for AttributionModel();
    v27 = v38;
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v28);
  }

  v29 = v39;

  sub_1DA303FBC(v11, v27, 0, v29, v15);
  if (sub_1DA3045EC())
  {
    v30 = v40;
    sub_1DA2EF1E0();
    v31 = type metadata accessor for TellMeGeneratedSnippetModels();
    swift_storeEnumTagMultiPayload();
    v32 = v30;
    v33 = 0;
    v34 = v31;
  }

  else
  {
    sub_1DA2EF31C(v15, type metadata accessor for SupplementarySnippetModel);
    v34 = type metadata accessor for TellMeGeneratedSnippetModels();
    v32 = v40;
    v33 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v32, v33, 1, v34);
}

void *sub_1DA2EEDB0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_1DA2EEDE0()
{
  sub_1DA2EEDB0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA2EEE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2EEED0()
{
  OUTLINED_FUNCTION_62();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_40();
  v7(v6);
  return v0;
}

uint64_t sub_1DA2EEF28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_1DA2EEFDC()
{
  result = qword_1EE109028;
  if (!qword_1EE109028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109028);
  }

  return result;
}

uint64_t sub_1DA2EF030()
{
  OUTLINED_FUNCTION_62();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_40();
  v7(v6);
  return v0;
}

unint64_t sub_1DA2EF088()
{
  result = qword_1EE109000;
  if (!qword_1EE109000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5868, &qword_1DA34F040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109000);
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

unint64_t sub_1DA2EF134()
{
  result = qword_1EE10AD98;
  if (!qword_1EE10AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AD98);
  }

  return result;
}

uint64_t sub_1DA2EF188(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1DA2EF1E0()
{
  OUTLINED_FUNCTION_62();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_40();
  v6(v5);
  return v0;
}

uint64_t sub_1DA2EF238()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return sub_1DA303358();
}

uint64_t sub_1DA2EF25C()
{
  OUTLINED_FUNCTION_62();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_40();
  v6(v5);
  return v0;
}

uint64_t sub_1DA2EF2B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  return sub_1DA34746C();
}

uint64_t sub_1DA2EF2D8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA2EF31C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{
  *(a1 + 8) = sub_1DA2EB470;
  v2 = *(v1 + 48);
  return *(v1 + 56);
}

void OUTLINED_FUNCTION_3_0()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1DA74B3A0);
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  v2 = *(v0 + 16);

  return sub_1DA2EF1E0();
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_14()
{

  JUMPOUT(0x1DA74B3A0);
}

uint64_t OUTLINED_FUNCTION_15()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1)
{
  *(a1 + 8) = sub_1DA2ED38C;
  v3 = *(v1 + 424);
  return v2;
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1)
{
  *(a1 + 8) = sub_1DA2ED7D8;
  v3 = *(v1 + 424);
  return v2;
}

void OUTLINED_FUNCTION_19()
{
  if ((*(v0 + 40) & 0x2000000000000000) == 0)
  {
    v1 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
  }
}

void OUTLINED_FUNCTION_23()
{

  JUMPOUT(0x1DA74B3A0);
}

uint64_t OUTLINED_FUNCTION_25()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1DA300D78(v2, v3, va);
}

BOOL OUTLINED_FUNCTION_28(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  v5 = v4[21];
  v6 = v4[19];
  v7 = v4[16];
}

uint64_t OUTLINED_FUNCTION_32()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
}

uint64_t OUTLINED_FUNCTION_33()
{
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34()
{
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v7 = v0[45];
  v6 = v0[46];
  v9 = v0[42];
  v8 = v0[43];
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 40);
  return *(v2 + 24);
}

BOOL OUTLINED_FUNCTION_51()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_52()
{
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1DA300D78(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_54()
{
  v2 = v0[59];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[38];
}

uint64_t OUTLINED_FUNCTION_55()
{
}

uint64_t OUTLINED_FUNCTION_56()
{
}

uint64_t OUTLINED_FUNCTION_57()
{
}

uint64_t OUTLINED_FUNCTION_64(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_1DA300D78(v11, v10, &a10);
}

void OUTLINED_FUNCTION_66(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_69()
{
  v2 = *(v0 + 80);

  return type metadata accessor for TroubleshootingSnippetModel();
}

uint64_t type metadata accessor for SnippetResponseComponents()
{
  result = qword_1EE109370;
  if (!qword_1EE109370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA2EFA28()
{
  sub_1DA2EFA94();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DA2EFA94()
{
  if (!qword_1EE109238)
  {
    type metadata accessor for TellMeGeneratedSnippetModels();
    v0 = sub_1DA34CE20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE109238);
    }
  }
}

uint64_t sub_1DA2EFB1C(uint64_t (*a1)(void))
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_3_1();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for SnippetResponseComponents();
  sub_1DA2F00BC(v3 + *(v12 + 20), v11);
  v13 = type metadata accessor for TellMeGeneratedSnippetModels();
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) == 1)
  {
    sub_1DA2F012C(v11);
  }

  else
  {
    v14 = a1();
    OUTLINED_FUNCTION_0_2();
    sub_1DA2F0194(v11, v15);
    if (v14)
    {
      v16 = 1;
      return v16 & 1;
    }
  }

  sub_1DA2F00BC(v3, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    sub_1DA2F012C(v8);
    v16 = 0;
  }

  else
  {
    v16 = a1();
    OUTLINED_FUNCTION_0_2();
    sub_1DA2F0194(v8, v17);
  }

  return v16 & 1;
}

uint64_t sub_1DA2EFC7C()
{
  v1 = v0;
  v2 = type metadata accessor for ListStyleAnswerSnippetModel();
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_3_1();
  v12 = v10 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  v19 = type metadata accessor for TellMeGeneratedSnippetModels();
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_1();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v39 - v27;
  sub_1DA2F00BC(v1, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_1DA2F012C(v18);
  }

  else
  {
    sub_1DA2F01EC(v18, v28, type metadata accessor for TellMeGeneratedSnippetModels);
    sub_1DA2F01EC(v28, v25, type metadata accessor for TellMeGeneratedSnippetModels);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_0_2();
    sub_1DA2F0194(v25, v30);
    if (EnumCaseMultiPayload == 5)
    {
      return 5;
    }
  }

  v32 = type metadata accessor for SnippetResponseComponents();
  sub_1DA2F00BC(v1 + *(v32 + 20), v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v19) == 1)
  {
LABEL_6:
    v31 = 0;
  }

  else
  {
    sub_1DA2F00BC(v16, v12);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_0_2();
        sub_1DA2F0194(v12, v34);
        v31 = 4;
        break;
      case 2u:
        sub_1DA2F01EC(v12, v7, type metadata accessor for ListStyleAnswerSnippetModel);
        v36 = v7[*(v2 + 44)];
        sub_1DA2F0194(v7, type metadata accessor for ListStyleAnswerSnippetModel);
        if (v36)
        {
          v31 = 2;
        }

        else
        {
          v31 = 1;
        }

        break;
      case 3u:
        OUTLINED_FUNCTION_0_2();
        sub_1DA2F0194(v12, v35);
        v31 = 3;
        break;
      case 6u:
        OUTLINED_FUNCTION_0_2();
        sub_1DA2F0194(v12, v37);
        v31 = 6;
        break;
      default:
        OUTLINED_FUNCTION_0_2();
        sub_1DA2F0194(v12, v38);
        goto LABEL_6;
    }
  }

  sub_1DA2F012C(v16);
  return v31;
}

uint64_t sub_1DA2EFF9C()
{
  result = sub_1DA2EFC7C();
  switch(result)
  {
    case 1:
      OUTLINED_FUNCTION_1_2();
      result = v1 | 8;
      break;
    case 2:
      OUTLINED_FUNCTION_1_2();
      result = v3 + 10;
      break;
    case 3:
      OUTLINED_FUNCTION_1_2();
      result = v4 | 4;
      break;
    case 4:
      OUTLINED_FUNCTION_1_2();
      result = v2 + 6;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      OUTLINED_FUNCTION_1_2();
      result = v5 + 16;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA2F00BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2F012C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA2F0194(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DA2F01EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_12(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t TipCollectionModel.collectionIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_40();
}

uint64_t TipCollectionModel.collectionIdentifier.setter()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TipCollectionModel.collectionSymbol.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_40();
}

uint64_t TipCollectionModel.collectionSymbol.setter()
{
  OUTLINED_FUNCTION_4_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TipCollectionModel.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_40();
}

uint64_t TipCollectionModel.title.setter()
{
  OUTLINED_FUNCTION_4_1();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t TipCollectionModel.bodyText.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_40();
}

uint64_t TipCollectionModel.bodyText.setter()
{
  OUTLINED_FUNCTION_4_1();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t TipCollectionModel.init(result:collection:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57C8, &unk_1DA34DA10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - v8;
  sub_1DA2E616C(a1, &v27 - v8);
  v10 = sub_1DA34BFB0();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v11 = sub_1DA34BC70();
    v12 = v17;
    (*(*(v10 - 8) + 8))(v9, v10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    v14 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_12;
  }

  sub_1DA2E6204(v9);
  v11 = 0;
  v12 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = [a2 tocAssets];
  v27 = v12;
  v28 = v11;
  if (v13)
  {
    v14 = sub_1DA2F0ED0(v13, &selRef_symbolId);
    v16 = v15;
  }

  else
  {
    v16 = 0;
    v14 = 0;
  }

  v21 = a2;
  a2 = sub_1DA2F0ED0(v21, &selRef_title);
  v18 = v22;
  v23 = [v21 tileContent];
  v24 = [v23 bodyText];

  if (v24)
  {
    v19 = sub_1DA34CB40();
    v20 = v25;
  }

  else
  {

    v19 = 0;
    v20 = 0;
  }

  v12 = v27;
  v11 = v28;
LABEL_12:
  result = sub_1DA2E6204(a1);
  *a3 = v11;
  a3[1] = v12;
  a3[2] = v14;
  a3[3] = v16;
  a3[4] = a2;
  a3[5] = v18;
  a3[6] = v19;
  a3[7] = v20;
  return result;
}

void TipCollectionModel.punchOutUrl.getter()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = sub_1DA34CB30();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() URLWithTipIdentifier:0 collectionIdentifier:v2 referrer:0];

  sub_1DA34B8A0();
}

uint64_t sub_1DA2F0738(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001DA354C40 == a2;
  if (v3 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DA354C60 == a2;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7478655479646F62 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DA34D160();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DA2F08A4(unsigned __int8 a1)
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](a1);
  return sub_1DA34D230();
}

unint64_t sub_1DA2F08EC(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0x7478655479646F62;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1DA2F0988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2F0738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2F09B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA2F089C();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2F09D8(uint64_t a1)
{
  v2 = sub_1DA2F0F3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2F0A14(uint64_t a1)
{
  v2 = sub_1DA2F0F3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TipCollectionModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C8, &qword_1DA34DF98);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v19 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v19[5] = v1[3];
  v19[6] = v13;
  v14 = v1[4];
  v19[3] = v1[5];
  v19[4] = v14;
  v15 = v1[6];
  v19[1] = v1[7];
  v19[2] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F0F3C();
  sub_1DA34D250();
  v23 = 0;
  v17 = v19[7];
  sub_1DA34D0C0();
  if (!v17)
  {
    v22 = 1;
    OUTLINED_FUNCTION_2_2();
    v21 = 2;
    OUTLINED_FUNCTION_2_2();
    v20 = 3;
    OUTLINED_FUNCTION_2_2();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t TipCollectionModel.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58D8, &qword_1DA34DFA0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DA2F0F3C();
  sub_1DA34D240();
  if (v2)
  {
    OUTLINED_FUNCTION_3_2();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v34 = 0uLL;
    v35 = v8;
    v36 = a2;
    v37 = v12;
    v38 = v11;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v28 = a2;
    *&v29 = OUTLINED_FUNCTION_1_3();
    *(&v29 + 1) = v14;
    v15 = OUTLINED_FUNCTION_1_3();
    v17 = v16;
    LOBYTE(v34) = 2;
    v18 = OUTLINED_FUNCTION_1_3();
    v20 = v19;
    v41 = 3;
    v21 = sub_1DA34D030();
    v22 = OUTLINED_FUNCTION_0_3();
    v24 = v23;
    v25(v22, v5);
    v30 = v29;
    *&v31 = v15;
    *(&v31 + 1) = v17;
    *&v32 = v18;
    *(&v32 + 1) = v20;
    *&v33 = v21;
    *(&v33 + 1) = v24;
    v26 = v31;
    *v28 = v29;
    v28[1] = v26;
    v27 = v33;
    v28[2] = v32;
    v28[3] = v27;
    sub_1DA2F0FC0(&v30, &v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v34 = v29;
    v35 = v15;
    v36 = v17;
    v37 = v18;
    v38 = v20;
    v39 = v21;
    v40 = v24;
  }

  return sub_1DA2F0F90(&v34);
}

uint64_t sub_1DA2F0ED0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1DA34CB40();

  return v4;
}

unint64_t sub_1DA2F0F3C()
{
  result = qword_1ECBA58D0;
  if (!qword_1ECBA58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA58D0);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DA2F100C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1DA2F1060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TipCollectionModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TipCollectionModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA2F123C()
{
  result = qword_1ECBA58E0;
  if (!qword_1ECBA58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA58E0);
  }

  return result;
}

unint64_t sub_1DA2F1294()
{
  result = qword_1ECBA58E8;
  if (!qword_1ECBA58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA58E8);
  }

  return result;
}

unint64_t sub_1DA2F12EC()
{
  result = qword_1ECBA58F0;
  if (!qword_1ECBA58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA58F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return sub_1DA34D030();
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return sub_1DA34D0C0();
}

id sub_1DA2F13AC(uint64_t a1)
{
  v2 = v1;
  v73[1] = *v2;
  v4 = sub_1DA34B830();
  v5 = OUTLINED_FUNCTION_0(v4);
  v75 = v6;
  v76 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v74 = v10 - v9;
  v11 = sub_1DA34B970();
  v12 = OUTLINED_FUNCTION_0(v11);
  v77 = v13;
  v78 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v18 = v17 - v16;
  v19 = sub_1DA34B8C0();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v20);
  v27 = v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v73 - v28;
  v30 = sub_1DA34B7F0();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_4();
  v38 = (v37 - v36);
  v79 = a1;
  sub_1DA34B820();
  v39 = v33[11];
  v40 = OUTLINED_FUNCTION_2_3();
  v42 = v41(v40);
  if (v42 == *MEMORY[0x1E6968E00])
  {
    v43 = v33[12];
    v44 = OUTLINED_FUNCTION_2_3();
    v45(v44);
    v46 = *v38;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v48 = [objc_opt_self() bundleForClass_];
LABEL_3:
    v49 = v48;
    goto LABEL_11;
  }

  if (v42 == *MEMORY[0x1E6968DF8])
  {
    v50 = v33[12];
    v51 = OUTLINED_FUNCTION_2_3();
    v52(v51);
    (*(v22 + 32))(v29, v38, v19);
    sub_1DA2F1BE4();
    (*(v22 + 16))(v27, v29, v19);
    v53 = sub_1DA2F193C(v27);
    if (!v53)
    {
      v54 = swift_getObjCClassFromMetadata();
      v53 = [objc_opt_self() bundleForClass_];
    }

    v49 = v53;
    (*(v22 + 8))(v29, v19);
  }

  else
  {
    if (v42 == *MEMORY[0x1E6968DF0])
    {
      v48 = [objc_opt_self() mainBundle];
      goto LABEL_3;
    }

    v55 = swift_getObjCClassFromMetadata();
    v49 = [objc_opt_self() bundleForClass_];
    v56 = v33[1];
    v57 = OUTLINED_FUNCTION_2_3();
    v58(v57);
  }

LABEL_11:
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v60 = result;
    sub_1DA34B800();
    v61 = sub_1DA34CB30();

    sub_1DA34B810();
    if (v62)
    {
      v63 = sub_1DA34CB30();
    }

    else
    {
      v63 = 0;
    }

    v64 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    v65 = v49;
    sub_1DA34C210();
    v84 = sub_1DA34B950();
    v85 = v66;
    v82 = 45;
    v83 = 0xE100000000000000;
    v80 = 95;
    v81 = 0xE100000000000000;
    sub_1DA2EEFDC();
    v67 = sub_1DA34CE70();
    v69 = v68;
    (*(v77 + 8))(v18, v78);

    v70 = sub_1DA2F1B30(v61, v63, v49, v67, v69, v60);
    v72 = v71;

    if (!v72)
    {
      (*(v75 + 16))(v74, v79, v76);
      v70 = sub_1DA34CB90();
    }

    return v70;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DA2F193C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DA34B890();
  v4 = [v2 initWithURL_];

  v5 = sub_1DA34B8C0();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1DA2F19D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA2F1A34()
{
  v0 = sub_1DA34B7F0();
  __swift_allocate_value_buffer(v0, qword_1ECBAD2A0);
  v1 = __swift_project_value_buffer(v0, qword_1ECBAD2A0);
  *v1 = type metadata accessor for LocalizedResourceProvider();
  v2 = *MEMORY[0x1E6968E00];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
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

uint64_t sub_1DA2F1B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1DA34CB30();

  v11 = [a6 localizedStringForKey:a1 table:a2 bundle:a3 languageCode:v10];

  if (!v11)
  {
    return 0;
  }

  v12 = sub_1DA34CB40();

  return v12;
}

unint64_t sub_1DA2F1BE4()
{
  result = qword_1ECBA58F8;
  if (!qword_1ECBA58F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBA58F8);
  }

  return result;
}

uint64_t sub_1DA2F1C44()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = sub_1DA34BF20();
  v1 = v0;
  v3 = v2;
  switch(v2 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_1_5();
      v4 = v1;
      v5 = v1 >> 32;
      goto LABEL_7;
    case 2uLL:
      v4 = *(v0 + 16);
      v5 = *(v0 + 24);
      OUTLINED_FUNCTION_1_5();
LABEL_7:
      if (v4 != v5)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    case 3uLL:
      OUTLINED_FUNCTION_1_5();
      goto LABEL_16;
    default:
      OUTLINED_FUNCTION_1_5();
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_8:
      v6 = objc_opt_self();
      v7 = sub_1DA34BF20();
      v9 = v8;
      v10 = sub_1DA34B8D0();
      sub_1DA2E62C4(v7, v9);
      *&v18 = 0;
      v11 = [v6 JSONObjectWithData:v10 options:0 error:&v18];

      if (!v11)
      {
        v14 = v18;
        v15 = sub_1DA34B7E0();

        swift_willThrow();
        goto LABEL_16;
      }

      v12 = v18;
      sub_1DA34CE80();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5900, &qword_1DA34E640);
      if ((OUTLINED_FUNCTION_0_4() & 1) == 0)
      {
LABEL_16:
        result = 0;
        goto LABEL_17;
      }

      sub_1DA31A55C(0x6C6562616CLL, 0xE500000000000000, v17, &v18);

      if (!v19)
      {
        sub_1DA2F1E40(&v18);
        goto LABEL_16;
      }

      if (OUTLINED_FUNCTION_0_4())
      {
        result = v17;
      }

      else
      {
        result = 0;
      }

LABEL_17:
      v16 = *MEMORY[0x1E69E9840];
      return result;
  }
}

uint64_t sub_1DA2F1E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5908, &qword_1DA34F200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_1DA2E62C4(v0, v1);
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

uint64_t sub_1DA2F1EF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DA2F1F34(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1DA2F1F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a11;
  v26 = a12;
  v24 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5910, &unk_1DA34E238);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v24 - v19;
  sub_1DA34C350();
  if (!a4)
  {
    sub_1DA2EFF9C();
  }

  sub_1DA34C340();
  sub_1DA2F214C(a6, v20);
  sub_1DA34C360();
  if (a7 == 2)
  {
    sub_1DA34C370();
  }

  sub_1DA34C380();
  v21 = type metadata accessor for TellMeGeneratedSnippetModels();
  __swift_getEnumTagSinglePayload(a8, 1, v21);
  sub_1DA34C3A0();
  v22 = sub_1DA34C390();
  MEMORY[0x1EEE9AC00](v22);
  *(&v24 - 2) = a13;
  sub_1DA2F22AC(sub_1DA2F228C, (&v24 - 4), a9, v24, v25, v26);
  return sub_1DA34C330();
}

uint64_t sub_1DA2F214C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5910, &unk_1DA34E238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DA2F21BC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = [objc_allocWithZone(MEMORY[0x1E69C7B60]) init];
  v8 = sub_1DA34CB30();
  [v7 setInput_];

  v9 = sub_1DA34CB30();
  [v7 setOutput_];

  v10 = *MEMORY[0x1E69C8348];
  v11 = sub_1DA34CB40();
  sub_1DA2F235C(v11, v12, v7);
  *a2 = v7;
}

uint64_t sub_1DA2F22AC(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a4)
  {
    return 0;
  }

  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;

  a1(&v10, v9);

  if (v6)
  {

    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

void sub_1DA2F235C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DA34CB30();

  [a3 setDomain_];
}

uint64_t AttributionListSnippetModel.init(attributions:context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5850, &qword_1DA34DEA0);
  sub_1DA34C0D0();
  v0 = *(type metadata accessor for AttributionListSnippetModel() + 20);
  type metadata accessor for FlowContext();
  return sub_1DA34C0D0();
}

uint64_t type metadata accessor for AttributionListSnippetModel()
{
  result = qword_1EE10A688;
  if (!qword_1EE10A688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributionListSnippetModel.attributions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5918, &qword_1DA34E248);
  sub_1DA34C0F0();
  return v1;
}

uint64_t sub_1DA2F24CC(uint64_t *a1)
{
  v1 = *a1;

  return AttributionListSnippetModel.attributions.setter();
}

uint64_t (*AttributionListSnippetModel.attributions.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5918, &qword_1DA34E248);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F25B0;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t AttributionListSnippetModel.context.getter()
{
  v0 = *(type metadata accessor for AttributionListSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  sub_1DA34C0F0();
  return v2;
}

uint64_t sub_1DA2F263C(uint64_t *a1)
{
  v1 = *a1;

  return AttributionListSnippetModel.context.setter();
}

uint64_t AttributionListSnippetModel.context.setter()
{
  v0 = *(type metadata accessor for AttributionListSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return sub_1DA34C100();
}

uint64_t (*AttributionListSnippetModel.context.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for AttributionListSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

void sub_1DA2F2748(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1DA2F2794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEC000000736E6F69;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA34D160();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DA2F2860(char a1)
{
  if (a1)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_1DA2F28A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2F2794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2F28D0(uint64_t a1)
{
  v2 = sub_1DA2F2AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2F290C(uint64_t a1)
{
  v2 = sub_1DA2F2AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributionListSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5920, &qword_1DA34E258);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F2AE8();
  sub_1DA34D250();
  v16[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5918, &qword_1DA34E248);
  OUTLINED_FUNCTION_1_6();
  sub_1DA2F3020(v12);
  OUTLINED_FUNCTION_6_1();
  if (!v1)
  {
    v13 = *(type metadata accessor for AttributionListSnippetModel() + 20);
    v16[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    OUTLINED_FUNCTION_1_6();
    sub_1DA2F2BD4(v14);
    OUTLINED_FUNCTION_6_1();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_1DA2F2AE8()
{
  result = qword_1ECBA5928;
  if (!qword_1ECBA5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5928);
  }

  return result;
}

unint64_t sub_1DA2F2B3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5850, &qword_1DA34DEA0);
    sub_1DA2F3254(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA2F2BD4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA2F3254(&unk_1EE10AC10);
    sub_1DA2F3254(&unk_1EE10AC18);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t AttributionListSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_0(v40);
  v37 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5918, &qword_1DA34E248);
  OUTLINED_FUNCTION_0(v44);
  v39 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v35 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5938, &qword_1DA34E260);
  v16 = OUTLINED_FUNCTION_0(v15);
  v42 = v17;
  v43 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v20);
  v21 = type metadata accessor for AttributionListSnippetModel();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F2AE8();
  sub_1DA34D240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v21;
  v36 = v24;
  v27 = v39;
  v26 = v40;
  v46 = 0;
  OUTLINED_FUNCTION_2_4();
  sub_1DA2F3020(v28);
  v29 = v41;
  sub_1DA34D090();
  (*(v27 + 32))(v36, v29, v44);
  v45 = 1;
  OUTLINED_FUNCTION_2_4();
  sub_1DA2F2BD4(v30);
  sub_1DA34D090();
  v31 = OUTLINED_FUNCTION_5_1();
  v32(v31);
  v33 = v36;
  (*(v37 + 32))(&v36[*(v35 + 20)], v9, v26);
  sub_1DA2F3104(v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA2F3168(v33);
}

unint64_t sub_1DA2F3020(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5918, &qword_1DA34E248);
    sub_1DA2F2B3C(&unk_1EE109018);
    sub_1DA2F2B3C(&unk_1EE109F78);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DA2F3104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionListSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2F3168(uint64_t a1)
{
  v2 = type metadata accessor for AttributionListSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA2F3254(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1DA2F32F0()
{
  sub_1DA2F3374();
  if (v0 <= 0x3F)
  {
    sub_1DA2F33D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA2F3374()
{
  if (!qword_1EE10AC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5850, &qword_1DA34DEA0);
    v0 = sub_1DA34C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE10AC68);
    }
  }
}

void sub_1DA2F33D8()
{
  if (!qword_1EE10AC98)
  {
    type metadata accessor for FlowContext();
    v0 = sub_1DA34C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE10AC98);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AttributionListSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA2F3510()
{
  result = qword_1ECBA5958;
  if (!qword_1ECBA5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5958);
  }

  return result;
}

unint64_t sub_1DA2F3568()
{
  result = qword_1ECBA5960;
  if (!qword_1ECBA5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5960);
  }

  return result;
}

unint64_t sub_1DA2F35C0()
{
  result = qword_1ECBA5968;
  if (!qword_1ECBA5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5968);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return sub_1DA34D120();
}

uint64_t CodableMessage.init(serializedData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = sub_1DA34C770();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v25 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  v32 = a1;
  v33 = a2;
  v26 = a4;
  v27 = a3;
  swift_getAssociatedConformanceWitness();
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  sub_1DA2F3A4C(a1, a2);
  sub_1DA34C760();
  v21 = v34;
  sub_1DA34C790();
  if (v21)
  {
    return sub_1DA2E62C4(a1, a2);
  }

  v23 = v25;
  (*(v14 + 16))(v25, v20, AssociatedTypeWitness);
  (*(v26 + 32))(v23, v27);
  sub_1DA2E62C4(a1, a2);
  return (*(v14 + 8))(v20, AssociatedTypeWitness);
}

uint64_t CodableMessage.serializedData()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v14 - v10;
  (*(a2 + 24))(a1, a2);
  swift_getAssociatedConformanceWitness();
  v12 = sub_1DA34C780();
  (*(v7 + 8))(v11, AssociatedTypeWitness);
  return v12;
}

uint64_t sub_1DA2F3A4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DA2F3AA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7A696C6169726573 && a2 == 0xEF6F746F72506465)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DA34D160();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DA2F3B2C()
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](0);
  return sub_1DA34D230();
}

uint64_t sub_1DA2F3B9C()
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](0);
  return sub_1DA34D230();
}

uint64_t sub_1DA2F3BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2F3AA4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DA2F3C28@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_125();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DA2F3C54(uint64_t a1)
{
  v2 = sub_1DA2F3F10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2F3C90(uint64_t a1)
{
  v2 = sub_1DA2F3F10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Decodable<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v26 = a3;
  v21 = *(a2 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  v11 = OUTLINED_FUNCTION_0(v10);
  v23 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v21 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F3F10();
  sub_1DA34D240();
  if (!v4)
  {
    v18 = v23;
    v19 = v26;
    sub_1DA2F3F64();
    sub_1DA34D090();
    (*(v19 + 40))(v24, v25, a2, v19);
    (*(v18 + 8))(v16, v10);
    (*(v21 + 32))(v22, v9, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DA2F3F10()
{
  result = qword_1EE10A760[0];
  if (!qword_1EE10A760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE10A760);
  }

  return result;
}

unint64_t sub_1DA2F3F64()
{
  result = qword_1EE109F28;
  if (!qword_1EE109F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109F28);
  }

  return result;
}

uint64_t Encodable<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5978, qword_1DA34E468);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F3F10();
  sub_1DA34D250();
  v15 = v21;
  v16 = (*(a3 + 48))(a2, a3);
  if (!v15)
  {
    v19 = v16;
    v20 = v17;
    sub_1DA2F4138();
    sub_1DA34D120();
    sub_1DA2E62C4(v19, v20);
  }

  return (*(v9 + 8))(v13, v6);
}

unint64_t sub_1DA2F4138()
{
  result = qword_1EE10ACD0;
  if (!qword_1EE10ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10ACD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableMessageCodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for CodableMessageCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DA2F4310()
{
  result = qword_1ECBA5980;
  if (!qword_1ECBA5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5980);
  }

  return result;
}

unint64_t sub_1DA2F4368()
{
  result = qword_1EE10A750;
  if (!qword_1EE10A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A750);
  }

  return result;
}

unint64_t sub_1DA2F43C0()
{
  result = qword_1EE10A758;
  if (!qword_1EE10A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A758);
  }

  return result;
}

void TipSnippetModel.init(tip:context:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5988, &unk_1DA34E5D0);
  v5 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3_1();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for TipSnippetModel(0);
  v13 = v12[5];
  v42 = 0;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
  sub_1DA34C0D0();
  v39 = v12[8];
  v38 = type metadata accessor for TipSnippetModel.AssetConfiguration(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1DA2F81F4(v11, v8, &qword_1ECBA5988, &unk_1DA34E5D0);
  sub_1DA34C0D0();
  sub_1DA2F4920(v11);
  v18 = a1;
  v19 = [v18 identifier];
  v20 = sub_1DA34CB40();
  v22 = v21;

  v42 = v20;
  v43 = v22;
  sub_1DA34C0D0();
  v23 = sub_1DA2F8190(v18);
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
  OUTLINED_FUNCTION_0_5(v26);
  (*(v27 + 8))(a3 + v13);
  v42 = v23;
  v43 = v25;
  sub_1DA34C0D0();
  v28 = TPSTip.bodyContentOrText.getter();
  v29 = v12[6];
  v42 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A0, &qword_1DA34E5E8);
  sub_1DA34C0D0();
  v30 = [v18 language];

  v31 = sub_1DA34CB40();
  v33 = v32;

  v34 = v12[7];
  v42 = v31;
  v43 = v33;
  sub_1DA34C0D0();
  sub_1DA33D7D0(v11);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v38);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
  OUTLINED_FUNCTION_0_5(v35);
  (*(v36 + 8))(a3 + v39);
  sub_1DA2F81F4(v11, v8, &qword_1ECBA5988, &unk_1DA34E5D0);
  sub_1DA34C0D0();
  sub_1DA2F4920(v11);
  v37 = v12[9];
  v42 = v41;
  type metadata accessor for FlowContext();

  sub_1DA34C0D0();
}

uint64_t sub_1DA2F48E8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA2F4920(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5988, &unk_1DA34E5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA2F4988()
{
  v0 = OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_8_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1DA34CBE0();
  return sub_1DA34D230();
}

uint64_t sub_1DA2F49D0()
{
  v0 = OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_8_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1DA34CBE0();
  return sub_1DA34D230();
}

uint64_t sub_1DA2F4A30(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_23_0();
  a2(a1);
  OUTLINED_FUNCTION_7_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F4A80()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_30_0();
  return sub_1DA34D230();
}

uint64_t sub_1DA2F4B3C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_23_0();
  a2(v5, a1);
  return sub_1DA34D230();
}

uint64_t sub_1DA2F4BCC()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4C44(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_19_0();
  }

  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4CC4()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4D38()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4DA8(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_25_0();
  }

  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4E24()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4E8C()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4F4C()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4FC0()
{
  SettingContextType.rawValue.getter();
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1DA2F500C()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F507C()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F50E4()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F5150()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F5248()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F52B4()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F5360()
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F53DC(uint64_t a1, char a2)
{
  sub_1DA308D50(a2);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1DA2F544C()
{
  v0 = sub_1DA34D210();
  OUTLINED_FUNCTION_8_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1DA34CBE0();
  return sub_1DA34D230();
}

uint64_t sub_1DA2F5498()
{
  v0 = sub_1DA34D210();
  OUTLINED_FUNCTION_8_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1DA34CBE0();
  return sub_1DA34D230();
}

uint64_t sub_1DA2F54FC()
{
  sub_1DA34D210();
  OUTLINED_FUNCTION_30_0();
  return sub_1DA34D230();
}

uint64_t sub_1DA2F5534()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F55BC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5618()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5688(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1DA34D210();
  a3(a2);
  OUTLINED_FUNCTION_7_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F56DC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F574C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F57B8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F582C()
{
  OUTLINED_FUNCTION_14_0();
  SettingContextType.rawValue.getter();
  OUTLINED_FUNCTION_7_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5874(uint64_t a1, unsigned __int8 a2)
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](a2);
  return sub_1DA34D230();
}

uint64_t sub_1DA2F58B8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5930()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F59B8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1DA34D210();
  a3(v6, a2);
  return sub_1DA34D230();
}

uint64_t sub_1DA2F5A04()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5A70()
{
  OUTLINED_FUNCTION_14_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_25_0();
  }

  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5AF0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5B64()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5BDC()
{
  OUTLINED_FUNCTION_14_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5C60()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_15_0();

  return sub_1DA34D230();
}

uint64_t TipSnippetModel.AssetConfiguration.darkThumbnailURL.setter()
{
  v2 = OUTLINED_FUNCTION_21_0();
  v3 = v1 + *(type metadata accessor for TipSnippetModel.AssetConfiguration(v2) + 20);

  return sub_1DA2F8254(v0, v3);
}

uint64_t (*TipSnippetModel.AssetConfiguration.darkThumbnailURL.modify())(void)
{
  v0 = OUTLINED_FUNCTION_21_0();
  v1 = *(type metadata accessor for TipSnippetModel.AssetConfiguration(v0) + 20);
  return nullsub_1;
}

uint64_t TipSnippetModel.AssetConfiguration.heightToWidthRatio.setter(double a1)
{
  result = type metadata accessor for TipSnippetModel.AssetConfiguration(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*TipSnippetModel.AssetConfiguration.heightToWidthRatio.modify())(void)
{
  v0 = OUTLINED_FUNCTION_21_0();
  v1 = *(type metadata accessor for TipSnippetModel.AssetConfiguration(v0) + 24);
  return nullsub_1;
}

uint64_t sub_1DA2F5E98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001DA354CD0 == a2;
  if (v3 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DA354CF0 == a2;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001DA354D10 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DA34D160();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DA2F5FBC(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_23_0();
  MEMORY[0x1DA74ACB0](a1);
  return sub_1DA34D230();
}

unint64_t sub_1DA2F5FFC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD000000000000012;
}

uint64_t sub_1DA2F6074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2F5E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2F609C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA2F5FB4();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2F60C4(uint64_t a1)
{
  v2 = sub_1DA2F82C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2F6100(uint64_t a1)
{
  v2 = sub_1DA2F82C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TipSnippetModel.AssetConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B8, &qword_1DA34E600);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F82C4();
  sub_1DA34D250();
  v23 = 0;
  sub_1DA34B8C0();
  OUTLINED_FUNCTION_3_4();
  sub_1DA2F8318(v14, v15);
  OUTLINED_FUNCTION_10_1();
  sub_1DA34D0E0();
  if (!v2)
  {
    v16 = type metadata accessor for TipSnippetModel.AssetConfiguration(0);
    v17 = *(v16 + 20);
    v22 = 1;
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D0E0();
    v18 = *(v3 + *(v16 + 24));
    v21 = 2;
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D110();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t TipSnippetModel.AssetConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_3_1();
  v45 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v41 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59D0, &qword_1DA34E608);
  OUTLINED_FUNCTION_0(v47);
  v44 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TipSnippetModel.AssetConfiguration(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DA34B8C0();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v24 = *(v16 + 28);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
  v28 = *(v16 + 32);
  *&v19[v28] = 0x3FF0000000000000;
  v30 = a1[3];
  v29 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1DA2F82C4();
  v31 = v48;
  sub_1DA34D240();
  if (!v31)
  {
    v48 = v24;
    v42 = v28;
    v33 = v44;
    v32 = v45;
    v52 = 0;
    OUTLINED_FUNCTION_3_4();
    sub_1DA2F8318(v34, v35);
    OUTLINED_FUNCTION_29_0(v20, &v52, v47);
    sub_1DA2F8254(v46, v19);
    v51 = 1;
    OUTLINED_FUNCTION_29_0(v20, &v51, v47);
    sub_1DA2F8254(v32, &v19[v48]);
    v50 = 2;
    v37 = v47;
    sub_1DA34D080();
    v39 = v38;
    (*(v33 + 8))(v14, v37);
    v40 = v43;
    *&v19[v42] = v39;
    sub_1DA2F83B0(v19, v40, type metadata accessor for TipSnippetModel.AssetConfiguration);
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_1DA2F8410();
}

uint64_t TipSnippetModel.identifier.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  sub_1DA34C0F0();
  return v1;
}

uint64_t sub_1DA2F66C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return TipSnippetModel.identifier.setter();
}

uint64_t (*TipSnippetModel.identifier.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F25B0;
}

uint64_t TipSnippetModel.title.getter()
{
  v0 = *(type metadata accessor for TipSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
  sub_1DA34C0F0();
  return v2;
}

uint64_t sub_1DA2F6810(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return TipSnippetModel.title.setter();
}

uint64_t TipSnippetModel.title.setter()
{
  v0 = *(type metadata accessor for TipSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
  return sub_1DA34C100();
}

uint64_t (*TipSnippetModel.title.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_12_0(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0();
  return sub_1DA2F3614;
}

uint64_t TipSnippetModel.bodyContent.getter()
{
  v0 = *(type metadata accessor for TipSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
  sub_1DA34C0F0();
  return v2;
}

uint64_t sub_1DA2F6968(uint64_t *a1)
{
  v1 = *a1;

  return TipSnippetModel.bodyContent.setter();
}

uint64_t TipSnippetModel.bodyContent.setter()
{
  v0 = *(type metadata accessor for TipSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
  return sub_1DA34C100();
}

uint64_t (*TipSnippetModel.bodyContent.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_12_0(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0();
  return sub_1DA2F3614;
}

uint64_t TipSnippetModel.language.getter()
{
  v0 = *(type metadata accessor for TipSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  sub_1DA34C0F0();
  return v2;
}

uint64_t sub_1DA2F6AAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return TipSnippetModel.language.setter();
}

uint64_t TipSnippetModel.language.setter()
{
  v0 = *(type metadata accessor for TipSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  return sub_1DA34C100();
}

uint64_t (*TipSnippetModel.language.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_12_0(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0();
  return sub_1DA2F3614;
}

uint64_t TipSnippetModel.thumbnailAssetConfiguration.getter()
{
  v0 = *(type metadata accessor for TipSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
  return sub_1DA34C0F0();
}

uint64_t sub_1DA2F6C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5988, &unk_1DA34E5D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - v4;
  sub_1DA2F81F4(a1, &v7 - v4, &qword_1ECBA5988, &unk_1DA34E5D0);
  return TipSnippetModel.thumbnailAssetConfiguration.setter(v5);
}

uint64_t TipSnippetModel.thumbnailAssetConfiguration.setter(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5988, &unk_1DA34E5D0) - 8) + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DA2F81F4(a1, &v7 - v4, &qword_1ECBA5988, &unk_1DA34E5D0);
  v5 = *(type metadata accessor for TipSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
  sub_1DA34C100();
  return sub_1DA2F4920(a1);
}

uint64_t (*TipSnippetModel.thumbnailAssetConfiguration.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_12_0(v2) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0();
  return sub_1DA2F3614;
}

uint64_t TipSnippetModel.context.getter()
{
  v0 = *(type metadata accessor for TipSnippetModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  sub_1DA34C0F0();
  return v2;
}

uint64_t sub_1DA2F6E3C(uint64_t *a1)
{
  v1 = *a1;

  return TipSnippetModel.context.setter();
}

uint64_t TipSnippetModel.context.setter()
{
  v0 = *(type metadata accessor for TipSnippetModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return sub_1DA34C100();
}

uint64_t (*TipSnippetModel.context.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_12_0(v2) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0();
  return sub_1DA2F3614;
}

uint64_t TipSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v98 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59F0, &qword_1DA34E628);
  v4 = OUTLINED_FUNCTION_0(v3);
  v88 = v5;
  v89 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v82 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5988, &unk_1DA34E5D0);
  v12 = OUTLINED_FUNCTION_12(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_1();
  v87 = v15 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v82 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v82 - v21;
  v23 = type metadata accessor for TipSnippetModel(0);
  v24 = OUTLINED_FUNCTION_12(v23);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v27 + 20);
  v96 = 0;
  v97 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
  v92 = v30;
  sub_1DA34C0D0();
  v94 = v23;
  v31 = *(v23 + 32);
  v32 = type metadata accessor for TipSnippetModel.AssetConfiguration(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  sub_1DA2F81F4(v22, v20, &qword_1ECBA5988, &unk_1DA34E5D0);
  v93 = v31;
  v91 = v29;
  v36 = v10;
  v37 = a1;
  sub_1DA34C0D0();
  sub_1DA2F4920(v22);
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(v37, v38);
  sub_1DA2F835C();
  v40 = v90;
  sub_1DA34D240();
  if (!v40)
  {
    v90 = v32;
    v84 = v22;
    v85 = v11;
    LOBYTE(v96) = 0;
    v96 = sub_1DA34D060();
    v97 = v50;
    v51 = v91;
    sub_1DA34C0D0();
    LOBYTE(v96) = 1;
    v52 = sub_1DA34D060();
    v83 = 1;
    v53 = v52;
    v55 = v54;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
    OUTLINED_FUNCTION_0_5(v56);
    (*(v57 + 8))(v51 + v92);
    v96 = v53;
    v97 = v55;
    sub_1DA34C0D0();
    LOBYTE(v95) = 2;
    sub_1DA2F3F64();
    v82[1] = v36;
    sub_1DA34D090();
    v58 = v51;
    v60 = v96;
    v59 = v97;
    v61 = objc_opt_self();
    v62 = sub_1DA34B8D0();
    v95 = 0;
    v63 = [v61 JSONObjectWithData:v62 options:0 error:&v95];

    v64 = v95;
    if (v63)
    {
      sub_1DA34CE80();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A0, &qword_1DA34E5E8);
      if (swift_dynamicCast())
      {
        v65 = v95;
LABEL_10:
        v68 = v94[6];
        v96 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A0, &qword_1DA34E5E8);
        sub_1DA34C0D0();
        sub_1DA2E62C4(v60, v59);
        LOBYTE(v96) = 3;
        v69 = sub_1DA34D060();
        v70 = v93;
        v71 = v94[7];
        v96 = v69;
        v97 = v72;
        sub_1DA34C0D0();
        LOBYTE(v96) = 4;
        sub_1DA2F8318(&qword_1ECBA5A08, type metadata accessor for TipSnippetModel.AssetConfiguration);
        v73 = v90;
        sub_1DA34D090();
        v74 = v87;
        __swift_storeEnumTagSinglePayload(v87, 0, 1, v73);
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
        OUTLINED_FUNCTION_0_5(v75);
        (*(v76 + 8))(v58 + v70);
        sub_1DA2F81F4(v74, v84, &qword_1ECBA5988, &unk_1DA34E5D0);
        sub_1DA34C0D0();
        sub_1DA2F4920(v74);
        type metadata accessor for FlowContext();
        LOBYTE(v95) = 5;
        OUTLINED_FUNCTION_4_3();
        sub_1DA2F8318(v77, v78);
        sub_1DA34D090();
        v79 = v94[9];
        v95 = v96;
        sub_1DA34C0D0();
        v80 = OUTLINED_FUNCTION_6_2();
        v81(v80);
        sub_1DA2F83B0(v58, v86, type metadata accessor for TipSnippetModel);
        __swift_destroy_boxed_opaque_existential_1(v37);
        result = sub_1DA2F8410();
        goto LABEL_4;
      }
    }

    else
    {
      v66 = v64;
      v67 = sub_1DA34B7E0();

      swift_willThrow();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A00, &qword_1DA34E630);
    v65 = swift_allocObject();
    *(v65 + 1) = xmmword_1DA34DC80;
    *(v65 + 4) = sub_1DA34CAC0();
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  v41 = v93;
  v42 = v91;
  v43 = v92;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
  OUTLINED_FUNCTION_0_5(v44);
  (*(v45 + 8))(&v42[v43]);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
  OUTLINED_FUNCTION_0_5(v46);
  result = (*(v47 + 8))(&v42[v41]);
LABEL_4:
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TipSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v51[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5988, &unk_1DA34E5D0);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A10, &qword_1DA34E638);
  OUTLINED_FUNCTION_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F835C();
  sub_1DA34D250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  v48 = v2;
  sub_1DA34C0F0();
  LOBYTE(v51[0]) = 0;
  v19 = v49;
  sub_1DA34D0F0();
  if (v19)
  {
    v12[1](v17, v10);
  }

  else
  {
    v49 = v12;
    v46 = v4;
    v47 = v9;

    v21 = type metadata accessor for TipSnippetModel(0);
    v22 = v21[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
    v23 = v48;
    sub_1DA34C0F0();
    v50 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
    sub_1DA2F8460();
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D120();

    v25 = objc_opt_self();
    v26 = v21[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
    sub_1DA34C0F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5900, &qword_1DA34E640);
    OUTLINED_FUNCTION_44();
    v27 = sub_1DA34CC60();

    v51[0] = 0;
    v28 = [v25 dataWithJSONObject:v27 options:0 error:v51];

    v29 = v51[0];
    if (v28)
    {
      v30 = sub_1DA34B8E0();
      v32 = v31;

      v51[0] = v30;
      v51[1] = v32;
      v33 = v32;
      v50 = 2;
      sub_1DA2F4138();
      OUTLINED_FUNCTION_10_1();
      sub_1DA34D120();
      v34 = v47;
      sub_1DA2E62C4(v30, v33);
      v23 = v48;
    }

    else
    {
      v35 = v29;
      v36 = sub_1DA34B7E0();

      v19 = v36;
      swift_willThrow();

      v34 = v47;
    }

    v37 = v23 + v21[7];
    sub_1DA34C0F0();
    LOBYTE(v51[0]) = 3;
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D0F0();
    if (!v19)
    {

      v40 = v21[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
      sub_1DA34C0F0();
      LOBYTE(v51[0]) = 4;
      sub_1DA2F84DC();
      OUTLINED_FUNCTION_10_1();
      sub_1DA34D120();
      sub_1DA2F4920(v34);
      v41 = v21;
      v42 = v49;
      v43 = v41[9];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
      sub_1DA34C0F0();
      v50 = 5;
      type metadata accessor for FlowContext();
      OUTLINED_FUNCTION_4_3();
      sub_1DA2F8318(v44, v45);
      OUTLINED_FUNCTION_10_1();
      sub_1DA34D120();

      result = v42[1](v17, v10);
      goto LABEL_5;
    }

    v38 = OUTLINED_FUNCTION_5_2();
    v39(v38);
  }

LABEL_5:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DA2F7E28()
{
  v0 = sub_1DA34CFF0();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DA2F7EF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA2F7E28();
  *a2 = result;
  return result;
}

unint64_t sub_1DA2F7F24@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DA2E2A90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DA2F7F58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA2F7E74();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2F7F80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA2F7E78();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2F7FA8(uint64_t a1)
{
  v2 = sub_1DA2F835C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2F7FE4(uint64_t a1)
{
  v2 = sub_1DA2F835C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TipSnippetModel.altBodyRepresentation.getter()
{
  objc_opt_self();
  v1 = OUTLINED_FUNCTION_21_0();
  v2 = *(type metadata accessor for TipSnippetModel(v1) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
  sub_1DA34C0F0();
  v3 = sub_1DA33DB8C(v5);

  return sub_1DA2F8590(v3, v0);
}

void TipSnippetModel.punchOutUrl.getter()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  sub_1DA34C0F0();
  v1 = sub_1DA34CB30();

  v2 = [v0 URLWithTipIdentifier:v1 collectionIdentifier:0 referrer:0];

  sub_1DA34B8A0();
}

uint64_t sub_1DA2F8190(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DA34CB40();

  return v3;
}

uint64_t sub_1DA2F81F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DA2F8254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA2F82C4()
{
  result = qword_1ECBA59C0;
  if (!qword_1ECBA59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA59C0);
  }

  return result;
}

uint64_t sub_1DA2F8318(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA2F835C()
{
  result = qword_1ECBA59F8;
  if (!qword_1ECBA59F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA59F8);
  }

  return result;
}

uint64_t sub_1DA2F83B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_12(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DA2F8410()
{
  v1 = OUTLINED_FUNCTION_21_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_0_5(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1DA2F8460()
{
  result = qword_1ECBA5A18;
  if (!qword_1ECBA5A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5990, &qword_1DA351F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A18);
  }

  return result;
}

unint64_t sub_1DA2F84DC()
{
  result = qword_1ECBA5A20;
  if (!qword_1ECBA5A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5988, &unk_1DA34E5D0);
    sub_1DA2F8318(&qword_1ECBA5A28, type metadata accessor for TipSnippetModel.AssetConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A20);
  }

  return result;
}

uint64_t sub_1DA2F8590(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A70, &qword_1DA34E9F8);
  OUTLINED_FUNCTION_44();
  v3 = sub_1DA34CC60();

  v4 = [a2 altTextRepresentationForContent_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1DA34CB40();

  return v5;
}

uint64_t sub_1DA2F86EC()
{
  sub_1DA2F884C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1DA2F889C(319, &qword_1EE10AC70, &qword_1ECBA5990, &qword_1DA351F70);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1DA2F889C(319, &qword_1EE10AC48, &qword_1ECBA59A0, &qword_1DA34E5E8);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1DA2F889C(319, &qword_1EE10ACA8, &qword_1ECBA5988, &unk_1DA34E5D0);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        sub_1DA2F89C0(319, &qword_1EE10AC98, type metadata accessor for FlowContext, MEMORY[0x1E69D3748]);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1DA2F884C()
{
  if (!qword_1EE10AC78)
  {
    v0 = sub_1DA34C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE10AC78);
    }
  }
}

void sub_1DA2F889C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_44();
    v5 = sub_1DA34C110();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DA2F8914()
{
  sub_1DA2F89C0(319, &qword_1EE10ACD8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DA2F89C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for TipSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TipSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TipSnippetModel.AssetConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}