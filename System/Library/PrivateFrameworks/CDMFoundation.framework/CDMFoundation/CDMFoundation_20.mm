void sub_1DC441DB0()
{
  sub_1DC441BAC(319, &qword_1ECC7BA70, MEMORY[0x1E69D0948], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1DC441BAC(319, &qword_1ECC7BA50, MEMORY[0x1E69D0B48], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1DC441BAC(319, &qword_1ECC7BAE8, MEMORY[0x1E69CE670], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1DC441BAC(319, &qword_1ECC7BDF8, MEMORY[0x1E69D0B30], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1DC441BAC(319, &qword_1ECC7BA58, MEMORY[0x1E69D0B08], MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1DC441BAC(319, &qword_1ECC7BA10, MEMORY[0x1E69D2948], MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1DC441BAC(319, &qword_1ECC7BB48, MEMORY[0x1E69D04D0], MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                OUTLINED_FUNCTION_15_19();
                swift_cvw_initStructMetadataWithLayoutString();
                OUTLINED_FUNCTION_75_6();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1DC442020()
{
  OUTLINED_FUNCTION_351();
  sub_1DC51122C();
  if (v0 <= 0x3F)
  {
    sub_1DC441BAC(319, &qword_1ECC7BE20, MEMORY[0x1E69D0990], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_7_25(v1, &qword_1ECC7BA80, MEMORY[0x1E69E6158]);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_7_25(v3, &qword_1ECC7B8F8, MEMORY[0x1E69E7668]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_19();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_75_6();
        }
      }
    }
  }
}

uint64_t sub_1DC44211C()
{
  v0 = OUTLINED_FUNCTION_351();
  result = type metadata accessor for NLRouterSiriXUSOParse(v0);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return OUTLINED_FUNCTION_75_6();
  }

  return result;
}

uint64_t sub_1DC4421A4()
{
  result = type metadata accessor for NLRouterSiriXParse(319);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_19();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_75_6();
  }

  return result;
}

void sub_1DC442244()
{
  sub_1DC441BAC(319, &qword_1ECC7BA60, MEMORY[0x1E69D09E0], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1DC441BAC(319, &qword_1ECC7BDD8, MEMORY[0x1E69D0BD8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_19();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_75_6();
    }
  }
}

void sub_1DC442344()
{
  sub_1DC441BAC(319, &qword_1ECC7BC00, type metadata accessor for NLRouterNLParseResponse, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_7_25(v0, &qword_1ECC7BC38, &type metadata for NLRouterPommesResponse);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_19();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_75_6();
    }
  }
}

void sub_1DC442420()
{
  sub_1DC441BAC(319, &qword_1ECC7BCC0, type metadata accessor for NLRouterTurnContext, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1DC442604(319, &qword_1ECC7BA38, &type metadata for RequestSummary, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1DC4425A0();
      if (v2 <= 0x3F)
      {
        sub_1DC441BAC(319, &qword_1ECC7BBD0, type metadata accessor for NLRouterTurnProbingResult, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          OUTLINED_FUNCTION_7_25(v3, &qword_1ECC7BBA8, &type metadata for NLRouterCurrentUserQueryDecoration);
          if (v5 <= 0x3F)
          {
            sub_1DC510C8C();
            if (v6 <= 0x3F)
            {
              OUTLINED_FUNCTION_15_19();
              swift_cvw_initStructMetadataWithLayoutString();
              OUTLINED_FUNCTION_75_6();
            }
          }
        }
      }
    }
  }
}

void sub_1DC4425A0()
{
  if (!qword_1ECC7BA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DD08, &qword_1DC52A9A0);
    v0 = sub_1DC517D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BA18);
    }
  }
}

void sub_1DC442604(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DC44266C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 < 0 && *(a1 + 16))
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

  return OUTLINED_FUNCTION_41_0(v2);
}

uint64_t sub_1DC4426F0()
{
  OUTLINED_FUNCTION_351();
  result = sub_1DC5157EC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_19();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_75_6();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CDMFoundation23NLRouterServiceResponseV23NLRoutingDecisionSourceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DC44277C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_130();
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC4427CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1DC442828(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_9_13(result, a2);
  }

  return result;
}

uint64_t sub_1DC442850(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 < 0 && *(a1 + 8))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_41_0(v2);
}

uint64_t sub_1DC44288C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ModelSpecialToken(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 32);
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

      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 32);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 32);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v8);
}

_BYTE *storeEnumTagSinglePayload for ModelSpecialToken(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_176_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_174_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_175_0(result, v6);
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 31);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC442AAC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v8);
}

_BYTE *sub_1DC442B34(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_176_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_174_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_175_0(result, v6);
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC442D34(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
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
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 9);
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

      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 9);
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

  return OUTLINED_FUNCTION_41_0(v8);
}

_BYTE *sub_1DC442DBC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_176_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_174_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_175_0(result, v6);
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DC442E90(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_176_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_174_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_175_0(result, v6);
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DC442F64(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_176_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_174_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_175_0(result, v6);
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TurnSummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
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
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 6);
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

  return OUTLINED_FUNCTION_41_0(v8);
}

_BYTE *storeEnumTagSinglePayload for TurnSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_176_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_174_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_175_0(result, v6);
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC4431EC(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_130();
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

  return OUTLINED_FUNCTION_411(a1);
}

_BYTE *sub_1DC443238(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1DC443308(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_176_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_174_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_175_0(result, v6);
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t _s13CDMFoundation11TurnSummaryV15ExecutionSourceO10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v8);
}

_BYTE *_s13CDMFoundation11TurnSummaryV15ExecutionSourceO10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_176_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_174_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_175_0(result, v6);
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DC443578()
{
  result = qword_1ECC8CD50[0];
  if (!qword_1ECC8CD50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8CD50);
  }

  return result;
}

unint64_t sub_1DC4435D0()
{
  result = qword_1ECC8CF60[0];
  if (!qword_1ECC8CF60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8CF60);
  }

  return result;
}

unint64_t sub_1DC443628()
{
  result = qword_1ECC8D070[0];
  if (!qword_1ECC8D070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8D070);
  }

  return result;
}

unint64_t sub_1DC443680()
{
  result = qword_1ECC8D180[0];
  if (!qword_1ECC8D180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8D180);
  }

  return result;
}

unint64_t sub_1DC4436D8()
{
  result = qword_1ECC8D290[0];
  if (!qword_1ECC8D290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8D290);
  }

  return result;
}

unint64_t sub_1DC443730()
{
  result = qword_1ECC8D3A0[0];
  if (!qword_1ECC8D3A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8D3A0);
  }

  return result;
}

unint64_t sub_1DC443788()
{
  result = qword_1ECC8D4B0[0];
  if (!qword_1ECC8D4B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8D4B0);
  }

  return result;
}

unint64_t sub_1DC4437E0()
{
  result = qword_1ECC8D640[0];
  if (!qword_1ECC8D640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8D640);
  }

  return result;
}

unint64_t sub_1DC443838()
{
  result = qword_1ECC8D7D0[0];
  if (!qword_1ECC8D7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8D7D0);
  }

  return result;
}

unint64_t sub_1DC443890()
{
  result = qword_1ECC8D9E0[0];
  if (!qword_1ECC8D9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8D9E0);
  }

  return result;
}

unint64_t sub_1DC4438E8()
{
  result = qword_1ECC8DAF0;
  if (!qword_1ECC8DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8DAF0);
  }

  return result;
}

unint64_t sub_1DC443940()
{
  result = qword_1ECC8DC00[0];
  if (!qword_1ECC8DC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8DC00);
  }

  return result;
}

unint64_t sub_1DC443998()
{
  result = qword_1ECC8DD10[0];
  if (!qword_1ECC8DD10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8DD10);
  }

  return result;
}

unint64_t sub_1DC4439F0()
{
  result = qword_1ECC8DE20[0];
  if (!qword_1ECC8DE20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8DE20);
  }

  return result;
}

unint64_t sub_1DC443A48()
{
  result = qword_1ECC8DFB0[0];
  if (!qword_1ECC8DFB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8DFB0);
  }

  return result;
}

unint64_t sub_1DC443AA0()
{
  result = qword_1ECC8E0C0[0];
  if (!qword_1ECC8E0C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8E0C0);
  }

  return result;
}

unint64_t sub_1DC443AF8()
{
  result = qword_1ECC8E1D0[0];
  if (!qword_1ECC8E1D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8E1D0);
  }

  return result;
}

unint64_t sub_1DC443B50()
{
  result = qword_1ECC8E2E0[0];
  if (!qword_1ECC8E2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8E2E0);
  }

  return result;
}

unint64_t sub_1DC443BA8()
{
  result = qword_1ECC8E3F0[0];
  if (!qword_1ECC8E3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8E3F0);
  }

  return result;
}

unint64_t sub_1DC443C00()
{
  result = qword_1ECC8E500[0];
  if (!qword_1ECC8E500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8E500);
  }

  return result;
}

unint64_t sub_1DC443C58()
{
  result = qword_1ECC8E610[0];
  if (!qword_1ECC8E610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8E610);
  }

  return result;
}

unint64_t sub_1DC443CB0()
{
  result = qword_1ECC8E720[0];
  if (!qword_1ECC8E720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8E720);
  }

  return result;
}

unint64_t sub_1DC443D08()
{
  result = qword_1ECC8E830[0];
  if (!qword_1ECC8E830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8E830);
  }

  return result;
}

unint64_t sub_1DC443D60()
{
  result = qword_1ECC8E940[0];
  if (!qword_1ECC8E940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8E940);
  }

  return result;
}

unint64_t sub_1DC443DB8()
{
  result = qword_1ECC7EE10;
  if (!qword_1ECC7EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7EE10);
  }

  return result;
}

unint64_t sub_1DC443E10()
{
  result = qword_1ECC7EE18;
  if (!qword_1ECC7EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7EE18);
  }

  return result;
}

unint64_t sub_1DC443E68()
{
  result = qword_1ECC80CE0;
  if (!qword_1ECC80CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC80CE0);
  }

  return result;
}

unint64_t sub_1DC443EC0()
{
  result = qword_1ECC80CE8;
  if (!qword_1ECC80CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC80CE8);
  }

  return result;
}

unint64_t sub_1DC443F18()
{
  result = qword_1ECC809B0;
  if (!qword_1ECC809B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC809B0);
  }

  return result;
}

unint64_t sub_1DC443F70()
{
  result = qword_1ECC809B8[0];
  if (!qword_1ECC809B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC809B8);
  }

  return result;
}

unint64_t sub_1DC443FC8()
{
  result = qword_1ECC80680;
  if (!qword_1ECC80680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC80680);
  }

  return result;
}

unint64_t sub_1DC444020()
{
  result = qword_1ECC80688[0];
  if (!qword_1ECC80688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC80688);
  }

  return result;
}

unint64_t sub_1DC444078()
{
  result = qword_1ECC80810;
  if (!qword_1ECC80810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC80810);
  }

  return result;
}

unint64_t sub_1DC4440D0()
{
  result = qword_1ECC80818;
  if (!qword_1ECC80818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC80818);
  }

  return result;
}

unint64_t sub_1DC444128()
{
  result = qword_1ECC80360;
  if (!qword_1ECC80360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC80360);
  }

  return result;
}

unint64_t sub_1DC444180()
{
  result = qword_1ECC80368[0];
  if (!qword_1ECC80368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC80368);
  }

  return result;
}

unint64_t sub_1DC4441D8()
{
  result = qword_1ECC804F0;
  if (!qword_1ECC804F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC804F0);
  }

  return result;
}

unint64_t sub_1DC444230()
{
  result = qword_1ECC804F8[0];
  if (!qword_1ECC804F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC804F8);
  }

  return result;
}

unint64_t sub_1DC444288()
{
  result = qword_1ECC80B40;
  if (!qword_1ECC80B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC80B40);
  }

  return result;
}

unint64_t sub_1DC4442E0()
{
  result = qword_1ECC80B48;
  if (!qword_1ECC80B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC80B48);
  }

  return result;
}

unint64_t sub_1DC444338()
{
  result = qword_1ECC7F830;
  if (!qword_1ECC7F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7F830);
  }

  return result;
}

unint64_t sub_1DC444390()
{
  result = qword_1ECC7F838;
  if (!qword_1ECC7F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7F838);
  }

  return result;
}

unint64_t sub_1DC4443E8()
{
  result = qword_1ECC7F060;
  if (!qword_1ECC7F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7F060);
  }

  return result;
}

unint64_t sub_1DC444440()
{
  result = qword_1ECC7F068[0];
  if (!qword_1ECC7F068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC7F068);
  }

  return result;
}

unint64_t sub_1DC444498()
{
  result = qword_1ECC7F510;
  if (!qword_1ECC7F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7F510);
  }

  return result;
}

unint64_t sub_1DC4444F0()
{
  result = qword_1ECC7F518[0];
  if (!qword_1ECC7F518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC7F518);
  }

  return result;
}

unint64_t sub_1DC444548()
{
  result = qword_1ECC7FB70;
  if (!qword_1ECC7FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7FB70);
  }

  return result;
}

unint64_t sub_1DC4445A0()
{
  result = qword_1ECC7FB78;
  if (!qword_1ECC7FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7FB78);
  }

  return result;
}

unint64_t sub_1DC4445F8()
{
  result = qword_1ECC7F380;
  if (!qword_1ECC7F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7F380);
  }

  return result;
}

unint64_t sub_1DC444650()
{
  result = qword_1ECC7F388[0];
  if (!qword_1ECC7F388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC7F388);
  }

  return result;
}

unint64_t sub_1DC4446A8()
{
  result = qword_1ECC7F6A0;
  if (!qword_1ECC7F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7F6A0);
  }

  return result;
}

unint64_t sub_1DC444700()
{
  result = qword_1ECC7F6A8[0];
  if (!qword_1ECC7F6A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC7F6A8);
  }

  return result;
}

unint64_t sub_1DC444758()
{
  result = qword_1ECC7F1F0;
  if (!qword_1ECC7F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7F1F0);
  }

  return result;
}

unint64_t sub_1DC4447B0()
{
  result = qword_1ECC7F1F8[0];
  if (!qword_1ECC7F1F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC7F1F8);
  }

  return result;
}

unint64_t sub_1DC444808()
{
  result = qword_1ECC7F9D0;
  if (!qword_1ECC7F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7F9D0);
  }

  return result;
}

unint64_t sub_1DC444860()
{
  result = qword_1ECC7F9D8;
  if (!qword_1ECC7F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7F9D8);
  }

  return result;
}

unint64_t sub_1DC4448B8()
{
  result = qword_1ECC82530;
  if (!qword_1ECC82530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC82530);
  }

  return result;
}

unint64_t sub_1DC444910()
{
  result = qword_1ECC82538;
  if (!qword_1ECC82538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC82538);
  }

  return result;
}

unint64_t sub_1DC444968()
{
  result = qword_1ECC84430;
  if (!qword_1ECC84430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84430);
  }

  return result;
}

unint64_t sub_1DC4449C0()
{
  result = qword_1ECC84438;
  if (!qword_1ECC84438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84438);
  }

  return result;
}

unint64_t sub_1DC444A18()
{
  result = qword_1ECC81510;
  if (!qword_1ECC81510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC81510);
  }

  return result;
}

unint64_t sub_1DC444A70()
{
  result = qword_1ECC81518;
  if (!qword_1ECC81518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC81518);
  }

  return result;
}

unint64_t sub_1DC444AC8()
{
  result = qword_1ECC7FED0;
  if (!qword_1ECC7FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7FED0);
  }

  return result;
}

unint64_t sub_1DC444B20()
{
  result = qword_1ECC7FED8;
  if (!qword_1ECC7FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7FED8);
  }

  return result;
}

unint64_t sub_1DC444B78()
{
  result = qword_1ECC80F10;
  if (!qword_1ECC80F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC80F10);
  }

  return result;
}

unint64_t sub_1DC444BD0()
{
  result = qword_1ECC80F18;
  if (!qword_1ECC80F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC80F18);
  }

  return result;
}

unint64_t sub_1DC444C28()
{
  result = qword_1ECC811C0;
  if (!qword_1ECC811C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC811C0);
  }

  return result;
}

unint64_t sub_1DC444C80()
{
  result = qword_1ECC811C8;
  if (!qword_1ECC811C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC811C8);
  }

  return result;
}

unint64_t sub_1DC444CD8()
{
  result = qword_1ECC82B20;
  if (!qword_1ECC82B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC82B20);
  }

  return result;
}

unint64_t sub_1DC444D30()
{
  result = qword_1ECC82B28;
  if (!qword_1ECC82B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC82B28);
  }

  return result;
}

unint64_t sub_1DC444D88()
{
  result = qword_1ECC82800;
  if (!qword_1ECC82800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC82800);
  }

  return result;
}

unint64_t sub_1DC444DE0()
{
  result = qword_1ECC82808[0];
  if (!qword_1ECC82808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC82808);
  }

  return result;
}

unint64_t sub_1DC444E38()
{
  result = qword_1ECC82990;
  if (!qword_1ECC82990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC82990);
  }

  return result;
}

unint64_t sub_1DC444E90()
{
  result = qword_1ECC82998[0];
  if (!qword_1ECC82998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC82998);
  }

  return result;
}

unint64_t sub_1DC444EE8()
{
  result = qword_1ECC82CC0;
  if (!qword_1ECC82CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC82CC0);
  }

  return result;
}

unint64_t sub_1DC444F40()
{
  result = qword_1ECC82CC8;
  if (!qword_1ECC82CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC82CC8);
  }

  return result;
}

unint64_t sub_1DC444F98()
{
  result = qword_1ECC8EA50;
  if (!qword_1ECC8EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8EA50);
  }

  return result;
}

unint64_t sub_1DC444FF0()
{
  result = qword_1ECC8EA58[0];
  if (!qword_1ECC8EA58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8EA58);
  }

  return result;
}

unint64_t sub_1DC445048()
{
  result = qword_1ECC819F0;
  if (!qword_1ECC819F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC819F0);
  }

  return result;
}

unint64_t sub_1DC4450A0()
{
  result = qword_1ECC819F8;
  if (!qword_1ECC819F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC819F8);
  }

  return result;
}

unint64_t sub_1DC4450F8()
{
  result = qword_1ECC82290;
  if (!qword_1ECC82290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC82290);
  }

  return result;
}

unint64_t sub_1DC445150()
{
  result = qword_1ECC82298;
  if (!qword_1ECC82298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC82298);
  }

  return result;
}

unint64_t sub_1DC4451A8()
{
  result = qword_1ECC836F0;
  if (!qword_1ECC836F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC836F0);
  }

  return result;
}

unint64_t sub_1DC445200()
{
  result = qword_1ECC836F8;
  if (!qword_1ECC836F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC836F8);
  }

  return result;
}

unint64_t sub_1DC445258()
{
  result = qword_1ECC83090;
  if (!qword_1ECC83090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83090);
  }

  return result;
}

unint64_t sub_1DC4452B0()
{
  result = qword_1ECC83098;
  if (!qword_1ECC83098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83098);
  }

  return result;
}

unint64_t sub_1DC445308()
{
  result = qword_1ECC833C0;
  if (!qword_1ECC833C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC833C0);
  }

  return result;
}

unint64_t sub_1DC445360()
{
  result = qword_1ECC833C8[0];
  if (!qword_1ECC833C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC833C8);
  }

  return result;
}

unint64_t sub_1DC4453B8()
{
  result = qword_1ECC83230;
  if (!qword_1ECC83230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83230);
  }

  return result;
}

unint64_t sub_1DC445410()
{
  result = qword_1ECC83238[0];
  if (!qword_1ECC83238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC83238);
  }

  return result;
}

unint64_t sub_1DC445468()
{
  result = qword_1ECC83550;
  if (!qword_1ECC83550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83550);
  }

  return result;
}

unint64_t sub_1DC4454C0()
{
  result = qword_1ECC83558;
  if (!qword_1ECC83558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83558);
  }

  return result;
}

unint64_t sub_1DC445518()
{
  result = qword_1ECC85120;
  if (!qword_1ECC85120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC85120);
  }

  return result;
}

unint64_t sub_1DC445570()
{
  result = qword_1ECC85128;
  if (!qword_1ECC85128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC85128);
  }

  return result;
}

unint64_t sub_1DC4455C8()
{
  result = qword_1ECC84C60;
  if (!qword_1ECC84C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84C60);
  }

  return result;
}

unint64_t sub_1DC445620()
{
  result = qword_1ECC84C68[0];
  if (!qword_1ECC84C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC84C68);
  }

  return result;
}

unint64_t sub_1DC445678()
{
  result = qword_1ECC84AC0;
  if (!qword_1ECC84AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84AC0);
  }

  return result;
}

unint64_t sub_1DC4456D0()
{
  result = qword_1ECC84AC8[0];
  if (!qword_1ECC84AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC84AC8);
  }

  return result;
}

unint64_t sub_1DC445728()
{
  result = qword_1ECC84DF0;
  if (!qword_1ECC84DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84DF0);
  }

  return result;
}

unint64_t sub_1DC445780()
{
  result = qword_1ECC84DF8[0];
  if (!qword_1ECC84DF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC84DF8);
  }

  return result;
}

unint64_t sub_1DC4457D8()
{
  result = qword_1ECC84930;
  if (!qword_1ECC84930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84930);
  }

  return result;
}

unint64_t sub_1DC445830()
{
  result = qword_1ECC84938[0];
  if (!qword_1ECC84938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC84938);
  }

  return result;
}

unint64_t sub_1DC445888()
{
  result = qword_1ECC847A0;
  if (!qword_1ECC847A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC847A0);
  }

  return result;
}

unint64_t sub_1DC4458E0()
{
  result = qword_1ECC847A8[0];
  if (!qword_1ECC847A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC847A8);
  }

  return result;
}

unint64_t sub_1DC445938()
{
  result = qword_1ECC84F80;
  if (!qword_1ECC84F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84F80);
  }

  return result;
}

unint64_t sub_1DC445990()
{
  result = qword_1ECC84F88;
  if (!qword_1ECC84F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84F88);
  }

  return result;
}

unint64_t sub_1DC4459E8()
{
  result = qword_1ECC8EAE0;
  if (!qword_1ECC8EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8EAE0);
  }

  return result;
}

unint64_t sub_1DC445A40()
{
  result = qword_1ECC8EAE8[0];
  if (!qword_1ECC8EAE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8EAE8);
  }

  return result;
}

unint64_t sub_1DC445A98()
{
  result = qword_1ECC8EB70;
  if (!qword_1ECC8EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8EB70);
  }

  return result;
}

unint64_t sub_1DC445AF0()
{
  result = qword_1ECC8EB78;
  if (!qword_1ECC8EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8EB78);
  }

  return result;
}

unint64_t sub_1DC445B48()
{
  result = qword_1ECC8EC00;
  if (!qword_1ECC8EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8EC00);
  }

  return result;
}

unint64_t sub_1DC445BA0()
{
  result = qword_1ECC8EC08[0];
  if (!qword_1ECC8EC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8EC08);
  }

  return result;
}

unint64_t sub_1DC445BF8()
{
  result = qword_1ECC8EC90;
  if (!qword_1ECC8EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8EC90);
  }

  return result;
}

unint64_t sub_1DC445C50()
{
  result = qword_1ECC8EC98[0];
  if (!qword_1ECC8EC98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8EC98);
  }

  return result;
}

unint64_t sub_1DC445CA8()
{
  result = qword_1ECC8ED20;
  if (!qword_1ECC8ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8ED20);
  }

  return result;
}

unint64_t sub_1DC445D00()
{
  result = qword_1ECC8ED28[0];
  if (!qword_1ECC8ED28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8ED28);
  }

  return result;
}

unint64_t sub_1DC445D58()
{
  result = qword_1ECC8EDB0;
  if (!qword_1ECC8EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8EDB0);
  }

  return result;
}

unint64_t sub_1DC445DB0()
{
  result = qword_1ECC8EDB8[0];
  if (!qword_1ECC8EDB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8EDB8);
  }

  return result;
}

unint64_t sub_1DC445E08()
{
  result = qword_1ECC8EE40;
  if (!qword_1ECC8EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8EE40);
  }

  return result;
}

unint64_t sub_1DC445E60()
{
  result = qword_1ECC8EE48[0];
  if (!qword_1ECC8EE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8EE48);
  }

  return result;
}

unint64_t sub_1DC445EB4()
{
  result = qword_1ECC7DEC8;
  if (!qword_1ECC7DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DEC8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_50(a1[3]);
  if ((*(v2 + 82) & 2) != 0)
  {
    *v1 = swift_allocBox();
    return v3;
  }

  return v1;
}

uint64_t sub_1DC445F90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_65_1();
  sub_1DC51586C();
  OUTLINED_FUNCTION_65_1();
  return sub_1DC51585C();
}

unint64_t sub_1DC445FDC()
{
  result = qword_1ECC7BD38;
  if (!qword_1ECC7BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BD38);
  }

  return result;
}

unint64_t sub_1DC446030()
{
  result = qword_1ECC7BD40;
  if (!qword_1ECC7BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BD40);
  }

  return result;
}

uint64_t sub_1DC446084()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_33_0(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_71_8(v6);

  return sub_1DC424140();
}

uint64_t sub_1DC446118()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  OUTLINED_FUNCTION_297_0();
  v5 = OUTLINED_FUNCTION_36();

  return v6(v5);
}

uint64_t sub_1DC446208()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_33_0(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_71_8(v6);

  return sub_1DC4241D8();
}

uint64_t sub_1DC44629C()
{
  OUTLINED_FUNCTION_36_11();
  v1 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = (*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = (v0 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v6);
  v13 = *(v0 + v6 + 8);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_33_0(v14);
  *v15 = v18;
  v15[1] = sub_1DC29F200;

  return sub_1DC424314(v15, v16, v17, v7, v8, v0 + v3, v10, v11);
}

unint64_t sub_1DC4463C8()
{
  result = qword_1ECC7BCD0;
  if (!qword_1ECC7BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BCD0);
  }

  return result;
}

unint64_t sub_1DC44641C()
{
  result = qword_1ECC7BCD8;
  if (!qword_1ECC7BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BCD8);
  }

  return result;
}

uint64_t sub_1DC446470()
{
  OUTLINED_FUNCTION_36_11();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_1(v7);
  *v8 = v9;
  v8[1] = sub_1DC29F120;
  OUTLINED_FUNCTION_206_0();

  return sub_1DC425868();
}

uint64_t sub_1DC446534()
{
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_37_4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_33_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_71_8(v8);
  OUTLINED_FUNCTION_487();

  return sub_1DC4245E0();
}

uint64_t sub_1DC4465D4()
{
  OUTLINED_FUNCTION_42_0();
  v5 = OUTLINED_FUNCTION_480(v1, v2, v3, v4);
  OUTLINED_FUNCTION_11_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_87_2@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_90_1()
{
  v2 = *(v0 + 104);
  result = *(v1 - 168);
  v4 = *(v1 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_110_7()
{
  v1 = v0[51];
  result = v0[45];
  v3 = v0[42];
  v4 = *(v0[43] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_118_4()
{

  return sub_1DC51835C();
}

uint64_t OUTLINED_FUNCTION_127_4()
{

  return sub_1DC5180AC();
}

uint64_t OUTLINED_FUNCTION_128_4()
{
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  v7 = v0[34];
  v8 = v0[31];
}

void OUTLINED_FUNCTION_138_3()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E1298840);
}

void OUTLINED_FUNCTION_146_5()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_194_0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);
  v4 = *(v0 + 176);
  v5 = *(v0 + 120);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(*(v0 + 128) + 16);
  return *(v0 + 136);
}

void OUTLINED_FUNCTION_231_0()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_237()
{

  return sub_1DC5180AC();
}

uint64_t OUTLINED_FUNCTION_244_0(unint64_t *a1)
{

  return sub_1DC43F1F8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_245_0()
{
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];
  v5 = v0[50];
  v7 = v0[46];
  v6 = v0[47];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[40];
  v11 = v0[41];
  v13 = v0[37];
  v14 = v0[34];
  v15 = v0[32];
  v16 = v0[31];
}

uint64_t OUTLINED_FUNCTION_248_1()
{
  *(v2 - 120) = v0;
  v3 = *(v1 + 8);
  v5 = *(v2 - 136);
  return *(v2 - 128);
}

uint64_t OUTLINED_FUNCTION_250_0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_254_0()
{
  v2 = v0[43];
  v1 = v0[44];
  result = v0[41];
  v4 = v0[35];
  return result;
}

uint64_t OUTLINED_FUNCTION_267_0()
{

  return sub_1DC51825C();
}

void OUTLINED_FUNCTION_268_0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 224);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = **(v0 + 248);
}

uint64_t OUTLINED_FUNCTION_271_0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = *(v0[27] + 8);
  return v0[28];
}

uint64_t OUTLINED_FUNCTION_273()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 136);
  return *(v1 - 128);
}

uint64_t OUTLINED_FUNCTION_291_0()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 4, v1);
}

uint64_t OUTLINED_FUNCTION_292_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  *(a1 + 16) = a15;
  *(a1 + 32) = 0xD000000000000057;
  *(a1 + 40) = (a2 - 32) | 0x8000000000000000;

  return sub_1DC5150AC();
}

