uint64_t sub_19373EFC8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373F010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    result = OUTLINED_FUNCTION_266_2(result, a2 - 0x7FFFFFFF, 0);
    if (v3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373F088(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 136))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 112);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373F0C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    result = OUTLINED_FUNCTION_111_13(result, 0);
    *(result + 120) = v3;
    *result = v4;
    if (v5 < 0)
    {
      return OUTLINED_FUNCTION_372_1(result);
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19373F154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 128))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 80);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373F194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    result = OUTLINED_FUNCTION_111_13(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19373F214(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3F && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 62);
    }

    v3 = ((*a1 >> 57) & 0x78 | *a1 & 7) ^ 0x7F;
    if (v3 >= 0x3E)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373F25C(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_21_40(result, -a2 | (-a2 << 57));
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolKitToolSystemToolProtocol.ConditionallyEnabled(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_117_1(result, a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_19373F404(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 80))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
  }

  OUTLINED_FUNCTION_52_15(a1);
  v4 = v3 - 1;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_46_4(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_19373F464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitdD10DefinitionV8Version1V0D4IconOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_19373F540(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 632))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void sub_19373F57C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    OUTLINED_FUNCTION_23_38(a1, 0);
    OUTLINED_FUNCTION_350(v3);
    *(v4 + 504) = v5;
    *(v4 + 488) = v5;
    *(v4 + 472) = v5;
    *(v4 + 456) = v5;
    *(v4 + 440) = v5;
    *(v4 + 424) = v5;
    *(v4 + 408) = v5;
    *(v4 + 392) = v5;
    *(v4 + 376) = v5;
    OUTLINED_FUNCTION_350(v5);
    *v6 = v7;
    if (v8 < 0)
    {
      *(v6 + 632) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      OUTLINED_FUNCTION_360_1(a1, a2);
      return;
    }

    *(a1 + 632) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitdD10DefinitionV8Version1V9ParameterV0D8MetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19373F68C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 136))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 56);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373F6C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    result = OUTLINED_FUNCTION_111_13(result, 0);
    *(result + 120) = v3;
    *result = v4;
    if (v5 < 0)
    {
      return OUTLINED_FUNCTION_372_1(result);
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19373F73C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373F784(uint64_t result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373F7E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 120);
    }

    OUTLINED_FUNCTION_176_3(a1);
    v4 = v3 ^ 0x7F;
    if (v4 >= 0x78)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373F874(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 9))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_19373F8B0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 9) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_19373F91C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 24))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373F958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_205_2(result);
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

      return OUTLINED_FUNCTION_246_2(result, (a2 - 1));
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_246_2(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_19373F9DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373FA24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    result = OUTLINED_FUNCTION_326_0(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
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
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373FAE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 112))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 104);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373FB20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    result = OUTLINED_FUNCTION_111_13(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 112) = 1;
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

      return OUTLINED_FUNCTION_353_1(result, (a2 - 1));
    }

    *(result + 112) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_353_1(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_19373FBC4(uint64_t result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_116_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373FC20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 80))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373FC5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    result = OUTLINED_FUNCTION_266_2(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_371_0(result);
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

      return OUTLINED_FUNCTION_359_1(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_359_1(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373FCB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    return OUTLINED_FUNCTION_46_4(14 - ((4 * v3) & 0xC | (v3 >> 2)));
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_19373FD08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD3AnyVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19373FD7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 40);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373FDC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    result = OUTLINED_FUNCTION_326_0(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
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
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_19373FE48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373FED0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373FF4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373FF94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373FFFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 24))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 120);
    }

    v3 = ((*(a1 + 16) >> 57) >> 4) | (8 * ((*(a1 + 16) >> 57) & 8 | *(a1 + 16) & 7));
    v4 = v3 ^ 0x7F;
    v5 = 126 - v3;
    if (v4 >= 0x79)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v5);
}

uint64_t sub_193740054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_246_2(result, ((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

_BYTE *_s27IntelligencePlatformLibrary23ToolKitToolAllPredicateVwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_193740170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 80))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1937401AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    result = OUTLINED_FUNCTION_266_2(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_371_0(result);
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

      return OUTLINED_FUNCTION_360_1(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_360_1(result, a2);
    }
  }

  return result;
}

uint64_t sub_193740228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 107))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193740264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    result = OUTLINED_FUNCTION_191_3(result, 0);
    *(result + 106) = 0;
    *(result + 104) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 107) = 1;
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

      return OUTLINED_FUNCTION_359_1(result, a2);
    }

    *(result + 107) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_359_1(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1937402F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 59))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 24);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_193740344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 59) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 59) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_116_13(result, a2);
    }
  }

  return result;
}

void sub_1937403FC()
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
      if (v2 <= 0x3F)
      {
        sub_193740510();
        if (v3 <= 0x3F)
        {
          sub_193740560();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_193740510()
{
  if (!qword_1ED503138)
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED503138);
    }
  }
}

void sub_193740560()
{
  if (!qword_1ED5030D8)
  {
    v0 = sub_19393C520();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED5030D8);
    }
  }
}

uint64_t sub_1937405C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 126);
    }

    v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7E)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_193740610(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_193740664(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 24))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15(a1);
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1937406A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_205_2(result);
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_54_18(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*v1);
  *v1 = v2;
  return result;
}

void OUTLINED_FUNCTION_57_13()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 16);
  *(v1 - 40) = *v0;
  *(v1 - 32) = v2;
  *(v1 - 31) = v3;
  *(v1 - 24) = v4;
}

__n128 OUTLINED_FUNCTION_62_20()
{
  v2 = v0[1].n128_u64[0];
  result = *v0;
  *(v1 - 48) = *v0;
  *(v1 - 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_20(uint64_t a1, uint64_t a2)
{
  result = sub_19345012C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_17@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 88) = a3;
  *(result + 72) = a3;
  *(result + 56) = a3;
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

__n128 OUTLINED_FUNCTION_103_12@<Q0>(uint64_t a1@<X8>)
{
  result = *v2;
  *(v3 - 64) = *v2;
  *(v3 - 48) = a1;
  *(v3 - 40) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_120_8()
{
  sub_193437C90(v0);

  return sub_193437C90(v1);
}

void OUTLINED_FUNCTION_139_10(__n128 a1)
{
  v1[2] = a1;
  v1[3] = a1;
  v1[4] = a1;
  v1[5] = a1;
  v1[6] = a1;
}

__n128 OUTLINED_FUNCTION_141_8()
{
  result = *(v0 + 16);
  v2 = *(v0 + 32);
  *&STACK[0x590] = result;
  *&STACK[0x5A0] = v2;
  STACK[0x5B0] = *(v0 + 48);
  return result;
}

void OUTLINED_FUNCTION_151_9()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 - 48) = *v0;
  *(v1 - 40) = v2;
  *(v1 - 39) = v3;
  *(v1 - 38) = v4;
  *(v1 - 32) = v5;
  *(v1 - 24) = v6;
}

__n128 OUTLINED_FUNCTION_157_10()
{
  v1 = *&STACK[0x260];
  v2 = *&STACK[0x270];
  v3 = STACK[0x280];
  v4 = *&STACK[0x240];
  v5 = *&STACK[0x250];
  v6 = *&STACK[0x210];
  v7 = *&STACK[0x220];
  v8 = STACK[0x230];
  return *&STACK[0x200];
}

uint64_t OUTLINED_FUNCTION_158_4()
{
  sub_193450268(v0, v2);
  sub_193450268(v1, v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_159_8()
{
  sub_193450268(v1, v2);
  sub_193450268(v0, v3);
  return v1;
}

uint64_t OUTLINED_FUNCTION_161_7(uint64_t a1)
{
  sub_193437C90(a1);
  sub_193437C90(v1);
}

uint64_t OUTLINED_FUNCTION_170_6(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 28) = v3;
  return result;
}

void OUTLINED_FUNCTION_181_7()
{
  *(v0 - 208) = v4;
  *(v0 - 192) = v5;
  *(v0 - 256) = v3;
  *(v0 - 240) = v2;
  *(v0 - 224) = v1;
}

uint64_t OUTLINED_FUNCTION_182_6()
{

  return sub_19393CAD0();
}

void *OUTLINED_FUNCTION_183_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char __dst, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char __src, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, __int128 a57, __int128 a58)
{
  a57 = a9;
  a58 = a10;

  return memcpy(&__dst, &__src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_191_3(uint64_t result, __n128 a2)
{
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

__n128 OUTLINED_FUNCTION_192_2()
{
  *&STACK[0x300] = *v0;
  STACK[0x310] = *(v0 + 16);
  STACK[0x318] = v2;
  v3 = *(v0 + 48);
  *&STACK[0x320] = *(v0 + 32);
  *&STACK[0x330] = v3;
  result = *(v0 + 57);
  *(v1 + 217) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_193_2()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  result = *(v0 + 48);
  v4 = *(v0 + 64);
  return result;
}

void OUTLINED_FUNCTION_200_4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  sub_1936D1084(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_202_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_193448804(a1, va, v11, v12);
}

uint64_t OUTLINED_FUNCTION_203_3()
{

  return sub_19393CAD0();
}

double OUTLINED_FUNCTION_208_1(double a1, __n128 a2)
{
  result = 0.0;
  *v2 = a2;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

double OUTLINED_FUNCTION_209_1@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void OUTLINED_FUNCTION_210_1()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
}

void *OUTLINED_FUNCTION_224_1@<X0>(char *a1@<X8>, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 1;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 57) = 0u;

  return memcpy(&a2, a1, 0x49uLL);
}

__n128 OUTLINED_FUNCTION_230_3@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 152) = *(a1 + 8);
  *(v1 + 168) = *(a1 + 24);
  *(v1 + 184) = *(a1 + 40);
  result = *(a1 + 56);
  *(v1 + 200) = result;
  return result;
}

void *OUTLINED_FUNCTION_236_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __dst)
{

  return memcpy(&__dst, &a9, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_238_3(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a27, __n128 a28, char a29)
{
  a27 = a1;
  a28 = a2;

  return sub_1936D0D2C(&a21, &a29);
}

uint64_t OUTLINED_FUNCTION_247_2(uint64_t a1)
{

  return sub_19344E6DC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_258_2()
{
  sub_193437C90(v0);

  return sub_193437C90(v1);
}

uint64_t OUTLINED_FUNCTION_266_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 56) = a3;
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

void *OUTLINED_FUNCTION_268_1(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_270_2()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_278_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{

  return sub_193448804(&a19, &a9, a3, a4);
}

__n128 OUTLINED_FUNCTION_280_1()
{
  result = *(v0 + 16);
  v2 = *(v0 + 32);
  return result;
}

__n128 OUTLINED_FUNCTION_281_1()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  result = *(v0 + 64);
  v5 = *(v0 + 80);
  return result;
}

__n128 OUTLINED_FUNCTION_283_1()
{
  result = *(v0 - 248);
  v2 = *(v0 - 232);
  return result;
}

void *OUTLINED_FUNCTION_285_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __dst, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char __src)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

void *OUTLINED_FUNCTION_297_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __src)
{

  return memcpy(&a9, &__src, 0x50uLL);
}

void *OUTLINED_FUNCTION_299_1()
{

  return memcpy(v0, (v1 + 16), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_300_1()
{

  return sub_19345012C(0, 0xF000000000000000);
}

void *OUTLINED_FUNCTION_304_1(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_306_0()
{

  return type metadata accessor for ToolKitTranscript();
}

__n128 OUTLINED_FUNCTION_307_0()
{
  result = *(v0 + 32);
  v3 = *(v0 + 48);
  v2 = *(v0 + 64);
  return result;
}

__n128 OUTLINED_FUNCTION_308_1()
{
  result = *(v0 + 64);
  v2 = *(v0 + 80);
  *&STACK[0x5C0] = result;
  *&STACK[0x5D0] = v2;
  return result;
}

__n128 OUTLINED_FUNCTION_309_0()
{
  result = *(v0 + 16);
  v3 = *(v0 + 32);
  v2 = *(v0 + 48);
  return result;
}

void OUTLINED_FUNCTION_314_1(__n128 a1)
{
  v1[7] = a1;
  v1[8] = a1;
  v1[9] = a1;
  v1[10] = a1;
  v1[11] = a1;
}

void OUTLINED_FUNCTION_315_0(__n128 a1)
{
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = a1;
}

void *OUTLINED_FUNCTION_316_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(a1, &a9, 0x50uLL);
}

double OUTLINED_FUNCTION_319_1()
{
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_320_0()
{

  return sub_19393CAB0();
}

void *OUTLINED_FUNCTION_321_1(void *a1)
{

  return memcpy(a1, v1, 0xD8uLL);
}

uint64_t OUTLINED_FUNCTION_323_1()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
}

void *OUTLINED_FUNCTION_324_0(void *a1)
{

  return memcpy(a1, v1, 0xD8uLL);
}

uint64_t OUTLINED_FUNCTION_326_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

void *OUTLINED_FUNCTION_330_0(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x50uLL);
}

__n128 OUTLINED_FUNCTION_337_0()
{
  result = *v0;
  v3 = v0[1].n128_u64[0];
  *(v1 - 40) = *v0;
  *(v1 - 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_348(uint64_t a1)
{
  sub_193437C90(a1);

  return sub_193437C90(v1);
}

void OUTLINED_FUNCTION_350(__n128 a1)
{
  *(v1 + 104) = a1;
  *(v1 + 88) = a1;
  *(v1 + 72) = a1;
  *(v1 + 56) = a1;
  *(v1 + 40) = a1;
  *(v1 + 24) = a1;
  *(v1 + 8) = a1;
}

void OUTLINED_FUNCTION_354_0(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[2] = a2;
  a1[3] = a2;
  *a1 = a2;
  a1[1] = a2;
}

void *OUTLINED_FUNCTION_355_1()
{

  return memcpy(&STACK[0x288], &STACK[0x368], 0x70uLL);
}

void *OUTLINED_FUNCTION_356_1()
{

  return memcpy(&STACK[0x218], &STACK[0x2F8], 0x70uLL);
}

void *OUTLINED_FUNCTION_357_0()
{

  return memcpy(&STACK[0x2F8], &STACK[0x520], 0x68uLL);
}

void *OUTLINED_FUNCTION_358_1(void *a1)
{

  return memcpy(a1, &STACK[0x3D8], 0x70uLL);
}

void *OUTLINED_FUNCTION_361_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char __dst, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char __src)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

void OUTLINED_FUNCTION_362_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  sub_1937377A0(a1, a2, v14, a14, v15);
}

void *OUTLINED_FUNCTION_363_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char __dst, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char __src)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_367_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{

  return sub_193448804(a1, &a30, v31, v30);
}

void *OUTLINED_FUNCTION_368_1(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x50uLL);
}

void *OUTLINED_FUNCTION_369_0()
{

  return memcpy(&STACK[0x290], v0, 0x68uLL);
}

