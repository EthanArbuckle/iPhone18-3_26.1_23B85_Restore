uint64_t _s8EnumCaseOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10CodingKeysOwet_2(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 37;
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

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst_2(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s8EnumCaseOwet_4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8EnumCaseOwst_3(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s10CodingKeysOwet_10(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst_10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10CodingKeysOwet_13(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst_13(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10CodingKeysOwet_14(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst_14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21432AF78(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21432B008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicPoster.DynamicPosterType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicPoster.DynamicPosterType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10CodingKeysOwet_16(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst_16(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21432C008(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21432C098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SIPConferenceInfo.Endpoint.Status(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SIPConferenceInfo.Endpoint.Status(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s10CodingKeysOwet_17(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst_17(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CPIMMessage.EncapsulatedMessage.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CPIMMessage.EncapsulatedMessage.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextEffectAttribute.TextEffectType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextEffectAttribute.TextEffectType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10CodingKeysOwet_18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x65)
  {
    goto LABEL_17;
  }

  if (a2 + 155 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 155) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 155;
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

      return (*a1 | (v4 << 8)) - 155;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 155;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x9C;
  v8 = v6 - 156;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst_18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 155 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 155) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x65)
  {
    v4 = 0;
  }

  if (a2 > 0x64)
  {
    v5 = ((a2 - 101) >> 8) + 1;
    *result = a2 - 101;
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
    *result = a2 - 101;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21432CA0C()
{
  result = qword_27C90DD00;
  if (!qword_27C90DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD00);
  }

  return result;
}

unint64_t sub_21432CA64()
{
  result = qword_27C90DD08;
  if (!qword_27C90DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD08);
  }

  return result;
}

unint64_t sub_21432CABC()
{
  result = qword_27C90DD10;
  if (!qword_27C90DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD10);
  }

  return result;
}

unint64_t sub_21432CB14()
{
  result = qword_27C90DD18;
  if (!qword_27C90DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD18);
  }

  return result;
}

unint64_t sub_21432CB6C()
{
  result = qword_27C90DD20;
  if (!qword_27C90DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD20);
  }

  return result;
}

unint64_t sub_21432CBC4()
{
  result = qword_27C90DD28;
  if (!qword_27C90DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD28);
  }

  return result;
}

unint64_t sub_21432CC1C()
{
  result = qword_27C90DD30;
  if (!qword_27C90DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD30);
  }

  return result;
}

unint64_t sub_21432CC74()
{
  result = qword_27C90DD38;
  if (!qword_27C90DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD38);
  }

  return result;
}

unint64_t sub_21432CCCC()
{
  result = qword_27C90DD40;
  if (!qword_27C90DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD40);
  }

  return result;
}

unint64_t sub_21432CD24()
{
  result = qword_27C90DD48;
  if (!qword_27C90DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD48);
  }

  return result;
}

unint64_t sub_21432CD7C()
{
  result = qword_27C90DD50;
  if (!qword_27C90DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD50);
  }

  return result;
}

unint64_t sub_21432CDD4()
{
  result = qword_27C90DD58;
  if (!qword_27C90DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD58);
  }

  return result;
}

unint64_t sub_21432CE2C()
{
  result = qword_27C90DD60;
  if (!qword_27C90DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD60);
  }

  return result;
}

unint64_t sub_21432CE84()
{
  result = qword_27C90DD68;
  if (!qword_27C90DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD68);
  }

  return result;
}

unint64_t sub_21432CEDC()
{
  result = qword_27C90DD70;
  if (!qword_27C90DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD70);
  }

  return result;
}

unint64_t sub_21432CF34()
{
  result = qword_27C90DD78;
  if (!qword_27C90DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD78);
  }

  return result;
}

unint64_t sub_21432CF8C()
{
  result = qword_27C90DD80;
  if (!qword_27C90DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD80);
  }

  return result;
}

unint64_t sub_21432CFE4()
{
  result = qword_27C90DD88;
  if (!qword_27C90DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD88);
  }

  return result;
}

unint64_t sub_21432D03C()
{
  result = qword_27C90DD90;
  if (!qword_27C90DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD90);
  }

  return result;
}

unint64_t sub_21432D094()
{
  result = qword_27C90DD98;
  if (!qword_27C90DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DD98);
  }

  return result;
}

unint64_t sub_21432D0EC()
{
  result = qword_27C90DDA0;
  if (!qword_27C90DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DDA0);
  }

  return result;
}

unint64_t sub_21432D144()
{
  result = qword_27C90DDA8;
  if (!qword_27C90DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DDA8);
  }

  return result;
}

unint64_t sub_21432D19C()
{
  result = qword_27C90DDB0;
  if (!qword_27C90DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DDB0);
  }

  return result;
}

unint64_t sub_21432D1F4()
{
  result = qword_27C90DDB8;
  if (!qword_27C90DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DDB8);
  }

  return result;
}

unint64_t sub_21432D24C()
{
  result = qword_27C90DDC0;
  if (!qword_27C90DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DDC0);
  }

  return result;
}

unint64_t sub_21432D2A4()
{
  result = qword_27C90DDC8;
  if (!qword_27C90DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DDC8);
  }

  return result;
}

unint64_t sub_21432D2FC()
{
  result = qword_27C90DDD0;
  if (!qword_27C90DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DDD0);
  }

  return result;
}

unint64_t sub_21432D354()
{
  result = qword_27C90DDD8;
  if (!qword_27C90DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DDD8);
  }

  return result;
}

unint64_t sub_21432D3AC()
{
  result = qword_27C90DDE0;
  if (!qword_27C90DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DDE0);
  }

  return result;
}

unint64_t sub_21432D404()
{
  result = qword_27C90DDE8;
  if (!qword_27C90DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DDE8);
  }

  return result;
}

unint64_t sub_21432D45C()
{
  result = qword_27C90DDF0;
  if (!qword_27C90DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DDF0);
  }

  return result;
}

unint64_t sub_21432D4B4()
{
  result = qword_27C90DDF8;
  if (!qword_27C90DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DDF8);
  }

  return result;
}

unint64_t sub_21432D50C()
{
  result = qword_27C90DE00;
  if (!qword_27C90DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE00);
  }

  return result;
}

unint64_t sub_21432D564()
{
  result = qword_27C90DE08;
  if (!qword_27C90DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE08);
  }

  return result;
}

unint64_t sub_21432D5BC()
{
  result = qword_27C90DE10;
  if (!qword_27C90DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE10);
  }

  return result;
}

unint64_t sub_21432D614()
{
  result = qword_27C90DE18;
  if (!qword_27C90DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE18);
  }

  return result;
}

unint64_t sub_21432D66C()
{
  result = qword_27C90DE20;
  if (!qword_27C90DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE20);
  }

  return result;
}

unint64_t sub_21432D6C4()
{
  result = qword_27C90DE28;
  if (!qword_27C90DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE28);
  }

  return result;
}

unint64_t sub_21432D71C()
{
  result = qword_27C90DE30;
  if (!qword_27C90DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE30);
  }

  return result;
}

unint64_t sub_21432D774()
{
  result = qword_27C90DE38;
  if (!qword_27C90DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE38);
  }

  return result;
}

unint64_t sub_21432D7CC()
{
  result = qword_27C90DE40;
  if (!qword_27C90DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE40);
  }

  return result;
}

unint64_t sub_21432D824()
{
  result = qword_27C90DE48;
  if (!qword_27C90DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE48);
  }

  return result;
}

unint64_t sub_21432D87C()
{
  result = qword_27C90DE50;
  if (!qword_27C90DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE50);
  }

  return result;
}

unint64_t sub_21432D8D4()
{
  result = qword_27C90DE58;
  if (!qword_27C90DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE58);
  }

  return result;
}

unint64_t sub_21432D92C()
{
  result = qword_27C90DE60;
  if (!qword_27C90DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE60);
  }

  return result;
}

unint64_t sub_21432D984()
{
  result = qword_27C90DE68;
  if (!qword_27C90DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE68);
  }

  return result;
}

unint64_t sub_21432D9DC()
{
  result = qword_27C90DE70;
  if (!qword_27C90DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE70);
  }

  return result;
}

unint64_t sub_21432DA34()
{
  result = qword_27C90DE78;
  if (!qword_27C90DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE78);
  }

  return result;
}

unint64_t sub_21432DA8C()
{
  result = qword_27C90DE80;
  if (!qword_27C90DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE80);
  }

  return result;
}

unint64_t sub_21432DAE4()
{
  result = qword_27C90DE88;
  if (!qword_27C90DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE88);
  }

  return result;
}

unint64_t sub_21432DB3C()
{
  result = qword_27C90DE90;
  if (!qword_27C90DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE90);
  }

  return result;
}

unint64_t sub_21432DB94()
{
  result = qword_27C90DE98;
  if (!qword_27C90DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DE98);
  }

  return result;
}

unint64_t sub_21432DBEC()
{
  result = qword_27C90DEA0;
  if (!qword_27C90DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DEA0);
  }

  return result;
}

unint64_t sub_21432DC44()
{
  result = qword_27C90DEA8;
  if (!qword_27C90DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DEA8);
  }

  return result;
}

unint64_t sub_21432DC9C()
{
  result = qword_27C90DEB0;
  if (!qword_27C90DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DEB0);
  }

  return result;
}

unint64_t sub_21432DCF4()
{
  result = qword_27C90DEB8;
  if (!qword_27C90DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DEB8);
  }

  return result;
}

unint64_t sub_21432DD4C()
{
  result = qword_27C90DEC0;
  if (!qword_27C90DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DEC0);
  }

  return result;
}

unint64_t sub_21432DDA4()
{
  result = qword_27C90DEC8;
  if (!qword_27C90DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DEC8);
  }

  return result;
}

unint64_t sub_21432DDFC()
{
  result = qword_27C90DED0;
  if (!qword_27C90DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DED0);
  }

  return result;
}

unint64_t sub_21432DE54()
{
  result = qword_27C90DED8;
  if (!qword_27C90DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DED8);
  }

  return result;
}

unint64_t sub_21432DEAC()
{
  result = qword_27C90DEE0;
  if (!qword_27C90DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DEE0);
  }

  return result;
}

unint64_t sub_21432DF04()
{
  result = qword_27C90DEE8;
  if (!qword_27C90DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DEE8);
  }

  return result;
}

unint64_t sub_21432DF5C()
{
  result = qword_27C90DEF0;
  if (!qword_27C90DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DEF0);
  }

  return result;
}

unint64_t sub_21432DFB4()
{
  result = qword_27C90DEF8;
  if (!qword_27C90DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DEF8);
  }

  return result;
}

unint64_t sub_21432E00C()
{
  result = qword_27C90DF00;
  if (!qword_27C90DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF00);
  }

  return result;
}

unint64_t sub_21432E064()
{
  result = qword_27C90DF08;
  if (!qword_27C90DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF08);
  }

  return result;
}

unint64_t sub_21432E0BC()
{
  result = qword_27C90DF10;
  if (!qword_27C90DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF10);
  }

  return result;
}

unint64_t sub_21432E114()
{
  result = qword_27C90DF18;
  if (!qword_27C90DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF18);
  }

  return result;
}