__n128 *OUTLINED_FUNCTION_295_0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x7475706E69;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_311_0()
{
  v2 = *(v0 - 160);
  v3 = *(v2 + 72);
  *(v0 - 176) = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_317()
{

  return sub_1DC5180AC();
}

uint64_t OUTLINED_FUNCTION_322_0()
{
  v3 = v1[45];
  v4 = v1[31];
  v6 = v1[27];
  v5 = v1[28];
  v7 = v1[51];

  return MEMORY[0x1EEE0AD88](v3, v7, v0);
}

uint64_t OUTLINED_FUNCTION_328_0()
{

  return sub_1DC517E5C();
}

uint64_t OUTLINED_FUNCTION_335()
{
  *(v1 + 184) = v4;

  return MEMORY[0x1EEE0A3F8](v1 + 184, v2, v3, v0);
}

void OUTLINED_FUNCTION_336_0(uint64_t a1@<X1>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X8>)
{

  sub_1DC4410E8(a2 + 1, a1, v4, a4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_348_0()
{
  v2 = *(v0 - 192);

  return sub_1DC51820C();
}

void OUTLINED_FUNCTION_360()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_362_0()
{

  return sub_1DC51814C();
}

void OUTLINED_FUNCTION_379()
{
  *(v3 - 272) = v2;
  *(v3 - 264) = v1;
  *(v3 - 256) = v0;
}

uint64_t OUTLINED_FUNCTION_390()
{
  result = type metadata accessor for NLRouterTurnProbingResult(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_391()
{
  result = type metadata accessor for NLRouterServiceResponse(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_404@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a1[9] = v19;
  a1[10] = a2;
  a1[6] = a17;
  *(v18 + 56) = a18;
}

uint64_t OUTLINED_FUNCTION_406()
{
  v3 = *(v1 - 88);
  v4 = *(v1 - 96) | 0x8000000000000000;

  return MEMORY[0x1EEE0AA08](0xD00000000000001CLL, v4, v0);
}

void OUTLINED_FUNCTION_407(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_409(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_410(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_412()
{
}

uint64_t OUTLINED_FUNCTION_413()
{

  return sub_1DC5176CC();
}

uint64_t OUTLINED_FUNCTION_414()
{

  return sub_1DC517E5C();
}

uint64_t OUTLINED_FUNCTION_426()
{
  *(v1 + 8) = v0;
  v3 = *(v2 + 248);
  return *(v2 + 232);
}

uint64_t OUTLINED_FUNCTION_427()
{
  v2 = **(v1 - 144);
  result = v0;
  v4 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_431(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_432(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = result;
  v4[25] = a2;
  v5 = *a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_436()
{
  v3 = *(v1 + 104);
  result = v0;
  v5 = *(v2 - 228);
  return result;
}

uint64_t OUTLINED_FUNCTION_438()
{
  result = v0;
  v3 = *(v1 - 120);
  v5 = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

void OUTLINED_FUNCTION_469(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_470(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_471(uint64_t a1, uint64_t a2)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;

  return sub_1DC514FDC();
}

uint64_t OUTLINED_FUNCTION_472(uint64_t a1, uint64_t a2)
{
  *(v2 - 80) = a1;
  *(v2 - 72) = a2;

  return sub_1DC514FDC();
}

void OUTLINED_FUNCTION_473(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_474()
{

  return sub_1DC517FEC();
}

uint64_t OUTLINED_FUNCTION_475()
{

  return sub_1DC516F0C();
}

void OUTLINED_FUNCTION_476()
{

  JUMPOUT(0x1E1296060);
}

uint64_t OUTLINED_FUNCTION_479()
{

  return sub_1DC5182FC();
}

uint64_t OUTLINED_FUNCTION_480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

id OUTLINED_FUNCTION_481()
{

  return sub_1DC296DBC();
}

uint64_t OUTLINED_FUNCTION_482()
{
  v2 = *v0;
  v3 = v0[1];
}

id OUTLINED_FUNCTION_483(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_484@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1DC4465D4();
}

uint64_t sub_1DC4478A4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a1;
  v101 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v92 = &v87 - v4;
  OUTLINED_FUNCTION_12();
  v94 = sub_1DC51190C();
  v5 = OUTLINED_FUNCTION_0(v94);
  v91 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v89 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = &v87 - v13;
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC5167EC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v90 = v21 - v20;
  OUTLINED_FUNCTION_12();
  v102 = sub_1DC5157EC();
  v22 = OUTLINED_FUNCTION_0(v102);
  v96 = v23;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v22);
  v95 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v87 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v87 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v87 - v35;
  v37 = type metadata accessor for NLRouterTurnContext(0);
  v38 = OUTLINED_FUNCTION_35(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1();
  v97 = v42 - v41;
  OUTLINED_FUNCTION_12();
  v43 = sub_1DC516F5C();
  v44 = OUTLINED_FUNCTION_0(v43);
  v99 = v45;
  v100 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1();
  v50 = v49 - v48;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v51 = sub_1DC2BE518();
  v52 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.MathRule", 23, 2, v51, v52 & 1, v50);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC346680() & 1) == 0)
  {
    sub_1DC517B9C();
    v54 = sub_1DC2BE518();
    sub_1DC516F0C();

    goto LABEL_5;
  }

  v53 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(&v98[*(v53 + 20)], v36, &qword_1ECC7BFD0, &unk_1DC522550);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) != 1)
  {
    v87 = v17;
    v88 = v14;
    v58 = v97;
    sub_1DC3343A8(v36, v97);
    v59 = type metadata accessor for HeuristicRoutingRequest(0);
    v60 = v96;
    v61 = *(v96 + 16);
    v57 = v102;
    v61(v32, &v98[*(v59 + 20)], v102);
    v61(v30, v32, v57);
    v62 = (*(v60 + 88))(v30, v57);
    v63 = *(v60 + 8);
    if (v62 != *MEMORY[0x1E69D02C8])
    {
      (v63)(v32, v57);
      sub_1DC33440C(v58);
      v66 = v30;
LABEL_10:
      (v63)(v66, v57);
LABEL_29:
      v55 = 1;
      v56 = v101;
      goto LABEL_30;
    }

    (v63)(v30, v57);
    v98 = v32;
    sub_1DC32CDF4();
    v64 = v93;
    sub_1DC28F358(v58 + *(v37 + 28), v93, &qword_1ECC7BFE0, &unk_1DC5253A0);
    v65 = v88;
    if (__swift_getEnumTagSinglePayload(v64, 1, v88) == 1)
    {
      sub_1DC28EB30(v64, &qword_1ECC7BFE0, &unk_1DC5253A0);
      v57 = v94;
LABEL_19:
      v74 = v92;
      sub_1DC28F358(v58 + *(v37 + 32), v92, &unk_1ECC7D3A0, &unk_1DC522560);
      if (__swift_getEnumTagSinglePayload(v74, 1, v57) == 1)
      {
        OUTLINED_FUNCTION_3_34();
        v63();
        (v63)(v98, v57);
        sub_1DC33440C(v58);
        sub_1DC28EB30(v74, &unk_1ECC7D3A0, &unk_1DC522560);
        goto LABEL_29;
      }

      v75 = v91;
      v76 = v89;
      (*(v91 + 32))(v89, v74, v57);
      if ((sub_1DC5118FC() & 1) == 0)
      {
        (*(v75 + 8))(v76, v57);
        OUTLINED_FUNCTION_3_34();
        v63();
        (v63)(v98, v57);
        sub_1DC33440C(v97);
        goto LABEL_29;
      }

      if (sub_1DC5118EC() != 0x74656D6874697261 || v77 != 0xEA00000000006369)
      {
        v79 = sub_1DC51825C();

        v80 = OUTLINED_FUNCTION_4_36();
        v81(v80);
        OUTLINED_FUNCTION_3_34();
        v63();
        sub_1DC33440C(v97);
        if ((v79 & 1) == 0)
        {
          v66 = v95;
          goto LABEL_10;
        }

LABEL_35:
        v56 = v101;
        (*(v96 + 32))(v101, v95, v57);
        v55 = 0;
        goto LABEL_30;
      }

      v85 = OUTLINED_FUNCTION_4_36();
      v86(v85);
      OUTLINED_FUNCTION_3_34();
      v63();
      v84 = v97;
LABEL_34:
      sub_1DC33440C(v84);
      goto LABEL_35;
    }

    v67 = v87;
    v68 = v90;
    (*(v87 + 32))(v90, v64, v65);
    v69 = sub_1DC5167DC();
    if (!v70)
    {
      (*(v67 + 8))(v68, v65);
      v57 = v94;
      v58 = v97;
      goto LABEL_19;
    }

    v71 = v69 == 1752457581 && v70 == 0xE400000000000000;
    v57 = v94;
    if (v71)
    {

      (*(v87 + 8))(v68, v88);
      v58 = v97;
    }

    else
    {
      v72 = v68;
      v73 = sub_1DC51825C();

      (*(v87 + 8))(v72, v88);
      v58 = v97;
      if ((v73 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_3_34();
    v63();
    v84 = v58;
    goto LABEL_34;
  }

  sub_1DC28EB30(v36, &qword_1ECC7BFD0, &unk_1DC522550);
LABEL_5:
  v55 = 1;
  v56 = v101;
  v57 = v102;
LABEL_30:
  __swift_storeEnumTagSinglePayload(v56, v55, 1, v57);
  v82 = sub_1DC2BE518();
  sub_1DC2B8848();

  return (*(v99 + 8))(v50, v100);
}

void sub_1DC4481C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v200 = a1;
  v194 = a2;
  v183 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v183);
  v176 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v185 = v7 - v6;
  OUTLINED_FUNCTION_12();
  v192 = sub_1DC51179C();
  v8 = OUTLINED_FUNCTION_0(v192);
  v175 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v182 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v191 = v14;
  OUTLINED_FUNCTION_12();
  v193 = sub_1DC51164C();
  v15 = OUTLINED_FUNCTION_0(v193);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v184 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v162 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C178, qword_1DC523CB0);
  v25 = OUTLINED_FUNCTION_10(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v201 = v28;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  v186 = v30;
  OUTLINED_FUNCTION_12();
  v179 = sub_1DC51122C();
  v31 = OUTLINED_FUNCTION_0(v179);
  v177 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  v178 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v38 = OUTLINED_FUNCTION_10(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v190 = &v162 - v41;
  OUTLINED_FUNCTION_12();
  v199 = sub_1DC5157EC();
  v42 = OUTLINED_FUNCTION_0(v199);
  v188 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  v180 = v46;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v47);
  v181 = &v162 - v48;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_62();
  v187 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v52 = OUTLINED_FUNCTION_10(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v162 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v58 = OUTLINED_FUNCTION_10(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v162 - v61;
  v63 = type metadata accessor for NLRouterNLParseResponse(0);
  v64 = OUTLINED_FUNCTION_35(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_1();
  v189 = v68 - v67;
  OUTLINED_FUNCTION_12();
  v69 = sub_1DC516F5C();
  v70 = OUTLINED_FUNCTION_0(v69);
  v197 = v71;
  v198 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_1();
  v76 = v75 - v74;
  v77 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v78 = sub_1DC2BE518();
  v79 = OUTLINED_FUNCTION_130();
  v195 = v77;
  v196 = v76;
  sub_1DC2A2ED0("HeuristicRules.HealthRule", 25, 2, v78, v79 & 1, v76);

  v80 = v200;
  v81 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v80 + *(v81 + 32), v56, &qword_1ECC7C158, &unk_1DC5234A0);
  v82 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v56, 1, v82) == 1)
  {
    sub_1DC28EB30(v56, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v63);
LABEL_4:
    sub_1DC28EB30(v62, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    v89 = v199;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
    v91 = v197;
    v90 = v198;
    v92 = v196;
LABEL_6:
    v93 = sub_1DC2BE518();
    sub_1DC2B8848();

    (*(v91 + 8))(v92, v90);
    return;
  }

  sub_1DC28F358(v56, v62, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v56, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC2E53A4(v62, v189);
  v94 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
  sub_1DC32DBF4();
  v95 = v199;
  if (v96)
  {
    OUTLINED_FUNCTION_3_35();
    OUTLINED_FUNCTION_19();
    v89 = v95;
    goto LABEL_5;
  }

  v97 = v188;
  v98 = *(v188 + 16);
  v174 = v94;
  v99 = v187;
  v98(v187, v80 + v94, v199);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v100 = sub_1DC3443C8();
  v102 = v101;
  if (v100 == sub_1DC312FB4(0) && v102 == v103)
  {

LABEL_16:
    v106 = v194;
    goto LABEL_17;
  }

  v105 = sub_1DC51825C();

  if (v105)
  {

    v106 = v194;
LABEL_17:
    v107 = sub_1DC5157DC();
    OUTLINED_FUNCTION_3_35();
    if (v107)
    {
      (*(v97 + 8))(v99, v95);
      v108 = 1;
    }

    else
    {
      (*(v97 + 32))(v106, v99, v95);
      v108 = 0;
    }

    v91 = v197;
    v90 = v198;
    v92 = v196;
    __swift_storeEnumTagSinglePayload(v106, v108, 1, v95);
    goto LABEL_6;
  }

  v109 = sub_1DC312F68();
  if (v109 == 4)
  {
    v110 = v190;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v95);
LABEL_24:
    sub_1DC28EB30(v110, &qword_1ECC7CA40, &unk_1DC5233A0);
    v106 = v194;
    goto LABEL_17;
  }

  v110 = v190;
  sub_1DC312E7C(v109, v190);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v110, 1, v95);
  v115 = v189;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_24;
  }

  v116 = *(v97 + 32);
  v171 = v97 + 32;
  v170 = v116;
  v116(v181, v110, v95);
  v117 = v180;
  (*(v97 + 104))(v180, *MEMORY[0x1E69D02F0], v95);
  v118 = sub_1DC5157DC();
  v119 = *(v97 + 8);
  v119(v117, v95);
  if ((v118 & 1) == 0)
  {
    v119(v181, v95);
    goto LABEL_16;
  }

  v168 = v119;
  v120 = v193;
  v167 = *(*v115 + 16);
  if (!v167)
  {
LABEL_45:
    v95 = v199;
    v168(v181, v199);
    goto LABEL_16;
  }

  v121 = 0;
  v173 = 0;
  v122 = *(v177 + 80);
  OUTLINED_FUNCTION_24();
  v125 = v123 + v124;
  v190 = v17 + 16;
  v175 += 8;
  v172 = v17 + 32;
  v176 += 8;
  v165 = v126 + 8;
  v166 = v97 + 8;
  v164 = v123;
  v163 = v123 + v124;
  v162 = v126 + 16;
  while (2)
  {
    if (v121 < *(v123 + 16))
    {
      (*(v177 + 16))(v178, v125 + *(v177 + 72) * v121, v179);
      v169 = v121 + 1;
      v127 = sub_1DC5111AC();

      v128 = 0;
      while (1)
      {
        v129 = *(v127 + 16);
        for (i = v128; ; ++i)
        {
          v131 = v201;
          if (v129 == i)
          {
            v138 = 1;
            v128 = v129;
            goto LABEL_39;
          }

          if ((v128 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          if (i >= *(v127 + 16))
          {
            goto LABEL_48;
          }

          v132 = *(v17 + 80);
          OUTLINED_FUNCTION_24();
          (*(v17 + 16))(v23, v127 + v133 + *(v17 + 72) * i, v120);
          if (sub_1DC5114CC())
          {
            v134 = v191;
            sub_1DC51154C();
            v135 = sub_1DC51177C();
            OUTLINED_FUNCTION_37(&v203);
            v136 = v134;
            v120 = v193;
            v137(v136, v192);
            if (v135)
            {
              break;
            }
          }

          (*(v17 + 8))(v23, v120);
        }

        OUTLINED_FUNCTION_37(&v202);
        v139(v186, v23, v120);
        v138 = 0;
        v128 = i + 1;
        v131 = v201;
LABEL_39:
        v140 = v186;
        __swift_storeEnumTagSinglePayload(v186, v138, 1, v120);
        sub_1DC318B74(v140, v131);
        v141 = __swift_getEnumTagSinglePayload(v131, 1, v120);
        v143 = v184;
        v142 = v185;
        if (v141 == 1)
        {
          break;
        }

        OUTLINED_FUNCTION_37(&v202);
        v144(v143, v131, v120);
        v145 = v182;
        sub_1DC51154C();
        sub_1DC51178C();
        OUTLINED_FUNCTION_37(&v203);
        v146(v145, v192);
        v120 = v173;
        sub_1DC5138FC();
        if (v120)
        {

          OUTLINED_FUNCTION_37(&v204);
          v147(v142, v183);
          v148 = OUTLINED_FUNCTION_10_28();
          v149(v148);
          v173 = 0;
          continue;
        }

        v173 = 0;
        OUTLINED_FUNCTION_37(&v204);
        v150(v142, v183);
        v151 = OUTLINED_FUNCTION_10_28();
        v152(v151);
        v153 = sub_1DC448F44();

        if (v153)
        {

          OUTLINED_FUNCTION_37(&v197);
          v156 = OUTLINED_FUNCTION_12_1();
          v157(v156);

          v158 = v180;
          v159 = v181;
          v99 = v187;
          sub_1DC32DE40();
          v160 = v159;
          v95 = v199;
          v161 = v168;
          v168(v160, v199);
          v161(v99, v95);
          v170(v99, v158, v95);
          v106 = v194;
          v97 = v188;
          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_37(&v197);
      v154 = OUTLINED_FUNCTION_12_1();
      v155(v154);

      v121 = v169;
      v99 = v187;
      v97 = v188;
      v123 = v164;
      v125 = v163;
      if (v169 != v167)
      {
        continue;
      }

      goto LABEL_45;
    }

    break;
  }

LABEL_49:
  __break(1u);
}

unint64_t sub_1DC448F44()
{
  v1 = sub_1DC514ECC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v61 = v3;
  v62 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v60 = v7 - v6;
  OUTLINED_FUNCTION_12();
  v69 = sub_1DC514E7C();
  v8 = OUTLINED_FUNCTION_0(v69);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_1DC514E3C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v64 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  v27 = OUTLINED_FUNCTION_10(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v65 = v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  v66 = v32;
  v63 = v0;
  result = sub_1DC514EEC();
  v34 = result;
  v35 = 0;
  v36 = *(result + 16);
  v37 = (v10 + 8);
  v67 = (v19 + 8);
  v68 = v19 + 16;
  while (1)
  {
    if (v36 == v35)
    {

      v46 = 1;
      v47 = v66;
      goto LABEL_13;
    }

    if (v35 >= *(v34 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v38 = *(v19 + 80);
    OUTLINED_FUNCTION_24();
    v40 = v16;
    (*(v19 + 16))(v25, v34 + v39 + *(v19 + 72) * v35, v16);
    sub_1DC514E0C();
    v41 = sub_1DC514E6C();
    v43 = v42;
    (*v37)(v15, v69);
    if (v41 == 1802723700 && v43 == 0xE400000000000000)
    {
      break;
    }

    v45 = sub_1DC51825C();

    if (v45)
    {
      goto LABEL_12;
    }

    v16 = v40;
    result = (*v67)(v25, v40);
    ++v35;
  }

LABEL_12:

  v47 = v66;
  v16 = v40;
  (*(v19 + 32))(v66, v25, v40);
  v46 = 0;
LABEL_13:
  v48 = v65;
  __swift_storeEnumTagSinglePayload(v47, v46, 1, v16);
  sub_1DC28F358(v47, v48, &qword_1ECC7C1A0, &qword_1DC522F80);
  if (__swift_getEnumTagSinglePayload(v48, 1, v16) == 1)
  {
    sub_1DC28EB30(v47, &qword_1ECC7C1A0, &qword_1DC522F80);
    sub_1DC28EB30(v48, &qword_1ECC7C1A0, &qword_1DC522F80);
    return 0;
  }

  (*(v19 + 32))(v64, v48, v16);
  v50 = sub_1DC514EFC();
  result = sub_1DC514E1C();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (result < *(v50 + 16))
  {
    v52 = v60;
    v51 = v61;
    v53 = *(v61 + 80);
    OUTLINED_FUNCTION_24();
    v56 = v16;
    v57 = v62;
    (*(v51 + 16))(v52, v50 + v54 + *(v51 + 72) * v55, v62);

    MEMORY[0x1EEE9AC00](v58);
    *(&v59 - 2) = v52;
    v49 = sub_1DC2CF098(sub_1DC449558, (&v59 - 4), &unk_1F57FEAA8);
    (*v67)(v64, v56);
    sub_1DC28EB30(v47, &qword_1ECC7C1A0, &qword_1DC522F80);
    (*(v51 + 8))(v52, v57);
    return v49;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DC44945C(uint64_t *a1)
{
  v2 = sub_1DC514E7C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v12 = *a1;
  v11 = a1[1];
  sub_1DC514EBC();
  sub_1DC514E6C();
  (*(v5 + 8))(v10, v2);
  LOBYTE(v11) = sub_1DC51795C();

  return v11 & 1;
}

uint64_t sub_1DC449588()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8FA48);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000028;
  v4[3] = 0x80000001DC540200;
  v4[4] = 0xD000000000000012;
  v4[5] = 0x80000001DC52EAA0;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC44965C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v81 = &v77 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v77 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v77 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v77 - v19;
  v21 = sub_1DC5172FC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC8EF28 != -1)
  {
    OUTLINED_FUNCTION_0_63();
  }

  __swift_project_value_buffer(v21, qword_1ECC8FA48);
  v26 = sub_1DC5172DC();
  (*(v22 + 8))(v25, v21);
  if (v26)
  {
    v27 = sub_1DC5171EC();
    sub_1DC30F668(0x656D614E64726163, 0xE800000000000000, v27, v20);

    v28 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_0(v20);
    if (v29)
    {
      sub_1DC30F72C(v20);
      v31 = v81;
      v30 = v82;
    }

    else
    {
      sub_1DC382AC0();
      v80 = v47;
      v49 = v48;
      OUTLINED_FUNCTION_1_39();
      (*(v50 + 8))(v20, v28);
      v31 = v81;
      v30 = v82;
      v79 = v49;
      if (v49)
      {
LABEL_10:
        v51 = sub_1DC5171EC();
        sub_1DC30F668(0x614E6E6F73726570, 0xEA0000000000656DLL, v51, v18);

        OUTLINED_FUNCTION_3_0(v18);
        if (v29)
        {
          sub_1DC30F72C(v18);
        }

        else
        {
          sub_1DC382AC0();
          v82 = v52;
          v54 = v53;
          OUTLINED_FUNCTION_1_39();
          (*(v55 + 8))(v18, v28);
          v81 = v54;
          if (v54)
          {
LABEL_15:
            v56 = sub_1DC5171EC();
            sub_1DC30F668(0x43676E6975737369, 0xEB00000000797469, v56, v15);

            OUTLINED_FUNCTION_3_0(v15);
            if (v29)
            {
              sub_1DC30F72C(v15);
            }

            else
            {
              sub_1DC382AC0();
              v78 = v57;
              v59 = v58;
              OUTLINED_FUNCTION_1_39();
              (*(v60 + 8))(v15, v28);
              v77 = v59;
              if (v59)
              {
LABEL_20:
                v61 = sub_1DC5171EC();
                sub_1DC30F668(0x53676E6975737369, 0xEC00000065746174, v61, v12);

                OUTLINED_FUNCTION_3_0(v12);
                if (v29)
                {
                  sub_1DC30F72C(v12);
                }

                else
                {
                  sub_1DC382AC0();
                  v41 = v62;
                  v42 = v63;
                  OUTLINED_FUNCTION_1_39();
                  (*(v64 + 8))(v12, v28);
                  if (v42)
                  {
LABEL_25:
                    v65 = sub_1DC5171EC();
                    sub_1DC30F668(0x43676E6975737369, 0xEE007972746E756FLL, v65, v31);

                    OUTLINED_FUNCTION_3_0(v31);
                    if (v29)
                    {
                      sub_1DC30F72C(v31);
                    }

                    else
                    {
                      sub_1DC382AC0();
                      v43 = v66;
                      v44 = v67;
                      OUTLINED_FUNCTION_1_39();
                      (*(v68 + 8))(v31, v28);
                      if (v44)
                      {
LABEL_30:
                        v69 = sub_1DC5171EC();
                        sub_1DC30F668(0x5462755364726163, 0xEB00000000657079, v69, v30);

                        OUTLINED_FUNCTION_3_0(v30);
                        if (v29)
                        {
                          sub_1DC30F72C(v30);
                        }

                        else
                        {
                          sub_1DC382AC0();
                          v45 = v70;
                          v46 = v71;
                          OUTLINED_FUNCTION_1_39();
                          (*(v72 + 8))(v30, v28);
                          if (v46)
                          {
                            v73 = sub_1DC51721C();
                            OUTLINED_FUNCTION_7_1(v73);
                            result = (*(v74 + 8))(a1);
LABEL_36:
                            v36 = v79;
                            v35 = v80;
                            v38 = v81;
                            v37 = v82;
                            v40 = v77;
                            v39 = v78;
                            goto LABEL_37;
                          }
                        }

                        v75 = sub_1DC51721C();
                        OUTLINED_FUNCTION_7_1(v75);
                        (*(v76 + 8))(a1);

                        v45 = 0;
                        v46 = 0xE000000000000000;
                        goto LABEL_36;
                      }
                    }

                    v43 = 0;
                    v44 = 0xE000000000000000;
                    goto LABEL_30;
                  }
                }

                v41 = 0;
                v42 = 0xE000000000000000;
                goto LABEL_25;
              }
            }

            v77 = 0xE000000000000000;
            v78 = 0;
            goto LABEL_20;
          }
        }

        v81 = 0xE000000000000000;
        v82 = 0;
        goto LABEL_15;
      }
    }

    v79 = 0xE000000000000000;
    v80 = 0;
    goto LABEL_10;
  }

  v32 = sub_1DC51721C();
  OUTLINED_FUNCTION_7_1(v32);
  result = (*(v33 + 8))(a1);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
LABEL_37:
  *a2 = v35;
  a2[1] = v36;
  a2[2] = v37;
  a2[3] = v38;
  a2[4] = v39;
  a2[5] = v40;
  a2[6] = v41;
  a2[7] = v42;
  a2[8] = v43;
  a2[9] = v44;
  a2[10] = v45;
  a2[11] = v46;
  return result;
}

uint64_t sub_1DC449D48()
{
  v1 = v0;
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0x656D614E64726143, 0xEA0000000000203ALL);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0x6F73726550207C20, 0xEF203A656D614E6ELL);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160](0xD000000000000010);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[6], v1[7]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[8], v1[9]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160](0xD000000000000010);
  MEMORY[0x1E1296160](v1[10], v1[11]);
  return 0;
}

uint64_t sub_1DC449E98@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC8EF28 != -1)
  {
    OUTLINED_FUNCTION_0_63();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8FA48);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC449F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DC449FD8()
{
  OUTLINED_FUNCTION_25_19();
  swift_allocObject();
  return sub_1DC44A010();
}

uint64_t sub_1DC44A010()
{
  v1 = v0;
  v2 = sub_1DC5146FC();
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  v8[0] = sub_1DC514F0C();
  v8[1] = v4;
  MEMORY[0x1EEE9AC00](v8[0]);
  v7[2] = v8;
  v5 = sub_1DC2CF098(sub_1DC2CF174, v7, &unk_1F57FEC00);

  if (v5)
  {
    *(v1 + 16) = v3;
  }

  else
  {
LABEL_4:

    type metadata accessor for NLRouterUsoGraphPromptHelper();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

void sub_1DC44A12C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  sub_1DC514F0C();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_3_36();
  v28[3] = sub_1DC44B870(v4, v5, v6, v3);
  v8 = v7;

  sub_1DC44A398();
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 16);
    if (v11)
    {
      v32 = MEMORY[0x1E69E7CC0];
      sub_1DC2DF6FC(0, v11, 0);
      v12 = v32;
      v28[1] = v10;
      v28[2] = v8;
      v13 = v10 + 32;
      do
      {
        sub_1DC28FB9C(v13, v29);
        v15 = v30;
        v14 = v31;
        v16 = __swift_project_boxed_opaque_existential_1(v29, v30);
        v17 = *(v15 - 8);
        v18 = *(v17 + 64);
        MEMORY[0x1EEE9AC00](v16);
        v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1DC44B3E4();
        v21 = (*(v14 + 40))(v15, v14);
        v23 = v22;
        (*(v17 + 8))(v20, v15);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        v32 = v12;
        v25 = *(v12 + 16);
        v24 = *(v12 + 24);
        if (v25 >= v24 >> 1)
        {
          v27 = OUTLINED_FUNCTION_26(v24);
          sub_1DC2DF6FC(v27, v25 + 1, 1);
          v12 = v32;
        }

        *(v12 + 16) = v25 + 1;
        v26 = v12 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        v13 += 40;
        --v11;
      }

      while (v11);
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    v29[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
    sub_1DC2DFC38();
    sub_1DC5176AC();
    OUTLINED_FUNCTION_192();
  }

  else
  {
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_34();
}

void sub_1DC44A398()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  if (!sub_1DC44B63C())
  {
    v2 = *(sub_1DC514F8C() + 16);

    if (v2)
    {
      v3 = sub_1DC514F8C();
      v193 = sub_1DC2E5024(v3);
      v192 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF98, &qword_1DC52EC70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DC523DA0;
      v5 = type metadata accessor for DateTimeRageAttribute();
      v7 = sub_1DC514F0C() == 0xD000000000000014 && 0x80000001DC5488C0 == v6;
      v183 = v1;
      if (v7)
      {

        v8 = sub_1DC514F8C();
        OUTLINED_FUNCTION_5_35(v8);
        if (v9)
        {
          sub_1DC2AEB04(29793, 0xE200000000000000);
          OUTLINED_FUNCTION_17_18();
        }

        else
        {
        }

        v10 = sub_1DC514F8C();
        OUTLINED_FUNCTION_5_35(v10);
        if (v11)
        {
          v12 = OUTLINED_FUNCTION_22_19();
          sub_1DC2AEB04(v12, v13);
          OUTLINED_FUNCTION_17_18();
        }

        else
        {
        }
      }

      else
      {
        sub_1DC51825C();
        OUTLINED_FUNCTION_97();
      }

      *(inited + 64) = 0;
      *(inited + 32) = 0u;
      *(inited + 48) = 0u;
      OUTLINED_FUNCTION_21_20();
      v14 = type metadata accessor for DateTimeAttribute();
      if (sub_1DC514F0C() == v5 && v15 == 0xEF656D6954657461)
      {
      }

      else
      {
        OUTLINED_FUNCTION_27_18();
        OUTLINED_FUNCTION_97();
      }

      v17 = sub_1DC514F8C();
      OUTLINED_FUNCTION_5_35(v17);
      if (v18)
      {
        sub_1DC2AEB04(1701669236, 0xE400000000000000);
        OUTLINED_FUNCTION_17_18();
      }

      else
      {

        v19 = sub_1DC514F8C();
        OUTLINED_FUNCTION_5_35(v19);
        if (!v20)
        {

LABEL_45:
          *(inited + 104) = 0;
          *(inited + 88) = 0u;
          *(inited + 72) = 0u;
          goto LABEL_46;
        }

        sub_1DC2AEB04(1702125924, 0xE400000000000000);
        OUTLINED_FUNCTION_17_18();
      }

      v181 = v14;
      OUTLINED_FUNCTION_28_15();
      v21 = 0;
      v182 = MEMORY[0x1E69E7CC8];
LABEL_26:
      v22 = &unk_1F57FED30 + 16 * v21++;
      v23 = (v22 + 40);
      while (v21 != 3)
      {
        v25 = *(v23 - 1);
        v24 = *v23;

        if (sub_1DC44BD44(v25, v24))
        {
          v5 = OUTLINED_FUNCTION_12_26();
          v27 = v26;

          if (v27)
          {
            OUTLINED_FUNCTION_19_21();
            LODWORD(v180) = swift_isUniquelyReferenced_nonNull_native();
            *&v189 = v1;
            v28 = sub_1DC2AEB04(v25, v24);
            OUTLINED_FUNCTION_2_37(v28, v29);
            if (v30)
            {
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
              __break(1u);
LABEL_155:
              __break(1u);
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D520, &qword_1DC522A60);
              OUTLINED_FUNCTION_20_20();
              if (sub_1DC517FFC())
              {
                sub_1DC2AEB04(v25, v24);
                OUTLINED_FUNCTION_4_37();
                if (!v7)
                {
                  goto LABEL_158;
                }
              }

              else
              {
                v31 = v182;
              }

              v182 = v189;
              if (v31)
              {
                OUTLINED_FUNCTION_13_27();
                v33 = v32[1];
                *v32 = v5;
                v32[1] = v27;

LABEL_41:
                v1 = v183;
                goto LABEL_26;
              }

              OUTLINED_FUNCTION_0_64();
              *v34 = v25;
              v34[1] = v24;
              OUTLINED_FUNCTION_13_27();
              *v36 = v5;
              v36[1] = v27;
              v37 = *(v35 + 16);
              v30 = __OFADD__(v37, 1);
              v38 = v37 + 1;
              if (!v30)
              {
                *(v35 + 16) = v38;
                goto LABEL_41;
              }
            }

            __break(1u);
LABEL_157:
            __break(1u);
            __break(1u);
LABEL_158:
            sub_1DC51829C();
            __break(1u);

            __break(1u);
            return;
          }
        }

        ++v21;
        v23 += 2;
      }

      sub_1DC44C65C();
      OUTLINED_FUNCTION_21_20();
      if (!v39)
      {
        goto LABEL_45;
      }

      *(inited + 96) = v181;
      *(inited + 104) = &off_1EDAC7E30;
      *(inited + 72) = v39;
LABEL_46:
      v40 = type metadata accessor for DateAttribute();
      if (sub_1DC514F0C() == v5 && v41 == 0xEB00000000657461)
      {
      }

      else
      {
        OUTLINED_FUNCTION_27_18();
        OUTLINED_FUNCTION_97();
      }

      v43 = sub_1DC514F8C();
      OUTLINED_FUNCTION_5_35(v43);
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_11_32();
        sub_1DC2AEB04(v45, v46);
        OUTLINED_FUNCTION_17_18();
      }

      else
      {

        v47 = sub_1DC514F8C();
        OUTLINED_FUNCTION_5_35(v47);
        if (!v48)
        {

LABEL_76:
          *(inited + 144) = 0;
          *(inited + 112) = 0u;
          *(inited + 128) = 0u;
LABEL_77:
          if (_MergedGlobals_71 != -1)
          {
LABEL_151:
            swift_once();
          }

          v76 = qword_1ECC8EF38;
          v77 = sub_1DC514F0C();
          sub_1DC332FF4(v77, v78, v76);
          OUTLINED_FUNCTION_97();
          if (v76)
          {
            OUTLINED_FUNCTION_28_15();
            v79 = 0;
            v182 = MEMORY[0x1E69E7CC8];
LABEL_80:
            v80 = (&unk_1F57FEE20 + 16 * v79 + 40);
            while (v79 != 4)
            {
              if (v79 > 3)
              {
LABEL_149:
                __break(1u);
                goto LABEL_150;
              }

              v82 = *(v80 - 1);
              v81 = *v80;

              if (sub_1DC44BD44(v82, v81))
              {
                v83 = OUTLINED_FUNCTION_12_26();
                v85 = v84;

                if (v85)
                {
                  OUTLINED_FUNCTION_19_21();
                  LODWORD(v181) = swift_isUniquelyReferenced_nonNull_native();
                  *&v189 = v1;
                  v86 = sub_1DC2AEB04(v82, v81);
                  OUTLINED_FUNCTION_2_37(v86, v87);
                  if (v30)
                  {
                    __break(1u);
                    goto LABEL_153;
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D520, &qword_1DC522A60);
                  OUTLINED_FUNCTION_20_20();
                  if (sub_1DC517FFC())
                  {
                    sub_1DC2AEB04(v82, v81);
                    OUTLINED_FUNCTION_4_37();
                    if (!v7)
                    {
                      goto LABEL_158;
                    }
                  }

                  else
                  {
                    v88 = v182;
                  }

                  v182 = v189;
                  if (v88)
                  {
                    OUTLINED_FUNCTION_13_27();
                    v90 = v89[1];
                    *v89 = v83;
                    v89[1] = v85;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_64();
                    *v91 = v82;
                    v91[1] = v81;
                    OUTLINED_FUNCTION_13_27();
                    *v93 = v83;
                    v93[1] = v85;
                    v94 = *(v92 + 16);
                    v30 = __OFADD__(v94, 1);
                    v95 = v94 + 1;
                    if (v30)
                    {
                      goto LABEL_155;
                    }

                    *(v92 + 16) = v95;
                  }

                  v1 = v183;
                  ++v79;
                  goto LABEL_80;
                }
              }

              v80 += 2;
              ++v79;
            }

            v96 = type metadata accessor for TimeAttribute();
            v97 = sub_1DC44C65C();
            if (!v97)
            {
              goto LABEL_99;
            }

            *(inited + 176) = v96;
            *(inited + 184) = &off_1EDAC7E60;
            *(inited + 152) = v97;
          }

          else
          {
LABEL_99:
            *(inited + 184) = 0;
            *(inited + 168) = 0u;
            *(inited + 152) = 0u;
          }

          v98 = MEMORY[0x1E69E7CC0];
          for (i = 32; i != 192; i += 40)
          {
            sub_1DC44E404(inited + i, &v189);
            v184[0] = v189;
            v184[1] = v190;
            v185 = v191;
            if (*(&v190 + 1))
            {
              sub_1DC28F9B0(v184, &v186);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v102 = v98[2];
                v103 = OUTLINED_FUNCTION_13_0();
                v98 = sub_1DC44CF6C(v103, v104, v105, v98);
              }

              v101 = v98[2];
              v100 = v98[3];
              if (v101 >= v100 >> 1)
              {
                v106 = OUTLINED_FUNCTION_26(v100);
                v98 = sub_1DC44CF6C(v106, v101 + 1, 1, v98);
              }

              v98[2] = v101 + 1;
              sub_1DC28F9B0(&v186, &v98[5 * v101 + 4]);
            }

            else
            {
              sub_1DC44E474(v184);
            }
          }

          swift_setDeallocating();
          sub_1DC44CF1C(&qword_1ECC7DFA0, &qword_1DC52EC78);

          sub_1DC44B6B4(v107);
          v108 = v193;
          v109 = v183;
          swift_retain_n();
          *&v189 = sub_1DC44D22C(v108);
          sub_1DC44D188(&v189, v109);

          v173 = 0;

          v111 = *(v189 + 16);
          if (v111)
          {
            v112 = 0;
            v172[4] = v189;
            v180 = v189 + 32;
            *&v110 = 136315394;
            v174 = v110;
            v113 = v183;
            v178 = v111;
            do
            {
              v114 = (v180 + 16 * v112);
              v115 = *v114;
              v116 = v114[1];

              v117 = sub_1DC514F8C();
              OUTLINED_FUNCTION_5_35(v117);
              if (v118 && (, v119 = sub_1DC2AEB04(v115, v116), v121 = v120, , (v121 & 1) != 0))
              {
                v182 = *(*(v113 + 56) + 8 * v119);

                v175 = v192;
                v123 = v192[2];
                v177 = v112;
                v179 = v115;
                if (!v123)
                {
                  *&v189 = v115;
                  *(&v189 + 1) = v116;
                  MEMORY[0x1EEE9AC00](v122);
                  v172[2] = &v189;

                  v124 = v173;
                  v113 = sub_1DC2CF098(sub_1DC327C74, v172, &unk_1F57FEE80);
                  v173 = v124;

                  if (v113)
                  {

                    v179 = 0;
                    v116 = 0xE000000000000000;
                  }
                }

                v125 = OUTLINED_FUNCTION_19_21();
                v1 = sub_1DC2C20B8(v125);
                v126 = 0;
                v127 = v116;
                v128 = v113 & 0xC000000000000001;
                inited = v113 & 0xFFFFFFFFFFFFFF8;
                v176 = v127;
                v181 = MEMORY[0x1E69E7CC0];
                while (v1 != v126)
                {
                  if (v128)
                  {
                    MEMORY[0x1E1296800](v126, v182);
                  }

                  else
                  {
                    if (v126 >= *(inited + 16))
                    {
                      goto LABEL_148;
                    }

                    v129 = *(v182 + 8 * v126 + 32);
                  }

                  v130 = v126 + 1;
                  if (__OFADD__(v126, 1))
                  {
                    __break(1u);
LABEL_148:
                    __break(1u);
                    goto LABEL_149;
                  }

                  sub_1DC44BE8C();
                  v132 = v131;
                  v134 = v133;

                  ++v126;
                  if (v134)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v139 = *(v181 + 2);
                      v140 = OUTLINED_FUNCTION_13_0();
                      v181 = sub_1DC2ACCD4(v140, v141, v142, v143);
                    }

                    v136 = *(v181 + 2);
                    v135 = *(v181 + 3);
                    if (v136 >= v135 >> 1)
                    {
                      OUTLINED_FUNCTION_26(v135);
                      OUTLINED_FUNCTION_16_17();
                      v181 = sub_1DC2ACCD4(v144, v145, v146, v181);
                    }

                    v137 = v181;
                    *(v181 + 2) = v136 + 1;
                    v138 = &v137[16 * v136];
                    *(v138 + 4) = v132;
                    *(v138 + 5) = v134;
                    v126 = v130;
                  }
                }

                *&v184[0] = v181;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
                sub_1DC2DFC38();
                OUTLINED_FUNCTION_14_18();
                v156 = sub_1DC5176AC();
                v158 = v157;

                v159 = HIBYTE(v158) & 0xF;
                if ((v158 & 0x2000000000000000) == 0)
                {
                  v159 = v156 & 0xFFFFFFFFFFFFLL;
                }

                v112 = v177;
                if (v159)
                {
                  *(&v187 + 1) = &type metadata for StandardAttribute;
                  v188 = &off_1EDAC7EC0;
                  v160 = swift_allocObject();
                  *&v186 = v160;
                  v161 = v176;
                  v160[2] = v179;
                  v160[3] = v161;
                  v160[4] = v156;
                  v160[5] = v158;
                }

                else
                {
                  v188 = 0;
                  v186 = 0u;
                  v187 = 0u;
                }

                v113 = v183;
                v111 = v178;
                v162 = v175;

                if (*(&v187 + 1))
                {
                  sub_1DC28F9B0(&v186, &v189);
                  sub_1DC28FB9C(&v189, &v186);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v165 = v162[2];
                    v166 = OUTLINED_FUNCTION_13_0();
                    v162 = sub_1DC44CF6C(v166, v167, v168, v162);
                  }

                  v164 = v162[2];
                  v163 = v162[3];
                  if (v164 >= v163 >> 1)
                  {
                    OUTLINED_FUNCTION_26(v163);
                    OUTLINED_FUNCTION_16_17();
                    v162 = sub_1DC44CF6C(v169, v170, v171, v162);
                  }

                  __swift_destroy_boxed_opaque_existential_1Tm(&v189);
                  v162[2] = v164 + 1;
                  sub_1DC28F9B0(&v186, &v162[5 * v164 + 4]);

                  v192 = v162;
                }

                else
                {
                  sub_1DC44E474(&v186);
                }
              }

              else
              {

                v147 = sub_1DC517BAC();
                sub_1DC297814();
                v148 = sub_1DC296DBC();
                if (os_log_type_enabled(v148, v147))
                {
                  v149 = v116;
                  v150 = swift_slowAlloc();
                  v151 = swift_slowAlloc();
                  *&v189 = v151;
                  *v150 = v174;

                  v152 = sub_1DC291244(v115, v149, &v189);

                  *(v150 + 4) = v152;
                  *(v150 + 12) = 2080;
                  v113 = v183;
                  v153 = sub_1DC514F0C();
                  v155 = sub_1DC291244(v153, v154, &v189);

                  *(v150 + 14) = v155;
                  _os_log_impl(&dword_1DC287000, v148, v147, "Cannot get values of attribute %s from %s", v150, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1E1298840](v151, -1, -1);
                  MEMORY[0x1E1298840](v150, -1, -1);
                  v111 = v178;
                }

                else
                {

                  v113 = v183;
                }
              }

              ++v112;
            }

            while (v112 != v111);
          }

          goto LABEL_146;
        }

        v49 = OUTLINED_FUNCTION_10_29();
        sub_1DC2AEB04(v49, v50);
        OUTLINED_FUNCTION_17_18();
      }

      v182 = v40;
      OUTLINED_FUNCTION_28_15();
      v51 = 0;
      v52 = MEMORY[0x1E69E7CC8];
LABEL_57:
      v53 = (&unk_1F57FED70 + 16 * v51 + 40);
      while (v51 != 4)
      {
        if (v51 > 3)
        {
LABEL_150:
          __break(1u);
          __break(1u);
          goto LABEL_151;
        }

        v54 = *(v53 - 1);
        v55 = *v53;

        v56 = OUTLINED_FUNCTION_8_24();
        if (sub_1DC44BD44(v56, v57))
        {
          v1 = OUTLINED_FUNCTION_12_26();
          v59 = v58;

          if (v59)
          {
            LODWORD(v181) = swift_isUniquelyReferenced_nonNull_native();
            *&v189 = v52;
            v60 = OUTLINED_FUNCTION_8_24();
            v180 = sub_1DC2AEB04(v60, v61);
            if (__OFADD__(v52[2], (v62 & 1) == 0))
            {
              goto LABEL_154;
            }

            v63 = v62;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D520, &qword_1DC522A60);
            OUTLINED_FUNCTION_20_20();
            if (sub_1DC517FFC())
            {
              v64 = OUTLINED_FUNCTION_8_24();
              v66 = sub_1DC2AEB04(v64, v65);
              if ((v63 & 1) != (v67 & 1))
              {
                goto LABEL_158;
              }
            }

            else
            {
              v66 = v180;
            }

            v68 = v63;
            v52 = v189;
            if (v68)
            {
              v69 = (*(v189 + 56) + 16 * v66);
              v70 = v69[1];
              *v69 = v1;
              v69[1] = v59;
            }

            else
            {
              *(v189 + 8 * (v66 >> 6) + 64) |= 1 << v66;
              v71 = (v52[6] + 16 * v66);
              *v71 = v54;
              v71[1] = v55;
              v72 = (v52[7] + 16 * v66);
              *v72 = v1;
              v72[1] = v59;
              v73 = v52[2];
              v30 = __OFADD__(v73, 1);
              v74 = v73 + 1;
              if (v30)
              {
                goto LABEL_157;
              }

              v52[2] = v74;
            }

            ++v51;
            goto LABEL_57;
          }
        }

        v53 += 2;
        ++v51;
      }

      v75 = sub_1DC44C65C();
      v1 = v183;
      if (!v75)
      {
        goto LABEL_76;
      }

      *(inited + 136) = v182;
      *(inited + 144) = &off_1EDAC7E90;
      *(inited + 112) = v75;
      goto LABEL_77;
    }
  }

LABEL_146:
  OUTLINED_FUNCTION_34();
}

void sub_1DC44B3E4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v33 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v32 = &v32 - v12;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v13 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v14 = *(v2 + 24);
  v15 = OUTLINED_FUNCTION_46_6();
  v16 = v14(v15);
  v17 = v16;
  v19 = v18;
  if (v13)
  {

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = OUTLINED_FUNCTION_46_6();
      v8 = v14(v21);
      v19 = v22;
    }

    else
    {

      v19 = v6;
    }
  }

  else
  {
    v8 = v16;
  }

  v23 = OUTLINED_FUNCTION_46_6();
  if (v8 == v14(v23) && v19 == v24)
  {
  }

  else
  {
    v26 = sub_1DC51825C();

    if ((v26 & 1) == 0)
    {
      v27 = *(v2 + 32);
      v28 = v32;
      v29 = OUTLINED_FUNCTION_46_6();
      v30(v29);
      (*(v2 + 16))(v8, v19, v28, v4, v2);
      OUTLINED_FUNCTION_34();
      return;
    }
  }

  (*(*(v4 - 8) + 16))(v33, v0, v4);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC44B604()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

BOOL sub_1DC44B63C()
{
  v4[0] = sub_1DC514F0C();
  v4[1] = v0;
  v3[2] = v4;
  v1 = sub_1DC2CF098(sub_1DC327C74, v3, &unk_1F57FEC90);

  return v1;
}

int64_t sub_1DC44B6B4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DC44D120(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DFB0, &unk_1DC52EC88);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DC44B790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    v7 = 1;
    return v7 & 1;
  }

  if ((sub_1DC51825C() & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_36();
    v10 = sub_1DC44C098(v8, v9, &unk_1F57FEE80);
    if (v11)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v13 = sub_1DC44C098(a3, a4, &unk_1F57FEE80);
    if (v14)
    {
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_6;
      }
    }

    else if (v12 != v13)
    {
      v7 = v12 < v13;
      return v7 & 1;
    }

    v7 = sub_1DC51825C() ^ 1;
    return v7 & 1;
  }

LABEL_6:
  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1DC44B870(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F10;

  MEMORY[0x1E1296160](95, 0xE100000000000000);
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  for (i = 0; ; i += 16)
  {
    if (i == 32)
    {
      swift_setDeallocating();
      sub_1DC2A180C();

      return OUTLINED_FUNCTION_36();
    }

    v11 = *(inited + i + 32);
    v10 = *(inited + i + 40);

    if (sub_1DC51794C())
    {
      break;
    }
  }

  swift_setDeallocating();
  sub_1DC2A180C();

  v12 = sub_1DC51783C();

  v13 = sub_1DC303EB0(v12, a3, a4);
  MEMORY[0x1E1296060](v13);

  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1DC44B9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC44A398();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      if (v6 == 1)
      {
        sub_1DC28FB9C(v4 + 32, &v52);
        v7 = v53;
        v8 = v54;
        __swift_project_boxed_opaque_existential_1(&v52, v53);
        v9 = (*(v8 + 24))(v7, v8);
        v11 = v10;

        v12 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {

          sub_1DC28F9B0(&v52, v55);
          sub_1DC28F9B0(v55, v56);
          v43 = v57;
          v44 = v58;
          __swift_project_boxed_opaque_existential_1(v56, v57);
          v45 = (*(v44 + 40))(v43, v44);
          v47 = v46;
          v48 = sub_1DC514F0C();
          sub_1DC44B870(v48, v49, v45, v47);
          OUTLINED_FUNCTION_192();

          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          return OUTLINED_FUNCTION_43();
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v52);
      }

      v50 = a1;
      v51 = a2;
      *&v55[0] = MEMORY[0x1E69E7CC0];
      sub_1DC2DF6FC(0, v6, 0);
      v13 = *&v55[0];
      v14 = v5 + 32;
      do
      {
        sub_1DC28FB9C(v14, v56);
        v15 = v57;
        v16 = v58;
        __swift_project_boxed_opaque_existential_1(v56, v57);
        v17 = (*(v16 + 40))(v15, v16);
        v19 = v18;
        v20 = sub_1DC514F0C();
        v22 = sub_1DC44B870(v20, v21, v17, v19);
        v24 = v23;

        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        *&v55[0] = v13;
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = OUTLINED_FUNCTION_26(v25);
          sub_1DC2DF6FC(v28, v26 + 1, 1);
          v13 = *&v55[0];
        }

        *(v13 + 16) = v26 + 1;
        v27 = v13 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v14 += 40;
        --v6;
      }

      while (v6);

      a1 = v50;
      a2 = v51;
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    v56[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
    sub_1DC2DFC38();
    OUTLINED_FUNCTION_14_18();
    v29 = sub_1DC5176AC();
    v31 = v30;

    if (a2)
    {
      v32 = a2;
    }

    else
    {
      sub_1DC514F0C();
      v34 = v33;
      v35 = OUTLINED_FUNCTION_3_36();
      a1 = sub_1DC44B870(v35, v36, v37, v34);
      v32 = v38;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1DC522F10;
    v40 = MEMORY[0x1E69E6158];
    *(v39 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1DC2C0FA4();
    *(v39 + 32) = a1;
    *(v39 + 40) = v32;
    *(v39 + 96) = v40;
    *(v39 + 104) = v41;
    *(v39 + 64) = v41;
    *(v39 + 72) = v29;
    *(v39 + 80) = v31;

    sub_1DC51774C();
    OUTLINED_FUNCTION_192();
  }

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1DC44BD44(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DC514F8C();
  v4 = OUTLINED_FUNCTION_36();
  sub_1DC2E4CBC(v4, v5, v3);
  OUTLINED_FUNCTION_25_19();

  if (!a2)
  {
    return 0;
  }

  if (sub_1DC2C20B8(a2) != 1 || (result = sub_1DC2C20B8(a2)) == 0)
  {

    return 0;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E1296800](0, a2);
LABEL_7:

    if (v7)
    {
      sub_1DC514F3C();
      OUTLINED_FUNCTION_25_19();

      return a2;
    }

    return 0;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(a2 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC44BE10(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    for (i = (result + 40); v2; --v2)
    {
      v5 = *(i - 1);
      v4 = *i;

      sub_1DC44DF14(v5, v4);

      i += 2;
    }
  }

  return result;
}

void sub_1DC44BE8C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DC514ECC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - v10;
  if (!sub_1DC514F3C())
  {
    goto LABEL_8;
  }

  if (sub_1DC44B63C())
  {

    goto LABEL_11;
  }

  if (v3)
  {
    sub_1DC514F0C();
    v13 = v12;
    v14 = OUTLINED_FUNCTION_3_36();
    v1 = sub_1DC44B870(v14, v15, v16, v13);
    v18 = v17;

    sub_1DC44B9CC(v1, v18);
    OUTLINED_FUNCTION_238();
  }

  else
  {
    sub_1DC44B9CC(0, 0);
    OUTLINED_FUNCTION_238();
  }

  if (!v1)
  {
LABEL_8:
    sub_1DC514F4C();
    sub_1DC514E9C();
    OUTLINED_FUNCTION_238();
    v19 = *(v5 + 8);
    v19(v11, v4);
    if (!v1)
    {
      sub_1DC514F4C();
      v20 = sub_1DC514E8C();
      v22 = v21;
      v19(v9, v4);
      if ((v22 & 1) == 0)
      {
        v23[1] = v20;
        sub_1DC51823C();
        OUTLINED_FUNCTION_238();
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC44C098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1DC51825C() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1DC44C124(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    MEMORY[0x1E1296160](8250, 0xE200000000000000);
    v3 = OUTLINED_FUNCTION_36();
    MEMORY[0x1E1296160](v3);
  }

  else
  {
  }

  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1DC44C1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a3;
  v5 = a3[1];
  result = nullsub_1(a1, a2);
  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = v10;
  return result;
}

uint64_t sub_1DC44C1DC()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1DC44C208@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1DC44C214()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_1DC44C124(*v0, v0[1]);
}

uint64_t sub_1DC44C220(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = *(v3 + 96);

  return v5(a3);
}

uint64_t sub_1DC44C274(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16))
  {
    v4 = sub_1DC2AEB04(a1, a2);
    if (v5)
    {
      v6 = (*(v3 + 56) + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
    }
  }

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1DC44C2C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1DC44C2F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAD8, &qword_1DC525850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F00;
  v1 = OUTLINED_FUNCTION_11_32();
  *(inited + 32) = sub_1DC44C274(v1, v2);
  *(inited + 40) = v3;
  *(inited + 48) = sub_1DC44C498();
  *(inited + 56) = v4;
  result = sub_1DC44C274(1918985593, 0xE400000000000000);
  v6 = 0;
  *(inited + 64) = result;
  *(inited + 72) = v7;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = v6 - 1;
  v10 = 16 * v6 + 40;
  while (1)
  {
    if (v9 == 2)
    {
      swift_setDeallocating();
      sub_1DC44CF1C(&qword_1ECC7D0A0, &unk_1DC524070);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
      sub_1DC2DFC38();
      OUTLINED_FUNCTION_14_18();
      sub_1DC5176AC();
      OUTLINED_FUNCTION_192();

      return OUTLINED_FUNCTION_43();
    }

    if (++v9 > 2)
    {
      break;
    }

    v11 = v10 + 16;
    v12 = *(inited + v10);
    v10 += 16;
    if (v12)
    {
      v13 = *(inited + v11 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v16 = *(v8 + 16);
        v17 = OUTLINED_FUNCTION_13_0();
        result = sub_1DC2ACCD4(v17, v18, v19, v8);
        v8 = result;
      }

      v14 = *(v8 + 16);
      if (v14 >= *(v8 + 24) >> 1)
      {
        OUTLINED_FUNCTION_16_17();
        result = sub_1DC2ACCD4(v20, v21, v22, v8);
        v8 = result;
      }

      v6 = v9 + 1;
      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v13;
      *(v15 + 40) = v12;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC44C498()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAD8, &qword_1DC525850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F10;
  *(inited + 32) = sub_1DC44C274(0x59664F68746E6F6DLL, 0xEB00000000726165);
  *(inited + 40) = v1;
  v2 = OUTLINED_FUNCTION_10_29();
  v4 = 0;
  *(inited + 48) = sub_1DC44C274(v2, v3);
  *(inited + 56) = v5;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (inited + 40 + 16 * v4);
  while (++v4 != 3)
  {
    v8 = v7 + 2;
    v9 = *v7;
    v7 += 2;
    if (v9)
    {
      v10 = *(v8 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v6 + 2);
        v14 = OUTLINED_FUNCTION_13_0();
        v6 = sub_1DC2ACCD4(v14, v15, v16, v6);
      }

      v11 = *(v6 + 2);
      if (v11 >= *(v6 + 3) >> 1)
      {
        OUTLINED_FUNCTION_16_17();
        v6 = sub_1DC2ACCD4(v17, v18, v19, v6);
      }

      *(v6 + 2) = v11 + 1;
      v12 = &v6[16 * v11];
      *(v12 + 4) = v10;
      *(v12 + 5) = v9;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_1DC44CF1C(&qword_1ECC7D0A0, &unk_1DC524070);
  if (*(v6 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
    sub_1DC2DFC38();
    v20 = sub_1DC5176AC();
  }

  else
  {

    return 0;
  }

  return v20;
}

void *sub_1DC44C65C()
{
  OUTLINED_FUNCTION_25_19();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0xE000000000000000;
  result[2] = v0;
  return result;
}

uint64_t sub_1DC44C694()
{
  sub_1DC44C2C8();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1DC44C6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1DC44C220(a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_1DC44C6F4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1DC44C724@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DC44C26C();
  *a1 = result;
  return result;
}

uint64_t sub_1DC44C774()
{
  result = sub_1DC33347C(&unk_1F57FEDD0);
  qword_1ECC8EF38 = result;
  return result;
}

uint64_t sub_1DC44C79C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAD8, &qword_1DC525850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F00;
  v1 = sub_1DC44C274(1920298856, 0xE400000000000000);
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 12336;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  *(inited + 32) = v3;
  *(inited + 40) = v4;
  v5 = sub_1DC44C274(0x6574756E696DLL, 0xE600000000000000);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 12336;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v8;
  result = sub_1DC44C274(0x646E6F636573, 0xE600000000000000);
  v10 = 0;
  *(inited + 64) = result;
  *(inited + 72) = v11;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v13 = v10 - 1;
  v14 = 16 * v10 + 40;
  while (v13 != 2)
  {
    if (++v13 > 2)
    {
      __break(1u);
      return result;
    }

    v15 = v14 + 16;
    v16 = *(inited + v14);
    v14 += 16;
    if (v16)
    {
      v17 = *(inited + v15 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v21 = *(v12 + 16);
        v22 = OUTLINED_FUNCTION_13_0();
        result = sub_1DC2ACCD4(v22, v23, v24, v12);
        v12 = result;
      }

      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        v25 = OUTLINED_FUNCTION_26(v18);
        result = sub_1DC2ACCD4(v25, v19 + 1, 1, v12);
        v12 = result;
      }

      v10 = v13 + 1;
      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      goto LABEL_14;
    }
  }

  swift_setDeallocating();
  sub_1DC44CF1C(&qword_1ECC7D0A0, &unk_1DC524070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC2DFC38();
  v26 = sub_1DC5176AC();

  v27 = sub_1DC44C274(0x6D6569646972656DLL, 0xE800000000000000);
  if (v28)
  {
    MEMORY[0x1E1296160](v27);
  }

  return v26;
}

uint64_t sub_1DC44C9F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAD8, &qword_1DC525850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F10;
  *(inited + 32) = sub_1DC44C274(1702125924, 0xE400000000000000);
  *(inited + 40) = v1;
  v2 = 0;
  *(inited + 48) = sub_1DC44C274(1701669236, 0xE400000000000000);
  *(inited + 56) = v3;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (inited + 40 + 16 * v2);
  while (++v2 != 3)
  {
    v6 = v5 + 2;
    v7 = *v5;
    v5 += 2;
    if (v7)
    {
      v8 = *(v6 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v4 + 2);
        v12 = OUTLINED_FUNCTION_13_0();
        v4 = sub_1DC2ACCD4(v12, v13, v14, v4);
      }

      v9 = *(v4 + 2);
      if (v9 >= *(v4 + 3) >> 1)
      {
        OUTLINED_FUNCTION_16_17();
        v4 = sub_1DC2ACCD4(v15, v16, v17, v4);
      }

      *(v4 + 2) = v9 + 1;
      v10 = &v4[16 * v9];
      *(v10 + 4) = v8;
      *(v10 + 5) = v7;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_1DC44CF1C(&qword_1ECC7D0A0, &unk_1DC524070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC2DFC38();
  OUTLINED_FUNCTION_14_18();
  sub_1DC5176AC();
  OUTLINED_FUNCTION_192();

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1DC44CBA8()
{
  v1 = OUTLINED_FUNCTION_22_19();
  v3 = sub_1DC44C274(v1, v2);
  if (v4)
  {
    v5 = v3;
    sub_1DC44C274(6581861, 0xE300000000000000);
    if (v6)
    {
      MEMORY[0x1E1296160](2108704, 0xE300000000000000);
      v7 = OUTLINED_FUNCTION_36();
      MEMORY[0x1E1296160](v7);

      return v5;
    }
  }

  v9 = sub_1DC44C274(29793, 0xE200000000000000);
  if (v10)
  {
    return v9;
  }

  v11 = *(v0 + 16);
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
    sub_1DC2DFC38();
    OUTLINED_FUNCTION_14_18();
    v8 = sub_1DC5176AC();

    return v8;
  }

  v49 = MEMORY[0x1E69E7CC0];
  sub_1DC2DF6FC(0, v12, 0);
  v47 = v49;
  result = sub_1DC3743F8(v11);
  v16 = result;
  v17 = 0;
  v18 = v11 + 64;
  v42 = v14;
  v43 = v12;
  v41 = v11 + 72;
  v44 = v11 + 64;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v11 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v18 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_29;
    }

    if (*(v11 + 36) != v14)
    {
      goto LABEL_30;
    }

    v46 = v14;
    v45 = v15;
    v20 = *(v11 + 56);
    v21 = (*(v11 + 48) + 16 * v16);
    v22 = v11;
    v23 = *v21;
    v24 = v21[1];
    v25 = (v20 + 16 * v16);
    v26 = *v25;
    v27 = v25[1];
    v48 = v23;
    swift_bridgeObjectRetain_n();

    MEMORY[0x1E1296160](32, 0xE100000000000000);
    MEMORY[0x1E1296160](v26, v27);

    v28 = v47;
    v30 = *(v47 + 16);
    v29 = *(v47 + 24);
    if (v30 >= v29 >> 1)
    {
      v40 = OUTLINED_FUNCTION_26(v29);
      result = sub_1DC2DF6FC(v40, v30 + 1, 1);
      v28 = v47;
    }

    *(v28 + 16) = v30 + 1;
    v31 = v28 + 16 * v30;
    *(v31 + 32) = v48;
    *(v31 + 40) = v24;
    v32 = 1 << *(v22 + 32);
    if (v16 >= v32)
    {
      goto LABEL_31;
    }

    v11 = v22;
    v18 = v44;
    v33 = *(v44 + 8 * v19);
    if ((v33 & (1 << v16)) == 0)
    {
      goto LABEL_32;
    }

    v47 = v28;
    if (*(v11 + 36) != v46)
    {
      goto LABEL_33;
    }

    v34 = v33 & (-2 << (v16 & 0x3F));
    if (v34)
    {
      v32 = __clz(__rbit64(v34)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v35 = v19 << 6;
      v36 = v19 + 1;
      v37 = (v41 + 8 * v19);
      while (v36 < (v32 + 63) >> 6)
      {
        v39 = *v37++;
        v38 = v39;
        v35 += 64;
        ++v36;
        if (v39)
        {
          result = sub_1DC3EA158(v16, v46, v45 & 1);
          v32 = __clz(__rbit64(v38)) + v35;
          goto LABEL_25;
        }
      }

      result = sub_1DC3EA158(v16, v46, v45 & 1);
    }

LABEL_25:
    v15 = 0;
    ++v17;
    v16 = v32;
    v14 = v42;
    if (v17 == v43)
    {
      goto LABEL_26;
    }
  }

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
  return result;
}

uint64_t sub_1DC44CF1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v2, 32, 7);
}

void *sub_1DC44CF6C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DFA8, &qword_1DC52EC80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DFB0, &unk_1DC52EC88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC44D0A4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_1DC44D120(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_1DC44CF6C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DC44D188(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DC30D6D8(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_1DC44D2E8(v7, a2);
  *a1 = v4;
}

void *sub_1DC44D22C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1DC44D0A4(*(a1 + 16), 0);
  v4 = sub_1DC44E2A8(&v6, v3 + 4, v1, a1);

  sub_1DC30D8A4();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DC44D2E8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1DC51822C();
  if (result >= v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4)
      {

        sub_1DC44D424(0, v4, 1, a1);
      }
    }
  }

  else
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1DC517A4C();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_1DC44D550(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC44D424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;

    v7 = (v6 + 16 * v4);
    v8 = a1 - v4;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      v10 = *v9;
      v11 = v9[1];
      v12 = v8;
      v18 = v7;
      do
      {
        v13 = *(v7 - 2);
        v14 = *(v7 - 1);

        LOBYTE(v13) = sub_1DC44B790(v10, v11, v13, v14);

        if ((v13 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {

          __break(1u);
          return result;
        }

        v10 = *v7;
        v11 = v7[1];
        *v7 = *(v7 - 1);
        *(v7 - 1) = v11;
        *(v7 - 2) = v10;
        v7 -= 2;
      }

      while (!__CFADD__(v12++, 1));
      ++v4;
      v7 = v18 + 2;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1DC44D550(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  swift_retain_n();
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v119 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v104 = (v8 + 16);
      v105 = *(v8 + 16);
      for (i = v8; ; v8 = i)
      {
        if (v105 < 2)
        {
        }

        v106 = *a3;
        if (!*a3)
        {
          goto LABEL_132;
        }

        v107 = (v8 + 16 * v105);
        v108 = *v107;
        v8 = v104;
        v109 = &v104[2 * v105];
        v110 = v109[1];
        v111 = (v106 + 16 * *v107);
        v126 = (v106 + 16 * *v109);
        v112 = (v106 + 16 * v110);

        sub_1DC44DCB0(v111, v126, v112, v119);
        if (v129)
        {
          break;
        }

        if (v110 < v108)
        {
          goto LABEL_120;
        }

        if (v105 - 2 >= *v104)
        {
          goto LABEL_121;
        }

        *v107 = v108;
        v107[1] = v110;
        v113 = *v104 - v105;
        if (*v104 < v105)
        {
          goto LABEL_122;
        }

        v105 = *v104 - 1;
        memmove(v109, v109 + 2, 16 * v113);
        *v104 = v105;
      }
    }

LABEL_129:
    v8 = sub_1DC30D6B0(v8);
    goto LABEL_94;
  }

  v115 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v120 = v8;
    v11 = (*a3 + 16 * v10);
    v12 = v7;
    v13 = v7 + 1;
    v14 = *v11;
    v15 = v11[1];
    v16 = (*a3 + 16 * v7);
    v17 = 16 * v7;
    v18 = *v16;
    v19 = v16[1];

    v8 = sub_1DC44B790(v14, v15, v18, v19);
    v10 = v13;

    v20 = v16 + 3;
    v116 = v12;
    v21 = v12 + 2;
    do
    {
      v22 = v21;
      v23 = v10 + 1;
      if (v23 >= v6)
      {
        v10 = v6;
        if (v8)
        {
          goto LABEL_8;
        }

LABEL_20:
        v8 = v120;
        v9 = v116;
        goto LABEL_22;
      }

      v25 = *v20;
      v24 = v20[1];
      v26 = v23;
      v27 = v20 + 2;
      v28 = v20[2];
      v29 = *(v20 - 1);

      v30 = sub_1DC44B790(v24, v28, v29, v25);
      v31 = v6;
      v32 = v30 & 1;
      v10 = v26;

      v21 = v22 + 1;
      v20 = v27;
      v33 = (v8 & 1) == v32;
      v6 = v31;
    }

    while (v33);
    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v9 = v116;
    if (v10 < v116)
    {
      goto LABEL_126;
    }

    if (v116 >= v10)
    {
      v8 = v120;
    }

    else
    {
      v34 = v6 >= v22 ? v22 : v6;
      v35 = 16 * v34;
      v36 = v10;
      v37 = v116;
      v8 = v120;
      do
      {
        if (v37 != --v36)
        {
          v38 = *a3;
          if (!*a3)
          {
            goto LABEL_133;
          }

          v39 = (v38 + v17);
          v40 = v38 + v35;
          v41 = *v39;
          v42 = v39[1];
          *v39 = *(v40 - 16);
          *(v40 - 16) = v41;
          *(v40 - 8) = v42;
        }

        ++v37;
        v35 -= 16;
        v17 += 16;
      }

      while (v37 < v36);
    }

LABEL_22:
    v43 = a3[1];
    if (v10 < v43)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_125;
      }

      if (v10 - v9 < v115)
      {
        break;
      }
    }

LABEL_38:
    if (v10 < v9)
    {
      goto LABEL_124;
    }

    v125 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1DC30B0C0(0, *(v8 + 16) + 1, 1, v8);
    }

    v57 = *(v8 + 16);
    v56 = *(v8 + 24);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      v8 = sub_1DC30B0C0((v56 > 1), v57 + 1, 1, v8);
    }

    *(v8 + 16) = v58;
    v59 = (v8 + 32);
    v60 = (v8 + 32 + 16 * v57);
    *v60 = v9;
    v60[1] = v125;
    v122 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    if (v57)
    {
      v119 = (v8 + 32);
      while (1)
      {
        v61 = v58 - 1;
        v62 = &v59[2 * v58 - 2];
        v63 = (v8 + 16 * v58);
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v64 = *(v8 + 32);
          v65 = *(v8 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_59:
          if (v67)
          {
            goto LABEL_111;
          }

          v79 = *v63;
          v78 = v63[1];
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_114;
          }

          v83 = v62[1];
          v84 = v83 - *v62;
          if (__OFSUB__(v83, *v62))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v81, v84))
          {
            goto LABEL_119;
          }

          if (v81 + v84 >= v66)
          {
            if (v66 < v84)
            {
              v61 = v58 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v58 < 2)
        {
          goto LABEL_113;
        }

        v86 = *v63;
        v85 = v63[1];
        v74 = __OFSUB__(v85, v86);
        v81 = v85 - v86;
        v82 = v74;
LABEL_74:
        if (v82)
        {
          goto LABEL_116;
        }

        v88 = *v62;
        v87 = v62[1];
        v74 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v74)
        {
          goto LABEL_118;
        }

        if (v89 < v81)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v61 - 1 >= v58)
        {
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
          goto LABEL_128;
        }

        v93 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v94 = v8;
        v95 = &v59[2 * v61 - 2];
        v96 = *v95;
        v97 = v61;
        v98 = &v59[2 * v61];
        v99 = v98[1];
        v100 = (v93 + 16 * *v95);
        v101 = (v93 + 16 * *v98);
        v102 = (v93 + 16 * v99);
        v8 = a5;

        sub_1DC44DCB0(v100, v101, v102, v122);
        if (v129)
        {
        }

        if (v99 < v96)
        {
          goto LABEL_106;
        }

        v8 = v94;
        v103 = *(v94 + 16);
        if (v97 > v103)
        {
          goto LABEL_107;
        }

        *v95 = v96;
        v95[1] = v99;
        if (v97 >= v103)
        {
          goto LABEL_108;
        }

        v58 = v103 - 1;
        memmove(v98, v98 + 2, 16 * (v103 - 1 - v97));
        *(v94 + 16) = v103 - 1;
        v59 = v119;
        if (v103 <= 2)
        {
          goto LABEL_88;
        }
      }

      v68 = &v59[2 * v58];
      v69 = *(v68 - 8);
      v70 = *(v68 - 7);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_109;
      }

      v73 = *(v68 - 6);
      v72 = *(v68 - 5);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_110;
      }

      v75 = v63[1];
      v76 = v75 - *v63;
      if (__OFSUB__(v75, *v63))
      {
        goto LABEL_112;
      }

      v74 = __OFADD__(v66, v76);
      v77 = v66 + v76;
      if (v74)
      {
        goto LABEL_115;
      }

      if (v77 >= v71)
      {
        v91 = *v62;
        v90 = v62[1];
        v74 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v74)
        {
          goto LABEL_123;
        }

        if (v66 < v92)
        {
          v61 = v58 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v6 = a3[1];
    v7 = v125;
    if (v125 >= v6)
    {
      goto LABEL_92;
    }
  }

  v44 = (v9 + v115);
  if (__OFADD__(v9, v115))
  {
    goto LABEL_127;
  }

  if (v44 >= v43)
  {
    v44 = a3[1];
  }

  if (v44 < v9)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v10 == v44)
  {
    goto LABEL_38;
  }

  v119 = v44;
  v121 = v8;
  v45 = *a3;
  v46 = *a3 + 16 * v10;
  v117 = v9;
  v47 = v9 - v10;
LABEL_31:
  v124 = v10;
  v48 = (v45 + 16 * v10);
  v49 = *v48;
  v50 = v48[1];
  v51 = v47;
  v52 = v46;
  while (1)
  {
    v53 = *(v52 - 2);
    v54 = *(v52 - 1);

    LOBYTE(v53) = sub_1DC44B790(v49, v50, v53, v54);

    if ((v53 & 1) == 0)
    {
LABEL_36:
      v10 = v124 + 1;
      v46 += 16;
      --v47;
      if ((v124 + 1) == v119)
      {
        v10 = v119;
        v8 = v121;
        v9 = v117;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v45)
    {
      break;
    }

    v49 = *v52;
    v50 = v52[1];
    *v52 = *(v52 - 1);
    *(v52 - 1) = v50;
    *(v52 - 2) = v49;
    v52 -= 2;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_36;
    }
  }

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
  return result;
}

uint64_t sub_1DC44DCB0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;

  if (v8 < v9)
  {
    if (a4 != v7 || &v7[2 * v8] <= a4)
    {
      memmove(a4, v7, 16 * v8);
    }

    for (i = &a4[2 * v8]; ; i = v13)
    {
      if (a4 >= i || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_37;
      }

      v13 = i;
      v14 = v5;
      v15 = *v6;
      v16 = v6[1];
      v17 = v6;
      v18 = *a4;
      v19 = a4[1];

      LOBYTE(v18) = sub_1DC44B790(v15, v16, v18, v19);

      if ((v18 & 1) == 0)
      {
        break;
      }

      v20 = v17;
      v6 = v17 + 2;
      if (v7 != v17)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 2;
      v5 = v14;
    }

    v20 = a4;
    v21 = v7 == a4;
    a4 += 2;
    v6 = v17;
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v20;
    goto LABEL_17;
  }

  if (a4 != v6 || &v6[2 * v9] <= a4)
  {
    memmove(a4, v6, 16 * v9);
  }

  i = &a4[2 * v9];
  v37 = a4;
LABEL_24:
  v23 = v6 - 2;
  v24 = v5 - 2;
  while (i > a4 && v6 > v7)
  {
    v26 = v7;
    v27 = v24;
    v28 = *(i - 2);
    v29 = *(i - 1);
    v30 = v6;
    v31 = *(v6 - 2);
    v32 = *(v6 - 1);

    LOBYTE(v31) = sub_1DC44B790(v28, v29, v31, v32);

    v5 = v27;
    v33 = v27 + 2;
    if (v31)
    {
      v6 = v23;
      v7 = v26;
      a4 = v37;
      if (v33 != v30)
      {
        *v5 = *v23;
        v6 = v23;
      }

      goto LABEL_24;
    }

    if (i != v33)
    {
      *v27 = *(i - 1);
    }

    v24 = v27 - 2;
    i -= 2;
    v7 = v26;
    a4 = v37;
    v6 = v30;
  }

LABEL_37:
  v34 = (i - a4) / 16;
  if (v6 != a4 || v6 >= &a4[2 * v34])
  {
    memmove(v6, a4, 16 * v34);
  }

  return 1;
}

uint64_t sub_1DC44DF14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DC5182FC();
  sub_1DC51769C();
  v7 = sub_1DC51833C();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DC51825C() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DC2E68C0();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_1DC44E03C(v9);
  *v2 = v19;
  return v16;
}