void *OUTLINED_FUNCTION_373_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t __src)
{

  return memcpy(&STACK[0x208], &__src, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_374_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  *(a2 + 8) = a3;
  *(a2 + 24) = a4;
  *(a2 + 40) = a1;
}

uint64_t OUTLINED_FUNCTION_390(uint64_t a1)
{
  sub_193438D88(a1);

  return sub_193438D88(v1);
}

uint64_t OUTLINED_FUNCTION_391()
{
}

void *OUTLINED_FUNCTION_392(void *a1)
{

  return memcpy(a1, &STACK[0x590], 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_393(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_394(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  return sub_193448804(va1, va, a3, a4);
}

void *OUTLINED_FUNCTION_395(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_396()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_397()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
}

__n128 OUTLINED_FUNCTION_398()
{
  v2 = *(v0 + 48);
  result = *(v0 + 64);
  v3 = *(v0 + 80);
  return result;
}

__n128 OUTLINED_FUNCTION_399()
{
  result = *(v0 - 168);
  v2 = *(v0 - 152);
  return result;
}

__n128 OUTLINED_FUNCTION_403@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 + 48);
  v2 = *(a1 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_414(uint64_t result, uint64_t a2)
{
  v2 = *(result + 9);
  v3 = *(result + 16);
  v4 = *(a2 + 9);
  v5 = *(a2 + 16);
  return result;
}

__n128 OUTLINED_FUNCTION_415()
{
  result = *v0;
  *(v1 + 40) = *(v0 + 16);
  *(v1 + 24) = result;
  *(v1 + 56) = v2;
  return result;
}

double OUTLINED_FUNCTION_424(double a1, __n128 a2)
{
  result = 0.0;
  *v2 = a2;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_435@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 40) = *(a1 + 40);
  result = *(a1 + 56);
  *(v1 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_436(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  return result;
}

void *OUTLINED_FUNCTION_440(void *__src)
{

  return memcpy((v1 - 248), __src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_443(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32)
{

  return sub_193450268(a30, a32);
}

uint64_t OUTLINED_FUNCTION_444()
{

  return sub_19393CA30();
}

void *OUTLINED_FUNCTION_445()
{

  return memcpy(&STACK[0x218], (v0 + 112), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_446(uint64_t a1)
{
  sub_193437C90(a1);

  return sub_193437C90(v1);
}

uint64_t OUTLINED_FUNCTION_447()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
}

void *OUTLINED_FUNCTION_448(void *a1)
{

  return memcpy(a1, (v1 - 192), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_449(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v2, v3);
}

void *OUTLINED_FUNCTION_450(void *a1)
{

  return memcpy(a1, &STACK[0x290], 0x70uLL);
}

void *OUTLINED_FUNCTION_451(void *a1)
{

  return memcpy(a1, (v1 + 112), 0x50uLL);
}

void *OUTLINED_FUNCTION_452(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char __src)
{

  return memcpy(a1, &__src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_453()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
}

void *OUTLINED_FUNCTION_455(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_456()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_457()
{
  v2 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_458()
{
  v2 = *(v0 + 8);
}

double OUTLINED_FUNCTION_461(uint64_t a1, int a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *a1 = (a2 - 0x7FFFFFFF);
  return result;
}

uint64_t sub_1937422C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511A78);
  v5 = __swift_project_value_buffer(v4, qword_1ED511A78);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.GuardrailResult.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:1 segmentSize:0x40000 protectionClass:0 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_57 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511A78);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42380, &qword_193991430);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.GenerativeExperiences.GuardrailResult.attribute(_:)(void (*a1)(void))
{
  result = sub_1937426D0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193742718(void (*a1)(void))
{
  result = sub_1937426D0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193742748(uint64_t a1)
{
  result = sub_193742770();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193742770()
{
  result = qword_1EAE42388;
  if (!qword_1EAE42388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42388);
  }

  return result;
}

_BYTE *_s15GuardrailResultOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenerativeExperiencesGuardrailResult.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v28 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for GenerativeExperiencesGuardrailResult();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42390, &qword_1939914A8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_193742A68(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE42390, &qword_1939914A8);
  sub_19393C250();
  (*(v4 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE42390, &qword_1939914A8);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_193742A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesGuardrailResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static GenerativeExperiencesGuardrailResult.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42390, &qword_1939914A8);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE42390, &qword_1939914A8);
  sub_19393C260();
  if (!v20)
  {
    sub_193742BFC(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193742BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesGuardrailResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static GenerativeExperiencesGuardrailResult.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v40 = v2;
  v41 = v1;
  v39 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42390, &qword_1939914A8);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = sub_19393C0C0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v38 - v26;
  if (*sub_193745004() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v19 + 16))(v24, v27, v16);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v28, v29, v30);
    sub_19393C280();
    (*(v19 + 8))(v27, v16);
    if (!v0)
    {
      v32 = v40;
      sub_193742BFC(v15, v40);
      v33 = type metadata accessor for GenerativeExperiencesGuardrailResult();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = v5;
    *(v31 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t GenerativeExperiencesGuardrailResult.serialize()()
{
  v1 = type metadata accessor for GenerativeExperiencesGuardrailResult();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42390, &qword_1939914A8);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_193742A68(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE42390, &qword_1939914A8);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE42390, &qword_1939914A8);
  return v15;
}

id static GenerativeExperiencesGuardrailResult.columns.getter()
{
  v98 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x696669746E656469, 0xEA00000000007265, 6, 0, v0, 14, 3);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v19 = OUTLINED_FUNCTION_2_4(inited, v12, v13, v14, v15, v16, v17, v18, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v19, v20, v21, v22, v23, v24, v25, v26, v27);
  v19[2].n128_u64[0] = sub_19393C850();
  v28 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_13_48();
  OUTLINED_FUNCTION_9_65();
  result = sub_19343D150(v29, v30, v31, v32, v33, 12, 0);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v34 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v34, v35, v36, v37, v38, v39, v40, v41, v42);
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v43, v44, v45, v46, v47, v48, v49, v50, v51);
  v43[2].n128_u64[0] = sub_19393C850();
  v52 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000011, 0x8000000193A14520, 2, 0, v43, 13, 0);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v53 = swift_initStackObject();
  v61 = OUTLINED_FUNCTION_2_4(v53, v54, v55, v56, v57, v58, v59, v60, v96);
  OUTLINED_FUNCTION_2_13(v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v61[2].n128_u64[0] = sub_19393C850();
  v70 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_9_65();
  result = sub_19343D150(v71, v72, v73, v74, v75, 4, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v76 = swift_initStackObject();
  v84 = OUTLINED_FUNCTION_2_4(v76, v77, v78, v79, v80, v81, v82, v83, v97);
  OUTLINED_FUNCTION_2_13(v84, v85, v86, v87, v88, v89, v90, v91, v92);
  v84[2].n128_u64[0] = sub_19393C850();
  v93 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_12_40();
  OUTLINED_FUNCTION_10_55();
  result = sub_19343D150(v94, v95, 6, 0, v84, 14, 3);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v98;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_19374339C()
{
  OUTLINED_FUNCTION_26();
  v49 = v2;
  v50 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_6();
  v48 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = sub_19393BE60();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v47 - v24;
  v26 = v6 == 0x696669746E656469 && v4 == 0xEA00000000007265;
  if (v26 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v27 = type metadata accessor for GenerativeExperiencesGuardrailResult();
    sub_193458F7C(v0 + *(v27 + 28), v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      (*(v17 + 32))(v25, v13, v14);
      sub_1934948FC();
      (*(v17 + 8))(v25, v14);
      goto LABEL_26;
    }

    v28 = v13;
    goto LABEL_8;
  }

  v31 = v6 == OUTLINED_FUNCTION_13_48() && v4 == v30;
  if (v31 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v32 = *(v0 + *(type metadata accessor for GenerativeExperiencesGuardrailResult() + 32));
    if (v32 == 2)
    {
      goto LABEL_9;
    }

    LOBYTE(v51) = v32 & 1;
LABEL_25:
    sub_1934948FC();
    goto LABEL_26;
  }

  v33 = v6 == 0xD000000000000011 && 0x8000000193A14520 == v4;
  if (v33 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v34 = (v0 + *(type metadata accessor for GenerativeExperiencesGuardrailResult() + 36));
    v35 = v34[1];
    if (!v35)
    {
      goto LABEL_9;
    }

    v51 = *v34;
    v52 = v35;
    goto LABEL_25;
  }

  v37 = v6 == OUTLINED_FUNCTION_14_2() && v4 == v36;
  if (v37 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
  {
    v38 = v0 + *(type metadata accessor for GenerativeExperiencesGuardrailResult() + 40);
    if (*(v38 + 9))
    {
      goto LABEL_9;
    }

    v39 = *(v38 + 8);
    v51 = *v38;
    LOBYTE(v52) = v39 & 1;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_55();
  v41 = v6 == OUTLINED_FUNCTION_12_40() && v4 == v40;
  if (!v41 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
  {
    sub_19349AB64();
    swift_allocError();
    v45 = v44;
    *v44 = v6;
    v44[1] = v4;
    v44[5] = type metadata accessor for GenerativeExperiencesGuardrailResult();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v45 + 2);
    sub_193742A68(v0, boxed_opaque_existential_1Tm);
    *(v45 + 48) = 1;
    swift_willThrow();

    goto LABEL_26;
  }

  v42 = type metadata accessor for GenerativeExperiencesGuardrailResult();
  v43 = v48;
  sub_193458F7C(v0 + *(v42 + 44), v48);
  if (__swift_getEnumTagSinglePayload(v43, 1, v14) != 1)
  {
    (*(v17 + 32))(v22, v43, v14);
    sub_1934948FC();
    (*(v17 + 8))(v22, v14);
    goto LABEL_26;
  }

  v28 = v43;
LABEL_8:
  sub_19344E6DC(v28, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_9:
  v29 = v49;
  *v49 = 0u;
  v29[1] = 0u;
LABEL_26:
  OUTLINED_FUNCTION_27();
}

uint64_t GenerativeExperiencesGuardrailResult.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GenerativeExperiencesGuardrailResult();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B7DC();
  v6 = v2[8];
  OUTLINED_FUNCTION_7_9();
  v7 = (a1 + v2[9]);
  OUTLINED_FUNCTION_10_1();
  v8 = a1 + v2[10];
  OUTLINED_FUNCTION_131(v8);
  v9 = v2[11];
  sub_19344B818();
  *a1 = *sub_193745004();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_193442B60(a1 + v5, &qword_1EAE3AA88, &qword_19394F9C0);
  v11 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v11);

  *(a1 + v6) = 2;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  *(v8 + 8) = 256;
  sub_193442B60(a1 + v9, &qword_1EAE3AA88, &qword_19394F9C0);

  return __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v11);
}

BOOL static GenerativeExperiencesGuardrailResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_6();
  v66 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v67 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = type metadata accessor for GenerativeExperiencesGuardrailResult();
  v26 = v25[7];
  v27 = *(v18 + 48);
  v69 = a1;
  sub_193458F7C(a1 + v26, v24);
  v70 = a2;
  sub_193458F7C(a2 + v26, &v24[v27]);
  OUTLINED_FUNCTION_14_1(v24);
  if (v28)
  {
    OUTLINED_FUNCTION_14_1(&v24[v27]);
    if (v28)
    {
      v65 = v7;
      sub_193442B60(v24, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_13;
    }

LABEL_9:
    v29 = v24;
LABEL_10:
    sub_193442B60(v29, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  sub_193458F7C(v24, v17);
  OUTLINED_FUNCTION_14_1(&v24[v27]);
  if (v28)
  {
    (*(v7 + 8))(v17, v4);
    goto LABEL_9;
  }

  v31 = v68;
  (*(v7 + 32))(v68, &v24[v27], v4);
  OUTLINED_FUNCTION_2_65(&qword_1ED5029B8);
  v32 = sub_19393C550();
  v65 = v7;
  v33 = *(v7 + 8);
  v33(v31, v4);
  v33(v17, v4);
  sub_193442B60(v24, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v34 = v25[8];
  v36 = v69;
  v35 = v70;
  v37 = *(v69 + v34);
  v38 = *(v70 + v34);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

  v39 = v25[9];
  v40 = (v69 + v39);
  v41 = *(v69 + v39 + 8);
  v42 = (v70 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43)
    {
      return 0;
    }

    v44 = *v40 == *v42 && v41 == v43;
    if (!v44 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  v45 = v25[10];
  v46 = (v36 + v45);
  v47 = *(v36 + v45 + 9);
  v48 = (v35 + v45);
  v49 = *(v35 + v45 + 9);
  if (v47)
  {
    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v50 = *v48;
    v51 = *(v48 + 8);
    v52 = *(v46 + 8);
    v73 = *v46;
    v74 = v52;
    if (v49)
    {
      return 0;
    }

    v71 = v50;
    v72 = v51 & 1;
    sub_193743EB8();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  v53 = v25[11];
  v54 = *(v18 + 48);
  v55 = v36 + v53;
  v56 = v67;
  sub_193458F7C(v55, v67);
  sub_193458F7C(v35 + v53, v56 + v54);
  OUTLINED_FUNCTION_14_1(v56);
  if (!v28)
  {
    v57 = v67;
    sub_193458F7C(v67, v66);
    OUTLINED_FUNCTION_14_1(v57 + v54);
    if (!v58)
    {
      v59 = v65;
      v61 = v67;
      v60 = v68;
      (*(v65 + 32))(v68, v67 + v54, v4);
      OUTLINED_FUNCTION_2_65(&qword_1ED5029B8);
      v62 = v66;
      v63 = sub_19393C550();
      v64 = *(v59 + 8);
      v64(v60, v4);
      v64(v62, v4);
      sub_193442B60(v61, &qword_1EAE3AA88, &qword_19394F9C0);
      return (v63 & 1) != 0;
    }

    (*(v65 + 8))(v66, v4);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_14_1(v67 + v54);
  if (!v28)
  {
LABEL_40:
    v29 = v67;
    goto LABEL_10;
  }

  sub_193442B60(v67, &qword_1EAE3AA88, &qword_19394F9C0);
  return 1;
}

unint64_t sub_193743EB8()
{
  result = qword_1EAE423A0;
  if (!qword_1EAE423A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE423A0);
  }

  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.hash(into:)()
{
  v1 = v0;
  v2 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v18 = type metadata accessor for GenerativeExperiencesGuardrailResult();
  sub_193458F7C(v1 + v18[7], v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v5 + 32))(v9, v17, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_1_67(&qword_1EAE3AD68);
    OUTLINED_FUNCTION_33();
    (*(v5 + 8))(v9, v2);
  }

  if (*(v1 + v18[8]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  v19 = (v1 + v18[9]);
  if (v19[1])
  {
    v20 = *v19;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v21 = (v1 + v18[10]);
  if (*(v21 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v22 = *(v21 + 8);
    v24 = *v21;
    v25 = v22 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_1937441DC();
    sub_19393C540();
  }

  sub_193458F7C(v1 + v18[11], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  (*(v5 + 32))(v9, v14, v2);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_1_67(&qword_1EAE3AD68);
  OUTLINED_FUNCTION_33();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1937441DC()
{
  result = qword_1EAE423A8;
  if (!qword_1EAE423A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE423A8);
  }

  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.InstanceType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v3 = result == 1 || result == 2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.InstanceType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *static GenerativeExperiencesGuardrailResult.InstanceType.allCases.getter()
{
  v0 = sub_1937444D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = OUTLINED_FUNCTION_7_44(v0, v1);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_1937444D0((v1 > 1), v2 + 2, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  if (v3 < (v2 + 3))
  {
    v0 = OUTLINED_FUNCTION_7_44(v0, v1);
  }

  *(v0 + 2) = v2 + 3;
  v8 = &v0[16 * v6];
  *(v8 + 4) = 1;
  v8[40] = 1;
  return v0;
}

uint64_t GenerativeExperiencesGuardrailResult.InstanceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    result = 0x65736E6F70736552;
  }

  else
  {
    result = 0x74706D6F7250;
  }

  *v0;
  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.InstanceType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = a1 == 0x74706D6F7250 && a2 == 0xE600000000000000;
    if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v8 = 0;
    }

    else
    {
      if (a1 != 0x65736E6F70736552 || a2 != 0xE800000000000000)
      {
        v9 = OUTLINED_FUNCTION_0_9();

        v8 = v9 & 1;
        goto LABEL_14;
      }

      v8 = 1;
    }

    v9 = 1;
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1937444D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE423B8, &qword_193991558);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1937445D0()
{
  result = qword_1EAE423B0;
  if (!qword_1EAE423B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE423B0);
  }

  return result;
}

uint64_t sub_193744624()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD538);
  __swift_project_value_buffer(v0, qword_1EAEAD538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBD0;
  v7 = v6 + v5;
  v8 = v6 + v5 + dword_1EAEAD570;
  *(v6 + v5) = 1;
  *v8 = "identifier";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  v11 = *(*(v10 - 8) + 104);
  v11(v8, v9, v10);
  v12 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v13 = 2;
  *v12 = "markedUnsafe";
  v12[1] = 12;
  v14 = OUTLINED_FUNCTION_1_3(v12);
  (v11)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v7 + 2 * v3);
  *v16 = 3;
  *v15 = "useCaseIdentifier";
  v15[1] = 17;
  v17 = OUTLINED_FUNCTION_1_3(v15);
  (v11)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v7 + 3 * v3);
  *v19 = 4;
  *v18 = "instanceType";
  v18[1] = 12;
  v20 = OUTLINED_FUNCTION_1_3(v18);
  (v11)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v7 + 4 * v3);
  *v22 = 5;
  *v21 = "userRequestID";
  *(v21 + 8) = 13;
  *(v21 + 16) = 2;
  (v11)();
  return sub_19393C410();
}

void sub_193744870()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = *(type metadata accessor for GenerativeExperiencesGuardrailResult() + 28);
        goto LABEL_7;
      case 2:
        v8 = type metadata accessor for GenerativeExperiencesGuardrailResult();
        OUTLINED_FUNCTION_8_2(*(v8 + 32));
        sub_19393C0F0();
        goto LABEL_11;
      case 3:
        v6 = type metadata accessor for GenerativeExperiencesGuardrailResult();
        OUTLINED_FUNCTION_8_2(*(v6 + 36));
        sub_19393C200();
        goto LABEL_11;
      case 4:
        v7 = *(type metadata accessor for GenerativeExperiencesGuardrailResult() + 40);
        sub_1934982A8();
        goto LABEL_11;
      case 5:
        v5 = *(type metadata accessor for GenerativeExperiencesGuardrailResult() + 44);
LABEL_7:
        sub_193497890(v0 + v5);
LABEL_11:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1937449A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_1();
  result = sub_193744AD4();
  if (!v4)
  {
    v8 = type metadata accessor for GenerativeExperiencesGuardrailResult();
    if (*(v3 + v8[8]) != 2)
    {
      sub_19393C2E0();
    }

    v9 = (v3 + v8[9]);
    if (v9[1])
    {
      v10 = *v9;
      sub_19393C3C0();
    }

    v11 = (v3 + v8[10]);
    if ((*(v11 + 9) & 1) == 0)
    {
      v12 = *(v11 + 8);
      v13 = *v11;
      v14 = v12 & 1;
      sub_193447324(&v13, 4, a2, &type metadata for GenerativeExperiencesGuardrailResult.InstanceType, a3, &off_1F07ECC78);
    }

    OUTLINED_FUNCTION_11_1();
    return sub_193744C10();
  }

  return result;
}

uint64_t sub_193744AD4()
{
  OUTLINED_FUNCTION_9_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = OUTLINED_FUNCTION_118();
  v6 = OUTLINED_FUNCTION_76(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = OUTLINED_FUNCTION_2_66();
  sub_193458F7C(v2 + *(v9 + 28), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    return sub_193458FEC(v1);
  }

  v11 = OUTLINED_FUNCTION_3_68();
  v12(v11);
  OUTLINED_FUNCTION_15_49();
  v13 = OUTLINED_FUNCTION_10_56();
  return v14(v13);
}

uint64_t sub_193744C10()
{
  OUTLINED_FUNCTION_9_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = OUTLINED_FUNCTION_118();
  v6 = OUTLINED_FUNCTION_76(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = OUTLINED_FUNCTION_2_66();
  sub_193458F7C(v2 + *(v9 + 44), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    return sub_193458FEC(v1);
  }

  v11 = OUTLINED_FUNCTION_3_68();
  v12(v11);
  OUTLINED_FUNCTION_15_49();
  v13 = OUTLINED_FUNCTION_10_56();
  return v14(v13);
}

uint64_t sub_193744D4C()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE423C0;

  return v0;
}

uint64_t sub_193744DE8()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD550);
  __swift_project_value_buffer(v0, qword_1EAEAD550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBB0;
  v7 = (v6 + v5);
  v8 = v6 + v5 + dword_1EAEAD588;
  *v7 = 0;
  *v8 = "InstanceTypeUnknown";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  v11 = *(*(v10 - 8) + 104);
  (v11)(v8, v9, v10);
  v12 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v13 = 1;
  *v12 = "InstanceTypePrompt";
  *(v12 + 8) = 18;
  *(v12 + 16) = 2;
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v7 + 2 * v3);
  *v15 = 2;
  *v14 = "InstanceTypeResponse";
  *(v14 + 8) = 20;
  *(v14 + 16) = 2;
  v11();
  return sub_19393C410();
}

uint64_t GenerativeExperiencesGuardrailResult.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GenerativeExperiencesGuardrailResult();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 20));
}

uint64_t GenerativeExperiencesGuardrailResult.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GenerativeExperiencesGuardrailResult();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v0 + 24));
}

uint64_t GenerativeExperiencesGuardrailResult.identifier.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GenerativeExperiencesGuardrailResult();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 28));
}

uint64_t GenerativeExperiencesGuardrailResult.markedUnsafe.setter(char a1)
{
  result = type metadata accessor for GenerativeExperiencesGuardrailResult();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.useCaseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for GenerativeExperiencesGuardrailResult() + 36));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesGuardrailResult.useCaseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativeExperiencesGuardrailResult() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.instanceType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for GenerativeExperiencesGuardrailResult();
  v3 = (v1 + *(result + 40));
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 9);
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 9) = v3;
  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.instanceType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for GenerativeExperiencesGuardrailResult();
  v6 = v1 + *(result + 40);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t GenerativeExperiencesGuardrailResult.userRequestID.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GenerativeExperiencesGuardrailResult();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 44));
}