unint64_t sub_21432E16C()
{
  result = qword_27C90DF20;
  if (!qword_27C90DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF20);
  }

  return result;
}

unint64_t sub_21432E1C4()
{
  result = qword_27C90DF28;
  if (!qword_27C90DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF28);
  }

  return result;
}

unint64_t sub_21432E21C()
{
  result = qword_27C90DF30;
  if (!qword_27C90DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF30);
  }

  return result;
}

unint64_t sub_21432E274()
{
  result = qword_27C90DF38;
  if (!qword_27C90DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF38);
  }

  return result;
}

unint64_t sub_21432E2CC()
{
  result = qword_27C90DF40;
  if (!qword_27C90DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF40);
  }

  return result;
}

unint64_t sub_21432E324()
{
  result = qword_27C90DF48;
  if (!qword_27C90DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF48);
  }

  return result;
}

unint64_t sub_21432E37C()
{
  result = qword_27C90DF50;
  if (!qword_27C90DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF50);
  }

  return result;
}

unint64_t sub_21432E3D4()
{
  result = qword_27C90DF58;
  if (!qword_27C90DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF58);
  }

  return result;
}

unint64_t sub_21432E42C()
{
  result = qword_27C90DF60;
  if (!qword_27C90DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF60);
  }

  return result;
}

unint64_t sub_21432E484()
{
  result = qword_27C90DF68;
  if (!qword_27C90DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF68);
  }

  return result;
}

unint64_t sub_21432E4DC()
{
  result = qword_27C90DF70;
  if (!qword_27C90DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF70);
  }

  return result;
}

unint64_t sub_21432E534()
{
  result = qword_27C90DF78;
  if (!qword_27C90DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF78);
  }

  return result;
}

unint64_t sub_21432E58C()
{
  result = qword_27C90DF80;
  if (!qword_27C90DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF80);
  }

  return result;
}

unint64_t sub_21432E5E4()
{
  result = qword_27C90DF88;
  if (!qword_27C90DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF88);
  }

  return result;
}

unint64_t sub_21432E63C()
{
  result = qword_27C90DF90;
  if (!qword_27C90DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF90);
  }

  return result;
}

unint64_t sub_21432E694()
{
  result = qword_27C90DF98;
  if (!qword_27C90DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DF98);
  }

  return result;
}

unint64_t sub_21432E6EC()
{
  result = qword_27C90DFA0;
  if (!qword_27C90DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DFA0);
  }

  return result;
}

unint64_t sub_21432E744()
{
  result = qword_27C90DFA8;
  if (!qword_27C90DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DFA8);
  }

  return result;
}

unint64_t sub_21432E79C()
{
  result = qword_27C90DFB0;
  if (!qword_27C90DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DFB0);
  }

  return result;
}

unint64_t sub_21432E7F4()
{
  result = qword_27C90DFB8;
  if (!qword_27C90DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DFB8);
  }

  return result;
}

unint64_t sub_21432E84C()
{
  result = qword_27C90DFC0;
  if (!qword_27C90DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DFC0);
  }

  return result;
}

unint64_t sub_21432E8A4()
{
  result = qword_27C90DFC8;
  if (!qword_27C90DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DFC8);
  }

  return result;
}

unint64_t sub_21432E8FC()
{
  result = qword_27C90DFD0;
  if (!qword_27C90DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DFD0);
  }

  return result;
}

unint64_t sub_21432E954()
{
  result = qword_27C90DFD8;
  if (!qword_27C90DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DFD8);
  }

  return result;
}

unint64_t sub_21432E9AC()
{
  result = qword_27C90DFE0;
  if (!qword_27C90DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DFE0);
  }

  return result;
}

unint64_t sub_21432EA04()
{
  result = qword_27C90DFE8;
  if (!qword_27C90DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DFE8);
  }

  return result;
}

unint64_t sub_21432EA5C()
{
  result = qword_27C90DFF0;
  if (!qword_27C90DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DFF0);
  }

  return result;
}

unint64_t sub_21432EAB4()
{
  result = qword_27C90DFF8;
  if (!qword_27C90DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90DFF8);
  }

  return result;
}

unint64_t sub_21432EB0C()
{
  result = qword_27C90E000;
  if (!qword_27C90E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E000);
  }

  return result;
}

unint64_t sub_21432EB64()
{
  result = qword_27C90E008;
  if (!qword_27C90E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E008);
  }

  return result;
}

unint64_t sub_21432EBBC()
{
  result = qword_27C90E010;
  if (!qword_27C90E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E010);
  }

  return result;
}

unint64_t sub_21432EC14()
{
  result = qword_27C90E018;
  if (!qword_27C90E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E018);
  }

  return result;
}

unint64_t sub_21432EC6C()
{
  result = qword_27C90E020;
  if (!qword_27C90E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E020);
  }

  return result;
}

unint64_t sub_21432ECC4()
{
  result = qword_27C90E028;
  if (!qword_27C90E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E028);
  }

  return result;
}

unint64_t sub_21432ED1C()
{
  result = qword_27C90E030;
  if (!qword_27C90E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E030);
  }

  return result;
}

unint64_t sub_21432ED74()
{
  result = qword_27C90E038;
  if (!qword_27C90E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E038);
  }

  return result;
}

unint64_t sub_21432EDCC()
{
  result = qword_27C90E040;
  if (!qword_27C90E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E040);
  }

  return result;
}

unint64_t sub_21432EE24()
{
  result = qword_27C90E048;
  if (!qword_27C90E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E048);
  }

  return result;
}

unint64_t sub_21432EE7C()
{
  result = qword_27C90E050;
  if (!qword_27C90E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E050);
  }

  return result;
}

unint64_t sub_21432EED4()
{
  result = qword_27C90E058;
  if (!qword_27C90E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E058);
  }

  return result;
}

unint64_t sub_21432EF2C()
{
  result = qword_27C90E060;
  if (!qword_27C90E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E060);
  }

  return result;
}

unint64_t sub_21432EF84()
{
  result = qword_27C90E068;
  if (!qword_27C90E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E068);
  }

  return result;
}

unint64_t sub_21432EFDC()
{
  result = qword_27C90E070;
  if (!qword_27C90E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E070);
  }

  return result;
}

unint64_t sub_21432F034()
{
  result = qword_27C90E078;
  if (!qword_27C90E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E078);
  }

  return result;
}

unint64_t sub_21432F08C()
{
  result = qword_27C90E080;
  if (!qword_27C90E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E080);
  }

  return result;
}

unint64_t sub_21432F0E4()
{
  result = qword_27C90E088;
  if (!qword_27C90E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E088);
  }

  return result;
}

unint64_t sub_21432F13C()
{
  result = qword_27C90E090;
  if (!qword_27C90E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E090);
  }

  return result;
}

unint64_t sub_21432F194()
{
  result = qword_27C90E098;
  if (!qword_27C90E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E098);
  }

  return result;
}

unint64_t sub_21432F1EC()
{
  result = qword_27C90E0A0;
  if (!qword_27C90E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E0A0);
  }

  return result;
}

unint64_t sub_21432F244()
{
  result = qword_27C90E0A8;
  if (!qword_27C90E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E0A8);
  }

  return result;
}

unint64_t sub_21432F29C()
{
  result = qword_27C90E0B0;
  if (!qword_27C90E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E0B0);
  }

  return result;
}

unint64_t sub_21432F2F4()
{
  result = qword_27C90E0B8;
  if (!qword_27C90E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E0B8);
  }

  return result;
}

unint64_t sub_21432F34C()
{
  result = qword_27C90E0C0;
  if (!qword_27C90E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E0C0);
  }

  return result;
}

unint64_t sub_21432F3A4()
{
  result = qword_27C90E0C8;
  if (!qword_27C90E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E0C8);
  }

  return result;
}

unint64_t sub_21432F3FC()
{
  result = qword_27C90E0D0;
  if (!qword_27C90E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E0D0);
  }

  return result;
}

unint64_t sub_21432F454()
{
  result = qword_27C90E0D8;
  if (!qword_27C90E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E0D8);
  }

  return result;
}

unint64_t sub_21432F4AC()
{
  result = qword_27C90E0E0;
  if (!qword_27C90E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E0E0);
  }

  return result;
}

unint64_t sub_21432F504()
{
  result = qword_27C90E0E8;
  if (!qword_27C90E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E0E8);
  }

  return result;
}

unint64_t sub_21432F55C()
{
  result = qword_27C90E0F0;
  if (!qword_27C90E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E0F0);
  }

  return result;
}

unint64_t sub_21432F5B4()
{
  result = qword_27C90E0F8;
  if (!qword_27C90E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E0F8);
  }

  return result;
}

unint64_t sub_21432F60C()
{
  result = qword_27C90E100;
  if (!qword_27C90E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E100);
  }

  return result;
}

unint64_t sub_21432F664()
{
  result = qword_27C90E108;
  if (!qword_27C90E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E108);
  }

  return result;
}

unint64_t sub_21432F6BC()
{
  result = qword_27C90E110;
  if (!qword_27C90E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E110);
  }

  return result;
}

unint64_t sub_21432F714()
{
  result = qword_27C90E118;
  if (!qword_27C90E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E118);
  }

  return result;
}

unint64_t sub_21432F76C()
{
  result = qword_27C90E120;
  if (!qword_27C90E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E120);
  }

  return result;
}

unint64_t sub_21432F7C4()
{
  result = qword_27C90E128;
  if (!qword_27C90E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E128);
  }

  return result;
}

unint64_t sub_21432F81C()
{
  result = qword_27C90E130;
  if (!qword_27C90E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E130);
  }

  return result;
}

unint64_t sub_21432F874()
{
  result = qword_27C90E138;
  if (!qword_27C90E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E138);
  }

  return result;
}

unint64_t sub_21432F8CC()
{
  result = qword_27C90E140;
  if (!qword_27C90E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E140);
  }

  return result;
}

unint64_t sub_21432F924()
{
  result = qword_27C90E148;
  if (!qword_27C90E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E148);
  }

  return result;
}

unint64_t sub_21432F97C()
{
  result = qword_27C90E150;
  if (!qword_27C90E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E150);
  }

  return result;
}

unint64_t sub_21432F9D4()
{
  result = qword_27C90E158;
  if (!qword_27C90E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E158);
  }

  return result;
}

unint64_t sub_21432FA2C()
{
  result = qword_27C90E160;
  if (!qword_27C90E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E160);
  }

  return result;
}

unint64_t sub_21432FA84()
{
  result = qword_27C90E168;
  if (!qword_27C90E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E168);
  }

  return result;
}

unint64_t sub_21432FADC()
{
  result = qword_27C90E170;
  if (!qword_27C90E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E170);
  }

  return result;
}

unint64_t sub_21432FB34()
{
  result = qword_27C90E178;
  if (!qword_27C90E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E178);
  }

  return result;
}

unint64_t sub_21432FB8C()
{
  result = qword_27C90E180;
  if (!qword_27C90E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E180);
  }

  return result;
}

unint64_t sub_21432FBE4()
{
  result = qword_27C90E188;
  if (!qword_27C90E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E188);
  }

  return result;
}