unint64_t sub_1DC44E03C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DC517EBC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1DC5182FC();

        sub_1DC51769C();
        v15 = sub_1DC51833C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1DC44E2A8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC44E404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DFA0, &qword_1DC52EC78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC44E474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DFA0, &qword_1DC52EC78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC44E500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NLRouterSiriXParse(0);
  v6 = OUTLINED_FUNCTION_0_65(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1DC516F5C();
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v15 = sub_1DC2BE518();
  v16 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.NLParseRule", 26, 2, v15, v16 & 1, v14);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if (sub_1DC344A0C())
  {
    v17 = *(a1 + *(type metadata accessor for NLRouterServiceRequest(0) + 28));
    if (v17)
    {
      v18 = 0;
      v19 = *(v17 + 16);
      while (v19 != v18)
      {
        v20 = type metadata accessor for NLRouterActionCandidate(0);
        sub_1DC44E82C(v17 + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)) + *(*(v20 - 8) + 72) * v18++ + *(v20 + 20), v10);
        if (swift_getEnumCaseMultiPayload() <= 1)
        {
          sub_1DC44E890(v10);
          goto LABEL_8;
        }
      }
    }

    v25 = *MEMORY[0x1E69D02F8];
    v26 = sub_1DC5157EC();
    OUTLINED_FUNCTION_0_65(v26);
    (*(v27 + 104))(a2, v25, v2);
    v23 = a2;
    v24 = 0;
    v22 = v2;
  }

  else
  {
    sub_1DC517B9C();
    v21 = sub_1DC2BE518();
    sub_1DC516F0C();

LABEL_8:
    v22 = sub_1DC5157EC();
    v23 = a2;
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
  v28 = sub_1DC2BE518();
  sub_1DC2B8848();

  return (*(v11 + 8))(v14, v31);
}