uint64_t sub_1937454F4@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeExperiencesGuardrailResult.InstanceType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19374551C@<X0>(char **a1@<X8>)
{
  result = static GenerativeExperiencesGuardrailResult.InstanceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193745544()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_193745550();
}

uint64_t sub_193745550()
{
  sub_19393CAB0();
  v0 = GenerativeExperiencesGuardrailResult.InstanceType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1937455AC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1937455B8();
}

uint64_t sub_1937455FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_193745608();
}

uint64_t sub_193745608()
{
  sub_19393CAB0();
  v0 = GenerativeExperiencesGuardrailResult.InstanceType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_193745660(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_19374567C();
}

uint64_t GenerativeExperiencesGuardrailResult.hashValue.getter()
{
  sub_19393CAB0();
  GenerativeExperiencesGuardrailResult.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19374571C()
{
  sub_19393CAB0();
  GenerativeExperiencesGuardrailResult.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19374575C()
{
  result = qword_1EAE423D0;
  if (!qword_1EAE423D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE423D8, &qword_1939915C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE423D0);
  }

  return result;
}

unint64_t sub_1937457C8()
{
  result = qword_1EAE423E0;
  if (!qword_1EAE423E0)
  {
    type metadata accessor for GenerativeExperiencesGuardrailResult();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE423E0);
  }

  return result;
}

uint64_t sub_19374584C()
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED506698);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_19349D1FC(319, &qword_1ED508290);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_19349D1FC(319, &qword_1EAE3A858);
        if (v10 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *_s20WritingToolsFeaturesOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_193745A9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511AD8);
  v5 = __swift_project_value_buffer(v4, qword_1ED511AD8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.WritingToolsFeatures.ComposeAndAdjust.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_58 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511AD8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE423E8, &qword_1939917A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.GenerativeExperiences.WritingToolsFeatures.ComposeAndAdjust.attribute(_:)(void (*a1)(void))
{
  result = sub_193745EAC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193745EF4(void (*a1)(void))
{
  result = sub_193745EAC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193745F24(uint64_t a1)
{
  result = sub_193745F4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193745F4C()
{
  result = qword_1EAE423F0;
  if (!qword_1EAE423F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE423F0);
  }

  return result;
}

_BYTE *_s16ComposeAndAdjustOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WritingToolsComposeAndAdjust.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v28 = sub_19393C090();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for WritingToolsComposeAndAdjust();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE423F8, &qword_193991828);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_193746248(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE423F8, &qword_193991828);
  sub_19393C250();
  (*(v3 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE423F8, &qword_193991828);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_193746248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WritingToolsComposeAndAdjust();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static WritingToolsComposeAndAdjust.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE423F8, &qword_193991828);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE423F8, &qword_193991828);
  sub_19393C260();
  if (!v20)
  {
    sub_1937463DC(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1937463DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WritingToolsComposeAndAdjust();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static WritingToolsComposeAndAdjust.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v39 = v2;
  v40 = v1;
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE423F8, &qword_193991828);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = sub_19393C0C0();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v37 - v25;
  if (*sub_1937494CC() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    (*(v18 + 16))(v24, v26, v16);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v27, v28, v29);
    sub_19393C280();
    (*(v18 + 8))(v26, v16);
    if (!v0)
    {
      v31 = v39;
      sub_1937463DC(v15, v39);
      v32 = type metadata accessor for WritingToolsComposeAndAdjust();
      v33 = *(v32 + 20);
      sub_19344E6DC(v31 + v33, &qword_1EAE3A9E8, &qword_19394F800);
      v34 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v34);
      (*(v35 + 16))(v31 + v33, v38, v34);
      __swift_storeEnumTagSinglePayload(v31 + v33, 0, 1, v34);
      v36 = *(v32 + 24);
      sub_19344E6DC(v31 + v36, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v40, v31 + v36);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v30 = v5;
    *(v30 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t WritingToolsComposeAndAdjust.serialize()()
{
  v1 = type metadata accessor for WritingToolsComposeAndAdjust();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE423F8, &qword_193991828);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_193746248(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE423F8, &qword_193991828);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE423F8, &qword_193991828);
  return v15;
}

id static WritingToolsComposeAndAdjust.columns.getter()
{
  v128 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x6D617473656D6974, 0xE900000000000070, 3, 0, v0, 0, 2);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v29);
  result = OUTLINED_FUNCTION_3_5(0x74706D6F7270, 0xE600000000000000);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  v30 = swift_initStackObject();
  v38 = OUTLINED_FUNCTION_2_4(v30, v31, v32, v33, v34, v35, v36, v37, v123);
  OUTLINED_FUNCTION_5_10(v38, v39, v40, v41, v42, v43, v44, v45, v46);
  v47 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v47);
  v48 = OUTLINED_FUNCTION_105();
  result = sub_19343D150(v48, 0xEA00000000007265, 6, 0, v0, 14, 3);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  v49 = swift_initStackObject();
  v57 = OUTLINED_FUNCTION_2_4(v49, v50, v51, v52, v53, v54, v55, v56, v124);
  OUTLINED_FUNCTION_5_10(v57, v58, v59, v60, v61, v62, v63, v64, v65);
  v66 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v66);
  result = OUTLINED_FUNCTION_3_5(0x6369706F74, 0xE500000000000000);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v125;
  v67 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v67, v68, v69, v70, v71, v72, v73, v74, v75);
  v76 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v76);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000015, 0x8000000193A2B230);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v125;
  v77 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v77, v78, v79, v80, v81, v82, v83, v84, v85);
  v86 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v86);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000013, 0x8000000193A2B250);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v87 = swift_initStackObject();
  v95 = OUTLINED_FUNCTION_2_4(v87, v88, v89, v90, v91, v92, v93, v94, v125);
  OUTLINED_FUNCTION_5_10(v95, v96, v97, v98, v99, v100, v101, v102, v103);
  v104 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v104);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v105, v106, v107, v108, v0, 4, 0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v109 = swift_initStackObject();
  v117 = OUTLINED_FUNCTION_2_4(v109, v110, v111, v112, v113, v114, v115, v116, v126);
  *(v117 + 16) = v127;
  *(v117 + 32) = sub_19393C850();
  v118 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v119, v120, v121, v122, v117, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v128;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_193746C3C()
{
  OUTLINED_FUNCTION_26();
  v69 = v2;
  v70 = v1;
  v73 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  v11 = sub_19393BE60();
  OUTLINED_FUNCTION_1_0();
  v66 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  v23 = sub_19393BE00();
  OUTLINED_FUNCTION_1_0();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_1();
  v31 = v30 - v29;
  v67 = v6;
  v68 = v4;
  v33 = v6 == v32 && v4 == 0xE900000000000070;
  if (v33 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v34 = type metadata accessor for WritingToolsComposeAndAdjust();
    sub_1934486F8(v73 + *(v34 + 28), v22, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
    {
      (*(v25 + 32))(v31, v22, v23);
      sub_1934948FC();
      (*(v25 + 8))(v31, v23);
      goto LABEL_20;
    }

    v35 = &qword_1EAE3A9E8;
    v36 = &qword_19394F800;
    v37 = v22;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_14_49();
  v40 = v33 && v39 == 0xE600000000000000;
  if (v40 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v41 = *(type metadata accessor for WritingToolsComposeAndAdjust() + 32);
LABEL_17:
    v42 = (v73 + v41);
    v43 = *(v73 + v41 + 8);
    if (!v43)
    {
      goto LABEL_9;
    }

    v71 = *v42;
    v72 = v43;
LABEL_19:
    sub_1934948FC();
    goto LABEL_20;
  }

  v45 = v67 == OUTLINED_FUNCTION_105() && v68 == v44;
  if (v45 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v46 = type metadata accessor for WritingToolsComposeAndAdjust();
    sub_1934486F8(v73 + *(v46 + 36), v10, &qword_1EAE3AA88, &qword_19394F9C0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      v47 = v66;
      (*(v66 + 32))(v18, v10, v11);
      sub_1934948FC();
      (*(v47 + 8))(v18, v11);
      goto LABEL_20;
    }

    v35 = &qword_1EAE3AA88;
    v36 = &qword_19394F9C0;
    v37 = v10;
LABEL_8:
    sub_19344E6DC(v37, v35, v36);
LABEL_9:
    v38 = v69;
    *v69 = 0u;
    v38[1] = 0u;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_14_49();
  v49 = v33 && v48 == 0xE500000000000000;
  if (v49 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v41 = *(type metadata accessor for WritingToolsComposeAndAdjust() + 40);
    goto LABEL_17;
  }

  v50 = v67 == 0xD000000000000015 && 0x8000000193A2B230 == v68;
  if (v50 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v41 = *(type metadata accessor for WritingToolsComposeAndAdjust() + 44);
    goto LABEL_17;
  }

  v51 = v67 == 0xD000000000000013 && 0x8000000193A2B250 == v68;
  if (!v51 && (OUTLINED_FUNCTION_10_28() & 1) == 0)
  {
    OUTLINED_FUNCTION_14_49();
    v56 = v33 && v55 == 0xE600000000000000;
    if (v56 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v57 = type metadata accessor for WritingToolsComposeAndAdjust();
      OUTLINED_FUNCTION_10_57(*(v57 + 52));
    }

    else
    {
      OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_14_49();
      v59 = v33 && v58 == 0xE700000000000000;
      if (!v59 && (OUTLINED_FUNCTION_10_28() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_11();
        swift_allocError();
        v62 = v61;
        v63 = v68;
        *v61 = v67;
        v61[1] = v63;
        v61[5] = type metadata accessor for WritingToolsComposeAndAdjust();
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v62 + 2);
        sub_193746248(v73, boxed_opaque_existential_1Tm);
        *(v62 + 48) = 1;
        swift_willThrow();

        goto LABEL_20;
      }

      v60 = type metadata accessor for WritingToolsComposeAndAdjust();
      OUTLINED_FUNCTION_10_57(*(v60 + 56));
    }

    goto LABEL_19;
  }

  v52 = (v73 + *(type metadata accessor for WritingToolsComposeAndAdjust() + 48));
  v53 = v52[1];
  if (v53)
  {
    v71 = *v52;
    v72 = v53;
    sub_1934948FC();
  }

  else
  {
    v54 = v69;
    *v69 = 0u;
    v54[1] = 0u;
  }

LABEL_20:
  OUTLINED_FUNCTION_27();
}

uint64_t WritingToolsComposeAndAdjust.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for WritingToolsComposeAndAdjust();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B814();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = v2[9];
  sub_19344B7DC();
  v15 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v13 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1937494CC();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);

  *v6 = 0;
  v6[1] = 0;
  sub_19344E6DC(a1 + v7, &qword_1EAE3AA88, &qword_19394F9C0);
  v9 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v9);

  *v15 = 0;
  v15[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  *v13 = 0;
  v13[1] = 0;
  v11 = a1 + v2[13];
  *v11 = 0;
  v11[8] = 0;
  v12 = a1 + v2[14];
  *v12 = 0;
  v12[8] = 0;
  return result;
}

uint64_t static WritingToolsComposeAndAdjust.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v100 = sub_19393BE60();
  v4 = OUTLINED_FUNCTION_0(v100);
  v97 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v95 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v94 - v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1(v98);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v94 - v18;
  v19 = sub_19393BE00();
  v20 = OUTLINED_FUNCTION_0(v19);
  v103 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v94 - v31;
  v33 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430) - 8);
  v34 = *(*v33 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v94 - v36;
  v101 = type metadata accessor for WritingToolsComposeAndAdjust();
  v102 = a1;
  v38 = *(v101 + 28);
  v39 = v33[14];
  sub_1934486F8(a1 + v38, v37, &qword_1EAE3A9E8, &qword_19394F800);
  sub_1934486F8(a2 + v38, &v37[v39], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v37, 1, v19);
  if (v40)
  {
    OUTLINED_FUNCTION_6_3(&v37[v39], 1, v19);
    if (v40)
    {
      sub_19344E6DC(v37, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_14;
    }

LABEL_9:
    v41 = &qword_1EAE3B968;
    v42 = &qword_193972430;
    v43 = v37;
LABEL_10:
    sub_19344E6DC(v43, v41, v42);
    goto LABEL_11;
  }

  sub_1934486F8(v37, v32, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(&v37[v39], 1, v19);
  if (v40)
  {
    (*(v103 + 8))(v32, v19);
    goto LABEL_9;
  }

  v46 = v103;
  (*(v103 + 32))(v26, &v37[v39], v19);
  OUTLINED_FUNCTION_19_9();
  sub_193652BF4(v47, v48);
  v49 = sub_19393C550();
  v50 = *(v46 + 8);
  v50(v26, v19);
  v50(v32, v19);
  sub_19344E6DC(v37, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v49 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v52 = v101;
  v51 = v102;
  v53 = *(v101 + 32);
  OUTLINED_FUNCTION_3_49();
  if (v56)
  {
    if (!v54)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_5(v55);
    v59 = v40 && v57 == v58;
    if (!v59 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v54)
  {
    goto LABEL_11;
  }

  v60 = v52[9];
  v61 = v99;
  v62 = *(v98 + 48);
  sub_1934486F8(v51 + v60, v99, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(a2 + v60, v61 + v62, &qword_1EAE3AA88, &qword_19394F9C0);
  v63 = v100;
  OUTLINED_FUNCTION_6_3(v61, 1, v100);
  if (!v40)
  {
    v64 = v96;
    sub_1934486F8(v61, v96, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v61 + v62, 1, v63);
    if (!v65)
    {
      v66 = v97;
      v67 = v61 + v62;
      v68 = v95;
      (*(v97 + 32))(v95, v67, v63);
      OUTLINED_FUNCTION_20_34();
      sub_193652BF4(v69, v70);
      v71 = sub_19393C550();
      v72 = *(v66 + 8);
      v72(v68, v63);
      v72(v64, v63);
      sub_19344E6DC(v61, &qword_1EAE3AA88, &qword_19394F9C0);
      if ((v71 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }

    (*(v97 + 8))(v64, v63);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_6_3(v61 + v62, 1, v63);
  if (!v40)
  {
LABEL_31:
    v41 = &qword_1EAE3B4E8;
    v42 = &unk_193952CF0;
    v43 = v61;
    goto LABEL_10;
  }

  sub_19344E6DC(v61, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_33:
  v73 = v52[10];
  OUTLINED_FUNCTION_3_49();
  if (v76)
  {
    if (!v74)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_5(v75);
    v79 = v40 && v77 == v78;
    if (!v79 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v74)
  {
    goto LABEL_11;
  }

  v80 = v52[11];
  OUTLINED_FUNCTION_3_49();
  if (v83)
  {
    if (!v81)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_5(v82);
    v86 = v40 && v84 == v85;
    if (!v86 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v81)
  {
    goto LABEL_11;
  }

  v87 = v52[12];
  OUTLINED_FUNCTION_3_49();
  if (v90)
  {
    if (!v88)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_5(v89);
    v93 = v40 && v91 == v92;
    if (!v93 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v88)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_0_61(v52[13]);
  sub_193747A98();
  if (sub_19393C550())
  {
    OUTLINED_FUNCTION_0_61(v52[14]);
    sub_193747AEC();
    v44 = sub_19393C550();
    return v44 & 1;
  }

LABEL_11:
  v44 = 0;
  return v44 & 1;
}

unint64_t sub_193747A98()
{
  result = qword_1EAE42408;
  if (!qword_1EAE42408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42408);
  }

  return result;
}

unint64_t sub_193747AEC()
{
  result = qword_1EAE42410;
  if (!qword_1EAE42410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42410);
  }

  return result;
}

uint64_t WritingToolsComposeAndAdjust.hash(into:)()
{
  v1 = v0;
  v2 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v46 = v4;
  v47 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v45 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = sub_19393BE00();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v44 - v28;
  v30 = type metadata accessor for WritingToolsComposeAndAdjust();
  sub_1934486F8(v1 + v30[7], v29, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v29, 1, v15);
  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v18 + 32))(v23, v29, v15);
    sub_19393CAD0();
    OUTLINED_FUNCTION_19_9();
    sub_193652BF4(v32, v33);
    sub_19393C540();
    (*(v18 + 8))(v23, v15);
  }

  v34 = (v1 + v30[8]);
  v35 = v47;
  if (v34[1])
  {
    OUTLINED_FUNCTION_7_1(v34);
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934486F8(v1 + v30[9], v14, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v14, 1, v35);
  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v37 = v45;
    v36 = v46;
    (*(v46 + 32))(v45, v14, v35);
    sub_19393CAD0();
    OUTLINED_FUNCTION_20_34();
    sub_193652BF4(v38, v39);
    sub_19393C540();
    (*(v36 + 8))(v37, v35);
  }

  v40 = (v1 + v30[10]);
  if (v40[1])
  {
    OUTLINED_FUNCTION_7_1(v40);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v41 = (v1 + v30[11]);
  if (v41[1])
  {
    OUTLINED_FUNCTION_7_1(v41);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v42 = (v1 + v30[12]);
  if (v42[1])
  {
    OUTLINED_FUNCTION_7_1(v42);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_17_29(v30[13]);
  sub_193747F30();
  sub_19393C540();
  OUTLINED_FUNCTION_17_29(v30[14]);
  sub_193747F84();
  return sub_19393C540();
}

unint64_t sub_193747F30()
{
  result = qword_1EAE42418;
  if (!qword_1EAE42418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42418);
  }

  return result;
}

unint64_t sub_193747F84()
{
  result = qword_1EAE42420;
  if (!qword_1EAE42420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42420);
  }

  return result;
}

void WritingToolsComposeAndAdjust.Result.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *static WritingToolsComposeAndAdjust.Result.allCases.getter()
{
  v3 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42440, &qword_193991938);
  v4 = OUTLINED_FUNCTION_17_27(v3);
  if (!(!v10 & v9))
  {
    v27 = OUTLINED_FUNCTION_39(v8);
    v31 = OUTLINED_FUNCTION_84_2(v27, v28, v29, v30, &qword_1EAE42440, &qword_193991938);
    v4 = OUTLINED_FUNCTION_17_2(v31);
  }

  OUTLINED_FUNCTION_15_5(v4, v5, v6, v7);
  if (v16 != v17)
  {
    v32 = OUTLINED_FUNCTION_39(v15);
    v34 = sub_1934B0FCC(v32, v1, 1, v33, &qword_1EAE42440, &qword_193991938);
    v11 = OUTLINED_FUNCTION_17_2(v34);
  }

  OUTLINED_FUNCTION_10_36(v11, v12, v13, v14);
  if (v16 != v17)
  {
    v35 = OUTLINED_FUNCTION_39(v22);
    v18 = OUTLINED_FUNCTION_84_2(v35, v36, v37, v38, &qword_1EAE42440, &qword_193991938);
    v21 = v18;
  }

  OUTLINED_FUNCTION_20_27(v18, v19, v20, v21);
  v24 = *(v23 + 3);
  if (v2 + 4 > (v24 >> 1))
  {
    v39 = OUTLINED_FUNCTION_39(v24);
    v23 = sub_1934B0FCC(v39, v2 + 4, 1, v40, &qword_1EAE42440, &qword_193991938);
  }

  *(v23 + 2) = v2 + 4;
  v25 = &v23[16 * v0];
  *(v25 + 4) = 2;
  v25[40] = 1;
  return v23;
}

uint64_t WritingToolsComposeAndAdjust.Result.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  v1 = 0x65746172656E6547;
  if (*v0 != 1)
  {
    v1 = 0x64656761676E45;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656E6547746F4ELL;
  }
}

uint64_t WritingToolsComposeAndAdjust.Result.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  v8 = v2 == 0x72656E6547746F4ELL && v1 == 0xEC00000064657461;
  if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v9 = v2 == 0x65746172656E6547 && v1 == 0xE900000000000064;
  if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 1;
    goto LABEL_13;
  }

  if (v2 == 0x64656761676E45 && v1 == 0xE700000000000000)
  {

    v7 = 1;
    v6 = 2;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v6 = 2;
    if ((v7 & 1) == 0)
    {
      v6 = 0;
    }
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

void WritingToolsComposeAndAdjust.Feature.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t WritingToolsComposeAndAdjust.Feature.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static WritingToolsComposeAndAdjust.Feature.allCases.getter()
{
  v1 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42438, &qword_193991930);
  v2 = OUTLINED_FUNCTION_17_27(v1);
  if (!(!v8 & v7))
  {
    v23 = OUTLINED_FUNCTION_39(v6);
    v27 = OUTLINED_FUNCTION_84_2(v23, v24, v25, v26, &qword_1EAE42438, &qword_193991930);
    v2 = OUTLINED_FUNCTION_17_2(v27);
  }

  OUTLINED_FUNCTION_15_5(v2, v3, v4, v5);
  if (v14 != v15)
  {
    v28 = OUTLINED_FUNCTION_39(v13);
    v30 = sub_1934B0FCC(v28, v0, 1, v29, &qword_1EAE42438, &qword_193991930);
    v9 = OUTLINED_FUNCTION_17_2(v30);
  }

  OUTLINED_FUNCTION_10_36(v9, v10, v11, v12);
  if (v14 != v15)
  {
    v31 = OUTLINED_FUNCTION_39(v20);
    v16 = OUTLINED_FUNCTION_84_2(v31, v32, v33, v34, &qword_1EAE42438, &qword_193991930);
    v19 = v16;
  }

  OUTLINED_FUNCTION_20_27(v16, v17, v18, v19);
  return v21;
}

uint64_t WritingToolsComposeAndAdjust.Feature.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_2_9();
  }

  if (*v0)
  {
    result = 0x65646E456E65704FLL;
  }

  else
  {
    result = 0x65736F706D6F43;
  }

  *v0;
  return result;
}

uint64_t WritingToolsComposeAndAdjust.Feature.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v2 == 0x65736F706D6F43 && v1 == 0xE700000000000000;
    if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      if (v2 != 0x65646E456E65704FLL || v1 != 0xEF7473756A644164)
      {
        v7 = OUTLINED_FUNCTION_0_9();

        v6 = v7 & 1;
        goto LABEL_14;
      }

      v6 = 1;
    }

    v7 = 1;
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

unint64_t sub_193748580()
{
  result = qword_1EAE42428;
  if (!qword_1EAE42428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42428);
  }

  return result;
}

unint64_t sub_1937485D8()
{
  result = qword_1EAE42430;
  if (!qword_1EAE42430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42430);
  }

  return result;
}