unint64_t sub_21432FC3C()
{
  result = qword_27C90E190;
  if (!qword_27C90E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E190);
  }

  return result;
}

unint64_t sub_21432FC94()
{
  result = qword_27C90E198;
  if (!qword_27C90E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E198);
  }

  return result;
}

unint64_t sub_21432FCEC()
{
  result = qword_27C90E1A0;
  if (!qword_27C90E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E1A0);
  }

  return result;
}

unint64_t sub_21432FD44()
{
  result = qword_27C90E1A8;
  if (!qword_27C90E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E1A8);
  }

  return result;
}

unint64_t sub_21432FD9C()
{
  result = qword_27C90E1B0;
  if (!qword_27C90E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E1B0);
  }

  return result;
}

unint64_t sub_21432FDF4()
{
  result = qword_27C90E1B8;
  if (!qword_27C90E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E1B8);
  }

  return result;
}

unint64_t sub_21432FE4C()
{
  result = qword_27C90E1C0;
  if (!qword_27C90E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E1C0);
  }

  return result;
}

unint64_t sub_21432FEA4()
{
  result = qword_27C90E1C8;
  if (!qword_27C90E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E1C8);
  }

  return result;
}

unint64_t sub_21432FEFC()
{
  result = qword_27C90E1D0;
  if (!qword_27C90E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E1D0);
  }

  return result;
}

unint64_t sub_21432FF54()
{
  result = qword_27C90E1D8;
  if (!qword_27C90E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E1D8);
  }

  return result;
}

unint64_t sub_21432FFAC()
{
  result = qword_27C90E1E0;
  if (!qword_27C90E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E1E0);
  }

  return result;
}

unint64_t sub_214330004()
{
  result = qword_27C90E1E8;
  if (!qword_27C90E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E1E8);
  }

  return result;
}

unint64_t sub_21433005C()
{
  result = qword_27C90E1F0;
  if (!qword_27C90E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E1F0);
  }

  return result;
}

unint64_t sub_2143300B4()
{
  result = qword_27C90E1F8;
  if (!qword_27C90E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E1F8);
  }

  return result;
}

unint64_t sub_21433010C()
{
  result = qword_27C90E200;
  if (!qword_27C90E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E200);
  }

  return result;
}

unint64_t sub_214330164()
{
  result = qword_27C90E208;
  if (!qword_27C90E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E208);
  }

  return result;
}

unint64_t sub_2143301BC()
{
  result = qword_27C90E210;
  if (!qword_27C90E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E210);
  }

  return result;
}

unint64_t sub_214330214()
{
  result = qword_27C90E218;
  if (!qword_27C90E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E218);
  }

  return result;
}

unint64_t sub_21433026C()
{
  result = qword_27C90E220;
  if (!qword_27C90E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E220);
  }

  return result;
}

unint64_t sub_2143302C4()
{
  result = qword_27C90E228;
  if (!qword_27C90E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E228);
  }

  return result;
}

unint64_t sub_21433031C()
{
  result = qword_27C90E230;
  if (!qword_27C90E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E230);
  }

  return result;
}

unint64_t sub_214330374()
{
  result = qword_27C90E238;
  if (!qword_27C90E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E238);
  }

  return result;
}

unint64_t sub_2143303CC()
{
  result = qword_27C90E240;
  if (!qword_27C90E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E240);
  }

  return result;
}

unint64_t sub_214330424()
{
  result = qword_27C90E248;
  if (!qword_27C90E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E248);
  }

  return result;
}

unint64_t sub_21433047C()
{
  result = qword_27C90E250;
  if (!qword_27C90E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E250);
  }

  return result;
}

unint64_t sub_2143304D4()
{
  result = qword_27C90E258;
  if (!qword_27C90E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E258);
  }

  return result;
}

unint64_t sub_21433052C()
{
  result = qword_27C90E260;
  if (!qword_27C90E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E260);
  }

  return result;
}

unint64_t sub_214330584()
{
  result = qword_27C90E268;
  if (!qword_27C90E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E268);
  }

  return result;
}

unint64_t sub_2143305DC()
{
  result = qword_27C90E270;
  if (!qword_27C90E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E270);
  }

  return result;
}

unint64_t sub_214330634()
{
  result = qword_27C90E278;
  if (!qword_27C90E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E278);
  }

  return result;
}

unint64_t sub_21433068C()
{
  result = qword_27C90E280;
  if (!qword_27C90E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E280);
  }

  return result;
}

unint64_t sub_2143306E4()
{
  result = qword_27C90E288;
  if (!qword_27C90E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E288);
  }

  return result;
}

unint64_t sub_21433073C()
{
  result = qword_27C90E290;
  if (!qword_27C90E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E290);
  }

  return result;
}

unint64_t sub_214330794()
{
  result = qword_27C90E298;
  if (!qword_27C90E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E298);
  }

  return result;
}

unint64_t sub_2143307EC()
{
  result = qword_27C90E2A0;
  if (!qword_27C90E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E2A0);
  }

  return result;
}

unint64_t sub_214330844()
{
  result = qword_27C90E2A8;
  if (!qword_27C90E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E2A8);
  }

  return result;
}

unint64_t sub_21433089C()
{
  result = qword_27C90E2B0;
  if (!qword_27C90E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E2B0);
  }

  return result;
}

unint64_t sub_2143308F4()
{
  result = qword_27C90E2B8;
  if (!qword_27C90E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E2B8);
  }

  return result;
}

unint64_t sub_21433094C()
{
  result = qword_27C90E2C0;
  if (!qword_27C90E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E2C0);
  }

  return result;
}

unint64_t sub_2143309A4()
{
  result = qword_27C90E2C8;
  if (!qword_27C90E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E2C8);
  }

  return result;
}

unint64_t sub_2143309FC()
{
  result = qword_27C90E2D0;
  if (!qword_27C90E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E2D0);
  }

  return result;
}

unint64_t sub_214330A54()
{
  result = qword_27C90E2D8;
  if (!qword_27C90E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E2D8);
  }

  return result;
}

unint64_t sub_214330AAC()
{
  result = qword_27C90E2E0;
  if (!qword_27C90E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E2E0);
  }

  return result;
}

unint64_t sub_214330B04()
{
  result = qword_27C90E2E8;
  if (!qword_27C90E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E2E8);
  }

  return result;
}

unint64_t sub_214330B5C()
{
  result = qword_27C90E2F0;
  if (!qword_27C90E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E2F0);
  }

  return result;
}

unint64_t sub_214330BB4()
{
  result = qword_27C90E2F8;
  if (!qword_27C90E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E2F8);
  }

  return result;
}

unint64_t sub_214330C0C()
{
  result = qword_27C90E300;
  if (!qword_27C90E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E300);
  }

  return result;
}

unint64_t sub_214330C64()
{
  result = qword_27C90E308;
  if (!qword_27C90E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E308);
  }

  return result;
}

unint64_t sub_214330CBC()
{
  result = qword_27C90E310;
  if (!qword_27C90E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E310);
  }

  return result;
}

unint64_t sub_214330D14()
{
  result = qword_27C90E318;
  if (!qword_27C90E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E318);
  }

  return result;
}

unint64_t sub_214330D6C()
{
  result = qword_27C90E320;
  if (!qword_27C90E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E320);
  }

  return result;
}

unint64_t sub_214330DC4()
{
  result = qword_27C90E328;
  if (!qword_27C90E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E328);
  }

  return result;
}

unint64_t sub_214330E1C()
{
  result = qword_27C90E330;
  if (!qword_27C90E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E330);
  }

  return result;
}

unint64_t sub_214330E74()
{
  result = qword_27C90E338;
  if (!qword_27C90E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E338);
  }

  return result;
}

unint64_t sub_214330ECC()
{
  result = qword_27C90E340;
  if (!qword_27C90E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E340);
  }

  return result;
}

unint64_t sub_214330F24()
{
  result = qword_27C90E348;
  if (!qword_27C90E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E348);
  }

  return result;
}

unint64_t sub_214330F7C()
{
  result = qword_27C90E350;
  if (!qword_27C90E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E350);
  }

  return result;
}

unint64_t sub_214330FD4()
{
  result = qword_27C90E358;
  if (!qword_27C90E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E358);
  }

  return result;
}

unint64_t sub_21433102C()
{
  result = qword_27C90E360;
  if (!qword_27C90E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E360);
  }

  return result;
}

unint64_t sub_214331084()
{
  result = qword_27C90E368;
  if (!qword_27C90E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E368);
  }

  return result;
}

unint64_t sub_2143310DC()
{
  result = qword_27C90E370;
  if (!qword_27C90E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E370);
  }

  return result;
}

unint64_t sub_214331134()
{
  result = qword_27C90E378;
  if (!qword_27C90E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E378);
  }

  return result;
}

unint64_t sub_21433118C()
{
  result = qword_27C90E380;
  if (!qword_27C90E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E380);
  }

  return result;
}

unint64_t sub_2143311E4()
{
  result = qword_27C90E388;
  if (!qword_27C90E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E388);
  }

  return result;
}

unint64_t sub_21433123C()
{
  result = qword_27C90E390;
  if (!qword_27C90E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E390);
  }

  return result;
}

unint64_t sub_214331294()
{
  result = qword_27C90E398;
  if (!qword_27C90E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E398);
  }

  return result;
}

unint64_t sub_2143312EC()
{
  result = qword_27C90E3A0;
  if (!qword_27C90E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E3A0);
  }

  return result;
}

unint64_t sub_214331344()
{
  result = qword_27C90E3A8;
  if (!qword_27C90E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E3A8);
  }

  return result;
}

unint64_t sub_21433139C()
{
  result = qword_27C90E3B0;
  if (!qword_27C90E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E3B0);
  }

  return result;
}

unint64_t sub_2143313F4()
{
  result = qword_27C90E3B8;
  if (!qword_27C90E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E3B8);
  }

  return result;
}

unint64_t sub_21433144C()
{
  result = qword_27C90E3C0;
  if (!qword_27C90E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E3C0);
  }

  return result;
}

unint64_t sub_2143314A4()
{
  result = qword_27C90E3C8;
  if (!qword_27C90E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E3C8);
  }

  return result;
}

unint64_t sub_2143314FC()
{
  result = qword_27C90E3D0;
  if (!qword_27C90E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E3D0);
  }

  return result;
}

unint64_t sub_214331554()
{
  result = qword_27C90E3D8;
  if (!qword_27C90E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E3D8);
  }

  return result;
}

unint64_t sub_2143315AC()
{
  result = qword_27C90E3E0;
  if (!qword_27C90E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E3E0);
  }

  return result;
}

unint64_t sub_214331604()
{
  result = qword_27C90E3E8;
  if (!qword_27C90E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E3E8);
  }

  return result;
}

unint64_t sub_21433165C()
{
  result = qword_27C90E3F0;
  if (!qword_27C90E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E3F0);
  }

  return result;
}

unint64_t sub_2143316B4()
{
  result = qword_27C90E3F8;
  if (!qword_27C90E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E3F8);
  }

  return result;
}

unint64_t sub_21433170C()
{
  result = qword_27C90E400;
  if (!qword_27C90E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E400);
  }

  return result;
}