uint64_t sub_1DC44E82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterSiriXParse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC44E890(uint64_t a1)
{
  v2 = type metadata accessor for NLRouterSiriXParse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CDMClient.setup(with:serviceStateDirectory:)()
{
  OUTLINED_FUNCTION_1_0();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_1DC510C8C();
  v1[22] = v5;
  OUTLINED_FUNCTION_52(v5);
  v1[23] = v6;
  v8 = *(v7 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v9 = sub_1DC5108BC();
  v1[26] = v9;
  OUTLINED_FUNCTION_52(v9);
  v1[27] = v10;
  v12 = *(v11 + 64) + 15;
  v1[28] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v14 = sub_1DC5109BC();
  v1[30] = v14;
  OUTLINED_FUNCTION_52(v14);
  v1[31] = v15;
  v17 = *(v16 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1DC44EAAC()
{
  if (v0[20])
  {
    v1 = v0[32];
    v35 = v0[31];
    v32 = v0[33];
    v33 = v0[30];
    v2 = v0[28];
    v4 = v0[26];
    v3 = v0[27];
    v30 = v0[19];
    __swift_storeEnumTagSinglePayload(v0[29], 1, 1, v33);
    v5 = *MEMORY[0x1E6968F70];
    v6 = *(v3 + 104);
    v6(v2, v5, v4);

    sub_1DC51097C();
    v6(v2, v5, v4);
    sub_1DC2A32B0();
    sub_1DC51098C();
    (*(v3 + 8))(v2, v4);
    v7 = *(v35 + 8);
    v7(v1, v33);
    v8 = [objc_opt_self() defaultManager];
    sub_1DC51094C();
    v9 = sub_1DC5176FC();

    LODWORD(v1) = [v8 fileExistsAtPath_];

    if (v1)
    {
      v10 = v0[33];
      v11 = sub_1DC5176DC();
      v14 = v13;
      v15 = v11;
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v7(v0[33], v0[30]);
    v31 = v0[20];
    v12 = v14;
  }

  else
  {
    v31 = 0;
    v15 = 0;
    v12 = 0;
  }

  v16 = v0[24];
  v17 = v0[25];
  v18 = v0[22];
  v19 = v0[23];
  v34 = v0[21];
  v20 = v0[18];
  v21 = v0[19];
  sub_1DC51380C();
  sub_1DC510B7C();
  (*(v19 + 16))(v16, v17, v18);
  v22 = [objc_opt_self() graphNameForSsuInference];
  v23 = sub_1DC51772C();
  v25 = v24;

  v26 = objc_allocWithZone(CDMClientSetup);

  v27 = sub_1DC44F9E8(v16, v15, v12, v23, v25, 0, 0, 0, v21, v31);
  v0[34] = v27;
  v0[2] = v0;
  v0[3] = sub_1DC44EED4;
  v28 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE70, &qword_1DC523630);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DC30DF70;
  v0[13] = &block_descriptor_14;
  v0[14] = v28;
  [v34 setup:v27 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DC44EED4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = *(v3 + 48);
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DC44EFD4()
{
  OUTLINED_FUNCTION_36_11();
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);

  (*(v8 + 8))(v5, v7);

  OUTLINED_FUNCTION_2_2();

  return v9();
}

uint64_t sub_1DC44F0A0()
{
  OUTLINED_FUNCTION_36_11();
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  swift_willThrow();

  (*(v5 + 8))(v3, v4);
  v6 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v10 = v0[28];
  v9 = v0[29];
  v12 = v0[24];
  v11 = v0[25];

  OUTLINED_FUNCTION_2_2();

  return v13();
}

uint64_t CDMClient.processSsuInferenceRequest(with:)()
{
  OUTLINED_FUNCTION_1_0();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  v4 = *(*(sub_1DC51670C() - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC44F1FC()
{
  v1 = v0[30];
  sub_1DC51381C();
  sub_1DC44FB90(&qword_1ECC7DFB8, MEMORY[0x1E69D1070]);
  v2 = sub_1DC51678C();
  v0[33] = 0;
  v6 = v2;
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x1E69D11D8]);
  v10 = sub_1DC339190(v6, v8);
  v0[34] = v10;
  if (v10)
  {
    v11 = v10;
    v12 = v0[31];
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = sub_1DC44F4D4;
    v13 = swift_continuation_init();
    v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DFC0, &qword_1DC52ED28);
    v0[20] = MEMORY[0x1E69E9820];
    v0[21] = 1107296256;
    v0[22] = sub_1DC30E680;
    v0[23] = &block_descriptor_4;
    v0[24] = v13;
    [v12 processSsuInferenceRequest:v11 completionHandler:v0 + 20];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v14 = sub_1DC51772C();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE0, &qword_1DC525830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DC522F20;
    v18 = *MEMORY[0x1E696A578];
    *(inited + 32) = sub_1DC51772C();
    *(inited + 40) = v19;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD000000000000049;
    *(inited + 56) = 0x80000001DC548920;
    v20 = sub_1DC51764C();
    v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1DC312744(v14, v16, 1, v20);
    swift_willThrow();
    v3 = v0[32];

    OUTLINED_FUNCTION_2_2();

    return v4();
  }
}

uint64_t sub_1DC44F4D4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = *(v3 + 48);
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DC44F5D4()
{
  v1 = *(v0 + 224);
  result = sub_1DC30EB38(v1);
  if (v3 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 256);
    v4 = *(v0 + 264);
    v6 = *(v0 + 232);
    sub_1DC51382C();
    sub_1DC5166FC();
    sub_1DC44FB90(&qword_1ECC7DFC8, MEMORY[0x1E69D1080]);
    sub_1DC51677C();
    v7 = *(v0 + 272);
    if (v4)
    {

      v8 = *(v0 + 256);
    }

    else
    {
      v10 = *(v0 + 256);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  return result;
}

uint64_t sub_1DC44F734()
{
  v1 = v0[34];
  v2 = v0[35];
  swift_willThrow();

  v3 = v0[35];
  v4 = v0[32];

  OUTLINED_FUNCTION_2_2();

  return v5();
}

uint64_t sub_1DC44F7A8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DC44FE90;

  return CDMClient.setup(with:serviceStateDirectory:)();
}

uint64_t sub_1DC44F858()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DC44F904;

  return CDMClient.processSsuInferenceRequest(with:)();
}

uint64_t sub_1DC44F904()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_38();
  *v4 = v3;

  OUTLINED_FUNCTION_2_2();

  return v5();
}

id sub_1DC44F9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v17 = sub_1DC510BFC();
  if (a3)
  {
    v18 = sub_1DC5176FC();

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v18 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = sub_1DC5176FC();

  if (a7)
  {
LABEL_4:
    v20 = sub_1DC5176FC();

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  if (!a8)
  {
    v21 = 0;
    if (a10)
    {
      goto LABEL_10;
    }

LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  sub_1DC44FE44();
  v21 = sub_1DC517A0C();

  if (!a10)
  {
    goto LABEL_12;
  }

LABEL_10:
  v22 = sub_1DC5176FC();

LABEL_13:
  v23 = [v11 initWithLocaleIdentifier:v17 sandboxId:v18 activeServiceGraph:v19 assetDirPath:v20 overrideSiriVocabSpans:v21 serviceStateDirectory:v22];

  v24 = sub_1DC510C8C();
  (*(*(v24 - 8) + 8))(a1, v24);
  return v23;
}

uint64_t sub_1DC44FB90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of CDMSsuInferenceClient.setup(with:serviceStateDirectory:)()
{
  OUTLINED_FUNCTION_36_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(v1 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 16) = v13;
  *v13 = v0;
  v13[1] = sub_1DC44FE90;

  return v15(v10, v8, v6, v4, v2);
}

uint64_t dispatch thunk of CDMSsuInferenceClient.processSsuInferenceRequest(with:)()
{
  OUTLINED_FUNCTION_36_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v1 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 16) = v11;
  *v11 = v0;
  v11[1] = sub_1DC44F904;

  return v13(v8, v6, v4, v2);
}

unint64_t sub_1DC44FE44()
{
  result = qword_1ECC7CE58;
  if (!qword_1ECC7CE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC7CE58);
  }

  return result;
}

uint64_t sub_1DC44FE94()
{
  v0 = sub_1DC51808C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DC44FEE0(char a1)
{
  result = 0x454E4F4850;
  switch(a1)
  {
    case 1:
      result = 4473168;
      break;
    case 2:
      result = 0x4E414D4553524F48;
      break;
    case 3:
      result = 1398097242;
      break;
    case 4:
      result = 0x4F454D4143;
      break;
    case 5:
      result = 0x4843544157;
      break;
    case 6:
      result = 5390659;
      break;
    case 7:
      result = 0x544952414752414DLL;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC44FFC0(unsigned __int8 a1, char a2)
{
  v2 = 0x454E4F4850;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x454E4F4850;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 4473168;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x4E414D4553524F48;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1398097242;
      break;
    case 4:
      v5 = 0x4F454D4143;
      break;
    case 5:
      v5 = 0x4843544157;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 5390659;
      break;
    case 7:
      v5 = 0x544952414752414DLL;
      v3 = 0xE900000000000041;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 4473168;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x4E414D4553524F48;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1398097242;
      break;
    case 4:
      v2 = 0x4F454D4143;
      break;
    case 5:
      v2 = 0x4843544157;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 5390659;
      break;
    case 7:
      v2 = 0x544952414752414DLL;
      v6 = 0xE900000000000041;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC4501B8(char a1)
{
  sub_1DC5182FC();
  sub_1DC44FEE0(a1);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC450224()
{
  sub_1DC51769C();
}

uint64_t sub_1DC450334(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC44FEE0(a2);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC450394@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DC44FE94();
  *a2 = result;
  return result;
}

uint64_t sub_1DC4503C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC44FEE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1DC4503F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = sub_1DC5176FC();
  v7 = MGCopyAnswerWithError();

  if (v7)
  {
    *(a3 + 24) = swift_getObjectType();
    *a3 = v7;
  }

  else
  {
    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DC522F10;
    v9 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v10 = sub_1DC2C0FA4();
    *(v8 + 64) = v10;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;

    v11 = sub_1DC51823C();
    *(v8 + 96) = v9;
    *(v8 + 104) = v10;
    *(v8 + 72) = v11;
    *(v8 + 80) = v12;
    sub_1DC297814();
    v13 = sub_1DC517D6C();
    sub_1DC516F0C();

    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DC45064C(uint64_t a1, uint64_t a2)
{
  sub_1DC4503F0(a1, a2, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_1DC31405C(v4);
  }

  return 0;
}

unint64_t sub_1DC4506BC()
{
  result = qword_1ECC7DFD0;
  if (!qword_1ECC7DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DFD0);
  }

  return result;
}

unint64_t sub_1DC450714()
{
  result = qword_1ECC7DFD8;
  if (!qword_1ECC7DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DFD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DC450810(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DC450898(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC450970(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1DC4509F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DC450AD0()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8FA60);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8FA60);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x80000001DC540200;
  v2[4] = 0xD000000000000016;
  v2[5] = 0x80000001DC52EEE0;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1DC450BAC(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DC51721C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a1, v10);
  if (qword_1ECC8F1C0 != -1)
  {
    OUTLINED_FUNCTION_0_66();
  }

  v18 = __swift_project_value_buffer(v2, qword_1ECC8FA60);
  (*(v5 + 16))(v9, v18, v2);
  v19 = sub_1DC303854(v17, v9, &unk_1F57FF320);
  (*(v13 + 8))(a1, v10);
  return v19;
}

uint64_t sub_1DC450D60@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC8F1C0 != -1)
  {
    OUTLINED_FUNCTION_0_66();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8FA60);
  OUTLINED_FUNCTION_2_5();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC450DEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC450BAC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC450E24()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
}

uint64_t sub_1DC450E5C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t sub_1DC450EF4()
{
  if (v0[10])
  {
    v1 = v0[9];
    v2 = v0[10];
  }

  else
  {
    v3 = v0[7];
    v4 = v0[8];
  }

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1DC450F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9)
{
  v16 = swift_allocObject();
  sub_1DC450FE0(v16, a2, a3, a4, a5, a6, a7, a8, a9);
  return v16;
}

uint64_t *sub_1DC450FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9)
{

  sub_1DC515A1C();
  v9[13] = sub_1DC51764C();
  sub_1DC28FB9C(a8, (v9 + 2));
  v9[7] = a5;
  v9[8] = a6;
  v9[9] = a3;
  v9[10] = a4;
  v9[11] = a7;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v9 + 2);
  sub_1DC388F88(a8, (v9 + 2));
  swift_endAccess();
  v9[12] = a9;
  return v9;
}

void sub_1DC4510BC()
{
  OUTLINED_FUNCTION_33();
  v91 = v0;
  v2 = v1;
  v3 = sub_1DC510B6C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v96 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v93 = v9 - v8;
  OUTLINED_FUNCTION_12();
  v10 = sub_1DC51373C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v94 = v12;
  v95 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v92 = v16 - v15;
  OUTLINED_FUNCTION_12();
  v99 = sub_1DC51621C();
  v17 = OUTLINED_FUNCTION_0(v99);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = sub_1DC516F7C();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v90 = (v31 - v32);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_1();
  v89 = v34;
  OUTLINED_FUNCTION_22();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v86 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v86 - v39;
  v41 = sub_1DC28D414();
  v100 = v28;
  v42 = *(v28 + 16);
  v97 = v41;
  v98 = v42;
  (v42)(v40);
  v43 = v2;
  v44 = sub_1DC516F6C();
  v45 = sub_1DC517B9C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_63();
    v87 = v38;
    v47 = v46;
    v48 = swift_slowAlloc();
    v88 = v25;
    v49 = v3;
    v50 = v48;
    *v47 = 138412290;
    *(v47 + 4) = v43;
    *v48 = v43;
    v51 = v43;
    _os_log_impl(&dword_1DC287000, v44, v45, "NLRequestProcessor received message: %@", v47, 0xCu);
    sub_1DC2BE530(v50, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v3 = v49;
    v25 = v88;
    OUTLINED_FUNCTION_66();
    v38 = v87;
    OUTLINED_FUNCTION_66();
  }

  v52 = *(v100 + 8);
  v52(v40, v25);
  sub_1DC5159EC();
  v53 = (*(v19 + 88))(v24, v99);
  if (v53 == *MEMORY[0x1E69D0848])
  {
    if (sub_1DC5159FC())
    {

      v54 = v92;
      v55 = v91 + 16;
      (*(*v91 + 224))(MEMORY[0x1E69E7CC0], v43);
      swift_beginAccess();
      sub_1DC28FB9C(v55, v101);
      v56 = v102;
      v57 = v103;
      __swift_project_boxed_opaque_existential_1(v101, v102);
      v58 = v93;
      sub_1DC515D7C();
      v59 = sub_1DC515D6C();
      (*(v57 + 56))(v58, v59, v60, 0, 0, v54, v56, v57);

      (*(v96 + 8))(v58, v3);
      (*(v94 + 8))(v54, v95);
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
LABEL_22:
      OUTLINED_FUNCTION_34();
      return;
    }

    v98(v38, v97, v25);
    v80 = sub_1DC516F6C();
    v81 = sub_1DC517BAC();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = v38;
      v83 = OUTLINED_FUNCTION_35_8();
      *v83 = 0;
      _os_log_impl(&dword_1DC287000, v80, v81, "Unexpected DictationAsrResultMessage content. resultType is partial but speechTokens is nil", v83, 2u);
      OUTLINED_FUNCTION_66();

      v84 = v82;
    }

    else
    {

      v84 = v38;
    }

LABEL_21:
    v52(v84, v25);
    goto LABEL_22;
  }

  if (v53 != *MEMORY[0x1E69D0838])
  {
    if (v53 != *MEMORY[0x1E69D0840])
    {
      goto LABEL_24;
    }

    v74 = v90;
    v98(v90, v97, v25);
    v75 = sub_1DC516F6C();
    v76 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v76))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      v79 = "Recieved final result candidate do not process as of now";
LABEL_18:
      OUTLINED_FUNCTION_20_2(&dword_1DC287000, v77, v78, v79);
      OUTLINED_FUNCTION_66();
    }

LABEL_19:

    v84 = v74;
    goto LABEL_21;
  }

  v61 = sub_1DC515A0C();
  if (!v61)
  {
    v74 = v89;
    v98(v89, v97, v25);
    v75 = sub_1DC516F6C();
    v85 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v85))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      v79 = "Unexpected DictationAsrResultMessage content. resultType is final but speechPackage is final";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v62 = v61;
  v63 = [v61 recognition];
  if (v63)
  {
    v64 = v63;
    AFSpeechRecognition.toNLXAsrHypotheses()();
    v66 = v65;

    v67 = v92;
    v68 = v91;
    (*(*v91 + 224))(v66, v43);

    OUTLINED_FUNCTION_48();
    sub_1DC28FB9C(v68 + 16, v101);
    v69 = v102;
    v70 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v71 = v93;
    sub_1DC515D7C();
    v72 = sub_1DC515D6C();
    (*(v70 + 56))(v71, v72, v73, 0, 0, v67, v69, v70);

    (*(v96 + 8))(v71, v3);
    (*(v94 + 8))(v67, v95);
    goto LABEL_10;
  }

  __break(1u);
LABEL_24:
  sub_1DC51824C();
  __break(1u);
}

void sub_1DC45180C()
{
  OUTLINED_FUNCTION_33();
  v112 = v0;
  v3 = v2;
  v4 = sub_1DC516F7C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  v103 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v107 = v16;
  OUTLINED_FUNCTION_12();
  v110 = sub_1DC51172C();
  v17 = OUTLINED_FUNCTION_0(v110);
  v108 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  OUTLINED_FUNCTION_23_0();
  v26 = sub_1DC51170C();
  v27 = OUTLINED_FUNCTION_0(v26);
  v109 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_62();
  v106 = v35;
  OUTLINED_FUNCTION_12();
  v114 = sub_1DC5137CC();
  v36 = OUTLINED_FUNCTION_0(v114);
  v111 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_8();
  v102 = v40 - v41;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23_1();
  v101 = v43;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_62();
  v45 = MEMORY[0x1E69E7D40];
  v113 = v46;
  v47 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))();
  v48 = (*((*v45 & *v3) + 0x60))(v47);
  if (!v48)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_19_1();
    v74(v12);
    v75 = sub_1DC516F6C();
    v76 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v76))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_20_2(&dword_1DC287000, v77, v78, "CDMNluResponse is corrupted as objcProto is nil");
      OUTLINED_FUNCTION_66();
    }

    (*(v7 + 8))(v12, v4);
    goto LABEL_25;
  }

  v100 = v7;
  v105 = v48;
  v49 = [v105 requestId];
  if (v49)
  {
    v50 = sub_1DC453B28(v49);
    if (v51)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0;
    }

    if (v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = 0xE000000000000000;
    }

    OUTLINED_FUNCTION_12_0();
    v55 = (*(v54 + 152))();
    v56 = sub_1DC361440(v52, v53, v55);

    if (v56)
    {
      v104 = v56;
      sub_1DC51374C();
      sub_1DC51171C();
      (*(v108 + 8))(v23, v110);
      Siri_Nlu_External_ResponseStatus.StatusCode.toOrchestrationStatusCode()(v1);
      v57 = *(v109 + 8);
      v57(v33, v26);
      if (__swift_getEnumTagSinglePayload(v1, 1, v26) == 1)
      {
        sub_1DC2BE530(v1, &qword_1ECC7D420, &unk_1DC528440);
        v58 = sub_1DC28D414();
        (*(v100 + 16))(v107, v58, v4);
        v59 = *(v111 + 16);
        v60 = v114;
        v59(v101, v113, v114);
        v59(v102, v113, v114);
        v61 = sub_1DC516F6C();
        v62 = sub_1DC517BAC();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *v63 = 136315394;
          sub_1DC51374C();
          sub_1DC51777C();
          v64 = *(v111 + 8);
          v64(v101, v114);
          v65 = OUTLINED_FUNCTION_43();
          v68 = sub_1DC291244(v65, v66, v67);

          *(v63 + 4) = v68;
          *(v63 + 12) = 2080;
          sub_1DC5138DC();
          v115[3] = v114;
          v115[4] = sub_1DC453B98(&qword_1EDAC8020, MEMORY[0x1E69D1030]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v115);
          v59(boxed_opaque_existential_1, v102, v114);
          sub_1DC5138CC();
          v64(v102, v114);
          __swift_destroy_boxed_opaque_existential_1Tm(v115);
          v70 = OUTLINED_FUNCTION_43();
          v73 = sub_1DC291244(v70, v71, v72);

          *(v63 + 14) = v73;
          _os_log_impl(&dword_1DC287000, v61, v62, "Received error responseStatus: %s nlResponse: %s", v63, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_66();
          v60 = v114;
          OUTLINED_FUNCTION_66();
        }

        else
        {

          v64 = *(v111 + 8);
          v64(v102, v114);
          v64(v101, v114);
        }

        (*(v100 + 8))(v107, v4);
        v96 = v104;
        v97 = sub_1DC515D6C();
        v99 = v98;

        sub_1DC4537F4(0, v97, v99);

        v64(v113, v60);
        goto LABEL_26;
      }

      (*(v109 + 32))(v106, v1, v26);
      v91 = v105;
      sub_1DC4532FC();

      (*(v109 + 104))(v33, *MEMORY[0x1E69D0A98], v26);
      sub_1DC453B98(&qword_1ECC7BE10, MEMORY[0x1E69D0AA8]);
      OUTLINED_FUNCTION_55();
      sub_1DC5179EC();
      OUTLINED_FUNCTION_55();
      sub_1DC5179EC();
      v57(v33, v26);
      v92 = v56;
      v93 = sub_1DC515D6C();
      v95 = v94;

      sub_1DC4537F4(v115[0] == v116, v93, v95);

      v57(v106, v26);
LABEL_25:
      (*(v111 + 8))(v113, v114);
LABEL_26:
      OUTLINED_FUNCTION_34();
      return;
    }

    sub_1DC4537F4(0, *(v112 + 56), *(v112 + 64));
    v79 = sub_1DC28D414();
    v80 = v4;
    (*(v100 + 16))(v103, v79, v4);
    v81 = v105;
    v82 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_116();
    if (!os_log_type_enabled(v82, v83))
    {

LABEL_24:
      (*(v100 + 8))(v103, v80);
      goto LABEL_25;
    }

    v84 = OUTLINED_FUNCTION_63();
    v85 = swift_slowAlloc();
    v115[0] = v85;
    *v84 = 136315138;
    v86 = [v81 requestId];

    if (v86)
    {
      v87 = sub_1DC453B28(v86);
      if (v88)
      {
        v89 = v88;
      }

      else
      {
        v87 = 7104878;
        v89 = 0xE300000000000000;
      }

      v90 = sub_1DC291244(v87, v89, v115);

      *(v84 + 4) = v90;
      _os_log_impl(&dword_1DC287000, v82, v26, "asrResult could not be found for nluRequestId: %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
      goto LABEL_24;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1DC452270()
{
  OUTLINED_FUNCTION_33();
  v57 = v0;
  v55 = v2;
  v56 = sub_1DC51110C();
  v3 = OUTLINED_FUNCTION_0(v56);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();
  v8 = sub_1DC516F7C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v52 = (v14 - v15);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_1();
  v53 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = sub_1DC28D414();
  v54 = *(v11 + 16);
  v54(v20, v21, v8);
  v22 = sub_1DC516F6C();
  sub_1DC517B9C();
  OUTLINED_FUNCTION_116();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_35_8();
    *v24 = 0;
    _os_log_impl(&dword_1DC287000, v22, v8, "CDMSetup failed while trying to send NLURequest for dictation", v24, 2u);
    OUTLINED_FUNCTION_66();
  }

  v25 = *(v11 + 8);
  v58 = v11 + 8;
  v25(v20, v8);
  sub_1DC51370C();
  v26 = sub_1DC5110DC();
  v28 = v27;
  v29 = (*(v5 + 8))(v1, v56);
  v30 = (*(*v57 + 152))(v29);
  v31 = sub_1DC361440(v26, v28, v30);

  if (v31)
  {
    v56 = v25;
    v32 = v53;
    v54(v53, v21, v8);
    v33 = v32;

    v34 = sub_1DC516F6C();
    v35 = v8;
    v36 = sub_1DC517B9C();

    if (os_log_type_enabled(v34, v36))
    {
      v37 = OUTLINED_FUNCTION_63();
      v38 = swift_slowAlloc();
      v59 = v38;
      *v37 = 136315138;
      v39 = sub_1DC291244(v26, v28, &v59);

      *(v37 + 4) = v39;
      OUTLINED_FUNCTION_20_21();
      _os_log_impl(v40, v41, v42, v43, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    else
    {
    }

    v56(v33, v35);
    sub_1DC4532FC();
  }

  else
  {
    v44 = v52;
    v54(v52, v21, v8);

    v45 = sub_1DC516F6C();
    v46 = sub_1DC517B9C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v25;
      v48 = v8;
      v49 = OUTLINED_FUNCTION_63();
      v50 = swift_slowAlloc();
      v59 = v50;
      *v49 = 136315138;
      v51 = sub_1DC291244(v26, v28, &v59);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_1DC287000, v45, v46, "asrResult could not be found for nluRequestId: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      v47(v44, v48);
    }

    else
    {

      v25(v44, v8);
    }
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC452724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DC516F7C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_12_0();
  v16 = (*(v15 + 152))();
  v17 = sub_1DC361440(a2, a3, v16);

  if (v17)
  {
    v18 = *(v3 + 96);
    OUTLINED_FUNCTION_12_0();
    v20 = (*(v19 + 176))();
    v22 = v21;
    v23 = v17;
    v24 = sub_1DC515D6C();
    v26 = v25;

    (*(*v18 + 136))(v20, v22, v24, v26, 0, 0, 0);
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_19_1();
    v28(v14);
    v29 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_116();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_35_8();
      *v31 = 0;
      OUTLINED_FUNCTION_20_21();
      _os_log_impl(v32, v33, v34, v35, v31, 2u);
      OUTLINED_FUNCTION_66();
    }

    return (*(v9 + 8))(v14, v6);
  }
}

uint64_t sub_1DC452964@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v83 = a1;
  v87 = a2;
  v89 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v89);
  v84 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v88 = v9 - v8;
  OUTLINED_FUNCTION_12();
  v10 = sub_1DC51373C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v85 = v12;
  v86 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = sub_1DC51110C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v92 = v20;
  v93 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_62();
  v91 = v27;
  OUTLINED_FUNCTION_12();
  v28 = sub_1DC510AFC();
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();
  v90 = sub_1DC51119C();
  v34 = OUTLINED_FUNCTION_0(v90);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_8();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v80 - v43;
  sub_1DC51118C();

  sub_1DC51111C();
  sub_1DC510AEC();
  sub_1DC510AAC();
  v46 = v45;
  result = (*(v31 + 8))(v3, v28);
  v48 = v46 * 1000.0;
  if (COERCE__INT64(fabs(v46 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v48 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v48 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_1DC51114C();
  v49 = v2[8];
  v50 = v91;
  v81 = v2[7];
  v80 = v49;
  v51 = v83;
  sub_1DC45302C();
  sub_1DC51372C();
  (*(v92 + 16))(v25, v50, v93);
  sub_1DC51371C();
  v82 = v36;
  (*(v36 + 16))(v41, v44, v90);
  sub_1DC5136EC();
  v52 = sub_1DC5110DC();
  v54 = v53;
  v55 = *(*v2 + 168);
  v56 = v51;
  v57 = v55(v95);
  v59 = v58;
  v60 = *v58;
  swift_isUniquelyReferenced_nonNull_native();
  v94 = *v59;
  sub_1DC4539EC(v56, v52, v54);
  *v59 = v94;

  v57(v95, 0);
  sub_1DC28D414();
  v61 = v84;
  OUTLINED_FUNCTION_19_1();
  v63 = v88;
  v62 = v89;
  v64(v88);

  v65 = sub_1DC516F6C();
  v66 = sub_1DC517B9C();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v96[0] = v83;
    *v67 = 136315394;
    *(v67 + 4) = sub_1DC291244(v81, v80, v96);
    *(v67 + 12) = 2080;
    sub_1DC5138DC();
    OUTLINED_FUNCTION_48();
    v68 = v86;
    v95[3] = v86;
    v95[4] = sub_1DC453B98(&qword_1EDAC8030, MEMORY[0x1E69D1020]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v95);
    v70 = v85;
    (*(v85 + 16))(boxed_opaque_existential_1, v17, v68);
    v71 = sub_1DC5138CC();
    v72 = v61;
    v74 = v73;
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    v75 = sub_1DC291244(v71, v74, v96);

    *(v67 + 14) = v75;
    _os_log_impl(&dword_1DC287000, v65, v66, "Created dictation nluRequest for requestId=%s nluRequest = %s", v67, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();

    (*(v72 + 8))(v88, v89);
    (*(v92 + 8))(v91, v93);
    v76 = OUTLINED_FUNCTION_9_31();
    v77(v76);
  }

  else
  {

    (*(v61 + 8))(v63, v62);
    (*(v92 + 8))(v91, v93);
    v78 = OUTLINED_FUNCTION_9_31();
    v79(v78);
    v70 = v85;
    v68 = v86;
  }

  OUTLINED_FUNCTION_48();
  (*(v70 + 16))(v87, v17, v68);
  return (*(v70 + 8))(v17, v68);
}

void sub_1DC45302C()
{
  OUTLINED_FUNCTION_33();
  v40 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D350, &unk_1DC52EF90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v37 - v7;
  OUTLINED_FUNCTION_12();
  v41 = sub_1DC510F3C();
  v8 = OUTLINED_FUNCTION_0(v41);
  v38 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v42 = v13 - v12;
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC510B6C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  sub_1DC5110FC();
  v23 = sub_1DC3BB894();
  v25 = *v23;
  v24 = v23[1];
  v43 = v4;
  v44 = v2;

  MEMORY[0x1E1296160](v25, v24);
  v26 = v43;
  v27 = v44;
  sub_1DC515DAC();
  v28 = sub_1DC510B1C();
  v30 = v29;
  v31 = *(v17 + 8);
  v31(v22, v14);
  v43 = v26;
  v44 = v27;
  v32 = v39;

  MEMORY[0x1E1296160](v28, v30);

  sub_1DC5110EC();
  v33 = sub_1DC3BB8A0();
  v34 = *v33;
  v35 = *(v33 + 1);

  sub_1DC51108C();
  sub_1DC510B5C();
  sub_1DC5138EC();
  v31(v22, v14);
  v36 = v41;
  if (__swift_getEnumTagSinglePayload(v32, 1, v41) == 1)
  {
    sub_1DC510F2C();
    if (__swift_getEnumTagSinglePayload(v32, 1, v36) != 1)
    {
      sub_1DC2BE530(v32, &unk_1ECC7D350, &unk_1DC52EF90);
    }
  }

  else
  {
    (*(v38 + 32))(v42, v32, v36);
  }

  sub_1DC5110AC();
  OUTLINED_FUNCTION_34();
}

void sub_1DC4532FC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DC516F7C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v69 = v6;
  v70 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v11 = v9 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - v16;
  v18 = sub_1DC51621C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = [objc_allocWithZone(MEMORY[0x1E698D120]) init];
  v28 = v27;
  if (v3)
  {
    [v27 setNluResponse_];
  }

  sub_1DC5159EC();
  v29 = (*(v21 + 88))(v26, v18);
  if (v29 == *MEMORY[0x1E69D0848])
  {
    if (!sub_1DC5159FC())
    {
      v49 = sub_1DC28D414();
      v51 = v69;
      v50 = v70;
      (*(v69 + 16))(v17, v49, v70);
      v52 = sub_1DC516F6C();
      sub_1DC517BAC();
      OUTLINED_FUNCTION_116();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_35_8();
        *v54 = 0;
        OUTLINED_FUNCTION_20_21();
        _os_log_impl(v55, v56, v57, v58, v54, 2u);
        OUTLINED_FUNCTION_66();
      }

      else
      {
      }

      (*(v51 + 8))(v17, v50);
      goto LABEL_28;
    }

    v30 = v0[11];
    if ([v30 respondsToSelector_])
    {
      v31 = v0[7];
      v32 = v0[8];
      sub_1DC453C04();
      v33 = v28;
      v34 = sub_1DC517A0C();
      OUTLINED_FUNCTION_55();
      v35 = sub_1DC5176FC();
      [v30 didRecognizeTokens:v34 nluResult:v33 sessionUUID:v35];

LABEL_11:
LABEL_28:
      OUTLINED_FUNCTION_34();
      return;
    }

    goto LABEL_25;
  }

  if (v29 == *MEMORY[0x1E69D0838])
  {
    v36 = sub_1DC515A0C();
    if (!v36)
    {
      sub_1DC28D414();
      v60 = v69;
      v59 = v70;
      OUTLINED_FUNCTION_19_1();
      v61(v15);
      v62 = sub_1DC516F6C();
      sub_1DC517BAC();
      OUTLINED_FUNCTION_116();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = OUTLINED_FUNCTION_35_8();
        *v64 = 0;
        OUTLINED_FUNCTION_20_21();
        _os_log_impl(v65, v66, v67, v68, v64, 2u);
        OUTLINED_FUNCTION_66();
      }

      else
      {
      }

      (*(v60 + 8))(v15, v59);
      goto LABEL_28;
    }

    v37 = v36;
    v38 = v1[11];
    if ([v38 respondsToSelector_])
    {
      v39 = v1[7];
      v40 = v1[8];
      v41 = v28;
      v42 = v37;
      OUTLINED_FUNCTION_55();
      v35 = sub_1DC5176FC();
      [v38 didRecognizePackage:v42 nluResult:v41 sessionUUID:v35];

      goto LABEL_11;
    }

LABEL_25:
    goto LABEL_28;
  }

  if (v29 == *MEMORY[0x1E69D0840])
  {
    sub_1DC28D414();
    v44 = v69;
    v43 = v70;
    OUTLINED_FUNCTION_19_1();
    v45(v11);
    v46 = sub_1DC516F6C();
    v47 = sub_1DC517BAC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_35_8();
      *v48 = 0;
      _os_log_impl(&dword_1DC287000, v46, v47, "Do not handle resultType finalResultCandidate", v48, 2u);
      OUTLINED_FUNCTION_66();
    }

    else
    {
    }

    (*(v44 + 8))(v11, v43);
    goto LABEL_28;
  }

  sub_1DC51824C();
  __break(1u);
}