void sub_19374862C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAD568);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v10, xmmword_1939526B0);
  *v1 = 1;
  *v0 = "timestamp";
  *(v0 + 8) = 9;
  *(v0 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 104);
  OUTLINED_FUNCTION_2_0();
  v14();
  v15 = OUTLINED_FUNCTION_3_1(v1 + v7);
  *v16 = 2;
  *v15 = "prompt";
  v15[1] = 6;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v14)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v19 = 3;
  *v18 = "identifier";
  v18[1] = 10;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v14)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v1 + 3 * v7);
  *v22 = 4;
  *v21 = "topic";
  v21[1] = 5;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v14)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v1 + 4 * v7);
  *v25 = 5;
  *v24 = "userInterfaceLanguage";
  v24[1] = 21;
  v26 = OUTLINED_FUNCTION_41(v24);
  (v14)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v1 + 5 * v7);
  *v28 = 6;
  *v27 = "userSetRegionFormat";
  v27[1] = 19;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v14)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v1 + 6 * v7);
  *v31 = 7;
  *v30 = "result";
  v30[1] = v32;
  v33 = OUTLINED_FUNCTION_41(v30);
  (v14)(v33);
  v34 = OUTLINED_FUNCTION_3_1(v1 + 7 * v7);
  *v35 = 8;
  *v34 = "feature";
  *(v34 + 8) = 7;
  *(v34 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v14();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937488DC()
{
  v4 = v1;
  while (1)
  {
    v5 = sub_19393C0E0();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 1:
        v7 = *(type metadata accessor for WritingToolsComposeAndAdjust() + 28);
        sub_1934976E4();
        goto LABEL_13;
      case 2:
        v12 = *(type metadata accessor for WritingToolsComposeAndAdjust() + 32);
        goto LABEL_12;
      case 3:
        v9 = type metadata accessor for WritingToolsComposeAndAdjust();
        sub_193497890(v0 + *(v9 + 36));
        goto LABEL_13;
      case 4:
        v10 = *(type metadata accessor for WritingToolsComposeAndAdjust() + 40);
        goto LABEL_12;
      case 5:
        v8 = *(type metadata accessor for WritingToolsComposeAndAdjust() + 44);
        goto LABEL_12;
      case 6:
        v13 = *(type metadata accessor for WritingToolsComposeAndAdjust() + 48);
LABEL_12:
        sub_19393C200();
LABEL_13:
        v4 = 0;
        continue;
      case 7:
        OUTLINED_FUNCTION_12_41();
        sub_1934982A8();
        v11 = *(OUTLINED_FUNCTION_6_55() + 52);
        goto LABEL_15;
      case 8:
        OUTLINED_FUNCTION_12_41();
        sub_1934982A8();
        v11 = *(OUTLINED_FUNCTION_6_55() + 56);
LABEL_15:
        v14 = v0 + v11;
        *v14 = v2;
        *(v14 + 8) = v3 & 1;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_193748AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_193748CB0(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = type metadata accessor for WritingToolsComposeAndAdjust();
    OUTLINED_FUNCTION_5_20(v9[8]);
    if (v11)
    {
      v12 = *v10;
      OUTLINED_FUNCTION_2_10();
    }

    sub_193748E70(v3, a1, a2, a3);
    OUTLINED_FUNCTION_5_20(v9[10]);
    if (v14)
    {
      v15 = *v13;
      OUTLINED_FUNCTION_2_10();
    }

    OUTLINED_FUNCTION_5_20(v9[11]);
    if (v17)
    {
      v18 = *v16;
      OUTLINED_FUNCTION_2_10();
    }

    OUTLINED_FUNCTION_5_20(v9[12]);
    if (v20)
    {
      v21 = *v19;
      OUTLINED_FUNCTION_2_10();
    }

    v22 = v3 + v9[13];
    v23 = *v22;
    v24 = *(v22 + 8);
    v32 = *v22;
    v33 = v24;
    sub_193747A98();
    if ((sub_19393C550() & 1) == 0)
    {
      v32 = v23;
      v33 = v24;
      OUTLINED_FUNCTION_20_40(&v32, 7, v25, &type metadata for WritingToolsComposeAndAdjust.Result, v26, &off_1F07ECF20);
    }

    v27 = v3 + v9[14];
    v28 = *v27;
    v29 = *(v27 + 8);
    v32 = *v27;
    v33 = v29;
    sub_193747AEC();
    result = sub_19393C550();
    if ((result & 1) == 0)
    {
      v32 = v28;
      v33 = v29;
      return OUTLINED_FUNCTION_20_40(&v32, 8, v30, &type metadata for WritingToolsComposeAndAdjust.Feature, v31, &off_1F07ECF48);
    }
  }

  return result;
}

uint64_t sub_193748CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_77(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WritingToolsComposeAndAdjust();
  sub_193448758(v5 + *(v18 + 28), v9, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    return sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
  }

  (*(v13 + 32))(v17, v9, v4);
  sub_193451F04(v17, 1, 2020175477, 0xE400000000000000);
  return (*(v13 + 8))(v17, v4);
}

uint64_t sub_193748E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_77(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_19393BE60();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WritingToolsComposeAndAdjust();
  sub_193448758(v5 + *(v18 + 36), v9, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    return sub_19344E6DC(v9, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  (*(v13 + 32))(v17, v9, v4);
  sub_19344652C();
  return (*(v13 + 8))(v17, v4);
}

uint64_t sub_193749024()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE42448;

  return v0;
}

void sub_1937490C0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAD580);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v10, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "ResultUnknown";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 104);
  OUTLINED_FUNCTION_2_0();
  v14();
  v15 = OUTLINED_FUNCTION_3_1(v1 + v7);
  *v16 = 1;
  *v15 = "NotGenerated";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v14();
  v17 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v18 = 2;
  *v17 = "Generated";
  *(v17 + 8) = 9;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v14();
  v19 = OUTLINED_FUNCTION_3_1(v1 + 3 * v7);
  *v20 = 3;
  *v19 = "Engaged";
  *(v19 + 8) = 7;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v14();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937492D4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD598);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_19394FBB0;
  v9 = (v8 + v7);
  v10 = v8 + v7 + dword_1EAEAD5D0;
  *v9 = 0;
  *v10 = "FeatureUnknown";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 104);
  (v14)(v10, v11, v12);
  v15 = OUTLINED_FUNCTION_3_1(v9 + v5);
  *v16 = 1;
  *v15 = "Compose";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v14();
  v17 = OUTLINED_FUNCTION_3_1(v9 + 2 * v5);
  *v18 = 2;
  *v17 = "OpenEndedAdjust";
  *(v17 + 8) = 15;
  *(v17 + 16) = 2;
  v14();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t WritingToolsComposeAndAdjust.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 20));
}