unint64_t sub_214331764()
{
  result = qword_27C90E408;
  if (!qword_27C90E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E408);
  }

  return result;
}

unint64_t sub_2143317BC()
{
  result = qword_27C90E410;
  if (!qword_27C90E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E410);
  }

  return result;
}

unint64_t sub_214331814()
{
  result = qword_27C90E418;
  if (!qword_27C90E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E418);
  }

  return result;
}

unint64_t sub_21433186C()
{
  result = qword_27C90E420;
  if (!qword_27C90E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E420);
  }

  return result;
}

unint64_t sub_2143318C4()
{
  result = qword_27C90E428;
  if (!qword_27C90E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E428);
  }

  return result;
}

unint64_t sub_21433191C()
{
  result = qword_27C90E430;
  if (!qword_27C90E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E430);
  }

  return result;
}

unint64_t sub_214331974()
{
  result = qword_27C90E438;
  if (!qword_27C90E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E438);
  }

  return result;
}

unint64_t sub_2143319CC()
{
  result = qword_27C90E440;
  if (!qword_27C90E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E440);
  }

  return result;
}

unint64_t sub_214331A24()
{
  result = qword_27C90E448;
  if (!qword_27C90E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E448);
  }

  return result;
}

unint64_t sub_214331A7C()
{
  result = qword_27C90E450;
  if (!qword_27C90E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E450);
  }

  return result;
}

unint64_t sub_214331AD4()
{
  result = qword_27C90E458;
  if (!qword_27C90E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E458);
  }

  return result;
}

unint64_t sub_214331B2C()
{
  result = qword_27C90E460;
  if (!qword_27C90E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E460);
  }

  return result;
}

unint64_t sub_214331B84()
{
  result = qword_27C90E468;
  if (!qword_27C90E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E468);
  }

  return result;
}

unint64_t sub_214331BDC()
{
  result = qword_27C90E470;
  if (!qword_27C90E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E470);
  }

  return result;
}

unint64_t sub_214331C34()
{
  result = qword_27C90E478;
  if (!qword_27C90E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E478);
  }

  return result;
}

unint64_t sub_214331C8C()
{
  result = qword_27C90E480;
  if (!qword_27C90E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E480);
  }

  return result;
}

unint64_t sub_214331CE4()
{
  result = qword_27C90E488;
  if (!qword_27C90E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E488);
  }

  return result;
}

unint64_t sub_214331D3C()
{
  result = qword_27C90E490;
  if (!qword_27C90E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E490);
  }

  return result;
}

unint64_t sub_214331D94()
{
  result = qword_27C90E498;
  if (!qword_27C90E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E498);
  }

  return result;
}

unint64_t sub_214331DEC()
{
  result = qword_27C90E4A0;
  if (!qword_27C90E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E4A0);
  }

  return result;
}

unint64_t sub_214331E44()
{
  result = qword_27C90E4A8;
  if (!qword_27C90E4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E4A8);
  }

  return result;
}

unint64_t sub_214331E9C()
{
  result = qword_27C90E4B0;
  if (!qword_27C90E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E4B0);
  }

  return result;
}

unint64_t sub_214331EF4()
{
  result = qword_27C90E4B8;
  if (!qword_27C90E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E4B8);
  }

  return result;
}

unint64_t sub_214331F4C()
{
  result = qword_27C90E4C0;
  if (!qword_27C90E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E4C0);
  }

  return result;
}

unint64_t sub_214331FA4()
{
  result = qword_27C90E4C8;
  if (!qword_27C90E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E4C8);
  }

  return result;
}

unint64_t sub_214331FFC()
{
  result = qword_27C90E4D0;
  if (!qword_27C90E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E4D0);
  }

  return result;
}

unint64_t sub_214332054()
{
  result = qword_27C90E4D8;
  if (!qword_27C90E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E4D8);
  }

  return result;
}

unint64_t sub_2143320AC()
{
  result = qword_27C90E4E0;
  if (!qword_27C90E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E4E0);
  }

  return result;
}

unint64_t sub_214332104()
{
  result = qword_27C90E4E8;
  if (!qword_27C90E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E4E8);
  }

  return result;
}

unint64_t sub_21433215C()
{
  result = qword_27C90E4F0;
  if (!qword_27C90E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E4F0);
  }

  return result;
}

unint64_t sub_2143321B4()
{
  result = qword_27C90E4F8;
  if (!qword_27C90E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E4F8);
  }

  return result;
}

unint64_t sub_21433220C()
{
  result = qword_27C90E500;
  if (!qword_27C90E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E500);
  }

  return result;
}

unint64_t sub_214332264()
{
  result = qword_27C90E508;
  if (!qword_27C90E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E508);
  }

  return result;
}

unint64_t sub_2143322BC()
{
  result = qword_27C90E510;
  if (!qword_27C90E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E510);
  }

  return result;
}

unint64_t sub_214332314()
{
  result = qword_27C90E518;
  if (!qword_27C90E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E518);
  }

  return result;
}

unint64_t sub_21433236C()
{
  result = qword_27C90E520;
  if (!qword_27C90E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E520);
  }

  return result;
}

unint64_t sub_2143323C4()
{
  result = qword_27C90E528;
  if (!qword_27C90E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E528);
  }

  return result;
}

unint64_t sub_21433241C()
{
  result = qword_27C90E530;
  if (!qword_27C90E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E530);
  }

  return result;
}

unint64_t sub_214332474()
{
  result = qword_27C90E538;
  if (!qword_27C90E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E538);
  }

  return result;
}

unint64_t sub_2143324CC()
{
  result = qword_27C90E540;
  if (!qword_27C90E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E540);
  }

  return result;
}

unint64_t sub_214332524()
{
  result = qword_27C90E548;
  if (!qword_27C90E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E548);
  }

  return result;
}

unint64_t sub_21433257C()
{
  result = qword_27C90E550;
  if (!qword_27C90E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E550);
  }

  return result;
}

unint64_t sub_2143325D4()
{
  result = qword_27C90E558;
  if (!qword_27C90E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E558);
  }

  return result;
}

unint64_t sub_21433262C()
{
  result = qword_27C90E560;
  if (!qword_27C90E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E560);
  }

  return result;
}

unint64_t sub_214332684()
{
  result = qword_27C90E568;
  if (!qword_27C90E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E568);
  }

  return result;
}

unint64_t sub_2143326DC()
{
  result = qword_27C90E570;
  if (!qword_27C90E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E570);
  }

  return result;
}

unint64_t sub_214332734()
{
  result = qword_27C90E578;
  if (!qword_27C90E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E578);
  }

  return result;
}

unint64_t sub_21433278C()
{
  result = qword_27C90E580;
  if (!qword_27C90E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E580);
  }

  return result;
}

unint64_t sub_2143327E4()
{
  result = qword_27C90E588;
  if (!qword_27C90E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E588);
  }

  return result;
}

unint64_t sub_21433283C()
{
  result = qword_27C90E590;
  if (!qword_27C90E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E590);
  }

  return result;
}

unint64_t sub_214332894()
{
  result = qword_27C90E598;
  if (!qword_27C90E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E598);
  }

  return result;
}

unint64_t sub_2143328EC()
{
  result = qword_27C90E5A0;
  if (!qword_27C90E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E5A0);
  }

  return result;
}

unint64_t sub_214332944()
{
  result = qword_27C90E5A8;
  if (!qword_27C90E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E5A8);
  }

  return result;
}

unint64_t sub_21433299C()
{
  result = qword_27C90E5B0;
  if (!qword_27C90E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E5B0);
  }

  return result;
}

unint64_t sub_2143329F4()
{
  result = qword_27C90E5B8;
  if (!qword_27C90E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E5B8);
  }

  return result;
}

unint64_t sub_214332A4C()
{
  result = qword_27C90E5C0;
  if (!qword_27C90E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E5C0);
  }

  return result;
}

unint64_t sub_214332AA4()
{
  result = qword_27C90E5C8;
  if (!qword_27C90E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E5C8);
  }

  return result;
}

unint64_t sub_214332AFC()
{
  result = qword_27C90E5D0;
  if (!qword_27C90E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E5D0);
  }

  return result;
}

unint64_t sub_214332B54()
{
  result = qword_27C90E5D8;
  if (!qword_27C90E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E5D8);
  }

  return result;
}

unint64_t sub_214332BAC()
{
  result = qword_27C90E5E0;
  if (!qword_27C90E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E5E0);
  }

  return result;
}

unint64_t sub_214332C04()
{
  result = qword_27C90E5E8;
  if (!qword_27C90E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E5E8);
  }

  return result;
}

unint64_t sub_214332C5C()
{
  result = qword_27C90E5F0;
  if (!qword_27C90E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E5F0);
  }

  return result;
}

unint64_t sub_214332CB4()
{
  result = qword_27C90E5F8;
  if (!qword_27C90E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E5F8);
  }

  return result;
}

unint64_t sub_214332D0C()
{
  result = qword_27C90E600;
  if (!qword_27C90E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E600);
  }

  return result;
}

unint64_t sub_214332D64()
{
  result = qword_27C90E608;
  if (!qword_27C90E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E608);
  }

  return result;
}

unint64_t sub_214332DBC()
{
  result = qword_27C90E610;
  if (!qword_27C90E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E610);
  }

  return result;
}

unint64_t sub_214332E14()
{
  result = qword_27C90E618;
  if (!qword_27C90E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E618);
  }

  return result;
}

unint64_t sub_214332E6C()
{
  result = qword_27C90E620;
  if (!qword_27C90E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E620);
  }

  return result;
}

unint64_t sub_214332EC4()
{
  result = qword_27C90E628;
  if (!qword_27C90E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E628);
  }

  return result;
}

unint64_t sub_214332F1C()
{
  result = qword_27C90E630;
  if (!qword_27C90E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E630);
  }

  return result;
}

unint64_t sub_214332F74()
{
  result = qword_27C90E638;
  if (!qword_27C90E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E638);
  }

  return result;
}

unint64_t sub_214332FCC()
{
  result = qword_27C90E640;
  if (!qword_27C90E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E640);
  }

  return result;
}

unint64_t sub_214333024()
{
  result = qword_27C90E648;
  if (!qword_27C90E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E648);
  }

  return result;
}

unint64_t sub_21433307C()
{
  result = qword_27C90E650;
  if (!qword_27C90E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E650);
  }

  return result;
}

unint64_t sub_2143330D4()
{
  result = qword_27C90E658;
  if (!qword_27C90E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E658);
  }

  return result;
}

unint64_t sub_21433312C()
{
  result = qword_27C90E660;
  if (!qword_27C90E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E660);
  }

  return result;
}

unint64_t sub_214333184()
{
  result = qword_27C90E668;
  if (!qword_27C90E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E668);
  }

  return result;
}

unint64_t sub_2143331DC()
{
  result = qword_27C90E670;
  if (!qword_27C90E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E670);
  }

  return result;
}

unint64_t sub_214333234()
{
  result = qword_27C90E678;
  if (!qword_27C90E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E678);
  }

  return result;
}