uint64_t sub_1DC4537F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 96);
  OUTLINED_FUNCTION_12_0();
  v9 = (*(v8 + 176))();
  (*(*v7 + 128))(0, a1, v9, v10, a2, a3, 0, 0);
}

uint64_t *sub_1DC4538B0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[11];
  swift_unknownObjectRelease();
  v4 = v0[12];

  v5 = v0[13];

  return v0;
}

uint64_t sub_1DC4538F8()
{
  sub_1DC4538B0();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1DC45392C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_12_0();
  return (*(v2 + 208))();
}

uint64_t sub_1DC45396C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_12_0();
  return (*(v2 + 216))();
}

uint64_t sub_1DC4539AC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_12_0();
  return (*(v2 + 200))();
}

void sub_1DC4539EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DFE8, "\nE");
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1DC2AEB04(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1DC51829C();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_1DC361B0C(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_1DC453B28(void *a1)
{
  v2 = [a1 idA];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DC51772C();

  return v3;
}

uint64_t sub_1DC453B98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DC453C04()
{
  result = qword_1ECC7B9C0;
  if (!qword_1ECC7B9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC7B9C0);
  }

  return result;
}

uint64_t sub_1DC453C48@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NLRouterAssetsUtils();
  result = sub_1DC2BA4FC();
  a1[3] = v2;
  a1[4] = &off_1F57F6ED0;
  *a1 = result;
  return result;
}

uint64_t sub_1DC453CF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v162 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DFF0, &unk_1DC52EFA0);
  v7 = OUTLINED_FUNCTION_10(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v159 = &v144 - v10;
  v156 = sub_1DC510E4C();
  v11 = OUTLINED_FUNCTION_0(v156);
  v154 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v151 = (v15 - v16);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  v150 = &v144 - v18;
  v19 = sub_1DC51776C();
  v20 = OUTLINED_FUNCTION_10(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v155 = (v24 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v26 = OUTLINED_FUNCTION_10(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = OUTLINED_FUNCTION_17_19();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  v157 = (v35 - v36);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v37);
  v158 = &v144 - v38;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v144 - v40;
  v42 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v44 = a2[3];
  v43 = a2[4];
  v160 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v44);
  v45 = v44;
  v46 = v29;
  (*(v43 + 24))(a1, v45, v43);
  if (__swift_getEnumTagSinglePayload(v3, 1, v29) == 1)
  {
    sub_1DC2AAF50(v3, &qword_1ECC7C950, &unk_1DC523CF0);
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v47 = sub_1DC296DBC();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();

    __swift_destroy_boxed_opaque_existential_1Tm(v162);
    v48 = sub_1DC510C8C();
    OUTLINED_FUNCTION_0_2(v48);
    (*(v49 + 8))(a1);
LABEL_3:
    v50 = v160;
LABEL_43:
    type metadata accessor for MorphunTokenizer();
    swift_deallocPartialClassInstance();
    v119 = 0;
    goto LABEL_44;
  }

  v152 = v42;
  v153 = a1;
  v51 = v162;
  (*(v32 + 32))(v41, v3, v29);
  v53 = sub_1DC5108CC() == 1701409396 && v52 == 0xE400000000000000;
  v54 = v32;
  if (v53)
  {
  }

  else
  {
    v55 = sub_1DC51825C();

    if ((v55 & 1) == 0)
    {
      sub_1DC517B8C();
      v158 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v56 = sub_1DC296DBC();
      OUTLINED_FUNCTION_62_1();
      sub_1DC516F0C();

      sub_1DC51094C();
      v57 = sub_1DC5176FC();

      v58 = v152;
      v59 = [v152 contentsAtPath_];

      if (v59)
      {
        v60 = sub_1DC510A0C();
        v62 = v61;

        sub_1DC51775C();
        OUTLINED_FUNCTION_11_24();
        v63 = sub_1DC51773C();
        if (v64)
        {
          v65 = v63;
          v66 = v64;
          v155 = v41;
          v67 = v46;
          v68 = v60;
          v69 = [objc_allocWithZone(OVMarisaTrie) init];
          *&v164 = v65;
          *(&v164 + 1) = v66;
          *(swift_allocObject() + 16) = v69;
          sub_1DC2A32B0();
          v70 = v69;
          sub_1DC517DFC();

          [v70 buildKeyset];
          sub_1DC2AD740(v68, v62);
          v71 = v161;
          goto LABEL_15;
        }

        v132 = OUTLINED_FUNCTION_11_24();
        sub_1DC2AD740(v132, v133);
      }

      sub_1DC517BAC();
      v134 = OUTLINED_FUNCTION_14_19();
      OUTLINED_FUNCTION_62_1();
      sub_1DC516F0C();

      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      v135 = sub_1DC510C8C();
      OUTLINED_FUNCTION_0_2(v135);
      (*(v136 + 8))(v153);
      v137 = *(v32 + 8);
      v138 = OUTLINED_FUNCTION_41();
      v139(v138);
      goto LABEL_3;
    }
  }

  sub_1DC517B8C();
  v72 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v73 = sub_1DC296DBC();
  OUTLINED_FUNCTION_62_1();
  sub_1DC516F0C();

  sub_1DC298C74(0, &qword_1ECC7B9D0, off_1E862BC58);
  v66 = v158;
  (*(v32 + 16))(v158, v41, v46);
  v74 = sub_1DC2BACF4(v66);
  v75 = v46;
  v71 = v161;
  if (!v74)
  {
    sub_1DC517BAC();
    v113 = sub_1DC296DBC();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();

    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    v114 = sub_1DC510C8C();
    OUTLINED_FUNCTION_0_2(v114);
    (*(v115 + 8))(v153);
    (*(v32 + 8))(v41, v46);
    v50 = v160;
    goto LABEL_43;
  }

  v70 = v74;
  v158 = v72;
  v155 = v41;
  v67 = v75;
LABEL_15:
  *(v71 + 24) = v70;
  v76 = sub_1DC517B8C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v77 = sub_1DC296DBC();
  v78 = v157;
  v79 = v67;
  (*(v54 + 16))(v157, v155, v67);
  if (os_log_type_enabled(v77, v76))
  {

    v66 = OUTLINED_FUNCTION_140();
    v80 = OUTLINED_FUNCTION_82();
    *&v164 = v80;
    *v66 = 134218242;
    *(v66 + 4) = [*(v71 + 24) count];

    *(v66 + 12) = 2080;
    sub_1DC2BA1C4(&unk_1EDAC8068, MEMORY[0x1E6968FB0]);
    v81 = sub_1DC51823C();
    v83 = v82;
    v149 = v54;
    v84 = *(v54 + 8);
    v84(v78, v67);
    v85 = sub_1DC291244(v81, v83, &v164);

    *(v66 + 14) = v85;
    _os_log_impl(&dword_1DC287000, v77, v76, "Loaded %ld stop words from '%s'", v66, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    v79 = v67;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();

    v86 = v84;
    v54 = v149;
  }

  else
  {

    v86 = *(v54 + 8);
    v86(v78, v67);
  }

  v87 = v159;
  v50 = v160;
  v88 = v153;
  v89 = sub_1DC2B6444(v153, v160);
  v90 = v155;
  if (!v89)
  {
LABEL_41:
    sub_1DC517BAC();
    v116 = OUTLINED_FUNCTION_14_19();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();

LABEL_42:
    __swift_destroy_boxed_opaque_existential_1Tm(v162);
    v117 = sub_1DC510C8C();
    OUTLINED_FUNCTION_0_2(v117);
    (*(v118 + 8))(v88);
    v86(v90, v79);

    goto LABEL_43;
  }

  sub_1DC2BADA0(0x72657A796C616E41, 0xE800000000000000, v89, &v164);

  if (!v165)
  {
    sub_1DC2AAF50(&v164, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DFF8, &unk_1DC52EFB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_41;
  }

  v157 = v86;
  v148 = v79;
  v149 = v54;
  v91 = v163;
  v92 = v163 + 64;
  v93 = 1 << *(v163 + 32);
  v94 = -1;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  v95 = v94 & *(v163 + 64);
  v96 = (v93 + 63) >> 6;
  v147 = (v154 + 32);

  v98 = 0;
  v99 = MEMORY[0x1E69E7CC0];
  while (v95)
  {
LABEL_29:
    v101 = __clz(__rbit64(v95));
    v95 &= v95 - 1;
    v102 = v101 | (v98 << 6);
    if (*(*(v91 + 56) + v102) == 1)
    {
      v103 = (*(v91 + 48) + 16 * v102);
      v104 = *v103;
      v66 = v103[1];

      v105 = v104;
      v87 = v159;
      sub_1DC2BAE04(v105, v66, v159);
      if (__swift_getEnumTagSinglePayload(v87, 1, v156) == 1)
      {
        goto LABEL_37;
      }

      v106 = *v147;
      v146 = v99;
      v107 = v150;
      v108 = v87;
      v109 = v156;
      v106(v150, v108, v156);
      v110 = v107;
      v99 = v146;
      v145 = v106;
      v106(v151, v110, v109);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = sub_1DC2BB260(0, *(v99 + 16) + 1, 1, v99);
      }

      v112 = *(v99 + 16);
      v111 = *(v99 + 24);
      v66 = v112 + 1;
      if (v112 >= v111 >> 1)
      {
        v99 = sub_1DC2BB260(v111 > 1, v112 + 1, 1, v99);
      }

      *(v99 + 16) = v66;
      result = v145(v99 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v112, v151, v156);
      v87 = v159;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v87, 1, 1, v156);
LABEL_37:
      result = sub_1DC2AAF50(v87, &qword_1ECC7DFF0, &unk_1DC52EFA0);
    }
  }

  while (1)
  {
    v100 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      __break(1u);
      return result;
    }

    if (v100 >= v96)
    {
      break;
    }

    v95 = *(v92 + 8 * v100);
    ++v98;
    if (v95)
    {
      v98 = v100;
      goto LABEL_29;
    }
  }

  v88 = v153;
  if ((sub_1DC454ED8(v153, v162) & 1) == 0)
  {

    sub_1DC517BAC();
    v140 = OUTLINED_FUNCTION_14_19();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();

    v50 = v160;
    v71 = v161;
    v79 = v148;
    v90 = v155;
    v86 = v157;
    goto LABEL_42;
  }

  sub_1DC517B9C();
  v120 = OUTLINED_FUNCTION_14_19();
  v121 = os_log_type_enabled(v120, v66);
  v119 = v161;
  if (v121)
  {
    v122 = swift_slowAlloc();
    v123 = OUTLINED_FUNCTION_82();
    *&v164 = v123;
    *v122 = 136315138;
    v124 = MEMORY[0x1E12962D0](v99, v156);
    v126 = sub_1DC291244(v124, v125, &v164);

    *(v122 + 4) = v126;
    _os_log_impl(&dword_1DC287000, v120, v66, "Initializing Morphun Analyzer with %s", v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_58();
  }

  v127 = v148;
  v128 = sub_1DC510E8C();
  v129 = *(v128 + 48);
  v130 = *(v128 + 52);
  swift_allocObject();
  sub_1DC510E7C();
  v131 = v155;
  v50 = v160;
  v141 = sub_1DC510E6C();

  __swift_destroy_boxed_opaque_existential_1Tm(v162);
  v142 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0_2(v142);
  (*(v143 + 8))(v88);
  v157(v131, v127);
  *(v119 + 16) = v141;
LABEL_44:
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  return v119;
}

char *sub_1DC454C04(uint64_t a1)
{
  v2 = sub_1DC510ECC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7E000, &unk_1DC52F098);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  v29 = a1;
  sub_1DC510E2C();
  v11 = MEMORY[0x1E69B2880];
  sub_1DC2BA1C4(&qword_1ECC7BE48, MEMORY[0x1E69B2880]);

  sub_1DC5179BC();
  sub_1DC2BA1C4(&qword_1ECC7BE40, v11);
  v12 = (v3 + 32);
  v13 = (v3 + 8);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DC517DCC();
    if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
    {
      break;
    }

    (*v12)(v6, v10, v2);
    if (sub_1DC510EBC())
    {
      v15 = sub_1DC510EAC();
      v27 = v16;
      (*v13)(v6, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1DC2ACCD4(0, *(v14 + 2) + 1, 1, v14);
      }

      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v26 = v19 + 1;
        v23 = sub_1DC2ACCD4((v18 > 1), v19 + 1, 1, v14);
        v20 = v26;
        v14 = v23;
      }

      *(v14 + 2) = v20;
      v21 = &v14[16 * v19];
      v22 = v27;
      *(v21 + 4) = v28;
      *(v21 + 5) = v22;
    }

    else
    {
      (*v13)(v6, v2);
    }
  }

  return v14;
}

