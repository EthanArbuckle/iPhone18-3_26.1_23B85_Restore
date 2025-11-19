uint64_t getEnumTagSinglePayload for PreferredType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC7)
  {
    if (a2 + 57 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 57) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 58;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3A;
  v5 = v6 - 58;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreferredType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 57) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC6)
  {
    v6 = ((a2 - 199) >> 8) + 1;
    *result = a2 + 57;
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
          *result = a2 + 57;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE7)
  {
    if (a2 + 25 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 25) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 26;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v5 = v6 - 26;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SourceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainsType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContainsType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtractedType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExtractedType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OrderByTime(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_112_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SortOrder(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_112_6(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StructuredQueryEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StructuredQueryEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined copy of Person?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_42()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);

  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t OUTLINED_FUNCTION_6_15(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return DisplayRepresentation.init(title:subtitle:image:)();
}

__n128 *OUTLINED_FUNCTION_11_21(__n128 *result, __n128 a2)
{
  *(v4 - 88) = result;
  result[1] = a2;
  v5 = *(v2 + 56);
  result->n128_u8[v3] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_11()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_44_14@<X0>(char a1@<W8>)
{
  *v1 = a1;

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_49_14()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_50_11()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_51_10()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_62_8()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_63_9@<X0>(char a1@<W8>)
{
  *v1 = a1;

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_65_11()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_66_9()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_70_7()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_74_12()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_75_8()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_76_8()
{

  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t OUTLINED_FUNCTION_78_10()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_79_9()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_80_8()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_81_11()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_82_11()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_83_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_91_6()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_106_7()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_108_5()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_110_7()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_112_9()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_117_7()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_119_3()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_122_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.setter();
}

void OUTLINED_FUNCTION_125_5()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_126_7()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_129_7()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_130_6()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_132_7()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_133_6()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_134_5()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_136_6()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_137_2()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_139_5()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

void OUTLINED_FUNCTION_143_5()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_144_5()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_145_3()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_148_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return type metadata accessor for DisplayRepresentation.Image();
}

__n128 *OUTLINED_FUNCTION_152_3(__n128 *result, __n128 a2)
{
  *(v2 - 88) = result;
  result[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_155_5()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_162_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_169_4()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_170_4()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_176_4()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_180_3(unint64_t *a1)
{

  return lazy protocol witness table accessor for type [String] and conformance <A> [A](a1);
}

uint64_t OUTLINED_FUNCTION_182_4(uint64_t a1)
{
  *(v1 + v2) = a1;
  *(v3 - 80) = *(v3 - 96);

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_190_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 - 152) + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_191_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_193_3(unint64_t *a1)
{

  return lazy protocol witness table accessor for type [String] and conformance <A> [A](a1);
}

uint64_t OUTLINED_FUNCTION_197_4()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_200_3()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_208_2()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_213_2()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_215_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_218_2()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_219_2()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_220_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_221_2()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_222_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_223_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_224_2()
{
  v2 = *(v0 - 88);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t OUTLINED_FUNCTION_225_2()
{

  return EntityProperty<>.init(title:)();
}

void OUTLINED_FUNCTION_231_1()
{

  JUMPOUT(0x25F89F6C0);
}

void OUTLINED_FUNCTION_232_0()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_237_2()
{

  return EntityProperty<>.init(title:)();
}

void OUTLINED_FUNCTION_238_2()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_249_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_250_2()
{
}

void OUTLINED_FUNCTION_269_0()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_270_0()
{

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_273_0()
{
}

uint64_t OUTLINED_FUNCTION_274_0()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_275_0()
{

  return type metadata accessor for LocationQueryEntity(0);
}

uint64_t OUTLINED_FUNCTION_276_0()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_278_0(unsigned __int8 *a1)
{
  v2 = *a1;

  return type metadata accessor for StructuredQueryEntity(0);
}

uint64_t OUTLINED_FUNCTION_279()
{
}

uint64_t OUTLINED_FUNCTION_280_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_281()
{
  v2 = *(v0 - 168);
}

uint64_t OUTLINED_FUNCTION_282(unint64_t *a1)
{

  return lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(a1, v1, v2);
}

void OUTLINED_FUNCTION_292()
{
  v2 = *(v0 - 184);
  v1 = *(v0 - 176);
  v3 = *(v0 - 168);
}

uint64_t OUTLINED_FUNCTION_320()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_321()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_322()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_323()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_324()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_326()
{
  *(v2 - 144) = v1;
  *(v2 - 136) = v0;

  return Person.debugDescription.getter();
}

uint64_t OUTLINED_FUNCTION_327@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_328()
{
  v2 = *(v0 - 176);
}

uint64_t OUTLINED_FUNCTION_329(uint64_t a1)
{

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1, v1, 0);
}

void OUTLINED_FUNCTION_330()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_331()
{

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_332(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  return type metadata accessor for PersonQueryEntity(0);
}

uint64_t OUTLINED_FUNCTION_333()
{

  return outlined consume of Person?(v0);
}

id CardDisplayable.card.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SFCard();
  v4 = (*(a2 + 32))(a1, a2);
  return SFCard.init(data:)(v4, v5);
}

void CardDisplayable.card.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  if (a1)
  {
    a1 = SFCard.data.getter();
  }

  else
  {
    v5 = 0xF000000000000000;
  }

  (*(a3 + 40))(a1, v5, a2, a3);
}

uint64_t protocol witness for CardSetable.card.modify in conformance IdCardEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  type metadata accessor for SFCard();
  v4 = *(v2 + 24);
  v3 = *(v2 + 32);
  v5 = OUTLINED_FUNCTION_37_5();
  outlined copy of Data?(v5, v6);
  v7 = OUTLINED_FUNCTION_37_5();
  *v1 = SFCard.init(data:)(v7, v8);
  return OUTLINED_FUNCTION_58_2();
}

void protocol witness for CardSetable.card.modify in conformance IdCardEntity(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6_6(a1);
  if (v6)
  {
    v11 = v5;
    if (v5)
    {
      v7 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v9 = *(v1 + 8);
    outlined consume of Data?(*(v9 + 24), *(v9 + 32));
    *(v9 + 24) = v2;
    *(v9 + 32) = v3;
  }

  else
  {
    if (v5)
    {
      v8 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v10 = *(v1 + 8);
    outlined consume of Data?(*(v10 + 24), *(v10 + 32));
    *(v10 + 24) = v2;
    *(v10 + 32) = v3;
  }
}

uint64_t CardDisplayable.card.modify(id *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = CardDisplayable.card.getter(a2, a3);
  return OUTLINED_FUNCTION_58_2();
}

void CardDisplayable.card.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {
    v6 = v4;
    CardDisplayable.card.setter(v4, v5, v2);
  }

  else
  {
    CardDisplayable.card.setter(*a1, v5, v2);
  }
}

uint64_t protocol witness for CardSetable.card.modify in conformance PersonalCardEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  v4 = *(v2 + 176);
  v3 = *(v2 + 184);
  type metadata accessor for SFCard();
  *v1 = OUTLINED_FUNCTION_0_43();
  return OUTLINED_FUNCTION_58_2();
}

void protocol witness for CardSetable.card.modify in conformance PersonalCardEntity(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6_6(a1);
  if (v6)
  {
    v11 = v5;
    if (v5)
    {
      v7 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v9 = *(v1 + 8);
    outlined consume of Data?(*(v9 + 176), *(v9 + 184));
    *(v9 + 176) = v2;
    *(v9 + 184) = v3;
  }

  else
  {
    if (v5)
    {
      v8 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v10 = *(v1 + 8);
    outlined consume of Data?(*(v10 + 176), *(v10 + 184));
    *(v10 + 176) = v2;
    *(v10 + 184) = v3;
  }
}

uint64_t CardDisplayable.displayRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  v6 = OUTLINED_FUNCTION_114(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v46 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  v16 = OUTLINED_FUNCTION_114(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v21 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v22 = OUTLINED_FUNCTION_114(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = type metadata accessor for LocalizedStringResource();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v48 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
  v33._countAndFlagsBits = (*(a2 + 24))(a1, a2);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v33);

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
  LocalizedStringResource.init(stringInterpolation:)();
  v35 = (*(*(*(a2 + 16) + 8) + 8))(a1);
  if (v35)
  {
    v36 = v35;
    SFCard.snippetPluginModel.getter(v20);

    v37 = type metadata accessor for RGPluginModel();
    if (__swift_getEnumTagSinglePayload(v20, 1, v37) == 1)
    {
      outlined destroy of RGPluginModel?(v20);
    }

    else
    {
      lazy protocol witness table accessor for type RGPluginModel and conformance RGPluginModel();
      SnippetPluginModel.data.getter();
      v39 = v38;
      (*(*(v37 - 8) + 8))(v20, v37);
      if (v39 >> 60 != 15)
      {
        v44 = OUTLINED_FUNCTION_7_22();
        v45(v44);
        static RGPluginModel.bundleName.getter();
        DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();
        return (*(v26 + 8))(v31, v25);
      }
    }
  }

  v40 = OUTLINED_FUNCTION_7_22();
  v41(v40);
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v25);
  v42 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v42);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (*(v26 + 8))(v31, v25);
}

id protocol witness for CardRepresentable.card.getter in conformance PersonalCardEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_8_22(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0xC0uLL);
  return specialized CardDisplayable.card.getter();
}

uint64_t protocol witness for CardSetable.card.modify in conformance BusinessCardEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  v4 = *(v2 + 80);
  v3 = *(v2 + 88);
  type metadata accessor for SFCard();
  *v1 = OUTLINED_FUNCTION_0_43();
  return OUTLINED_FUNCTION_58_2();
}

void protocol witness for CardSetable.card.modify in conformance BusinessCardEntity(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6_6(a1);
  if (v6)
  {
    v11 = v5;
    if (v5)
    {
      v7 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v9 = *(v1 + 8);
    outlined consume of Data?(*(v9 + 80), *(v9 + 88));
    *(v9 + 80) = v2;
    *(v9 + 88) = v3;
  }

  else
  {
    if (v5)
    {
      v8 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v10 = *(v1 + 8);
    outlined consume of Data?(*(v10 + 80), *(v10 + 88));
    *(v10 + 80) = v2;
    *(v10 + 88) = v3;
  }
}

id protocol witness for CardRepresentable.card.getter in conformance BusinessCardEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_8_22(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x60uLL);
  return specialized CardDisplayable.card.getter();
}

uint64_t protocol witness for CardSetable.card.modify in conformance EventEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  type metadata accessor for SFCard();
  v4 = *(v2 + 72);
  v3 = *(v2 + 80);
  v5 = OUTLINED_FUNCTION_37_5();
  outlined copy of Data?(v5, v6);
  v7 = OUTLINED_FUNCTION_37_5();
  *v1 = SFCard.init(data:)(v7, v8);
  return OUTLINED_FUNCTION_58_2();
}

void protocol witness for CardSetable.card.modify in conformance EventEntity(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6_6(a1);
  if (v6)
  {
    v11 = v5;
    if (v5)
    {
      v7 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v9 = *(v1 + 8);
    outlined consume of Data?(*(v9 + 72), *(v9 + 80));
    *(v9 + 72) = v2;
    *(v9 + 80) = v3;
  }

  else
  {
    if (v5)
    {
      v8 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v10 = *(v1 + 8);
    outlined consume of Data?(*(v10 + 72), *(v10 + 80));
    *(v10 + 72) = v2;
    *(v10 + 80) = v3;
  }
}

uint64_t protocol witness for CardSetable.card.modify in conformance FlightReservationEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  v4 = *(v2 + 200);
  v3 = *(v2 + 208);
  type metadata accessor for SFCard();
  *v1 = OUTLINED_FUNCTION_0_43();
  return OUTLINED_FUNCTION_58_2();
}

void protocol witness for CardSetable.card.modify in conformance FlightReservationEntity(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6_6(a1);
  if (v6)
  {
    v11 = v5;
    if (v5)
    {
      v7 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v9 = *(v1 + 8);
    outlined consume of Data?(*(v9 + 200), *(v9 + 208));
    *(v9 + 200) = v2;
    *(v9 + 208) = v3;
  }

  else
  {
    if (v5)
    {
      v8 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v10 = *(v1 + 8);
    outlined consume of Data?(*(v10 + 200), *(v10 + 208));
    *(v10 + 200) = v2;
    *(v10 + 208) = v3;
  }
}

id protocol witness for CardRepresentable.card.getter in conformance FlightReservationEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_23(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xD8uLL);
  return specialized CardDisplayable.card.getter();
}

uint64_t protocol witness for CardSetable.card.modify in conformance HotelReservationEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  v4 = *(v2 + 112);
  v3 = *(v2 + 120);
  type metadata accessor for SFCard();
  *v1 = OUTLINED_FUNCTION_0_43();
  return OUTLINED_FUNCTION_58_2();
}

uint64_t protocol witness for CardRepresentable.card.getter in conformance HotelReservationEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_8_22(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  v10 = memcpy(v8, v9, 0x80uLL);
  return specialized CardDisplayable.card.getter(v10);
}

uint64_t protocol witness for CardSetable.card.modify in conformance RestaurantReservationEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  v4 = *(v2 + 112);
  v3 = *(v2 + 120);
  type metadata accessor for SFCard();
  *v1 = OUTLINED_FUNCTION_0_43();
  return OUTLINED_FUNCTION_58_2();
}

void protocol witness for CardSetable.card.modify in conformance HotelReservationEntity(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6_6(a1);
  if (v6)
  {
    v11 = v5;
    if (v5)
    {
      v7 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v9 = *(v1 + 8);
    outlined consume of Data?(*(v9 + 112), *(v9 + 120));
    *(v9 + 112) = v2;
    *(v9 + 120) = v3;
  }

  else
  {
    if (v5)
    {
      v8 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v10 = *(v1 + 8);
    outlined consume of Data?(*(v10 + 112), *(v10 + 120));
    *(v10 + 112) = v2;
    *(v10 + 120) = v3;
  }
}

uint64_t protocol witness for CardSetable.card.modify in conformance TicketedTransportationEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  v4 = *(v2 + 96);
  v3 = *(v2 + 104);
  type metadata accessor for SFCard();
  *v1 = OUTLINED_FUNCTION_0_43();
  return OUTLINED_FUNCTION_58_2();
}

void protocol witness for CardSetable.card.modify in conformance TicketedTransportationEntity(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6_6(a1);
  if (v6)
  {
    v11 = v5;
    if (v5)
    {
      v7 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v9 = *(v1 + 8);
    outlined consume of Data?(*(v9 + 96), *(v9 + 104));
    *(v9 + 96) = v2;
    *(v9 + 104) = v3;
  }

  else
  {
    if (v5)
    {
      v8 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v10 = *(v1 + 8);
    outlined consume of Data?(*(v10 + 96), *(v10 + 104));
    *(v10 + 96) = v2;
    *(v10 + 104) = v3;
  }
}

id protocol witness for CardRepresentable.card.getter in conformance TicketedTransportationEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_8_22(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0x70uLL);
  return specialized CardDisplayable.card.getter();
}

uint64_t protocol witness for CardSetable.card.modify in conformance VehicleReservationEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  v4 = *(v2 + 136);
  v3 = *(v2 + 144);
  type metadata accessor for SFCard();
  *v1 = OUTLINED_FUNCTION_0_43();
  return OUTLINED_FUNCTION_58_2();
}

void protocol witness for CardSetable.card.modify in conformance VehicleReservationEntity(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6_6(a1);
  if (v6)
  {
    v11 = v5;
    if (v5)
    {
      v7 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v9 = *(v1 + 8);
    outlined consume of Data?(*(v9 + 136), *(v9 + 144));
    *(v9 + 136) = v2;
    *(v9 + 144) = v3;
  }

  else
  {
    if (v5)
    {
      v8 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v10 = *(v1 + 8);
    outlined consume of Data?(*(v10 + 136), *(v10 + 144));
    *(v10 + 136) = v2;
    *(v10 + 144) = v3;
  }
}

id protocol witness for CardRepresentable.card.getter in conformance VehicleReservationEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_23(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x98uLL);
  return specialized CardDisplayable.card.getter();
}

uint64_t protocol witness for CardSetable.card.modify in conformance TicketedShowEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  v4 = *(v2 + 120);
  v3 = *(v2 + 128);
  type metadata accessor for SFCard();
  *v1 = OUTLINED_FUNCTION_0_43();
  return OUTLINED_FUNCTION_58_2();
}

uint64_t protocol witness for CardRepresentable.card.getter in conformance TicketedShowEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_23(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  v10 = memcpy(v8, v9, 0x88uLL);
  return specialized CardDisplayable.card.getter(v10);
}

uint64_t protocol witness for CardSetable.card.modify in conformance ShippingOrderEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  v4 = *(v2 + 224);
  v3 = *(v2 + 232);
  type metadata accessor for SFCard();
  *v1 = OUTLINED_FUNCTION_0_43();
  return OUTLINED_FUNCTION_58_2();
}

void protocol witness for CardSetable.card.modify in conformance ShippingOrderEntity(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6_6(a1);
  if (v6)
  {
    v11 = v5;
    if (v5)
    {
      v7 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v9 = *(v1 + 8);
    outlined consume of Data?(*(v9 + 224), *(v9 + 232));
    *(v9 + 224) = v2;
    *(v9 + 232) = v3;
  }

  else
  {
    if (v5)
    {
      v8 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v10 = *(v1 + 8);
    outlined consume of Data?(*(v10 + 224), *(v10 + 232));
    *(v10 + 224) = v2;
    *(v10 + 232) = v3;
  }
}

id protocol witness for CardRepresentable.card.getter in conformance ShippingOrderEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_8_22(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  memcpy(v8, v9, 0xF0uLL);
  return specialized CardDisplayable.card.getter();
}

uint64_t protocol witness for CardSetable.card.modify in conformance GenericEventEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  v4 = *(v2 + 120);
  v3 = *(v2 + 128);
  type metadata accessor for SFCard();
  *v1 = OUTLINED_FUNCTION_0_43();
  return OUTLINED_FUNCTION_58_2();
}

void protocol witness for CardSetable.card.modify in conformance TicketedShowEntity(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6_6(a1);
  if (v6)
  {
    v11 = v5;
    if (v5)
    {
      v7 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v9 = *(v1 + 8);
    outlined consume of Data?(*(v9 + 120), *(v9 + 128));
    *(v9 + 120) = v2;
    *(v9 + 128) = v3;
  }

  else
  {
    if (v5)
    {
      v8 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v10 = *(v1 + 8);
    outlined consume of Data?(*(v10 + 120), *(v10 + 128));
    *(v10 + 120) = v2;
    *(v10 + 128) = v3;
  }
}

uint64_t protocol witness for CardSetable.card.modify in conformance MediaEntity(uint64_t a1)
{
  OUTLINED_FUNCTION_3_30(a1);
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  type metadata accessor for SFCard();
  *v1 = OUTLINED_FUNCTION_0_43();
  return OUTLINED_FUNCTION_58_2();
}

void protocol witness for CardSetable.card.modify in conformance MediaEntity(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6_6(a1);
  if (v6)
  {
    v11 = v5;
    if (v5)
    {
      v7 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v9 = *(v1 + 8);
    outlined consume of Data?(*(v9 + 32), *(v9 + 40));
    *(v9 + 32) = v2;
    *(v9 + 40) = v3;
  }

  else
  {
    if (v5)
    {
      v8 = v5;
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_187_1();
    }

    else
    {
      OUTLINED_FUNCTION_103_4();
    }

    v10 = *(v1 + 8);
    outlined consume of Data?(*(v10 + 32), *(v10 + 40));
    *(v10 + 32) = v2;
    *(v10 + 40) = v3;
  }
}

id protocol witness for CardRepresentable.card.getter in conformance MediaEntity()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return specialized CardDisplayable.card.getter();
}

uint64_t outlined destroy of RGPluginModel?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id key path getter for CardDisplayable.card : <A>A@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = CardDisplayable.card.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void key path setter for CardDisplayable.card : <A>A(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = *a1;
  CardDisplayable.card.setter(v6, v4, v5);
}

id OUTLINED_FUNCTION_0_43()
{
  outlined copy of Data?(v1, v0);

  return SFCard.init(data:)(v1, v0);
}

uint64_t SearchCATContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = OUTLINED_FUNCTION_17(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v18 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v18);
  DisplayRepresentation.init(title:subtitle:image:)();
  v19 = type metadata accessor for SearchCATContext();
  v20 = v19[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_8_23();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v20) = EntityProperty<>.init(title:)();
  v21 = v19[6];
  OUTLINED_FUNCTION_7_23();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v21) = EntityProperty<>.init(title:)();
  v22 = v19[7];
  OUTLINED_FUNCTION_6_16();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v22) = EntityProperty<>.init(title:)();
  v23 = v19[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbSgGMd, &_s10AppIntents14EntityPropertyCySbSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  result = EntityProperty<>.init(title:)();
  *(a1 + v23) = result;
  return result;
}

uint64_t type metadata accessor for SearchCATContext()
{
  result = type metadata singleton initialization cache for SearchCATContext;
  if (!type metadata singleton initialization cache for SearchCATContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchCATContext.deviceClass.setter()
{
  v0 = OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_17_9(v0);
  return EntityProperty.wrappedValue.setter();
}

uint64_t SearchCATContext.deviceIsLocked.setter()
{
  v0 = type metadata accessor for SearchCATContext();
  OUTLINED_FUNCTION_216_2(v0);
  return EntityProperty.wrappedValue.setter();
}

uint64_t SearchCATContext.interfaceIdiom.setter()
{
  v0 = OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_11_9(v0);
  return EntityProperty.wrappedValue.setter();
}

uint64_t IntentSystemContext.AssistantContext.InteractionMode.asString.getter()
{
  v1 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  (*(v4 + 16))(v8 - v7, v0, v1);
  v9 = *(v4 + 88);
  v10 = OUTLINED_FUNCTION_107();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277CBA0B8])
  {
    return 0x4679616C70736964;
  }

  if (v12 == *MEMORY[0x277CBA0A8])
  {
    return 0x4F79616C70736964;
  }

  if (v12 == *MEMORY[0x277CBA0C0])
  {
    return 0x6C6E4F6563696F76;
  }

  if (v12 == *MEMORY[0x277CBA0B0])
  {
    return 0x726F466563696F76;
  }

  v14 = *(v4 + 8);
  v15 = OUTLINED_FUNCTION_107();
  v16(v15);
  return 0;
}

uint64_t SearchCATContext.interactionMode.setter()
{
  v0 = OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_10_9(v0);
  return EntityProperty.wrappedValue.setter();
}

uint64_t static SearchCATContext.overrideCATContext()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  type metadata accessor for SearchCATContext();
  v8 = OUTLINED_FUNCTION_11_1();
  __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  result = AFIsInternalInstall();
  if (result)
  {
    type metadata accessor for NSUserDefaults();
    result = static NSUserDefaults.searchCATContextOverride.getter();
    if (v12)
    {
      static SearchCATContext.loadFromJson(_:)(v7);

      outlined destroy of IntentApplication?(a1, &_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
      return outlined init with take of SearchCATContext?(v7, a1);
    }
  }

  return result;
}

uint64_t SearchCATContext.interfaceIdiom.getter()
{
  v0 = type metadata accessor for SearchCATContext();
  OUTLINED_FUNCTION_11_9(v0);
  EntityProperty.wrappedValue.getter();
  return v2;
}

uint64_t static SearchCATContext.loadFromJson(_:)@<X0>(uint64_t a1@<X8>)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for SearchCATContext();
  v3 = OUTLINED_FUNCTION_17(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  v15 = type metadata accessor for String.Encoding();
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  v23 = v22 - v21;
  v24 = OUTLINED_FUNCTION_11_1();
  __swift_storeEnumTagSinglePayload(v24, v25, 1, v2);
  static String.Encoding.utf8.getter();
  v26 = String.data(using:allowLossyConversion:)();
  v28 = v27;
  (*(v18 + 8))(v23, v15);
  if (v28 >> 60 == 15)
  {
    v29 = Dictionary.init(dictionaryLiteral:)();
    goto LABEL_8;
  }

  v30 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v58 = 0;
  v32 = [v30 JSONObjectWithData:isa options:0 error:&v58];

  if (v32)
  {
    v33 = v58;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (OUTLINED_FUNCTION_3_31())
    {
      outlined consume of Data?(v26, v28);
      v29 = v56;
      goto LABEL_8;
    }
  }

  else
  {
    v34 = v58;
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v29 = Dictionary.init(dictionaryLiteral:)();
  outlined consume of Data?(v26, v28);
LABEL_8:
  OUTLINED_FUNCTION_8_23();
  specialized Dictionary.subscript.getter(v29, &v58);
  if (v59)
  {
    if ((OUTLINED_FUNCTION_3_31() & 1) == 0)
    {
LABEL_19:

      goto LABEL_20;
    }

    v37 = v56;
    v36 = v57;
    OUTLINED_FUNCTION_7_23();
    specialized Dictionary.subscript.getter(v29, &v58);
    if (v59)
    {
      if ((OUTLINED_FUNCTION_3_31() & 1) == 0)
      {
LABEL_18:

        goto LABEL_19;
      }

      v39 = v56;
      v38 = v57;
      OUTLINED_FUNCTION_6_16();
      specialized Dictionary.subscript.getter(v29, &v58);

      if (v59)
      {
        if (OUTLINED_FUNCTION_3_31())
        {
          v41 = v56;
          v40 = v57;
          SearchCATContext.init()(v14);
          __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
          v42 = OUTLINED_FUNCTION_107();
          outlined assign with take of SearchCATContext?(v42, v43);
          v44 = OUTLINED_FUNCTION_11_1();
          if (__swift_getEnumTagSinglePayload(v44, v45, v2))
          {
          }

          else
          {
            outlined init with copy of SearchCATContext(a1, v8);
            v48 = *(v8 + v2[5]);
            *&v58 = v37;
            *(&v58 + 1) = v36;
            EntityProperty.wrappedValue.setter();
            outlined destroy of SearchCATContext(v8);
          }

          v49 = OUTLINED_FUNCTION_11_1();
          if (__swift_getEnumTagSinglePayload(v49, v50, v2))
          {
          }

          else
          {
            outlined init with copy of SearchCATContext(a1, v8);
            v51 = *(v8 + v2[7]);
            *&v58 = v41;
            *(&v58 + 1) = v40;
            EntityProperty.wrappedValue.setter();
            outlined destroy of SearchCATContext(v8);
          }

          v52 = OUTLINED_FUNCTION_11_1();
          if (!__swift_getEnumTagSinglePayload(v52, v53, v2))
          {
            outlined init with copy of SearchCATContext(a1, v8);
            v54 = *(v8 + v2[6]);
            *&v58 = v39;
            *(&v58 + 1) = v38;
            EntityProperty.wrappedValue.setter();
            result = outlined destroy of SearchCATContext(v8);
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }
  }

  result = outlined destroy of IntentApplication?(&v58, &_sypSgMd, &_sypSgMR);
LABEL_20:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t outlined init with take of SearchCATContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t String.asDictionary.getter()
{
  v25[4] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for String.Encoding();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  static String.Encoding.utf8.getter();
  String.data(using:allowLossyConversion:)();
  v10 = v9;
  (*(v3 + 8))(v8, v0);
  if (v10 >> 60 != 15)
  {
    v12 = objc_opt_self();
    OUTLINED_FUNCTION_107();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v25[0] = 0;
    v14 = [v12 JSONObjectWithData:isa options:0 error:v25];

    if (v14)
    {
      v15 = v25[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        v16 = OUTLINED_FUNCTION_107();
        outlined consume of Data?(v16, v17);
        v11 = v24;
        goto LABEL_8;
      }
    }

    else
    {
      v18 = v25[0];
      v19 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v11 = Dictionary.init(dictionaryLiteral:)();
    v20 = OUTLINED_FUNCTION_107();
    outlined consume of Data?(v20, v21);
    goto LABEL_8;
  }

  v11 = Dictionary.init(dictionaryLiteral:)();
LABEL_8:
  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t outlined assign with take of SearchCATContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SearchCATContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCATContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchCATContext(uint64_t a1)
{
  v2 = type metadata accessor for SearchCATContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchCATContext.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_44();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchCATContext.typeDisplayRepresentation);
}

uint64_t static SearchCATContext.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_44();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchCATContext.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchCATContext.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_44();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchCATContext.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchCATContext.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_44();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchCATContext.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchCATContext.typeDisplayRepresentation : SearchCATContext.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchCATContext.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchCATContext.typeDisplayRepresentation : SearchCATContext.Type(uint64_t a1)
{
  v2 = SearchCATContext.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t SearchCATContext.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DisplayRepresentation();
  v4 = OUTLINED_FUNCTION_17(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t SearchCATContext.deviceClass.getter()
{
  v0 = type metadata accessor for SearchCATContext();
  OUTLINED_FUNCTION_17_9(v0);
  EntityProperty.wrappedValue.getter();
  return v2;
}

uint64_t (*SearchCATContext.deviceClass.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_10_21(v2);
  OUTLINED_FUNCTION_17_9(v3);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t SearchCATContext.$deviceClass.getter()
{
  v0 = type metadata accessor for SearchCATContext();
  OUTLINED_FUNCTION_17_9(v0);
  return EntityProperty.projectedValue.getter();
}

uint64_t (*SearchCATContext.interfaceIdiom.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_10_21(v2);
  OUTLINED_FUNCTION_11_9(v3);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATContext.$interfaceIdiom.getter()
{
  v0 = type metadata accessor for SearchCATContext();
  OUTLINED_FUNCTION_11_9(v0);
  return EntityProperty.projectedValue.getter();
}

uint64_t SearchCATContext.interactionMode.getter()
{
  v0 = type metadata accessor for SearchCATContext();
  OUTLINED_FUNCTION_10_9(v0);
  EntityProperty.wrappedValue.getter();
  return v2;
}

uint64_t key path setter for SearchCATContext.deviceClass : SearchCATContext(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t (*SearchCATContext.interactionMode.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_10_21(v2);
  OUTLINED_FUNCTION_10_9(v3);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATContext.$interactionMode.getter()
{
  v0 = type metadata accessor for SearchCATContext();
  OUTLINED_FUNCTION_10_9(v0);
  return EntityProperty.projectedValue.getter();
}

uint64_t SearchCATContext.deviceIsLocked.getter()
{
  v0 = type metadata accessor for SearchCATContext();
  OUTLINED_FUNCTION_216_2(v0);
  EntityProperty.wrappedValue.getter();
  return v2;
}

uint64_t (*SearchCATContext.deviceIsLocked.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_10_21(v2);
  OUTLINED_FUNCTION_216_2(v3);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATContext.$deviceIsLocked.getter()
{
  v0 = type metadata accessor for SearchCATContext();
  OUTLINED_FUNCTION_216_2(v0);
  return EntityProperty.projectedValue.getter();
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SearchCATContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCATContext and conformance SearchCATContext(&lazy protocol witness table cache variable for type SearchCATContext and conformance SearchCATContext, type metadata accessor for SearchCATContext);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchCATContext()
{
  lazy protocol witness table accessor for type SearchCATContext and conformance SearchCATContext(&lazy protocol witness table cache variable for type SearchCATContext and conformance SearchCATContext, type metadata accessor for SearchCATContext);

  return UUID.init()();
}

uint64_t protocol witness for static TypeDisplayRepresentable.typeDisplayRepresentation.getter in conformance SearchCATContext@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchCATContext.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchCATContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCATContext and conformance SearchCATContext(&lazy protocol witness table cache variable for type SearchCATContext and conformance SearchCATContext, type metadata accessor for SearchCATContext);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for InstanceDisplayRepresentable.displayRepresentation.getter in conformance SearchCATContext@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DisplayRepresentation();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchCATContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCATContext and conformance SearchCATContext(&lazy protocol witness table cache variable for type SearchCATContext and conformance SearchCATContext, type metadata accessor for SearchCATContext);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t SearchCATContext.dictionaryDescription.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8930;
  *(inited + 32) = 0x6C43656369766564;
  *(inited + 40) = 0xEB00000000737361;
  v3 = type metadata accessor for SearchCATContext();
  OUTLINED_FUNCTION_17_9(v3);
  EntityProperty.wrappedValue.getter();
  v4 = v15;
  v5 = v16;
  v6 = MEMORY[0x277D837D0];
  if (!v16)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  strcpy((inited + 80), "interfaceIdiom");
  *(inited + 95) = -18;
  v7 = *(v0 + v3[6]);
  EntityProperty.wrappedValue.getter();
  v8 = v15;
  v9 = v16;
  if (!v16)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(inited + 96) = v8;
  *(inited + 104) = v9;
  *(inited + 120) = v6;
  *(inited + 128) = 0x7463617265746E69;
  *(inited + 136) = 0xEF65646F4D6E6F69;
  v10 = *(v1 + v3[7]);
  EntityProperty.wrappedValue.getter();
  v11 = v15;
  v12 = v16;
  if (!v16)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  *(inited + 144) = v11;
  *(inited + 152) = v12;
  *(inited + 168) = v6;
  strcpy((inited + 176), "deviceIsLocked");
  *(inited + 191) = -18;
  v13 = *(v1 + v3[8]);
  EntityProperty.wrappedValue.getter();
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = v15 & 1;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t SearchCATContext.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(86);
  MEMORY[0x25F89F6C0](0xD000000000000021, 0x800000025DBF3880);
  v2 = type metadata accessor for SearchCATContext();
  v3 = *(v0 + v2[5]);
  v4 = EntityProperty.wrappedValue.getter();
  v12 = OUTLINED_FUNCTION_67_5(v4, v5, v6, v7, v8, v9, v10, v11, v41, v44);
  if (v14)
  {
    v15 = 0xE000000000000000;
  }

  else
  {
    v15 = v13;
  }

  MEMORY[0x25F89F6C0](v12, v15);

  MEMORY[0x25F89F6C0](0xD000000000000016, 0x800000025DBF38B0);
  v16 = *(v1 + v2[6]);
  v17 = EntityProperty.wrappedValue.getter();
  v25 = OUTLINED_FUNCTION_67_5(v17, v18, v19, v20, v21, v22, v23, v24, v42, v45);
  if (v14)
  {
    v27 = 0xE000000000000000;
  }

  else
  {
    v27 = v26;
  }

  MEMORY[0x25F89F6C0](v25, v27);

  MEMORY[0x25F89F6C0](0xD000000000000017, 0x800000025DBF38D0);
  v28 = *(v1 + v2[7]);
  v29 = EntityProperty.wrappedValue.getter();
  v37 = OUTLINED_FUNCTION_67_5(v29, v30, v31, v32, v33, v34, v35, v36, v43, v46);
  if (v14)
  {
    v39 = 0xE000000000000000;
  }

  else
  {
    v39 = v38;
  }

  MEMORY[0x25F89F6C0](v37, v39);

  MEMORY[0x25F89F6C0](32010, 0xE200000000000000);
  return 0;
}

void type metadata completion function for SearchCATContext()
{
  type metadata accessor for DisplayRepresentation();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EntityProperty<String?>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EntityProperty<Bool?>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for EntityProperty<Bool?>()
{
  if (!lazy cache variable for type metadata for EntityProperty<Bool?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd, &_sSbSgMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Bool? and conformance <A> A?, &_sSbSgMd, &_sSbSgMR, lazy protocol witness table accessor for type Bool and conformance Bool);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EntityProperty<Bool?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t lazy protocol witness table accessor for type SearchCATContext and conformance SearchCATContext(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_31()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_10_21(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SearchCATContext();
}

uint64_t OUTLINED_FUNCTION_14_16()
{

  return type metadata accessor for SearchCATContext();
}

uint64_t SearchCATEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = OUTLINED_FUNCTION_17(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v18 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v18);
  DisplayRepresentation.init(title:subtitle:image:)();
  v19 = type metadata accessor for SearchCATEntity();
  v20 = v19[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v20) = OUTLINED_FUNCTION_80_4();
  v21 = v19[6];
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v21) = EntityProperty<>.init(title:)();
  v22 = v19[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v22) = EntityProperty<>.init(title:)();
  v23 = v19[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v23) = EntityProperty<>.init(title:)();
  v24 = v19[9];
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v24) = OUTLINED_FUNCTION_80_4();
  v25 = v19[10];
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v25) = EntityProperty<>.init(title:)();
  v26 = v19[11];
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v26) = EntityProperty<>.init(title:)();
  v27 = v19[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v27) = EntityProperty<>.init(title:)();
  v28 = v19[13];
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v28) = OUTLINED_FUNCTION_80_4();
  v29 = v19[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  OUTLINED_FUNCTION_9_24();
  *(a1 + v29) = EntityProperty<>.init(title:)();
  v30 = v19[15];
  OUTLINED_FUNCTION_9_24();
  *(a1 + v30) = OUTLINED_FUNCTION_80_4();
  v31 = v19[16];
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v31) = EntityProperty<>.init(title:)();
  v32 = v19[17];
  OUTLINED_FUNCTION_9_24();
  *(a1 + v32) = EntityProperty<>.init(title:)();
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  EntityProperty.wrappedValue.setter();
  LOBYTE(v34[0]) = 0;
  return EntityProperty.wrappedValue.setter();
}

uint64_t type metadata accessor for SearchCATEntity()
{
  result = type metadata singleton initialization cache for SearchCATEntity;
  if (!type metadata singleton initialization cache for SearchCATEntity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchCATEntity.contentCreationDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *(v1 + *(type metadata accessor for SearchCATEntity() + 28));
  outlined init with copy of Date?(a1, v8);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of IntentApplication?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SearchCATEntity.sentFrom.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCATEntity() + 32));
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t SearchCATEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchCATEntity.typeDisplayRepresentation);
}

uint64_t static SearchCATEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchCATEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchCATEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v2, static SearchCATEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v3 = *(v2 - 8);
  v4 = *(v3 + 24);
  OUTLINED_FUNCTION_33_13();
  v5();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*static SearchCATEntity.typeDisplayRepresentation.modify())()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchCATEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchCATEntity.typeDisplayRepresentation : SearchCATEntity.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchCATEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchCATEntity.typeDisplayRepresentation : SearchCATEntity.Type(uint64_t a1)
{
  v2 = SearchCATEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t SearchCATEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DisplayRepresentation();
  v4 = OUTLINED_FUNCTION_17(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t SearchCATEntity.documentSource.getter()
{
  v0 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_17_19(*(v0 + 20));
  return v2;
}

uint64_t (*SearchCATEntity.documentSource.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 20));
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.title.getter()
{
  v0 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_17_19(*(v0 + 24));
  return v2;
}

uint64_t (*SearchCATEntity.title.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 24));
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchCATEntity.contentCreationDate : SearchCATEntity(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  outlined init with copy of Date?(a1, &v7 - v4);
  return SearchCATEntity.contentCreationDate.setter(v5);
}

uint64_t (*SearchCATEntity.contentCreationDate.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 28));
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchCATEntity.sentFrom : SearchCATEntity(uint64_t *a1)
{
  v1 = *a1;

  return SearchCATEntity.sentFrom.setter();
}

uint64_t (*SearchCATEntity.sentFrom.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 32));
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.answer.getter()
{
  v0 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_17_19(*(v0 + 36));
  return v2;
}

uint64_t (*SearchCATEntity.answer.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 36));
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.fullSearchEntityDescription.getter()
{
  v0 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_17_19(*(v0 + 40));
  return v2;
}

uint64_t (*SearchCATEntity.fullSearchEntityDescription.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 40));
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t SearchCATEntity.supportSearchEntityDescription.getter()
{
  v0 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_17_19(*(v0 + 44));
  return v2;
}

uint64_t (*SearchCATEntity.supportSearchEntityDescription.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 44));
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.resultSourceDialogDisplayName.getter()
{
  v0 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_17_19(*(v0 + 48));
  return v2;
}

uint64_t key path setter for SearchCATEntity.resultSourceDialogDisplayName : SearchCATEntity(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchCATEntity.resultSourceDialogDisplayName.setter();
}

uint64_t (*SearchCATEntity.resultSourceDialogDisplayName.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 48));
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.fullContent.getter()
{
  v0 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_17_19(*(v0 + 52));
  return v2;
}

uint64_t (*SearchCATEntity.fullContent.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 52));
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.messageIsFromMe.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCATEntity() + 56));
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*SearchCATEntity.messageIsFromMe.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 56));
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.flightDestination.getter()
{
  v0 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_17_19(*(v0 + 60));
  return v2;
}

uint64_t (*SearchCATEntity.flightDestination.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 60));
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.senderHandle.getter()
{
  v0 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_17_19(*(v0 + 64));
  return v2;
}

uint64_t (*SearchCATEntity.senderHandle.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 64));
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchCATEntity.resultType.getter()
{
  v0 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_17_19(*(v0 + 68));
  return v2;
}