uint64_t type metadata accessor for WritingToolsComposeAndAdjust()
{
  result = qword_1EAE90D70;
  if (!qword_1EAE90D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WritingToolsComposeAndAdjust.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v0 + 24));
}

uint64_t WritingToolsComposeAndAdjust.timestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 28));
}

uint64_t WritingToolsComposeAndAdjust.prompt.getter()
{
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WritingToolsComposeAndAdjust.prompt.setter()
{
  v3 = OUTLINED_FUNCTION_8_49();
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WritingToolsComposeAndAdjust.identifier.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 36));
}

uint64_t WritingToolsComposeAndAdjust.topic.getter()
{
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WritingToolsComposeAndAdjust.topic.setter()
{
  v3 = OUTLINED_FUNCTION_8_49();
  result = OUTLINED_FUNCTION_201(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WritingToolsComposeAndAdjust.userInterfaceLanguage.getter()
{
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WritingToolsComposeAndAdjust.userInterfaceLanguage.setter()
{
  v3 = OUTLINED_FUNCTION_8_49();
  result = OUTLINED_FUNCTION_201(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WritingToolsComposeAndAdjust.userSetRegionFormat.getter()
{
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_4_4(*(v0 + 48));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WritingToolsComposeAndAdjust.userSetRegionFormat.setter()
{
  v3 = OUTLINED_FUNCTION_8_49();
  result = OUTLINED_FUNCTION_201(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void WritingToolsComposeAndAdjust.result.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_2_52(*(v0 + 52));
}

uint64_t WritingToolsComposeAndAdjust.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for WritingToolsComposeAndAdjust();
  v5 = v1 + *(result + 52);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

void WritingToolsComposeAndAdjust.feature.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for WritingToolsComposeAndAdjust();
  OUTLINED_FUNCTION_2_52(*(v0 + 56));
}

uint64_t WritingToolsComposeAndAdjust.feature.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for WritingToolsComposeAndAdjust();
  v5 = v1 + *(result + 56);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_193749BC4@<X0>(uint64_t *a1@<X8>)
{
  result = WritingToolsComposeAndAdjust.Result.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193749BEC@<X0>(char **a1@<X8>)
{
  result = static WritingToolsComposeAndAdjust.Result.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193749C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193749D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193749E5C@<X0>(uint64_t *a1@<X8>)
{
  result = WritingToolsComposeAndAdjust.Feature.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193749E84@<X0>(uint64_t *a1@<X8>)
{
  result = static WritingToolsComposeAndAdjust.Feature.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t WritingToolsComposeAndAdjust.hashValue.getter()
{
  sub_19393CAB0();
  WritingToolsComposeAndAdjust.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193749FC4()
{
  sub_19393CAB0();
  WritingToolsComposeAndAdjust.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19374A06C()
{
  result = qword_1EAE42478;
  if (!qword_1EAE42478)
  {
    type metadata accessor for WritingToolsComposeAndAdjust();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42478);
  }

  return result;
}

uint64_t sub_19374A0F0()
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_193658134();
    v1 = v5;
    if (v6 > 0x3F)
    {
      return v1;
    }

    sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

_BYTE *_s11DecisioningOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s8TrustKitOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19374A3B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511B38);
  v5 = __swift_project_value_buffer(v4, qword_1ED511B38);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TrustKit.Decisioning.TKModelMessages.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_59 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511B38);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42480, &qword_193991C80);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TrustKit.Decisioning.TKModelMessages.attribute(_:)(void (*a1)(void))
{
  result = sub_19374A7C4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19374A80C(void (*a1)(void))
{
  result = sub_19374A7C4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19374A83C(uint64_t a1)
{
  result = sub_19374A864();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19374A864()
{
  result = qword_1ED502FB0;
  if (!qword_1ED502FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502FB0);
  }

  return result;
}

_BYTE *_s15TKModelMessagesOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TrustKitTKModelMessages.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for TrustKitTKModelMessages();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42488, &qword_193991CF8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_19374AB6C(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE42488, &qword_193991CF8);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE42488, &qword_193991CF8);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_19374AB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrustKitTKModelMessages();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TrustKitTKModelMessages.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42488, &qword_193991CF8);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE42488, &qword_193991CF8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_19374AD10(v10, a1);
  }

  return result;
}

uint64_t sub_19374AD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrustKitTKModelMessages();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TrustKitTKModelMessages.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42488, &qword_193991CF8);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_19374C12C() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_19374AD10(v14, v40);
      v33 = type metadata accessor for TrustKitTKModelMessages();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t TrustKitTKModelMessages.serialize()()
{
  v1 = type metadata accessor for TrustKitTKModelMessages();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42488, &qword_193991CF8);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_19374AB6C(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE42488, &qword_193991CF8);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE42488, &qword_193991CF8);
  return v15;
}

id static TrustKitTKModelMessages.columns.getter()
{
  v71 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v10 = OUTLINED_FUNCTION_11_43();
  result = OUTLINED_FUNCTION_3_5(v10, 0xEB00000000644965);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v20[2].n128_u64[0] = sub_19393C850();
  v29 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v30 = OUTLINED_FUNCTION_8_50();
  result = OUTLINED_FUNCTION_3_5(v30, v31);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  v32 = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_2_4(v32, v33, v34, v35, v36, v37, v38, v39, v69);
  OUTLINED_FUNCTION_2_13(v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v40[2].n128_u64[0] = sub_19393C850();
  v49 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v50 = OUTLINED_FUNCTION_12_42();
  result = OUTLINED_FUNCTION_3_5(v50, 0xEA0000000000656ELL);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v51 = swift_initStackObject();
  v59 = OUTLINED_FUNCTION_2_4(v51, v52, v53, v54, v55, v56, v57, v58, v70);
  OUTLINED_FUNCTION_2_13(v59, v60, v61, v62, v63, v64, v65, v66, v67);
  v59[2].n128_u64[0] = sub_19393C850();
  v68 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x656C61636F6CLL, 0xE600000000000000, 2, 0, v59, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v71;
  }

LABEL_9:
  __break(1u);
  return result;
}

int *sub_19374B418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = a1 == OUTLINED_FUNCTION_11_43() && a2 == v7;
  if (v8 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for TrustKitTKModelMessages();
    v10 = result[7];
    goto LABEL_7;
  }

  v12 = a1 == OUTLINED_FUNCTION_8_50() && a2 == v11;
  if (v12 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for TrustKitTKModelMessages();
    v10 = result[8];
    goto LABEL_7;
  }

  v13 = a1 == OUTLINED_FUNCTION_12_42() && a2 == 0xEA0000000000656ELL;
  if (v13 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for TrustKitTKModelMessages();
    v10 = result[9];
    goto LABEL_7;
  }

  v14 = a1 == 0x6572656767697274 && a2 == 0xEE0073656C755264;
  if (v14 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v15 = *(type metadata accessor for TrustKitTKModelMessages() + 40);
LABEL_29:
    v24 = *(v3 + v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    return sub_1934948FC();
  }

  v16 = a1 == 0x45736973656D656ELL && a2 == 0xED000073726F7272;
  if (v16 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v15 = *(type metadata accessor for TrustKitTKModelMessages() + 44);
    goto LABEL_29;
  }

  v17 = a1 == 0xD000000000000017 && 0x8000000193A33480 == a2;
  if (v17 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v15 = *(type metadata accessor for TrustKitTKModelMessages() + 48);
    goto LABEL_29;
  }

  v18 = a1 == 0xD000000000000016 && 0x8000000193A334A0 == a2;
  if (v18 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v15 = *(type metadata accessor for TrustKitTKModelMessages() + 52);
    goto LABEL_29;
  }

  v19 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (!v19 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    sub_19349AB64();
    swift_allocError();
    v21 = v20;
    *v20 = a1;
    v20[1] = a2;
    v20[5] = type metadata accessor for TrustKitTKModelMessages();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v21 + 2);
    sub_19374AB6C(v3, boxed_opaque_existential_1Tm);
    *(v21 + 48) = 1;
    swift_willThrow();
  }

  result = type metadata accessor for TrustKitTKModelMessages();
  v10 = result[14];
LABEL_7:
  if (*(v3 + v10 + 8))
  {
    v23 = *(v3 + v10);
    return sub_1934948FC();
  }

  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t TrustKitTKModelMessages.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TrustKitTKModelMessages();
  v3 = v2[5];
  sub_193657C90(a1 + v3);
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_19374C12C();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;

  v11 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[10]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[11]) = v11;
  *(a1 + v2[12]) = v11;
  *(a1 + v2[13]) = v11;
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t static TrustKitTKModelMessages.== infix(_:_:)()
{
  v0 = type metadata accessor for TrustKitTKModelMessages();
  v1 = v0[7];
  OUTLINED_FUNCTION_2_5();
  if (v4)
  {
    if (!v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v3);
    v7 = v7 && v5 == v6;
    if (!v7 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  v8 = v0[8];
  OUTLINED_FUNCTION_2_5();
  if (v11)
  {
    if (!v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v10);
    v14 = v7 && v12 == v13;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v15 = v0[9];
  OUTLINED_FUNCTION_2_5();
  if (v18)
  {
    if (!v16)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v17);
    v21 = v7 && v19 == v20;
    if (!v21 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (OUTLINED_FUNCTION_4_64(v0[10]) & 1) != 0 && (OUTLINED_FUNCTION_4_64(v0[11]) & 1) != 0 && (OUTLINED_FUNCTION_4_64(v0[12]) & 1) != 0 && (OUTLINED_FUNCTION_4_64(v0[13]))
  {
    v22 = v0[14];
    OUTLINED_FUNCTION_2_5();
    if (v25)
    {
      if (v23)
      {
        OUTLINED_FUNCTION_5(v24);
        v28 = v7 && v26 == v27;
        if (v28 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v23)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t TrustKitTKModelMessages.hash(into:)()
{
  v1 = type metadata accessor for TrustKitTKModelMessages();
  v2 = (v0 + v1[7]);
  if (v2[1])
  {
    v3 = *v2;
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_67();
  }

  else
  {
    sub_19393CAD0();
  }

  v4 = (v0 + v1[8]);
  if (v4[1])
  {
    v5 = *v4;
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_67();
  }

  else
  {
    sub_19393CAD0();
  }

  v6 = (v0 + v1[9]);
  if (v6[1])
  {
    v7 = *v6;
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_67();
  }

  else
  {
    sub_19393CAD0();
  }

  OUTLINED_FUNCTION_3_69(v1[10]);
  OUTLINED_FUNCTION_3_69(v1[11]);
  OUTLINED_FUNCTION_3_69(v1[12]);
  OUTLINED_FUNCTION_3_69(v1[13]);
  v8 = (v0 + v1[14]);
  if (!v8[1])
  {
    return sub_19393CAD0();
  }

  v9 = *v8;
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t sub_19374BAD4()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD5B0);
  __swift_project_value_buffer(v0, qword_1EAEAD5B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1939526B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "signatureId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v11 = 2;
  *v10 = "uafVersion";
  v10[1] = 10;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v14 = 3;
  *v13 = "recordZone";
  v13[1] = 10;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v17 = 4;
  *v16 = "triggeredRules";
  v16[1] = 14;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v20 = 5;
  *v19 = "nemesisErrors";
  v19[1] = 13;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v23 = 6;
  *v22 = "filteringTriggeredRules";
  v22[1] = 23;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v5 + 6 * v2);
  *v26 = 7;
  *v25 = "filteringNemesisErrors";
  v25[1] = 22;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v9)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v5 + 7 * v2);
  *v29 = 8;
  *v28 = "locale";
  *(v28 + 8) = 6;
  *(v28 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

uint64_t sub_19374BDC8()
{
  v1 = v0;
  while (1)
  {
    result = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v4 = *(type metadata accessor for TrustKitTKModelMessages() + 28);
        goto LABEL_11;
      case 2:
        v4 = *(type metadata accessor for TrustKitTKModelMessages() + 32);
        goto LABEL_11;
      case 3:
        v4 = *(type metadata accessor for TrustKitTKModelMessages() + 36);
        goto LABEL_11;
      case 4:
        v5 = *(type metadata accessor for TrustKitTKModelMessages() + 40);
        goto LABEL_14;
      case 5:
        v5 = *(type metadata accessor for TrustKitTKModelMessages() + 44);
        goto LABEL_14;
      case 6:
        v5 = *(type metadata accessor for TrustKitTKModelMessages() + 48);
        goto LABEL_14;
      case 7:
        v5 = *(type metadata accessor for TrustKitTKModelMessages() + 52);
LABEL_14:
        OUTLINED_FUNCTION_8_2(v5);
        sub_19393C1B0();
        goto LABEL_15;
      case 8:
        v4 = *(type metadata accessor for TrustKitTKModelMessages() + 56);
LABEL_11:
        OUTLINED_FUNCTION_8_2(v4);
        sub_19393C200();
LABEL_15:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_19374BEE8()
{
  v1 = v0;
  v2 = type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_16_4(v2[7]);
  if (v4)
  {
    v5 = *v3;
    OUTLINED_FUNCTION_2_7();
    v1 = v0;
  }

  if (!v1)
  {
    OUTLINED_FUNCTION_16_4(v2[8]);
    if (!v7 || (v8 = *v6, OUTLINED_FUNCTION_2_7(), !v0))
    {
      OUTLINED_FUNCTION_16_4(v2[9]);
      if (!v10 || (v11 = *v9, OUTLINED_FUNCTION_2_7(), !v0))
      {
        OUTLINED_FUNCTION_8_51(v2[10]);
        if (!v12 || (OUTLINED_FUNCTION_4_65(), !v0))
        {
          OUTLINED_FUNCTION_8_51(v2[11]);
          if (!v13 || (OUTLINED_FUNCTION_4_65(), !v0))
          {
            OUTLINED_FUNCTION_8_51(v2[12]);
            if (!v14 || (OUTLINED_FUNCTION_4_65(), !v0))
            {
              OUTLINED_FUNCTION_8_51(v2[13]);
              if (!v15 || (OUTLINED_FUNCTION_4_65(), !v0))
              {
                OUTLINED_FUNCTION_16_4(v2[14]);
                if (v17)
                {
                  v18 = *v16;
                  OUTLINED_FUNCTION_2_7();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_19374C028()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE42490;

  return v0;
}

uint64_t sub_19374C06C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE90D80 != -1)
  {
    OUTLINED_FUNCTION_0_93();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEAD5B0);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t type metadata accessor for TrustKitTKModelMessages()
{
  result = qword_1ED50BEE0;
  if (!qword_1ED50BEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TrustKitTKModelMessages.signatureId.getter()
{
  v0 = type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TrustKitTKModelMessages.signatureId.setter()
{
  v3 = OUTLINED_FUNCTION_4_66();
  result = OUTLINED_FUNCTION_201(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.uafVersion.getter()
{
  v0 = type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TrustKitTKModelMessages.uafVersion.setter()
{
  v3 = OUTLINED_FUNCTION_4_66();
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.recordZone.getter()
{
  v0 = type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TrustKitTKModelMessages.recordZone.setter()
{
  v3 = OUTLINED_FUNCTION_4_66();
  result = OUTLINED_FUNCTION_201(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.triggeredRules.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustKitTKModelMessages() + 40));
}

uint64_t TrustKitTKModelMessages.triggeredRules.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_68() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.nemesisErrors.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustKitTKModelMessages() + 44));
}

uint64_t TrustKitTKModelMessages.nemesisErrors.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_68() + 44);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.filteringTriggeredRules.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustKitTKModelMessages() + 48));
}

uint64_t TrustKitTKModelMessages.filteringTriggeredRules.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_68() + 48);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.filteringNemesisErrors.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustKitTKModelMessages() + 52));
}

uint64_t TrustKitTKModelMessages.filteringNemesisErrors.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_68() + 52);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.locale.getter()
{
  v0 = type metadata accessor for TrustKitTKModelMessages();
  OUTLINED_FUNCTION_4_4(*(v0 + 56));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TrustKitTKModelMessages.locale.setter()
{
  v3 = OUTLINED_FUNCTION_4_66();
  result = OUTLINED_FUNCTION_201(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TrustKitTKModelMessages.hashValue.getter()
{
  sub_19393CAB0();
  TrustKitTKModelMessages.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19374C874()
{
  sub_19393CAB0();
  TrustKitTKModelMessages.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19374C8B4()
{
  result = qword_1EAE424A0;
  if (!qword_1EAE424A0)
  {
    type metadata accessor for TrustKitTKModelMessages();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE424A0);
  }

  return result;
}

uint64_t sub_19374C938()
{
  sub_19349D140();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_19374CA64(319, &qword_1ED508290, MEMORY[0x1E69E6720]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_19374CA64(319, qword_1ED507ED8, MEMORY[0x1E69E62F8]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_19374CA64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *_s22WalletPaymentsCommerceOwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_19374CB7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511D88);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_19374CD3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511DD0);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

unint64_t sub_19374CE2C()
{
  result = sub_1934359AC();
  qword_1ED511CE8 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511CF0 = result;
  return result;
}

uint64_t sub_19374CE80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511DE8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_19374D038()
{
  OUTLINED_FUNCTION_62_2();
  sub_1937554C8();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374D0A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511E00);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

unint64_t sub_19374D194()
{
  result = sub_1934359AC();
  qword_1ED511CF8 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D00 = result;
  return result;
}

uint64_t sub_19374D1F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511E18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrder.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_75_18();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v0 | 2, v1, v2);
  sub_19393BFC0();
  v3 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_19374D40C()
{
  OUTLINED_FUNCTION_62_2();
  sub_193755474();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374D488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511E30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

unint64_t sub_19374D578()
{
  result = sub_1934359AC();
  qword_1ED511D08 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D10 = result;
  return result;
}

uint64_t sub_19374D5CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511E48);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderEmail.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_75_18();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v0 | 7, v1, v2);
  sub_19393BFC0();
  v3 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_19374D7F0()
{
  OUTLINED_FUNCTION_62_2();
  sub_193755420();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374D86C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511E60);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

unint64_t sub_19374D95C()
{
  result = sub_1934359AC();
  qword_1ED511D18 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D20 = result;
  return result;
}

uint64_t sub_19374D9B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511E78);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_19374DB68()
{
  OUTLINED_FUNCTION_62_2();
  sub_1937553CC();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374DBE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511E90);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

unint64_t sub_19374DCD4()
{
  result = sub_1934359AC();
  qword_1ED511D28 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D30 = result;
  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderFields.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_75_18();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v0 | 7, v1, v2);
  sub_19393BFC0();
  v3 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_19374DE98()
{
  OUTLINED_FUNCTION_62_2();
  sub_193755378();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374DF14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511EC0);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

unint64_t sub_19374E004()
{
  result = sub_1934359AC();
  qword_1ED511D38 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D40 = result;
  return result;
}

uint64_t sub_19374E058()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511ED8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderPayment.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v1 | v0, v2, v3);
  sub_19393BFC0();
  v4 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_19374E288()
{
  OUTLINED_FUNCTION_62_2();
  sub_193755324();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374E304()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511EF0);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

unint64_t sub_19374E3F4()
{
  result = sub_1934359AC();
  qword_1ED511D48 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D50 = result;
  return result;
}

uint64_t sub_19374E448()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511F08);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderPerson.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_75_18();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v0 | 8, v1, v2);
  sub_19393BFC0();
  v3 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_19374E668()
{
  OUTLINED_FUNCTION_62_2();
  sub_1937552D0();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374E6E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511F20);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

unint64_t sub_19374E7D4()
{
  result = sub_1934359AC();
  qword_1ED511D58 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D60 = result;
  return result;
}

uint64_t sub_19374E828()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511F38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderShipmentFullFillmentInfo.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v1 | v0, v2, v3);
  sub_19393BFC0();
  v4 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_19374EA58()
{
  OUTLINED_FUNCTION_62_2();
  sub_19375527C();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374EAD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511F50);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

unint64_t sub_19374EBC4()
{
  result = sub_1934359AC();
  qword_1ED511D68 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D70 = result;
  return result;
}

uint64_t sub_19374EC18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511F68);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderTransaction.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v1 | v0, v2, v3);
  sub_19393BFC0();
  v4 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_19374EE48()
{
  OUTLINED_FUNCTION_62_2();
  sub_193755228();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

uint64_t sub_19374EEC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_14();
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511F80);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

unint64_t sub_19374EFB4()
{
  result = sub_1934359AC();
  qword_1ED511D78 = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  unk_1ED511D80 = result;
  return result;
}

uint64_t sub_19374F014(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_14();
  v7 = sub_19393BE60();
  __swift_allocate_value_buffer(v7, a2);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_22_9();
    return v13(v12);
  }

  return result;
}

uint64_t sub_19374F100@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_98_1(a1);
  if (!v5)
  {
    swift_once();
  }

  a2(0);
  OUTLINED_FUNCTION_104_2();
  __swift_project_value_buffer(v6, v7);
  OUTLINED_FUNCTION_80_3();
  v9 = *(v8 + 16);

  return v9(a3);
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletTrackedOrderFields.updatedObjectDiffConfig.getter()
{
  OUTLINED_FUNCTION_75_18();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_38_31(v0 | 0xE, v1, v2);
  sub_19393BFC0();
  v3 = OUTLINED_FUNCTION_36_25();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_19374F2C4()
{
  OUTLINED_FUNCTION_62_2();
  sub_1937551D4();
  v0 = OUTLINED_FUNCTION_24_6();

  return MEMORY[0x1EEDF07A0](v0);
}

unint64_t sub_19374F328()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = OUTLINED_FUNCTION_36_2(v1);
  }

  v3 = sub_1937554C8();
  *(v0 + 2) = v2 + 1;
  v4 = &v0[16 * v2];
  *(v4 + 4) = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletCascadeInsert;
  *(v4 + 5) = v3;
  v5 = *(v0 + 3);
  if ((v2 + 2) > (v5 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v5);
  }

  v6 = sub_193755474();
  *(v0 + 2) = v2 + 2;
  OUTLINED_FUNCTION_50_4(v6, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrder);
  if ((v2 + 3) > (v7 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v7);
  }

  v8 = sub_193755420();
  *(v0 + 2) = v2 + 3;
  OUTLINED_FUNCTION_56_1(v8, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderEmail);
  if ((v2 + 4) > (v9 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v9);
  }

  v10 = sub_1937553CC();
  *(v0 + 2) = v2 + 4;
  OUTLINED_FUNCTION_50_4(v10, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderExtractedView);
  if ((v2 + 5) > (v11 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v11);
  }

  v12 = sub_193755378();
  *(v0 + 2) = v2 + 5;
  OUTLINED_FUNCTION_56_1(v12, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderFields);
  if ((v2 + 6) > (v13 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v13);
  }

  v14 = sub_193755324();
  *(v0 + 2) = v2 + 6;
  OUTLINED_FUNCTION_50_4(v14, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderPayment);
  if ((v2 + 7) > (v15 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v15);
  }

  v16 = sub_1937552D0();
  *(v0 + 2) = v2 + 7;
  OUTLINED_FUNCTION_56_1(v16, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderPerson);
  if ((v2 + 8) > (v17 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v17);
  }

  v18 = sub_19375527C();
  *(v0 + 2) = v2 + 8;
  OUTLINED_FUNCTION_50_4(v18, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderShipmentFullFillmentInfo);
  v20 = v2 + 9;
  if ((v2 + 9) > (v19 >> 1))
  {
    v0 = OUTLINED_FUNCTION_36_2(v19);
  }

  v21 = sub_193755228();
  *(v0 + 2) = v20;
  OUTLINED_FUNCTION_56_1(v21, &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderTransaction);
  if ((v2 + 10) > (v22 >> 1))
  {
    v0 = OUTLINED_FUNCTION_40_1(v22);
  }

  result = sub_1937551D4();
  *(v0 + 2) = v2 + 10;
  v24 = &v0[16 * v20];
  *(v24 + 4) = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal.WalletTrackedOrderFields;
  *(v24 + 5) = result;
  qword_1ED511C90 = v0;
  return result;
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.views.getter()
{
  if (qword_1ED511C88 != -1)
  {
    OUTLINED_FUNCTION_84_14();
  }
}

unint64_t sub_19374F59C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a1 == 0xD000000000000013 && 0x8000000193991E70 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v8 = OUTLINED_FUNCTION_26_3();
    result = sub_19375551C(v8);
  }

  else
  {
    v10 = a1 == 0x724F74656C6C6157 && a2 == 0xEB00000000726564;
    if (v10 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v11 = OUTLINED_FUNCTION_26_3();
      result = sub_193755550(v11);
    }

    else
    {
      v12 = a1 == 0xD000000000000010 && 0x8000000193991E90 == a2;
      if (v12 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v13 = OUTLINED_FUNCTION_26_3();
        result = sub_193755584(v13);
      }

      else
      {
        v14 = a1 == 0xD000000000000018 && 0x8000000193991EB0 == a2;
        if (v14 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v15 = OUTLINED_FUNCTION_26_3();
          result = sub_1937555B8(v15);
        }

        else
        {
          v16 = a1 == 0xD000000000000011 && 0x8000000193991ED0 == a2;
          if (v16 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
          {
            v17 = OUTLINED_FUNCTION_26_3();
            result = sub_1937555EC(v17);
          }

          else
          {
            v18 = a1 == 0xD000000000000012 && 0x8000000193991EF0 == a2;
            if (v18 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
            {
              v19 = OUTLINED_FUNCTION_26_3();
              result = sub_193755620(v19);
            }

            else
            {
              v20 = a1 == 0xD000000000000011 && 0x8000000193991F10 == a2;
              if (v20 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
              {
                v21 = OUTLINED_FUNCTION_26_3();
                result = sub_193755654(v21);
              }

              else
              {
                v22 = a1 == 0xD000000000000023 && 0x8000000193991F30 == a2;
                if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                {
                  v23 = OUTLINED_FUNCTION_26_3();
                  result = sub_193755688(v23);
                }

                else
                {
                  v24 = a1 == 0xD000000000000016 && 0x8000000193991F60 == a2;
                  if (v24 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                  {
                    v25 = OUTLINED_FUNCTION_26_3();
                    result = sub_1937556BC(v25);
                  }

                  else
                  {
                    v26 = a1 == 0xD000000000000018 && 0x8000000193991F80 == a2;
                    if (!v26 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
                    {
                      return a3();
                    }

                    v27 = OUTLINED_FUNCTION_26_3();
                    result = sub_1937556F0(v27);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (!v3)
  {
  }

  return result;
}

void sub_19374F86C()
{
  OUTLINED_FUNCTION_117();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_42_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_43_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_14();
  sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_35_31();
  v21 = sub_19393BF10();
  __swift_allocate_value_buffer(v21, qword_1ED511FB0);
  __swift_project_value_buffer(v21, qword_1ED511FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v22 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v22);
  v86 = *(v23 + 72);
  OUTLINED_FUNCTION_54();
  v24 = OUTLINED_FUNCTION_108_14();
  OUTLINED_FUNCTION_126_10(v24, xmmword_19394FBC0);
  v25 = *MEMORY[0x1E698F1A0];
  v26 = OUTLINED_FUNCTION_125_7();
  (qword_1ED511FB0[0])(v26);
  v85 = sub_19393BF40();
  v27 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_63_0(v27, v28, v29, v30);
  v84 = sub_19393BEF0();
  v31 = OUTLINED_FUNCTION_20_1();
  v35 = OUTLINED_FUNCTION_8_52(v31, v32, v33, v34);
  OUTLINED_FUNCTION_63_0(v35, v36, v37, v21);
  v83 = sub_19393BEB0();
  v38 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  OUTLINED_FUNCTION_116_14();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  v42 = OUTLINED_FUNCTION_103_13();
  v43 = OUTLINED_FUNCTION_119_11(v42, *MEMORY[0x1E698F198]);
  (qword_1ED511FB0[0])(v43);
  v44 = OUTLINED_FUNCTION_19_6();
  v47 = OUTLINED_FUNCTION_7_45(v44, v45, v46, v85);
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v84);
  v50 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v21);
  v53 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v83);
  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_23_39();
  OUTLINED_FUNCTION_106_15();
  v56 = OUTLINED_FUNCTION_91_14();
  v17(v56);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v85);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v84);
  v63 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v21);
  v66 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v83);
  OUTLINED_FUNCTION_105_16();
  v69 = OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_56_19(v69);
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_82_14();
  v70 = OUTLINED_FUNCTION_129_11();
  v17(v70);
  v71 = OUTLINED_FUNCTION_15_7();
  v74 = OUTLINED_FUNCTION_7_45(v71, v72, v73, v85);
  v77 = OUTLINED_FUNCTION_8_52(v74, v75, v76, v84);
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v21);
  v80 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_113_11();
  OUTLINED_FUNCTION_76_15(24);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletCascadeInsert.metadata.modify()
{
  if (qword_1ED511C98 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED511FB0);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19374FD2C()
{
  OUTLINED_FUNCTION_117();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v114 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_53_1();
  v131 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_70_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_74();
  v22 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_35_31();
  v28 = sub_19393BF10();
  v128 = v28;
  __swift_allocate_value_buffer(v28, qword_1ED511FC8);
  v122 = __swift_project_value_buffer(v28, qword_1ED511FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v29 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v29);
  v130 = *(v30 + 72);
  OUTLINED_FUNCTION_54();
  v31 = OUTLINED_FUNCTION_108_14();
  v121 = v31;
  *(v31 + 16) = xmmword_19394FBD0;
  v32 = v31 + v2;
  v120 = *MEMORY[0x1E698F1A0];
  v33 = *(v24 + 104);
  v126 = v24 + 104;
  v116 = v22;
  v33(v1);
  v129 = sub_19393BF40();
  v34 = OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_63_0(v34, v35, v36, v37);
  v125 = sub_19393BEF0();
  v38 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_63_0(v42, v43, v44, v128);
  v45 = sub_19393BEB0();
  v123 = v8;
  v124 = v45;
  v46 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  v127 = v1;
  v114[0] = v0;
  OUTLINED_FUNCTION_92_0();
  v118 = *MEMORY[0x1E698F198];
  v50 = v118;
  (v33)(v1, v118, v22);
  v51 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v129);
  OUTLINED_FUNCTION_45();
  v54 = v125;
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v125);
  OUTLINED_FUNCTION_31_34();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v62 = v124;
  v63 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
  OUTLINED_FUNCTION_1_68();
  v66 = v130;
  v119 = v32;
  OUTLINED_FUNCTION_23_39();
  v67 = v127;
  OUTLINED_FUNCTION_107_10();
  v115 = v32 + 2 * v66;
  v68 = v50;
  v69 = v116;
  (v33)(v67, v68, v116);
  v117 = v33;
  OUTLINED_FUNCTION_45();
  v70 = v129;
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v129);
  v74 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v54);
  v77 = OUTLINED_FUNCTION_19_6();
  v78 = v128;
  __swift_storeEnumTagSinglePayload(v77, v79, v80, v128);
  v81 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v62);
  v84 = OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_56_19(v84);
  OUTLINED_FUNCTION_52_7();
  v85 = v127;
  sub_19393BF20();
  v114[1] = "b3-b497-95e2c8154e9a";
  v115 = 3 * v130;
  v86 = v69;
  (v33)(v85, v118, v69);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v70);
  v90 = OUTLINED_FUNCTION_38_4();
  v91 = v125;
  v94 = OUTLINED_FUNCTION_8_52(v90, v92, v93, v125);
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v78);
  v97 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v124);
  OUTLINED_FUNCTION_124_9();
  OUTLINED_FUNCTION_68_20();
  OUTLINED_FUNCTION_51_2(21);
  v100 = v127;
  OUTLINED_FUNCTION_92_0();
  (v117)(v100, v120, v86);
  v101 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v129);
  v104 = OUTLINED_FUNCTION_38_4();
  v107 = OUTLINED_FUNCTION_8_52(v104, v105, v106, v91);
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v128);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v113);
  OUTLINED_FUNCTION_124_9();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_134_12();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrder.metadata.modify()
{
  if (qword_1ED511CA0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED511FC8);
  return OUTLINED_FUNCTION_64_0();
}

void sub_193750364()
{
  OUTLINED_FUNCTION_117();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_53_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_43_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_43_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_74();
  v282 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_35_31();
  v22 = sub_19393BF10();
  __swift_allocate_value_buffer(v22, qword_1ED511FE0);
  __swift_project_value_buffer(v22, qword_1ED511FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v23 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v23);
  v286 = *(v24 + 72);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v281 = OUTLINED_FUNCTION_108_14();
  *(v281 + 16) = xmmword_193991E80;
  v285 = v281 + v26;
  v27 = *(v18 + 104);
  (v27)(v0, *MEMORY[0x1E698F1A0], v282);
  v284 = sub_19393BF40();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_63_0(v28, v29, v30, v31);
  v32 = sub_19393BEF0();
  v33 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  v36 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_63_0(v36, v37, v38, v22);
  v39 = sub_19393BEB0();
  v40 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_52_18();
  v283 = *MEMORY[0x1E698F198];
  v27(v0);
  v43 = OUTLINED_FUNCTION_39_4();
  v46 = OUTLINED_FUNCTION_7_45(v43, v44, v45, v284);
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v32);
  v49 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v22);
  v52 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v39);
  OUTLINED_FUNCTION_116_14();
  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1();
  (v27)(v0, v283, v282);
  v55 = OUTLINED_FUNCTION_39_4();
  v58 = OUTLINED_FUNCTION_7_45(v55, v56, v57, v284);
  OUTLINED_FUNCTION_140_10(v58, v59, v60);
  v61 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v22);
  v64 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v39);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1();
  v67 = OUTLINED_FUNCTION_95_15(3 * v286);
  (v27)(v67, v283, v282);
  v68 = OUTLINED_FUNCTION_39_4();
  v71 = OUTLINED_FUNCTION_7_45(v68, v69, v70, v284);
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v284);
  v74 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v22);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_82_14();
  v82 = OUTLINED_FUNCTION_95_15(v285 + 4 * v81);
  (v27)(v82, v283, v282);
  v83 = OUTLINED_FUNCTION_39_4();
  v86 = OUTLINED_FUNCTION_7_45(v83, v84, v85, v284);
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v32);
  v89 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v22);
  v92 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v39);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_82_14();
  v96 = OUTLINED_FUNCTION_95_15(5 * v95);
  (v27)(v96, v283, v282);
  v97 = OUTLINED_FUNCTION_39_4();
  v100 = OUTLINED_FUNCTION_7_45(v97, v98, v99, v284);
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v32);
  OUTLINED_FUNCTION_24_40();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
  OUTLINED_FUNCTION_31_34();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_159_0();
  v111 = OUTLINED_FUNCTION_114_13("emailFromDisplay");
  (v27)(v111, v283, v282);
  v112 = OUTLINED_FUNCTION_39_4();
  v115 = OUTLINED_FUNCTION_7_45(v112, v113, v114, v284);
  OUTLINED_FUNCTION_140_10(v115, v116, v117);
  v118 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v22);
  v121 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v39);
  OUTLINED_FUNCTION_116_14();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1();
  v124 = OUTLINED_FUNCTION_95_15(7 * v286);
  (v27)(v124, v283, v282);
  v125 = OUTLINED_FUNCTION_39_4();
  v128 = OUTLINED_FUNCTION_7_45(v125, v126, v127, v284);
  v131 = OUTLINED_FUNCTION_8_52(v128, v129, v130, v282);
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v22);
  v134 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v39);
  OUTLINED_FUNCTION_116_14();
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_82_14();
  v138 = OUTLINED_FUNCTION_95_15(v285 + 8 * v137);
  (v27)(v138, v283, v282);
  v139 = OUTLINED_FUNCTION_39_4();
  v142 = OUTLINED_FUNCTION_7_45(v139, v140, v141, v284);
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v32);
  v145 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v22);
  v148 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v148, v149, v150, v39);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_82_14();
  v152 = OUTLINED_FUNCTION_95_15(9 * v151);
  (v27)(v152, v283, v282);
  v153 = OUTLINED_FUNCTION_39_4();
  v156 = OUTLINED_FUNCTION_7_45(v153, v154, v155, v284);
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v32);
  OUTLINED_FUNCTION_24_40();
  v163 = OUTLINED_FUNCTION_8_52(v159, v160, v161, v162);
  __swift_storeEnumTagSinglePayload(v163, v164, v165, v39);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_133_11();
  (v27)(v0, v283, v282);
  v166 = OUTLINED_FUNCTION_39_4();
  v169 = OUTLINED_FUNCTION_7_45(v166, v167, v168, v284);
  OUTLINED_FUNCTION_140_10(v169, v170, v171);
  v172 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v172, v173, v174, v22);
  v175 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v39);
  OUTLINED_FUNCTION_123_14();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1();
  v178 = OUTLINED_FUNCTION_95_15(v285 + 11 * v286);
  (v27)(v178, v283, v282);
  v179 = OUTLINED_FUNCTION_39_4();
  v182 = OUTLINED_FUNCTION_7_45(v179, v180, v181, v284);
  __swift_storeEnumTagSinglePayload(v182, v183, v184, v27);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v185, v186, v187, v188);
  v189 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v189, v190, v191, v39);
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_91_1();
  v192 = OUTLINED_FUNCTION_95_15(v285 + 12 * v286);
  (v27)(v192, v283, v282);
  v193 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v193, v194, v195, v284);
  v196 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v196, v197, v198, v32);
  v199 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v199, v200, v201, v22);
  v202 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v202, v203, v204, v39);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_12_43();
  sub_19393BF20();
  v205 = OUTLINED_FUNCTION_114_13("spotlightUniqueIdentifier");
  (v27)(v205, v283, v282);
  v206 = OUTLINED_FUNCTION_20_1();
  v209 = OUTLINED_FUNCTION_8_52(v206, v207, v208, v284);
  __swift_storeEnumTagSinglePayload(v209, v210, v211, v32);
  v212 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v212, v213, v214, v22);
  v215 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v215, v216, v217, v39);
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_77_16();
  (v27)(v0, v283, v282);
  v218 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v218, v219, v220, v284);
  v221 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v221, v222, v223, v32);
  v224 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v224, v225, v226, v22);
  v227 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v227, v228, v229, v39);
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_67_13();
  (v27)(v0, v283, v282);
  v230 = OUTLINED_FUNCTION_39_4();
  v233 = OUTLINED_FUNCTION_7_45(v230, v231, v232, v284);
  v236 = OUTLINED_FUNCTION_8_52(v233, v234, v235, v32);
  __swift_storeEnumTagSinglePayload(v236, v237, v238, v22);
  v239 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v239, v240, v241, v39);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_52_18();
  v242 = OUTLINED_FUNCTION_114_13("origTrackingNumber");
  (v27)(v242, v283, v282);
  v243 = OUTLINED_FUNCTION_39_4();
  v246 = OUTLINED_FUNCTION_7_45(v243, v244, v245, v284);
  __swift_storeEnumTagSinglePayload(v246, v247, v248, v32);
  v249 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v249, v250, v251, v22);
  v252 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v252, v253, v254, v39);
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_67_13();
  (v27)(v0, v283, v282);
  v255 = OUTLINED_FUNCTION_39_4();
  v258 = OUTLINED_FUNCTION_7_45(v255, v256, v257, v284);
  __swift_storeEnumTagSinglePayload(v258, v259, v260, v32);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v261, v262, v263, v264);
  OUTLINED_FUNCTION_32_29();
  __swift_storeEnumTagSinglePayload(v265, v266, v267, v268);
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_51_2(16);
  OUTLINED_FUNCTION_67_13();
  (v27)(v0, v283, v282);
  v269 = OUTLINED_FUNCTION_39_4();
  v272 = OUTLINED_FUNCTION_7_45(v269, v270, v271, v284);
  __swift_storeEnumTagSinglePayload(v272, v273, v274, v32);
  v275 = OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v275, v276, v277, v22);
  v278 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v278, v279, v280, v39);
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_51_2(16);
  OUTLINED_FUNCTION_67_13();
  OUTLINED_FUNCTION_134_12();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderEmail.metadata.modify()
{
  if (qword_1ED511CA8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED511FE0);
  return OUTLINED_FUNCTION_64_0();
}