unint64_t sub_21433328C()
{
  result = qword_27C90E680;
  if (!qword_27C90E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E680);
  }

  return result;
}

unint64_t sub_2143332E4()
{
  result = qword_27C90E688;
  if (!qword_27C90E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E688);
  }

  return result;
}

unint64_t sub_21433333C()
{
  result = qword_27C90E690;
  if (!qword_27C90E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E690);
  }

  return result;
}

unint64_t sub_214333394()
{
  result = qword_27C90E698;
  if (!qword_27C90E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E698);
  }

  return result;
}

unint64_t sub_2143333EC()
{
  result = qword_27C90E6A0;
  if (!qword_27C90E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E6A0);
  }

  return result;
}

unint64_t sub_214333444()
{
  result = qword_27C90E6A8;
  if (!qword_27C90E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E6A8);
  }

  return result;
}

unint64_t sub_21433349C()
{
  result = qword_27C90E6B0;
  if (!qword_27C90E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E6B0);
  }

  return result;
}

unint64_t sub_2143334F4()
{
  result = qword_27C90E6B8;
  if (!qword_27C90E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E6B8);
  }

  return result;
}

unint64_t sub_21433354C()
{
  result = qword_27C90E6C0;
  if (!qword_27C90E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E6C0);
  }

  return result;
}

unint64_t sub_2143335A4()
{
  result = qword_27C90E6C8;
  if (!qword_27C90E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E6C8);
  }

  return result;
}

unint64_t sub_2143335FC()
{
  result = qword_27C90E6D0;
  if (!qword_27C90E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E6D0);
  }

  return result;
}

unint64_t sub_214333654()
{
  result = qword_27C90E6D8;
  if (!qword_27C90E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E6D8);
  }

  return result;
}

unint64_t sub_2143336AC()
{
  result = qword_27C90E6E0;
  if (!qword_27C90E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E6E0);
  }

  return result;
}

unint64_t sub_214333704()
{
  result = qword_27C90E6E8;
  if (!qword_27C90E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E6E8);
  }

  return result;
}

unint64_t sub_21433375C()
{
  result = qword_27C90E6F0;
  if (!qword_27C90E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E6F0);
  }

  return result;
}

unint64_t sub_2143337B4()
{
  result = qword_27C90E6F8;
  if (!qword_27C90E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E6F8);
  }

  return result;
}

unint64_t sub_21433380C()
{
  result = qword_27C90E700;
  if (!qword_27C90E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E700);
  }

  return result;
}

unint64_t sub_214333864()
{
  result = qword_27C90E708;
  if (!qword_27C90E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E708);
  }

  return result;
}

unint64_t sub_2143338BC()
{
  result = qword_27C90E710;
  if (!qword_27C90E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E710);
  }

  return result;
}

unint64_t sub_214333914()
{
  result = qword_27C90E718;
  if (!qword_27C90E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E718);
  }

  return result;
}

unint64_t sub_21433396C()
{
  result = qword_27C90E720;
  if (!qword_27C90E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E720);
  }

  return result;
}

unint64_t sub_2143339C4()
{
  result = qword_27C90E728;
  if (!qword_27C90E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E728);
  }

  return result;
}

unint64_t sub_214333A1C()
{
  result = qword_27C90E730;
  if (!qword_27C90E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E730);
  }

  return result;
}

unint64_t sub_214333A74()
{
  result = qword_27C90E738;
  if (!qword_27C90E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E738);
  }

  return result;
}

unint64_t sub_214333ACC()
{
  result = qword_27C90E740;
  if (!qword_27C90E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E740);
  }

  return result;
}

unint64_t sub_214333B24()
{
  result = qword_27C90E748;
  if (!qword_27C90E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E748);
  }

  return result;
}

unint64_t sub_214333B7C()
{
  result = qword_27C90E750;
  if (!qword_27C90E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E750);
  }

  return result;
}

unint64_t sub_214333BD4()
{
  result = qword_27C90E758;
  if (!qword_27C90E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E758);
  }

  return result;
}

unint64_t sub_214333C48()
{
  result = qword_27C90E760;
  if (!qword_27C90E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E760);
  }

  return result;
}

unint64_t sub_214333CA0()
{
  result = qword_27C90E768;
  if (!qword_27C90E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E768);
  }

  return result;
}

unint64_t sub_214333CF8()
{
  result = qword_27C90E770;
  if (!qword_27C90E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E770);
  }

  return result;
}

unint64_t sub_214333D50()
{
  result = qword_27C90E778;
  if (!qword_27C90E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E778);
  }

  return result;
}

unint64_t sub_214333DA8()
{
  result = qword_27C90E780;
  if (!qword_27C90E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E780);
  }

  return result;
}

unint64_t sub_214333E00()
{
  result = qword_27C90E788;
  if (!qword_27C90E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E788);
  }

  return result;
}

unint64_t sub_214333E58()
{
  result = qword_27C90E790;
  if (!qword_27C90E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E790);
  }

  return result;
}

unint64_t sub_214333EB0()
{
  result = qword_27C90E798;
  if (!qword_27C90E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E798);
  }

  return result;
}

unint64_t sub_214333F08()
{
  result = qword_27C90E7A0;
  if (!qword_27C90E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E7A0);
  }

  return result;
}

unint64_t sub_214333F60()
{
  result = qword_27C90E7A8;
  if (!qword_27C90E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E7A8);
  }

  return result;
}

unint64_t sub_214333FB8()
{
  result = qword_27C90E7B0;
  if (!qword_27C90E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E7B0);
  }

  return result;
}

unint64_t sub_214334010()
{
  result = qword_27C90E7B8;
  if (!qword_27C90E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E7B8);
  }

  return result;
}

unint64_t sub_214334068()
{
  result = qword_27C90E7C0;
  if (!qword_27C90E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E7C0);
  }

  return result;
}

unint64_t sub_2143340C0()
{
  result = qword_27C90E7C8;
  if (!qword_27C90E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E7C8);
  }

  return result;
}

unint64_t sub_214334118()
{
  result = qword_27C90E7D0;
  if (!qword_27C90E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E7D0);
  }

  return result;
}

unint64_t sub_214334170()
{
  result = qword_27C90E7D8;
  if (!qword_27C90E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E7D8);
  }

  return result;
}

unint64_t sub_2143341C8()
{
  result = qword_27C90E7E0;
  if (!qword_27C90E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E7E0);
  }

  return result;
}

unint64_t sub_214334220()
{
  result = qword_27C90E7E8;
  if (!qword_27C90E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E7E8);
  }

  return result;
}

unint64_t sub_214334278()
{
  result = qword_27C90E7F0;
  if (!qword_27C90E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E7F0);
  }

  return result;
}

unint64_t sub_2143342D0()
{
  result = qword_27C90E7F8;
  if (!qword_27C90E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E7F8);
  }

  return result;
}

unint64_t sub_214334328()
{
  result = qword_27C90E800;
  if (!qword_27C90E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E800);
  }

  return result;
}

unint64_t sub_214334380()
{
  result = qword_27C90E808;
  if (!qword_27C90E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E808);
  }

  return result;
}

unint64_t sub_2143343D8()
{
  result = qword_27C90E810;
  if (!qword_27C90E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E810);
  }

  return result;
}

unint64_t sub_214334430()
{
  result = qword_27C90E818;
  if (!qword_27C90E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E818);
  }

  return result;
}

unint64_t sub_214334488()
{
  result = qword_27C90E820;
  if (!qword_27C90E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E820);
  }

  return result;
}

unint64_t sub_2143344E0()
{
  result = qword_27C90E828;
  if (!qword_27C90E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E828);
  }

  return result;
}

unint64_t sub_214334538()
{
  result = qword_27C90E830;
  if (!qword_27C90E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E830);
  }

  return result;
}

unint64_t sub_214334590()
{
  result = qword_27C90E838;
  if (!qword_27C90E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E838);
  }

  return result;
}

unint64_t sub_2143345E8()
{
  result = qword_27C90E840;
  if (!qword_27C90E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E840);
  }

  return result;
}

unint64_t sub_214334640()
{
  result = qword_27C90E848;
  if (!qword_27C90E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E848);
  }

  return result;
}

unint64_t sub_214334698()
{
  result = qword_27C90E850;
  if (!qword_27C90E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E850);
  }

  return result;
}

unint64_t sub_2143346F0()
{
  result = qword_27C90E858;
  if (!qword_27C90E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E858);
  }

  return result;
}

unint64_t sub_214334748()
{
  result = qword_27C90E860;
  if (!qword_27C90E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E860);
  }

  return result;
}

unint64_t sub_2143347A0()
{
  result = qword_27C90E868;
  if (!qword_27C90E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E868);
  }

  return result;
}

unint64_t sub_2143347F8()
{
  result = qword_27C90E870;
  if (!qword_27C90E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E870);
  }

  return result;
}

unint64_t sub_214334850()
{
  result = qword_27C90E878;
  if (!qword_27C90E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E878);
  }

  return result;
}

unint64_t sub_2143348A8()
{
  result = qword_27C90E880;
  if (!qword_27C90E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E880);
  }

  return result;
}

unint64_t sub_214334900()
{
  result = qword_27C90E888;
  if (!qword_27C90E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E888);
  }

  return result;
}

unint64_t sub_214334958()
{
  result = qword_27C90E890;
  if (!qword_27C90E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E890);
  }

  return result;
}

unint64_t sub_2143349B0()
{
  result = qword_27C90E898;
  if (!qword_27C90E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E898);
  }

  return result;
}

unint64_t sub_214334A08()
{
  result = qword_27C90E8A0;
  if (!qword_27C90E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E8A0);
  }

  return result;
}

unint64_t sub_214334A60()
{
  result = qword_27C90E8A8;
  if (!qword_27C90E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E8A8);
  }

  return result;
}

unint64_t sub_214334AB8()
{
  result = qword_27C90E8B0;
  if (!qword_27C90E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E8B0);
  }

  return result;
}

unint64_t sub_214334B10()
{
  result = qword_27C90E8B8;
  if (!qword_27C90E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E8B8);
  }

  return result;
}

unint64_t sub_214334B68()
{
  result = qword_27C90E8C0;
  if (!qword_27C90E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E8C0);
  }

  return result;
}

unint64_t sub_214334BC0()
{
  result = qword_27C90E8C8;
  if (!qword_27C90E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E8C8);
  }

  return result;
}

unint64_t sub_214334C18()
{
  result = qword_27C90E8D0;
  if (!qword_27C90E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E8D0);
  }

  return result;
}

unint64_t sub_214334C70()
{
  result = qword_27C90E8D8;
  if (!qword_27C90E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E8D8);
  }

  return result;
}

unint64_t sub_214334CC8()
{
  result = qword_27C90E8E0;
  if (!qword_27C90E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E8E0);
  }

  return result;
}

unint64_t sub_214334D20()
{
  result = qword_27C90E8E8;
  if (!qword_27C90E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E8E8);
  }

  return result;
}

unint64_t sub_214334D78()
{
  result = qword_27C90E8F0;
  if (!qword_27C90E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E8F0);
  }

  return result;
}