uint64_t key path setter for SearchCATEntity.documentSource : SearchCATEntity(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t (*SearchCATEntity.resultType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_32(v2);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7(*(v3 + 68));
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SearchCATEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SearchCATEntity and conformance SearchCATEntity, type metadata accessor for SearchCATEntity);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchCATEntity()
{
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SearchCATEntity and conformance SearchCATEntity, type metadata accessor for SearchCATEntity);

  return UUID.init()();
}

uint64_t protocol witness for static TypeDisplayRepresentable.typeDisplayRepresentation.getter in conformance SearchCATEntity@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchCATEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchCATEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SearchCATEntity and conformance SearchCATEntity, type metadata accessor for SearchCATEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchCATEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SearchCATEntity and conformance SearchCATEntity, type metadata accessor for SearchCATEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static SearchCATEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v96 = *(v4 - 8);
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v4);
  v94 = &v92[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_17(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v92[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = OUTLINED_FUNCTION_114(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v95 = &v92[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v92[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v92[-v22];
  v24 = type metadata accessor for SearchCATEntity();
  v25 = *(v24 + 20);
  v99 = a1;
  v26 = *(a1 + v25);
  EntityProperty.wrappedValue.getter();
  v27 = v101;
  v97 = a2;
  v98 = v24;
  OUTLINED_FUNCTION_15_18(*(v24 + 20));
  v28 = v101;
  if (v27)
  {
    if (!v101)
    {
      goto LABEL_120;
    }

    OUTLINED_FUNCTION_11_22();
    v29 = v29 && v27 == v28;
    if (v29)
    {

      v31 = v99;
    }

    else
    {
      v30 = OUTLINED_FUNCTION_23_16();

      v31 = v99;
      if ((v30 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else
  {
    v31 = v99;
    if (v101)
    {
      goto LABEL_120;
    }
  }

  v32 = v98;
  OUTLINED_FUNCTION_15_18(v98[6]);
  v33 = v101;
  OUTLINED_FUNCTION_12_22(v32[6]);
  v34 = v101;
  if (v33)
  {
    if (!v101)
    {
      goto LABEL_120;
    }

    v35 = v4;
    OUTLINED_FUNCTION_11_22();
    if (v29 && v33 == v34)
    {
    }

    else
    {
      v37 = OUTLINED_FUNCTION_23_16();

      if ((v37 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else
  {
    v35 = v4;
    if (v101)
    {
      goto LABEL_120;
    }
  }

  v38 = v98;
  v39 = *(v31 + v98[7]);
  EntityProperty.wrappedValue.getter();
  v40 = v97;
  v41 = *(v97 + v38[7]);
  EntityProperty.wrappedValue.getter();
  v42 = *(v7 + 48);
  outlined init with copy of Date?(v23, v12);
  outlined init with copy of Date?(v21, &v12[v42]);
  OUTLINED_FUNCTION_26_13(v12);
  if (v29)
  {
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v43, v44, v45);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v46, v47, v48);
    OUTLINED_FUNCTION_26_13(&v12[v42]);
    if (v29)
    {
      outlined destroy of IntentApplication?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_33;
    }

LABEL_31:
    outlined destroy of IntentApplication?(v12, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_121;
  }

  v49 = v95;
  outlined init with copy of Date?(v12, v95);
  OUTLINED_FUNCTION_26_13(&v12[v42]);
  if (v50)
  {
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v51, v52, v53);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v54, v55, v56);
    (*(v96 + 8))(v49, v35);
    goto LABEL_31;
  }

  v57 = v96;
  v58 = &v12[v42];
  v59 = v94;
  (*(v96 + 32))(v94, v58, v35);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v93 = dispatch thunk of static Equatable.== infix(_:_:)();
  v60 = *(v57 + 8);
  v60(v59, v35);
  outlined destroy of IntentApplication?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of IntentApplication?(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v60(v49, v35);
  v40 = v97;
  outlined destroy of IntentApplication?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v93 & 1) == 0)
  {
    goto LABEL_121;
  }

LABEL_33:
  v61 = v98;
  OUTLINED_FUNCTION_15_18(v98[8]);
  v62 = v100;
  v63 = *(v40 + v61[8]);
  EntityProperty.wrappedValue.getter();
  v64 = v100;
  if (v62)
  {
    if (!v100)
    {
      goto LABEL_120;
    }

    v65 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1gq5(v62, v100);

    if ((v65 & 1) == 0)
    {
      goto LABEL_121;
    }
  }

  else if (v100)
  {
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_15_18(v61[9]);
  v66 = v101;
  OUTLINED_FUNCTION_18_15(v61[9]);
  v67 = v101;
  if (v66)
  {
    if (!v101)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_11_22();
    if (v29 && v66 == v67)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_273_0();

      if ((v64 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else if (v101)
  {
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_15_18(v61[17]);
  v69 = v101;
  OUTLINED_FUNCTION_12_22(v61[17]);
  v67 = v101;
  if (v69)
  {
    if (!v101)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_11_22();
    if (v29 && v69 == v67)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_273_0();

      if ((v64 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else if (v101)
  {
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_15_18(v61[10]);
  v71 = v101;
  OUTLINED_FUNCTION_12_22(v61[10]);
  v67 = v101;
  if (v71)
  {
    if (!v101)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_11_22();
    if (v29 && v71 == v67)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_273_0();

      if ((v64 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else if (v101)
  {
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_15_18(v61[11]);
  v73 = v101;
  OUTLINED_FUNCTION_12_22(v61[11]);
  v67 = v101;
  if (v73)
  {
    if (!v101)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_11_22();
    if (v29 && v73 == v67)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_273_0();

      if ((v64 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else if (v101)
  {
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_15_18(v61[12]);
  v76 = v100;
  v75 = v101;
  v77 = *(v97 + v61[12]);
  EntityProperty.wrappedValue.getter();
  v78 = v101;
  if (v76 == v100 && v75 == v101)
  {
  }

  else
  {
    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v80 & 1) == 0)
    {
      goto LABEL_121;
    }
  }

  OUTLINED_FUNCTION_15_18(v61[13]);
  v81 = v101;
  OUTLINED_FUNCTION_18_15(v61[13]);
  v67 = v101;
  if (v81)
  {
    if (!v101)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_11_22();
    if (v29 && v81 == v67)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_273_0();

      if ((v78 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else if (v101)
  {
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_15_18(v61[14]);
  v83 = v100;
  v84 = *(v97 + v61[14]);
  EntityProperty.wrappedValue.getter();
  if (v83 != v100)
  {
LABEL_121:
    LOBYTE(v67) = 0;
    return v67 & 1;
  }

  OUTLINED_FUNCTION_15_18(v61[15]);
  v85 = v101;
  OUTLINED_FUNCTION_18_15(v61[15]);
  v67 = v101;
  if (!v85)
  {
    if (!v101)
    {
      goto LABEL_113;
    }

LABEL_120:

    goto LABEL_121;
  }

  if (v101)
  {
    OUTLINED_FUNCTION_11_22();
    if (v29 && v85 == v67)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_273_0();

      if ((v84 & 1) == 0)
      {
        goto LABEL_121;
      }
    }

LABEL_113:
    v87 = v98;
    OUTLINED_FUNCTION_18_15(v98[16]);
    v88 = v100;
    v89 = v101;
    OUTLINED_FUNCTION_12_22(v87[16]);
    if (v89)
    {
      if (v101)
      {
        if (v88 != v100 || v89 != v101)
        {
          LOBYTE(v67) = OUTLINED_FUNCTION_23_16();

          goto LABEL_109;
        }

LABEL_126:
        LOBYTE(v67) = 1;
        return v67 & 1;
      }
    }

    else if (!v101)
    {
      goto LABEL_126;
    }

    goto LABEL_120;
  }

LABEL_109:

  return v67 & 1;
}

uint64_t SearchCATEntity.dictionaryDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = v42 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBD9E40;
  strcpy((inited + 32), "documentSource");
  *(inited + 47) = -18;
  v9 = type metadata accessor for SearchCATEntity();
  v10 = *(v0 + v9[5]);
  EntityProperty.wrappedValue.getter();
  v11 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_1_43();
  if (v14)
  {
    v13 = 0xE000000000000000;
  }

  *(inited + 48) = v12;
  *(inited + 56) = v13;
  *(inited + 72) = v11;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_1_43();
  if (v14)
  {
    v16 = 0xE000000000000000;
  }

  *(inited + 96) = v15;
  *(inited + 104) = v16;
  OUTLINED_FUNCTION_44_6();
  *(inited + 120) = v11;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = v17;
  v18 = *(v1 + v9[7]);
  EntityProperty.wrappedValue.getter();
  v19 = type metadata accessor for Date();
  if (__swift_getEnumTagSinglePayload(v7, 1, v19) == 1)
  {
    outlined destroy of IntentApplication?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    *(inited + 168) = v11;
    *(inited + 144) = 0;
    *(inited + 152) = 0xE000000000000000;
  }

  else
  {
    v43 = v19;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v42);
    (*(*(v19 - 8) + 32))(boxed_opaque_existential_1Tm, v7, v19);
    outlined init with take of Any(v42, (inited + 144));
  }

  *(inited + 176) = 0x6D6F7246746E6573;
  *(inited + 184) = 0xE800000000000000;
  OUTLINED_FUNCTION_16_19(v9[8]);
  v21 = v42[0];
  if (v42[0])
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v42[0] = v21;
    outlined init with take of Any(v42, (inited + 192));
  }

  else
  {
    *(inited + 216) = v11;
    *(inited + 192) = 0;
    *(inited + 200) = 0xE000000000000000;
  }

  *(inited + 224) = 0x726577736E61;
  *(inited + 232) = 0xE600000000000000;
  OUTLINED_FUNCTION_16_19(v9[9]);
  OUTLINED_FUNCTION_1_43();
  if (v14)
  {
    v23 = 0xE000000000000000;
  }

  *(inited + 240) = v22;
  *(inited + 248) = v23;
  OUTLINED_FUNCTION_44_6();
  *(inited + 264) = v11;
  *(inited + 272) = 0xD00000000000001BLL;
  *(inited + 280) = v24;
  OUTLINED_FUNCTION_16_19(v9[10]);
  OUTLINED_FUNCTION_1_43();
  if (v14)
  {
    v26 = 0xE000000000000000;
  }

  *(inited + 288) = v25;
  *(inited + 296) = v26;
  OUTLINED_FUNCTION_44_6();
  *(inited + 312) = v11;
  *(inited + 320) = 0xD00000000000001ELL;
  *(inited + 328) = v27;
  OUTLINED_FUNCTION_16_19(v9[11]);
  OUTLINED_FUNCTION_1_43();
  if (v14)
  {
    v29 = 0xE000000000000000;
  }

  *(inited + 336) = v28;
  *(inited + 344) = v29;
  OUTLINED_FUNCTION_44_6();
  *(inited + 360) = v11;
  *(inited + 368) = 0xD00000000000001DLL;
  *(inited + 376) = v30;
  OUTLINED_FUNCTION_16_19(v9[12]);
  v31 = v42[1];
  *(inited + 384) = v42[0];
  *(inited + 392) = v31;
  *(inited + 408) = v11;
  *(inited + 416) = 0x746E6F436C6C7566;
  *(inited + 424) = 0xEB00000000746E65;
  OUTLINED_FUNCTION_16_19(v9[13]);
  OUTLINED_FUNCTION_1_43();
  if (v14)
  {
    v33 = 0xE000000000000000;
  }

  *(inited + 432) = v32;
  *(inited + 440) = v33;
  *(inited + 456) = v11;
  *(inited + 464) = 0x496567617373656DLL;
  *(inited + 472) = 0xEF654D6D6F724673;
  OUTLINED_FUNCTION_16_19(v9[14]);
  v34 = MEMORY[0x277D839B0];
  *(inited + 480) = v42[0];
  *(inited + 504) = v34;
  *(inited + 512) = 0xD000000000000011;
  *(inited + 520) = 0x800000025DBF3A70;
  OUTLINED_FUNCTION_16_19(v9[15]);
  v36 = v42[1];
  v35 = v42[0];
  *(inited + 552) = v11;
  if (!v36)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
  }

  *(inited + 528) = v35;
  *(inited + 536) = v36;
  strcpy((inited + 560), "senderHandle");
  *(inited + 573) = 0;
  *(inited + 574) = -5120;
  OUTLINED_FUNCTION_16_19(v9[16]);
  v38 = v42[1];
  v37 = v42[0];
  *(inited + 600) = v11;
  if (!v38)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  *(inited + 576) = v37;
  *(inited + 584) = v38;
  *(inited + 608) = 0x7954746C75736572;
  *(inited + 616) = 0xEA00000000006570;
  OUTLINED_FUNCTION_16_19(v9[17]);
  v40 = v42[1];
  v39 = v42[0];
  *(inited + 648) = v11;
  if (!v40)
  {
    v39 = 0;
    v40 = 0xE000000000000000;
  }

  *(inited + 624) = v39;
  *(inited + 632) = v40;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t dispatch thunk of SearchCATEntityConvertible.asCATEntity.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);

  return v11(a1, a2, a3);
}

uint64_t type metadata completion function for SearchCATEntity()
{
  v0 = type metadata accessor for DisplayRepresentation();
  if (v1 <= 0x3F)
  {
    type metadata accessor for EntityProperty<String?>();
    v0 = v2;
    if (v3 <= 0x3F)
    {
      type metadata accessor for EntityProperty<Date?>(319, &lazy cache variable for type metadata for EntityProperty<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, lazy protocol witness table accessor for type Date? and conformance <A> A?);
      if (v5 > 0x3F)
      {
        return v4;
      }

      type metadata accessor for EntityProperty<Date?>(319, &lazy cache variable for type metadata for EntityProperty<[String]?>, &_sSaySSGSgMd, &_sSaySSGSgMR, lazy protocol witness table accessor for type [String]? and conformance <A> A?);
      if (v6 > 0x3F)
      {
        return v4;
      }

      type metadata accessor for EntityProperty<String>(319, &lazy cache variable for type metadata for EntityProperty<String>, lazy protocol witness table accessor for type String and conformance String);
      if (v7 > 0x3F)
      {
        return v4;
      }

      type metadata accessor for EntityProperty<String>(319, &lazy cache variable for type metadata for EntityProperty<Bool>, lazy protocol witness table accessor for type Bool and conformance Bool);
      if (v8 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

void type metadata accessor for EntityProperty<Date?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for EntityProperty();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_28()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_3_32(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SearchCATEntity();
}

uint64_t OUTLINED_FUNCTION_4_28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_5_24()
{

  return type metadata accessor for SearchCATEntity();
}

uint64_t OUTLINED_FUNCTION_9_24()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_12_22@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 - 120) + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_15_18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_16_19@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_17_19@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_18_15@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_23_16()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t DialogContext.init(interactionMode:interfaceIdiom:assistantLocale:isQuestionQuery:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  outlined init with take of SearchResultItem?(a1, a6, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v11 = type metadata accessor for DialogContext();
  result = outlined init with take of SearchResultItem?(a2, a6 + v11[5], &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v13 = (a6 + v11[6]);
  *v13 = a3;
  v13[1] = a4;
  *(a6 + v11[7]) = a5;
  return result;
}

uint64_t type metadata accessor for DialogContext()
{
  result = type metadata singleton initialization cache for DialogContext;
  if (!type metadata singleton initialization cache for DialogContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DialogContext.assistantLocale.getter()
{
  v1 = (v0 + *(type metadata accessor for DialogContext() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t CatDialogGenerator.dialog(catId:templateDirectoryURL:parameters:)()
{
  OUTLINED_FUNCTION_48();
  v1[10] = v2;
  v1[11] = v3;
  v1[8] = v4;
  v1[9] = v5;
  v1[7] = v6;
  v7 = type metadata accessor for CATOption();
  v1[12] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_199();
  v12 = *v0;
  v1[14] = v11;
  v1[15] = v12;
  v13 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  v1 = *(v0 + 112);
  type metadata accessor for CATResponse();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  static CATOption.defaultMode.getter();
  v2 = *(MEMORY[0x277D55C20] + 4);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = CatDialogGenerator.dialog(catId:templateDirectoryURL:parameters:);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);

  return MEMORY[0x2821B7E50](v7, v8, v9, v6, v4, v0 + 16, v5);
}

{
  OUTLINED_FUNCTION_52();
  v3 = v2;
  v4 = v2[16];
  v5 = v2[14];
  v6 = v2[13];
  v7 = v2[12];
  v8 = *v1;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  v3[17] = v10;
  v3[18] = v0;

  (*(v6 + 8))(v5, v7);
  outlined destroy of IntentApplication?((v3 + 2), &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
  if (v0)
  {
    v11 = CatDialogGenerator.dialog(catId:templateDirectoryURL:parameters:);
  }

  else
  {
    v11 = CatDialogGenerator.dialog(catId:templateDirectoryURL:parameters:);
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

{
  v1 = [*(v0 + 136) dialog];
  type metadata accessor for PatternExecutionDialog();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v2))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x25F89FFD0](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    v13 = *(v0 + 56);
    v14 = *(v0 + 136);

    v5 = [v4 fullPrint];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = [v4 fullSpeak];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = [v4 supportingPrint];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = [v4 supportingSpeak];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    SearchToolDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)();
  }

  else
  {
    v9 = *(v0 + 56);

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_19_16();
    v4 = *(v0 + 136);
  }

  v10 = *(v0 + 112);

  OUTLINED_FUNCTION_127();

  return v11();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_127();
  v3 = *(v0 + 144);

  return v2();
}

unint64_t type metadata accessor for PatternExecutionDialog()
{
  result = lazy cache variable for type metadata for PatternExecutionDialog;
  if (!lazy cache variable for type metadata for PatternExecutionDialog)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PatternExecutionDialog);
  }

  return result;
}

uint64_t protocol witness for CatDialogGenerating.dialog(catId:templateDirectoryURL:parameters:) in conformance CatDialogGenerator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return CatDialogGenerator.dialog(catId:templateDirectoryURL:parameters:)();
}

uint64_t one-time initialization function for templateDirectoryURL()
{
  v0 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v0, static DialogBuilder.templateDirectoryURL);
  __swift_project_value_buffer(v0, static DialogBuilder.templateDirectoryURL);
  return closure #1 in variable initialization expression of static DialogBuilder.templateDirectoryURL();
}

uint64_t closure #1 in variable initialization expression of static DialogBuilder.templateDirectoryURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  type metadata accessor for DialogBuilder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = [v13 resourceURL];
  if (v14)
  {
    v15 = v14;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *(v5 + 32);
    v16(v3, v9, v4);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    v16(v11, v3, v4);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
    v17 = [v13 bundleURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      outlined destroy of IntentApplication?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  URL.appendingPathComponent(_:)();

  return (*(v5 + 8))(v11, v4);
}

uint64_t DialogBuilder.templateDirectoryURL.unsafeMutableAddressor()
{
  if (one-time initialization token for templateDirectoryURL != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v0 = type metadata accessor for URL();

  return __swift_project_value_buffer(v0, static DialogBuilder.templateDirectoryURL);
}

uint64_t static DialogBuilder.templateDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for templateDirectoryURL != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static DialogBuilder.templateDirectoryURL);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t DialogBuilder.__allocating_init(catDialogGenerator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of ResponseOverrideMatcherProtocol(a1, v2 + 16);
  return v2;
}

uint64_t DialogBuilder.dialog(dialogData:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v4;
  *(v3 + 72) = *(a2 + 32);
  v5 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t DialogBuilder.dialog(dialogData:)()
{
  v1 = *(v0 + 40);
  if (*(v0 + 72))
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 24);
    v4 = v3[5];
    v5 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
    if (one-time initialization token for templateDirectoryURL != -1)
    {
      OUTLINED_FUNCTION_0_46();
    }

    v6 = type metadata accessor for URL();
    v7 = __swift_project_value_buffer(v6, static DialogBuilder.templateDirectoryURL);
    OUTLINED_FUNCTION_17_20(v5);
    v21 = (v8 + *v8);
    v10 = *(v9 + 4);
    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    *v11 = v0;
    v11[1] = DialogBuilder.dialog(dialogData:);
    v12 = *(v0 + 32);
    v13 = *(v0 + 16);

    return v21(v13, v12, v1, v7, v2, v4, v5);
  }

  else
  {
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 32);
    v18 = *(v0 + 16);
    v19 = *(v0 + 40);

    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_127();

    return v20();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_127();

  return v5();
}

uint64_t DialogBuilder.buildDialog(for:context:)()
{
  OUTLINED_FUNCTION_48();
  v1[74] = v0;
  v1[73] = v2;
  v1[72] = v3;
  v1[71] = v4;
  v5 = type metadata accessor for SearchCATEntity();
  OUTLINED_FUNCTION_21(v5);
  v1[75] = v6;
  v8 = *(v7 + 64);
  v1[76] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchGlobalEntity(0);
  v1[77] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[78] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[79] = OUTLINED_FUNCTION_199();
  v15 = type metadata accessor for SearchEntity.Builder(0);
  v1[80] = v15;
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64) + 15;
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64) + 15;
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v21 = type metadata accessor for SearchEntity(0);
  v1[88] = v21;
  OUTLINED_FUNCTION_21(v21);
  v1[89] = v22;
  v24 = *(v23 + 64);
  v1[90] = OUTLINED_FUNCTION_199();
  v25 = type metadata accessor for SearchCATContext();
  OUTLINED_FUNCTION_114(v25);
  v27 = *(v26 + 64);
  v1[91] = OUTLINED_FUNCTION_199();
  v28 = type metadata accessor for SearchResult(0);
  v1[92] = v28;
  OUTLINED_FUNCTION_21(v28);
  v1[93] = v29;
  v31 = *(v30 + 64) + 15;
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v32 = type metadata accessor for DialogContext();
  v1[98] = v32;
  OUTLINED_FUNCTION_114(v32);
  v34 = *(v33 + 64);
  v1[99] = OUTLINED_FUNCTION_199();
  v35 = type metadata accessor for AssistantSystemContext(0);
  v1[100] = v35;
  OUTLINED_FUNCTION_114(v35);
  v37 = *(v36 + 64);
  v1[101] = OUTLINED_FUNCTION_199();
  v38 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v38, v39, v40);
}

{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 576);
  outlined init with copy of DialogContext(*(v0 + 584), v3, type metadata accessor for DialogContext);
  v6 = OUTLINED_FUNCTION_94();
  outlined init with take of SearchResultItem?(v6, v7, v8, v9);
  outlined init with take of SearchResultItem?(v3 + *(v4 + 20), v1 + v2[5], &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  *(v1 + v2[6]) = *(v3 + *(v4 + 24));
  v10 = (v1 + v2[7]);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + v2[8]) = 0;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = *(v0 + 744);
    v127 = *(v0 + 736);
    v128 = *(v0 + 712);
    v13 = *(v0 + 680);
    v130 = *(v0 + 640);
    v125 = *(v0 + 624);
    v14 = *(v0 + 576) + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    _s10OmniSearch18GenericEventEntityVSgWOi0_((v0 + 240));
    v15 = v14;
    v129 = *(v12 + 72);
    v131 = MEMORY[0x277D84F90];
    v126 = v13;
    do
    {
      v134 = v15;
      v135 = v11;
      v16 = *(v0 + 776);
      v17 = *(v0 + 768);
      v18 = *(v0 + 760);
      v19 = *(v0 + 752);
      v20 = *(v0 + 736);
      v132 = *(v0 + 664);
      v133 = *(v0 + 704);
      v21 = *(v0 + 656);
      v22 = *(v0 + 648);
      v23 = *(v0 + 616);
      outlined init with copy of DialogContext(v15, v16, type metadata accessor for SearchResult);
      outlined init with copy of DialogContext(v16, v17, type metadata accessor for SearchResult);
      outlined init with copy of DialogContext(v17, v18, type metadata accessor for SearchResult);
      outlined init with copy of DialogContext(v18, v19, type metadata accessor for SearchResult);
      type metadata accessor for SearchEntityVisualContext();
      v24 = swift_allocObject();
      *(v0 + 400) = &type metadata for EntityCardBuilder;
      *(v0 + 408) = &protocol witness table for EntityCardBuilder;
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 376), v24 + 16);
      OUTLINED_FUNCTION_28_1();
      swift_beginAccess();
      outlined init with copy of ChatMessageRecord(v24 + 16, v0 + 416);
      v25 = *(v0 + 448);
      __swift_project_boxed_opaque_existential_1((v0 + 416), *(v0 + 440));
      v26 = *(v25 + 24);
      OUTLINED_FUNCTION_28_1();
      v28 = v27();
      *v21 = 0;
      v21[1] = 0;
      v29 = v130[5];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v20);
      v33 = v130[6];
      type metadata accessor for SearchResultType();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
      v38 = v130[7];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v23);
      v42 = v130[8];
      type metadata accessor for SearchSpotlightEntity(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
      memcpy(v21 + v130[9], (v0 + 240), 0x88uLL);
      v47 = v130[10];
      type metadata accessor for SearchAppEntity(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
      v52 = v130[11];
      v53 = type metadata accessor for IntentFile();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
      v57 = (v21 + v130[12]);
      *v57 = 0;
      v57[1] = 0;
      v58 = v130[13];
      type metadata accessor for EventEntity();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
      v63 = v130[14];
      type metadata accessor for IdCardEntity();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
      v68 = (v21 + v130[15]);
      v68[1] = 0u;
      v68[2] = 0u;
      *v68 = 0u;
      v69 = v130[16];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v53);
      *(v21 + v130[17]) = 5;
      v73 = (v21 + v130[18]);
      *v73 = 0;
      v73[1] = 0;
      OUTLINED_FUNCTION_28_1();
      closure #1 in SearchEntity.init(result:context:searchString:derivedType:)();
      outlined init with copy of DialogContext(v21, v22, type metadata accessor for SearchEntity.Builder);
      SearchEntity.init(builder:)();
      outlined destroy of SearchEntity.Builder(v21, type metadata accessor for SearchEntity.Builder);
      if (__swift_getEnumTagSinglePayload(v132, 1, v133))
      {
        v74 = outlined destroy of IntentApplication?(*(v0 + 664), &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        v75 = 1;
      }

      else
      {
        v74 = outlined init with take of SearchEntity(*(v0 + 664), *(v0 + 672));
        v75 = 0;
      }

      v76 = *(v0 + 704);
      v77 = *(v0 + 672);
      if (OUTLINED_FUNCTION_6_17(v74, v75))
      {
        v78 = *(v0 + 776);
        v79 = *(v0 + 768);
        v80 = *(v0 + 760);
        v81 = *(v0 + 752);
        v82 = *(v0 + 704);
        v83 = *(v0 + 680);
        v84 = *(v0 + 672);

        outlined destroy of SearchEntity.Builder(v80, type metadata accessor for SearchResult);
        outlined destroy of SearchEntity.Builder(v79, type metadata accessor for SearchResult);
        outlined destroy of SearchEntity.Builder(v78, type metadata accessor for SearchResult);
        outlined destroy of IntentApplication?(v84, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
        outlined destroy of SearchEntity.Builder(v81, type metadata accessor for SearchResult);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v85, v86, v87, v82);
      }

      else
      {
        v88 = *(v0 + 752);
        v89 = *(v0 + 632);
        v90 = *(v0 + 616);
        outlined init with take of SearchEntity(*(v0 + 672), *(v0 + 680));
        v91 = (v88 + *(v127 + 40));
        v92 = v91[1];
        v93 = *(v126 + 128);
        *(v0 + 520) = *v91;
        *(v0 + 528) = v92;

        EntityProperty.wrappedValue.setter();
        v94 = *(v126 + 32);
        EntityProperty.wrappedValue.getter();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v89, 1, v90);
        v96 = *(v0 + 776);
        v97 = *(v0 + 768);
        v98 = *(v0 + 760);
        v99 = *(v0 + 632);
        if (EnumTagSinglePayload)
        {

          outlined destroy of SearchEntity.Builder(v98, type metadata accessor for SearchResult);
          outlined destroy of SearchEntity.Builder(v97, type metadata accessor for SearchResult);
          outlined destroy of SearchEntity.Builder(v96, type metadata accessor for SearchResult);
          outlined destroy of IntentApplication?(v99, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
        }

        else
        {
          v100 = *(v0 + 624);
          outlined init with copy of DialogContext(*(v0 + 632), v100, type metadata accessor for SearchGlobalEntity);
          outlined destroy of IntentApplication?(v99, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
          v101 = *(v126 + 128);
          EntityProperty.wrappedValue.getter();
          v102 = *(v0 + 544);
          v103 = *(v125 + 488);
          *(v0 + 552) = *(v0 + 536);
          *(v0 + 560) = v102;
          EntityProperty.wrappedValue.setter();

          outlined destroy of SearchEntity.Builder(v98, type metadata accessor for SearchResult);
          outlined destroy of SearchEntity.Builder(v97, type metadata accessor for SearchResult);
          v104 = OUTLINED_FUNCTION_94();
          outlined destroy of SearchEntity.Builder(v104, v105);
          outlined destroy of SearchEntity.Builder(v100, type metadata accessor for SearchGlobalEntity);
        }

        v106 = *(v0 + 752);
        v107 = *(v0 + 704);
        v108 = *(v0 + 680);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
        __swift_storeEnumTagSinglePayload(v108, 0, 1, v107);
        outlined destroy of SearchEntity.Builder(v106, type metadata accessor for SearchResult);
      }

      v109 = *(v0 + 680);
      if (__swift_getEnumTagSinglePayload(v109, 1, *(v0 + 704)))
      {
        v110 = outlined destroy of IntentApplication?(v109, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        v111 = 1;
      }

      else
      {
        v110 = outlined init with take of SearchEntity(v109, *(v0 + 688));
        v111 = 0;
      }

      v112 = *(v0 + 704);
      v113 = *(v0 + 688);
      if (OUTLINED_FUNCTION_6_17(v110, v111))
      {
        v114 = outlined destroy of IntentApplication?(*(v0 + 688), &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        v115 = 1;
      }

      else
      {
        v114 = outlined init with take of SearchEntity(*(v0 + 688), *(v0 + 696));
        v115 = 0;
      }

      v116 = *(v0 + 704);
      v117 = *(v0 + 696);
      if (OUTLINED_FUNCTION_6_17(v114, v115) == 1)
      {
        outlined destroy of IntentApplication?(*(v0 + 696), &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
      }

      else
      {
        outlined init with take of SearchEntity(*(v0 + 696), *(v0 + 720));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v131 + 16) + 1, 1, v131);
          v131 = v121;
        }

        v119 = *(v131 + 16);
        v118 = *(v131 + 24);
        if (v119 >= v118 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v118 > 1, v119 + 1, 1, v131);
          v131 = v122;
        }

        v120 = *(v0 + 720);
        *(v131 + 16) = v119 + 1;
        outlined init with take of SearchEntity(v120, v131 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v119);
      }

      v15 = v134 + v129;
      v11 = v135 - 1;
    }

    while (v135 != 1);
  }

  else
  {
    v131 = MEMORY[0x277D84F90];
  }

  *(v0 + 816) = v131;
  v123 = swift_task_alloc();
  *(v0 + 824) = v123;
  *v123 = v0;
  v123[1] = DialogBuilder.buildDialog(for:context:);

  return specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = v1;
  v3 = *(v1 + 824);
  v9 = *v0;
  *(v2 + 832) = v4;

  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  v1 = *(v0 + 832);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 728);
  Array<A>.isHomogenousResults.getter();
  v6 = v5;
  AssistantSystemContext.asCATContext.getter();
  Array<A>.isEffectivelyEmptySearchResult.getter(v2, v7, v8, v9, v10, v11, v12, v13, v43, v44, v45, v47, v48, v49, v50, v51, v52, v53, v54, v0);
  LOBYTE(v3) = v14;

  if (v3)
  {
    v15 = *(v0 + 832);

    v16 = Dictionary.init(dictionaryLiteral:)();
    v17 = "tion in time for display.";
    v18 = 0xD000000000000017;
  }

  else
  {
    v19 = *(v0 + 832);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8930;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x800000025DBF2DB0;
    v21 = *(v19 + 16);
    v22 = *(v0 + 832);
    if (v21)
    {
      v23 = *(v0 + 600);
      v46 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v24 = v46;
      v25 = v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v26 = *(v23 + 72);
      do
      {
        v27 = *(v0 + 608);
        outlined init with copy of DialogContext(v25, v27, type metadata accessor for SearchCATEntity);
        v28 = SearchCATEntity.dictionaryDescription.getter();
        outlined destroy of SearchEntity.Builder(v27, type metadata accessor for SearchCATEntity);
        v30 = *(v46 + 16);
        v29 = *(v46 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
        }

        *(v46 + 16) = v30 + 1;
        *(v46 + 8 * v30 + 32) = v28;
        v25 += v26;
        --v21;
      }

      while (v21);
      v31 = *(v0 + 832);
    }

    else
    {
      v32 = *(v0 + 832);

      v24 = MEMORY[0x277D84F90];
    }

    v33 = *(v0 + 784);
    v34 = *(v0 + 728);
    v35 = *(v0 + 584);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
    *(inited + 48) = v24;
    *(inited + 72) = v36;
    *(inited + 80) = 0x6974736575517369;
    *(inited + 88) = 0xEF79726575516E6FLL;
    v37 = MEMORY[0x277D839B0];
    *(inited + 96) = *(v35 + *(v33 + 28)) & 1;
    *(inited + 120) = v37;
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x800000025DBF2E50;
    *(inited + 144) = v6 & 1;
    *(inited + 168) = v37;
    *(inited + 176) = 0xD000000000000010;
    *(inited + 184) = 0x800000025DBF2E70;
    v38 = SearchCATContext.dictionaryDescription.getter();
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    *(inited + 192) = v38;
    v16 = Dictionary.init(dictionaryLiteral:)();
    v17 = "isHomogenousSources";
    v18 = 0xD000000000000015;
  }

  *(v0 + 456) = v18;
  *(v0 + 464) = v17 | 0x8000000000000000;
  *(v0 + 472) = v16;
  *(v0 + 480) = 0;
  *(v0 + 488) = 1;
  v39 = swift_task_alloc();
  *(v0 + 840) = v39;
  *v39 = v0;
  v39[1] = DialogBuilder.buildDialog(for:context:);
  v40 = *(v0 + 592);
  v41 = *(v0 + 568);

  return DialogBuilder.dialog(dialogData:)(v41, v0 + 456);
}

{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = v2[105];
  *v4 = *v1;
  v3[106] = v0;

  v6 = v3[57];
  v7 = v2[58];
  v8 = v2[59];
  v9 = v2[60];
  v10 = *(v3 + 488);
  outlined consume of SearchToolDialogData();
  if (v0)
  {
    v11 = DialogBuilder.buildDialog(for:context:);
  }

  else
  {
    v11 = DialogBuilder.buildDialog(for:context:);
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

{
  OUTLINED_FUNCTION_1_44();
  OUTLINED_FUNCTION_5_25();

  OUTLINED_FUNCTION_127();

  return v0();
}

{
  OUTLINED_FUNCTION_1_44();
  OUTLINED_FUNCTION_5_25();

  OUTLINED_FUNCTION_127();
  v2 = *(v0 + 848);

  return v1();
}

__n128 AssistantSystemContext.init(dialogContext:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of SearchResultItem?(a1, a2, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v4 = type metadata accessor for DialogContext();
  v5 = *(v4 + 20);
  v6 = type metadata accessor for AssistantSystemContext(0);
  outlined init with take of SearchResultItem?(a1 + v5, a2 + v6[5], &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  result = *(a1 + *(v4 + 24));
  *(a2 + v6[6]) = result;
  v8 = (a2 + v6[7]);
  *v8 = 0;
  v8[1] = 0;
  *(a2 + v6[8]) = 0;
  return result;
}

uint64_t DialogBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t outlined consume of SearchToolDialogData()
{
}

uint64_t outlined init with take of SearchEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of DialogContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t outlined destroy of SearchEntity.Builder(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for DialogBuilderError(uint64_t a1, int a2)
{
  if (a2)
  {
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DialogBuilderError(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SearchToolDialogData(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for SearchToolDialogData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void type metadata completion function for DialogContext()
{
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode?(319, &lazy cache variable for type metadata for IntentSystemContext.AssistantContext.InteractionMode?, MEMORY[0x277CBA0C8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode?(319, &lazy cache variable for type metadata for IntentSystemContext.InterfaceIdiom?, MEMORY[0x277CBA120]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t dispatch thunk of CatDialogGenerating.dialog(catId:templateDirectoryURL:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_17_20(a7);
  v20 = (v15 + *v15);
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  *(v7 + 16) = v18;
  *v18 = v7;
  v18[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t getEnumTagSinglePayload for CatDialogGenerator(uint64_t *a1, int a2)
{
  if (a2)
  {
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CatDialogGenerator(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_44()
{
  v2 = v0[101];
  v3 = v0[99];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[95];
  v7 = v0[94];
  v8 = v0[90];
  v9 = v0[87];
  v13 = v0[86];
  v14 = v0[85];
  v15 = v0[84];
  v16 = v0[83];
  v17 = v0[82];
  v18 = v0[81];
  v10 = v0[79];
  v19 = v0[78];
  v20 = v0[76];
  v11 = v0[91];

  return outlined destroy of SearchEntity.Builder(v11, type metadata accessor for SearchCATContext);
}

uint64_t OUTLINED_FUNCTION_5_25()
{

  return outlined destroy of SearchEntity.Builder(v0, type metadata accessor for AssistantSystemContext);
}

uint64_t OUTLINED_FUNCTION_6_17(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(v2, a2, 1, v3);

  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return SearchToolDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)();
}

void static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v239 = v27;
  v217 = v28;
  v237 = v29;
  v235 = type metadata accessor for Date.FormatStyle.Symbol.TimeZone.Width();
  v30 = OUTLINED_FUNCTION_14(v235);
  v233 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_3();
  v231 = v34;
  OUTLINED_FUNCTION_78_0();
  v236 = type metadata accessor for Date.FormatStyle.Symbol.TimeZone();
  v35 = OUTLINED_FUNCTION_14(v236);
  v234 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_3();
  v232 = v39;
  OUTLINED_FUNCTION_78_0();
  v40 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v41 = OUTLINED_FUNCTION_14(v40);
  v229 = v42;
  v230 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_3();
  v228 = v45;
  OUTLINED_FUNCTION_78_0();
  v226 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v46 = OUTLINED_FUNCTION_14(v226);
  v224 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_3();
  v223[1] = v50;
  OUTLINED_FUNCTION_78_0();
  v227 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v51 = OUTLINED_FUNCTION_14(v227);
  v225 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2_3();
  v223[2] = v55;
  OUTLINED_FUNCTION_78_0();
  v223[0] = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v56 = OUTLINED_FUNCTION_14(v223[0]);
  v222 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v60);
  v221 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v61 = OUTLINED_FUNCTION_14(v221);
  v220 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v65);
  v66 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v67 = OUTLINED_FUNCTION_14(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_4();
  v216 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v72 = OUTLINED_FUNCTION_14(v216);
  v215[18] = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v76);
  v77 = type metadata accessor for FormatStyleCapitalizationContext();
  v78 = OUTLINED_FUNCTION_114(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v81);
  v82 = type metadata accessor for Calendar();
  v83 = OUTLINED_FUNCTION_114(v82);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v86);
  v87 = type metadata accessor for Locale();
  v88 = OUTLINED_FUNCTION_114(v87);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV04TimeD0VSgMd, &_s10Foundation4DateV11FormatStyleV04TimeD0VSgMR);
  v94 = OUTLINED_FUNCTION_114(v93);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV0bD0VSgMd, &_s10Foundation4DateV11FormatStyleV0bD0VSgMR);
  v100 = OUTLINED_FUNCTION_114(v99);
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v104);
  v105 = type metadata accessor for Date.FormatStyle();
  v106 = OUTLINED_FUNCTION_14(v105);
  v108 = v107;
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v124);
  v126 = *(v125 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v127);
  v129 = v215 - v128;
  v240 = type metadata accessor for TimeZone();
  v130 = OUTLINED_FUNCTION_14(v240);
  v238 = v131;
  v133 = *(v132 + 64);
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_14_2();
  v241 = v135;
  static TimeZone.current.getter();
  if (v24)
  {
    TimeZone.init(identifier:)();
    v136 = v240;
    OUTLINED_FUNCTION_166(v129, 1, v240);
    if (v137)
    {
      outlined destroy of IntentApplication?(v129, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
    }

    else
    {
      v138 = v69;
      v139 = v66;
      v140 = v238;
      v141 = v108;
      v142 = v26;
      v143 = v105;
      v144 = v20;
      v145 = v241;
      (*(v238 + 8))(v241, v136);
      v146 = v140;
      v66 = v139;
      v69 = v138;
      v147 = v145;
      v20 = v144;
      v105 = v143;
      v26 = v142;
      v108 = v141;
      (*(v146 + 32))(v147, v129, v136);
    }
  }

  type metadata accessor for Date.FormatStyle.DateStyle();
  v219 = v69;
  v218 = v66;
  if (v26)
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v148, v149, v150, v151);
    type metadata accessor for Date.FormatStyle.TimeStyle();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v152, v153, v154, v155);
    v215[0] = v20;
    if (!v239)
    {
      type metadata accessor for NSUserDefaults();
      static NSUserDefaults.fallbackLocale.getter();
    }

    OUTLINED_FUNCTION_70_8(&v231);
    Locale.init(identifier:)();
    v164 = v238;
    v165 = OUTLINED_FUNCTION_68_9(v238);
    v166 = v240;
    v167(v165, v241, v240);
    OUTLINED_FUNCTION_66_10(&a11);
    static Calendar.autoupdatingCurrent.getter();
    OUTLINED_FUNCTION_64_7(&a12);
    MEMORY[0x25F899230]();
    v168 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    v169 = v215[17];
    MEMORY[0x25F899530](v168);
    OUTLINED_FUNCTION_70_8(v223);
    Date.FormatStyle.weekday(_:)();
    OUTLINED_FUNCTION_4_4(&v237);
    v170(v169, v216);
    v171 = *(v108 + 8);
    v172 = OUTLINED_FUNCTION_51_11();
    v173 = v171(v172);
    v174 = v215[0];
    MEMORY[0x25F899430](v173);
    v175 = v215[3];
    Date.FormatStyle.day(_:)();
    OUTLINED_FUNCTION_4_4(&a13);
    v176(v174, v218);
    v177 = v26;
    v178 = v166;
    (v171)(v177, v105);
    OUTLINED_FUNCTION_30_14(&a14);
    MEMORY[0x25F8994E0]();
    OUTLINED_FUNCTION_28_15(&v225);
    Date.FormatStyle.month(_:)();
    v179 = OUTLINED_FUNCTION_17_21(&a15);
    v180(v179, v221);
    v181 = v175;
    v182 = v164;
    (v171)(v181, v105);
    OUTLINED_FUNCTION_30_14(&a17);
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    OUTLINED_FUNCTION_76_9(&v228);
    Date.FormatStyle.year(_:)();
    v183 = OUTLINED_FUNCTION_17_21(&a18);
    v184(v183, v223[0]);
    v185 = OUTLINED_FUNCTION_51_11();
    v171(v185);
    static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
    static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
    v186 = OUTLINED_FUNCTION_75_9();
    v187(v186);
    OUTLINED_FUNCTION_28_15(&v229);
    Date.FormatStyle.hour(_:)();
    v188 = OUTLINED_FUNCTION_25_15();
    v189(v188, v227);
    v190 = (v171)(v164, v105);
    MEMORY[0x25F899510](v190);
    v191 = &v234;
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v156, v157, v158, v159);
    type metadata accessor for Date.FormatStyle.TimeStyle();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
    if (!v239)
    {
      type metadata accessor for NSUserDefaults();
      static NSUserDefaults.fallbackLocale.getter();
    }

    v192 = v240;
    v182 = v238;

    OUTLINED_FUNCTION_70_8(&v232);
    OUTLINED_FUNCTION_37_5();
    Locale.init(identifier:)();
    v193 = OUTLINED_FUNCTION_68_9(v182);
    v194(v193, v241, v192);
    OUTLINED_FUNCTION_66_10(&a11);
    static Calendar.autoupdatingCurrent.getter();
    OUTLINED_FUNCTION_76_9(&a12);
    MEMORY[0x25F899230]();
    OUTLINED_FUNCTION_30_14(&v224);
    v178 = v192;
    v195 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    MEMORY[0x25F899430](v195);
    OUTLINED_FUNCTION_64_7(&v226);
    Date.FormatStyle.day(_:)();
    v196 = v219 + 8;
    (*(v219 + 8))(v20, v218);
    v171 = *(v108 + 8);
    (v171)(v192, v105);
    OUTLINED_FUNCTION_30_14(&a14);
    MEMORY[0x25F8994E0]();
    OUTLINED_FUNCTION_28_15(&v227);
    Date.FormatStyle.month(_:)();
    v197 = OUTLINED_FUNCTION_17_21(&a15);
    v198(v197, v221);
    (v171)(v20, v105);
    OUTLINED_FUNCTION_30_14(&a17);
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    OUTLINED_FUNCTION_76_9(&v230);
    Date.FormatStyle.year(_:)();
    v199 = OUTLINED_FUNCTION_17_21(&a18);
    v200(v199, v223[0]);
    v201 = OUTLINED_FUNCTION_51_11();
    v171(v201);
    static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
    static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
    v202 = OUTLINED_FUNCTION_75_9();
    v203(v202);
    OUTLINED_FUNCTION_28_15(&v233);
    Date.FormatStyle.hour(_:)();
    v204 = OUTLINED_FUNCTION_25_15();
    v205(v204, v227);
    v206 = (v171)(v196, v105);
    MEMORY[0x25F899510](v206);
    v191 = &v235;
  }

  OUTLINED_FUNCTION_64_7(v191);
  Date.FormatStyle.minute(_:)();
  v207 = OUTLINED_FUNCTION_25_15();
  v208(v207);
  v209 = OUTLINED_FUNCTION_51_11();
  v171(v209);
  v210 = v233;
  v211 = v231;
  v212 = v235;
  (*(v233 + 104))(v231, *MEMORY[0x277CC9400], v235);
  static Date.FormatStyle.Symbol.TimeZone.specificName(_:)();
  (*(v210 + 8))(v211, v212);
  Date.FormatStyle.timeZone(_:)();
  v213 = OUTLINED_FUNCTION_129_5();
  v214(v213, v236);
  (v171)(v20, v105);
  (*(v182 + 8))(v241, v178);
  OUTLINED_FUNCTION_148();
}

void LLMFormatter.sanitized.getter()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_65_12();
  v21 = type metadata accessor for CharacterSet();
  v1 = OUTLINED_FUNCTION_14(v21);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch13TextSanitizer33_3BE4AA3428794E5481C5DF6D00897BA3LLVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch13TextSanitizer33_3BE4AA3428794E5481C5DF6D00897BA3LLVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8930;
  *(inited + 32) = v0;
  *(inited + 40) = 0xA800000000000000;
  *(inited + 48) = 32;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 1024;
  type metadata accessor for NSUserDefaults();
  v6 = static NSUserDefaults.llmPromptLineBreak.getter();
  v8 = v7;
  *(inited + 72) = 4091452;
  *(inited + 80) = 0xE300000000000000;
  *(inited + 88) = v6;
  *(inited + 96) = v7;
  *(inited + 104) = 2;
  v9 = static NSUserDefaults.llmPromptLineBreak.getter();
  v11 = v10;
  *(inited + 112) = 10;
  *(inited + 120) = 0xE100000000000000;
  *(inited + 128) = v9;
  *(inited + 136) = v10;
  *(inited + 144) = 2;
  static NSUserDefaults.llmPromptLineBreak.getter();
  OUTLINED_FUNCTION_65_12();
  *(inited + 152) = 28252;
  *(inited + 160) = 0xE200000000000000;
  v20 = v12;
  *(inited + 168) = v12;
  *(inited + 176) = v13;
  v19 = v13;
  *(inited + 184) = 2;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
  }

  else
  {
    OUTLINED_FUNCTION_14_17();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_21_16();
    OUTLINED_FUNCTION_74_13();
  }

  v14 = v6 == 4091452 && v8 == 0xE300000000000000;
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    OUTLINED_FUNCTION_14_17();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_21_16();
    OUTLINED_FUNCTION_74_13();
  }

  v15 = v9 == 10 && v11 == 0xE100000000000000;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    OUTLINED_FUNCTION_14_17();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_21_16();
    OUTLINED_FUNCTION_74_13();
  }

  v16 = v20 == 28252 && v19 == 0xE200000000000000;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    OUTLINED_FUNCTION_14_17();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_21_16();
    OUTLINED_FUNCTION_74_13();
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_14_17();
  OUTLINED_FUNCTION_30_14(&v22);
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.trimmingCharacters(in:)();
  v17 = OUTLINED_FUNCTION_17_21(&v23);
  v18(v17, v21);

  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_148();
}

OmniSearch::LLMFormatter::StringInterpolation __swiftcall LLMFormatter.StringInterpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  v2 = 10 * interpolationCount;
  if ((interpolationCount * 10) >> 64 != (10 * interpolationCount) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = __OFADD__(literalCapacity, v2);
  literalCapacity += v2;
  if (v3)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  MEMORY[0x25F89F5D0](literalCapacity);
  literalCapacity = 0;
  interpolationCount = 0xE000000000000000;
LABEL_6:
  result.resolvedOutput._object = interpolationCount;
  result.resolvedOutput._countAndFlagsBits = literalCapacity;
  return result;
}

uint64_t LLMFormatter.StringInterpolation.appendInterpolation(_:)()
{
  outlined init with copy of EagerResolutionService?();
  if (!v13)
  {
    return outlined destroy of IntentApplication?(&v12, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  }

  outlined init with take of ResponseOverrideMatcherProtocol(&v12, v14);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v14, v15);
    OUTLINED_FUNCTION_19_14();
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_36();
    (*(v9 + 16))(v8 - v7);
    OUTLINED_FUNCTION_37_5();
    v10 = String.init<A>(describing:)();
    MEMORY[0x25F89F6C0](v10);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

void EditorialDateFormatter.init(now:calendar:featureFlagService:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Calendar.Component();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = OUTLINED_FUNCTION_114(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_46_14();
  v22 = type metadata accessor for Date();
  OUTLINED_FUNCTION_135(v22);
  v47 = v23;
  (*(v23 + 16))(v7, v5, v22);
  v24 = type metadata accessor for EditorialDateFormatter(0);
  v25 = *(v24 + 28);
  v26 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_135(v26);
  v43 = v28;
  v44 = v27;
  (*(v28 + 16))(v7 + v25, v3);
  v46 = v24;
  *(v7 + *(v24 + 32)) = (*(*v1 + 80))(16) & 1;
  v29 = *MEMORY[0x277CC9968];
  v30 = *(v11 + 104);
  v30(v16, v29, v8);
  v45 = v3;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v31 = *(v11 + 8);
  v32 = v8;
  v31(v16, v8);
  v33 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v33, v34, v22);
  if (v35)
  {
    __break(1u);
  }

  else
  {
    v36 = *(v47 + 32);
    v37 = OUTLINED_FUNCTION_71_9(*(v46 + 20));
    v36(v37);
    v30(v16, v29, v32);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v31(v16, v32);
    v38 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_166(v38, v39, v22);
    if (!v35)
    {

      (*(v43 + 8))(v45, v44);
      v40 = OUTLINED_FUNCTION_41_10();
      v41(v40, v22);
      v42 = OUTLINED_FUNCTION_71_9(*(v46 + 24));
      v36(v42);
      OUTLINED_FUNCTION_148();
      return;
    }
  }

  __break(1u);
}

uint64_t EditorialDateFormatter.DateInput.init(includesTime:includesWeekday:date:locale:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Date();
  OUTLINED_FUNCTION_17(v12);
  result = (*(v13 + 32))(&a6[v11], a3);
  v15 = &a6[*(v10 + 28)];
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t LLMFormatter.StringInterpolation.resolvedOutput.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LLMFormatter.StringInterpolation.appendInterpolation(_:if:skipLastDot:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  outlined init with copy of EagerResolutionService?();
  if (!v28)
  {
    return outlined destroy of IntentApplication?(&v27, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
  }

  outlined init with take of ResponseOverrideMatcherProtocol(&v27, v29);
  __swift_project_boxed_opaque_existential_1(v29, v30);
  OUTLINED_FUNCTION_63_0();
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v29, v30);
    OUTLINED_FUNCTION_19_14();
    v12 = *(v11 + 64);
    MEMORY[0x28223BE20](v13);
    OUTLINED_FUNCTION_36();
    (*(v16 + 16))(v15 - v14);
    String.init<A>(describing:)();
    *&v27 = a1;
    *(&v27 + 1) = a2;

    OUTLINED_FUNCTION_48_9();
    v17 = OUTLINED_FUNCTION_63_0();
    MEMORY[0x25F89F6C0](v17);
    OUTLINED_FUNCTION_57_9();

    v18 = OUTLINED_FUNCTION_63_0();
    v20 = specialized BidirectionalCollection.last.getter(v18, v19);
    v22 = v21;

    if (!v22)
    {
      goto LABEL_11;
    }

    if (v20 == 46 && v22 == 0xE100000000000000)
    {
    }

    else
    {
      OUTLINED_FUNCTION_37_5();
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
LABEL_11:
        if ((a4 & 1) == 0)
        {
          v25 = OUTLINED_FUNCTION_40_15();
          MEMORY[0x25F89F6C0](v25);
        }
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:separator:)(Swift::OpaquePointer _, Swift::String separator)
{
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = v2 + 32;
    do
    {
      outlined init with copy of EagerResolutionService?();
      v31[0] = v34;
      v31[1] = v35;
      v32 = v36;
      if (*(&v35 + 1))
      {
        outlined init with take of ResponseOverrideMatcherProtocol(v31, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = *(v5 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v10;
        }

        v8 = *(v5 + 16);
        v7 = *(v5 + 24);
        if (v8 >= v7 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v7);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v11;
        }

        *(v5 + 16) = v8 + 1;
        outlined init with take of ResponseOverrideMatcherProtocol(v33, v5 + 40 * v8 + 32);
      }

      else
      {
        outlined destroy of IntentApplication?(v31, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      }

      v6 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v12 = *(v5 + 16);
  if (v12)
  {
    *&v33[0] = v4;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = *&v33[0];
    v14 = v5 + 32;
    do
    {
      outlined init with copy of ChatMessageRecord(v14, &v34);
      __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
      OUTLINED_FUNCTION_19_14();
      v16 = *(v15 + 64);
      MEMORY[0x28223BE20](v17);
      OUTLINED_FUNCTION_36();
      (*(v20 + 16))(v19 - v18);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1Tm(&v34);
      *&v33[0] = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        v27 = OUTLINED_FUNCTION_26_3(v24);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27, v25 + 1, 1);
        v13 = *&v33[0];
      }

      *(v13 + 16) = v25 + 1;
      v26 = v13 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v14 += 40;
      --v12;
    }

    while (v12);

    *&v34 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v28 = BidirectionalCollection<>.joined(separator:)();
    v30 = v29;

    MEMORY[0x25F89F6C0](v28, v30);
  }

  OUTLINED_FUNCTION_148();
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:ifAll:)(Swift::String _, Swift::OpaquePointer ifAll)
{
  v23 = _;
  v3 = *(ifAll._rawValue + 2);
  if (v3)
  {
    v4 = MEMORY[0x277D84F90];
    v5 = ifAll._rawValue + 32;
    do
    {
      v6 = OUTLINED_FUNCTION_77_8();
      OUTLINED_FUNCTION_42_12(v6, v7, v8, v9, v10, v11, v12, v13, v23._countAndFlagsBits, v23._object, v24, *(&v24 + 1), v25, v26, v27, v28, v29, *(&v29 + 1), v30, v31, v32, v33._countAndFlagsBits, v33._object, v34);
      if (v14)
      {
        outlined init with take of ResponseOverrideMatcherProtocol(&v24, &v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v4 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v4 = v18;
        }

        v16 = *(v4 + 16);
        v15 = *(v4 + 24);
        if (v16 >= v15 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v15);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v4 = v19;
        }

        *(v4 + 16) = v16 + 1;
        outlined init with take of ResponseOverrideMatcherProtocol(&v29, v4 + 40 * v16 + 32);
      }

      else
      {
        outlined destroy of IntentApplication?(&v24, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v20 = *(v4 + 16);

  if (v20)
  {
    v33 = v23;

    OUTLINED_FUNCTION_48_9();
    OUTLINED_FUNCTION_57_9();

    v21._countAndFlagsBits = 8236;
    v21._object = 0xE200000000000000;
    LLMFormatter.StringInterpolation.appendInterpolation(_:separator:)(ifAll, v21);
    v22 = OUTLINED_FUNCTION_40_15();
    MEMORY[0x25F89F6C0](v22);
  }
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:startNewLinesIf:)(Swift::String _, Swift::OpaquePointer startNewLinesIf)
{
  countAndFlagsBits = _._countAndFlagsBits;
  object = _._object;
  v4 = *(startNewLinesIf._rawValue + 2);
  if (v4)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = startNewLinesIf._rawValue + 32;
    do
    {
      v7 = OUTLINED_FUNCTION_77_8();
      OUTLINED_FUNCTION_42_12(v7, v8, v9, v10, v11, v12, v13, v14, countAndFlagsBits, v28, v29, *(&v29 + 1), v30, v31, v32, v33, v34, *(&v34 + 1), v35, v36, v37, v38, v39, v40);
      if (v15)
      {
        outlined init with take of ResponseOverrideMatcherProtocol(&v29, &v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = *(v5 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v19;
        }

        v17 = *(v5 + 16);
        v16 = *(v5 + 24);
        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v20;
        }

        *(v5 + 16) = v17 + 1;
        outlined init with take of ResponseOverrideMatcherProtocol(&v34, v5 + 40 * v17 + 32);
      }

      else
      {
        outlined destroy of IntentApplication?(&v29, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      }

      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v21 = *(v5 + 16);

  if (v21)
  {
    v38 = countAndFlagsBits;
    v39 = object;
    type metadata accessor for NSUserDefaults();

    v22 = static NSUserDefaults.llmPromptLineBreak.getter();
    MEMORY[0x25F89F6C0](v22);

    MEMORY[0x25F89F6C0](v38, v39);

    v23 = static NSUserDefaults.llmPromptLineBreak.getter();
    v25 = v24;
    v26._countAndFlagsBits = v23;
    v26._object = v25;
    LLMFormatter.StringInterpolation.appendInterpolation(_:separator:)(startNewLinesIf, v26);
  }
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:names:)(Swift::String _, Swift::OpaquePointer_optional names)
{
  if (names.value._rawValue)
  {
    rawValue = names.value._rawValue;
    if (*(names.value._rawValue + 2))
    {
      v4[1] = _._object;

      OUTLINED_FUNCTION_48_9();
      OUTLINED_FUNCTION_57_9();

      v4[0] = rawValue;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      OUTLINED_FUNCTION_56_9();
      OUTLINED_FUNCTION_79_10();
      outlined destroy of IntentApplication?(v4, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      v3 = OUTLINED_FUNCTION_40_15();
      MEMORY[0x25F89F6C0](v3);
    }
  }
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(names:)(Swift::OpaquePointer_optional names)
{
  if (names.value._rawValue)
  {
    if (*(names.value._rawValue + 2))
    {
      rawValue = names.value._rawValue;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      OUTLINED_FUNCTION_56_9();
      OUTLINED_FUNCTION_79_10();
      outlined destroy of IntentApplication?(&rawValue, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
    }
  }
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:names:isFromMe:countToShow:suffix:skipValue:)(Swift::String _, Swift::OpaquePointer_optional names, Swift::Bool isFromMe, Swift::Int countToShow, Swift::String suffix, Swift::Bool skipValue)
{
  if ((suffix._object & 1) == 0 && (rawValue = names.value._rawValue) != 0 && *(names.value._rawValue + 2))
  {
    countAndFlagsBits = suffix._countAndFlagsBits;
    is_nil = names.is_nil;

    OUTLINED_FUNCTION_48_9();
    MEMORY[0x25F89F6C0](_._countAndFlagsBits, _._object);

    v14.value._rawValue = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(rawValue, is_nil);
    v14.is_nil = isFromMe;
    v11._countAndFlagsBits = countAndFlagsBits;
    LLMFormatter.StringInterpolation.appendInterpolation(names:countToShow:suffix:)(v14, countToShow, v11);
    OUTLINED_FUNCTION_78_11();
  }

  else
  {
    OUTLINED_FUNCTION_78_11();
  }
}

uint64_t static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(uint64_t a1, char a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v13 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
      v4 = (v2 + 40);
      v2 = v13;
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;

        v7 = OUTLINED_FUNCTION_121_0();
        MEMORY[0x25F89F6C0](v7);
        MEMORY[0x25F89F6C0](41, 0xE100000000000000);

        v9 = *(v13 + 16);
        v8 = *(v13 + 24);
        if (v9 >= v8 >> 1)
        {
          v11 = OUTLINED_FUNCTION_26_3(v8);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11, v9 + 1, 1);
        }

        *(v13 + 16) = v9 + 1;
        v10 = v13 + 16 * v9;
        *(v10 + 32) = 673211757;
        *(v10 + 40) = 0xE400000000000000;
        v4 += 2;
        --v3;
      }

      while (v3);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
  }

  return v2;
}

void LLMFormatter.StringInterpolation.appendInterpolation<A>(date:locale:includesTime:includesWeekday:formatStyle:timeZone:useDefaultTimeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_155();
  v107 = v21;
  v108 = v23;
  v100 = v24;
  v101 = v25;
  v110 = __PAIR64__(v27, v26);
  v109 = v28;
  v106 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v29 = OUTLINED_FUNCTION_17(v106);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_36();
  v34 = (v33 - v32);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v38);
  v102 = &v99 - v39;
  OUTLINED_FUNCTION_78_0();
  v103 = type metadata accessor for TimeZone();
  v40 = OUTLINED_FUNCTION_14(v103);
  v99 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_78_0();
  v44 = type metadata accessor for Date.FormatStyle();
  v45 = OUTLINED_FUNCTION_14(v44);
  v104 = v46;
  v105 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_4();
  v49 = &_s10Foundation4DateVSgMd;
  v50 = &_s10Foundation4DateVSgMR;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v54);
  v56 = &v99 - v55;
  v57 = type metadata accessor for Date();
  v58 = OUTLINED_FUNCTION_14(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_36();
  v65 = v64 - v63;
  outlined init with copy of EagerResolutionService?();
  OUTLINED_FUNCTION_166(v56, 1, v57);
  if (v66)
  {
    v67 = &_s10Foundation4DateVSgMd;
    v68 = &_s10Foundation4DateVSgMR;
    v69 = v56;
LABEL_15:
    outlined destroy of IntentApplication?(v69, v67, v68);
    OUTLINED_FUNCTION_148();
    return;
  }

  (*(v60 + 32))(v65, v56, v57);
  v70 = v110;
  if (v110)
  {
    v71 = OUTLINED_FUNCTION_44_15();
    static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v71, v72, v73, v100, v101, v74, v75, v76, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
    if ((a21 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v77 = OUTLINED_FUNCTION_44_15();
    static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v77, v78, v79, v80, v81, v82, v83, v84, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
    if ((a21 & 1) == 0)
    {
LABEL_14:
      v93 = v106;
      (*(v60 + 16))(&v34[*(v106 + 24)], v65, v57);
      *v34 = v70 & 1;
      v34[1] = BYTE4(v110) & 1;
      v94 = &v34[*(v93 + 28)];
      *v94 = v50;
      v94[1] = v49;
      v111[3] = MEMORY[0x277D837D0];
      v111[4] = MEMORY[0x277D83838];
      OUTLINED_FUNCTION_5_26();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v95, v96);

      v97 = v105;
      Date.formatted<A>(_:)();
      LLMFormatter.StringInterpolation.appendInterpolation(_:)();
      OUTLINED_FUNCTION_3_33();
      outlined destroy of EditorialDateFormatter.DateInput(v34, v98);
      (*(v104 + 8))(v22, v97);
      (*(v60 + 8))(v65, v57);
      v67 = &_ss23CustomStringConvertible_pSgMd;
      v68 = &_ss23CustomStringConvertible_pSgMR;
      v69 = v111;
      goto LABEL_15;
    }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v85 = type metadata accessor for Logger();
  __swift_project_value_buffer(v85, static Logging.answerSynthesis);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_25D85C000, v86, v87, "LLMFormatter using default timeZone GMT", v88, 2u);
    v50 = v108;
    OUTLINED_FUNCTION_42_0();
  }

  v89 = v102;
  TimeZone.init(secondsFromGMT:)();
  OUTLINED_FUNCTION_166(v89, 1, v103);
  v70 = v110;
  if (!v66)
  {
    v90 = *(v99 + 32);
    v91 = OUTLINED_FUNCTION_51_11();
    v92(v91);
    Date.FormatStyle.timeZone.setter();
    v49 = v109;
    goto LABEL_14;
  }

  __break(1u);
}

void static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v23;
  a20 = v24;
  v146 = v25;
  v150 = v26;
  v145[7] = v27;
  v160 = v28;
  v29 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v30 = OUTLINED_FUNCTION_14(v29);
  v161 = v31;
  v162 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_3();
  v159 = v34;
  OUTLINED_FUNCTION_78_0();
  v35 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v36 = OUTLINED_FUNCTION_14(v35);
  v157 = v37;
  v158 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_3();
  v156 = v40;
  OUTLINED_FUNCTION_78_0();
  v41 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v42 = OUTLINED_FUNCTION_14(v41);
  v154 = v43;
  v155 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_3();
  v153 = v46;
  OUTLINED_FUNCTION_78_0();
  v47 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v48 = OUTLINED_FUNCTION_14(v47);
  v145[5] = v49;
  v145[6] = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2_3();
  v145[4] = v52;
  OUTLINED_FUNCTION_78_0();
  v53 = type metadata accessor for FormatStyleCapitalizationContext();
  v54 = OUTLINED_FUNCTION_114(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_3();
  v149 = v57;
  OUTLINED_FUNCTION_78_0();
  v58 = type metadata accessor for TimeZone();
  v59 = OUTLINED_FUNCTION_114(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_3();
  v148 = v62;
  OUTLINED_FUNCTION_78_0();
  v63 = type metadata accessor for Calendar();
  v64 = OUTLINED_FUNCTION_114(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_2_3();
  v147 = v67;
  OUTLINED_FUNCTION_78_0();
  v68 = type metadata accessor for Locale();
  v69 = OUTLINED_FUNCTION_114(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV04TimeD0VSgMd, &_s10Foundation4DateV11FormatStyleV04TimeD0VSgMR);
  v75 = OUTLINED_FUNCTION_114(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV0bD0VSgMd, &_s10Foundation4DateV11FormatStyleV0bD0VSgMR);
  v80 = OUTLINED_FUNCTION_114(v79);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v83);
  v84 = type metadata accessor for Date.FormatStyle();
  v85 = OUTLINED_FUNCTION_14(v84);
  v151 = v86;
  v152 = v85;
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_109();
  v91 = v89 - v90;
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_73_8();
  v96 = MEMORY[0x28223BE20](v95);
  v98 = v145 - v97;
  v99 = MEMORY[0x28223BE20](v96);
  v101 = v145 - v100;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_62_9();
  type metadata accessor for Date.FormatStyle.DateStyle();
  if (v146)
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
    type metadata accessor for Date.FormatStyle.TimeStyle();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v109);
    if (!v150)
    {
      type metadata accessor for NSUserDefaults();
      static NSUserDefaults.fallbackLocale.getter();
    }

    Locale.init(identifier:)();
    static Calendar.autoupdatingCurrent.getter();
    v118 = static TimeZone.autoupdatingCurrent.getter();
    MEMORY[0x25F899230](v118);
    v119 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    MEMORY[0x25F899530](v119);
    Date.FormatStyle.weekday(_:)();
    v120 = OUTLINED_FUNCTION_41_10();
    v121(v120);
    v122 = *(v151 + 8);
    v123 = v22;
    v124 = v152;
    v125 = v122(v123, v152);
    MEMORY[0x25F899430](v125);
    Date.FormatStyle.day(_:)();
    v126 = OUTLINED_FUNCTION_129_5();
    v127(v126);
    v128 = v122(v98, v124);
    MEMORY[0x25F8994E0](v128);
    Date.FormatStyle.month(_:)();
    v129 = OUTLINED_FUNCTION_129_5();
    v130(v129);
    v122(v101, v124);
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    Date.FormatStyle.year(_:)();
    v131 = OUTLINED_FUNCTION_129_5();
    v132(v131);
    v122(v21, v124);
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v113);
    type metadata accessor for Date.FormatStyle.TimeStyle();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
    if (!v150)
    {
      type metadata accessor for NSUserDefaults();
      static NSUserDefaults.fallbackLocale.getter();
    }

    OUTLINED_FUNCTION_76_9(&a18);
    OUTLINED_FUNCTION_37_5();
    Locale.init(identifier:)();
    static Calendar.autoupdatingCurrent.getter();
    v133 = static TimeZone.autoupdatingCurrent.getter();
    MEMORY[0x25F899230](v133);
    v134 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    MEMORY[0x25F899430](v134);
    Date.FormatStyle.day(_:)();
    v135 = OUTLINED_FUNCTION_25_15();
    v136(v135);
    v137 = v152;
    v138 = *(v151 + 8);
    v139 = v138(v91, v152);
    MEMORY[0x25F8994E0](v139);
    v140 = v145[1];
    Date.FormatStyle.month(_:)();
    v141 = OUTLINED_FUNCTION_129_5();
    v142(v141);
    v138(v20, v137);
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    Date.FormatStyle.year(_:)();
    v143 = OUTLINED_FUNCTION_41_10();
    v144(v143);
    v138(v140, v137);
  }

  OUTLINED_FUNCTION_148();
}

void LLMFormatter.StringInterpolation.appendInterpolation<A>(_:dates:locale:formatStyle:)()
{
  OUTLINED_FUNCTION_155();
  if (v2)
  {
    v8 = v2;
    if (*(v2 + 16))
    {
      v9 = v7;
      v10 = v6;
      v11 = v5;
      v12 = v4;
      v13 = v3;
      v17 = v0;
      v18 = v1;

      OUTLINED_FUNCTION_48_9();
      MEMORY[0x25F89F6C0](v17, v18);

      MEMORY[0x28223BE20](v14);
      v16[2] = v10;
      v16[3] = v9;
      v16[4] = v13;
      v16[5] = v12;
      v16[6] = v11;
      v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DateVG_SSs5NeverOTg5(partial apply for closure #1 in LLMFormatter.StringInterpolation.appendInterpolation<A>(_:dates:locale:formatStyle:), v16, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      BidirectionalCollection<>.joined(separator:)();

      OUTLINED_FUNCTION_57_9();

      v15 = OUTLINED_FUNCTION_40_15();
      MEMORY[0x25F89F6C0](v15);
    }
  }

  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in LLMFormatter.StringInterpolation.appendInterpolation<A>(_:dates:locale:formatStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = a6;
  v9 = type metadata accessor for EditorialDateFormatter.DateInput(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 32);
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 16))(&v13[v14], a1, v15);
  *v13 = 257;
  v16 = &v13[*(v10 + 36)];
  *v16 = a2;
  *(v16 + 1) = a3;

  dispatch thunk of FormatStyle.format(_:)();
  return outlined destroy of EditorialDateFormatter.DateInput(v13, type metadata accessor for EditorialDateFormatter.DateInput);
}

void LLMFormatter.StringInterpolation.appendInterpolation(date:locale:timeIsUnknown:timeZone:)()
{
  OUTLINED_FUNCTION_155();
  v109 = v3;
  v110 = v4;
  HIDWORD(v106) = v5;
  v107 = v6;
  v108 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39_0();
  v105 = v14;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_62_9();
  v111 = type metadata accessor for TimeZone();
  v16 = OUTLINED_FUNCTION_14(v111);
  v103 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39_0();
  v100 = v20;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_4();
  v102 = v22;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_2();
  v101 = v24;
  OUTLINED_FUNCTION_78_0();
  v25 = type metadata accessor for Date.FormatStyle();
  v26 = OUTLINED_FUNCTION_14(v25);
  v113 = v27;
  v114 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_3();
  v112 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_109();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_46_14();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  v44 = &v98 - v43;
  v45 = type metadata accessor for Date();
  v46 = OUTLINED_FUNCTION_14(v45);
  v115 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_3();
  v51 = v50;
  v104 = v9;
  outlined init with copy of EagerResolutionService?();
  v52 = type metadata accessor for DateComponents();
  v53 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v53, v54, v52);
  if (v59)
  {
    outlined destroy of IntentApplication?(v2, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v45);
  }

  else
  {
    v99 = v0;
    DateComponents.date.getter();
    v58 = *(*(v52 - 8) + 8);
    v58(v2, v52);
    OUTLINED_FUNCTION_166(v44, 1, v45);
    if (!v59)
    {
      v98 = v58;
      v63 = v51;
      (*(v115 + 32))(v51, v44, v45);
      if ((v106 & 0x100000000) != 0)
      {
        v64 = OUTLINED_FUNCTION_67_11();
        static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v64, v65, v66, v67, v68, v69, v70, v71, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
        v72 = v111;
        if (!v110)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v73 = OUTLINED_FUNCTION_67_11();
        v74 = v110;
        static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v73, v75, v76, v109, v110, v77, v78, v79, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
        v72 = v111;
        if (!v74)
        {
          goto LABEL_14;
        }
      }

      TimeZone.init(identifier:)();
      OUTLINED_FUNCTION_166(v1, 1, v72);
      if (!v59)
      {
        v85 = v103;
        v86 = v101;
        (*(v103 + 32))(v101, v1, v72);
        v87 = OUTLINED_FUNCTION_54_13();
        v88(v87);
        Date.FormatStyle.timeZone.setter();
        (*(v85 + 8))(v86, v72);
LABEL_20:
        v116[3] = MEMORY[0x277D837D0];
        v116[4] = MEMORY[0x277D83838];
        OUTLINED_FUNCTION_5_26();
        _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v93, v94);
        v95 = v114;
        Date.formatted<A>(_:)();
        LLMFormatter.StringInterpolation.appendInterpolation(_:)();
        v96 = OUTLINED_FUNCTION_129_5();
        v97(v96, v95);
        (*(v115 + 8))(v63, v45);
        v60 = &_ss23CustomStringConvertible_pSgMd;
        v61 = &_ss23CustomStringConvertible_pSgMR;
        v62 = v116;
        goto LABEL_21;
      }

      outlined destroy of IntentApplication?(v1, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
LABEL_14:
      outlined init with copy of EagerResolutionService?();
      OUTLINED_FUNCTION_166(v37, 1, v52);
      if (v59)
      {
        outlined destroy of IntentApplication?(v37, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
        v83 = v105;
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v80, v81, v82, v72);
      }

      else
      {
        v83 = v105;
        DateComponents.timeZone.getter();
        v98(v37, v52);
        OUTLINED_FUNCTION_166(v83, 1, v72);
        if (!v84)
        {
          v89 = v103;
          v90 = v100;
          (*(v103 + 32))(v100, v83, v72);
          v91 = OUTLINED_FUNCTION_54_13();
          v92(v91);
          Date.FormatStyle.timeZone.setter();
          (*(v89 + 8))(v90, v72);
          goto LABEL_20;
        }
      }

      outlined destroy of IntentApplication?(v83, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
      goto LABEL_20;
    }
  }

  v60 = &_s10Foundation4DateVSgMd;
  v61 = &_s10Foundation4DateVSgMR;
  v62 = v44;
LABEL_21:
  outlined destroy of IntentApplication?(v62, v60, v61);
  OUTLINED_FUNCTION_148();
}

void LLMFormatter.StringInterpolation.appendInterpolation(_:date:locale:timeIsUnknown:timeZone:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_63_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_46_14();
  v16 = type metadata accessor for DateComponents();
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_4();
  outlined init with copy of EagerResolutionService?();
  v22 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v22, v23, v16);
  if (v24)
  {
    outlined destroy of IntentApplication?(v0, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  }

  else
  {
    (*(v19 + 32))(v1, v0, v16);

    OUTLINED_FUNCTION_48_9();
    MEMORY[0x25F89F6C0](v5, v3);

    (*(v19 + 16))(v14, v1, v16);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
    LLMFormatter.StringInterpolation.appendInterpolation(date:locale:timeIsUnknown:timeZone:)();
    outlined destroy of IntentApplication?(v14, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v25 = OUTLINED_FUNCTION_40_15();
    MEMORY[0x25F89F6C0](v25);
    (*(v19 + 8))(v1, v16);
  }

  OUTLINED_FUNCTION_148();
}

Swift::Void __swiftcall LLMFormatter.StringInterpolation.appendInterpolation(_:dictionary:)(Swift::String _, Swift::OpaquePointer_optional dictionary)
{
  if (dictionary.value._rawValue)
  {
    rawValue = dictionary.value._rawValue;
    object = _._object;

    OUTLINED_FUNCTION_48_9();
    OUTLINED_FUNCTION_57_9();

    v28 = specialized _copyCollectionToContiguousArray<A>(_:)(rawValue);
    specialized MutableCollection<>.sort(by:)(&v28);
    v3 = 0;
    v4 = v28;
    v5 = *(v28 + 16);
    v6 = v28 + 56;
    v7 = MEMORY[0x277D84F90];
LABEL_3:
    for (i = (v6 + 32 * v3); ; i += 4)
    {
      if (v5 == v3)
      {

        v32 = v7;
        type metadata accessor for NSUserDefaults();
        v28 = static NSUserDefaults.llmPromptLineBreak.getter();
        object = v22;
        v23 = static NSUserDefaults.llmPromptLineBreak.getter();
        MEMORY[0x25F89F6C0](v23);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_121_0();
        v24 = BidirectionalCollection<>.joined(separator:)();
        v26 = v25;

        v30 = MEMORY[0x277D837D0];
        v31 = MEMORY[0x277D83838];
        v28 = v24;
        object = v26;
        LLMFormatter.StringInterpolation.appendInterpolation(_:)();
        outlined destroy of IntentApplication?(&v28, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
        v27 = OUTLINED_FUNCTION_40_15();
        MEMORY[0x25F89F6C0](v27);
        return;
      }

      if (v3 >= *(v4 + 16))
      {
        break;
      }

      v9 = *(i - 2);
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = *(i - 3) & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        v12 = *(i - 1);
        v11 = *i;
        v13 = HIBYTE(*i) & 0xF;
        if ((*i & 0x2000000000000000) == 0)
        {
          v13 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          v28 = *(i - 3);
          object = v9;
          swift_bridgeObjectRetain_n();

          MEMORY[0x25F89F6C0](58, 0xE100000000000000);
          MEMORY[0x25F89F6C0](v12, v11);

          v14 = v28;
          v15 = object;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = v7[2];
            OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v7 = v20;
          }

          v17 = v7[2];
          v16 = v7[3];
          if (v17 >= v16 >> 1)
          {
            OUTLINED_FUNCTION_26_3(v16);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v7 = v21;
          }

          ++v3;
          v7[2] = v17 + 1;
          v18 = &v7[2 * v17];
          v18[4] = v14;
          v18[5] = v15;
          goto LABEL_3;
        }
      }

      ++v3;
    }

    __break(1u);

    __break(1u);
  }
}

uint64_t protocol witness for StringInterpolationProtocol.init(literalCapacity:interpolationCount:) in conformance LLMFormatter.StringInterpolation@<X0>(Swift::Int a1@<X0>, Swift::Int a2@<X1>, OmniSearch::LLMFormatter::StringInterpolation *a3@<X8>)
{
  v5 = LLMFormatter.StringInterpolation.init(literalCapacity:interpolationCount:)(a1, a2);
  result = v5.resolvedOutput._countAndFlagsBits;
  *a3 = v5;
  return result;
}

uint64_t LLMFormatter.description.getter()
{
  OUTLINED_FUNCTION_134();

  return v0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LLMFormatter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EditorialDateFormatter.DateInput.date.getter()
{
  return EditorialDateFormatter.DateInput.date.getter();
}

{
  v0 = OUTLINED_FUNCTION_113();
  v2 = *(v1(v0) + 24);
  v3 = type metadata accessor for Date();
  OUTLINED_FUNCTION_17(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_47_12();

  return v7(v6);
}

uint64_t EditorialDateFormatter.DateInput.locale.getter()
{
  v1 = (v0 + *(type metadata accessor for EditorialDateFormatter.DateInput(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_94();
}

OmniSearch::EditorialDateFormatter::ComponentOptions __swiftcall EditorialDateFormatter.ComponentOptions.init(minute:hour:weekday:year:)(Swift::Bool minute, Swift::Bool hour, Swift::Bool weekday, Swift::Bool year)
{
  if (year)
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  if (weekday)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (hour)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 0xFFFFFFFE | minute | v5 | v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance EditorialDateFormatter.ComponentOptions(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (a1[3])
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  if (a1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a1[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | v2;
  v7 = v4 | v3;
  if (a2[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  if (a2[2])
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  if (a2[1])
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return static EditorialDateFormatter.ComponentOptions.== infix(_:_:)(v6 | v7, v10 | *a2 | v9 | v8);
}

uint64_t EditorialDateFormatter.now.getter()
{
  OUTLINED_FUNCTION_113();
  v0 = type metadata accessor for Date();
  OUTLINED_FUNCTION_17(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_94();

  return v4(v3);
}

uint64_t EditorialDateFormatter.yesterday.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = *(type metadata accessor for EditorialDateFormatter(v0) + 20);
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_17(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_47_12();

  return v6(v5);
}

uint64_t EditorialDateFormatter.calendar.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = *(type metadata accessor for EditorialDateFormatter(v0) + 28);
  v2 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_17(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_47_12();

  return v6(v5);
}

void EditorialDateFormatter.format(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v24;
  a20 = v25;
  v26 = v21;
  v28 = v27;
  v29 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v30 = OUTLINED_FUNCTION_14(v29);
  v242 = v31;
  v243 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_3();
  v241 = v34;
  OUTLINED_FUNCTION_78_0();
  v218 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v35 = OUTLINED_FUNCTION_14(v218);
  v217 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v39);
  v40 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v41 = OUTLINED_FUNCTION_14(v40);
  v239 = v42;
  v240 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_3();
  v238 = v45;
  OUTLINED_FUNCTION_78_0();
  v46 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v47 = OUTLINED_FUNCTION_14(v46);
  v236 = v48;
  v237 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_3();
  v235 = v51;
  OUTLINED_FUNCTION_78_0();
  v52 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v53 = OUTLINED_FUNCTION_14(v52);
  v233 = v54;
  v234 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_2_3();
  v232 = v57;
  OUTLINED_FUNCTION_78_0();
  v231 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v58 = OUTLINED_FUNCTION_14(v231);
  v230 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v62);
  v228 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v63 = OUTLINED_FUNCTION_14(v228);
  v227 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v67);
  v68 = type metadata accessor for FormatStyleCapitalizationContext();
  v69 = OUTLINED_FUNCTION_114(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v72);
  v73 = type metadata accessor for TimeZone();
  v74 = OUTLINED_FUNCTION_114(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v77);
  v78 = type metadata accessor for Calendar();
  v79 = OUTLINED_FUNCTION_114(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v82);
  v83 = type metadata accessor for Locale();
  v84 = OUTLINED_FUNCTION_114(v83);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_4();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV04TimeD0VSgMd, &_s10Foundation4DateV11FormatStyleV04TimeD0VSgMR);
  OUTLINED_FUNCTION_114(v87);
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_15_4(&v214 - v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV0bD0VSgMd, &_s10Foundation4DateV11FormatStyleV0bD0VSgMR);
  OUTLINED_FUNCTION_114(v92);
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_28_2(&v214 - v96);
  v97 = type metadata accessor for Date.FormatStyle();
  v98 = OUTLINED_FUNCTION_14(v97);
  v246 = v99;
  v247 = v98;
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_109();
  v104 = v102 - v103;
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_73_8();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_7_4();
  v244 = v109;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  v112 = MEMORY[0x28223BE20](v111);
  v114 = &v214 - v113;
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_14_2();
  v116 = OUTLINED_FUNCTION_28_2(v115);
  v117 = type metadata accessor for EditorialDateFormatter.DateInput(v116);
  v118 = OUTLINED_FUNCTION_17(v117);
  v120 = *(v119 + 64);
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_109();
  v123 = v121 - v122;
  v125 = MEMORY[0x28223BE20](v124);
  v127 = &v214 - v126;
  v249 = v125;
  v250 = v28;
  v128 = &v28[*(v125 + 28)];
  v129 = v128[1];
  v226 = v114;
  if (v129)
  {
    v245 = *v128;
    v248 = v129;
  }

  else
  {
    type metadata accessor for NSUserDefaults();
    v245 = static NSUserDefaults.fallbackLocale.getter();
    v248 = v130;
  }

  v131 = *(v26 + *(type metadata accessor for EditorialDateFormatter(0) + 32));
  v132 = one-time initialization token for answerSynthesis;

  if (v131 == 1)
  {
    if (v132 != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v133 = type metadata accessor for Logger();
    __swift_project_value_buffer(v133, static Logging.answerSynthesis);
    OUTLINED_FUNCTION_23_17();
    outlined init with copy of EditorialDateFormatter.DateInput();
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v215 = v23;
      v138 = v137;
      v251 = v137;
      *v136 = 136315138;
      v139 = *(v249 + 24);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_2_29();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v140, v141);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_3_33();
      outlined destroy of EditorialDateFormatter.DateInput(v127, v142);
      v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v136 + 4) = v143;
      _os_log_impl(&dword_25D85C000, v134, v135, "OmniSearch/editorialDates FF enabled. Return editorial date formatted string for %s.", v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v138);
      v23 = v215;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      OUTLINED_FUNCTION_3_33();
      outlined destroy of EditorialDateFormatter.DateInput(v127, v154);
    }

    EditorialDateFormatter.components(for:)();
    if (HIDWORD(v155))
    {

      v174 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      [v174 setDateStyle_];
      [v174 setTimeStyle_];
      [v174 setDoesRelativeDateFormatting_];
      [v174 setFormattingContext_];
      v175 = &v250[*(v249 + 24)];
      isa = Date._bridgeToObjectiveC()().super.isa;
      v177 = [v174 stringFromDate_];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v156 = v155;
      type metadata accessor for Date.FormatStyle.DateStyle();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
      type metadata accessor for Date.FormatStyle.TimeStyle();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
      Locale.init(identifier:)();
      OUTLINED_FUNCTION_70_8(&v252);
      static Calendar.autoupdatingCurrent.getter();
      OUTLINED_FUNCTION_30_14(&v253);
      static TimeZone.autoupdatingCurrent.getter();
      OUTLINED_FUNCTION_66_10(&a9);
      MEMORY[0x25F899230]();
      Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
      OUTLINED_FUNCTION_30_14(&a12);
      if ((v156 & 0x10000) != 0)
      {
        MEMORY[0x25F899530]();
      }

      else
      {
        MEMORY[0x25F899540]();
      }

      v188 = v246;
      v189 = v238;
      v190 = v235;
      Date.FormatStyle.weekday(_:)();
      v191 = OUTLINED_FUNCTION_17_21(&a13);
      v192(v191, v228);
      v193 = *(v188 + 8);
      v194 = v22;
      v195 = v247;
      v196 = v193(v194, v247);
      v197 = v229;
      MEMORY[0x25F899430](v196);
      OUTLINED_FUNCTION_64_7(&v251);
      Date.FormatStyle.day(_:)();
      OUTLINED_FUNCTION_4_4(&a17);
      v198(v197, v231);
      v199 = v193(v20, v195);
      MEMORY[0x25F8994E0](v199);
      Date.FormatStyle.month(_:)();
      v200 = OUTLINED_FUNCTION_41_10();
      v201(v200);
      v202 = v193(v23, v195);
      if ((v156 & 0x1000000) != 0)
      {
        static Date.FormatStyle.Symbol.Year.extended(minimumLength:)();
      }

      else
      {
        MEMORY[0x25F8994B0](v202);
      }

      v203 = v225;
      v204 = v244;
      Date.FormatStyle.year(_:)();
      (*(v236 + 8))(v190, v237);
      v193(v204, v195);
      if ((v156 & 0x100) != 0)
      {
        OUTLINED_FUNCTION_66_10(&v246);
        static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
        static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
        OUTLINED_FUNCTION_4_4(&v247);
        v205(v204, v218);
      }

      else
      {
        static Date.FormatStyle.Symbol.Hour.omitted.getter();
      }

      v206 = v226;
      Date.FormatStyle.hour(_:)();
      (*(v239 + 8))(v189, v240);
      v207 = v193(v203, v195);
      if (v156)
      {
        MEMORY[0x25F899510](v207);
      }

      else
      {
        MEMORY[0x25F899500](v207);
      }

      Date.FormatStyle.minute(_:)();
      v208 = OUTLINED_FUNCTION_41_10();
      v209(v208);
      v193(v206, v195);
      v210 = *(v249 + 24);
      OUTLINED_FUNCTION_5_26();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v211, v212);
      OUTLINED_FUNCTION_121_0();
      Date.formatted<A>(_:)();
      v213 = OUTLINED_FUNCTION_121_0();
      (v193)(v213);
    }
  }

  else
  {
    if (v132 != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v144 = type metadata accessor for Logger();
    __swift_project_value_buffer(v144, static Logging.answerSynthesis);
    OUTLINED_FUNCTION_23_17();
    outlined init with copy of EditorialDateFormatter.DateInput();
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v251 = v148;
      *v147 = 136315138;
      v149 = *(v249 + 24);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_2_29();
      _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v150, v151);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_3_33();
      outlined destroy of EditorialDateFormatter.DateInput(v123, v152);
      v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v147 + 4) = v153;
      _os_log_impl(&dword_25D85C000, v145, v146, "OmniSearch/editorialDates FF disabled. Return original date formatted string for %s.", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v148);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      OUTLINED_FUNCTION_3_33();
      outlined destroy of EditorialDateFormatter.DateInput(v123, v165);
    }

    v166 = v247;
    v167 = (v246 + 8);
    if (*v250 == 1)
    {
      v168 = OUTLINED_FUNCTION_39_13();
      static LLMFormatter.dateTimeFormatter(locale:includeWeekday:timeZone:)(v168, v169, v170, 0, 0, v171, v172, v173, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225);
    }

    else
    {
      v178 = OUTLINED_FUNCTION_39_13();
      static LLMFormatter.dateOnlyFormatter(locale:includeWeekday:)(v178, v179, v180, v181, v182, v183, v184, v185, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225);
    }

    OUTLINED_FUNCTION_5_26();
    _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v186, v187);
    Date.formatted<A>(_:)();
    (*v167)(v104, v166);
  }

  OUTLINED_FUNCTION_148();
}

void EditorialDateFormatter.components(for:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = type metadata accessor for Calendar.Component();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  v11 = *(type metadata accessor for EditorialDateFormatter.DateInput(0) + 24);
  EditorialDateFormatter.isThisWeek(_:)();
  v12 = *(type metadata accessor for EditorialDateFormatter(0) + 28);
  v14 = *(v5 + 104);
  v14(v10, *MEMORY[0x277CC9988], v2);
  Calendar.isDate(_:equalTo:toGranularity:)();
  v13 = *(v5 + 8);
  v13(v10, v2);
  if (*v1 == 1)
  {
    v14(v10, *MEMORY[0x277CC99A0], v2);
    Calendar.component(_:from:)();
    v13(v10, v2);
  }

  EditorialDateFormatter.isYesterdayTodayOrTomorrow(_:)(&v1[v11]);
  OUTLINED_FUNCTION_148();
}

uint64_t EditorialDateFormatter.isThisWeek(_:)()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for EditorialDateFormatter(0) + 28);
  v6 = v1[13];
  v6(v4, *MEMORY[0x277CC9940], v0);
  v7 = Calendar.isDate(_:equalTo:toGranularity:)();
  v8 = v1[1];
  v8(v4, v0);
  if (v7)
  {
    v6(v4, *MEMORY[0x277CC9988], v0);
    v9 = Calendar.isDate(_:equalTo:toGranularity:)();
    v8(v4, v0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t EditorialDateFormatter.isYesterdayTodayOrTomorrow(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EditorialDateFormatter(0);
  v8 = v7[7];
  v9 = *MEMORY[0x277CC9968];
  v10 = v3[13];
  v10(v6, v9, v2);
  v16[0] = v8;
  v16[1] = a1;
  LOBYTE(v8) = Calendar.isDate(_:equalTo:toGranularity:)();
  v11 = v3[1];
  v11(v6, v2);
  if (v8 & 1) != 0 || (v12 = v7[5], v10(v6, v9, v2), LOBYTE(v12) = Calendar.isDate(_:equalTo:toGranularity:)(), v11(v6, v2), (v12))
  {
    v13 = 1;
  }

  else
  {
    v14 = v7[6];
    v10(v6, v9, v2);
    v13 = Calendar.isDate(_:equalTo:toGranularity:)();
    v11(v6, v2);
  }

  return v13 & 1;
}

uint64_t static EditorialDateFormatter.== infix(_:_:)()
{
  OUTLINED_FUNCTION_134();
  if (static Date.== infix(_:_:)() & 1) != 0 && (v2 = type metadata accessor for EditorialDateFormatter(0), v3 = v2[5], (static Date.== infix(_:_:)()) && (v4 = v2[6], (static Date.== infix(_:_:)()) && (MEMORY[0x25F899820](v1 + v2[7], v0 + v2[7]))
  {
    v5 = *(v1 + v2[8]) ^ *(v0 + v2[8]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t EditorialDateFormatter.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827310 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6164726574736579 && a2 == 0xE900000000000079;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x776F72726F6D6F74 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x800000025DBF3AD0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t EditorialDateFormatter.CodingKeys.stringValue.getter(char a1)
{
  result = 7827310;
  switch(a1)
  {
    case 1:
      result = 0x6164726574736579;
      break;
    case 2:
      result = 0x776F72726F6D6F74;
      break;
    case 3:
      result = 0x7261646E656C6163;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EditorialDateFormatter.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EditorialDateFormatter.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EditorialDateFormatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EditorialDateFormatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialDateFormatter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch22EditorialDateFormatterV10CodingKeys33_3BE4AA3428794E5481C5DF6D00897BA3LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch22EditorialDateFormatterV10CodingKeys33_3BE4AA3428794E5481C5DF6D00897BA3LLOGMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = 0;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_2_29();
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v14, v15);
  OUTLINED_FUNCTION_29_11();
  if (!v2)
  {
    v16 = type metadata accessor for EditorialDateFormatter(0);
    v17 = v16[5];
    v28 = 1;
    OUTLINED_FUNCTION_29_11();
    v18 = v16[6];
    v27 = 2;
    OUTLINED_FUNCTION_29_11();
    v19 = v16[7];
    v26 = 3;
    type metadata accessor for Calendar();
    OUTLINED_FUNCTION_13_11();
    _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v20, v21);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(v3 + v16[8]);
    v25 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

void EditorialDateFormatter.hash(into:)()
{
  v1 = v0;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_2_29();
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v2, v3);
  OUTLINED_FUNCTION_55_10();
  v4 = type metadata accessor for EditorialDateFormatter(0);
  v5 = v0 + v4[5];
  OUTLINED_FUNCTION_55_10();
  v6 = v1 + v4[6];
  OUTLINED_FUNCTION_55_10();
  v7 = v4[7];
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_13_11();
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v8, v9);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v4[8]));
}

Swift::Int EditorialDateFormatter.hashValue.getter()
{
  Hasher.init(_seed:)();
  EditorialDateFormatter.hash(into:)();
  return Hasher._finalize()();
}

uint64_t EditorialDateFormatter.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v63 = type metadata accessor for Calendar();
  v4 = OUTLINED_FUNCTION_14(v63);
  v58 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_3();
  v57 = v8;
  OUTLINED_FUNCTION_78_0();
  v61 = type metadata accessor for Date();
  v9 = OUTLINED_FUNCTION_14(v61);
  v59 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_32_20();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_2();
  v60 = v18;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch22EditorialDateFormatterV10CodingKeys33_3BE4AA3428794E5481C5DF6D00897BA3LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch22EditorialDateFormatterV10CodingKeys33_3BE4AA3428794E5481C5DF6D00897BA3LLOGMR);
  OUTLINED_FUNCTION_14(v64);
  v62 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - v23;
  v25 = type metadata accessor for EditorialDateFormatter(0);
  v26 = OUTLINED_FUNCTION_17(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_36();
  v31 = v30 - v29;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys();
  v65 = v24;
  v33 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v34 = v2;
  v53 = v15;
  v54 = v25;
  v55 = v31;
  v66 = a1;
  v35 = v63;
  v71 = 0;
  OUTLINED_FUNCTION_2_29();
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v36, v37);
  v39 = v60;
  v38 = v61;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v60 = *(v59 + 32);
  v60(v55, v39, v38);
  v70 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v60(v55 + v54[5], v34, v38);
  v69 = 2;
  v40 = v53;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = v58;
  v60(v55 + v54[6], v40, v38);
  v68 = 3;
  OUTLINED_FUNCTION_13_11();
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(v42, v43);
  v44 = v57;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v41 + 32))(v55 + v54[7], v44, v35);
  v67 = 4;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = v66;
  v47 = v45;
  v48 = OUTLINED_FUNCTION_61_12();
  v49(v48);
  *(v55 + v54[8]) = v47 & 1;
  outlined init with copy of EditorialDateFormatter.DateInput();
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  v50 = OUTLINED_FUNCTION_37_5();
  return outlined destroy of EditorialDateFormatter.DateInput(v50, v51);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EditorialDateFormatter()
{
  Hasher.init(_seed:)();
  EditorialDateFormatter.hash(into:)();
  return Hasher._finalize()();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 32 * v10);
        v12 = (*a3 + 32 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = v12 + 9;
        while (v10 < v6)
        {
          if (*(v15 - 1) == *(v15 - 5) && *v15 == *(v15 - 4))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v15 += 4;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v17 = 32 * v10 - 16;
          v18 = 32 * v9 + 24;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v18);
              v23 = (v21 + v17);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v20;
            v17 -= 32;
            v18 += 32;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = v9 + a4;
          }

          if (v29 < v9)
          {
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
            return;
          }

          if (v10 != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v10 - 32;
            v93 = v9;
            v32 = v9 - v10;
            do
            {
              v33 = v10;
              v34 = (v30 + 32 * v10);
              v35 = *v34;
              v36 = v34[1];
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = v35 == *v38 && v36 == *(v38 + 8);
                if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                v35 = *(v38 + 32);
                v36 = *(v38 + 40);
                v40 = *(v38 + 48);
                v41 = *(v38 + 56);
                v42 = *(v38 + 16);
                *(v38 + 32) = *v38;
                *(v38 + 48) = v42;
                *v38 = v35;
                *(v38 + 8) = v36;
                *(v38 + 16) = v40;
                *(v38 + 24) = v41;
                v38 -= 32;
              }

              while (!__CFADD__(v37++, 1));
              v10 = v33 + 1;
              v31 += 32;
              --v32;
            }

            while (v33 + 1 != v29);
            v10 = v29;
            v9 = v93;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v92 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = v8[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v92;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_69:
            if (v54)
            {
              goto LABEL_109;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_117;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v45 < 2)
          {
            goto LABEL_111;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_84:
          if (v69)
          {
            goto LABEL_114;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v76 < v68)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v48 - 1 >= v45)
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

          if (!*a3)
          {
            goto LABEL_125;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v83 < v81)
          {
            goto LABEL_104;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_105;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_106;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_98;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v92;
      if (v92 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v96, *a1, a3);
LABEL_102:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, void *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(_OWORD *a1, void *a2, _OWORD *a3, void *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1);
    v10 = &a4[4 * v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *a4 && v6[1] == a4[1];
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 4;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 2;
    }

    v13 = a4;
    v12 = v7 == a4;
    a4 += 4;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = v13[1];
    *v7 = *v13;
    v7[1] = v14;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2);
  v10 = &a4[4 * v9];
LABEL_19:
  v15 = v6 - 4;
  for (v5 -= 2; v10 > a4 && v6 > v7; v5 -= 2)
  {
    v17 = *(v10 - 4) == *(v6 - 4) && *(v10 - 3) == *(v6 - 3);
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 2 == v6;
      v6 -= 4;
      if (!v12)
      {
        v19 = v15[1];
        *v5 = *v15;
        v5[1] = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 2))
    {
      v18 = *(v10 - 1);
      *v5 = *(v10 - 2);
      v5[1] = v18;
    }

    v10 -= 4;
  }

LABEL_36:
  v20 = (v10 - a4) / 32;
  if (v6 != a4 || v6 >= &a4[4 * v20])
  {
    memmove(v6, a4, 32 * v20);
  }

  return 1;
}

uint64_t _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditorialDateFormatter.CodingKeys and conformance EditorialDateFormatter.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of EditorialDateFormatter.DateInput()
{
  OUTLINED_FUNCTION_134();
  v2 = v1(0);
  OUTLINED_FUNCTION_17(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t outlined destroy of EditorialDateFormatter.DateInput(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LLMFormatter and conformance LLMFormatter()
{
  result = lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter;
  if (!lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter;
  if (!lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter;
  if (!lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMFormatter and conformance LLMFormatter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LLMFormatter.StringInterpolation and conformance LLMFormatter.StringInterpolation()
{
  result = lazy protocol witness table cache variable for type LLMFormatter.StringInterpolation and conformance LLMFormatter.StringInterpolation;
  if (!lazy protocol witness table cache variable for type LLMFormatter.StringInterpolation and conformance LLMFormatter.StringInterpolation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMFormatter.StringInterpolation and conformance LLMFormatter.StringInterpolation);
  }

  return result;
}

uint64_t type metadata completion function for EditorialDateFormatter()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Calendar();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for EditorialDateFormatter.DateInput()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for EditorialDateFormatter.ComponentOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[4])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for EditorialDateFormatter.ComponentOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EditorialDateFormatter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
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

uint64_t getEnumTagSinglePayload for TextSanitizer(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for TextSanitizer(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_21_16()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_29_11()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_39_13()
{
  v1 = *(*(v0 - 120) + 24);
  v2 = *(*(v0 - 112) + 1);
  result = *(v0 - 152);
  v4 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_15()
{
  v1 = *(v0 - 132) & 1;
  v2 = *(v0 - 144);
  return *(v0 - 152);
}

void OUTLINED_FUNCTION_48_9()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_55_10()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_56_9()
{

  return BidirectionalCollection<>.joined(separator:)();
}

void OUTLINED_FUNCTION_57_9()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_61_12()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 104);
  return *(v1 - 96);
}

uint64_t OUTLINED_FUNCTION_67_11()
{
  v1 = *(v0 - 160);
  result = *(v0 - 200);
  v3 = *(v0 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_75_9()
{
  v2 = *(*(v1 - 232) + 8);
  result = v0;
  v4 = *(v1 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_77_8()
{

  return outlined init with copy of EagerResolutionService?();
}

uint64_t OUTLINED_FUNCTION_79_10()
{

  return LLMFormatter.StringInterpolation.appendInterpolation(_:)();
}

Swift::String __swiftcall SearchResultItem.llmConsumableDescription(locale:)(Swift::String_optional locale)
{
  object = locale.value._object;
  countAndFlagsBits = locale.value._countAndFlagsBits;
  SearchResultItem.associatedValue.getter(v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v4 + 56))(countAndFlagsBits, object, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  v5 = OUTLINED_FUNCTION_94();
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t specialized EnumeratedSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15OmniSearchTypes5PhotoV7elementtMd, &_sSi6offset_15OmniSearchTypes5PhotoV7elementtMR);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v11 = type metadata accessor for Photo();
      v12 = *(v11 - 8);
      v13 = *(v12 + 16);
      v14 = v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v3 + 48);
      v16 = v1[2];
      *v7 = v16;
      result = v13(&v7[v15], v14, v11);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        outlined init with take of SearchResultItem?(v7, a1, &_sSi6offset_15OmniSearchTypes5PhotoV7elementtMd, &_sSi6offset_15OmniSearchTypes5PhotoV7elementtMR);
        return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      swift_dynamicCast();
      v6 = *(v14 + 16);
      v5 = *(v14 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v5 > 1, v6 + 1, 1);
      }

      *(v14 + 16) = v6 + 1;
      v7 = v14 + 40 * v6;
      *(v7 + 64) = v13;
      *(v7 + 32) = v11;
      *(v7 + 48) = v12;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = (a1 + 56);
    v2 = v17;
    do
    {
      v9 = *(v4 - 3);
      v10 = *(v4 - 2);
      v11 = *(v4 - 1);
      v12 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS8bundleId_SS03docB0tMd, &_sSS8bundleId_SS03docB0tMR);
      swift_dynamicCast();
      v6 = *(v17 + 16);
      v5 = *(v17 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v17 + 16) = v6 + 1;
      v7 = (v17 + 32 * v6);
      v7[4] = v13;
      v7[5] = v14;
      v7[6] = v15;
      v7[7] = v16;
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}