void sub_19375120C()
{
  OUTLINED_FUNCTION_117();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_42_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_43_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_14();
  sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_35_31();
  v21 = sub_19393BF10();
  __swift_allocate_value_buffer(v21, qword_1ED511FF8);
  __swift_project_value_buffer(v21, qword_1ED511FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v22 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v22);
  v86 = *(v23 + 72);
  OUTLINED_FUNCTION_54();
  v24 = OUTLINED_FUNCTION_108_14();
  OUTLINED_FUNCTION_126_10(v24, xmmword_19394FBC0);
  v25 = *MEMORY[0x1E698F1A0];
  v26 = OUTLINED_FUNCTION_125_7();
  (qword_1ED511FF8[0])(v26);
  v85 = sub_19393BF40();
  v27 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_63_0(v27, v28, v29, v30);
  v84 = sub_19393BEF0();
  v31 = OUTLINED_FUNCTION_20_1();
  v35 = OUTLINED_FUNCTION_8_52(v31, v32, v33, v34);
  OUTLINED_FUNCTION_63_0(v35, v36, v37, v21);
  v83 = sub_19393BEB0();
  v38 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  OUTLINED_FUNCTION_116_14();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  v42 = OUTLINED_FUNCTION_103_13();
  v43 = OUTLINED_FUNCTION_119_11(v42, *MEMORY[0x1E698F198]);
  (qword_1ED511FF8[0])(v43);
  v44 = OUTLINED_FUNCTION_19_6();
  v47 = OUTLINED_FUNCTION_7_45(v44, v45, v46, v85);
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v84);
  v50 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v21);
  v53 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v83);
  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_23_39();
  OUTLINED_FUNCTION_106_15();
  v56 = OUTLINED_FUNCTION_91_14();
  v17(v56);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v85);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v84);
  v63 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v21);
  v66 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v83);
  OUTLINED_FUNCTION_105_16();
  v69 = OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_56_19(v69);
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_82_14();
  v70 = OUTLINED_FUNCTION_129_11();
  v17(v70);
  v71 = OUTLINED_FUNCTION_15_7();
  v74 = OUTLINED_FUNCTION_7_45(v71, v72, v73, v85);
  v77 = OUTLINED_FUNCTION_8_52(v74, v75, v76, v84);
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v21);
  v80 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_113_11();
  OUTLINED_FUNCTION_76_15(20);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderExtractedView.metadata.modify()
{
  if (qword_1ED511CB0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED511FF8);
  return OUTLINED_FUNCTION_64_0();
}