unint64_t sub_214334DD0()
{
  result = qword_27C90E8F8;
  if (!qword_27C90E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E8F8);
  }

  return result;
}

unint64_t sub_214334E28()
{
  result = qword_27C90E900;
  if (!qword_27C90E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E900);
  }

  return result;
}

unint64_t sub_214334E80()
{
  result = qword_27C90E908;
  if (!qword_27C90E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E908);
  }

  return result;
}

unint64_t sub_214334ED8()
{
  result = qword_27C90E910;
  if (!qword_27C90E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E910);
  }

  return result;
}

unint64_t sub_214334F30()
{
  result = qword_27C90E918;
  if (!qword_27C90E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E918);
  }

  return result;
}

unint64_t sub_214334F88()
{
  result = qword_27C90E920;
  if (!qword_27C90E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E920);
  }

  return result;
}

unint64_t sub_214334FE0()
{
  result = qword_27C90E928;
  if (!qword_27C90E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E928);
  }

  return result;
}

unint64_t sub_214335038()
{
  result = qword_27C90E930;
  if (!qword_27C90E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E930);
  }

  return result;
}

unint64_t sub_214335090()
{
  result = qword_27C90E938;
  if (!qword_27C90E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E938);
  }

  return result;
}

unint64_t sub_2143350E8()
{
  result = qword_27C90E940;
  if (!qword_27C90E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E940);
  }

  return result;
}

unint64_t sub_214335140()
{
  result = qword_27C90E948;
  if (!qword_27C90E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E948);
  }

  return result;
}

unint64_t sub_214335198()
{
  result = qword_27C90E950;
  if (!qword_27C90E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E950);
  }

  return result;
}

unint64_t sub_2143351F0()
{
  result = qword_27C90E958;
  if (!qword_27C90E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E958);
  }

  return result;
}

unint64_t sub_214335248()
{
  result = qword_27C90E960;
  if (!qword_27C90E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E960);
  }

  return result;
}

unint64_t sub_2143352A0()
{
  result = qword_27C90E968;
  if (!qword_27C90E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E968);
  }

  return result;
}

unint64_t sub_2143352F8()
{
  result = qword_27C90E970;
  if (!qword_27C90E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E970);
  }

  return result;
}

unint64_t sub_214335350()
{
  result = qword_27C90E978;
  if (!qword_27C90E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E978);
  }

  return result;
}

unint64_t sub_2143353A8()
{
  result = qword_27C90E980;
  if (!qword_27C90E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E980);
  }

  return result;
}

unint64_t sub_214335400()
{
  result = qword_27C90E988;
  if (!qword_27C90E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E988);
  }

  return result;
}

unint64_t sub_214335458()
{
  result = qword_27C90E990;
  if (!qword_27C90E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E990);
  }

  return result;
}

unint64_t sub_2143354B0()
{
  result = qword_27C90E998;
  if (!qword_27C90E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E998);
  }

  return result;
}

unint64_t sub_214335508()
{
  result = qword_27C90E9A0;
  if (!qword_27C90E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E9A0);
  }

  return result;
}

unint64_t sub_214335560()
{
  result = qword_27C90E9A8;
  if (!qword_27C90E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E9A8);
  }

  return result;
}

unint64_t sub_2143355B8()
{
  result = qword_27C90E9B0;
  if (!qword_27C90E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E9B0);
  }

  return result;
}

unint64_t sub_214335610()
{
  result = qword_27C90E9B8;
  if (!qword_27C90E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E9B8);
  }

  return result;
}

unint64_t sub_214335668()
{
  result = qword_27C90E9C0;
  if (!qword_27C90E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E9C0);
  }

  return result;
}

unint64_t sub_2143356C0()
{
  result = qword_27C90E9C8;
  if (!qword_27C90E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E9C8);
  }

  return result;
}

unint64_t sub_214335718()
{
  result = qword_27C90E9D0;
  if (!qword_27C90E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E9D0);
  }

  return result;
}

unint64_t sub_214335770()
{
  result = qword_27C90E9D8;
  if (!qword_27C90E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E9D8);
  }

  return result;
}

unint64_t sub_2143357C8()
{
  result = qword_27C90E9E0;
  if (!qword_27C90E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E9E0);
  }

  return result;
}

unint64_t sub_214335820()
{
  result = qword_27C90E9E8;
  if (!qword_27C90E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E9E8);
  }

  return result;
}

unint64_t sub_214335878()
{
  result = qword_27C90E9F0;
  if (!qword_27C90E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E9F0);
  }

  return result;
}

unint64_t sub_2143358D0()
{
  result = qword_27C90E9F8;
  if (!qword_27C90E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90E9F8);
  }

  return result;
}

unint64_t sub_214335928()
{
  result = qword_27C90EA00;
  if (!qword_27C90EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA00);
  }

  return result;
}

unint64_t sub_214335980()
{
  result = qword_27C90EA08;
  if (!qword_27C90EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA08);
  }

  return result;
}

unint64_t sub_2143359D8()
{
  result = qword_27C90EA10;
  if (!qword_27C90EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA10);
  }

  return result;
}

unint64_t sub_214335A30()
{
  result = qword_27C90EA18;
  if (!qword_27C90EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA18);
  }

  return result;
}

unint64_t sub_214335A88()
{
  result = qword_27C90EA20;
  if (!qword_27C90EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA20);
  }

  return result;
}

unint64_t sub_214335AE0()
{
  result = qword_27C90EA28;
  if (!qword_27C90EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA28);
  }

  return result;
}

unint64_t sub_214335B38()
{
  result = qword_27C90EA30;
  if (!qword_27C90EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA30);
  }

  return result;
}

unint64_t sub_214335B90()
{
  result = qword_27C90EA38;
  if (!qword_27C90EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA38);
  }

  return result;
}

unint64_t sub_214335BE8()
{
  result = qword_27C90EA40;
  if (!qword_27C90EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA40);
  }

  return result;
}

unint64_t sub_214335C40()
{
  result = qword_27C90EA48;
  if (!qword_27C90EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA48);
  }

  return result;
}

unint64_t sub_214335C98()
{
  result = qword_27C90EA50;
  if (!qword_27C90EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA50);
  }

  return result;
}

unint64_t sub_214335CF0()
{
  result = qword_27C90EA58;
  if (!qword_27C90EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA58);
  }

  return result;
}

unint64_t sub_214335D48()
{
  result = qword_27C90EA60;
  if (!qword_27C90EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA60);
  }

  return result;
}

unint64_t sub_214335DA0()
{
  result = qword_27C90EA68;
  if (!qword_27C90EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA68);
  }

  return result;
}

unint64_t sub_214335DF8()
{
  result = qword_27C90EA70;
  if (!qword_27C90EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA70);
  }

  return result;
}

unint64_t sub_214335E50()
{
  result = qword_27C90EA78;
  if (!qword_27C90EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA78);
  }

  return result;
}

unint64_t sub_214335EA8()
{
  result = qword_27C90EA80;
  if (!qword_27C90EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA80);
  }

  return result;
}

unint64_t sub_214335F00()
{
  result = qword_27C90EA88;
  if (!qword_27C90EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA88);
  }

  return result;
}

unint64_t sub_214335F58()
{
  result = qword_27C90EA90;
  if (!qword_27C90EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA90);
  }

  return result;
}

unint64_t sub_214335FB0()
{
  result = qword_27C90EA98;
  if (!qword_27C90EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EA98);
  }

  return result;
}

unint64_t sub_214336008()
{
  result = qword_27C90EAA0;
  if (!qword_27C90EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EAA0);
  }

  return result;
}

unint64_t sub_214336060()
{
  result = qword_27C90EAA8;
  if (!qword_27C90EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EAA8);
  }

  return result;
}

unint64_t sub_2143360B8()
{
  result = qword_27C90EAB0;
  if (!qword_27C90EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EAB0);
  }

  return result;
}

unint64_t sub_214336110()
{
  result = qword_27C90EAB8;
  if (!qword_27C90EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EAB8);
  }

  return result;
}

unint64_t sub_214336168()
{
  result = qword_27C90EAC0;
  if (!qword_27C90EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EAC0);
  }

  return result;
}

unint64_t sub_2143361C0()
{
  result = qword_27C90EAC8;
  if (!qword_27C90EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EAC8);
  }

  return result;
}

unint64_t sub_214336218()
{
  result = qword_27C90EAD0;
  if (!qword_27C90EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EAD0);
  }

  return result;
}

unint64_t sub_214336270()
{
  result = qword_27C90EAD8;
  if (!qword_27C90EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EAD8);
  }

  return result;
}

unint64_t sub_2143362C8()
{
  result = qword_27C90EAE0;
  if (!qword_27C90EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EAE0);
  }

  return result;
}

unint64_t sub_214336320()
{
  result = qword_27C90EAE8;
  if (!qword_27C90EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EAE8);
  }

  return result;
}

unint64_t sub_214336378()
{
  result = qword_27C90EAF0;
  if (!qword_27C90EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EAF0);
  }

  return result;
}

unint64_t sub_2143363D0()
{
  result = qword_27C90EAF8;
  if (!qword_27C90EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EAF8);
  }

  return result;
}

unint64_t sub_214336428()
{
  result = qword_27C90EB00;
  if (!qword_27C90EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB00);
  }

  return result;
}

unint64_t sub_214336480()
{
  result = qword_27C90EB08;
  if (!qword_27C90EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB08);
  }

  return result;
}

unint64_t sub_2143364D8()
{
  result = qword_27C90EB10;
  if (!qword_27C90EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB10);
  }

  return result;
}

unint64_t sub_214336530()
{
  result = qword_27C90EB18;
  if (!qword_27C90EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB18);
  }

  return result;
}

unint64_t sub_214336588()
{
  result = qword_27C90EB20;
  if (!qword_27C90EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB20);
  }

  return result;
}

unint64_t sub_2143365E0()
{
  result = qword_27C90EB28;
  if (!qword_27C90EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB28);
  }

  return result;
}

unint64_t sub_214336638()
{
  result = qword_27C90EB30;
  if (!qword_27C90EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB30);
  }

  return result;
}

unint64_t sub_214336690()
{
  result = qword_27C90EB38;
  if (!qword_27C90EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB38);
  }

  return result;
}

unint64_t sub_2143366E8()
{
  result = qword_27C90EB40;
  if (!qword_27C90EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB40);
  }

  return result;
}

unint64_t sub_214336740()
{
  result = qword_27C90EB48;
  if (!qword_27C90EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB48);
  }

  return result;
}

unint64_t sub_214336798()
{
  result = qword_27C90EB50;
  if (!qword_27C90EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB50);
  }

  return result;
}

unint64_t sub_2143367F0()
{
  result = qword_27C90EB58;
  if (!qword_27C90EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB58);
  }

  return result;
}

unint64_t sub_214336848()
{
  result = qword_27C90EB60;
  if (!qword_27C90EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB60);
  }

  return result;
}

unint64_t sub_2143368A0()
{
  result = qword_27C90EB68;
  if (!qword_27C90EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB68);
  }

  return result;
}

unint64_t sub_2143368F8()
{
  result = qword_27C90EB70;
  if (!qword_27C90EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB70);
  }

  return result;
}