uint64_t sub_1DC454ED8(uint64_t a1, void *a2)
{
  v4 = sub_1DC510C8C();
  v83 = OUTLINED_FUNCTION_0(v4);
  v84 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_8();
  v10 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v78 - v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v78 - v15;
  v17 = sub_1DC5109BC();
  v18 = OUTLINED_FUNCTION_0(v17);
  v81 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  v27 = *(v26 + 16);
  v85 = a1;
  v28 = v27(a1, v25, v26);
  v30 = v29;
  v31 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    v32 = v28;
    v33 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v34 = sub_1DC296DBC();
    v35 = v84;
    v36 = v82;
    v37 = v83;
    (*(v84 + 16))(v82, v85, v83);
    if (os_log_type_enabled(v34, v33))
    {
      v38 = OUTLINED_FUNCTION_140();
      v86 = swift_slowAlloc();
      *v38 = 136315394;
      OUTLINED_FUNCTION_0_67();
      sub_1DC2BA1C4(v39, v40);
      v41 = sub_1DC51823C();
      v42 = v37;
      v44 = v43;
      (*(v35 + 8))(v36, v42);
      v45 = sub_1DC291244(v41, v44, &v86);

      *(v38 + 4) = v45;
      OUTLINED_FUNCTION_10_30();
      v47 = sub_1DC291244(v32, v30, v46);

      *(v38 + 14) = v47;
      _os_log_impl(&dword_1DC287000, v34, v33, "Morphun assets already registered for locale %s at %s", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_58();
    }

    else
    {

      (*(v35 + 8))(v36, v37);
    }
  }

  else
  {
    v82 = v17;
    v79 = v16;
    v80 = v10;
    v49 = v83;
    v48 = v84;

    v50 = a2[3];
    v51 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v50);
    (*(v51 + 8))(v85, v50, v51);
    v53 = sub_1DC51094C();
    v55 = v54;
    (*(v81 + 8))(v24, v82);
    v56 = a2[3];
    v57 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v56);
    v58 = *(v57 + 24);
    v81 = v53;
    v82 = v55;
    v58(v85, v53, v55, v56, v57);
    v59 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v60 = sub_1DC296DBC();
    v61 = v48;
    (*(v48 + 16))(v79, v85, v49);
    if (os_log_type_enabled(v60, v59))
    {
      v63 = OUTLINED_FUNCTION_140();
      v86 = swift_slowAlloc();
      *v63 = 136315394;
      OUTLINED_FUNCTION_0_67();
      sub_1DC2BA1C4(v64, v65);
      v66 = sub_1DC51823C();
      v68 = v67;
      v69 = *(v61 + 8);
      v70 = OUTLINED_FUNCTION_11_24();
      v71(v70);
      v72 = sub_1DC291244(v66, v68, &v86);

      *(v63 + 4) = v72;
      OUTLINED_FUNCTION_10_30();
      v74 = sub_1DC291244(v81, v82, v73);

      *(v63 + 14) = v74;
      _os_log_impl(&dword_1DC287000, v60, v59, "Morphun assets newly registered for locale %s at %s", v63, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_58();
    }

    else
    {

      v75 = *(v48 + 8);
      v76 = OUTLINED_FUNCTION_11_24();
      v77(v76);
    }
  }

  return 1;
}

uint64_t sub_1DC45581C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (!*(v3 + 16))
  {
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v6 = sub_1DC296DBC();
    v7 = MEMORY[0x1E69E7CC0];
    sub_1DC516F0C();

    return v7;
  }

  v8 = sub_1DC510E3C();
  result = sub_1DC454C04(v8);
  v10 = result;
  if ((a3 & 1) == 0)
  {

    return v10;
  }

  v11 = 0;
  v12 = *(result + 16);
  v13 = result + 40;
  v7 = MEMORY[0x1E69E7CC0];
  v23 = result + 40;
LABEL_6:
  for (i = (v13 + 16 * v11); ; i += 2)
  {
    if (v12 == v11)
    {

      return v7;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v16 = *(i - 1);
    v15 = *i;
    v17 = *(v4 + 24);

    OUTLINED_FUNCTION_41();
    v18 = sub_1DC5176FC();
    LOBYTE(v17) = [v17 lookupRow:v18 outIdx:0];

    if ((v17 & 1) == 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DC2DF6FC(0, *(v7 + 16) + 1, 1);
      }

      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        result = sub_1DC2DF6FC((v19 > 1), v20 + 1, 1);
        v21 = v20 + 1;
      }

      ++v11;
      *(v7 + 16) = v21;
      v22 = v7 + 16 * v20;
      *(v22 + 32) = v16;
      *(v22 + 40) = v15;
      v13 = v23;
      goto LABEL_6;
    }

    ++v11;
  }

  __break(1u);
  return result;
}

void sub_1DC455B20()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1DC510BFC();
  v7[0] = 0;
  v2 = [v0 getAssetPathForLocale:v1 withError:v7];

  v3 = v7[0];
  if (v2)
  {
    sub_1DC51093C();
    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    sub_1DC51085C();

    swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DC455CA8()
{
  v1 = *(v0 + 16);
  v2 = sub_1DC5176FC();
  [v1 addRow_];
}

uint64_t sub_1DC455D00(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC510E4C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC510E4C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC455DF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7E028, &qword_1DC52F1E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC52F0B0;
  *(v0 + 32) = 3200005;
  *(v0 + 40) = sub_1DC456360(&unk_1F57FF4B0);
  *(v0 + 48) = 3200006;
  *(v0 + 56) = sub_1DC456360(&unk_1F57FF4D8);
  *(v0 + 64) = 3200007;
  *(v0 + 72) = sub_1DC456360(&unk_1F57FF500);
  *(v0 + 80) = 3200008;
  *(v0 + 88) = sub_1DC456360(&unk_1F57FF528);
  *(v0 + 96) = 3200009;
  *(v0 + 104) = sub_1DC456360(&unk_1F57FF550);
  *(v0 + 112) = 3400006;
  *(v0 + 120) = sub_1DC456360(&unk_1F57FF578);
  *(v0 + 128) = 3400007;
  *(v0 + 136) = sub_1DC456360(&unk_1F57FF5A0);
  *(v0 + 144) = 3400008;
  *(v0 + 152) = sub_1DC456360(&unk_1F57FF5C8);
  *(v0 + 160) = 3400009;
  *(v0 + 168) = sub_1DC456360(&unk_1F57FF5F0);
  *(v0 + 176) = 3400010;
  *(v0 + 184) = sub_1DC456360(&unk_1F57FF618);
  *(v0 + 192) = 3400011;
  *(v0 + 200) = sub_1DC456360(&unk_1F57FF640);
  *(v0 + 208) = 3500000;
  *(v0 + 216) = sub_1DC456360(&unk_1F57FF668);
  *(v0 + 224) = 3500001;
  *(v0 + 232) = sub_1DC456360(&unk_1F57FF690);
  *(v0 + 240) = 3500010;
  *(v0 + 248) = sub_1DC456360(&unk_1F57FF6B8);
  *(v0 + 256) = 3500012;
  *(v0 + 264) = sub_1DC456360(&unk_1F57FF6E0);
  *(v0 + 272) = 3500013;
  *(v0 + 280) = sub_1DC456360(&unk_1F57FF708);
  *(v0 + 288) = 3500014;
  *(v0 + 296) = sub_1DC456360(&unk_1F57FF730);
  *(v0 + 304) = 3500015;
  *(v0 + 312) = sub_1DC456360(&unk_1F57FF758);
  *(v0 + 320) = 3500016;
  *(v0 + 328) = sub_1DC456360(&unk_1F57FF780);
  *(v0 + 336) = 4000000;
  *(v0 + 344) = sub_1DC456360(&unk_1F57FF7A8);
  *(v0 + 352) = 4000001;
  *(v0 + 360) = sub_1DC456360(&unk_1F57FF7D0);
  *(v0 + 368) = 4000016;
  result = sub_1DC456360(&unk_1F57FF7F8);
  *(v0 + 376) = result;
  qword_1EDAC9608 = v0;
  return result;
}

uint64_t sub_1DC456024(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    v5 = *(a2 + 40);
    sub_1DC5182FC();
    MEMORY[0x1E1296BB0](v4);
    v6 = sub_1DC51833C();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + v8) != v4);
  }

  return v2;
}