void sub_1937516CC()
{
  OUTLINED_FUNCTION_117();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_70_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_53_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_53_7();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_42_0();
  v17 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v25 = v24 - v23;
  v26 = sub_19393BF10();
  __swift_allocate_value_buffer(v26, qword_1ED512010);
  v27 = __swift_project_value_buffer(v26, qword_1ED512010);
  OUTLINED_FUNCTION_138_9(v27, "walletOrderFields");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v28 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v28);
  v144 = *(v29 + 72);
  OUTLINED_FUNCTION_54();
  v30 = OUTLINED_FUNCTION_108_14();
  v141 = OUTLINED_FUNCTION_135_10(v30, xmmword_1939526B0) + v0;
  v143 = *(v19 + 104);
  (v143)(v25, *MEMORY[0x1E698F1A0], v17);
  v31 = sub_19393BF40();
  v32 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_63_0(v32, v33, v34, v31);
  v35 = sub_19393BEF0();
  v36 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  v39 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_63_0(v39, v40, v41, v26);
  v42 = sub_19393BEB0();
  v43 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_114_9();
  v142 = *MEMORY[0x1E698F198];
  v143(v25);
  v46 = OUTLINED_FUNCTION_39_4();
  v49 = OUTLINED_FUNCTION_7_45(v46, v47, v48, v31);
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v35);
  v52 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v26);
  v55 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v42);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_23_39();
  sub_19393BF20();
  v58 = OUTLINED_FUNCTION_118_13(&v141[2 * v144]);
  (v143)(v58, v142, v17);
  v59 = OUTLINED_FUNCTION_39_4();
  v62 = OUTLINED_FUNCTION_8_52(v59, v60, v61, v31);
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v35);
  OUTLINED_FUNCTION_24_40();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  v69 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v42);
  v72 = OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_56_19(v72);
  OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_82_14();
  v74 = OUTLINED_FUNCTION_118_13(3 * v73);
  (v143)(v74, v142, v17);
  v75 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v31);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v35);
  OUTLINED_FUNCTION_24_40();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  v85 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v42);
  OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_30_24();
  sub_19393BF20();
  OUTLINED_FUNCTION_100_16("orderTypeIdentifier");
  (v143)(v25, v142, v17);
  v88 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v31);
  OUTLINED_FUNCTION_17_5();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
  v95 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
  v99 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v42);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_30_24();
  sub_19393BF20();
  v102 = OUTLINED_FUNCTION_118_13(5 * v144);
  (v143)(v102, v142, v17);
  v103 = OUTLINED_FUNCTION_19_6();
  v106 = OUTLINED_FUNCTION_7_45(v103, v104, v105, v31);
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v35);
  v109 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_140_10(v109, v110, v111);
  v112 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v42);
  OUTLINED_FUNCTION_163_5();
  v115 = OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_117_15(v115 & 0xFFFF0000FFFFFFFFLL | 0x497200000000);
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_100_16("trackedOrderIdentifier");
  (v143)(v25, v142, v17);
  v116 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v31);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v35);
  v122 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v17);
  v125 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v42);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_114_9();
  (v143)(v25, v142, v17);
  v128 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v31);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
  v135 = OUTLINED_FUNCTION_28_0();
  v138 = OUTLINED_FUNCTION_8_52(v135, v136, v137, v17);
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v42);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_114_9();
  OUTLINED_FUNCTION_127_9();
  OUTLINED_FUNCTION_76_15(17);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderFields.metadata.modify()
{
  if (qword_1ED511CB8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED512010);
  return OUTLINED_FUNCTION_64_0();
}

void sub_193751ED4()
{
  OUTLINED_FUNCTION_117();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_53_1();
  v114 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v98 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_74();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_14();
  v22 = sub_19393BEC0();
  v110 = v22;
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_35_31();
  v28 = sub_19393BF10();
  v112 = v28;
  __swift_allocate_value_buffer(v28, qword_1ED512028);
  v29 = __swift_project_value_buffer(v28, qword_1ED512028);
  v106 = "63-874d-1009814b2acc";
  v107 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v30 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v30);
  v113 = *(v31 + 72);
  OUTLINED_FUNCTION_54();
  v32 = OUTLINED_FUNCTION_108_14();
  v105 = v32;
  *(v32 + 16) = xmmword_19394FBC0;
  v33 = v32 + v2;
  v34 = *MEMORY[0x1E698F1A0];
  v35 = *(v24 + 104);
  v111 = v24 + 104;
  v103 = v35;
  v35(v1, v34, v22);
  v36 = sub_19393BF40();
  v37 = OUTLINED_FUNCTION_28_0();
  v102 = v36;
  OUTLINED_FUNCTION_63_0(v37, v38, v39, v36);
  v109 = sub_19393BEF0();
  v40 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_63_0(v44, v45, v46, v112);
  v108 = sub_19393BEB0();
  v47 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  OUTLINED_FUNCTION_3_41();
  v104 = v33;
  OUTLINED_FUNCTION_42_8();
  v99 = v0;
  v100 = v1;
  OUTLINED_FUNCTION_91_1();
  v51 = v1;
  v52 = v110;
  v53 = v103;
  v103(v51, v34, v110);
  v54 = OUTLINED_FUNCTION_28_0();
  v57 = OUTLINED_FUNCTION_7_45(v54, v55, v56, v36);
  v58 = v109;
  __swift_storeEnumTagSinglePayload(v57, v59, v60, v109);
  v98[1] = v13;
  OUTLINED_FUNCTION_24_40();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v65 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v108);
  OUTLINED_FUNCTION_1_68();
  v68 = v113;
  OUTLINED_FUNCTION_23_39();
  v69 = v100;
  OUTLINED_FUNCTION_91_1();
  v101 = v33 + 2 * v68;
  v70 = *MEMORY[0x1E698F198];
  v53(v69, v70, v52);
  OUTLINED_FUNCTION_45();
  v71 = v102;
  v75 = OUTLINED_FUNCTION_7_45(v72, v73, v74, v102);
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v58);
  v78 = OUTLINED_FUNCTION_28_0();
  v79 = v112;
  __swift_storeEnumTagSinglePayload(v78, v80, v81, v112);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_99_14();
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_82_14();
  v53(v69, v70, v110);
  v86 = OUTLINED_FUNCTION_15_7();
  v89 = OUTLINED_FUNCTION_7_45(v86, v87, v88, v71);
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v109);
  v92 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v79);
  v95 = OUTLINED_FUNCTION_35_0();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v108);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_98_16();
  OUTLINED_FUNCTION_39_27();
  OUTLINED_FUNCTION_113_11();
  OUTLINED_FUNCTION_76_15(18);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderPayment.metadata.modify()
{
  if (qword_1ED511CC0 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED512028);
  return OUTLINED_FUNCTION_64_0();
}