unint64_t sub_214336950()
{
  result = qword_27C90EB78;
  if (!qword_27C90EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB78);
  }

  return result;
}

unint64_t sub_2143369A8()
{
  result = qword_27C90EB80;
  if (!qword_27C90EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB80);
  }

  return result;
}

unint64_t sub_214336A00()
{
  result = qword_27C90EB88;
  if (!qword_27C90EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB88);
  }

  return result;
}

unint64_t sub_214336A58()
{
  result = qword_27C90EB90;
  if (!qword_27C90EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB90);
  }

  return result;
}

unint64_t sub_214336AB0()
{
  result = qword_27C90EB98;
  if (!qword_27C90EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EB98);
  }

  return result;
}

unint64_t sub_214336B08()
{
  result = qword_27C90EBA0;
  if (!qword_27C90EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EBA0);
  }

  return result;
}

unint64_t sub_214336B60()
{
  result = qword_27C90EBA8;
  if (!qword_27C90EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EBA8);
  }

  return result;
}

unint64_t sub_214336BB8()
{
  result = qword_27C90EBB0;
  if (!qword_27C90EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EBB0);
  }

  return result;
}

unint64_t sub_214336C10()
{
  result = qword_27C90EBB8;
  if (!qword_27C90EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EBB8);
  }

  return result;
}

unint64_t sub_214336C84()
{
  result = qword_27C90EBC0;
  if (!qword_27C90EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EBC0);
  }

  return result;
}

unint64_t sub_214336CDC()
{
  result = qword_27C90EBC8;
  if (!qword_27C90EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EBC8);
  }

  return result;
}

unint64_t sub_214336D34()
{
  result = qword_27C90EBD0;
  if (!qword_27C90EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EBD0);
  }

  return result;
}

unint64_t sub_214336D8C()
{
  result = qword_27C90EBD8;
  if (!qword_27C90EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EBD8);
  }

  return result;
}

unint64_t sub_214336DE4()
{
  result = qword_27C90EBE0;
  if (!qword_27C90EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EBE0);
  }

  return result;
}

unint64_t sub_214336E3C()
{
  result = qword_27C90EBE8;
  if (!qword_27C90EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EBE8);
  }

  return result;
}

unint64_t sub_214336E94()
{
  result = qword_27C90EBF0;
  if (!qword_27C90EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EBF0);
  }

  return result;
}

unint64_t sub_214336EEC()
{
  result = qword_27C90EBF8;
  if (!qword_27C90EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EBF8);
  }

  return result;
}

unint64_t sub_214336F44()
{
  result = qword_27C90EC00;
  if (!qword_27C90EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC00);
  }

  return result;
}

unint64_t sub_214336F9C()
{
  result = qword_27C90EC08;
  if (!qword_27C90EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC08);
  }

  return result;
}

unint64_t sub_214336FF4()
{
  result = qword_27C90EC10;
  if (!qword_27C90EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC10);
  }

  return result;
}

unint64_t sub_21433704C()
{
  result = qword_27C90EC18;
  if (!qword_27C90EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC18);
  }

  return result;
}

unint64_t sub_2143370A4()
{
  result = qword_27C90EC20;
  if (!qword_27C90EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC20);
  }

  return result;
}

unint64_t sub_2143370FC()
{
  result = qword_27C90EC28;
  if (!qword_27C90EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC28);
  }

  return result;
}

unint64_t sub_214337154()
{
  result = qword_27C90EC30;
  if (!qword_27C90EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC30);
  }

  return result;
}

unint64_t sub_2143371AC()
{
  result = qword_27C90EC38;
  if (!qword_27C90EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC38);
  }

  return result;
}

unint64_t sub_214337204()
{
  result = qword_27C90EC40;
  if (!qword_27C90EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC40);
  }

  return result;
}

unint64_t sub_21433725C()
{
  result = qword_27C90EC48;
  if (!qword_27C90EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC48);
  }

  return result;
}

unint64_t sub_2143372B4()
{
  result = qword_27C90EC50;
  if (!qword_27C90EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC50);
  }

  return result;
}

unint64_t sub_21433730C()
{
  result = qword_27C90EC58;
  if (!qword_27C90EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC58);
  }

  return result;
}

unint64_t sub_214337364()
{
  result = qword_27C90EC60;
  if (!qword_27C90EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC60);
  }

  return result;
}

unint64_t sub_2143373BC()
{
  result = qword_27C90EC68;
  if (!qword_27C90EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC68);
  }

  return result;
}

unint64_t sub_214337414()
{
  result = qword_27C90EC70;
  if (!qword_27C90EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC70);
  }

  return result;
}

unint64_t sub_21433746C()
{
  result = qword_27C90EC78;
  if (!qword_27C90EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC78);
  }

  return result;
}

unint64_t sub_2143374C4()
{
  result = qword_27C90EC80;
  if (!qword_27C90EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC80);
  }

  return result;
}

unint64_t sub_21433751C()
{
  result = qword_27C90EC88;
  if (!qword_27C90EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC88);
  }

  return result;
}

unint64_t sub_214337574()
{
  result = qword_27C90EC90;
  if (!qword_27C90EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC90);
  }

  return result;
}

unint64_t sub_2143375CC()
{
  result = qword_27C90EC98;
  if (!qword_27C90EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EC98);
  }

  return result;
}

unint64_t sub_214337624()
{
  result = qword_27C90ECA0;
  if (!qword_27C90ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ECA0);
  }

  return result;
}

unint64_t sub_21433767C()
{
  result = qword_27C90ECA8;
  if (!qword_27C90ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ECA8);
  }

  return result;
}

unint64_t sub_2143376D4()
{
  result = qword_27C90ECB0;
  if (!qword_27C90ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ECB0);
  }

  return result;
}

unint64_t sub_21433772C()
{
  result = qword_27C90ECB8;
  if (!qword_27C90ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ECB8);
  }

  return result;
}

unint64_t sub_214337784()
{
  result = qword_27C90ECC0;
  if (!qword_27C90ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ECC0);
  }

  return result;
}

unint64_t sub_2143377DC()
{
  result = qword_27C90ECC8;
  if (!qword_27C90ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ECC8);
  }

  return result;
}

unint64_t sub_214337834()
{
  result = qword_27C90ECD0;
  if (!qword_27C90ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ECD0);
  }

  return result;
}

unint64_t sub_21433788C()
{
  result = qword_27C90ECD8;
  if (!qword_27C90ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ECD8);
  }

  return result;
}

unint64_t sub_2143378E4()
{
  result = qword_27C90ECE0;
  if (!qword_27C90ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ECE0);
  }

  return result;
}

unint64_t sub_21433793C()
{
  result = qword_27C90ECE8;
  if (!qword_27C90ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ECE8);
  }

  return result;
}

unint64_t sub_214337994()
{
  result = qword_27C90ECF0;
  if (!qword_27C90ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ECF0);
  }

  return result;
}

unint64_t sub_2143379EC()
{
  result = qword_27C90ECF8;
  if (!qword_27C90ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ECF8);
  }

  return result;
}

unint64_t sub_214337A44()
{
  result = qword_27C90ED00;
  if (!qword_27C90ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED00);
  }

  return result;
}

unint64_t sub_214337A9C()
{
  result = qword_27C90ED08;
  if (!qword_27C90ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED08);
  }

  return result;
}

unint64_t sub_214337AF4()
{
  result = qword_27C90ED10;
  if (!qword_27C90ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED10);
  }

  return result;
}

unint64_t sub_214337B4C()
{
  result = qword_27C90ED18;
  if (!qword_27C90ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED18);
  }

  return result;
}

unint64_t sub_214337BA4()
{
  result = qword_27C90ED20;
  if (!qword_27C90ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED20);
  }

  return result;
}

unint64_t sub_214337BFC()
{
  result = qword_27C90ED28;
  if (!qword_27C90ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED28);
  }

  return result;
}

unint64_t sub_214337C54()
{
  result = qword_27C90ED30;
  if (!qword_27C90ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED30);
  }

  return result;
}

unint64_t sub_214337CAC()
{
  result = qword_27C90ED38;
  if (!qword_27C90ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED38);
  }

  return result;
}

unint64_t sub_214337D04()
{
  result = qword_27C90ED40;
  if (!qword_27C90ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED40);
  }

  return result;
}

unint64_t sub_214337D5C()
{
  result = qword_27C90ED48;
  if (!qword_27C90ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED48);
  }

  return result;
}

unint64_t sub_214337DB4()
{
  result = qword_27C90ED50;
  if (!qword_27C90ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED50);
  }

  return result;
}

unint64_t sub_214337E0C()
{
  result = qword_27C90ED58;
  if (!qword_27C90ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED58);
  }

  return result;
}

unint64_t sub_214337E64()
{
  result = qword_27C90ED60;
  if (!qword_27C90ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED60);
  }

  return result;
}

unint64_t sub_214337EBC()
{
  result = qword_27C90ED68;
  if (!qword_27C90ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED68);
  }

  return result;
}

unint64_t sub_214337F14()
{
  result = qword_27C90ED70;
  if (!qword_27C90ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED70);
  }

  return result;
}

unint64_t sub_214337F6C()
{
  result = qword_27C90ED78;
  if (!qword_27C90ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED78);
  }

  return result;
}

unint64_t sub_214337FC4()
{
  result = qword_27C90ED80;
  if (!qword_27C90ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED80);
  }

  return result;
}

unint64_t sub_21433801C()
{
  result = qword_27C90ED88;
  if (!qword_27C90ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED88);
  }

  return result;
}

unint64_t sub_214338074()
{
  result = qword_27C90ED90;
  if (!qword_27C90ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED90);
  }

  return result;
}

unint64_t sub_2143380CC()
{
  result = qword_27C90ED98;
  if (!qword_27C90ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90ED98);
  }

  return result;
}

unint64_t sub_214338124()
{
  result = qword_27C90EDA0;
  if (!qword_27C90EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EDA0);
  }

  return result;
}

unint64_t sub_21433817C()
{
  result = qword_27C90EDA8;
  if (!qword_27C90EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EDA8);
  }

  return result;
}

unint64_t sub_2143381D4()
{
  result = qword_27C90EDB0;
  if (!qword_27C90EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EDB0);
  }

  return result;
}

unint64_t sub_21433822C()
{
  result = qword_27C90EDB8;
  if (!qword_27C90EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EDB8);
  }

  return result;
}

unint64_t sub_214338284()
{
  result = qword_27C90EDC0;
  if (!qword_27C90EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EDC0);
  }

  return result;
}

unint64_t sub_2143382DC()
{
  result = qword_27C90EDC8;
  if (!qword_27C90EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EDC8);
  }

  return result;
}

unint64_t sub_214338334()
{
  result = qword_27C90EDD0;
  if (!qword_27C90EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EDD0);
  }

  return result;
}

unint64_t sub_21433838C()
{
  result = qword_27C90EDD8;
  if (!qword_27C90EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EDD8);
  }

  return result;
}

unint64_t sub_2143383E4()
{
  result = qword_27C90EDE0;
  if (!qword_27C90EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EDE0);
  }

  return result;
}