unint64_t sub_1DC4560D4()
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DC2DF6FC(0, 8, 0);
  v1 = 0;
  v2 = *(*v0 + 96);
  do
  {
    v3 = byte_1F57FF488[v1 + 32];
    v16 = sub_1DC51777C();
    v17 = v4;
    MEMORY[0x1E1296160](8250, 0xE200000000000000);
    v5 = v2(v3);
    v6 = (v5 & 1) == 0;
    if (v5)
    {
      v7 = 0x64656C62616E65;
    }

    else
    {
      v7 = 0x64656C6261736964;
    }

    if (v6)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    MEMORY[0x1E1296160](v7, v8);

    v10 = *(v18 + 16);
    v9 = *(v18 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1DC2DF6FC((v9 > 1), v10 + 1, 1);
    }

    ++v1;
    *(v18 + 16) = v10 + 1;
    v11 = v18 + 16 * v10;
    *(v11 + 32) = v16;
    *(v11 + 40) = v17;
  }

  while (v1 != 8);
  sub_1DC517F4C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC327B3C(&qword_1ECC7B9F0, &qword_1ECC7C130, &unk_1DC5240F0);
  v12 = sub_1DC5176AC();
  v14 = v13;

  MEMORY[0x1E1296160](v12, v14);

  MEMORY[0x1E1296160](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_1DC456360(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7E020, &qword_1DC52F1E0);
  result = sub_1DC517F0C();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + v5++);
    v8 = *(v3 + 40);
    sub_1DC5182FC();
    MEMORY[0x1E1296BB0](v7);
    result = sub_1DC51833C();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + v10) == v7)
      {
        goto LABEL_11;
      }

      result = v10 + 1;
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(*(v3 + 48) + v10) = v7;
    v14 = *(v3 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v16;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1DC4564AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v19 = result;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v21 = *(*(a3 + 48) + v16);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v19 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1DC2A4FA8(v19, a2, v20, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DC456600(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    v8 = sub_1DC4564AC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_1DC456694()
{
  result = qword_1ECC7BCA0;
  if (!qword_1ECC7BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BCA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLRouterModelFeature(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC456808()
{
  sub_1DC297814();
  v0 = sub_1DC398E2C();
  v1 = *v0;
  v2 = v0[1];

  result = sub_1DC517D7C();
  qword_1EDAC9618 = result;
  return result;
}

id sub_1DC456868()
{
  if (_MergedGlobals_21 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAC9618;

  return v0;
}

uint64_t sub_1DC4568C4()
{
  v0 = sub_1DC33F23C(&qword_1ECC7E048, &qword_1DC52F248, &qword_1ECC7E050, &qword_1DC52F258);
  OUTLINED_FUNCTION_71_9(v0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DC522F20;
  result = sub_1DC51393C();
  *(v1 + 32) = result;
  qword_1ECC8FA78 = v1;
  return result;
}

uint64_t sub_1DC456938()
{
  v0 = sub_1DC33F23C(&qword_1ECC7C1B8, &unk_1DC522F90, &qword_1ECC7C1C0, &unk_1DC5248E0);
  OUTLINED_FUNCTION_71_9(v0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DC522F10;
  *(v1 + 32) = sub_1DC5147CC();
  result = sub_1DC5147DC();
  *(v1 + 40) = result;
  qword_1ECC8F570 = v1;
  return result;
}

void sub_1DC4569B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v352 = v23;
  v343 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  v31 = OUTLINED_FUNCTION_10(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25();
  v315 = v40;
  v41 = OUTLINED_FUNCTION_12();
  v316 = type metadata accessor for QDContextState(v41);
  v42 = OUTLINED_FUNCTION_35(v316);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  v312 = v45;
  OUTLINED_FUNCTION_12();
  v331 = sub_1DC510F7C();
  v46 = OUTLINED_FUNCTION_0(v331);
  v339 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_62();
  v344 = v51;
  OUTLINED_FUNCTION_12();
  v329 = sub_1DC510FAC();
  v52 = OUTLINED_FUNCTION_0(v329);
  v336 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2_1();
  v328 = v56;
  OUTLINED_FUNCTION_12();
  v319 = sub_1DC5119DC();
  v57 = OUTLINED_FUNCTION_0(v319);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_1();
  v64 = v63 - v62;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_25();
  v337 = v69;
  v70 = OUTLINED_FUNCTION_12();
  v335 = type metadata accessor for NLRouterTurnContext(v70);
  v71 = OUTLINED_FUNCTION_35(v335);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_2_1();
  v334 = v74;
  OUTLINED_FUNCTION_12();
  v349 = sub_1DC5157EC();
  v75 = OUTLINED_FUNCTION_0(v349);
  v314 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_62();
  v348 = v82;
  OUTLINED_FUNCTION_12();
  v338 = sub_1DC51122C();
  v83 = OUTLINED_FUNCTION_0(v338);
  v345 = v84;
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_2_1();
  v347 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v89 = OUTLINED_FUNCTION_10(v88);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v298 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v96 = OUTLINED_FUNCTION_10(v95);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v99);
  v100 = OUTLINED_FUNCTION_63_12();
  v101 = type metadata accessor for NLRouterNLParseResponse(v100);
  v102 = OUTLINED_FUNCTION_35(v101);
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_2_1();
  v324 = v105;
  OUTLINED_FUNCTION_12();
  v106 = sub_1DC516F5C();
  v107 = OUTLINED_FUNCTION_0(v106);
  v341 = v108;
  v342 = v107;
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_1();
  v113 = v112 - v111;
  v114 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v115 = sub_1DC2BE518();
  v116 = OUTLINED_FUNCTION_130();
  v340 = v113;
  sub_1DC2A2ED0("HeuristicRules.OverridesShortcutRule", 36, 2, v115, v116 & 1, v113);

  v117 = v352;
  v346 = type metadata accessor for NLRouterServiceRequest(0);
  v118 = v346[8];
  OUTLINED_FUNCTION_33_19();
  sub_1DC28F358(v119, v120, v121, &unk_1DC5234A0);
  v122 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v94, 1, v122);
  if (v127)
  {
    sub_1DC28EB30(v94, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v101);
  }

  else
  {
    sub_1DC28F358(v94, v20, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_5_36();
    sub_1DC45BDFC(v94, v126);
    OUTLINED_FUNCTION_39(v20, 1, v101);
    if (!v127)
    {
      OUTLINED_FUNCTION_4_38();
      v136 = v324;
      sub_1DC45BE54(v20, v324);
      sub_1DC457EF8(v117, v137, v138, v139, v140, v141, v142, v143, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309);
      if (v144)
      {
        sub_1DC517B9C();
        v145 = sub_1DC2BE518();
        OUTLINED_FUNCTION_47_12();
        sub_1DC516F0C();

        OUTLINED_FUNCTION_0_69();
        sub_1DC45BDFC(v136, v146);
        goto LABEL_7;
      }

      v300 = v122;
      v301 = v118;
      v298 = v101;
      v299 = v114;
      v327 = *v136;
      v147 = v349;
      v148 = v337;
      v149 = v338;
      v150 = v347;
      v325 = *(v327 + 16);
      if (!v325)
      {
LABEL_70:
        OUTLINED_FUNCTION_0_69();
        OUTLINED_FUNCTION_55_14(v273, v274);
        OUTLINED_FUNCTION_19();
        v131 = v147;
        goto LABEL_8;
      }

      v151 = 0;
      v152 = *(v345 + 80);
      OUTLINED_FUNCTION_24();
      v323 = v327 + v153;
      v322 = v154 + 16;
      v321 = v154 + 8;
      v320 = (v314 + 16);
      v350 = v59 + 8;
      v351 = v59 + 16;
      v307 = v336 + 8;
      HIDWORD(v306) = *MEMORY[0x1E69D0988];
      v305 = v339 + 13;
      v304 = (v339 + 1);
      v309 = v314 + 88;
      HIDWORD(v308) = *MEMORY[0x1E69D02E0];
      v339 = (v314 + 8);
      v303 = v314 + 32;
      while (1)
      {
        if (v151 >= *(v327 + 16))
        {
          __break(1u);
          return;
        }

        (*(v345 + 16))(v150, v323 + *(v345 + 72) * v151, v149);
        sub_1DC458E94();
        if ((v155 & 1) == 0)
        {
          OUTLINED_FUNCTION_22_2();
          v161 = OUTLINED_FUNCTION_142_0();
          v162(v161);
          goto LABEL_69;
        }

        v156 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
        v157 = *v320;
        (*v320)(v348, &v156[v117], v147);
        v314 = v346[5];
        sub_1DC28F358(v117 + v314, v148, &qword_1ECC7BFD0, &unk_1DC522550);
        v158 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v158, v159, v335);
        if (v127)
        {
          sub_1DC28EB30(v148, &qword_1ECC7BFD0, &unk_1DC522550);
          v160 = v147;
        }

        else
        {
          v336 = v156;
          v163 = v148;
          v164 = v334;
          sub_1DC45BE54(v163, v334);
          v165 = 0;
          v166 = *(v164 + 16);
          v167 = *(v166 + 16);
          v168 = v319;
          while (1)
          {
            if (v167 == v165)
            {
              OUTLINED_FUNCTION_26_19();
              v160 = v349;
              v117 = v352;
              v150 = v347;
              v156 = v336;
              goto LABEL_28;
            }

            if (v165 >= *(v166 + 16))
            {
              __break(1u);
              goto LABEL_74;
            }

            v169 = *(v59 + 80);
            OUTLINED_FUNCTION_24();
            (*(v59 + 16))(v64, v166 + v170 + *(v59 + 72) * v165, v168);
            if (sub_1DC51191C())
            {
              break;
            }

            ++v165;
            v171 = sub_1DC51195C();
            v172 = OUTLINED_FUNCTION_59_10();
            v173(v172);
            if (v171)
            {
              goto LABEL_26;
            }
          }

          v174 = OUTLINED_FUNCTION_59_10();
          v175(v174);
LABEL_26:
          OUTLINED_FUNCTION_26_19();
          type metadata accessor for NLRouterBypassUtils();
          v117 = v352;
          v176 = sub_1DC308358(*(v352 + v346[6]));
          v160 = v349;
          v150 = v347;
          v156 = v336;
          if (v176)
          {
            OUTLINED_FUNCTION_34_18();
            sub_1DC510F8C();
            OUTLINED_FUNCTION_37(&v339);
            v177 = OUTLINED_FUNCTION_44_15();
            v178(v177);
            OUTLINED_FUNCTION_37(&v337);
            v179 = v330;
            v180 = v331;
            v181(v330, HIDWORD(v306), v331);
            OUTLINED_FUNCTION_6_30();
            sub_1DC45BEB0(&qword_1ECC7BE28, v182);
            OUTLINED_FUNCTION_54_17();
            v117 = v352;
            sub_1DC5179EC();
            v302 = v157;
            v183 = *v304;
            (*v304)(v179, v180);
            v184 = v180;
            v156 = v336;
            v183(v344, v184);
            v157 = v302;
            if (v354 == v353)
            {
LABEL_72:
              sub_1DC517B9C();
              v288 = OUTLINED_FUNCTION_40_16();
              OUTLINED_FUNCTION_47_12();
              sub_1DC516F0C();

              OUTLINED_FUNCTION_34_15();
              v289(v348, v160);
              OUTLINED_FUNCTION_22_2();
              v290(v150, v338);
              OUTLINED_FUNCTION_0_69();
              OUTLINED_FUNCTION_55_14(v291, v292);
              OUTLINED_FUNCTION_19();
              v131 = v160;
              goto LABEL_8;
            }
          }
        }

LABEL_28:
        type metadata accessor for NLRouterBypassUtils();
        if (sub_1DC308500(*(v117 + v346[6])))
        {
          sub_1DC309C94();
          if (v185)
          {
            OUTLINED_FUNCTION_34_18();
            sub_1DC510F8C();
            OUTLINED_FUNCTION_37(&v339);
            v186 = OUTLINED_FUNCTION_44_15();
            v187(v186);
            OUTLINED_FUNCTION_37(&v337);
            v302 = v157;
            v188 = v330;
            v336 = v156;
            v189 = v331;
            v190(v330, HIDWORD(v306), v331);
            OUTLINED_FUNCTION_6_30();
            sub_1DC45BEB0(&qword_1ECC7BE28, v191);
            OUTLINED_FUNCTION_54_17();
            v117 = v352;
            sub_1DC5179EC();
            v192 = *v304;
            v193 = v188;
            v157 = v302;
            (*v304)(v193, v189);
            v194 = v189;
            v156 = v336;
            v192(v344, v194);
            if (v354 == v353)
            {
              sub_1DC459254();
              if ((v195 & 1) == 0)
              {
                goto LABEL_72;
              }
            }
          }
        }

        v157(v333, &v156[v117], v160);
        OUTLINED_FUNCTION_37(&v341);
        v196 = OUTLINED_FUNCTION_187();
        v198 = v197(v196);
        v199 = *v339;
        v200 = OUTLINED_FUNCTION_187();
        v336 = v201;
        (v201)(v200);
        if (v198 == HIDWORD(v308))
        {
          OUTLINED_FUNCTION_34_18();
          v202 = v344;
          sub_1DC510F8C();
          OUTLINED_FUNCTION_37(&v339);
          v203 = OUTLINED_FUNCTION_44_15();
          v204(v203);
          OUTLINED_FUNCTION_37(&v337);
          v205 = v330;
          v206 = v331;
          v207(v330, HIDWORD(v306), v331);
          OUTLINED_FUNCTION_6_30();
          sub_1DC45BEB0(&qword_1ECC7BE28, v208);
          sub_1DC5179EC();
          v209 = v352;
          sub_1DC5179EC();
          v210 = *v304;
          (*v304)(v205, v206);
          v210(v202, v206);
          if (v354 == v353)
          {
            v211 = v318;
            sub_1DC28F358(v209 + v301, v318, &qword_1ECC7C158, &unk_1DC5234A0);
            v212 = OUTLINED_FUNCTION_34_11();
            OUTLINED_FUNCTION_39(v212, v213, v300);
            if (v127)
            {
              sub_1DC28EB30(v211, &qword_1ECC7C158, &unk_1DC5234A0);
              v217 = v317;
              OUTLINED_FUNCTION_19();
              __swift_storeEnumTagSinglePayload(v214, v215, v216, v298);
            }

            else
            {
              v217 = v317;
              sub_1DC28F358(v211, v317, &qword_1ECC7C160, qword_1DC5233B0);
              OUTLINED_FUNCTION_5_36();
              sub_1DC45BDFC(v211, v218);
            }

            v219 = sub_1DC459974(v217);
            sub_1DC28EB30(v217, &qword_1ECC7C160, qword_1DC5233B0);
            if (v219)
            {
              break;
            }
          }
        }

LABEL_54:
        v242 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
        v243 = sub_1DC346088();
        v245 = v244;
        if (v243 == sub_1DC313520(1) && v245 == v246)
        {

          v147 = v349;
          v149 = v338;
        }

        else
        {
          v248 = sub_1DC51825C();

          v147 = v349;
          v149 = v338;
          if ((v248 & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        v255 = v326;
        v256 = v348;
        sub_1DC32CDF4();
        OUTLINED_FUNCTION_67_7();
        v257();
        OUTLINED_FUNCTION_37(&v335);
        v258(v256, v255, v147);
LABEL_62:
        v117 = v352;
        sub_1DC459B88(v352, v347, v249, v250, v251, v252, v253, v254, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309);
        if (v259)
        {
          sub_1DC517B9C();
          v275 = OUTLINED_FUNCTION_40_16();
          OUTLINED_FUNCTION_47_12();
          sub_1DC516F0C();

          OUTLINED_FUNCTION_22_2();
          v276(v347, v149);
          OUTLINED_FUNCTION_0_69();
          OUTLINED_FUNCTION_55_14(v277, v278);
          OUTLINED_FUNCTION_37(&v335);
          v279(v343, v348, v147);
          OUTLINED_FUNCTION_61();
          v131 = v147;
          goto LABEL_8;
        }

        v260 = v242;
        sub_1DC3452CC();
        v261 = sub_1DC312F68();
        if (v261 == 4)
        {
          OUTLINED_FUNCTION_67_7();
          v262();
          OUTLINED_FUNCTION_22_2();
          v150 = v347;
          v263 = OUTLINED_FUNCTION_142_0();
          v264(v263);
          OUTLINED_FUNCTION_184(&a17);
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v265, v266, v267, v147);
        }

        else
        {
          v260 = v332;
          sub_1DC312E7C(v261, v332);
          v268 = OUTLINED_FUNCTION_34_11();
          OUTLINED_FUNCTION_39(v268, v269, v147);
          v150 = v347;
          if (!v127)
          {
            OUTLINED_FUNCTION_37(&v335);
            v280 = v310;
            v281(v310, v260, v147);
            v282 = v348;
            sub_1DC32DE40();
            v283 = v336;
            (v336)(v280, v147);
            (v283)(v282, v147);
            OUTLINED_FUNCTION_22_2();
            v284 = OUTLINED_FUNCTION_142_0();
            v285(v284);
            OUTLINED_FUNCTION_0_69();
            OUTLINED_FUNCTION_55_14(v286, v287);
            OUTLINED_FUNCTION_61();
            v131 = v147;
            goto LABEL_8;
          }

          OUTLINED_FUNCTION_67_7();
          v270();
          OUTLINED_FUNCTION_22_2();
          v271 = OUTLINED_FUNCTION_142_0();
          v272(v271);
        }

        sub_1DC28EB30(v260, &qword_1ECC7CA40, &unk_1DC5233A0);
        v148 = v337;
LABEL_69:
        if (++v151 == v325)
        {
          goto LABEL_70;
        }
      }

      v220 = v315;
      sub_1DC3EAD64(v315);
      OUTLINED_FUNCTION_39(v220, 1, v316);
      if (v127)
      {
        sub_1DC28EB30(v220, &qword_1ECC7BEB8, &unk_1DC527150);
        goto LABEL_54;
      }

      v221 = v312;
      sub_1DC45BE54(v220, v312);
      v222 = v313;
      if (*(v221 + 1) == 1)
      {
        v223 = OUTLINED_FUNCTION_58_12();
        v224 = v311;
        OUTLINED_FUNCTION_75_7(v223, v311);
        v225 = sub_1DC51724C();
        v226 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v226, v227, v225);
        if (!v127)
        {
          sub_1DC51723C();
          OUTLINED_FUNCTION_50_14();
          v235 = *(v234 + 8);
          v236 = OUTLINED_FUNCTION_187();
          v237(v236);
          v238 = sub_1DC3EAB6C();
          goto LABEL_48;
        }

        sub_1DC28EB30(v224, &qword_1ECC7BEC0, &unk_1DC5221E0);
      }

      v228 = OUTLINED_FUNCTION_58_12();
      OUTLINED_FUNCTION_75_7(v228, v222);
      v229 = sub_1DC51724C();
      OUTLINED_FUNCTION_39(v222, 1, v229);
      if (v127)
      {
        sub_1DC28EB30(v222, &qword_1ECC7BEC0, &unk_1DC5221E0);
LABEL_53:
        OUTLINED_FUNCTION_27_19();
        goto LABEL_54;
      }

      v224 = v222;
      sub_1DC51723C();
      OUTLINED_FUNCTION_50_14();
      v231 = *(v230 + 8);
      v232 = OUTLINED_FUNCTION_187();
      v233(v232);
      v238 = sub_1DC3EABA8();
LABEL_48:
      if (&qword_1ECC7BEC0 == *v238 && v224 == v238[1])
      {
LABEL_74:
        v241 = v349;

LABEL_75:
        sub_1DC517B9C();
        v293 = OUTLINED_FUNCTION_40_16();
        OUTLINED_FUNCTION_47_12();
        sub_1DC516F0C();

        OUTLINED_FUNCTION_27_19();
        OUTLINED_FUNCTION_67_7();
        v294();
        OUTLINED_FUNCTION_22_2();
        v295(v347, v338);
        OUTLINED_FUNCTION_0_69();
        OUTLINED_FUNCTION_55_14(v296, v297);
        OUTLINED_FUNCTION_19();
        v131 = v241;
        goto LABEL_8;
      }

      v240 = sub_1DC51825C();

      v241 = v349;
      if (v240)
      {
        goto LABEL_75;
      }

      goto LABEL_53;
    }
  }

  sub_1DC28EB30(v20, &qword_1ECC7C160, qword_1DC5233B0);
LABEL_7:
  OUTLINED_FUNCTION_19();
  v131 = v349;
LABEL_8:
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
  v133 = v341;
  v132 = v342;
  v134 = v340;
  v135 = sub_1DC2BE518();
  sub_1DC2B8848();

  (*(v133 + 8))(v134, v132);
  OUTLINED_FUNCTION_34();
}

void sub_1DC457EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1DC51164C();
  v26 = OUTLINED_FUNCTION_0(v25);
  v214 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  v201 = v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  v212 = v32;
  OUTLINED_FUNCTION_12();
  v208 = sub_1DC51122C();
  v33 = OUTLINED_FUNCTION_0(v208);
  v206 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v200 = v37;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_62();
  v207 = v39;
  v40 = OUTLINED_FUNCTION_12();
  v41 = type metadata accessor for TurnSummary.ExecutionSource(v40);
  v42 = OUTLINED_FUNCTION_35(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  v209 = v45;
  v204 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050) - 8);
  v46 = *(v204 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_25();
  v213 = v48;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFB8, &unk_1DC52A4C0);
  OUTLINED_FUNCTION_35(v211);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v51);
  v52 = OUTLINED_FUNCTION_18();
  v53 = type metadata accessor for TurnSummary(v52);
  v54 = OUTLINED_FUNCTION_0(v53);
  v202 = v55;
  v203 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_2_1();
  v217 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v62);
  v64 = v191 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v68);
  v70 = v191 - v69;
  v71 = type metadata accessor for NLRouterNLParseResponse(0);
  v72 = OUTLINED_FUNCTION_35(v71);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_1();
  v77 = v76 - v75;
  v205 = type metadata accessor for NLRouterServiceRequest(0);
  v78 = *(v205 + 32);
  OUTLINED_FUNCTION_33_19();
  sub_1DC28F358(v79, v80, v81, &unk_1DC5234A0);
  v82 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v64, 1, v82);
  if (v89)
  {
    sub_1DC28EB30(v64, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v71);
LABEL_6:
    sub_1DC28EB30(v70, &qword_1ECC7C160, qword_1DC5233B0);
    goto LABEL_7;
  }

  sub_1DC28F358(v64, v70, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_5_36();
  sub_1DC45BDFC(v64, v86);
  v87 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v87, v88, v71);
  if (v89)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_38();
  sub_1DC45BE54(v70, v77);
  v90 = *&v24[*(v205 + 24)];
  v91 = *(v90 + 16);
  v199 = v77;
  v210 = v25;
  v198 = v24;
  v192 = v90;
  if (!v91)
  {
    goto LABEL_31;
  }

  v92 = v90 + 48 * v91;
  v93 = *(v92 + 8);
  v94 = *(v92 + 16);
  v95 = *(v94 + 16);
  v191[1] = *(v92 - 8);

  v191[0] = v93;

  v96 = 0;
  v194 = xmmword_1DC522F10;
  v97 = v213;
  v195 = v94;
  v193 = v95;
  v216 = v41;
LABEL_10:
  if (v96 == v95)
  {

    OUTLINED_FUNCTION_72_9();

    goto LABEL_31;
  }

  if (v96 >= *(v94 + 16))
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v98 = *(v202 + 80);
  OUTLINED_FUNCTION_24();
  sub_1DC2DACB8(v94 + v99 + *(v100 + 72) * v96, v217);
  v196 = v96 + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7E040, &unk_1DC52F238);
  v101 = *(v204 + 72);
  v102 = (*(v204 + 80) + 32) & ~*(v204 + 80);
  v103 = swift_allocObject();
  *(v103 + 16) = v194;
  v197 = v103;
  v104 = v103 + v102;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
  __swift_storeEnumTagSinglePayload(v104, 3, 4, v105);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v41);
  __swift_storeEnumTagSinglePayload(v104 + v101, 2, 4, v105);
  v215 = v101;
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v41);
  v77 = *(v203 + 28);
  v112 = 2;
  v113 = v211;
  while (1)
  {
    v114 = *(v113 + 48);
    v24 = &unk_1DC524050;
    sub_1DC28F358(v104, v20, &qword_1ECC7BFC8, &unk_1DC524050);
    OUTLINED_FUNCTION_75_7(v217 + v77, v20 + v114);
    v115 = v216;
    OUTLINED_FUNCTION_39(v20, 1, v216);
    if (v89)
    {
      break;
    }

    OUTLINED_FUNCTION_75_7(v20, v97);
    OUTLINED_FUNCTION_39(v20 + v114, 1, v115);
    if (v116)
    {
      sub_1DC45BDFC(v97, type metadata accessor for TurnSummary.ExecutionSource);
LABEL_21:
      sub_1DC28EB30(v20, &qword_1ECC7BFB8, &unk_1DC52A4C0);
      goto LABEL_23;
    }

    v117 = v209;
    sub_1DC45BE54(v20 + v114, v209);
    sub_1DC45BEB0(&qword_1ECC7BD58, type metadata accessor for TurnSummary.ExecutionSource);
    v118 = sub_1DC5176CC();
    v119 = v117;
    v97 = v213;
    sub_1DC45BDFC(v119, type metadata accessor for TurnSummary.ExecutionSource);
    v113 = v211;
    sub_1DC45BDFC(v97, type metadata accessor for TurnSummary.ExecutionSource);
    sub_1DC28EB30(v20, &qword_1ECC7BFC8, &unk_1DC524050);
    if (v118)
    {
      goto LABEL_25;
    }

LABEL_23:
    v104 += v215;
    if (!--v112)
    {
      OUTLINED_FUNCTION_184(&a16);
      swift_setDeallocating();
      sub_1DC45BD78();
      OUTLINED_FUNCTION_28_16();
      OUTLINED_FUNCTION_29_7();
      v94 = v195;
      v95 = v193;
      v96 = v196;
      v41 = v216;
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_39(v20 + v114, 1, v115);
  if (!v89)
  {
    goto LABEL_21;
  }

  sub_1DC28EB30(v20, &qword_1ECC7BFC8, &unk_1DC524050);
LABEL_25:
  OUTLINED_FUNCTION_184(&a16);
  swift_setDeallocating();
  sub_1DC45BD78();
  OUTLINED_FUNCTION_28_16();

  OUTLINED_FUNCTION_72_9();

  type metadata accessor for NLRouterBypassUtils();
  v120 = *(v205 + 20);
  sub_1DC309C94();
  v122 = v121;
  OUTLINED_FUNCTION_23_24();
  sub_1DC45A6A8();
  v124 = v123;
  sub_1DC45A6A8();
  v126 = v125;
  sub_1DC45ADD8();
  v128 = v127 & v122;
  v129 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v130 = sub_1DC2BE518();
  if (os_log_type_enabled(v130, v129))
  {
    v131 = swift_slowAlloc();
    *v131 = 67109120;
    *(v131 + 4) = v128 & 1;
    _os_log_impl(&dword_1DC287000, v130, v129, "[OverrideShortcutRule] skipUserCancelled %{BOOL}d", v131, 8u);
    MEMORY[0x1E1298840](v131, -1, -1);
  }

  v132 = v124 | v126 | v128;
  v24 = v198;
  v77 = v199;
  if (v132)
  {
    sub_1DC517B9C();
    v133 = sub_1DC2BE518();
    OUTLINED_FUNCTION_40_1();
LABEL_29:
    sub_1DC516F0C();

    OUTLINED_FUNCTION_0_69();
    v135 = v77;
LABEL_79:
    sub_1DC45BDFC(v135, v134);
    goto LABEL_7;
  }

LABEL_31:
  v136 = *(*v77 + 16);
  v205 = *v77;
  v197 = v136;
  if (v136)
  {
    v137 = *(v206 + 80);
    OUTLINED_FUNCTION_24();
    v204 = v139 + v138;
    v203 = v140 + 16;
    OUTLINED_FUNCTION_42_14();
    v202 = v143;
    while (v142 < *(v141 + 16))
    {
      v144 = *(v206 + 72);
      v209 = v142;
      (*(v206 + 16))(v207, v204 + v144 * v142, v208);
      v145 = sub_1DC5111AC();
      v217 = *(v145 + 16);
      if (v217)
      {
        v77 = 0;
        v146 = *(v214 + 80);
        OUTLINED_FUNCTION_24();
        v216 = v145 + v147;
        v24 = v212;
        v211 = v145;
        while (1)
        {
          if (v77 >= *(v145 + 16))
          {
            __break(1u);
            goto LABEL_89;
          }

          v148 = OUTLINED_FUNCTION_32_17();
          v149(v148);
          if (qword_1EDAC9628 != -1)
          {
            OUTLINED_FUNCTION_21_21();
            swift_once();
          }

          v150 = qword_1ECC8F570;
          if (*(qword_1ECC8F570 + 16))
          {
            OUTLINED_FUNCTION_53_17(MEMORY[0x1E69E7CC0]);
            do
            {
              v218 = *(v150 + 32);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B8, &unk_1DC522F90);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC68, &unk_1DC5248A0);
              OUTLINED_FUNCTION_51_9();
              OUTLINED_FUNCTION_49_15();
              if (v152)
              {
                OUTLINED_FUNCTION_52_15(v151);
              }

              OUTLINED_FUNCTION_48_11();
            }

            while (!v89);
            v145 = v211;
            v24 = v212;
          }

          sub_1DC30AD70();
          v154 = v153;

          v155 = OUTLINED_FUNCTION_57_12();
          v156(v155);
          if (v154)
          {
            break;
          }

          if (++v77 == v217)
          {

            OUTLINED_FUNCTION_29_7();
            goto LABEL_50;
          }
        }

        (*v202)(v207, v208);

        sub_1DC517B9C();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v185 = sub_1DC2BE518();
        OUTLINED_FUNCTION_40_1();
LABEL_78:
        sub_1DC516F0C();

        OUTLINED_FUNCTION_0_69();
        v135 = v199;
        goto LABEL_79;
      }

LABEL_50:
      v157 = v209 + 1;
      (*v202)(v207, v208);
      v142 = v157;
      v141 = v205;
      if (v157 == v197)
      {
        goto LABEL_51;
      }
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  else
  {
LABEL_51:
    sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
    v158 = sub_1DC345A48();
    v160 = v159;
    if (v158 == sub_1DC312FB4(0) && v160 == v161)
    {
    }

    else
    {
      OUTLINED_FUNCTION_36();
      v163 = sub_1DC51825C();

      if ((v163 & 1) == 0)
      {
        v203 = *(v205 + 16);
        if (v203)
        {
          v164 = 0;
          v165 = *(v206 + 80);
          OUTLINED_FUNCTION_24();
          v209 = v167 + v166;
          v207 = v168 + 16;
          OUTLINED_FUNCTION_42_14();
          v204 = v170;
          while (v164 < *(v169 + 16))
          {
            v171 = *(v206 + 72);
            v211 = v164;
            (*(v206 + 16))(v200, v209 + v171 * v164, v208);
            v172 = sub_1DC5111AC();
            v217 = *(v172 + 16);
            if (v217)
            {
              v77 = 0;
              v173 = *(v214 + 80);
              OUTLINED_FUNCTION_24();
              v216 = v172 + v174;
              v24 = v201;
              v212 = v172;
              while (v77 < *(v172 + 16))
              {
                v175 = OUTLINED_FUNCTION_32_17();
                v176(v175);
                if (_MergedGlobals_22 != -1)
                {
                  OUTLINED_FUNCTION_22_20();
                  swift_once();
                }

                v177 = qword_1ECC8FA78;
                if (*(qword_1ECC8FA78 + 16))
                {
                  OUTLINED_FUNCTION_53_17(MEMORY[0x1E69E7CC0]);
                  do
                  {
                    v218 = *(v177 + 32);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7E048, &qword_1DC52F248);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC68, &unk_1DC5248A0);
                    OUTLINED_FUNCTION_51_9();
                    OUTLINED_FUNCTION_49_15();
                    if (v152)
                    {
                      OUTLINED_FUNCTION_52_15(v178);
                    }

                    OUTLINED_FUNCTION_48_11();
                  }

                  while (!v89);
                  v24 = v201;
                  v172 = v212;
                }

                sub_1DC30AD70();
                v180 = v179;

                v181 = OUTLINED_FUNCTION_57_12();
                v182(v181);
                if (v180)
                {
                  v189 = OUTLINED_FUNCTION_73_8();
                  v190(v189);

                  sub_1DC517B9C();
                  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                  v185 = sub_1DC2BE518();
                  OUTLINED_FUNCTION_40_1();
                  goto LABEL_78;
                }

                if (++v77 == v217)
                {

                  OUTLINED_FUNCTION_29_7();
                  goto LABEL_75;
                }
              }

              goto LABEL_90;
            }

LABEL_75:
            v164 = v211 + 1;
            v183 = OUTLINED_FUNCTION_73_8();
            v184(v183);
            v169 = v205;
            if (v164 == v203)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_92;
        }
      }
    }

LABEL_81:
    v186 = v192;
    if (*(v192 + 16))
    {
      type metadata accessor for NLRouterBypassUtils();
      if ((sub_1DC308358(v186) & 1) != 0 && v24[*(type metadata accessor for HeuristicRoutingRequest(0) + 40)] == 1)
      {
        OUTLINED_FUNCTION_23_24();
        sub_1DC45A6A8();
        if (v187)
        {
          sub_1DC517B9C();
          sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
          v133 = sub_1DC2BE518();
          OUTLINED_FUNCTION_40_1();
          goto LABEL_29;
        }
      }
    }

    OUTLINED_FUNCTION_0_69();
    sub_1DC45BDFC(v77, v188);
LABEL_7:
    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC458E94()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC510F7C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v35 = v6;
  OUTLINED_FUNCTION_22();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = sub_1DC510FAC();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  sub_1DC51120C();
  v22 = sub_1DC510F4C();
  v23 = *(v16 + 8);
  v23(v21, v13);
  if (v22)
  {
    sub_1DC51120C();
    sub_1DC510F8C();
    v23(v21, v13);
    v24 = *(v3 + 104);
    v24(v10, *MEMORY[0x1E69D0988], v0);
    OUTLINED_FUNCTION_6_30();
    sub_1DC45BEB0(v25, v26);
    OUTLINED_FUNCTION_36_20();
    OUTLINED_FUNCTION_38_15();
    v27 = *(v3 + 8);
    v27(v10, v0);
    if (v37 == v36)
    {
      goto LABEL_5;
    }

    v24(v10, *MEMORY[0x1E69D0960], v0);
    OUTLINED_FUNCTION_36_20();
    OUTLINED_FUNCTION_38_15();
    v27(v10, v0);
    if (v37 == v36 || (v24(v10, *MEMORY[0x1E69D0970], v0), OUTLINED_FUNCTION_36_20(), OUTLINED_FUNCTION_38_15(), v27(v10, v0), v37 == v36))
    {
LABEL_5:
      v28 = sub_1DC517B9C();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v29 = sub_1DC2BE518();
      v30 = v35;
      (*(v3 + 16))(v35, v12, v0);
      if (os_log_type_enabled(v29, v28))
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        v32 = sub_1DC510F6C();
        v27(v30, v0);
        *(v31 + 4) = v32;
        _os_log_impl(&dword_1DC287000, v29, v28, "[OverridesShortcutRule] identifier matched -> %ld", v31, 0xCu);
        MEMORY[0x1E1298840](v31, -1, -1);
      }

      else
      {
        v27(v30, v0);
      }
    }

    v33 = OUTLINED_FUNCTION_36();
    (v27)(v33);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC459254()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v3 = sub_1DC511E1C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v113 = sub_1DC510FDC();
  v9 = OUTLINED_FUNCTION_0(v113);
  v121 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v112 = v13;
  OUTLINED_FUNCTION_12();
  v119 = sub_1DC51179C();
  v14 = OUTLINED_FUNCTION_0(v119);
  v109 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v111 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v118 = v20;
  OUTLINED_FUNCTION_12();
  v21 = sub_1DC51164C();
  v22 = OUTLINED_FUNCTION_0(v21);
  v120 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_1();
  v116 = v26;
  OUTLINED_FUNCTION_12();
  v115 = sub_1DC51122C();
  v27 = OUTLINED_FUNCTION_0(v115);
  v110 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  v114 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v96 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v41);
  v42 = OUTLINED_FUNCTION_18();
  v43 = type metadata accessor for NLRouterNLParseResponse(v42);
  v44 = OUTLINED_FUNCTION_35(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  v117 = v47;
  v48 = OUTLINED_FUNCTION_12();
  v49 = type metadata accessor for NLRouterServiceRequest(v48);
  sub_1DC28F358(v0 + *(v49 + 32), v37, &qword_1ECC7C158, &unk_1DC5234A0);
  v50 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v37, 1, v50);
  if (v55)
  {
    sub_1DC28EB30(v37, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v43);
LABEL_6:
    sub_1DC28EB30(v2, &qword_1ECC7C160, qword_1DC5233B0);
LABEL_26:
    OUTLINED_FUNCTION_34();
    return;
  }

  sub_1DC28F358(v37, v2, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_5_36();
  sub_1DC45BDFC(v37, v54);
  OUTLINED_FUNCTION_39(v2, 1, v43);
  if (v55)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_38();
  v56 = v117;
  sub_1DC45BE54(v2, v117);
  v99 = *(*v56 + 16);
  if (!v99)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_69();
    sub_1DC45BDFC(v117, v95);
    goto LABEL_26;
  }

  v57 = v110;
  v58 = *(v110 + 80);
  OUTLINED_FUNCTION_24();
  v62 = v59 + v61;
  v107 = v120 + 16;
  v63 = (v109 + 8);
  v106 = v120 + 8;
  v104 = (v121 + 8);
  v121 = v6 + 8;
  v101 = v57 + 8;
  v102 = v21;
  v64 = v114;
  v65 = v115;
  v98 = v59;
  v97 = v59 + v61;
  v96[1] = v57 + 16;
  v103 = v6 + 16;
  while (v60 < *(v59 + 16))
  {
    v66 = *(v57 + 72);
    v100 = v60;
    (*(v57 + 16))(v64, v62 + v66 * v60, v65);
    v105 = *(sub_1DC5111AC() + 16);
    if (v105)
    {
      v67 = 0;
      v68 = *(v120 + 80);
      OUTLINED_FUNCTION_24();
      v108 = v69;
      v109 = v69 + v70;
      v71 = v116;
      while (v67 < *(v69 + 16))
      {
        (*(v120 + 16))(v71, v109 + *(v120 + 72) * v67, v21);
        v72 = v21;
        v73 = v118;
        sub_1DC51154C();
        v74 = sub_1DC51177C();
        v75 = *v63;
        v76 = v73;
        v77 = v119;
        (*v63)(v76, v119);
        if (v74)
        {
          v78 = v111;
          sub_1DC51154C();
          v79 = v78;
          v80 = v112;
          sub_1DC51178C();
          v75(v79, v77);
          v81 = sub_1DC510FBC();
          (*v104)(v80, v113);
          v82 = 0;
          v83 = *(v81 + 16);
          while (1)
          {
            if (v83 == v82)
            {
              OUTLINED_FUNCTION_34_15();
              v89 = v116;
              v21 = v102;
              v90(v116, v102);
              v71 = v89;

              goto LABEL_21;
            }

            if (v82 >= *(v81 + 16))
            {
              break;
            }

            v84 = *(v6 + 80);
            OUTLINED_FUNCTION_24();
            (*(v6 + 16))(v1, v81 + v85 + *(v6 + 72) * v82++, v3);
            sub_1DC332CD8();
            v86 = OUTLINED_FUNCTION_62_14();
            v87(v86);
            if (v1)
            {
              OUTLINED_FUNCTION_34_15();
              v93(v116, v102);

              OUTLINED_FUNCTION_74_9();
              v94(v114, v115);

              goto LABEL_25;
            }
          }

          __break(1u);
          break;
        }

        OUTLINED_FUNCTION_34_15();
        v88(v71, v72);
        v21 = v72;
LABEL_21:
        ++v67;
        v69 = v108;
        if (v67 == v105)
        {

          v64 = v114;
          v65 = v115;
          v57 = v110;
          goto LABEL_24;
        }
      }

      __break(1u);
      break;
    }

LABEL_24:
    v91 = v100 + 1;
    OUTLINED_FUNCTION_74_9();
    v92(v64, v65);
    v60 = v91;
    v59 = v98;
    v62 = v97;
    if (v91 == v99)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
}

void sub_1DC459B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v137 = v25;
  v149 = v26;
  v27 = sub_1DC511E1C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v153 = v29;
  v154 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v32 = sub_1DC510FDC();
  v33 = OUTLINED_FUNCTION_0(v32);
  v136 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_1();
  v143 = v37;
  OUTLINED_FUNCTION_12();
  v142 = sub_1DC51179C();
  v38 = OUTLINED_FUNCTION_0(v142);
  v135 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  v141 = v42;
  OUTLINED_FUNCTION_12();
  v146 = sub_1DC51164C();
  v43 = OUTLINED_FUNCTION_0(v146);
  v144 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_1();
  v145 = v47;
  OUTLINED_FUNCTION_12();
  v48 = sub_1DC516E7C();
  v49 = OUTLINED_FUNCTION_0(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_15();
  v138 = v54;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_63_12();
  v56 = sub_1DC5161CC();
  v57 = OUTLINED_FUNCTION_0(v56);
  v139 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_1();
  v63 = v62 - v61;
  v64 = sub_1DC516E6C();
  v65 = OUTLINED_FUNCTION_0(v64);
  v151 = v66;
  v152 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_2_1();
  v140 = v69;
  OUTLINED_FUNCTION_12();
  v70 = sub_1DC5157EC();
  v71 = OUTLINED_FUNCTION_0(v70);
  v73 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v76 = sub_1DC515F3C();
  v77 = OUTLINED_FUNCTION_0(v76);
  v147 = v78;
  v148 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_2_1();
  v150 = v81;
  if (AFMontaraRestricted())
  {
    goto LABEL_38;
  }

  v133 = v51;
  v134 = v32;
  v82 = type metadata accessor for HeuristicRoutingRequest(0);
  (*(v73 + 16))(v22, v149 + *(v82 + 20), v70);
  if ((*(v73 + 88))(v22, v70) != *MEMORY[0x1E69D02E0])
  {
    (*(v73 + 8))(v22, v70);
LABEL_38:
    OUTLINED_FUNCTION_34();
    return;
  }

  (*(v73 + 96))(v22, v70);
  (*(v147 + 32))();
  sub_1DC515E2C();
  v83 = (*(v139 + 88))(v63, v56);
  if (v83 == *MEMORY[0x1E69D0720])
  {
    v84 = MEMORY[0x1E69A07E0];
    v85 = v151;
    v86 = v152;
    v87 = v140;
  }

  else
  {
    v85 = v151;
    v86 = v152;
    v87 = v140;
    if (v83 == *MEMORY[0x1E69D0730])
    {
      v84 = MEMORY[0x1E69A07F0];
    }

    else
    {
      if (v83 == *MEMORY[0x1E69D0718])
      {
        sub_1DC517B9C();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v127 = sub_1DC2BE518();
        OUTLINED_FUNCTION_40_1();
        sub_1DC516F0C();

        v128 = *(v147 + 8);
        v129 = v150;
LABEL_37:
        v128(v129, v148);
        goto LABEL_38;
      }

      if (v83 != *MEMORY[0x1E69D0728])
      {
        sub_1DC517B9C();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v131 = sub_1DC2BE518();
        OUTLINED_FUNCTION_40_1();
        sub_1DC516F0C();

        (*(v147 + 8))(v150, v148);
        (*(v139 + 8))(v63, v56);
        goto LABEL_38;
      }

      v84 = MEMORY[0x1E69A07E8];
    }
  }

  v88 = v87;
  (*(v85 + 104))(v87, *v84, v86);
  sub_1DC32DBF4();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE78, &qword_1DC524FE0);
  OUTLINED_FUNCTION_10(v89);
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v132 - v93;
  v95 = v150;
  sub_1DC33152C();
  sub_1DC516E8C();
  sub_1DC28EB30(v94, &qword_1ECC7CE78, &qword_1DC524FE0);
  v96 = v133;
  v97 = v138;
  (*(v133 + 104))(v138, *MEMORY[0x1E69A07F8], v48);
  sub_1DC45BEB0(&qword_1ECC7BAC0, MEMORY[0x1E69A0800]);
  v98 = sub_1DC5176CC();
  v99 = *(v96 + 8);
  v99(v97, v48);
  v99(v21, v48);
  v101 = v151;
  v100 = v152;
  if (v98)
  {
LABEL_36:
    (*(v101 + 8))(v88, v100);
    v128 = *(v147 + 8);
    v129 = v95;
    goto LABEL_37;
  }

  v102 = sub_1DC5111AC();
  v103 = *(v102 + 16);
  if (!v103)
  {

LABEL_35:
    v101 = v151;
    v100 = v152;
    v88 = v140;
    goto LABEL_36;
  }

  v104 = 0;
  v105 = v144;
  v106 = *(v144 + 80);
  OUTLINED_FUNCTION_24();
  v149 = v102 + v107;
  v138 = v105 + 8;
  v139 = v105 + 16;
  v137 = v135 + 8;
  v136 += 8;
  v108 = (v153 + 8);
  v109 = v145;
  v110 = v146;
  v133 = v102;
  v132 = v103;
  while (1)
  {
    if (v104 >= *(v102 + 16))
    {
      goto LABEL_43;
    }

    (*(v105 + 16))(v109, v149 + *(v105 + 72) * v104, v110);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      goto LABEL_30;
    }

    v111 = v141;
    sub_1DC51154C();
    sub_1DC51178C();
    OUTLINED_FUNCTION_37(&a18);
    v112(v111, v142);
    v113 = sub_1DC510FBC();
    OUTLINED_FUNCTION_37(&a17);
    v114 = OUTLINED_FUNCTION_36();
    v115(v114);
    v116 = *(v113 + 16);
    if (v116)
    {
      break;
    }

LABEL_29:

    v109 = v145;
    v110 = v146;
    v105 = v144;
    v102 = v133;
    v103 = v132;
LABEL_30:
    ++v104;
    OUTLINED_FUNCTION_74_9();
    v126(v109, v110);
    if (v104 == v103)
    {

      v95 = v150;
      goto LABEL_35;
    }
  }

  v117 = 0;
  v118 = *(v153 + 80);
  OUTLINED_FUNCTION_24();
  v120 = v113 + v119;
  while (v117 < *(v113 + 16))
  {
    (*(v153 + 16))(v20, v120 + *(v153 + 72) * v117, v154);
    if ((sub_1DC511DDC() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (sub_1DC511DBC() == 0x6E65706F2E6D6F63 && v121 == 0xEF746168632E6961)
    {
    }

    else
    {
      v123 = sub_1DC51825C();

      if ((v123 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if ((sub_1DC511DFC() & 1) == 0)
    {
LABEL_27:
      (*v108)(v20, v154);
      goto LABEL_28;
    }

    v157 = sub_1DC511DEC();
    v158 = v124;
    v155 = 0x6E65746E496B7341;
    v156 = 0xE900000000000074;
    sub_1DC2A32B0();
    v125 = sub_1DC517E5C();

    (*v108)(v20, v154);
    if (v125)
    {
      OUTLINED_FUNCTION_74_9();
      v130(v145, v146);

      (*(v151 + 8))(v140, v152);
      (*(v147 + 8))(v150, v148);
      goto LABEL_38;
    }

LABEL_28:
    if (v116 == ++v117)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_1DC45A6A8()
{
  OUTLINED_FUNCTION_33();
  v77 = v0;
  v2 = v1;
  v89 = sub_1DC510FDC();
  v3 = OUTLINED_FUNCTION_0(v89);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v93 = v9;
  OUTLINED_FUNCTION_12();
  v98 = sub_1DC51179C();
  v10 = OUTLINED_FUNCTION_0(v98);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v97 = v18;
  OUTLINED_FUNCTION_12();
  v83 = sub_1DC51164C();
  v19 = OUTLINED_FUNCTION_0(v83);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = sub_1DC51122C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v31);
  v76 = *(*v2 + 16);
  if (!v76)
  {
LABEL_23:
    OUTLINED_FUNCTION_34();
    return;
  }

  v33 = 0;
  v34 = *(v32 + 80);
  OUTLINED_FUNCTION_24();
  v37 = 0;
  v75 = v35 + v38;
  v74 = v36 + 16;
  v92 = v21 + 16;
  v88 = (v5 + 8);
  v72 = v36 + 8;
  v39 = v83;
  v81 = v17;
  v90 = v21;
  v73 = v27;
  v71 = v36;
  v70 = v35;
  v91 = (v12 + 8);
  v80 = (v21 + 8);
  while (1)
  {
    if (v37 >= *(v35 + 16))
    {
      goto LABEL_25;
    }

    v40 = *(v36 + 72);
    v78 = v37;
    (*(v36 + 16))(v79, v75 + v40 * v37, v27);
    v41 = sub_1DC5111AC();
    v96 = *(v41 + 16);
    if (v96)
    {
      break;
    }

LABEL_22:
    v67 = v78 + 1;

    OUTLINED_FUNCTION_37(v101);
    v27 = v73;
    v68(v79, v73);
    v37 = v67;
    v36 = v71;
    v35 = v70;
    if (v67 == v76)
    {
      goto LABEL_23;
    }
  }

  v42 = 0;
  v43 = *(v21 + 80);
  OUTLINED_FUNCTION_24();
  v94 = v41 + v44;
  v95 = v41;
  while (v42 < *(v41 + 16))
  {
    (*(v21 + 16))(v26, v94 + *(v21 + 72) * v42, v39);
    v45 = v97;
    sub_1DC51154C();
    v46 = sub_1DC51177C();
    v47 = *v91;
    (*v91)(v45, v98);
    if ((v46 & 1) == 0)
    {
      v51 = OUTLINED_FUNCTION_16_18();
      v52(v51);
      goto LABEL_11;
    }

    sub_1DC51154C();
    sub_1DC51178C();
    v47(v17, v98);
    v48 = sub_1DC5138FC();
    if (v33)
    {

      (*v88)(v93, v89);
      v49 = OUTLINED_FUNCTION_16_18();
      v50(v49);
      v33 = 0;
LABEL_11:
      v41 = v95;
      goto LABEL_12;
    }

    v85 = v48;
    v87 = 0;
    v86 = *v88;
    v53 = v89;
    v86(v93, v89);
    v54 = type metadata accessor for NLRouterBypassUtils();
    v55 = v26;
    v56 = v97;
    sub_1DC51154C();
    v57 = v82;
    sub_1DC51178C();
    v47(v56, v98);
    v84 = v54;
    v58 = sub_1DC307E5C();
    v86(v57, v53);
    if (!v58)
    {
      v39 = v83;
      (*v80)(v55, v83);
      OUTLINED_FUNCTION_31_19();

      v17 = v81;
      v26 = v55;
      v33 = v87;
      goto LABEL_11;
    }

    v26 = v55;

    sub_1DC51478C();

    v17 = v81;
    v39 = v83;
    v33 = v87;
    if (!v100)
    {
      v63 = OUTLINED_FUNCTION_16_18();
      v64(v63);

      OUTLINED_FUNCTION_31_19();

      sub_1DC28EB30(&v99, &qword_1ECC7D3F0, &qword_1DC5238B0);
      goto LABEL_11;
    }

    sub_1DC2BAD90(&v99, v101);
    sub_1DC291F78(v101, &v99);
    v77(0);
    v59 = swift_dynamicCast();
    v41 = v95;
    if (v59)
    {

      v60 = sub_1DC309EB4();

      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      v61 = OUTLINED_FUNCTION_16_18();
      v62(v61);
      if (v60)
      {
        OUTLINED_FUNCTION_37(v101);
        v69(v79, v73);

        goto LABEL_23;
      }
    }

    else
    {

      OUTLINED_FUNCTION_31_19();

      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      v65 = OUTLINED_FUNCTION_16_18();
      v66(v65);
    }

LABEL_12:
    ++v42;
    v21 = v90;
    if (v96 == v42)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1DC45ADD8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v2 = sub_1DC51164C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v8 = sub_1DC51122C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v32 = *(*v0 + 16);
  if (!v32)
  {
LABEL_10:
    OUTLINED_FUNCTION_34();
    return;
  }

  v16 = 0;
  v17 = *(v12 + 80);
  OUTLINED_FUNCTION_24();
  v21 = v18 + v20;
  v33 = (v19 + 8);
  v34 = v15;
  v35 = v8;
  v30 = v18;
  v31 = v19;
  v29 = v18 + v20;
  while (2)
  {
    if (v16 < *(v18 + 16))
    {
      (*(v19 + 16))(v15, v21 + *(v19 + 72) * v16++, v8);
      v22 = sub_1DC5111AC();
      v23 = 0;
      v24 = *(v22 + 16);
      while (v24 != v23)
      {
        if (v23 >= *(v22 + 16))
        {
          __break(1u);
          goto LABEL_12;
        }

        v25 = *(v5 + 80);
        OUTLINED_FUNCTION_24();
        (*(v5 + 16))(v1, v22 + v26 + *(v5 + 72) * v23++, v2);
        sub_1DC51150C();
        v27 = OUTLINED_FUNCTION_62_14();
        v28(v27);
        if (v1)
        {
          (*v33)(v34, v35);

          goto LABEL_10;
        }
      }

      v15 = v34;
      v8 = v35;
      (*v33)(v34, v35);

      v19 = v31;
      v21 = v29;
      v18 = v30;
      if (v16 != v32)
      {
        continue;
      }

      goto LABEL_10;
    }

    break;
  }

LABEL_12:
  __break(1u);
}

void sub_1DC45B024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_38_2();
  v22 = sub_1DC514B2C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C240, &qword_1DC523070);
  OUTLINED_FUNCTION_35(v163);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C248, &qword_1DC52F220);
  v36 = OUTLINED_FUNCTION_10(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_12();
  v181 = sub_1DC514AEC();
  v41 = OUTLINED_FUNCTION_0(v181);
  v177 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v45);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7E030, &qword_1DC52F228);
  OUTLINED_FUNCTION_35(v170);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_25();
  v180 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C220, &qword_1DC52F230);
  v51 = OUTLINED_FUNCTION_10(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  v176 = v55;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_62();
  v179 = v57;
  OUTLINED_FUNCTION_12();
  v189[0] = sub_1DC510FDC();
  v58 = OUTLINED_FUNCTION_0(v189[0]);
  v182 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_1();
  v188 = v62;
  OUTLINED_FUNCTION_12();
  v187 = sub_1DC51179C();
  v63 = OUTLINED_FUNCTION_0(v187);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_1();
  v186 = v68;
  OUTLINED_FUNCTION_12();
  v69 = sub_1DC51164C();
  v70 = OUTLINED_FUNCTION_0(v69);
  v72 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_1();
  v77 = v76 - v75;
  v78 = sub_1DC5111AC();
  v79 = *(v78 + 16);
  if (!v79)
  {
    goto LABEL_46;
  }

  v159 = v30;
  v80 = 0;
  v81 = *(v72 + 80);
  OUTLINED_FUNCTION_24();
  v190 = v78 + v83;
  v189[1] = v72 + 16;
  v183 = (v182 + 8);
  v184 = (v65 + 8);
  v167 = *MEMORY[0x1E69D2008];
  v161 = (v177 + 8);
  v160 = *MEMORY[0x1E69D2070];
  v158 = (v25 + 8);
  v185 = v79;
  v166 = v69;
  v165 = v72;
  while (v80 < *(v78 + 16))
  {
    (*(v72 + 16))(v77, v190 + *(v72 + 72) * v80, v69);
    if (sub_1DC5114CC())
    {
      type metadata accessor for NLRouterBypassUtils();
      sub_1DC51154C();
      v84 = v188;
      sub_1DC51178C();
      (*v184)(v186, v187);
      v85 = sub_1DC307E5C();
      (*v183)(v84, v189[0]);
      if (!v85)
      {
        v90 = OUTLINED_FUNCTION_10_31();
        v82 = v91(v90);
        goto LABEL_29;
      }

      sub_1DC51478C();

      if (!v191[3])
      {
        v92 = OUTLINED_FUNCTION_10_31();
        v93(v92);

        v82 = sub_1DC28EB30(v191, &qword_1ECC7D3F0, &qword_1DC5238B0);
        goto LABEL_29;
      }

      sub_1DC514D3C();
      if ((swift_dynamicCast() & 1) == 0)
      {
        v94 = OUTLINED_FUNCTION_10_31();
        v95(v94);
        goto LABEL_28;
      }

      sub_1DC514CFC();

      if (!v191[0])
      {
        v96 = OUTLINED_FUNCTION_10_31();
        v97(v96);
        goto LABEL_27;
      }

      if (sub_1DC51484C())
      {
        sub_1DC514ADC();

        v86 = v181;
        v87 = v179;
      }

      else
      {
        v87 = v179;
        OUTLINED_FUNCTION_19();
        v86 = v181;
        __swift_storeEnumTagSinglePayload(v98, v99, v100, v181);
      }

      OUTLINED_FUNCTION_37(&a11);
      v101(v176, v167, v86);
      OUTLINED_FUNCTION_61();
      __swift_storeEnumTagSinglePayload(v102, v103, v104, v86);
      v105 = *(v170 + 48);
      sub_1DC28F358(v87, v180, &qword_1ECC7C220, &qword_1DC52F230);
      v172 = v105;
      sub_1DC28F358(v176, v180 + v105, &qword_1ECC7C220, &qword_1DC52F230);
      OUTLINED_FUNCTION_39(v180, 1, v86);
      if (v109)
      {
        sub_1DC28EB30(v176, &qword_1ECC7C220, &qword_1DC52F230);
        sub_1DC28EB30(v179, &qword_1ECC7C220, &qword_1DC52F230);
        OUTLINED_FUNCTION_29_5();
        OUTLINED_FUNCTION_39(v180 + v106, 1, v107);
        v108 = v180;
        v69 = v166;
        v72 = v165;
        if (!v109)
        {
          goto LABEL_25;
        }

        sub_1DC28EB30(v180, &qword_1ECC7C220, &qword_1DC52F230);
      }

      else
      {
        sub_1DC28F358(v180, v168, &qword_1ECC7C220, &qword_1DC52F230);
        OUTLINED_FUNCTION_39(v180 + v105, 1, v181);
        v72 = v165;
        if (v109)
        {
          sub_1DC28EB30(v176, &qword_1ECC7C220, &qword_1DC52F230);
          sub_1DC28EB30(v179, &qword_1ECC7C220, &qword_1DC52F230);
          OUTLINED_FUNCTION_37(v191);
          v110(v168, v181);
          v108 = v180;
          v69 = v166;
LABEL_25:
          sub_1DC28EB30(v108, &qword_1ECC7E030, &qword_1DC52F228);
LABEL_26:
          v111 = OUTLINED_FUNCTION_10_31();
          v112(v111);

LABEL_27:

LABEL_28:

LABEL_29:
          v79 = v185;
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_37(v189);
        v113(v162, v180 + v172, v181);
        sub_1DC45BEB0(&qword_1ECC7E038, MEMORY[0x1E69D2030]);
        v173 = sub_1DC5176CC();
        v114 = *v161;
        (*v161)(v162, v181);
        sub_1DC28EB30(v176, &qword_1ECC7C220, &qword_1DC52F230);
        sub_1DC28EB30(v179, &qword_1ECC7C220, &qword_1DC52F230);
        v114(v168, v181);
        sub_1DC28EB30(v180, &qword_1ECC7C220, &qword_1DC52F230);
        v69 = v166;
        if ((v173 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v115 = sub_1DC5146CC();

      v79 = v185;
      if (v115)
      {
        sub_1DC514B1C();
      }

      else
      {
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v116, v117, v118, v22);
      }

      OUTLINED_FUNCTION_37(&v190);
      v119(v171, v160, v22);
      OUTLINED_FUNCTION_61();
      __swift_storeEnumTagSinglePayload(v120, v121, v122, v22);
      v174 = *(v163 + 48);
      v123 = OUTLINED_FUNCTION_31_19();
      sub_1DC28F358(v123, v169, &qword_1ECC7C248, &qword_1DC52F220);
      OUTLINED_FUNCTION_29_5();
      v124 = OUTLINED_FUNCTION_34_3();
      sub_1DC28F358(v124, v125, &qword_1ECC7C248, &qword_1DC52F220);
      v126 = OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_39(v126, v127, v22);
      if (v109)
      {

        v128 = OUTLINED_FUNCTION_34_3();
        sub_1DC28EB30(v128, &qword_1ECC7C248, &qword_1DC52F220);
        v129 = OUTLINED_FUNCTION_31_19();
        sub_1DC28EB30(v129, &qword_1ECC7C248, &qword_1DC52F220);
        v130 = OUTLINED_FUNCTION_10_31();
        v131(v130);
        OUTLINED_FUNCTION_29_5();
        OUTLINED_FUNCTION_39(v169 + v132, 1, v22);
        v82 = v169;
        if (v109)
        {
          goto LABEL_48;
        }

        goto LABEL_44;
      }

      v133 = OUTLINED_FUNCTION_184(&a14);
      sub_1DC28F358(v133, v164, &qword_1ECC7C248, &qword_1DC52F220);
      OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_39(v169 + v134, 1, v22);
      if (v135)
      {

        OUTLINED_FUNCTION_34_3();
        OUTLINED_FUNCTION_33_19();
        sub_1DC28EB30(v136, v137, v138);
        OUTLINED_FUNCTION_31_19();
        OUTLINED_FUNCTION_33_19();
        sub_1DC28EB30(v139, v140, v141);
        v142 = OUTLINED_FUNCTION_10_31();
        v143(v142);
        OUTLINED_FUNCTION_37(&v188);
        v144(v164, v22);
        v82 = v169;
LABEL_44:
        v82 = sub_1DC28EB30(v82, &qword_1ECC7C240, &qword_1DC523070);
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_37(&v187);
      v145(v159, v169 + v174, v22);
      sub_1DC45BEB0(&qword_1ECC7C250, MEMORY[0x1E69D2078]);
      OUTLINED_FUNCTION_72_9();
      v175 = sub_1DC5176CC();

      v178 = *v158;
      (*v158)(v159, v22);
      OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_33_19();
      sub_1DC28EB30(v146, v147, v148);
      OUTLINED_FUNCTION_31_19();
      OUTLINED_FUNCTION_33_19();
      sub_1DC28EB30(v149, v150, v151);
      v152 = OUTLINED_FUNCTION_10_31();
      v153(v152);
      v154 = OUTLINED_FUNCTION_72_9();
      v178(v154, v22);
      OUTLINED_FUNCTION_33_19();
      v82 = sub_1DC28EB30(v155, v156, v157);
      if (v175)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v88 = OUTLINED_FUNCTION_10_31();
      v82 = v89(v88);
    }

LABEL_30:
    if (v79 == ++v80)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_48:
  sub_1DC28EB30(v82, &qword_1ECC7C248, &qword_1DC52F220);
LABEL_46:

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC45BD78()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DC45BDFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DC45BE54(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_38_2();
  v6 = v5(v4);
  OUTLINED_FUNCTION_35(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1DC45BEB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_73_8()
{
  v1 = **(v0 - 224);
  result = *(v0 - 256);
  v3 = *(v0 - 192);
  return result;
}

void sub_1DC45F628(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x560], 8);
  _Block_object_dispose(&STACK[0x5C0], 8);
  _Block_object_dispose(&STACK[0x340], 8);
  _Block_object_dispose(&STACK[0x5F0], 8);
  _Unwind_Resume(a1);
}

void sub_1DC45FAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC462514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DC463B88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1DC4644FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC4651A4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1DC4666F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a19);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DC4691D0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1DC46B6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__340(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC46BE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DC46C3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DC46C994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DC46CEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DC46D3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DC46D8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DC46DFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1DC46E894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1DC46EE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1DC46F3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1DC46FB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1DC4701E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DC470774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1DC47100C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1DC4715AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DC471BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1DC474D9C(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x2A8]);
  objc_destroyWeak(&STACK[0x310]);
  objc_destroyWeak(&STACK[0x5B8]);
  objc_destroyWeak(&STACK[0x768]);
  objc_destroyWeak(&STACK[0x7E8]);
  objc_destroyWeak(&STACK[0x868]);
  objc_destroyWeak(&STACK[0x928]);
  objc_destroyWeak(&STACK[0xAE8]);
  objc_destroyWeak(&STACK[0xB80]);
  objc_destroyWeak(&STACK[0xBC8]);
  _Block_object_dispose(&STACK[0xBD0], 8);
  _Block_object_dispose(&STACK[0xC00], 8);
  _Block_object_dispose(&STACK[0xC30], 8);
  _Block_object_dispose(&STACK[0xC60], 8);
  _Block_object_dispose(&STACK[0xC90], 8);
  _Block_object_dispose(&STACK[0xCC0], 8);
  _Block_object_dispose(&STACK[0xCF0], 8);
  _Block_object_dispose(&STACK[0xD20], 8);
  _Block_object_dispose(&STACK[0xD50], 8);
  _Block_object_dispose(&STACK[0xD80], 8);
  _Block_object_dispose(&STACK[0xDB0], 8);
  _Block_object_dispose(&STACK[0xDE0], 8);
  _Block_object_dispose(&STACK[0xE10], 8);
  _Block_object_dispose(&STACK[0xE40], 8);
  _Block_object_dispose(&STACK[0xE70], 8);
  _Block_object_dispose(&STACK[0xEA0], 8);
  _Block_object_dispose(&STACK[0xED0], 8);
  _Block_object_dispose(&STACK[0xF00], 8);
  _Block_object_dispose(&STACK[0xF30], 8);
  _Block_object_dispose(&STACK[0xF60], 8);
  _Block_object_dispose(&STACK[0xF90], 8);
  _Block_object_dispose(&STACK[0xFC0], 8);
  _Block_object_dispose(&STACK[0xFF0], 8);
  _Block_object_dispose(&STACK[0x1020], 8);
  _Block_object_dispose(&STACK[0x1050], 8);
  _Block_object_dispose(&STACK[0x1080], 8);
  _Block_object_dispose(&STACK[0x10B0], 8);
  _Block_object_dispose(&STACK[0x10E0], 8);
  _Block_object_dispose(&STACK[0x1110], 8);
  _Block_object_dispose(&STACK[0x1140], 8);
  _Block_object_dispose(&STACK[0x1170], 8);
  _Block_object_dispose(&STACK[0x11A0], 8);
  _Block_object_dispose(&STACK[0x11D0], 8);
  _Block_object_dispose(&STACK[0x1200], 8);
  _Block_object_dispose(&STACK[0x1230], 8);
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__487(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC47B024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, id a12)
{
  objc_sync_exit(obj);
  objc_sync_exit(a12);
  _Unwind_Resume(a1);
}

void sub_1DC481CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1098(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC48C984(_Unwind_Exception *a1)
{
  v8 = v4;

  _Unwind_Resume(a1);
}

void sub_1DC48CB88(_Unwind_Exception *a1)
{
  v8 = v4;

  _Unwind_Resume(a1);
}

void sub_1DC48DC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49)
{
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](&a18);
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](&a32);

  if (a48 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E12976B0](&a49);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t *std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 176) == 1 && *(v2 + 175) < 0)
    {
      operator delete(*(v2 + 152));
    }

    v5 = (v2 + 128);
    std::vector<std::unique_ptr<siri::ontology::AsrAlternative>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (v2 + 88);
    std::vector<std::unique_ptr<siri::ontology::SpanProperty>>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(v2 + 80) == 1)
    {
      v3 = *(v2 + 72);
      *(v2 + 72) = 0;
      if (v3)
      {
        std::default_delete<siri::ontology::MatchInfo>::operator()[abi:ne200100](v3);
      }
    }

    if (*(v2 + 64) == 1 && *(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1E1297AF0](v2, 0x1032C403F51C822);
  }

  return a1;
}

void std::__optional_storage_base<std::unique_ptr<siri::ontology::MatchInfo>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::unique_ptr<siri::ontology::MatchInfo>,false>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a2;
      *a2 = 0;
      v4 = *a1;
      *a1 = v3;
      if (v4)
      {

        std::default_delete<siri::ontology::MatchInfo>::operator()[abi:ne200100](v4);
      }
    }
  }

  else if (*(a1 + 8))
  {
    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      std::default_delete<siri::ontology::MatchInfo>::operator()[abi:ne200100](v5);
    }

    *(a1 + 8) = 0;
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *a1 = v6;
    *(a1 + 8) = 1;
  }
}