void sub_1937523F8()
{
  OUTLINED_FUNCTION_117();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_70_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_53_7();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_42_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_112_14();
  v172 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_1();
  v24 = v23 - v22;
  v25 = sub_19393BF10();
  __swift_allocate_value_buffer(v25, qword_1ED512040);
  __swift_project_value_buffer(v25, qword_1ED512040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v26 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v26);
  v171 = *(v27 + 72);
  OUTLINED_FUNCTION_54();
  *(OUTLINED_FUNCTION_108_14() + 16) = xmmword_1939526F0;
  v28 = *(v18 + 104);
  (v28)(v24, *MEMORY[0x1E698F1A0], v172);
  v169 = sub_19393BF40();
  v29 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_63_0(v29, v30, v31, v32);
  sub_19393BEF0();
  v33 = OUTLINED_FUNCTION_15_7();
  v35 = v34;
  v170 = v34;
  __swift_storeEnumTagSinglePayload(v33, v36, v37, v34);
  v38 = OUTLINED_FUNCTION_28_0();
  v39 = v25;
  v167 = v25;
  OUTLINED_FUNCTION_63_0(v38, v40, v41, v25);
  v42 = sub_19393BEB0();
  v43 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_97_0();
  v168 = *MEMORY[0x1E698F198];
  v28(v24);
  v46 = OUTLINED_FUNCTION_39_4();
  v49 = OUTLINED_FUNCTION_8_52(v46, v47, v48, v169);
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v35);
  v52 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v39);
  v55 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v42);
  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_97_0();
  (v28)(v24, v168, v172);
  OUTLINED_FUNCTION_32_29();
  v62 = OUTLINED_FUNCTION_8_52(v58, v59, v60, v61);
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v170);
  v65 = OUTLINED_FUNCTION_38_4();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v167);
  v68 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v42);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_77_16();
  (v28)(v24, v168, v172);
  v71 = OUTLINED_FUNCTION_20_1();
  v74 = OUTLINED_FUNCTION_8_52(v71, v72, v73, v169);
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v170);
  v77 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v167);
  v80 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v42);
  OUTLINED_FUNCTION_94_15();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_77_16();
  (v28)(v24, v168, v172);
  v83 = OUTLINED_FUNCTION_20_1();
  v86 = OUTLINED_FUNCTION_8_52(v83, v84, v85, v169);
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v170);
  v89 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v167);
  v92 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v42);
  OUTLINED_FUNCTION_94_15();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_77_16();
  (v28)(v24, v168, v172);
  v95 = OUTLINED_FUNCTION_20_1();
  v98 = OUTLINED_FUNCTION_8_52(v95, v96, v97, v169);
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v170);
  v101 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v167);
  v104 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v42);
  OUTLINED_FUNCTION_163_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_77_16();
  OUTLINED_FUNCTION_159_0();
  (v28)(v24, v168, v172);
  v107 = OUTLINED_FUNCTION_20_1();
  v110 = OUTLINED_FUNCTION_8_52(v107, v108, v109, v169);
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v170);
  v113 = OUTLINED_FUNCTION_42_3();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v167);
  v116 = OUTLINED_FUNCTION_25_9();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v42);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_77_16();
  (v28)(v24, v168, v172);
  v119 = OUTLINED_FUNCTION_20_1();
  v122 = OUTLINED_FUNCTION_8_52(v119, v120, v121, v169);
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v170);
  v125 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v167);
  v128 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v42);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_77_16();
  (v28)(v24, HIDWORD(v0), v172);
  v131 = OUTLINED_FUNCTION_20_1();
  v134 = OUTLINED_FUNCTION_8_52(v131, v132, v133, v169);
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v170);
  v137 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v167);
  v140 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v42);
  OUTLINED_FUNCTION_94_15();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_97_0();
  (v28)(v24, HIDWORD(v0), v172);
  v143 = OUTLINED_FUNCTION_16();
  v146 = OUTLINED_FUNCTION_8_52(v143, v144, v145, v169);
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v170);
  v149 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v167);
  v152 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v42);
  OUTLINED_FUNCTION_94_15();
  OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_133_11();
  (v28)(v24, HIDWORD(v0), v172);
  v155 = OUTLINED_FUNCTION_16();
  v158 = OUTLINED_FUNCTION_8_52(v155, v156, v157, v169);
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v170);
  v161 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v167);
  v164 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v164, v165, v166, v42);
  OUTLINED_FUNCTION_94_15();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_76_15(17);
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}

uint64_t static Library.Databases.WalletPaymentsCommerce.Internal.WalletOrderPerson.metadata.modify()
{
  if (qword_1ED511CC8 != -1)
  {
    swift_once();
  }

  v0 = sub_19393BF10();
  OUTLINED_FUNCTION_29_6(v0, qword_1ED512040);
  return OUTLINED_FUNCTION_64_0();
}

void sub_193752D8C()
{
  OUTLINED_FUNCTION_117();
  v332 = v2;
  v333 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53_1();
  v327 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_43_0();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_74();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v310 - v23;
  v25 = sub_19393BEC0();
  OUTLINED_FUNCTION_1_0();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_35_31();
  v31 = sub_19393BF10();
  __swift_allocate_value_buffer(v31, qword_1ED512058);
  v318 = v31;
  v32 = __swift_project_value_buffer(v31, qword_1ED512058);
  OUTLINED_FUNCTION_138_9(v32, "walletOrderShipmentFullFillmentInfo");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v33 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_30(v33);
  v326 = *(v34 + 72);
  OUTLINED_FUNCTION_54();
  v313 = 16 * v35;
  v36 = OUTLINED_FUNCTION_108_14();
  v37 = OUTLINED_FUNCTION_135_10(v36, xmmword_193952750) + v1;
  v38 = *MEMORY[0x1E698F1A0];
  v39 = *(v27 + 104);
  v322 = v27 + 104;
  v323 = v39;
  v40 = v0;
  v317 = v25;
  (v39)(v0, v38, v25);
  v41 = sub_19393BF40();
  v42 = v24;
  OUTLINED_FUNCTION_5_28();
  v316 = v41;
  OUTLINED_FUNCTION_63_0(v43, v44, v45, v46);
  v47 = sub_19393BEF0();
  v48 = OUTLINED_FUNCTION_20_1();
  v319 = v47;
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
  v315 = v14;
  v51 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_63_0(v51, v52, v53, v31);
  v54 = sub_19393BEB0();
  v55 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v54);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_67_13();
  v324 = *MEMORY[0x1E698F198];
  v58 = v323;
  v323(v40);
  v59 = v42;
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  OUTLINED_FUNCTION_24_40();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  v68 = v315;
  v69 = OUTLINED_FUNCTION_20_1();
  v70 = v318;
  __swift_storeEnumTagSinglePayload(v69, v71, v72, v318);
  v73 = v327;
  v74 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v54);
  v311 = v68;
  v312 = v73;
  v77 = v68;
  OUTLINED_FUNCTION_1_68();
  v325 = v37;
  OUTLINED_FUNCTION_23_39();
  v321 = v40;
  v314 = v59;
  OUTLINED_FUNCTION_117_11();
  v78 = v317;
  v58(v40, v324, v317);
  v79 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v316);
  v82 = OUTLINED_FUNCTION_15_7();
  v83 = v319;
  __swift_storeEnumTagSinglePayload(v82, v84, v85, v319);
  v86 = v77;
  v87 = OUTLINED_FUNCTION_39_4();
  v88 = v70;
  __swift_storeEnumTagSinglePayload(v87, v89, v90, v70);
  v91 = v327;
  v92 = OUTLINED_FUNCTION_39_4();
  v320 = v54;
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v54);
  v311 = v86;
  v312 = v91;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_130_11();
  OUTLINED_FUNCTION_52_7();
  v95 = v321;
  OUTLINED_FUNCTION_117_11();
  v96 = v326;
  v97 = v95;
  v98 = v323;
  (v323)(v97, v324, v78);
  OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v83);
  v106 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v88);
  v109 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v54);
  OUTLINED_FUNCTION_163_5();
  OUTLINED_FUNCTION_14_3();
  v112 = v325;
  OUTLINED_FUNCTION_52_7();
  sub_19393BF20();
  v113 = OUTLINED_FUNCTION_118_13(&v112[4 * v96]);
  v114 = v324;
  v115 = v317;
  v98(v113, v324, v317);
  OUTLINED_FUNCTION_45();
  v116 = v316;
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v316);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v319);
  v123 = OUTLINED_FUNCTION_39_4();
  v124 = v318;
  __swift_storeEnumTagSinglePayload(v123, v125, v126, v318);
  v127 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v320);
  OUTLINED_FUNCTION_105_16();
  v130 = OUTLINED_FUNCTION_14_50();
  OUTLINED_FUNCTION_117_15(v130 & 0xFFFF0000FFFFFFFFLL | 0x496C00000000);
  OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_92_0();
  v131 = OUTLINED_FUNCTION_118_13(5 * v326);
  v98(v131, v114, v115);
  v132 = OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v116);
  OUTLINED_FUNCTION_45();
  v135 = v319;
  __swift_storeEnumTagSinglePayload(v136, v137, v138, v319);
  v139 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v124);
  v142 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v320);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52_7();
  v145 = v321;
  OUTLINED_FUNCTION_71_20();
  OUTLINED_FUNCTION_159_0();
  v146 = v324;
  v147 = v115;
  v148 = v115;
  v149 = v323;
  (v323)(v145, v324, v147);
  v150 = OUTLINED_FUNCTION_15_7();
  v151 = v316;
  v154 = OUTLINED_FUNCTION_7_45(v150, v152, v153, v316);
  v155 = v135;
  __swift_storeEnumTagSinglePayload(v154, v156, v157, v135);
  v158 = v315;
  v159 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v124);
  v162 = v327;
  OUTLINED_FUNCTION_31_34();
  __swift_storeEnumTagSinglePayload(v163, v164, v165, v166);
  v316 = v158;
  v317 = v162;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_128_11();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52_7();
  v167 = v321;
  sub_19393BF20();
  v149(v167, v146, v148);
  v168 = OUTLINED_FUNCTION_15_7();
  v169 = v151;
  __swift_storeEnumTagSinglePayload(v168, v170, v171, v151);
  v172 = OUTLINED_FUNCTION_25_9();
  v175 = OUTLINED_FUNCTION_8_52(v172, v173, v174, v155);
  v176 = v318;
  __swift_storeEnumTagSinglePayload(v175, v177, v178, v318);
  v179 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v179, v180, v181, v320);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_110_8();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52_7();
  v182 = v321;
  sub_19393BF20();
  OUTLINED_FUNCTION_100_16("estimatedDeliveryStartDate");
  v183 = v317;
  v184 = v323;
  (v323)(v182, v146, v317);
  v185 = OUTLINED_FUNCTION_19_6();
  v188 = OUTLINED_FUNCTION_7_45(v185, v186, v187, v169);
  v189 = v319;
  __swift_storeEnumTagSinglePayload(v188, v190, v191, v319);
  v192 = v315;
  v193 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v193, v194, v195, v176);
  v196 = OUTLINED_FUNCTION_39_4();
  v197 = v320;
  __swift_storeEnumTagSinglePayload(v196, v198, v199, v320);
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_67_13();
  OUTLINED_FUNCTION_100_16("estimatedDeliveryStartTime");
  v200 = v324;
  v184(v182, v324, v183);
  v201 = OUTLINED_FUNCTION_39_4();
  v204 = OUTLINED_FUNCTION_7_45(v201, v202, v203, v316);
  v207 = OUTLINED_FUNCTION_8_52(v204, v205, v206, v189);
  v208 = v318;
  __swift_storeEnumTagSinglePayload(v207, v209, v210, v318);
  v211 = OUTLINED_FUNCTION_19_46();
  __swift_storeEnumTagSinglePayload(v211, v212, v213, v197);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_68_20();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_67_13();
  OUTLINED_FUNCTION_133_11();
  OUTLINED_FUNCTION_100_16("estimatedDeliveryEndDate");
  v214 = v200;
  v215 = v317;
  (v323)(v182, v214, v317);
  OUTLINED_FUNCTION_31_34();
  v220 = OUTLINED_FUNCTION_7_45(v216, v217, v218, v219);
  __swift_storeEnumTagSinglePayload(v220, v221, v222, v319);
  v223 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v223, v224, v225, v208);
  v226 = OUTLINED_FUNCTION_19_46();
  v227 = v320;
  __swift_storeEnumTagSinglePayload(v226, v228, v229, v320);
  OUTLINED_FUNCTION_163_5();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_51_2(24);
  v230 = v321;
  OUTLINED_FUNCTION_91_1();
  v231 = v324;
  v232 = v323;
  (v323)(v230, v324, v215);
  OUTLINED_FUNCTION_45();
  v233 = v316;
  __swift_storeEnumTagSinglePayload(v234, v235, v236, v316);
  OUTLINED_FUNCTION_31_34();
  __swift_storeEnumTagSinglePayload(v237, v238, v239, v240);
  v241 = OUTLINED_FUNCTION_28_0();
  v242 = v318;
  __swift_storeEnumTagSinglePayload(v241, v243, v244, v318);
  v245 = v327;
  v246 = OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v246, v247, v248, v227);
  v328 = v192;
  v329 = v245;
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_51_2(24);
  v249 = v321;
  OUTLINED_FUNCTION_92_0();
  v232(v249, v231, v317);
  v250 = OUTLINED_FUNCTION_39_4();
  v251 = v233;
  __swift_storeEnumTagSinglePayload(v250, v252, v253, v233);
  v254 = OUTLINED_FUNCTION_25_9();
  v255 = v319;
  v258 = OUTLINED_FUNCTION_8_52(v254, v256, v257, v319);
  __swift_storeEnumTagSinglePayload(v258, v259, v260, v242);
  v261 = OUTLINED_FUNCTION_19_46();
  v262 = v320;
  __swift_storeEnumTagSinglePayload(v261, v263, v264, v320);
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_110_8();
  OUTLINED_FUNCTION_52_7();
  sub_19393BF20();
  v265 = v249;
  v266 = v324;
  v267 = v317;
  v268 = v323;
  (v323)(v265, v324, v317);
  v269 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v269, v270, v271, v251);
  v272 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v272, v273, v274, v255);
  v275 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v275, v276, v277, v318);
  v278 = OUTLINED_FUNCTION_19_6();
  __swift_storeEnumTagSinglePayload(v278, v279, v280, v262);
  OUTLINED_FUNCTION_123_14();
  v331 = 1;
  v330 = 0;
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_52_7();
  v281 = v321;
  OUTLINED_FUNCTION_107_10();
  v268(v281, v266, v267);
  v282 = OUTLINED_FUNCTION_28_0();
  v283 = v316;
  __swift_storeEnumTagSinglePayload(v282, v284, v285, v316);
  v286 = OUTLINED_FUNCTION_39_4();
  v287 = v319;
  __swift_storeEnumTagSinglePayload(v286, v288, v289, v319);
  OUTLINED_FUNCTION_27_6();
  v294 = OUTLINED_FUNCTION_8_52(v290, v291, v292, v293);
  v295 = v320;
  __swift_storeEnumTagSinglePayload(v294, v296, v297, v320);
  OUTLINED_FUNCTION_123_14();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_107_10();
  (v323)(v281, v324, v317);
  v298 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v298, v299, v300, v283);
  v301 = OUTLINED_FUNCTION_39_4();
  __swift_storeEnumTagSinglePayload(v301, v302, v303, v287);
  v304 = OUTLINED_FUNCTION_35_0();
  v307 = OUTLINED_FUNCTION_8_52(v304, v305, v306, v318);
  __swift_storeEnumTagSinglePayload(v307, v308, v309, v295);
  OUTLINED_FUNCTION_123_14();
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_107_10();
  OUTLINED_FUNCTION_127_9();
  OUTLINED_FUNCTION_61_1();
  sub_19393BEA0();
  OUTLINED_FUNCTION_116();
}