unint64_t sub_21433843C()
{
  result = qword_27C90EDE8;
  if (!qword_27C90EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EDE8);
  }

  return result;
}

unint64_t sub_214338494()
{
  result = qword_27C90EDF0;
  if (!qword_27C90EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EDF0);
  }

  return result;
}

unint64_t sub_2143384EC()
{
  result = qword_27C90EDF8;
  if (!qword_27C90EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EDF8);
  }

  return result;
}

unint64_t sub_214338544()
{
  result = qword_27C90EE00;
  if (!qword_27C90EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE00);
  }

  return result;
}

unint64_t sub_21433859C()
{
  result = qword_27C90EE08;
  if (!qword_27C90EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE08);
  }

  return result;
}

unint64_t sub_2143385F4()
{
  result = qword_27C90EE10;
  if (!qword_27C90EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE10);
  }

  return result;
}

unint64_t sub_21433864C()
{
  result = qword_27C90EE18;
  if (!qword_27C90EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE18);
  }

  return result;
}

unint64_t sub_2143386A4()
{
  result = qword_27C90EE20;
  if (!qword_27C90EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE20);
  }

  return result;
}

unint64_t sub_2143386FC()
{
  result = qword_27C90EE28;
  if (!qword_27C90EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE28);
  }

  return result;
}

unint64_t sub_214338754()
{
  result = qword_27C90EE30;
  if (!qword_27C90EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE30);
  }

  return result;
}

unint64_t sub_2143387AC()
{
  result = qword_27C90EE38;
  if (!qword_27C90EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE38);
  }

  return result;
}

unint64_t sub_214338804()
{
  result = qword_27C90EE40;
  if (!qword_27C90EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE40);
  }

  return result;
}

unint64_t sub_21433885C()
{
  result = qword_27C90EE48;
  if (!qword_27C90EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE48);
  }

  return result;
}

unint64_t sub_2143388B4()
{
  result = qword_27C90EE50;
  if (!qword_27C90EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE50);
  }

  return result;
}

unint64_t sub_21433890C()
{
  result = qword_27C90EE58;
  if (!qword_27C90EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE58);
  }

  return result;
}

unint64_t sub_214338964()
{
  result = qword_27C90EE60;
  if (!qword_27C90EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE60);
  }

  return result;
}

unint64_t sub_2143389BC()
{
  result = qword_27C90EE68;
  if (!qword_27C90EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE68);
  }

  return result;
}

unint64_t sub_214338A14()
{
  result = qword_27C90EE70;
  if (!qword_27C90EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE70);
  }

  return result;
}

unint64_t sub_214338A6C()
{
  result = qword_27C90EE78;
  if (!qword_27C90EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE78);
  }

  return result;
}

unint64_t sub_214338AC4()
{
  result = qword_27C90EE80;
  if (!qword_27C90EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE80);
  }

  return result;
}

unint64_t sub_214338B1C()
{
  result = qword_27C90EE88;
  if (!qword_27C90EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE88);
  }

  return result;
}

unint64_t sub_214338B74()
{
  result = qword_27C90EE90;
  if (!qword_27C90EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE90);
  }

  return result;
}

unint64_t sub_214338BCC()
{
  result = qword_27C90EE98;
  if (!qword_27C90EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EE98);
  }

  return result;
}

unint64_t sub_214338C24()
{
  result = qword_27C90EEA0;
  if (!qword_27C90EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EEA0);
  }

  return result;
}

unint64_t sub_214338C7C()
{
  result = qword_27C90EEA8;
  if (!qword_27C90EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EEA8);
  }

  return result;
}

unint64_t sub_214338CD4()
{
  result = qword_27C90EEB0;
  if (!qword_27C90EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EEB0);
  }

  return result;
}

unint64_t sub_214338D2C()
{
  result = qword_27C90EEB8;
  if (!qword_27C90EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EEB8);
  }

  return result;
}

unint64_t sub_214338D84()
{
  result = qword_27C90EEC0;
  if (!qword_27C90EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EEC0);
  }

  return result;
}

unint64_t sub_214338DDC()
{
  result = qword_27C90EEC8;
  if (!qword_27C90EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EEC8);
  }

  return result;
}

unint64_t sub_214338E34()
{
  result = qword_27C90EED0;
  if (!qword_27C90EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EED0);
  }

  return result;
}

unint64_t sub_214338E8C()
{
  result = qword_27C90EED8;
  if (!qword_27C90EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EED8);
  }

  return result;
}

unint64_t sub_214338EE4()
{
  result = qword_27C90EEE0;
  if (!qword_27C90EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EEE0);
  }

  return result;
}

unint64_t sub_214338F3C()
{
  result = qword_27C90EEE8;
  if (!qword_27C90EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EEE8);
  }

  return result;
}

unint64_t sub_214338F94()
{
  result = qword_27C90EEF0;
  if (!qword_27C90EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EEF0);
  }

  return result;
}

unint64_t sub_214338FEC()
{
  result = qword_27C90EEF8;
  if (!qword_27C90EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EEF8);
  }

  return result;
}

unint64_t sub_214339044()
{
  result = qword_27C90EF00;
  if (!qword_27C90EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF00);
  }

  return result;
}

unint64_t sub_21433909C()
{
  result = qword_27C90EF08;
  if (!qword_27C90EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF08);
  }

  return result;
}

unint64_t sub_2143390F4()
{
  result = qword_27C90EF10;
  if (!qword_27C90EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF10);
  }

  return result;
}

unint64_t sub_21433914C()
{
  result = qword_27C90EF18;
  if (!qword_27C90EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF18);
  }

  return result;
}

unint64_t sub_2143391A4()
{
  result = qword_27C90EF20;
  if (!qword_27C90EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF20);
  }

  return result;
}

unint64_t sub_2143391FC()
{
  result = qword_27C90EF28;
  if (!qword_27C90EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF28);
  }

  return result;
}

unint64_t sub_214339254()
{
  result = qword_27C90EF30;
  if (!qword_27C90EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF30);
  }

  return result;
}

unint64_t sub_2143392AC()
{
  result = qword_27C90EF38;
  if (!qword_27C90EF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF38);
  }

  return result;
}

unint64_t sub_214339304()
{
  result = qword_27C90EF40;
  if (!qword_27C90EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF40);
  }

  return result;
}

unint64_t sub_21433935C()
{
  result = qword_27C90EF48;
  if (!qword_27C90EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF48);
  }

  return result;
}

unint64_t sub_2143393B4()
{
  result = qword_27C90EF50;
  if (!qword_27C90EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF50);
  }

  return result;
}

unint64_t sub_21433940C()
{
  result = qword_27C90EF58;
  if (!qword_27C90EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF58);
  }

  return result;
}

unint64_t sub_214339464()
{
  result = qword_27C90EF60;
  if (!qword_27C90EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF60);
  }

  return result;
}

unint64_t sub_2143394BC()
{
  result = qword_27C90EF68;
  if (!qword_27C90EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF68);
  }

  return result;
}

unint64_t sub_214339514()
{
  result = qword_27C90EF70;
  if (!qword_27C90EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF70);
  }

  return result;
}

unint64_t sub_21433956C()
{
  result = qword_27C90EF78;
  if (!qword_27C90EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF78);
  }

  return result;
}

unint64_t sub_2143395C4()
{
  result = qword_27C90EF80;
  if (!qword_27C90EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF80);
  }

  return result;
}

unint64_t sub_21433961C()
{
  result = qword_27C90EF88;
  if (!qword_27C90EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF88);
  }

  return result;
}

unint64_t sub_214339674()
{
  result = qword_27C90EF90;
  if (!qword_27C90EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF90);
  }

  return result;
}

unint64_t sub_2143396CC()
{
  result = qword_27C90EF98;
  if (!qword_27C90EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EF98);
  }

  return result;
}

unint64_t sub_214339724()
{
  result = qword_27C90EFA0;
  if (!qword_27C90EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EFA0);
  }

  return result;
}

unint64_t sub_21433977C()
{
  result = qword_27C90EFA8;
  if (!qword_27C90EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EFA8);
  }

  return result;
}

unint64_t sub_2143397D4()
{
  result = qword_27C90EFB0;
  if (!qword_27C90EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EFB0);
  }

  return result;
}

unint64_t sub_21433982C()
{
  result = qword_27C90EFB8;
  if (!qword_27C90EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EFB8);
  }

  return result;
}

unint64_t sub_214339884()
{
  result = qword_27C90EFC0;
  if (!qword_27C90EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EFC0);
  }

  return result;
}

unint64_t sub_2143398DC()
{
  result = qword_27C90EFC8;
  if (!qword_27C90EFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EFC8);
  }

  return result;
}

unint64_t sub_214339934()
{
  result = qword_27C90EFD0;
  if (!qword_27C90EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EFD0);
  }

  return result;
}

unint64_t sub_21433998C()
{
  result = qword_27C90EFD8;
  if (!qword_27C90EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EFD8);
  }

  return result;
}

unint64_t sub_2143399E4()
{
  result = qword_27C90EFE0;
  if (!qword_27C90EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EFE0);
  }

  return result;
}

unint64_t sub_214339A3C()
{
  result = qword_27C90EFE8;
  if (!qword_27C90EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EFE8);
  }

  return result;
}

unint64_t sub_214339A94()
{
  result = qword_27C90EFF0;
  if (!qword_27C90EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EFF0);
  }

  return result;
}

unint64_t sub_214339AEC()
{
  result = qword_27C90EFF8;
  if (!qword_27C90EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90EFF8);
  }

  return result;
}

unint64_t sub_214339B44()
{
  result = qword_27C90F000;
  if (!qword_27C90F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90F000);
  }

  return result;
}

unint64_t sub_214339B9C()
{
  result = qword_27C90F008;
  if (!qword_27C90F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90F008);
  }

  return result;
}

unint64_t sub_214339BF4()
{
  result = qword_27C90F010;
  if (!qword_27C90F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90F010);
  }

  return result;
}

unint64_t sub_214339C4C()
{
  result = qword_27C90F018;
  if (!qword_27C90F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90F018);
  }

  return result;
}

unint64_t sub_214339CA4()
{
  result = qword_27C90F020;
  if (!qword_27C90F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90F020);
  }

  return result;
}

unint64_t sub_214339CFC()
{
  result = qword_27C90F028;
  if (!qword_27C90F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90F028);
  }

  return result;
}

unint64_t sub_214339D54()
{
  result = qword_27C90F030;
  if (!qword_27C90F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90F030);
  }

  return result;
}

unint64_t sub_214339DAC()
{
  result = qword_27C90F038;
  if (!qword_27C90F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90F038);
  }

  return result;
}

unint64_t sub_214339E04()
{
  result = qword_27C90F040;
  if (!qword_27C90F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90F040);
  }

  return result;
}

unint64_t sub_214339E5C()
{
  result = qword_27C90F048;
  if (!qword_27C90F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90F048);
  }

  return result;
}

unint64_t sub_214339EB4()
{
  result = qword_27C90F050;
  if (!qword_27C90F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90F050);
  }

  return result;
}

unint64_t sub_214339F0C()
{
  result = qword_27C90F058;
  if (!qword_27C90F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C90F058);
  }

  return result;
}