void std::default_delete<siri::ontology::MatchInfo>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E1297AF0);
}

PB::Writer **std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](PB::Writer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    PB::Writer::~Writer(v2);
    MEMORY[0x1E1297AF0]();
  }

  return a1;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<std::unique_ptr<siri::ontology::AsrAlternative>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          if (*(v6 + 23) < 0)
          {
            operator delete(*v6);
          }

          MEMORY[0x1E1297AF0](v6, 0x1012C40F498771DLL);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<siri::ontology::SpanProperty>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          if (*(v6 + 48) == 1 && *(v6 + 47) < 0)
          {
            operator delete(*(v6 + 24));
          }

          if (*(v6 + 23) < 0)
          {
            operator delete(*v6);
          }

          MEMORY[0x1E1297AF0](v6, 0x1012C40785BF0B2);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E862DE68, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1DC48E878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DC48E900(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void sub_1DC48EA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1DC48EC2C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1DC48F454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2016(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC49449C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  objc_destroyWeak((v37 + 80));
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v38 - 256), 8);
  _Block_object_dispose((v38 - 208), 8);
  _Block_object_dispose((v38 - 160), 8);
  objc_destroyWeak((v38 - 112));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2112(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::basic_string<char16_t>::resize(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __n, std::basic_string<char16_t>::value_type __c)
{
  v3 = this;
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v5 = __n - size;
    if (__n > size)
    {
      v4 = this->__r_.__value_.__l.__size_;
      v9 = this->__r_.__value_.__r.__words[2];
      v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v7 = HIBYTE(v9);
      goto LABEL_6;
    }

    this->__r_.__value_.__l.__size_ = __n;
    v3 = this->__r_.__value_.__r.__words[0];
LABEL_19:
    v13 = (v3 + 2 * __n);
    goto LABEL_43;
  }

  v5 = __n - v4;
  if (__n <= v4)
  {
    *(&this->__r_.__value_.__s + 23) = __n;
    goto LABEL_19;
  }

  v6 = 10;
  LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
LABEL_6:
  if (v6 - v4 < v5)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 >= v5 - v6 + v4)
    {
      if ((v7 & 0x80) != 0)
      {
        v10 = this->__r_.__value_.__r.__words[0];
      }

      if (v6 <= 0x3FFFFFFFFFFFFFF2)
      {
        v11 = v5 + v4;
        if (v5 + v4 <= 2 * v6)
        {
          v11 = 2 * v6;
        }

        if (v11 >= 0xB)
        {
          v14 = v11 | 3;
          if (v14 == 11)
          {
            v15 = 13;
          }

          else
          {
            v15 = v14 + 1;
          }

          if (v15 < 0)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }
        }
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = this;
  if ((v7 & 0x80) != 0)
  {
    v12 = this->__r_.__value_.__r.__words[0];
  }

  v16 = 0;
  v17 = vdupq_n_s64(v5 - 1);
  v18 = &v12->__r_.__value_.__s.__data_[v4 + 4];
  do
  {
    v19 = vdupq_n_s64(v16);
    v20 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_1DC522850)));
    if (vuzp1_s8(vuzp1_s16(v20, *v17.i8), *v17.i8).u8[0])
    {
      *(v18 - 4) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(v20, *&v17), *&v17).i8[1])
    {
      *(v18 - 3) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_1DC52F320)))), *&v17).i8[2])
    {
      *(v18 - 2) = 0;
      *(v18 - 1) = 0;
    }

    v21 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_1DC52F310)));
    if (vuzp1_s8(*&v17, vuzp1_s16(v21, *&v17)).i32[1])
    {
      *v18 = 0;
    }

    if (vuzp1_s8(*&v17, vuzp1_s16(v21, *&v17)).i8[5])
    {
      v18[1] = 0;
    }

    if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_1DC52F300))))).i8[6])
    {
      v18[2] = 0;
      v18[3] = 0;
    }

    v16 += 8;
    v18 += 8;
  }

  while (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) != v16);
  v22 = v4 + v5;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v22;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v22 & 0x7F;
  }

  v13 = (v12 + 2 * v22);
LABEL_43:
  v13->__r_.__value_.__s.__data_[0] = 0;
}

void sub_1DC49BFEC(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1DC49C14C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1DC49CD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a20, 8);

  _Block_object_dispose((v28 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2742(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC4A0FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  objc_destroyWeak((v69 + 72));
  objc_destroyWeak(&a36);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose((v70 - 256), 8);
  _Block_object_dispose((v70 - 208), 8);
  _Block_object_dispose((v70 - 160), 8);
  objc_destroyWeak((v70 - 112));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3316(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC4A4774(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1DC4A4F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__3566(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1DC4A69F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__460(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC4A6FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1DC4A7608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1DC4A82E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3717(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC4A8A58(void *a1, int a2)
{
  if (a2)
  {
    objc_destroyWeak((v3 + 40));
    if (a2 != 2)
    {
      objc_begin_catch(a1);
      JUMPOUT(0x1DC4A8970);
    }

    v7 = objc_begin_catch(a1);
    v11 = *(v2 + 40);
    v10 = *(v2 + 32);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Service [%@] hit an exception for handlerid: %@\nException:%@"];
    v9 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *(v4 - 64) = 136315394;
      *(v4 - 60) = "+[CDMServiceGraphNode initWithName:forHandler:usingFunction:withError:cancellationBlock:requestId:dataDispatcherContext:serviceMetricsArray:]_block_invoke_2";
      *(v4 - 52) = 2112;
      *(v4 - 50) = v8;
      _os_log_fault_impl(&dword_1DC287000, v9, OS_LOG_TYPE_FAULT, "%s [FAULT]%@", (v4 - 64), 0x16u);
    }

    objc_exception_rethrow();
  }

  JUMPOUT(0x1DC4A8B64);
}

void sub_1DC4A8B30(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1DC4A8A74);
  }

  JUMPOUT(0x1DC4A8B64);
}

void sub_1DC4A8B48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DC4A95C4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1DC4A9E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  objc_sync_exit(v12);

  _Unwind_Resume(a1);
}

void sub_1DC4AA7E4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1DC4B4C84()
{
  objc_end_catch();

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&v4);
  JUMPOUT(0x1DC4B4DB8);
}

void sub_1DC4B4CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a73 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DC4B4DA0);
}

void sub_1DC4B4CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a69);

  JUMPOUT(0x1DC4B4CF8);
}

void sub_1DC4B4D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  JUMPOUT(0x1DC4B4D9CLL);
}

void sub_1DC4B4D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a72);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a27);
  JUMPOUT(0x1DC4B4D88);
}

void sub_1DC4B4D4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::locale a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a19);
  std::ostringstream::~ostringstream(&a69);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a24);
  JUMPOUT(0x1DC4B4D88);
}

void sub_1DC4B4D5C()
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&v3);

  JUMPOUT(0x1DC4B4DB8);
}

void sub_1DC4B4D6C()
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&v2);

  JUMPOUT(0x1DC4B4DB8);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1DC4B503C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1E1297AB0](v1);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E1297A00](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1E1297A10](v20);
  return a1;
}

void sub_1DC4B530C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E1297A10](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1DC4B52E0);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1DC4B54D0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1E1297AB0](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x1E12976B0]();
    MEMORY[0x1E1297AF0](v3, 0x10A0C403D23BABBLL);
  }

  return a1;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1E1297AB0](a1 + 112);
  return a1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1E1297AB0](a1 + 128);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E1297A60](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0;
  v4 = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = a2;
  if ((a2 & 8) != 0)
  {
    *(a1 + 88) = v4;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4;
  }

  if ((a2 & 0x10) != 0)
  {
    *(a1 + 88) = v4;
    std::string::resize((a1 + 64), 0x16uLL, 0);
    v5 = *(a1 + 87);
    if (v5 < 0)
    {
      v5 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v5;
  }

  return a1;
}

void sub_1DC4B5884(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1DC4B61C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  objc_end_catch();

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a32);
  _Unwind_Resume(a1);
}

void sub_1DC4B61DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DC4B62C8);
}

void sub_1DC4B6218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a67);

  JUMPOUT(0x1DC4B6230);
}

void sub_1DC4B623C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  JUMPOUT(0x1DC4B62C4);
}

void sub_1DC4B6258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a70);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a25);
  JUMPOUT(0x1DC4B62B4);
}

void sub_1DC4B627C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a17);
  std::ostringstream::~ostringstream(&a67);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a22);
  JUMPOUT(0x1DC4B62B4);
}

void sub_1DC4B628C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a32);

  _Unwind_Resume(a1);
}

void sub_1DC4B6298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a32);

  _Unwind_Resume(a1);
}

void sub_1DC4BA020(_Unwind_Exception *a1)
{
  objc_sync_exit(v6);

  _Unwind_Resume(a1);
}

void sub_1DC4BA510(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

void sub_1DC4BACD0(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_1DC4BDE38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x3C0], 8);
  _Block_object_dispose(&STACK[0x3F0], 8);
  _Block_object_dispose(&STACK[0x420], 8);
  _Block_object_dispose(&STACK[0x450], 8);
  _Block_object_dispose(&STACK[0x480], 8);
  _Block_object_dispose(&STACK[0x4B0], 8);
  _Block_object_dispose(&STACK[0x4E0], 8);
  _Block_object_dispose(&STACK[0x510], 8);
  _Block_object_dispose(&STACK[0x540], 8);
  _Block_object_dispose(&STACK[0x570], 8);
  _Block_object_dispose(&STACK[0x5A0], 8);
  _Block_object_dispose((v2 - 256), 8);
  _Block_object_dispose((v2 - 208), 8);
  _Block_object_dispose((v2 - 160), 8);
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5026(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC4BF748(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1DC4BFEE4(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_1DC4C035C(_Unwind_Exception *a1)
{
  objc_sync_exit(v6);

  _Unwind_Resume(a1);
}

void sub_1DC4C0920(_Unwind_Exception *a1)
{
  v9 = v6;

  objc_sync_exit(v5);
  _Unwind_Resume(a1);
}

void sub_1DC4CA6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315138;
      *(&a9 + 4) = "+[SSUXPCUtils dispatchAsyncWithTransaction:block:]_block_invoke";
      _os_log_error_impl(&dword_1DC287000, v9, OS_LOG_TYPE_ERROR, "%s [ERR]: Hit exception when running block. The open OS transaction will still be ended.", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1DC4CA674);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DC4CF9F8(_Unwind_Exception *a1)
{
  objc_sync_exit(v5);

  _Unwind_Resume(a1);
}

void sub_1DC4D4F64(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_1DC4D6BA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC4D6CA0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1DC4D6DF4(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_1DC4D7694(_Unwind_Exception *a1)
{
  objc_sync_exit(v6);

  _Unwind_Resume(a1);
}

void sub_1DC4D7B84(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

void sub_1DC4D8434(_Unwind_Exception *a1)
{
  v9 = v4;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_1DC4D870C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1DC4D8A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v27 + 40));
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6456(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

os_log_t createLogForCategoryString(const char *category)
{
  v1 = os_log_create("com.apple.siri.cdm", category);

  return v1;
}

uint64_t __CDMOSLoggerForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.siri.cdm", "CDM");
  v1 = CDMOSLoggerForCategory::logObjects[0];
  CDMOSLoggerForCategory::logObjects[0] = v0;

  v2 = os_log_create("com.apple.siri.cdm", "DAG");
  v3 = qword_1EDAC9680;
  qword_1EDAC9680 = v2;

  v4 = os_log_create("com.apple.siri.cdm", "ServiceCenter");
  v5 = qword_1EDAC9688;
  qword_1EDAC9688 = v4;

  v6 = os_log_create("com.apple.siri.cdm", "Common");
  v7 = qword_1EDAC9678;
  qword_1EDAC9678 = v6;

  qword_1EDAC9690 = os_log_create("com.apple.siri.cdm", "CDM-External");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DC4E2178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__7031(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1DC4E49D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DC4E6150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v24 = v20;

  _Unwind_Resume(a1);
}

void sub_1DC4E7F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v24 = v20;

  _Unwind_Resume(a1);
}

void sub_1DC4E8F78(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7976(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC4F3474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  marisa::Agent::~Agent(&a9);

  _Unwind_Resume(a1);
}

void sub_1DC4F3648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v16 = v11;
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInt:v16];
      *(v12 - 48) = 136315394;
      *(v12 - 44) = "[OVMarisaTrie reverseLookupRow:]";
      *(v12 - 36) = 2114;
      *(v12 - 34) = v15;
      _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: Exception: keyID out of trie bounds. Returning nil key. {keyID: %{public}@}", (v12 - 48), 0x16u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DC4F3600);
  }

  marisa::Agent::~Agent(&a11);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void sub_1DC4F3BC8(_Unwind_Exception *a1, void *a2, void *a3, ...)
{
  va_start(va, a3);

  marisa::Agent::~Agent(va);
  _Unwind_Resume(a1);
}

void sub_1DC4F3ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  marisa::Agent::~Agent(&v24);

  _Unwind_Resume(a1);
}

void sub_1DC4F4184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  marisa::Agent::~Agent(&v24);

  _Unwind_Resume(a1);
}

void sub_1DC4F43B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1DC4F472C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1DC4F48C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC4F4AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8551(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void marisa::Keyset::~Keyset(marisa::Keyset *this)
{
  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(this + 6);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(this + 3);

  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(this);
}

void sub_1DC4F5FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CDMMarisaTrie;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DC4F872C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v27)
  {
    (*(*v27 + 16))(v27);
  }

  if (v26)
  {
    (*(*v26 + 16))(v26);
  }

  if (*(v28 - 81) < 0)
  {
    operator delete(*(v28 - 104));
  }

  _Unwind_Resume(a1);
}

void sub_1DC4F8E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1DC4F92F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, __int128 buf)
{
  if (a2 == 1)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = (*(*v31 + 16))(v31);
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "+[CDMTokenizer registerMorphunAssetsPathForLocale:withPath:]";
      WORD6(buf) = 2080;
      *(v28 + 14) = v33;
      _os_log_impl(&dword_1DC287000, v32, OS_LOG_TYPE_INFO, "%s [WARN]: Exception caught calling ::morphun::resources::DataRegistrationService::registerDataPathForLocale. Catching the exception, logging it, and continuing execution. Exception: %s", &buf, 0x16u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DC4F92B4);
  }

  _Unwind_Resume(a1);
}

void sub_1DC4FB2F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](v24);

  _Unwind_Resume(a1);
}

uint64_t appName(void)
{
  {
    operator new();
  }

  return appName(void)::value;
}

void sub_1DC4FB3D0(_Unwind_Exception *a1)
{
  MEMORY[0x1E1297AF0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void sub_1DC4FB6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (*(v51 - 89) < 0)
  {
    operator delete(*(v51 - 112));
  }

  if (a35 == 1 && a34 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  MEMORY[0x1E1297AF0](v50, 0x1012C40071C2685);

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<siri::ontology::UsoIdentifier>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 72) == 1 && *(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1E1297AF0](v2, 0x1012C40071C2685);
  }

  return a1;
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_1DC4FB88C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DC4FBAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, uint64_t a22)
{
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a22);

  _Unwind_Resume(a1);
}

void sub_1DC4FBD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, uint64_t a22)
{
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a22);

  _Unwind_Resume(a1);
}

void sub_1DC4FD12C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_1DC4FD998(_Unwind_Exception *a1)
{
  MEMORY[0x1E1297AF0](v2, 0x10A0C403D23BABBLL);

  _Unwind_Resume(a1);
}

void sub_1DC4FE0AC(_Unwind_Exception *a1)
{
  MEMORY[0x1E1297AF0](v2, 0x10A0C403D23BABBLL);

  _Unwind_Resume(a1);
}

void sub_1DC4FE3D0(_Unwind_Exception *a1)
{
  MEMORY[0x1E1297AF0](v2, 0x10A0C403D23BABBLL);

  _Unwind_Resume(a1);
}

void sub_1DC4FE544(_Unwind_Exception *a1)
{
  MEMORY[0x1E1297AF0](v2, 0x10A0C403D23BABBLL);

  _Unwind_Resume(a1);
}

void sub_1DC4FE6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, uint64_t a18)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a18);

  _Unwind_Resume(a1);
}

void sub_1DC4FE8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, uint64_t a18)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a18);

  _Unwind_Resume(a1);
}

void sub_1DC4FEB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, uint64_t a22)
{
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a22);

  _Unwind_Resume(a1);
}

void sub_1DC4FED3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, uint64_t a18)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a18);

  _Unwind_Resume(a1);
}

void sub_1DC4FEFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, uint64_t a22)
{
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a22);

  _Unwind_Resume(a1);
}

void sub_1DC4FF28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, uint64_t a22)
{
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a22);

  _Unwind_Resume(a1);
}

void sub_1DC4FF52C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, uint64_t a22)
{
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a22);

  _Unwind_Resume(a1);
}

void sub_1DC4FF800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, uint64_t a22)
{
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a22);

  _Unwind_Resume(a1);
}

void sub_1DC4FFAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, uint64_t a22)
{
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a22);

  _Unwind_Resume(a1);
}

void sub_1DC4FFDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, uint64_t a22)
{
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a22);

  _Unwind_Resume(a1);
}

void sub_1DC505940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a20);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  _Unwind_Resume(a1);
}

void sub_1DC506E18(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC507B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  objc_destroyWeak((v32 + 64));
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v33 - 152), 8);
  objc_destroyWeak((v33 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10302(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC509FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1DC50E1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC50E5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::UsoEntityNode::addIdentifier()
{
  return MEMORY[0x1EEE3EF58]();
}

{
  return MEMORY[0x1EEE3EF60]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}