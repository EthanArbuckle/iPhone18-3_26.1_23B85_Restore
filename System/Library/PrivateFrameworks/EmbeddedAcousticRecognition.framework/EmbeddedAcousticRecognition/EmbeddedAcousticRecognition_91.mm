uint64_t TLocaleInfo::getDigitExtended(uint64_t a1, unsigned int a2)
{
  if (a2 >= 65296)
  {
    v2 = a2 - 65296;
    v3 = a2 >= 0xFF1A;
    goto LABEL_3;
  }

  result = a2 - 1632;
  if (a2 < 1632)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x669)
  {
    return result;
  }

  result = a2 - 1776;
  if (a2 < 0x6F0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x6F9)
  {
    return result;
  }

  result = a2 - 1984;
  if (a2 < 0x7C0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x7C9)
  {
    return result;
  }

  result = a2 - 2406;
  if (a2 < 0x966)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x96F)
  {
    return result;
  }

  result = a2 - 2534;
  if (a2 < 0x9E6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x9EF)
  {
    return result;
  }

  result = a2 - 2662;
  if (a2 < 0xA66)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA6F)
  {
    return result;
  }

  result = a2 - 2790;
  if (a2 < 0xAE6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xAEF)
  {
    return result;
  }

  result = a2 - 2918;
  if (a2 < 0xB66)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xB6F)
  {
    return result;
  }

  result = a2 - 3046;
  if (a2 < 0xBE6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xBEF)
  {
    return result;
  }

  result = a2 - 3174;
  if (a2 < 0xC66)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xC6F)
  {
    return result;
  }

  result = a2 - 3302;
  if (a2 < 0xCE6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xCEF)
  {
    return result;
  }

  result = a2 - 3430;
  if (a2 < 0xD66)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xD6F)
  {
    return result;
  }

  result = a2 - 3664;
  if (a2 < 0xE50)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xE59)
  {
    return result;
  }

  result = a2 - 3792;
  if (a2 < 0xED0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xED9)
  {
    return result;
  }

  result = a2 - 3872;
  if (a2 < 0xF20)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xF29)
  {
    return result;
  }

  if (a2 >> 6 < 0x41)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a2 >> 1;
  if (a2 >> 1 <= 0x824)
  {
    v6 = -4160;
    return a2 + v6;
  }

  v7 = a2 >> 4;
  if (a2 >> 4 < 0x109)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0x84C)
  {
    v6 = -4240;
    return a2 + v6;
  }

  if (a2 < 0x1369)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0x9B8)
  {
    v6 = -4968;
    return a2 + v6;
  }

  if (a2 >> 5 < 0xBF)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xBF4)
  {
    v6 = -6112;
    return a2 + v6;
  }

  if (v7 < 0x181)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xC0C)
  {
    v6 = -6160;
    return a2 + v6;
  }

  if (v5 < 0xCA3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 <= 0x194)
  {
    v6 = -6470;
    return a2 + v6;
  }

  if (v7 < 0x19D)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xCEC)
  {
    v6 = -6608;
    return a2 + v6;
  }

  if (a2 == 6618)
  {
    return 1;
  }

  if (a2 >> 7 < 0x35)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xD44)
  {
    v6 = -6784;
    return a2 + v6;
  }

  if (v7 < 0x1A9)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xD4C)
  {
    v6 = -6800;
    return a2 + v6;
  }

  if (v7 < 0x1B5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xDAC)
  {
    v6 = -6992;
    return a2 + v6;
  }

  if (v7 < 0x1BB)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xDDC)
  {
    v6 = -7088;
    return a2 + v6;
  }

  if (a2 >> 6 < 0x71)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xE24)
  {
    v6 = -7232;
    return a2 + v6;
  }

  if (v7 < 0x1C5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xE2C)
  {
    v6 = -7248;
    return a2 + v6;
  }

  if (a2 >> 5 < 0x531)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA629)
  {
    v6 = -42528;
    return a2 + v6;
  }

  if (v7 < 0xA8D)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA8D9)
  {
    v6 = -43216;
    return a2 + v6;
  }

  if (a2 >> 8 < 0xA9)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA909)
  {
    v6 = -43264;
    return a2 + v6;
  }

  if (v7 < 0xA9D)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA9D9)
  {
    v6 = -43472;
    return a2 + v6;
  }

  if (v7 < 0xAA5)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xAA59)
  {
    v6 = -43600;
    return a2 + v6;
  }

  v2 = a2 - 44016;
  v3 = a2 - 44016 >= 0xA;
LABEL_3:
  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2;
  }
}

uint64_t TLocaleInfo::stringToUInt(uint64_t DigitExtended, unsigned int *a2, unsigned int **a3)
{
  v4 = a2;
  for (i = a2 + 1; ; ++i)
  {
    v6 = *(i - 1);
    if (v6 > 159)
    {
      break;
    }

    if (v6 > 0x20 || ((1 << v6) & 0x100002600) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    ;
  }

  if (v6 >= 12288)
  {
    if (v6 != 65279 && v6 != 12288)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v6 == 160 || v6 == 8203)
  {
    goto LABEL_17;
  }

LABEL_18:
  v9 = (v6 - 48);
  if (v6 < 48 || v6 > 0x39 && (v6 < 0x660 || (DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v6), v9 = DigitExtended, DigitExtended == -1)))
  {
    v9 = 0;
  }

  else
  {
    v10 = *i;
    if (*i >= 48)
    {
      v4 = i;
      while (1)
      {
        if (v10 > 0x39)
        {
          if (v10 < 0x660)
          {
            goto LABEL_31;
          }

          DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v10);
          if (DigitExtended == -1)
          {
            goto LABEL_31;
          }
        }

        else
        {
          DigitExtended = v10 - 48;
        }

        v9 = (DigitExtended + 10 * v9);
        v11 = v4[1];
        ++v4;
        v10 = v11;
        if (v11 <= 47)
        {
          goto LABEL_31;
        }
      }
    }

    v4 = i;
  }

LABEL_31:
  *a3 = v4;
  return v9;
}

uint64_t TLocaleInfo::stringToUInt(uint64_t a1, signed int *a2, BOOL *a3)
{
  v10 = 0;
  LODWORD(result) = TLocaleInfo::stringToInt(a1, a2, &v10);
  v6 = v10;
  if (v10 == a2)
  {
    result = 0;
    *a3 = 1;
    return result;
  }

  while (1)
  {
    v7 = *v6;
    if (*v6 > 159)
    {
      break;
    }

    if (v7 > 0x20 || ((1 << v7) & 0x100002600) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    ++v6;
  }

  if (v7 >= 12288)
  {
    if (v7 != 65279 && v7 != 12288)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v7 == 160 || v7 == 8203)
  {
    goto LABEL_17;
  }

LABEL_18:
  *a3 = v7 != 0;
  if (v7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t TLocaleInfo::stringToInt(uint64_t DigitExtended, signed int *a2, signed int **a3)
{
  for (i = a2 + 1; ; ++i)
  {
    v6 = *(i - 1);
    if (v6 <= 159)
    {
      break;
    }

    if (v6 >= 12288)
    {
      if (v6 != 65279 && v6 != 12288)
      {
        goto LABEL_17;
      }
    }

    else if (v6 != 160 && v6 != 8203)
    {
      goto LABEL_17;
    }

LABEL_14:
    ;
  }

  if (v6 > 0x2D)
  {
    goto LABEL_17;
  }

  if (((1 << v6) & 0x100002600) != 0)
  {
    goto LABEL_14;
  }

  if (((1 << v6) & 0x280000000000) != 0)
  {
    v8 = v6 == 45;
    v6 = *i;
    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  --i;
LABEL_18:
  v9 = v6 - 48;
  if (v6 < 48 || v6 > 0x39 && (v6 < 0x660 || (DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v6), v9 = DigitExtended, DigitExtended == -1)))
  {
    result = 0;
    *a3 = a2;
  }

  else
  {
    v12 = i[1];
    v11 = i + 1;
    v10 = v12;
    if (v12 >= 48)
    {
      do
      {
        if (v10 > 0x39)
        {
          if (v10 < 0x660)
          {
            break;
          }

          DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v10);
          if (DigitExtended == -1)
          {
            break;
          }
        }

        else
        {
          DigitExtended = v10 - 48;
        }

        v9 = DigitExtended + 10 * v9;
        v13 = v11[1];
        ++v11;
        v10 = v13;
      }

      while (v13 > 47);
    }

    *a3 = v11;
    if (v8)
    {
      return -v9;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

BOOL TLocaleInfo::stringToBool(uint64_t DigitExtended, uint64_t a2, void *a3)
{
  for (i = (a2 + 4); ; ++i)
  {
    v6 = *(i - 1);
    if (v6 > 159)
    {
      break;
    }

    if (v6 > 0x20 || ((1 << v6) & 0x100002600) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    ;
  }

  if (v6 >= 12288)
  {
    if (v6 != 65279 && v6 != 12288)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v6 == 160 || v6 == 8203)
  {
    goto LABEL_17;
  }

LABEL_18:
  *a3 = i - 1;
  v9 = v6 - 48;
  if (v6 < 48 || v6 > 0x39 && (v6 < 0x660 || (DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v6), v9 = DigitExtended, DigitExtended == -1)))
  {
    v12 = wcsncasecmp(i - 1, dword_1B5B16DAC, 4uLL);
    v13 = *a3;
    if (v12 || (TLocaleInfo::isAlpha(v12, *(v13 + 16)) & 1) != 0)
    {
      v14 = wcsncasecmp(v13, dword_1B5B16DC0, 5uLL);
      if (v14)
      {
        goto LABEL_32;
      }

      v15 = (*a3 + 20);
      if (TLocaleInfo::isAlpha(v14, *v15))
      {
        goto LABEL_32;
      }

      result = 0;
      *a3 = v15;
    }

    else
    {
      *a3 = v13 + 16;
      return 1;
    }
  }

  else
  {
    if (v9 <= 1)
    {
      v10 = *i;
      if (*i < 48 || v10 >= 0x3A && (v10 < 0x660 || TLocaleInfo::getDigitExtended(DigitExtended, v10) == -1))
      {
        *a3 = i;
        return v9 != 0;
      }
    }

LABEL_32:
    result = 0;
    *a3 = a2;
  }

  return result;
}

uint64_t TLocaleInfo::isAlpha(uint64_t a1, signed int a2)
{
  LOBYTE(v2) = 0;
  if (BYTE1(a2) > 0x1Eu)
  {
    if (BYTE1(a2) <= 0x2Cu)
    {
      if (BYTE1(a2) == 31)
      {
        if (a2 <= 8188)
        {
          v3 = a2 - 7936;
          if (s_szTableLowercase1F00to1FFC[v3] != a2)
          {
            goto LABEL_101;
          }

          if (a2 <= 8179)
          {
            v4 = &s_szTableUppercase1F00to1FF3;
            goto LABEL_7;
          }
        }

        goto LABEL_85;
      }

      if (BYTE1(a2) != 33)
      {
        if (BYTE1(a2) != 44)
        {
          return v2 & 1;
        }

        if (a2 >> 5 != 355)
        {
          v17 = a2 != 11311 && (a2 - 11264) < 0x5F;
          v18 = (a2 - 11499) < 4 || v17;
          if ((a2 - 11392) >= 0xF)
          {
            LOBYTE(v2) = v18;
          }

          else
          {
            LOBYTE(v2) = 1;
          }

          return v2 & 1;
        }

        v9 = a2 - 11360;
        if (s_szTableLowercase2C60to2C7F[a2 - 11360] != a2)
        {
          goto LABEL_101;
        }

        v10 = &s_szTableUppercase2C60to2C76;
LABEL_49:
        v2 = v10[v9];
        goto LABEL_50;
      }

      LOBYTE(v2) = 1;
      if ((a2 - 8526) <= 0x36 && ((1 << (a2 - 78)) & 0x60000000000001) != 0)
      {
        return v2 & 1;
      }

      v12 = a2 == 8498;
    }

    else
    {
      if (BYTE1(a2) <= 0xA6u)
      {
        LOBYTE(v2) = a2 < 11558;
        v5 = (a2 - 42560) < 0x2E || (a2 - 42624) < 0x18;
        if (BYTE1(a2) != 166)
        {
          v5 = 0;
        }

        v6 = BYTE1(a2) == 45;
        goto LABEL_29;
      }

      if (BYTE1(a2) == 167)
      {
        if (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1B5B14710, vaddq_s32(vdupq_n_s32(a2), xmmword_1B5B14700)))))
        {
          goto LABEL_101;
        }

        v2 = 0xC001u >> (a2 - 125);
        if ((a2 - 42877) >= 0x10)
        {
          LOBYTE(v2) = 0;
        }

        return v2 & 1;
      }

      LOBYTE(v2) = (a2 - 65313) < 0x1A || (a2 - 65345) < 0x1A;
      v12 = BYTE1(a2) == 255;
    }

    if (!v12)
    {
      LOBYTE(v2) = 0;
    }

    return v2 & 1;
  }

  if (BYTE1(a2) > 3u)
  {
    if (BYTE1(a2) - 4 < 2)
    {
      LOBYTE(v2) = 1;
      if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1B5B14730, vaddq_s32(vdupq_n_s32(a2), xmmword_1B5B14720)))) & 1) == 0)
      {
        v13 = (a2 - 1329) < 0x26 || (a2 - 1377) < 0x26;
        if (a2 == 1231)
        {
          v13 = 1;
        }

        v14 = a2 == 1216 || v13;
        if ((a2 - 1024) >= 0x60)
        {
          LOBYTE(v2) = v14;
        }

        else
        {
          LOBYTE(v2) = 1;
        }
      }

      return v2 & 1;
    }

    LOBYTE(v2) = (a2 - 4256) < 0x26;
    v8 = a2 == 7838 || a2 == 7835;
    v5 = (a2 - 7840) < 0xFFFFFFF6 || v8;
    if (BYTE1(a2) != 30)
    {
      v5 = 0;
    }

    v6 = BYTE1(a2) == 16;
LABEL_29:
    if (!v6)
    {
      LOBYTE(v2) = v5;
    }

    return v2 & 1;
  }

  if (BYTE1(a2) > 1u)
  {
    if (BYTE1(a2) == 2)
    {
      if (a2 <= 658)
      {
        v3 = a2 - 256;
        if (s_szTableUppercase0100to0292[v3] != a2)
        {
          goto LABEL_101;
        }

        if (a2 <= 591)
        {
          v4 = s_szTableLowercase0100to024F;
          goto LABEL_7;
        }
      }
    }

    else
    {
      v9 = a2 - 880;
      if (a2 >= 880)
      {
        if (s_szTableLowercase0370to03FF[v9] != a2)
        {
          goto LABEL_101;
        }

        v10 = &s_szTableUppercase0370to03FF;
        goto LABEL_49;
      }
    }

LABEL_85:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (BYTE1(a2))
  {
    v3 = a2 - 256;
    if (s_szTableLowercase0100to024F[v3] == a2)
    {
      v4 = s_szTableUppercase0100to0292;
LABEL_7:
      v2 = v4[v3];
LABEL_50:
      LOBYTE(v2) = v2 != a2;
      return v2 & 1;
    }

LABEL_101:
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  LOBYTE(v2) = (a2 & 0xFFFFFFC0) == 0xC0 && (a2 & 0xFFFFFFDF) != 215;
  if ((a2 & 0xFFFFFFDF) - 65 < 0x1A)
  {
    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

uint64_t TLocaleInfo::stringToBool(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v11 = 0;
  v5 = TLocaleInfo::stringToBool(a1, a2, &v11);
  v6 = v11;
  if (v11 != a2)
  {
    while (1)
    {
      v7 = *v6;
      if (*v6 > 159)
      {
        if (v7 >= 12288)
        {
          if (v7 != 65279 && v7 != 12288)
          {
            goto LABEL_18;
          }
        }

        else if (v7 != 160 && v7 != 8203)
        {
LABEL_18:
          *a3 = v7 != 0;
          return (v7 == 0) & v5;
        }
      }

      else if (v7 > 0x20 || ((1 << v7) & 0x100002600) == 0)
      {
        goto LABEL_18;
      }

      ++v6;
    }
  }

  result = 0;
  *a3 = 1;
  return result;
}

uint64_t TLocaleInfo::toNarrow(uint64_t a1, uint64_t a2)
{
  if (a2 == 12288)
  {
    return 32;
  }

  result = a2;
  if (a2 >= 65281)
  {
    if (a2 > 0xFF5E)
    {
      if (a2 <= 65505)
      {
        if (a2 > 65503)
        {
          if (a2 == 65504)
          {
            return 162;
          }

          else
          {
            return 163;
          }
        }

        else if (a2 == 65375)
        {
          return 10629;
        }

        else if (a2 == 65376)
        {
          return 10630;
        }
      }

      else if (a2 <= 65507)
      {
        if (a2 == 65506)
        {
          return 172;
        }

        else
        {
          return 175;
        }
      }

      else
      {
        switch(a2)
        {
          case 0xFFE4:
            return 166;
          case 0xFFE5:
            return 165;
          case 0xFFE6:
            return 8361;
        }
      }
    }

    else
    {
      return (a2 - 65248);
    }
  }

  return result;
}

uint64_t TLocaleInfo::normalizeWidth(uint64_t a1, uint64_t a2)
{
  if ((a2 - 65377) > 0x7B)
  {
    return TLocaleInfo::toNarrow(a1, a2);
  }

  else
  {
    return s_szTableNormalizeWidthFF61toFFDC[(a2 - 65377)];
  }
}

uint64_t TLocaleInfo::isUpper(uint64_t a1, int a2)
{
  if (BYTE1(a2) > 0x1Du)
  {
    if (BYTE1(a2) <= 0x2Bu)
    {
      if (BYTE1(a2) == 30)
      {
        if (a2 >> 5 >= 0xF5)
        {
          v12 = (a2 & 1) == 0;
        }

        else
        {
          v12 = a2 == 7838;
        }

        if (a2 <= 7829)
        {
          return (a2 & 1) == 0;
        }

        else
        {
          return v12;
        }
      }

      if (BYTE1(a2) == 31)
      {
        if (a2 <= 8188)
        {
          v2 = s_szTableLowercase1F00to1FFC[a2 - 7936];
          return v2 != a2;
        }

        return 0;
      }

      v4 = a2 == 8498 || a2 == 8579;
      v5 = BYTE1(a2) == 33;
    }

    else
    {
      if (BYTE1(a2) <= 0xA6u)
      {
        if (BYTE1(a2) != 44)
        {
          v3 = (a2 - 42624) <= 0x17 && (a2 & 1) == 0;
          if ((a2 - 42560) <= 0x2D)
          {
            v4 = (a2 & 1) == 0;
          }

          else
          {
            v4 = v3;
          }

          v5 = BYTE1(a2) == 166;
          return v5 && v4;
        }

        if (a2 >> 5 != 355)
        {
          if ((a2 - 11499) <= 3)
          {
            v13 = (a2 & 1) == 0;
          }

          else
          {
            v13 = (a2 - 11264) < 0x2F;
          }

          if ((a2 - 11392) <= 0xE)
          {
            return (a2 & 1) == 0;
          }

          else
          {
            return v13;
          }
        }

        v10 = a2 - 11360;
        v11 = s_szTableLowercase2C60to2C7F;
        goto LABEL_66;
      }

      if (BYTE1(a2) == 167)
      {
        if ((a2 - 42786) > 0xD && (a2 - 42802) > 0x3D)
        {
          if ((a2 - 42873) <= 3)
          {
            return (a2 & 1) == 0;
          }

          if ((a2 - 42878) > 9)
          {
            return a2 == 42877 || a2 == 42891;
          }
        }

        return a2 & 1;
      }

      v4 = (a2 - 65313) < 0x1A;
      v5 = BYTE1(a2) == 255;
    }

    return v5 && v4;
  }

  if (BYTE1(a2) > 2u)
  {
    if (BYTE1(a2) - 4 >= 2)
    {
      if (BYTE1(a2) != 3)
      {
        v4 = (a2 - 4256) < 0x26;
        v5 = BYTE1(a2) == 16;
        return v5 && v4;
      }

      v10 = a2 - 880;
      if (a2 < 880)
      {
        return 0;
      }

      v11 = s_szTableLowercase0370to03FF;
LABEL_66:
      v2 = v11[v10];
      return v2 != a2;
    }

    if ((a2 - 1120) <= 0x21 || (a2 - 1162) <= 0x35)
    {
      return (a2 & 1) == 0;
    }

    if ((a2 - 1217) > 0xD)
    {
      if ((a2 - 1232) > 0x55)
      {
        result = 1;
        if (a2 != 1216)
        {
          return (a2 - 1024) < 0x30 || (a2 - 1329) < 0x26;
        }

        return result;
      }

      return (a2 & 1) == 0;
    }

    return a2 & 1;
  }

  if (BYTE1(a2))
  {
    if (BYTE1(a2) == 1 || a2 <= 591)
    {
      v2 = s_szTableLowercase0100to024F[a2 - 256];
      return v2 != a2;
    }

    return 0;
  }

  v9 = a2 != 215 && (a2 - 192) < 0x1F;
  return (a2 - 65) < 0x1A || v9;
}

uint64_t TLocaleInfo::isLower(uint64_t a1, int a2)
{
  result = 0;
  if (BYTE1(a2) > 0x1Eu)
  {
    if (BYTE1(a2) <= 0x2Cu)
    {
      if (BYTE1(a2) == 31)
      {
        if (a2 <= 8179)
        {
          v3 = s_szTableUppercase1F00to1FF3[a2 - 7936];
          return v3 != a2;
        }

        return 0;
      }

      if (BYTE1(a2) == 33)
      {
        return a2 == 8526 || a2 == 8580;
      }

      if (BYTE1(a2) != 44)
      {
        return result;
      }

      v9 = a2 - 11360;
      if ((a2 - 11360) <= 0x16)
      {
        v10 = &s_szTableUppercase2C60to2C76;
        goto LABEL_71;
      }

      if ((a2 - 11392) > 0xE && (a2 - 11499) > 3)
      {
        return (a2 - 11312) < 0x2F;
      }
    }

    else
    {
      if (BYTE1(a2) <= 0xA6u)
      {
        if ((a2 - 42624) <= 0x17)
        {
          v4 = a2 & 1;
        }

        else
        {
          v4 = 0;
        }

        if ((a2 - 42560) <= 0x2D)
        {
          v5 = a2 & 1;
        }

        else
        {
          v5 = v4;
        }

        if (BYTE1(a2) != 166)
        {
          v5 = 0;
        }

        if (BYTE1(a2) == 45)
        {
          return a2 < 11558;
        }

        else
        {
          return v5;
        }
      }

      if (BYTE1(a2) != 167)
      {
        v7 = (a2 - 65345) < 0x1A;
        v8 = BYTE1(a2) == 255;
LABEL_36:
        if (v8)
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }

      if ((a2 - 42786) > 0xD && (a2 - 42802) > 0x3D)
      {
        if ((a2 - 42873) > 3)
        {
          if ((a2 - 42878) <= 9)
          {
            return a2 & 1;
          }

          return a2 == 42892;
        }

        return (a2 & 1) == 0;
      }
    }

    return a2 & 1;
  }

  if (BYTE1(a2) > 2u)
  {
    if (BYTE1(a2) - 4 >= 2)
    {
      if (BYTE1(a2) != 3)
      {
        if (a2 >> 5 >= 0xF5)
        {
          v6 = a2 & 1;
        }

        else
        {
          v6 = a2 == 7835;
        }

        if (a2 <= 7829)
        {
          v7 = a2 & 1;
        }

        else
        {
          v7 = v6;
        }

        v8 = BYTE1(a2) == 30;
        goto LABEL_36;
      }

      v9 = a2 - 880;
      if (a2 < 880)
      {
        return 0;
      }

      v10 = &s_szTableUppercase0370to03FF;
LABEL_71:
      v3 = v10[v9];
      return v3 != a2;
    }

    if ((a2 - 1120) > 0x21 && (a2 - 1162) > 0x35)
    {
      if ((a2 - 1217) > 0xD)
      {
        if ((a2 - 1232) > 0x55)
        {
          result = 1;
          if (a2 != 1231)
          {
            return (a2 - 1072) < 0x30 || (a2 - 1377) < 0x26;
          }

          return result;
        }

        return a2 & 1;
      }

      return (a2 & 1) == 0;
    }

    return a2 & 1;
  }

  if (BYTE1(a2))
  {
    if (BYTE1(a2) == 1 || a2 <= 658)
    {
      v3 = s_szTableUppercase0100to0292[a2 - 256];
      return v3 != a2;
    }

    return 0;
  }

  v12 = a2 != 247 && (a2 - 223) < 0x21;
  return (a2 - 97) < 0x1A || v12;
}

uint64_t TLocaleInfo::toLower(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 <= 127)
  {
    if (a2 == 73 && (*(a1 + 80) & 1) != 0)
    {
      return 305;
    }

    else
    {
      return __tolower(a2);
    }
  }

  if (!TLocaleInfo::isUpper(a1, a2))
  {
    return v2;
  }

  if (BYTE1(v2) <= 0x1Du)
  {
    if (BYTE1(v2) <= 2u)
    {
      if (BYTE1(v2))
      {
        if (BYTE1(v2) == 1 || v2 <= 0x24F)
        {
          return s_szTableLowercase0100to024F[v2 - 256];
        }
      }

      else if (v2 != 215 && (v2 - 192) <= 0x1E)
      {
        return v2 | 0x20;
      }

      return v2;
    }

    if (BYTE1(v2) - 4 >= 2)
    {
      if (BYTE1(v2) != 3)
      {
        if (BYTE1(v2) == 16 && (v2 - 4256) <= 0x25)
        {
          return (v2 + 7264);
        }

        return v2;
      }

      v4 = v2 - 880;
      if (v2 < 0x370)
      {
        return v2;
      }

      v5 = s_szTableLowercase0370to03FF;
      return v5[v4];
    }

    if ((v2 - 1120) <= 0x21 || (v2 - 1162) <= 0x35)
    {
      return v2 | 1;
    }

    if ((v2 - 1217) > 0xD)
    {
      if ((v2 - 1232) > 0x55)
      {
        if ((v2 & 0x7FFFFFF0) == 0x400)
        {
          return v2 | 0x50;
        }

        if ((v2 - 1040) > 0x1F)
        {
          if (v2 == 1216)
          {
            return 1231;
          }

          if ((v2 - 1329) > 0x25)
          {
            return v2;
          }

          return (v2 + 48);
        }

        return (v2 + 32);
      }

      return v2 | 1;
    }

    return (v2 & 1) + v2;
  }

  if (BYTE1(v2) <= 0x2Bu)
  {
    switch(BYTE1(v2))
    {
      case 0x1Eu:
        if (v2 >> 1 <= 0xF4A || v2 >> 5 >= 0xF5)
        {
          return v2 | 1;
        }

        if (v2 == 7838)
        {
          return 223;
        }

        break;
      case 0x1Fu:
        if (v2 <= 0x1FFC)
        {
          return s_szTableLowercase1F00to1FFC[v2 - 7936];
        }

        break;
      case 0x21u:
        if (v2 == 8498)
        {
          return 8526;
        }

        else if (v2 == 8579)
        {
          return 8580;
        }

        break;
    }
  }

  else
  {
    if (BYTE1(v2) <= 0xA6u)
    {
      if (BYTE1(v2) == 44)
      {
        if ((v2 & 0x7FFFFFE0) == 0x2C60)
        {
          v4 = v2 - 11360;
          v5 = s_szTableLowercase2C60to2C7F;
          return v5[v4];
        }

        if ((v2 - 11392) > 0xE && (v2 - 11499) > 3)
        {
          if ((v2 - 11264) > 0x2E)
          {
            return v2;
          }

          return (v2 + 48);
        }
      }

      else if (BYTE1(v2) != 166 || (v2 - 42560) > 0x2D && (v2 - 42624) > 0x17)
      {
        return v2;
      }

      return v2 | 1;
    }

    if (BYTE1(v2) != 167)
    {
      if (BYTE1(v2) != 255 || (v2 - 65313) > 0x19)
      {
        return v2;
      }

      return (v2 + 32);
    }

    if ((v2 - 42786) <= 0xD || (v2 - 42802) <= 0x3D)
    {
      return (v2 & 1) + v2;
    }

    if ((v2 - 42873) <= 3)
    {
      return v2 | 1;
    }

    if ((v2 - 42878) <= 9)
    {
      return (v2 & 1) + v2;
    }

    if (v2 == 42877)
    {
      return 7545;
    }

    else if (v2 == 42891)
    {
      return 42892;
    }
  }

  return v2;
}

double TLocaleInfo::stringToFloat(int a1, __int32 *a2, BOOL *a3)
{
  v16 = 0.0;
  v5 = wcslen(a2);
  if (v5 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 5)
  {
    if ((v5 | 1) == 5)
    {
      v7 = 7;
    }

    else
    {
      v7 = (v5 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v7);
  }

  *(&__p.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__p, a2, 4 * v5);
  }

  __p.__r_.__value_.__s.__data_[v6] = 0;
  std::wistringstream::basic_istringstream[abi:ne200100](v11, &__p, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  MEMORY[0x1B8C84B40](v11, &v16);
  *a3 = (*(&v13[1].__locale_ + *(v11[0] - 24)) & 7) != 2;
  v8 = v16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = (MEMORY[0x1E69E5540] + 16);
  std::locale::~locale(v13);
  std::wistream::~wistream();
  MEMORY[0x1B8C85210](&v15);
  return v8;
}

void sub_1B56DCDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x1B8C85210](v15 + 120);
  _Unwind_Resume(a1);
}

uint64_t std::wistringstream::basic_istringstream[abi:ne200100](uint64_t a1, const std::wstring *a2, int a3)
{
  *(a1 + 168) = 0;
  *a1 = &unk_1F2D296F8;
  *(a1 + 8) = 0;
  *(a1 + 120) = &unk_1F2D29720;
  std::ios_base::init((a1 + 120), (a1 + 16));
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  std::wstringbuf::basic_stringbuf[abi:ne200100](a1 + 16, a2, a3 | 8);
  return a1;
}

void sub_1B56DCED8(_Unwind_Exception *a1)
{
  std::wistream::~wistream();
  MEMORY[0x1B8C85210](v1);
  _Unwind_Resume(a1);
}

uint64_t std::wistringstream::~wistringstream(uint64_t a1)
{
  MEMORY[0x1B8C85210](v2 + 120);
  return a1;
}

uint64_t TLocaleInfo::stringToULong(uint64_t a1, uint64_t a2, BOOL *a3, int a4)
{
  for (i = (a2 + 4); ; ++i)
  {
    v7 = *(i - 1);
    {
      operator new();
    }

    if (v7 > 159)
    {
      break;
    }

    v8 = v7 > 0x20 || ((1 << v7) & 0x100002600) == 0;
    if (v8)
    {
      goto LABEL_21;
    }

LABEL_18:
    ;
  }

  if (v7 >= 12288)
  {
    if (v7 != 65279 && v7 != 12288)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v7 == 160 || v7 == 8203)
  {
    goto LABEL_18;
  }

LABEL_21:
  v10 = *(i - 1);
  if (!a4)
  {
    {
      operator new();
    }

    v12 = v10 - 48;
    if (v10 >= 48)
    {
      if (v10 <= 0x39)
      {
        goto LABEL_34;
      }

      if (v10 >= 0x660)
      {
        LODWORD(v12) = TLocaleInfo::getDigitExtended(v12, v10);
        goto LABEL_33;
      }
    }

LABEL_83:
    result = 0;
    *a3 = 1;
    return result;
  }

  {
    operator new();
  }

  LODWORD(v12) = v10 - 48;
  if (v10 < 48)
  {
    goto LABEL_83;
  }

  if (v10 <= 0x39)
  {
    goto LABEL_34;
  }

  if (v10 < 0x41)
  {
    goto LABEL_83;
  }

  if (v10 <= 0x46)
  {
    LODWORD(v12) = v10 - 55;
    goto LABEL_34;
  }

  if (v10 - 97 >= 6)
  {
    goto LABEL_83;
  }

  LODWORD(v12) = v10 - 87;
LABEL_33:
  if (v12 == -1)
  {
    goto LABEL_83;
  }

LABEL_34:
  v13 = v12;
  v14 = *i;
  if (!*i)
  {
    goto LABEL_59;
  }

  if (a4)
  {
    v15 = 16;
  }

  else
  {
    v15 = 10;
  }

  while (2)
  {
    if (a4)
    {
      {
        operator new();
      }

      LODWORD(v17) = v14 - 48;
      if (v14 < 48)
      {
        break;
      }

      if (v14 <= 0x39)
      {
        goto LABEL_53;
      }

      if (v14 < 0x41)
      {
        break;
      }

      if (v14 <= 0x46)
      {
        LODWORD(v17) = v14 - 55;
        goto LABEL_53;
      }

      if (v14 - 97 >= 6)
      {
        break;
      }

      LODWORD(v17) = v14 - 87;
      goto LABEL_52;
    }

    {
      operator new();
    }

    v17 = v14 - 48;
    if (v14 >= 48)
    {
      if (v14 <= 0x39)
      {
LABEL_53:
        v13 = v13 * v15 + v17;
        v18 = i[1];
        ++i;
        v14 = v18;
        if (!v18)
        {
          break;
        }

        continue;
      }

      if (v14 < 0x660)
      {
        break;
      }

      LODWORD(v17) = TLocaleInfo::getDigitExtended(v17, v14);
LABEL_52:
      if (v17 == -1)
      {
        break;
      }

      goto LABEL_53;
    }

    break;
  }

LABEL_59:
  while (2)
  {
    v19 = *i;
    {
      operator new();
    }

    if (v19 <= 159)
    {
      if (v19 > 0x20 || ((1 << v19) & 0x100002600) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_75;
    }

    if (v19 >= 12288)
    {
      if (v19 != 65279 && v19 != 12288)
      {
        goto LABEL_78;
      }

LABEL_75:
      ++i;
      continue;
    }

    break;
  }

  if (v19 == 160 || v19 == 8203)
  {
    goto LABEL_75;
  }

LABEL_78:
  v8 = *i == 0;
  *a3 = *i != 0;
  if (v8)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void sub_1B56DD354(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TLocaleInfo::valueToString(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a2;
  if (a4)
  {
    v6 = 16;
  }

  else
  {
    v6 = 10;
  }

  if (v6 <= a2)
  {
    v7 = 1;
    v8 = a2;
    do
    {
      v8 /= v6;
      v7 *= v6;
    }

    while (v6 <= v8);
    if (v7)
    {
      do
      {
        v9 = (v5 / v7) | 0x30;
        if (v5 / v7 >= 0xA)
        {
          v9 = v5 / v7 + 55;
        }

        v12 = v9;
        TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v12, 1uLL);
        v5 %= v7;
        v7 /= v6;
      }

      while (v7 > 1);
    }
  }

  v10 = v5 | 0x30;
  if (v5 >= 0xA)
  {
    v10 = v5 + 55;
  }

  v13 = v10;
  return TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v13, 1uLL);
}

uint64_t std::wistringstream::~wistringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5540] + 16;
  std::locale::~locale((a1 + 24));

  return std::wistream::~wistream();
}

void virtual thunk tostd::wistringstream::~wistringstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  if (SHIBYTE(v1[12].__locale_) < 0)
  {
    operator delete(v1[10].__locale_);
  }

  v1[2].__locale_ = (MEMORY[0x1E69E5540] + 16);
  std::locale::~locale(v1 + 3);
  std::wistream::~wistream();

  JUMPOUT(0x1B8C85210);
}

{
  v1 = (a1 + *(*a1 - 24));
  if (SHIBYTE(v1[12].__locale_) < 0)
  {
    operator delete(v1[10].__locale_);
  }

  v1[2].__locale_ = (MEMORY[0x1E69E5540] + 16);
  std::locale::~locale(v1 + 3);
  std::wistream::~wistream();
  MEMORY[0x1B8C85210](&v1[15]);

  JUMPOUT(0x1B8C85350);
}

void std::wistringstream::~wistringstream(uint64_t a1)
{
  v2 = a1 + 120;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5540] + 16;
  std::locale::~locale((a1 + 24));
  std::wistream::~wistream();
  MEMORY[0x1B8C85210](v2);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::wstringbuf::~wstringbuf(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x1E69E5540] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void std::wstringbuf::~wstringbuf(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x1E69E5540] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x1B8C85350);
}

std::wstringbuf::pos_type *__cdecl std::wstringbuf::seekoff(std::wstringbuf::pos_type *__return_ptr retstr, std::wstringbuf::pos_type *this, std::wstringbuf::off_type a3, std::ios_base::seekdir __way, std::ios_base::openmode __wch)
{
  v5 = *(&this->__st_._mbstateL + 11);
  v6 = *(&this->__st_._mbstateL + 6);
  if (v5 < v6)
  {
    *(&this->__st_._mbstateL + 11) = v6;
    v5 = v6;
  }

  if ((__wch & 0x18) == 0 || __way == cur && (__wch & 0x18) == 0x18)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    v9 = 0;
    if (__way)
    {
      goto LABEL_12;
    }

LABEL_17:
    v11 = __way;
    goto LABEL_21;
  }

  v8 = &this->__st_._mbstateL + 8;
  if (this->__st_.__mbstate8[87] < 0)
  {
    v8 = *v8;
  }

  v9 = (v5 - v8) >> 2;
  if (__way == beg)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (__way == end)
  {
    v11 = v9;
  }

  else
  {
    if (__way != cur)
    {
LABEL_6:
      v7 = -1;
      goto LABEL_7;
    }

    if ((__wch & 8) != 0)
    {
      v10 = *(&this->__st_._mbstateL + 3) - *(&this->__st_._mbstateL + 2);
    }

    else
    {
      v10 = v6 - *(&this->__st_._mbstateL + 5);
    }

    v11 = v10 >> 2;
  }

LABEL_21:
  v7 = -1;
  v12 = v11 + a3;
  if (v12 >= 0 && v9 >= v12 && (!v12 || ((__wch & 8) == 0 || *(&this->__st_._mbstateL + 3)) && ((__wch & 0x10) == 0 || v6)))
  {
    if ((__wch & 8) != 0)
    {
      *(&this->__st_._mbstateL + 3) = *(&this->__st_._mbstateL + 2) + 4 * v12;
      *(&this->__st_._mbstateL + 4) = v5;
    }

    if ((__wch & 0x10) != 0)
    {
      *(&this->__st_._mbstateL + 6) = *(&this->__st_._mbstateL + 5) + 4 * v12;
    }

    v7 = v12;
  }

LABEL_7:
  *(&retstr->__st_._mbstateL + 6) = 0u;
  *(&retstr->__st_._mbstateL + 7) = 0u;
  *(&retstr->__st_._mbstateL + 4) = 0u;
  *(&retstr->__st_._mbstateL + 5) = 0u;
  *(&retstr->__st_._mbstateL + 2) = 0u;
  *(&retstr->__st_._mbstateL + 3) = 0u;
  *retstr->__st_.__mbstate8 = 0u;
  *(&retstr->__st_._mbstateL + 1) = 0u;
  retstr->__off_ = v7;
  return this;
}

std::wstringbuf::int_type std::wstringbuf::underflow(std::wstringbuf *this)
{
  hm = this->__hm_;
  nout = this->__nout_;
  if (hm < nout)
  {
    this->__hm_ = nout;
    hm = nout;
  }

  if ((this->__mode_ & 8) == 0)
  {
    return -1;
  }

  einp = this->__einp_;
  if (einp < hm)
  {
    this->__einp_ = hm;
    einp = hm;
  }

  ninp = this->__ninp_;
  if (ninp < einp)
  {
    return *ninp;
  }

  else
  {
    return -1;
  }
}

std::wstringbuf::int_type std::wstringbuf::pbackfail(std::wstringbuf *this, std::wstringbuf::int_type __c)
{
  hm = this->__hm_;
  nout = this->__nout_;
  if (hm < nout)
  {
    this->__hm_ = nout;
    hm = nout;
  }

  ninp = this->__ninp_;
  if (this->__binp_ < ninp)
  {
    if (__c == -1)
    {
      __c = 0;
      v5 = ninp - 1;
      goto LABEL_10;
    }

    if ((this->__mode_ & 0x10) != 0 || *(ninp - 1) == __c)
    {
      *(ninp - 1) = __c;
      v5 = ninp - 1;
LABEL_10:
      this->__ninp_ = v5;
      this->__einp_ = hm;
      return __c;
    }
  }

  return -1;
}

std::wstringbuf::int_type std::wstringbuf::overflow(std::wstringbuf *this, std::wstringbuf::int_type __c)
{
  if (__c == -1)
  {
    LODWORD(v2) = 0;
    return v2;
  }

  v2 = *&__c;
  binp = this->__binp_;
  ninp = this->__ninp_;
  nout = this->__nout_;
  eout = this->__eout_;
  if (nout != eout)
  {
    hm = this->__hm_;
    goto LABEL_13;
  }

  if ((this->__mode_ & 0x10) == 0)
  {
    LODWORD(v2) = -1;
    return v2;
  }

  bout = this->__bout_;
  v10 = this->__hm_;
  p_str = &this->__str_;
  std::wstring::push_back(&this->__str_, 0);
  if (SHIBYTE(this->__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = (this->__str_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v12 = 4;
  }

  std::wstring::resize(&this->__str_, v12, 0);
  size = SHIBYTE(this->__str_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    p_str = this->__str_.__r_.__value_.__l.__data_;
    size = this->__str_.__r_.__value_.__l.__size_;
  }

  eout = (p_str + 4 * size);
  nout = (p_str + 4 * (nout - bout));
  this->__bout_ = p_str;
  this->__nout_ = nout;
  this->__eout_ = eout;
  hm = (p_str + v10 - bout);
LABEL_13:
  if (nout + 1 >= hm)
  {
    hm = nout + 1;
  }

  this->__hm_ = hm;
  if ((this->__mode_ & 8) != 0)
  {
    v14 = &this->__str_;
    if (SHIBYTE(this->__str_.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = v14->__r_.__value_.__r.__words[0];
    }

    this->__binp_ = v14;
    this->__ninp_ = (v14 + ninp - binp);
    this->__einp_ = hm;
  }

  if (nout != eout)
  {
    this->__nout_ = nout + 1;
    *nout = v2;
    return v2;
  }

  overflow = this->overflow;

  return (overflow)(this, v2);
}

void sub_1B56DDD3C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1B56DDC14);
}

uint64_t std::wstringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::wstring *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5540] + 16;
  MEMORY[0x1B8C850B0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::wstring::operator=((a1 + 64), a2);
  std::wstringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1B56DDDF4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::wstringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  v7 = v4 + 4 * v5;
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v7;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v7;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v7;
    if ((v3 & 0x80000000) != 0)
    {
      v8 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v8 = 4;
    }

    std::wstring::resize(v2, v8, 0);
    v9 = *(a1 + 87);
    if (v9 < 0)
    {
      v9 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + 4 * v9;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v10 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v11 = (v10 + ((v5 - 0x80000000 - v10) >> 1)) >> 30;
        v4 = (v4 + 0x1FFFFFFFCLL * v11 + 0x1FFFFFFFCLL);
        v5 = v5 - 0x7FFFFFFF - 0x7FFFFFFF * v11;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + 4 * v5;
      }
    }
  }
}

BOOL WebCore::isCharacterSmartReplaceExempt(WebCore *this, int a2)
{
  {
    WebCore::getSmartSet(BOOL)::preSmartSet = WebCore::getSmartSetImpl(1);
  }

  {
    WebCore::getSmartSet(BOOL)::postSmartSet = WebCore::getSmartSetImpl(0);
  }

  v4 = &WebCore::getSmartSet(BOOL)::preSmartSet;
  if (!a2)
  {
    v4 = &WebCore::getSmartSet(BOOL)::postSmartSet;
  }

  return MEMORY[0x1B8C87400](*v4, this) != 0;
}

uint64_t WebCore::getSmartSetImpl(WebCore *this)
{
  v1 = this;
  v11 = 0;
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(&__dst, "[");
  v2 = uset_openPattern();
  if (v11 >= 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to create uset with patterns: white space and new line");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = v2;
  MEMORY[0x1B8C873E0](v2, 4352, 4607);
  MEMORY[0x1B8C873E0](v3, 11904, 12255);
  MEMORY[0x1B8C873E0](v3, 12272, 12735);
  MEMORY[0x1B8C873E0](v3, 12800, 42191);
  MEMORY[0x1B8C873E0](v3, 44032, 55215);
  MEMORY[0x1B8C873E0](v3, 63744, 64095);
  MEMORY[0x1B8C873E0](v3, 65072, 65103);
  MEMORY[0x1B8C873E0](v3, 65280, 65519);
  MEMORY[0x1B8C873E0](v3, 0x20000, 173782);
  MEMORY[0x1B8C873E0](v3, 194560, 195101);
  if (v1)
  {
    std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(&__p, "(");
    WebCore::addAllCodePoints(v3, &__p);
  }

  else
  {
    std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(&__p, L")].,;:?'!%*-/}");
    WebCore::addAllCodePoints(v3, &__p);
    if (v8 < 0)
    {
      operator delete(__p);
    }

    std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(&__p, L"[:P:]");
    v4 = uset_openPattern();
    MEMORY[0x1B8C873D0](v3, v4);
    uset_close();
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(__dst);
  }

  return v3;
}

void sub_1B56DE27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(_BYTE *__dst, char *__src)
{
  if (*__src)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *&__src[v4 + 2];
      v4 += 2;
      --v3;
    }

    while (v5);
    v6 = -v3;
    if (-v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 >= 0xB)
    {
      if ((v6 | 3) == 0xB)
      {
        v8 = 13;
      }

      else
      {
        v8 = (v6 | 3) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(__dst, v8);
    }

    __dst[23] = v6;
    v7 = __dst;
    if (v3)
    {
      memmove(__dst, __src, v4);
      goto LABEL_15;
    }

    v6 = 0;
  }

  else
  {
    v6 = 0;
    __dst[23] = 0;
  }

  v7 = __dst;
LABEL_15:
  *&v7[2 * v6] = 0;
  return __dst;
}

uint64_t WebCore::addAllCodePoints(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a2 + 23);
  }

  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = v2 >> 63;
    do
    {
      if (v7)
      {
        v8 = *a2;
      }

      else
      {
        v8 = a2;
      }

      result = MEMORY[0x1B8C873C0](v5, *(v8 + v6++));
      v9 = *(a2 + 23);
      v7 = v9 >> 63;
      if ((v9 & 0x80000000) != 0)
      {
        v9 = a2[1];
      }
    }

    while (v6 < v9);
  }

  return result;
}

void quasar::ConvertLocaleToThreeLetterLocale(const void **a1@<X0>, std::string *a2@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[8],0>(&v33, "ar_AE", "ara-XWW");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[8],0>(v36, "zh_CN", "cmn-CHN");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[8],0>(v38, "zh_TW", "cmn-TWN");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[8],0>(v40, "nb_NO", "nor-NOR");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[8],0>(v41, "zh_HK", "yue-HKG");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[8],0>(v42, "zh_MO", "yue-MAC");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[8],0>(v43, "ms_MY", "zlm-MYS");
  std::map<std::string,std::string>::map[abi:ne200100](&v31, &v33, 7);
  v4 = 336;
  do
  {
    v5 = (&v33 + v4);
    if (*(&v33 + v4 - 1) < 0)
    {
      operator delete(*(v5 - 3));
    }

    if (*(v5 - 25) < 0)
    {
      operator delete(*(v5 - 6));
    }

    v4 -= 48;
  }

  while (v4);
  if (&v32 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v31, a1))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    ISO3Language = uloc_getISO3Language();
    ISO3Country = uloc_getISO3Country();
    if (ISO3Language)
    {
      v10 = ISO3Country;
      if (ISO3Country)
      {
        MEMORY[0x1B8C84820](&v28, ISO3Language);
        MEMORY[0x1B8C84820](&v25, v10);
      }
    }

    v11 = HIBYTE(v30);
    if (v30 < 0)
    {
      v11 = v29;
    }

    if (!v11)
    {
      goto LABEL_39;
    }

    v12 = HIBYTE(v27);
    if (v27 < 0)
    {
      v12 = v26;
    }

    if (!v12)
    {
LABEL_39:
      memset(v42, 0, 32);
      memset(v41, 0, sizeof(v41));
      memset(v40, 0, sizeof(v40));
      v39 = 0u;
      v37 = 0u;
      memset(v38, 0, sizeof(v38));
      v35 = 0u;
      memset(v36, 0, sizeof(v36));
      v33 = 0u;
      v34 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v33);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Unable to resolve 3-letter locale for ", 38);
      v21 = *(a1 + 23);
      if (v21 >= 0)
      {
        v22 = a1;
      }

      else
      {
        v22 = *a1;
      }

      if (v21 >= 0)
      {
        v23 = *(a1 + 23);
      }

      else
      {
        v23 = a1[1];
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ".", 1);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v33);
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v33);
    if (v30 >= 0)
    {
      v13 = &v28;
    }

    else
    {
      v13 = v28;
    }

    if (v30 >= 0)
    {
      v14 = HIBYTE(v30);
    }

    else
    {
      v14 = v29;
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "-", 1);
    if (v27 >= 0)
    {
      v17 = &v25;
    }

    else
    {
      v17 = v25;
    }

    if (v27 >= 0)
    {
      v18 = HIBYTE(v27);
    }

    else
    {
      v18 = v26;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
    std::stringbuf::str();
    *&v33 = *MEMORY[0x1E69E54D8];
    v19 = *(MEMORY[0x1E69E54D8] + 72);
    *(&v33 + *(v33 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    *&v34 = v19;
    *(&v34 + 1) = MEMORY[0x1E69E5548] + 16;
    if ((v38[15] & 0x80000000) != 0)
    {
      operator delete(*(&v37 + 1));
    }

    *(&v34 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v35);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](&v39);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }
  }

  else
  {
    v6 = std::map<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::at(&v31, a1);
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v6, *(v6 + 8));
    }

    else
    {
      v7 = *v6;
      a2->__r_.__value_.__r.__words[2] = *(v6 + 16);
      *&a2->__r_.__value_.__l.__data_ = v7;
    }
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v31, v32);
}

void sub_1B56DE900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void quasar::Locale::fromInternalShortIdentifier(uint64_t a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  quasar::splitAndTrimNoEmpty(a1, a2, v11);
  if ((v11[1] - v11[0]) != 48)
  {
    memset(v10, 0, sizeof(v10));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Identifier '", 12);
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = *(a1 + 8);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "' does not parse into two elements.", 35);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v10);
  }

  quasar::Locale::Locale(a3, v11[0], (v11[0] + 24));
  *&v10[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
}

void sub_1B56DEAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *quasar::Locale::Locale(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1B56DEB48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::Locale::toInternalShortIdentifier(uint64_t a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v5, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  v14 = *(a1 + 24);
  v13 = a1 + 24;
  v12 = v14;
  v15 = *(v13 + 23);
  if (v15 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (v15 >= 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = *(v13 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v16, v17);
  std::stringbuf::str();
  v20[0] = *MEMORY[0x1E69E54D8];
  v18 = *(MEMORY[0x1E69E54D8] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v21 = v18;
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v25);
}

void sub_1B56DED48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::Locale::toInternalLongIdentifier(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "_");
  quasar::Locale::toInternalShortIdentifier(a1, v4);
  quasar::ConvertLocaleToThreeLetterLocale(&__p, a2);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1B56DEDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::Locale::isCompatible(quasar::Locale *this, const Locale *data)
{
  v2 = *(this + 23);
  if (v2 >= 0)
  {
    v3 = *(this + 23);
  }

  else
  {
    v3 = *(this + 1);
  }

  size = *(&data->var0.__rep_.__l + 23);
  v5 = size;
  if ((size & 0x80u) != 0)
  {
    size = data->var0.__rep_.__l.__size_;
  }

  if (v3 != size)
  {
    return 0;
  }

  v6 = data;
  v7 = this;
  if (v2 < 0)
  {
    this = *this;
  }

  if (v5 < 0)
  {
    data = data->var0.__rep_.__l.__data_;
  }

  if (memcmp(this, data, v3))
  {
    return 0;
  }

  v8 = *(v7 + 47);
  if (v8 >= 0)
  {
    v9 = *(v7 + 47);
  }

  else
  {
    v9 = *(v7 + 4);
  }

  v10 = *(&v6[1].var0.__rep_.__l + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v6[1].var0.__rep_.__l.__size_;
  }

  if (v9 != v10)
  {
    return 0;
  }

  v14 = *(v7 + 3);
  v13 = v7 + 24;
  v12 = v14;
  if (v8 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v18 = v6[1].var0.__rep_.__l.__data_;
  v17 = v6 + 1;
  v16 = v18;
  if (v11 >= 0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

  return memcmp(v15, v19, v9) == 0;
}

void *std::map<std::string,std::string>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t LHashIter<unsigned int,Trie<unsigned int,double>>::LHashIter(uint64_t result, _DWORD **a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + 8) = 0;
  if (v3)
  {
    *(result + 12) = *v3 >> 5;
    *(result + 16) = a3;
    *(result + 24) = 0;
    LHashIter<unsigned int,Trie<unsigned int,double>>::sortKeys();
  }

  *(result + 12) = 0;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_1B56DF14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x1B8C85310](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LHashIter<unsigned int,Trie<unsigned int,double>>::init(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = MEMORY[0x1B8C85310](result, 0x1000C8052888210);
  }

  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  if (*a1)
  {
    *(a1 + 12) = **a1 >> 5;

    LHashIter<unsigned int,Trie<unsigned int,double>>::sortKeys();
  }

  *(a1 + 12) = 0;
  return result;
}

uint64_t LHashIter<unsigned int,Trie<unsigned int,double>>::next(uint64_t a1, _DWORD *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = 0;
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 12))
  {
    return 0;
  }

  v9 = v2;
  v7 = *(a1 + 24);
  *(a1 + 8) = v4 + 1;
  LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(&v9, *(v7 + 4 * v4), &v10);
  v8 = *a1 + 24 * v10;
  result = v8 + 8;
  *a2 = *(v8 + 24);
  return result;
}

_DWORD **Trie<unsigned int,double>::~Trie(_DWORD **a1)
{
  LHashIter<unsigned int,Trie<unsigned int,double>>::LHashIter(v4, a1, 0);
  v3 = 0;
  while (LHashIter<unsigned int,Trie<unsigned int,double>>::next(v4, &v3))
  {
    Trie<unsigned int,double>::~Trie();
  }

  if (v5)
  {
    MEMORY[0x1B8C85310](v5, 0x1000C8052888210);
  }

  LHash<unsigned int,Trie<unsigned int,unsigned long>>::clear(a1, 0);
  return a1;
}

uint64_t Trie<unsigned int,double>::remove(unsigned int **a1, unsigned int *a2, void *a3)
{
  v6 = 0uLL;
  v4 = Trie<unsigned int,double>::removeTrie(a1, a2, &v6);
  if (a3)
  {
    *a3 = *(&v6 + 1);
  }

  Trie<unsigned int,double>::~Trie(&v6);
  return v4;
}

uint64_t Trie<unsigned int,double>::removeTrie(unsigned int **a1, unsigned int *a2, _OWORD *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (v4 == -1)
  {
    return 0;
  }

  v8 = a2[1];
  v7 = a2 + 1;
  if (v8 != -1)
  {
    LODWORD(v11) = 0;
    if (LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a1, v4, &v11))
    {
      return Trie<unsigned int,double>::removeTrie(&(*a1)[6 * v11 + 2], v7, a3);
    }

    return 0;
  }

  if (!a3)
  {
    v11 = 0uLL;
    if (LHash<unsigned int,Trie<unsigned int,unsigned long>>::remove(a1, v4, &v11))
    {
      Trie<unsigned int,double>::~Trie(&v11);
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    Trie<unsigned int,double>::~Trie(&v11);
    return v9;
  }

  return LHash<unsigned int,Trie<unsigned int,unsigned long>>::remove(a1, v4, a3);
}

uint64_t Trie<unsigned int,double>::memStats(_DWORD **a1, uint64_t *a2)
{
  *a2 += 8;
  LHash<unsigned int,Trie<unsigned int,unsigned long>>::memStats(a1, a2);
  LHashIter<unsigned int,Trie<unsigned int,double>>::LHashIter(v7, a1, 0);
  v6 = 0;
  while (1)
  {
    v4 = LHashIter<unsigned int,Trie<unsigned int,double>>::next(v7, &v6);
    if (!v4)
    {
      break;
    }

    *a2 -= 16;
    Trie<unsigned int,double>::memStats(v4, a2);
  }

  result = v8;
  if (v8)
  {
    return MEMORY[0x1B8C85310](v8, 0x1000C8052888210);
  }

  return result;
}

void sub_1B56DF518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x1B8C85310](a14, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TrieIter2<unsigned int,double>::TrieIter2(uint64_t a1, _DWORD **a2, _DWORD *a3, int a4, uint64_t a5)
{
  v6 = a3;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  LHashIter<unsigned int,Trie<unsigned int,double>>::LHashIter(a1 + 32, a2, a5);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (!a4)
  {
    goto LABEL_4;
  }

  if (a4 == 1)
  {
    ++v6;
LABEL_4:
    *v6 = -1;
  }

  return a1;
}

uint64_t TrieIter2<unsigned int,double>::init(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = TrieIter2<unsigned int,unsigned int>::~TrieIter2(v2);
    MEMORY[0x1B8C85350](v3, 0x10F0C40A7879D68);
  }

  *(a1 + 64) = 0;
  result = LHashIter<unsigned int,Trie<unsigned int,double>>::init(a1 + 32);
  *(a1 + 72) = 0;
  return result;
}

uint64_t TrieIter2<unsigned int,double>::next(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 8);
      v4 = a1 + 32;

      return LHashIter<unsigned int,Trie<unsigned int,double>>::next(v4, v3);
    }

    else
    {
      v6 = *(a1 + 64);
      if (v6)
      {
        result = TrieIter2<unsigned int,double>::next(v6);
        if (result)
        {
          return result;
        }

        v7 = *(a1 + 64);
        if (v7)
        {
          v8 = TrieIter2<unsigned int,unsigned int>::~TrieIter2(v7);
          MEMORY[0x1B8C85350](v8, 0x10F0C40A7879D68);
        }

        *(a1 + 64) = 0;
      }

      result = LHashIter<unsigned int,Trie<unsigned int,double>>::next(a1 + 32, *(a1 + 8));
      if (result)
      {
        operator new();
      }
    }
  }

  else if (*(a1 + 72))
  {
    return 0;
  }

  else
  {
    *(a1 + 72) = 1;
    return *a1;
  }

  return result;
}

void NgramCounts<double>::NgramCounts(LMStats *a1, Vocab *a2, int a3)
{
  LMStats::LMStats(a1, a2);
  *v4 = &unk_1F2D297F0;
  *(v4 + 152) = 0;
  *(v4 + 156) = a3;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
}

void NgramCounts<double>::~NgramCounts(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D297F0;
  Trie<unsigned int,double>::~Trie(a1 + 20);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D297F0;
  Trie<unsigned int,double>::~Trie(a1 + 20);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t NgramCounts<double>::countSentence(uint64_t a1)
{
  return (*(*a1 + 104))(1.0);
}

{
  return (*(*a1 + 136))(1.0);
}

uint64_t NgramCounts<double>::countSentence(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = 0.0;
  if (sscanf(a3, "%lf", &v6) == 1)
  {
    return (*(*a1 + 104))(a1, a2, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t NgramCounts<double>::countSentence(uint64_t a1, uint64_t a2, double a3)
{
  v6 = _ZTW20countSentenceWidsTLS();
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = malloc_type_calloc(0xC353uLL, 4uLL, 0x100004052888210uLL);
    *v8 = v7;
  }

  v9 = *(a1 + 24);
  v10 = *v9;
  if (*(a1 + 32))
  {
    v11 = (*(v10 + 256))(v9, a2, v7 + 4, 50001);
  }

  else
  {
    v13 = (*(v10 + 88))(v9);
    v11 = (*(*v9 + 272))(v9, a2, v7 + 4, 50001, *v13);
  }

  v14 = *(*a1 + 128);
  v12.n128_f64[0] = a3;

  return v14(a1, v7, v11, v12);
}

{
  v6 = _ZTW20countSentenceWidsTLS();
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = malloc_type_calloc(0xC353uLL, 4uLL, 0x100004052888210uLL);
    *v8 = v7;
  }

  v9 = *(a1 + 24);
  v10 = *v9;
  if (*(a1 + 32))
  {
    v11 = (*(v10 + 264))(v9, a2, v7 + 4, 50001);
  }

  else
  {
    v13 = (*(v10 + 88))(v9);
    v11 = (*(*v9 + 280))(v9, a2, v7 + 4, 50001, *v13);
  }

  v14 = *(*a1 + 128);
  v12.n128_f64[0] = a3;

  return v14(a1, v7, v11, v12);
}

uint64_t NgramCounts<double>::countSentence(uint64_t a1, int **a2, double a3)
{
  v6 = _ZTW20countSentenceWidsTLS();
  v8 = *v6;
  if (!*v6)
  {
    v9 = v6;
    v8 = malloc_type_calloc(0xC353uLL, 4uLL, 0x100004052888210uLL);
    *v9 = v8;
  }

  v10 = *a2;
  v11 = a2[1] - *a2;
  v12 = 50000;
  v13 = 1;
  v14 = v11 >> 2;
  while (v14)
  {
    v15 = *v10++;
    v8[v13] = v15;
    --v14;
    ++v13;
    if (!--v12)
    {
      goto LABEL_8;
    }
  }

  v8[(v11 >> 2) + 1] = -1;
LABEL_8:
  v16 = *(*a1 + 128);
  v7.n128_f64[0] = a3;

  return v16(a1, v7);
}

uint64_t NgramCounts<double>::countSentenceHelper(uint64_t a1, _DWORD *a2, unsigned int a3, __n128 a4)
{
  if (a3 == 50001)
  {
    return 0;
  }

  v6 = a4.n128_u64[0];
  if (*(a1 + 32))
  {
    v10 = 1;
  }

  else
  {
    v10 = a3 == 0;
  }

  if (!v10)
  {
    v11 = 1;
    do
    {
      v12 = a2[v11];
      if (v12 == *(*(**(a1 + 24) + 88))(*(a1 + 24)))
      {
        *(a1 + 72) = *(a1 + 72) + 1.0;
      }

      ++v11;
    }

    while (v11 <= a3);
  }

  if (*(a1 + 33) && (v13 = a2[1], v13 != *(*(**(a1 + 24) + 104))(*(a1 + 24))))
  {
    *a2 = *(*(**(a1 + 24) + 104))(*(a1 + 24));
    v14 = a2;
  }

  else
  {
    v14 = a2 + 1;
  }

  if (*(a1 + 34))
  {
    v15 = a2[a3];
    if (v15 != *(*(**(a1 + 24) + 120))(*(a1 + 24)))
    {
      a2[a3 + 1] = *(*(**(a1 + 24) + 120))(*(a1 + 24));
      a2[a3 + 2] = -1;
    }
  }

  v16 = *(*a1 + 136);
  a4.n128_u64[0] = v6;

  return v16(a1, v14, a4);
}

uint64_t NgramCounts<double>::countSentence(uint64_t a1, int *a2, double a3)
{
  v3 = a2;
  if (*a2 == -1)
  {
    v6 = 0;
    v7 = -1;
  }

  else
  {
    LODWORD(v6) = 0;
    do
    {
      NgramCounts<double>::incrementCounts(a1, a2, 1u, a3);
      v6 = (v6 + 1);
      a2 = &v3[v6];
    }

    while (*a2 != -1);
    v7 = *v3;
  }

  *(a1 + 64) = *(a1 + 64) + v6;
  if (v7 == *(*(**(a1 + 24) + 104))(*(a1 + 24)))
  {
    *(a1 + 64) = *(a1 + 64) + -1.0;
  }

  if (v6)
  {
    v8 = v3[(v6 - 1)];
    if (v8 == *(*(**(a1 + 24) + 120))(*(a1 + 24)))
    {
      *(a1 + 64) = *(a1 + 64) + -1.0;
    }
  }

  *(a1 + 56) = *(a1 + 56) + 1.0;
  return v6;
}

uint64_t NgramCounts<double>::incrementCounts(uint64_t result, uint64_t a2, unsigned int a3, double a4)
{
  if (*(result + 156))
  {
    v6 = result;
    v7 = 0;
    result += 160;
    v8 = a3;
    do
    {
      v9 = *(a2 + 4 * v7);
      if (v9 == -1)
      {
        break;
      }

      v10 = 0;
      result = LHash<unsigned int,Trie<unsigned int,unsigned long>>::insert(result, v9, &v10);
      if (!v10)
      {
        *result = 0;
      }

      if (++v7 >= v8)
      {
        *(result + 8) = *(result + 8) + a4;
      }
    }

    while (v7 < *(v6 + 156));
  }

  return result;
}

uint64_t NgramCounts<double>::read(uint64_t a1, File *this, unsigned int a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = File::getline(this);
  if (v8)
  {
    memset(v15, 0, 512);
    v13 = 0;
    if (!strcmp(v8, "SRILM_BINARY_COUNTS_001\n"))
    {
      File::File(v12, *this, "rb", 1);
      Binary = NgramCounts<double>::readBinary(a1, v12, a3, a4);
      File::~File(v12);
      return Binary;
    }

    File::ungetline(this);
    for (i = NgramCounts<double>::readNgram(this, v15, 0x65, &v13); i; i = NgramCounts<double>::readNgram(this, v15, 0x65, &v13))
    {
      NgramCounts<double>::updateCounts(a1, i, a3, a4, v15, v14, *&v13);
    }
  }

  return 1;
}

void sub_1B56E01F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  File::~File(va);
  _Unwind_Resume(a1);
}

uint64_t NgramCounts<double>::readBinary(uint64_t a1, File *this, int a3, uint64_t a4)
{
  v8 = File::getline(this);
  if (!v8 || strcmp(v8, "SRILM_BINARY_COUNTS_001\n"))
  {
    v9 = File::position(this, MEMORY[0x1E69E5300]);
    v10 = "bad binary format\n";
    v11 = 18;
LABEL_4:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    return 0;
  }

  v14 = File::getline(this);
  v25 = 0;
  if (sscanf(v14, "maxorder %u", &v25) != 1)
  {
    v9 = File::position(this, MEMORY[0x1E69E5300]);
    v10 = "could not read ngram order\n";
    v11 = 27;
    goto LABEL_4;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  if ((*(**(a1 + 24) + 336))(*(a1 + 24), this, &v22, a4))
  {
    v21 = File::ftell(this);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v12 = NgramCounts<double>::readBinaryNode(a1, (a1 + 160), a3, v25, this, &v21, a4, &v22);
      goto LABEL_13;
    }

    v15 = File::position(this, MEMORY[0x1E69E5300]);
    v16 = __error();
    v17 = srilm_ts_strerror(*v16);
    v18 = strlen(v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v26, MEMORY[0x1E69E5318]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v26);
    std::ostream::put();
    std::ostream::flush();
  }

  v12 = 0;
LABEL_13:
  if (v23)
  {
    MEMORY[0x1B8C85310](v23, 0x1000C8052888210);
  }

  return v12;
}

void sub_1B56E0438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  std::locale::~locale((v13 - 40));
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

Vocab *NgramCounts<double>::readNgram(File *a1, char *a2, const char **a3, char **a4)
{
  result = File::getline(a1);
  if (result)
  {
    result = NgramCounts<double>::parseNgram(result, a2, a3, a4);
    if (!result)
    {
      v9 = File::position(a1, MEMORY[0x1E69E5300]);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "malformed N-gram count or more than ", 36);
      v11 = MEMORY[0x1B8C84C10](v10, (a3 - 1));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " words per line\n", 16);
      return 0;
    }
  }

  return result;
}

uint64_t NgramCounts<double>::updateCounts(uint64_t result, unsigned int a2, unsigned int a3, int a4, uint64_t a5, unsigned int *a6, double a7)
{
  if (a2 <= a3)
  {
    v20 = v10;
    v21 = v9;
    v22 = v7;
    v23 = v8;
    v14 = result;
    if (a4)
    {
      result = (*(**(result + 24) + 288))(*(result + 24), a5, a6, 100);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v15 = *(result + 24);
      v16 = *v15;
      if (*(result + 32))
      {
        (*(v16 + 256))(v15, a5, a6, 100);
      }

      else
      {
        v17 = (*(v16 + 88))(v15);
        (*(*v15 + 272))(v15, a5, a6, 100, *v17);
      }
    }

    if (*(v14 + 152))
    {
      v18 = 0;
      result = Trie<unsigned int,unsigned int>::findTrie((v14 + 160), a6, &v18);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v19 = 0;
      result = Trie<unsigned int,unsigned long>::insertTrie((v14 + 160), a6, &v19);
    }

    *(result + 8) = *(result + 8) + a7;
  }

  return result;
}

uint64_t NgramCounts<double>::read(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, 512);
  if ((*(*a2 + 24))(a2))
  {
    do
    {
      v8 = *(*(*a2 + 16))(a2);
      v12 = v8;
      v9 = *v8;
      if (v8[10] == v8[11])
      {
        Ngram = NgramCounts<unsigned long>::readNgram(v8 + 4, v14, 0x65u);
        if (!Ngram)
        {
          std::unique_ptr<quasar::lm::TokenStringAndCount const>::~unique_ptr[abi:ne200100](&v12);
          return 1;
        }

        NgramCounts<double>::updateCounts(a1, Ngram, a3, a4, v14, v13, v9);
      }

      else
      {
        NgramCounts<double>::updateCounts(a1, a3, a4, v8 + 10, v13, *v8);
      }

      std::unique_ptr<quasar::lm::TokenStringAndCount const>::~unique_ptr[abi:ne200100](&v12);
    }

    while (((*(*a2 + 24))(a2) & 1) != 0);
  }

  return 1;
}

uint64_t NgramCounts<double>::updateCounts(uint64_t result, unsigned int a2, int a3, void *a4, unsigned int *a5, double a6)
{
  if (a2 >= ((a4[1] - *a4) >> 2))
  {
    v15 = v9;
    v16 = v8;
    v17 = v6;
    v18 = v7;
    v12 = result;
    result = (*(**(result + 24) + 296))(*(result + 24), a4, a5, 100, a3 != 0);
    if (result)
    {
      if (*(v12 + 152))
      {
        v13 = 0;
        result = Trie<unsigned int,unsigned int>::findTrie((v12 + 160), a5, &v13);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v14 = 0;
        result = Trie<unsigned int,unsigned long>::insertTrie((v12 + 160), a5, &v14);
      }

      *(result + 8) = *(result + 8) + a6;
    }
  }

  return result;
}

uint64_t NgramCounts<double>::readGoogle(uint64_t a1, char *__s, unsigned int a3, unsigned int a4)
{
  v5 = strlen(__s);
  *&v27[8] = 0;
  v28 = 0;
  v6 = v5 + 20;
  v26 = 0;
  *v27 = (v5 + 20);
  if (v5 != -20)
  {
    Array<char>::alloc();
  }

  snprintf(0, v6, "%s/1gms/vocab%s", __s, ".gz");
  File::File(v25, (*&v27[4] - v26), "r", 0);
  if (File::error(v25))
  {
    snprintf((*&v27[4] - v26), v6, "%s/1gms/vocab", __s);
    File::reopen(v25, (*&v27[4] - v26), "r");
  }

  if (!File::error(v25))
  {
    if (!*(a1 + 8) && (Debug::debugAll || *(a1 + 12)))
    {
      v7 = (*(*a1 + 24))(a1);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "reading ", 8);
      v9 = strlen((*&v27[4] - v26));
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, *&v27[4] - v26, v9);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v21, MEMORY[0x1E69E5318]);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v21);
      std::ostream::put();
      std::ostream::flush();
    }

    v12 = NgramCounts<double>::read(a1, v25, 1u, a4);
    File::~File(v25);
    if (!v12)
    {
      goto LABEL_28;
    }

    if (a3 < 2)
    {
      v13 = 1;
      goto LABEL_29;
    }

    v14 = 2;
    while (1)
    {
      snprintf((*&v27[4] - v26), v6, "%s/%dgms/%dgm.idx", __s, v14, v14);
      File::File(v25, (*&v27[4] - v26), "r", 0);
      if (File::error(v25))
      {
        break;
      }

      v22 = 0;
      v23 = 0;
      v24 = 0;
      v15 = File::getline(v25);
      if (v15)
      {
        strdup(v15);
        operator new[]();
      }

      if (File::error(v25))
      {
        perror((*&v27[4] - v26));
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      if (v23)
      {
        MEMORY[0x1B8C85310](v23, 0x80C80B8603338);
      }

      File::~File(v25);
      if (v14 + 1 <= a3)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      ++v14;
      if ((v16 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  perror((*&v27[4] - v26));
  File::~File(v25);
LABEL_28:
  v13 = 0;
LABEL_29:
  if (*&v27[4])
  {
    MEMORY[0x1B8C85310](*&v27[4], 0x1000C8077774924);
  }

  return v13;
}

void sub_1B56E0FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::locale::~locale(&a15);
  File::~File(&a31);
  v33 = *(v31 - 112);
  if (v33)
  {
    MEMORY[0x1B8C85310](v33, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t NgramCounts<double>::readMinCounts(int a1, File *this)
{
  v3 = File::getline(this);
  if (!v3)
  {
    return 1;
  }

  if (strcmp(v3, "SRILM_BINARY_COUNTS_001\n"))
  {
    File::ungetline(this);
    operator new[]();
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "binary format not yet support in readMinCounts\n", 47);
  return 0;
}

void sub_1B56E13C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    MEMORY[0x1B8C85310](a18, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

double *NgramCounts<double>::updateCountsMinCounts(double *result, unsigned int a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, Vocab *a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  if (a2 > a3)
  {
    return result;
  }

  v17 = result;
  if (*(a4 + 8 * (a2 - 1)) <= a9)
  {
    v18 = 0xFFFFFFFFLL;
    if (a5)
    {
LABEL_7:
      result = (*(**(v17 + 24) + 288))(*(v17 + 24), a6, a7, 100);
      if (!result)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (!a9)
    {
      return result;
    }

    result = (*(**(result + 3) + 240))(*(result + 3));
    v18 = result;
    if (result == -1)
    {
      return result;
    }

    if (a5)
    {
      goto LABEL_7;
    }
  }

  v19 = *(v17 + 24);
  v20 = *v19;
  if (*(v17 + 32))
  {
    (*(v20 + 256))(v19, a6, a7, 100);
  }

  else
  {
    v21 = (*(v20 + 88))(v19);
    (*(*v19 + 272))(v19, a6, a7, 100, *v21);
  }

LABEL_13:

  return NgramCounts<double>::updateMinCountsHelper(v17, a2, v18, a7, a8, a10, a11, a9);
}

uint64_t NgramCounts<double>::addCounts(uint64_t a1, unsigned int *a2, _DWORD **a3)
{
  if (*(a1 + 152))
  {
    v10[0] = 0;
    result = Trie<unsigned int,unsigned int>::findTrie((a1 + 160), a2, v10);
  }

  else
  {
    v10[0] = 0;
    result = Trie<unsigned int,unsigned long>::insertTrie((a1 + 160), a2, v10);
  }

  v5 = result;
  if (result)
  {
    LHashIter<unsigned int,double>::LHashIter(v10, a3, 0);
    v9 = 0;
    while (1)
    {
      v6 = LHashIter<unsigned int,double>::next(v10, &v9);
      if (!v6)
      {
        break;
      }

      v7 = *v6;
      v12 = 0;
      v8 = LHash<unsigned int,Trie<unsigned int,unsigned long>>::insert(v5, v9, &v12);
      if (!v12)
      {
        *v8 = 0;
      }

      *(v8 + 8) = v7 + *(v8 + 8);
    }

    result = v11;
    if (v11)
    {
      return MEMORY[0x1B8C85310](v11, 0x1000C8052888210);
    }
  }

  return result;
}

void sub_1B56E1714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void NgramCounts<double>::readMinCounts()
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  v0 = 0u;
  v1 = 0u;
  operator new[]();
}

void sub_1B56E1B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    MEMORY[0x1B8C85310](a18, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

double *NgramCounts<double>::updateCountsMinCounts(double *result, unsigned int a2, uint64_t a3, int a4, void *a5, Vocab *a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v10 = (a5[1] - *a5) >> 2;
  if (v10 <= a2)
  {
    v17 = result;
    if (*(a3 + 8 * (v10 - 1)) <= a9)
    {
      v18 = 0xFFFFFFFFLL;
    }

    else
    {
      if (!a9)
      {
        return result;
      }

      result = (*(**(result + 3) + 240))(*(result + 3));
      v18 = result;
      if (result == -1)
      {
        return result;
      }
    }

    result = (*(**(v17 + 24) + 296))(*(v17 + 24), a5, a6, 100, a4 != 0);
    if (result)
    {
      v19 = (a5[1] - *a5) >> 2;

      return NgramCounts<double>::updateMinCountsHelper(v17, v19, v18, a6, a7, a8, a10, a9);
    }
  }

  return result;
}

uint64_t NgramCounts<double>::write(uint64_t a1, File *a2, unsigned int a3, unsigned int a4)
{
  v8 = _ZTW14writeBufferTLS();
  v9 = *v8;
  if (!*v8)
  {
    v10 = v8;
    v9 = malloc_type_calloc(0x2710uLL, 1uLL, 0x100004077774924uLL);
    *v10 = v9;
  }

  return NgramCounts<double>::writeNode(a1, (a1 + 160), a2, v9, v9, 1u, a3, a4);
}

uint64_t NgramCounts<double>::writeNode(uint64_t a1, _DWORD **a2, File *a3, const char *a4, char *a5, unsigned int a6, unsigned int a7, unsigned int a8)
{
  if (a8)
  {
    v14 = Vocab::compareIndex(*(a1 + 24));
  }

  else
  {
    v14 = 0;
  }

  v34 = 0;
  LHashIter<unsigned int,Trie<unsigned int,double>>::LHashIter(v32, a2, v14);
  if (a7)
  {
    v15 = a6 == a7;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  v31 = v16;
  while (!File::error(a3))
  {
    v17 = LHashIter<unsigned int,Trie<unsigned int,double>>::next(v32, &v34);
    if (!v17)
    {
      break;
    }

    v18 = (*(**(a1 + 24) + 32))(*(a1 + 24), v34);
    v19 = v18;
    if (v18)
    {
      v20 = &a5[strlen(v18)];
      if (v20 + 1 <= a4 + 10000)
      {
        strcpy(a5, v19);
        if (v31)
        {
          snprintf(ctsBuffer, 0x64uLL, "%lg", *(v17 + 8));
          File::fprintf(a3, "%s\t%s\n", a4, ctsBuffer);
        }

        if (a7 - 1 >= a6)
        {
          *v20 = 32;
          NgramCounts<double>::writeNode(a1, v17, a3, a4, v20 + 1, a6 + 1, a7, a8);
        }
      }

      else
      {
        *a5 = 48;
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "ngram [", 7);
        v22 = strlen(a4);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, a4, v22);
        v24 = strlen(v19);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v19, v24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "] exceeds write buffer\n", 23);
      }
    }

    else
    {
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "undefined word index ", 21);
      v27 = MEMORY[0x1B8C84C10](v26, v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n", 1);
    }
  }

  result = v33;
  if (v33)
  {
    return MEMORY[0x1B8C85310](v33, 0x1000C8052888210);
  }

  return result;
}

void sub_1B56E2008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    MEMORY[0x1B8C85310](a17, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NgramCounts<double>::writeBinary(uint64_t a1, File *this, uint64_t a3)
{
  File::fprintf(this, "%s", "SRILM_BINARY_COUNTS_001\n");
  v6 = a3;
  if (!a3)
  {
    v6 = *(a1 + 156);
  }

  File::fprintf(this, "maxorder %u\n", v6);
  (*(**(a1 + 24) + 344))();
  v14 = File::ftell(this);
  if ((v14 & 0x8000000000000000) == 0)
  {
    return NgramCounts<double>::writeBinaryNode(a1, (a1 + 160), 1, a3, this, &v14);
  }

  v8 = File::position(this, MEMORY[0x1E69E5300]);
  v9 = __error();
  v10 = srilm_ts_strerror(*v9);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v15, MEMORY[0x1E69E5318]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v15);
  std::ostream::put();
  std::ostream::flush();
  return 0;
}

uint64_t NgramCounts<double>::writeBinaryNode(uint64_t a1, _DWORD **a2, uint64_t a3, uint64_t a4, File *a5, off_t *a6)
{
  v11 = a4;
  if (!a4)
  {
    v11 = *(a1 + 156);
  }

  if (v11 < a3)
  {
    return 1;
  }

  if ((v11 - a3) >= 4)
  {
    v13 = 8;
  }

  else
  {
    v13 = 4;
  }

  if (v11 == a3)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = *a6;
  result = writeBinaryCount(a5, 0, v14);
  if (result)
  {
    if (a4)
    {
      v16 = a3 > a4;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v41 = v17;
    while (1)
    {
      v18 = *a6 + result;
      *a6 = v18;
      if ((v41 & 1) == 0)
      {
        LHashIter<unsigned int,Trie<unsigned int,double>>::LHashIter(v43, a2, SArray_compareKey<unsigned int>);
        v42 = 0;
        do
        {
          v19 = LHashIter<unsigned int,Trie<unsigned int,double>>::next(v43, &v42);
          if (!v19)
          {
            break;
          }

          v20 = writeBinaryCount(a5, v42, 0);
          if (!v20)
          {
            break;
          }

          *a6 += v20;
          v21 = 0.0;
          if (a3 >= a4)
          {
            v21 = *(v19 + 8);
          }

          v22 = writeBinaryCount(a5, v21);
          if (!v22)
          {
            break;
          }

          *a6 += v22;
        }

        while (NgramCounts<double>::writeBinaryNode(a1, v19, (a3 + 1), a4, a5, a6));
        if (v44)
        {
          MEMORY[0x1B8C85310](v44, 0x1000C8052888210);
        }

        if (v19)
        {
          return 0;
        }

        v18 = *a6;
      }

      if ((File::fseek(a5, v15, 0) & 0x80000000) != 0)
      {
        break;
      }

      result = writeBinaryCount(a5, v18 - v15, v14);
      if (!result)
      {
        return result;
      }

      v23 = result;
      if (result <= v14)
      {
        if ((File::fseek(a5, v18, 0) & 0x80000000) == 0)
        {
          return 1;
        }

        break;
      }

      v24 = File::offset(a5, MEMORY[0x1E69E5300]);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "increasing offset bytes from ", 29);
      v26 = MEMORY[0x1B8C84C10](v25, v14);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " to ", 4);
      v28 = MEMORY[0x1B8C84C10](v27, v23);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " (order ", 8);
      v30 = MEMORY[0x1B8C84C10](v29, v11);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ",", 1);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " level ", 7);
      v33 = MEMORY[0x1B8C84C10](v32, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ")\n", 2);
      if ((File::fseek(a5, v15, 0) & 0x80000000) != 0)
      {
        break;
      }

      *a6 = v15;
      result = writeBinaryCount(a5, 0, v23);
      v14 = v23;
      if (!result)
      {
        return result;
      }
    }

    v34 = File::offset(a5, MEMORY[0x1E69E5300]);
    v35 = __error();
    v36 = srilm_ts_strerror(*v35);
    v37 = strlen(v36);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v36, v37);
    std::ios_base::getloc((v38 + *(*v38 - 24)));
    v39 = std::locale::use_facet(v43, MEMORY[0x1E69E5318]);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(v43);
    std::ostream::put();
    std::ostream::flush();
    return 0;
  }

  return result;
}

uint64_t NgramCounts<double>::parseNgram(Vocab *a1, char *a2, const char **a3, char **a4)
{
  v5 = a3;
  v7 = Vocab::parseWords(a1, a2, a3, a4);
  if (v7 == v5)
  {
    return 0;
  }

  v8 = (v7 - 1);
  v9 = *&a2[8 * v8];
  v11 = 0;
  if (sscanf(v9, "%lf", &v11) != 1)
  {
    return 0;
  }

  *a4 = v11;
  *&a2[8 * v8] = 0;
  return v8;
}

double NgramCounts<double>::sumNode(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 > a4 || !*a2 || **a2 <= 0x1Fu)
  {
    return *(a2 + 8);
  }

  LHashIter<unsigned int,Trie<unsigned int,double>>::LHashIter(v12, a2, 0);
  v11 = 0;
  for (i = 0.0; ; i = i + NgramCounts<double>::sumNode(a1, v10, a3 + 1, a4))
  {
    v10 = LHashIter<unsigned int,Trie<unsigned int,double>>::next(v12, &v11);
    if (!v10)
    {
      break;
    }
  }

  *(a2 + 8) = i;
  if (v13)
  {
    MEMORY[0x1B8C85310](v13, 0x1000C8052888210);
  }

  return i;
}

void sub_1B56E26D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x1B8C85310](a14, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NgramCounts<double>::setCounts(uint64_t a1, double a2)
{
  v4 = *(a1 + 156);
  *&v10[8] = 0;
  v11 = 0;
  v9 = 0;
  *v10 = (v4 + 1);
  if (v4 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v5 = 1;
  do
  {
    TrieIter2<unsigned int,double>::TrieIter2(v8, (a1 + 160), (*&v10[4] - 4 * v9), v5, 0);
    while (1)
    {
      v6 = TrieIter2<unsigned int,double>::next(v8);
      if (!v6)
      {
        break;
      }

      *(v6 + 8) = a2;
    }

    TrieIter2<unsigned int,unsigned int>::~TrieIter2(v8);
    ++v5;
  }

  while (v5 <= *(a1 + 156));
  result = *&v10[4];
  if (*&v10[4])
  {
    return MEMORY[0x1B8C85310](*&v10[4], 0x1000C8052888210);
  }

  return result;
}

void sub_1B56E27C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = *(v10 - 48);
  if (v12)
  {
    MEMORY[0x1B8C85310](v12, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NgramCounts<double>::memStats(uint64_t a1, uint64_t *a2)
{
  *a2 += 64;
  (*(**(a1 + 24) + 352))(*(a1 + 24));

  return Trie<unsigned int,double>::memStats((a1 + 160), a2);
}

uint64_t NgramCounts<double>::readBinaryNode(uint64_t a1, _DWORD **a2, int a3, int a4, File *a5, off_t *a6, uint64_t a7, int *a8)
{
  if (!a4)
  {
    return 1;
  }

  v39 = 0;
  result = readBinaryCount(a5, &v39);
  if (!result)
  {
    return result;
  }

  v17 = v39 + *a6;
  v18 = *a6 + result;
  *a6 = v18;
  if (a3)
  {
    if (v18 < v17)
    {
      v19 = (a3 - 1);
      v20 = (a4 - 1);
      do
      {
        *&v40.__locale_ = 0.0;
        result = readBinaryCount(a5, &v40);
        if (!result)
        {
          return result;
        }

        locale = v40.__locale_;
        *a6 += result;
        if (a8[1] <= locale)
        {
          v37 = File::offset(a5, MEMORY[0x1E69E5300]);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "word index ", 11);
          v28 = MEMORY[0x1B8C84C10](v38, locale);
          v29 = " out of range\n";
          v30 = 14;
          goto LABEL_28;
        }

        v22 = *Array<unsigned int>::operator[](a8, locale);
        if (v22 != -1)
        {
          if (*(a1 + 152))
          {
            LODWORD(v40.__locale_) = 0;
            if (LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a2, v22, &v40))
            {
              v23 = &(*a2)[6 * LODWORD(v40.__locale_) + 2];
LABEL_17:
              *&v40.__locale_ = 0.0;
              result = readBinaryCount(a5, &v40);
              if (!result)
              {
                return result;
              }

              *(v23 + 8) = *&v40.__locale_ + *(v23 + 8);
              *a6 += result;
              v25 = a1;
              v26 = v23;
              v27 = v19;
              goto LABEL_19;
            }
          }

          else
          {
            LOBYTE(v40.__locale_) = 0;
            v24 = LHash<unsigned int,Trie<unsigned int,unsigned long>>::insert(a2, v22, &v40);
            v23 = v24;
            if (!LOBYTE(v40.__locale_))
            {
              *v24 = 0;
              goto LABEL_17;
            }

            if (v24)
            {
              goto LABEL_17;
            }
          }
        }

        *&v40.__locale_ = 0.0;
        result = readBinaryCount(a5, &v40);
        if (!result)
        {
          return result;
        }

        *a6 += result;
        v25 = a1;
        v26 = a2;
        v27 = 0;
LABEL_19:
        result = NgramCounts<double>::readBinaryNode(v25, v26, v27, v20, a5, a6, a7, a8);
        if (!result)
        {
          return result;
        }

        v18 = *a6;
      }

      while (*a6 < v17);
    }

    if (v18 != v17)
    {
      v28 = File::offset(a5, MEMORY[0x1E69E5300]);
      v29 = "data misaligned\n";
      v30 = 16;
LABEL_28:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
      return 0;
    }

    return 1;
  }

  if ((File::fseek(a5, v17, 0) & 0x80000000) == 0)
  {
    *a6 = v17;
    return 1;
  }

  v31 = File::offset(a5, MEMORY[0x1E69E5300]);
  v32 = __error();
  v33 = srilm_ts_strerror(*v32);
  v34 = strlen(v33);
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
  std::ios_base::getloc((v35 + *(*v35 - 24)));
  v36 = std::locale::use_facet(&v40, MEMORY[0x1E69E5318]);
  (v36->__vftable[2].~facet_0)(v36, 10);
  std::locale::~locale(&v40);
  std::ostream::put();
  std::ostream::flush();
  return 0;
}

double *NgramCounts<double>::updateMinCountsHelper(uint64_t a1, int a2, const unsigned int *a3, Vocab *this, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v11 = a3;
  v14 = (a2 - 1);
  v15 = *(this + v14);
  *(this + v14) = -1;
  v16 = (a7 + 8 * v14);
  if (Vocab::compare(this, *(a5 + 8 * v14), a3))
  {
    if (*(a6 + v14))
    {
      NgramCounts<double>::addCounts(a1, *(a5 + 8 * v14), v16);
      *(a6 + v14) = 0;
    }

    LHash<unsigned int,double>::clear(v16, 0);
    Vocab::copy(*(a5 + 8 * v14), this, v17);
  }

  if (v11 != -1)
  {
    v19 = 0;
    result = LHash<unsigned int,double>::insert(v16, v11, &v19);
    *result = *result + 1.0;
    return result;
  }

  if (!*(a1 + 152))
  {
    result = NgramCounts<unsigned long>::insertCount(a1, this, v15);
    if (!result)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = NgramCounts<unsigned long>::findCount(a1, this, v15);
  if (result)
  {
LABEL_9:
    *result = *result + a8;
  }

LABEL_10:
  *(a6 + v14) = 1;
  return result;
}

void sub_1B56E2E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::AudioAnalyticsFrameInfo::ComputeBacktraces(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = *(a3 + 8);
  memset(v72, 0, sizeof(v72));
  kaldi::Vector<float>::Resize(v72, v14, 1);
  kaldi::ComputeLocalCost(v15, a3, a4, a2, v72);
  v16 = log(*(a2 + 40) + 1.0);
  v17 = *(a2 + 28);
  v18 = *a5;
  v19 = *a7;
  if (*a6 == a6[1])
  {
    std::vector<double>::resize(a6, v14);
  }

  v20 = v16 * v16;
  v21 = v17 * v20;
  if (kaldi::pitch_use_naive_search1)
  {
    if (v14 >= 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = *a1;
      do
      {
        v25 = 0;
        v26 = -1;
        v27 = INFINITY;
        v28 = v22;
        do
        {
          v29 = *(v18 + 4 * v25);
          if ((v29 + ((v28 * v28) * v21)) < v27)
          {
            v26 = v25;
            v27 = v29 + ((v28 * v28) * v21);
          }

          ++v25;
          ++v28;
        }

        while (v14 != v25);
        *(v19 + 4 * v23) = v27;
        *(v24 + 8 * v23++) = v26;
        --v22;
      }

      while (v23 != v14);
    }
  }

  else if (v14 >= 1)
  {
    v30 = 0;
    v31 = 0;
    v32 = *a1;
    v33 = *a6;
    v34 = 1;
    do
    {
      v35 = v31;
      v36 = v31;
      v37 = *(v18 + 4 * v31) + (((v31 - v30) * (v31 - v30)) * v21);
      if (v14 <= v31 + 1)
      {
        v38 = v31 + 1;
      }

      else
      {
        v38 = v14;
      }

      v31 = v38 - 1;
      v39 = v36 + 1;
      while (1)
      {
        v40 = v37;
        if (v39 >= v14)
        {
          break;
        }

        v37 = *(v18 + 4 * v39) + (((v34 + v35) * (v34 + v35)) * v21);
        ++v35;
        ++v39;
        if (v37 >= v40)
        {
          v31 = v35 - 1;
          break;
        }
      }

      *(v32 + 8 * v30) = v31;
      *(v19 + 4 * v30) = v40;
      v41 = (v33 + 8 * v30);
      *v41 = v31;
      v41[1] = v14 - 1;
      ++v30;
      --v34;
    }

    while (v30 != v14);
    v42 = 0;
    v43 = *a6;
    do
    {
      if (v42)
      {
        v59 = 0;
        v60 = 0;
        v44 = 0;
        v61 = 0;
        do
        {
          v62 = (v43 + 8 * v60);
          v63 = v62[1];
          if (v61 <= *v62)
          {
            v64 = *v62;
          }

          else
          {
            v64 = v61;
          }

          if (v63 == v64 || (v65 = (*a1 + 8 * v60), v61 = *v65, *v65 == v64))
          {
            v61 = v64;
          }

          else if (v64 >= v63 - 1)
          {
            *v62 = v61;
          }

          else
          {
            v66 = *(v19 + 4 * v60);
            v67 = v64;
            v68 = ~v64 + v63;
            v69 = *v65;
            do
            {
              v70 = (v59 + v67) * (v59 + v67);
              v71 = *(v18 + 4 * v67);
              if ((v71 + (v70 * v21)) >= v66)
              {
                if (v67 > v69)
                {
                  break;
                }
              }

              else
              {
                v66 = v71 + (v70 * v21);
                v69 = v67;
              }

              ++v67;
              --v68;
            }

            while (v68);
            *v62 = v69;
            if (v69 != v61)
            {
              *(v19 + 4 * v60) = v66;
              *v65 = v69;
              v44 = 1;
              v61 = v69;
            }
          }

          ++v60;
          --v59;
        }

        while (v60 != v14);
      }

      else
      {
        v44 = 0;
        v45 = 1 - v14;
        v46 = v14;
        v47 = v14 - 1;
        do
        {
          v48 = v46--;
          v49 = (v43 + 8 * v46);
          v50 = *v49;
          if (v49[1] >= v47)
          {
            v51 = v47;
          }

          else
          {
            v51 = v49[1];
          }

          if (v51 == v50)
          {
            v47 = *v49;
          }

          else
          {
            v52 = (*a1 + 8 * v46);
            v47 = *v52;
            if (*v52 == v51)
            {
              v47 = v51;
            }

            else
            {
              v53 = v50 + 1;
              if (v51 <= v53)
              {
                v49[1] = v47;
              }

              else
              {
                v54 = *(v19 + 4 * v46);
                v55 = v51;
                v56 = *v52;
                do
                {
                  v57 = (v45 + v55) * (v45 + v55);
                  v58 = *(v18 + 4 * v55);
                  if ((v58 + (v57 * v21)) >= v54)
                  {
                    if (v55 < v56)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v54 = v58 + (v57 * v21);
                    v56 = v55;
                  }

                  --v55;
                }

                while (v55 > v53);
                v49[1] = v56;
                if (v56 != v47)
                {
                  *(v19 + 4 * v46) = v54;
                  *v52 = v56;
                  v44 = 1;
                  v47 = v56;
                }
              }
            }
          }

          ++v45;
        }

        while (v48 > 1);
      }

      if ((v44 & 1) == 0)
      {
        break;
      }

      ++v42;
    }

    while (v42 != v14);
  }

  *(a1 + 7) = -1;
  kaldi::VectorBase<float>::AddVec<float>();
  kaldi::Vector<float>::Destroy(v72);
}

void sub_1B56E3288(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::OnlineAudioAnalyticsFeatureImpl::OnlineAudioAnalyticsFeatureImpl(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[4];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 304) = 0u;
  operator new();
}

void sub_1B56E34E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x1B8C85350](v6, 0x1020C403D3F9D26);
  kaldi::Vector<float>::Destroy(va);
  kaldi::Vector<float>::Destroy((v2 + 41));
  v9 = v2[34];
  if (v9)
  {
    v2[35] = v9;
    operator delete(v9);
  }

  v10 = v2[31];
  if (v10)
  {
    v2[32] = v10;
    operator delete(v10);
  }

  kaldi::Vector<float>::Destroy(v5);
  v11 = *v7;
  if (*v7)
  {
    v2[24] = v11;
    operator delete(v11);
  }

  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](v4);
  kaldi::Vector<float>::Destroy(v3);
  _Unwind_Resume(a1);
}

void *std::deque<kaldi::AudioAnalyticsFrameInfo *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<kaldi::AudioAnalyticsFrameInfo *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void kaldi::OnlineAudioAnalyticsFeatureImpl::Compute(kaldi::OnlineAudioAnalyticsFeatureImpl *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 15);
  if (v6)
  {
    v7 = *(a2 + 8);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = ((*this * v6) * 0.001 * *(this + 1));
      do
      {
        v10 = v7 - v8;
        if (v10 >= v9)
        {
          v10 = v9;
        }

        v22 = 0;
        v23 = 0;
        v11 = v10 + v8;
        v21 = *a2 + 4 * v8;
        LODWORD(v22) = v10;
        kaldi::OnlineAudioAnalyticsFeatureImpl::AcceptWaveform(this, &v21);
        v7 = *(a2 + 8);
        v8 = v11;
      }

      while (v11 < v7);
    }
  }

  else
  {
    kaldi::OnlineAudioAnalyticsFeatureImpl::AcceptWaveform(this, a2);
  }

  kaldi::OnlineAudioAnalyticsFeatureImpl::InputFinished(this);
  v12 = *(this + 44);
  v13 = *(this + 52);
  v14 = (v12 - v13);
  if (v12 == v13)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "No frames output in pitch extraction", 36);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v21);
    }

    kaldi::Matrix<float>::Resize(a3, 0, 0, 0, 0);
  }

  else
  {
    kaldi::Matrix<float>::Resize(a3, (v12 - v13), 4, 0, 0);
    if (v14 >= 1)
    {
      v15 = 0;
      v16 = 4;
      do
      {
        v17 = *a3 + 4 * *(a3 + 16) * v15;
        kaldi::MatrixBase<float>::NumCols(a3);
        v18 = (*(this + 31) + v16);
        *v17 = *v18;
        v19 = *(v18 - 1);
        v20 = *(this + 11);
        *(v17 + 4) = 1.0 / *(v20 + 4 * v19);
        *(v17 + 8) = *(v20 + 4 * v19);
        *(v17 + 12) = *(*(this + 34) + 4 * v15++);
        v16 += 8;
      }

      while (v14 != v15);
    }
  }
}

void kaldi::OnlineAudioAnalyticsFeatureImpl::AcceptWaveform(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 296);
  v103 = 0;
  v104 = 0;
  v105 = 0;
  kaldi::LinearResample::Resample(*(a1 + 120), a2, v3, &v103);
  v4 = *(a1 + 304);
  v5 = *(a1 + 312);
  v6 = *(a1 + 320);
  if (*(a1 + 72) == 1)
  {
    v7 = v104;
    v8 = *(a1 + 320);
  }

  else
  {
    kaldi::VecVec<float>();
    v10 = v9;
    v11 = kaldi::VectorBase<float>::Sum(&v103);
    v4 = v4 + v10;
    v5 = v5 + *&v11;
    v7 = v104;
    v8 = v6 + v104;
    v6 = *(a1 + 320);
  }

  v12 = kaldi::OnlineAudioAnalyticsFeatureImpl::NumFramesAvailable(a1, v6 + v7, *(a1 + 73));
  v83 = *(a1 + 176);
  if (v12 == v83)
  {
    kaldi::OnlineAudioAnalyticsFeatureImpl::UpdateRemainder(a1, &v103);
  }

  else
  {
    v77 = v12;
    v82 = (v12 - v83);
    v14 = *(a1 + 80);
    v13 = *(a1 + 84);
    v78 = *(a1 + 96);
    v15 = *(a1 + 36) * 0.001;
    v16 = *(a1 + 4);
    v81 = (v15 * *(a1 + 8));
    v17 = v13 + v81;
    memset(v102, 0, sizeof(v102));
    kaldi::Vector<float>::Resize(v102, (v13 + v81), 0);
    v18 = v13 - v14;
    memset(v101, 0, sizeof(v101));
    kaldi::Vector<float>::Resize(v101, (v18 + 1), 0);
    memset(v100, 0, sizeof(v100));
    kaldi::Vector<float>::Resize(v100, (v18 + 1), 0);
    kaldi::Matrix<float>::Matrix(v98, v82, (v18 + 1), 0, 0);
    kaldi::Matrix<float>::Matrix(v96, v82, (v18 + 1), 0, 0);
    memset(v95, 0, sizeof(v95));
    kaldi::Vector<float>::Resize(v95, v78, 0);
    if (v83 < v77)
    {
      v19 = 0;
      v20 = 0;
      v79 = v17;
      v80 = (v15 * v16);
      v21 = v83;
      v22 = v83 * v80;
      do
      {
        kaldi::OnlineAudioAnalyticsFeatureImpl::ExtractFrame(a1, &v103, v22, v102);
        if (*(a1 + 72) == 1)
        {
          if (v79 + v22 - *(a1 + 320) >= v104)
          {
            LODWORD(v23) = v104;
          }

          else
          {
            v23 = v79 + v22 - *(a1 + 320);
          }

          v86 = 0;
          v84.__locale_ = &v103[4 * v20];
          v85 = (v23 - v20);
          kaldi::VecVec<float>();
          v25 = v24;
          v26 = kaldi::VectorBase<float>::Sum(&v84);
          v8 += v23 - v20;
          v4 = v4 + v25;
          v5 = v5 + *&v26;
          v20 = v23;
        }

        kaldi::ComputeCorrelation(v102, *(a1 + 80), *(a1 + 84), v81, v101, v100);
        v27 = *(a1 + 44);
        kaldi::VectorBase<float>::Sum(v100);
        v85 = 0;
        v86 = 0;
        v84.__locale_ = (v98[0] + 4 * v19 * v99);
        v28 = v4 / v8 - v5 / v8 * (v5 / v8);
        LODWORD(v85) = kaldi::MatrixBase<float>::NumCols(v98);
        v29 = v28 * v81 * (v28 * v81) * v27;
        kaldi::ComputeNccf(v101, v100, &v84, v29);
        v93 = 0;
        v94 = 0;
        v92 = v96[0] + 4 * v19 * v97;
        LODWORD(v93) = kaldi::MatrixBase<float>::NumCols(v96);
        kaldi::ComputeNccf(v101, v100, &v92, 0.0);
        if (v21 < *(a1 + 68))
        {
          operator new();
        }

        ++v21;
        ++v19;
        v22 += v80;
      }

      while (v82 != v19);
    }

    kaldi::Matrix<float>::Matrix(&v92, v82, v78, 0, 0);
    kaldi::ArbitraryResample::Resample(*(a1 + 112), v98, &v92);
    kaldi::Matrix<float>::Resize(v98, 0, 0, 0, 0);
    kaldi::Matrix<float>::Matrix(v91, v82, v78, 0, 0);
    kaldi::ArbitraryResample::Resample(*(a1 + 112), v96, v91);
    kaldi::Matrix<float>::Resize(v96, 0, 0, 0, 0);
    kaldi::OnlineAudioAnalyticsFeatureImpl::UpdateRemainder(a1, &v103);
    __p = 0;
    v89 = 0;
    v90 = 0;
    if (v83 < v77)
    {
      operator new();
    }

    LODWORD(v87) = 0;
    kaldi::VectorBase<float>::Min(a1 + 216, &v87, v30);
    std::vector<std::pair<int,float>>::resize((a1 + 248), *(a1 + 176));
    v31 = *(a1 + 168);
    v32 = *(*(*(a1 + 136) + (((v31 + *(a1 + 160) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v31 + *(a1 + 160) - 1) & 0x1FF));
    if (v32)
    {
      v33 = v87;
      v34 = v32 + 7;
      if (v87 != v32[7])
      {
        v35 = (*(a1 + 256) - 4);
        v36 = *(*(*(a1 + 136) + (((v31 + *(a1 + 160) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v31 + *(a1 + 160) - 1) & 0x1FF));
        do
        {
          v37 = v36[4];
          if (v37)
          {
            *(v35 - 1) = v33;
          }

          v38 = *(v36 + 6);
          v39 = *v36;
          *v34 = v33;
          if (!v37)
          {
            break;
          }

          v40 = (v39 + 8 * (v33 - v38));
          v33 = *v40;
          *v35 = v40[1];
          v35 -= 2;
          v34 = v37 + 7;
          v36 = v37;
        }

        while (v33 != *(v37 + 7));
      }
    }

    *(a1 + 208) = kaldi::PitchFrameInfo::ComputeLatency(v32, *(a1 + 56));
    v41 = *(a1 + 76);
    if (v41 != -1 && v31 > v41)
    {
      v43 = 0;
      v44 = v31 - v41;
      do
      {
        v45 = *(*(*(a1 + 136) + (((v43 + *(a1 + 160)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v43 + *(a1 + 160)) & 0x1FF));
        if (v45)
        {
          v46 = *v45;
          if (*v45)
          {
            *(v45 + 8) = v46;
            operator delete(v46);
          }

          MEMORY[0x1B8C85350](v45, 0x1020C403D3F9D26);
        }

        ++v43;
      }

      while (v44 != v43);
      v47 = *(a1 + 160);
      v48 = *(a1 + 136);
      v49 = (v48 + 8 * (v47 >> 9));
      if (*(a1 + 144) == v48)
      {
        v50 = 0;
      }

      else
      {
        v50 = *v49 + 8 * (*(a1 + 160) & 0x1FFLL);
      }

      v84.__locale_ = (v48 + 8 * (v47 >> 9));
      v85 = v50;
      v51 = std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>::operator+[abi:ne200100](&v84, v44);
      std::deque<kaldi::AudioAnalyticsFrameInfo *>::erase((a1 + 128), v49, v50, v51, v52);
      *(*(*(*(a1 + 136) + ((*(a1 + 160) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 160) & 0x1FFLL)) + 32) = 0;
    }

    if (kaldi::g_kaldi_verbose_level >= 4)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v84, 4);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84, "Latency is ", 11);
      MEMORY[0x1B8C84C00](v53, *(a1 + 208));
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v84);
    }

    std::vector<int>::resize((a1 + 272), *(a1 + 176));
    if (*(a1 + 176))
    {
      v54 = v104;
      v84.__locale_ = 0;
      v85 = 0;
      v86 = 0;
      kaldi::Vector<float>::Resize(&v84.__locale_, v104, 1);
      kaldi::VectorBase<float>::CopyFromVec(&v84, &v103);
      kaldi::VectorBase<float>::ApplyAbs(&v84);
      if (v82 >= 1)
      {
        v55 = 0;
        locale = v84.__locale_;
        v57 = v54 / v82;
        v58 = 3 * (v54 / v82);
        v59 = *(a1 + 272) + 4 * v83;
        v60 = 4 * (v54 / v82);
        v61 = -2 * (v54 / v82);
        do
        {
          if (v54 >= v60)
          {
            v62 = v60;
          }

          else
          {
            v62 = v54;
          }

          v63 = v55 + 1;
          v64 = v57 * (v55 + 1);
          v65 = (v64 - v58) & ~((v64 - v58) >> 31);
          v66 = v58 + v64;
          if (v66 >= v54)
          {
            v67 = v54;
          }

          else
          {
            v67 = v66;
          }

          v68 = (locale + 4 * v65);
          v69 = v68 + 1;
          if (v65 == v67 || v69 == (locale + 4 * v67))
          {
            v74 = v82;
          }

          else
          {
            v71 = 4 * v62 - 4 * (v61 & ~(v61 >> 31)) - 4;
            v72 = *v68;
            v73 = v68 + 1;
            v74 = v82;
            do
            {
              v75 = *v73++;
              v76 = v75;
              if (v72 < v75)
              {
                v72 = v76;
                v68 = v69;
              }

              v69 = v73;
              v71 -= 4;
            }

            while (v71);
          }

          *(v59 + 4 * v55) = *v68;
          v60 += v57;
          v61 += v57;
          ++v55;
        }

        while (v63 != v74);
      }

      kaldi::Vector<float>::Destroy(&v84);
    }

    if (__p)
    {
      v89 = __p;
      operator delete(__p);
    }

    kaldi::Matrix<float>::~Matrix(v91);
    kaldi::Matrix<float>::~Matrix(&v92);
    kaldi::Vector<float>::Destroy(v95);
    kaldi::Matrix<float>::~Matrix(v96);
    kaldi::Matrix<float>::~Matrix(v98);
    kaldi::Vector<float>::Destroy(v100);
    kaldi::Vector<float>::Destroy(v101);
    kaldi::Vector<float>::Destroy(v102);
  }

  kaldi::Vector<float>::Destroy(&v103);
}

void sub_1B56E4270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  kaldi::Matrix<float>::~Matrix(&a55);
  kaldi::Matrix<float>::~Matrix(&a60);
  kaldi::Vector<float>::Destroy(&a65);
  kaldi::Matrix<float>::~Matrix(&a68);
  kaldi::Matrix<float>::~Matrix(&STACK[0x200]);
  kaldi::Vector<float>::Destroy(v68 - 248);
  kaldi::Vector<float>::Destroy(v68 - 224);
  kaldi::Vector<float>::Destroy(v68 - 200);
  kaldi::Vector<float>::Destroy(v68 - 176);
  _Unwind_Resume(a1);
}

void kaldi::OnlineAudioAnalyticsFeatureImpl::InputFinished(kaldi::OnlineAudioAnalyticsFeatureImpl *this)
{
  *(this + 296) = 1;
  memset(v7, 0, 24);
  kaldi::OnlineAudioAnalyticsFeatureImpl::AcceptWaveform(this, v7);
  kaldi::Vector<float>::Destroy(v7);
  if (*(this + 44) < *(this + 17) && (*(this + 72) & 1) == 0)
  {
    kaldi::OnlineAudioAnalyticsFeatureImpl::RecomputeBacktraces(this);
  }

  *(this + 52) = 0;
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v7, 3);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Pitch-tracking Viterbi cost is ", 31);
    LODWORD(v3) = *(this + 44);
    v4 = MEMORY[0x1B8C84BE0](v2, *(this + 30) / v3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " per frame, over ", 17);
    v6 = MEMORY[0x1B8C84C10](v5, *(this + 44));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " frames.", 8);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v7);
  }
}

void sub_1B56E44D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineAudioAnalyticsFeatureImpl::NumFramesAvailable(kaldi::OnlineAudioAnalyticsFeatureImpl *this, uint64_t a2, char a3)
{
  v3 = *(this + 9) * 0.001;
  v4 = (v3 * *(this + 2));
  if ((*(this + 296) & 1) == 0)
  {
    v4 += *(this + 21);
  }

  if (a2 < v4)
  {
    return 0;
  }

  v6 = (v3 * *(this + 1));
  if (!*(this + 296) || (a3 & 1) != 0)
  {
    return ((a2 - v4) / v6) + 1;
  }

  else
  {
    return ((a2 / v6) + 0.5);
  }
}

void kaldi::OnlineAudioAnalyticsFeatureImpl::UpdateRemainder(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176);
  v5 = (*(a1 + 36) * 0.001 * *(a1 + 4));
  v6 = v5 * v4;
  kaldi::VecVec<float>();
  *(a1 + 304) = *(a1 + 304) + v7;
  v8 = kaldi::VectorBase<float>::Sum(a2);
  *(a1 + 312) = *(a1 + 312) + *&v8;
  v9 = *(a1 + 320) + *(a2 + 8);
  if (v9 >= v5 * v4)
  {
    memset(v19, 0, sizeof(v19));
    kaldi::Vector<float>::Resize(v19, (v9 - v6), 0);
    if (v9 > v6)
    {
      v10 = 0;
      v11 = 0;
      v12 = *(a1 + 320);
      v13 = *a2;
      v14 = v19[0];
      v15 = (v5 * v4);
      v16 = (v15 << 32) - (v12 << 32);
      v17 = v15 - v12;
      do
      {
        if (v6 + v10 >= v12)
        {
          v18 = (v13 + ((v16 + v11) >> 30));
        }

        else
        {
          v18 = (*(a1 + 328) + 4 * (v17 + v10 + *(a1 + 336)));
        }

        *&v14[v11 >> 30] = *v18;
        v11 += 0x100000000;
        ++v10;
      }

      while (v6 + v10 < v9);
    }

    kaldi::Vector<float>::Swap((a1 + 328), v19);
    kaldi::Vector<float>::Destroy(v19);
  }

  else
  {
    kaldi::Vector<float>::Resize((a1 + 328), 0, 0);
  }

  *(a1 + 320) = v9;
}

void sub_1B56E4704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

float kaldi::OnlineAudioAnalyticsFeatureImpl::ExtractFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v8 = a3 - *(a1 + 320);
  v9 = v7 + v8;
  v10 = *(a2 + 8);
  if (v7 + v8 <= v10)
  {
    if ((v8 & 0x80000000) != 0)
    {
      v16 = *(a1 + 336) + v8;
      v17 = *(a1 + 320) - a3;
      v32 = 0;
      v33 = 0;
      v18 = *a4;
      v30 = 0;
      v31 = v18;
      LODWORD(v32) = v17;
      v28 = *(a1 + 328) + 4 * v16;
      v29 = v17;
      kaldi::VectorBase<float>::CopyFromVec(&v31, &v28);
      v32 = 0;
      v33 = 0;
      v19 = *a4 + 4 * v17;
      v30 = 0;
      v31 = v19;
      LODWORD(v32) = v9;
      v28 = *a2;
      v29 = v9;
      v15 = &v31;
      v14 = &v28;
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v31 = *a2 + 4 * (v8 & 0x7FFFFFFF);
      LODWORD(v32) = v7;
      v14 = &v31;
      v15 = a4;
    }

    kaldi::VectorBase<float>::CopyFromVec(v15, v14);
    v20 = *(a1 + 12);
    if (v20 != 0.0)
    {
      v21 = v20;
      v22 = *(a4 + 8);
      if (v22 >= 2)
      {
        v23 = -v20;
        v24 = v22 + 1;
        v25 = (*a4 + 4 * v22 - 4);
        v26 = v25;
        do
        {
          v27 = *--v26;
          *v25 = *v25 + (v23 * v27);
          --v24;
          v25 = v26;
        }

        while (v24 > 2);
      }

      result = (1.0 - v21) * **a4;
      **a4 = result;
    }
  }

  else
  {
    v12 = v10 - v8;
    kaldi::VectorBase<float>::SetZero(a4);
    v32 = 0;
    v33 = 0;
    v31 = *a4;
    LODWORD(v32) = v12;
    kaldi::OnlineAudioAnalyticsFeatureImpl::ExtractFrame(a1, a2, a3, &v31);
  }

  return result;
}

void kaldi::OnlineAudioAnalyticsFeatureImpl::RecomputeBacktraces(kaldi::OnlineAudioAnalyticsFeatureImpl *this)
{
  if (*(this + 19) == -1)
  {
    v2 = *(this + 42);
    v3 = (v2 - 1);
    if (v2 != 1)
    {
      v4 = *(this + 44);
      v5 = *(this + 23);
      v6 = *(this + 24);
      if (!v4)
      {
        goto LABEL_33;
      }

      v7 = 0;
      v8 = (v6 - v5) >> 3;
      v9 = *(this + 38) / *(this + 40) - *(this + 39) / *(this + 40) * (*(this + 39) / *(this + 40));
      v10 = v4 - v2 + 1;
      v11 = fabsf(v9);
      v12 = *(this + 23);
      do
      {
        v13 = *(*v12 + 28);
        if (v13 != v9 && (COERCE_INT(fabs(v13 - v9)) > 2139095039 || vabds_f32(v13, v9) > ((v11 + fabsf(v13)) * 0.01)))
        {
          v7 = 1;
        }

        v12 += 8;
        --v8;
      }

      while (v8);
      if (v7)
      {
        v14 = *(this + 56);
        v51 = 0;
        v52 = 0;
        v53 = 0;
        kaldi::Vector<float>::Resize(&v51, v14, 0);
        memset(v50, 0, sizeof(v50));
        kaldi::Vector<float>::Resize(v50, v52, 1);
        kaldi::VectorBase<float>::CopyFromVec(v50, &v51);
        v47 = 0;
        v48 = 0;
        v15 = 0.0;
        v49 = 0;
        if (v2 >= 2)
        {
          v16 = 8 * v10;
          v17 = 1;
          do
          {
            v18 = *(*(this + 23) + v16);
            kaldi::VectorBase<float>::Scale();
            kaldi::AudioAnalyticsFrameInfo::ComputeBacktraces(*(*(*(this + 17) + (((v17 + *(this + 20)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v17 + *(this + 20)) & 0x1FF)), this, v18, this + 88, &v51, &v47, v50);
            kaldi::Vector<float>::Swap(&v51, v50);
            kaldi::VectorBase<float>::Min(&v51, v19);
            v21 = v20;
            kaldi::VectorBase<float>::Add(&v51, -v20);
            v15 = v15 + v21;
            v16 += 8;
            ++v17;
            --v3;
          }

          while (v3);
        }

        if (kaldi::g_kaldi_verbose_level > 2)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(v46, 3);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "Forward-cost per frame changed from ", 36);
          LODWORD(v23) = *(this + 44);
          v24 = MEMORY[0x1B8C84BE0](v22, *(this + 30) / v23);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " to ", 4);
          LODWORD(v26) = *(this + 44);
          MEMORY[0x1B8C84BE0](v25, v15 / v26);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(v46);
        }

        *(this + 30) = v15;
        kaldi::Vector<float>::Swap(this + 27, &v51);
        LODWORD(v46[0].__locale_) = 0;
        kaldi::VectorBase<float>::Min(this + 216, v46, v27);
        v28 = *(this + 32);
        v29 = *(this + 44);
        if (v29 != (v28 - *(this + 31)) >> 3)
        {
          std::vector<std::pair<int,float>>::resize(this + 31, v29);
          v28 = *(this + 32);
        }

        v30 = *(this + 21) + *(this + 20) - 1;
        v31 = *(*(*(this + 17) + ((v30 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v30 & 0x1FF));
        if (v31)
        {
          locale = v46[0].__locale_;
          v33 = v31 + 7;
          if (LODWORD(v46[0].__locale_) != v31[7])
          {
            v34 = (v28 - 4);
            v35 = v31;
            do
            {
              v36 = *(v35 + 4);
              if (v36)
              {
                *(v34 - 1) = locale;
              }

              v37 = v35[6];
              v38 = *v35;
              *v33 = locale;
              if (!v36)
              {
                break;
              }

              v39 = (v38 + 8 * (locale - v37));
              locale = *v39;
              *v34 = v39[1];
              v34 -= 2;
              v33 = v36 + 7;
              v35 = v36;
            }

            while (locale != v36[7]);
          }
        }

        *(this + 52) = kaldi::PitchFrameInfo::ComputeLatency(v31, *(this + 14));
        v40 = *(this + 23);
        v41 = *(this + 24);
        if (v41 != v40)
        {
          v42 = 0;
          do
          {
            v43 = *(v40 + 8 * v42);
            if (v43)
            {
              kaldi::Vector<float>::Destroy(*(v40 + 8 * v42));
              MEMORY[0x1B8C85350](v43, 0x1080C4066DFD6F0);
              v40 = *(this + 23);
              v41 = *(this + 24);
            }

            ++v42;
          }

          while (v42 < (v41 - v40) >> 3);
        }

        *(this + 24) = v40;
        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }

        kaldi::Vector<float>::Destroy(v50);
        kaldi::Vector<float>::Destroy(&v51);
      }

      else
      {
LABEL_33:
        if (v6 != v5)
        {
          v44 = 0;
          do
          {
            v45 = *(v5 + 8 * v44);
            if (v45)
            {
              kaldi::Vector<float>::Destroy(*(v5 + 8 * v44));
              MEMORY[0x1B8C85350](v45, 0x1080C4066DFD6F0);
              v5 = *(this + 23);
              v6 = *(this + 24);
            }

            ++v44;
          }

          while (v44 < (v6 - v5) >> 3);
        }

        *(this + 24) = v5;
      }
    }
  }
}

void sub_1B56E4D38(_Unwind_Exception *a1)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  kaldi::Vector<float>::Destroy(v1 - 144);
  kaldi::Vector<float>::Destroy(v1 - 120);
  _Unwind_Resume(a1);
}

void kaldi::OnlineAudioAnalyticsFeatureImpl::~OnlineAudioAnalyticsFeatureImpl(kaldi::OnlineAudioAnalyticsFeatureImpl *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v17 = (v2 + 40);
    std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
    v3 = *(v2 + 16);
    if (v3)
    {
      *(v2 + 24) = v3;
      operator delete(v3);
    }

    MEMORY[0x1B8C85350](v2, 0x1030C40864D17A3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    kaldi::Vector<float>::Destroy(v4 + 88);
    v17 = (v4 + 48);
    std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
    v5 = *(v4 + 24);
    if (v5)
    {
      *(v4 + 32) = v5;
      operator delete(v5);
    }

    MEMORY[0x1B8C85350](v4, 0x10B0C40587FD9DDLL);
  }

  v6 = *(this + 21);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*(*(this + 17) + (((i + *(this + 20)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((i + *(this + 20)) & 0x1FF));
      if (v8)
      {
        v9 = *v8;
        if (*v8)
        {
          *(v8 + 8) = v9;
          operator delete(v9);
        }

        MEMORY[0x1B8C85350](v8, 0x1020C403D3F9D26);
        v6 = *(this + 21);
      }
    }
  }

  v11 = *(this + 23);
  v10 = *(this + 24);
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      v13 = *(v11 + 8 * v12);
      if (v13)
      {
        kaldi::Vector<float>::Destroy(*(v11 + 8 * v12));
        MEMORY[0x1B8C85350](v13, 0x1080C4066DFD6F0);
        v11 = *(this + 23);
        v10 = *(this + 24);
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  kaldi::Vector<float>::Destroy(this + 328);
  v14 = *(this + 34);
  if (v14)
  {
    *(this + 35) = v14;
    operator delete(v14);
  }

  v15 = *(this + 31);
  if (v15)
  {
    *(this + 32) = v15;
    operator delete(v15);
  }

  kaldi::Vector<float>::Destroy(this + 216);
  v16 = *(this + 23);
  if (v16)
  {
    *(this + 24) = v16;
    operator delete(v16);
  }

  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](this + 16);
  kaldi::Vector<float>::Destroy(this + 88);
}

void *std::deque<kaldi::AudioAnalyticsFrameInfo *>::erase(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((a5 - *a4) >> 3) + ((a4 - a2) << 6) - ((a3 - *a2) >> 3);
  }

  v7 = a1[1];
  v8 = (v7 + 8 * (a1[4] >> 9));
  if (a1[2] == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 8 * (a1[4] & 0x1FFLL);
  }

  v33 = (v7 + 8 * (a1[4] >> 9));
  v34 = v9;
  if (a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((a3 - *a2) >> 3) + ((a2 - v8) << 6) - ((v9 - *v8) >> 3);
  }

  v11 = std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>::operator+[abi:ne200100](&v33, v10);
  v32.n128_u64[0] = v11;
  v32.n128_u64[1] = v12;
  if (v6 >= 1)
  {
    if (v10 <= (a1[5] - v6) >> 1)
    {
      v19 = v11;
      v20 = v12;
      v21 = v33;
      v22 = v34;
      v23 = std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>::operator+[abi:ne200100](&v32, v6);
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,0>(v21, v22, v19, v20, v23, v24, &v35);
      v25 = v34;
      if (v34 != v36)
      {
        v26 = v33;
        do
        {
          v25 += 8;
          v34 = v25;
          if (v25 - *v26 == 4096)
          {
            v27 = v26[1];
            ++v26;
            v25 = v27;
            v33 = v26;
            v34 = v27;
          }
        }

        while (v25 != v36);
      }

      v28 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v28;
        ;
      }
    }

    else
    {
      v13 = std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>::operator+[abi:ne200100](&v32, v6);
      v15 = a1[4] + a1[5];
      v16 = a1[1];
      v17 = (v16 + 8 * (v15 >> 9));
      if (a1[2] == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = &(*v17)[8 * (v15 & 0x1FF)];
      }

      v35 = v32;
      std::__for_each_segment[abi:ne200100]<std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>>>(v13, v14, v17, v18, &v35);
      a1[5] -= v6;
        ;
      }
    }
  }

  v29 = a1[1];
  if (a1[2] == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v29 + 8 * (a1[4] >> 9)) + 8 * (a1[4] & 0x1FFLL);
  }

  v35.n128_u64[0] = v29 + 8 * (a1[4] >> 9);
  v35.n128_u64[1] = v30;
  return std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>::operator+[abi:ne200100](&v35, v10);
}

void *std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
    }

    else
    {
      result += v4 >> 9;
    }
  }

  return result;
}

uint64_t kaldi::OnlineAudioAnalyticsFeature::IsLastFrame(kaldi::OnlineAudioAnalyticsFeature *this, int a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 176) - *(v2 + 208);
  v4 = *(v2 + 296);
  if (a2 + 1 == v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

float kaldi::OnlineAudioAnalyticsFeature::GetFrame(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = (v3[31] + 8 * a2);
  v5 = *a3;
  *v5 = v4[1];
  v6 = *v4;
  v7 = v3[11];
  *(v5 + 4) = 1.0 / *(v7 + 4 * v6);
  *(v5 + 8) = *(v7 + 4 * v6);
  result = *(v3[34] + 4 * a2);
  *(v5 + 12) = result;
  return result;
}

void kaldi::OnlineAudioAnalyticsFeature::~OnlineAudioAnalyticsFeature(kaldi::OnlineAudioAnalyticsFeature *this)
{
  *this = &unk_1F2D298A8;
  v1 = *(this + 1);
  if (v1)
  {
    kaldi::OnlineAudioAnalyticsFeatureImpl::~OnlineAudioAnalyticsFeatureImpl(v1);
    MEMORY[0x1B8C85350]();
  }
}

{
  kaldi::OnlineAudioAnalyticsFeature::~OnlineAudioAnalyticsFeature(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineProcessAudioAnalytics::OnlineProcessAudioAnalytics(uint64_t a1, __int128 *a2, void (***a3)(void))
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = *(a2 + 40);
  v7 = *(a2 + 41);
  v8 = *(a2 + 42);
  v9 = *(a2 + 43);
  v10 = *(a2 + 44);
  v11 = *(a2 + 45);
  v12 = *(a2 + 46);
  v13 = *(a2 + 47);
  *(a1 + 64) = 0u;
  *(a1 + 48) = a3;
  *(a1 + 56) = v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  (**a3)(a3);
  v14 = *(a1 + 40);
  *(a1 + 60) = v14;
  if (*(a1 + 41))
  {
    v14 |= 2u;
    *(a1 + 60) = v14;
  }

  if (*(a1 + 42) == 1)
  {
    v14 |= 4u;
    *(a1 + 60) = v14;
  }

  if (*(a1 + 43) == 1)
  {
    v14 |= 8u;
    *(a1 + 60) = v14;
  }

  if (*(a1 + 44) == 1)
  {
    v14 |= 0x10u;
    *(a1 + 60) = v14;
  }

  if (*(a1 + 45) == 1)
  {
    v14 |= 0x20u;
    *(a1 + 60) = v14;
  }

  if (*(a1 + 46) == 1)
  {
    v14 |= 0x40u;
    *(a1 + 60) = v14;
  }

  if (*(a1 + 47) == 1)
  {
    *(a1 + 60) = v14 | 0x80;
  }

  return a1;
}

void sub_1B56E5544(_Unwind_Exception *exception_object)
{
  v4 = v1[11];
  if (v4)
  {
    v1[12] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[9] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::OnlineProcessAudioAnalytics::NumFramesReady(kaldi::OnlineProcessAudioAnalytics *this)
{
  result = (*(**(this + 6) + 8))(*(this + 6));
  if (result)
  {
    v3 = result;
    if ((*(**(this + 6) + 16))(*(this + 6), (result - 1)))
    {
      return (*(this + 9) + v3);
    }

    else
    {
      v4 = v3 - *(this + 7) + *(this + 9);
      return v4 & ~(v4 >> 31);
    }
  }

  return result;
}

void kaldi::OnlineProcessAudioAnalytics::GetFrame(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 36);
  v6 = __OFSUB__(a2, v5);
  v7 = a2 - v5;
  if (v7 < 0 != v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  kaldi::OnlineProcessAudioAnalytics::NumFramesReady(a1);
  **a3 = *(a1 + 60);
  if (*(a1 + 40) == 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    kaldi::Vector<float>::Resize(&v17, 4, 0);
    v9 = (*(**(a1 + 48) + 24))(*(a1 + 48), v8, &v17);
    v10 = *(a1 + 4);
    v11 = kaldi::NccfToPovFeature(v9, *v17);
    v12 = *(a1 + 8);
    kaldi::Vector<float>::Destroy(&v17);
    *(*a3 + 4) = v12 + (v10 * v11);
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (*(a1 + 41) == 1)
  {
    *(*a3 + 4 * v13++) = kaldi::OnlineProcessAudioAnalytics::GetNormalizedLogPitchFeature(a1, v8);
  }

  if (*(a1 + 42) == 1)
  {
    *(*a3 + 4 * v13++) = kaldi::OnlineProcessAudioAnalytics::GetDeltaPitchFeature(a1, v8, 1u);
  }

  if (*(a1 + 43) == 1)
  {
    *(*a3 + 4 * v13++) = kaldi::OnlineProcessAudioAnalytics::GetDeltaPitchFeature(a1, v8, 2u);
  }

  if (*(a1 + 44) == 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    kaldi::Vector<float>::Resize(&v17, 4, 0);
    (*(**(a1 + 48) + 24))(*(a1 + 48), v8, &v17);
    v14 = v17[1];
    kaldi::Vector<float>::Destroy(&v17);
    *(*a3 + 4 * v13++) = logf(v14);
  }

  if (*(a1 + 45) == 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    kaldi::Vector<float>::Resize(&v17, 4, 0);
    (*(**(a1 + 48) + 24))(*(a1 + 48), v8, &v17);
    v15 = *(v17 + 2);
    kaldi::Vector<float>::Destroy(&v17);
    *(*a3 + 4 * v13++) = v15;
  }

  if (*(a1 + 46) == 1)
  {
    *(*a3 + 4 * v13++) = kaldi::OnlineProcessAudioAnalytics::GetSmoothedPov(a1, v8);
  }

  if (*(a1 + 47) == 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    kaldi::Vector<float>::Resize(&v17, 4, 0);
    (*(**(a1 + 48) + 24))(*(a1 + 48), v8, &v17);
    v16 = *(v17 + 3);
    kaldi::Vector<float>::Destroy(&v17);
    *(*a3 + 4 * v13) = v16;
  }
}

void sub_1B56E58F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

float kaldi::OnlineProcessAudioAnalytics::GetNormalizedLogPitchFeature(kaldi::OnlineProcessAudioAnalytics *this, uint64_t a2)
{
  kaldi::OnlineProcessAudioAnalytics::UpdateNormalizationStats(this, a2);
  memset(v9, 0, sizeof(v9));
  kaldi::Vector<float>::Resize(v9, 4, 0);
  (*(**(this + 6) + 24))(*(this + 6), a2, v9);
  v4 = *(v9[0] + 1);
  kaldi::Vector<float>::Destroy(v9);
  v5 = logf(v4);
  v6 = *(this + 11) + 24 * a2;
  v7 = *(v6 + 16) / *(v6 + 8);
  return *this * (v5 - v7);
}

void sub_1B56E5A18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

float kaldi::OnlineProcessAudioAnalytics::GetDeltaPitchFeature(kaldi::OnlineProcessAudioAnalytics *this, int a2, unsigned int a3)
{
  v6 = *(this + 8);
  v7 = (a2 - v6) & ~((a2 - v6) >> 31);
  v8 = a2 + v6;
  v9 = a2 + v6 + 1;
  v10 = (*(**(this + 6) + 8))(*(this + 6));
  if (v10 >= v9)
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = v10;
  }

  kaldi::Matrix<float>::Matrix(v38, (v11 - v7), 1, 0, 0);
  kaldi::Matrix<float>::Matrix(v36);
  if (v11 > v7)
  {
    v12 = 0;
    do
    {
      memset(v40, 0, 24);
      kaldi::Vector<float>::Resize(v40, 4, 0);
      (*(**(this + 6) + 24))(*(this + 6), v7, v40);
      v13 = *(v40[0] + 1);
      kaldi::Vector<float>::Destroy(v40);
      *(v38[0] + 4 * v39 * v12) = logf(v13);
      v7 = (v7 + 1);
      ++v12;
    }

    while (v11 != v7);
  }

  v40[0] = __PAIR64__(*(this + 8), a3);
  kaldi::ComputeDeltas(v40, v38, v36);
  v14 = *(this + 8);
  v15 = (this + 64);
  if (a2 >= ((*(this + 9) - v14) >> 2))
  {
    do
    {
      v16 = kaldi::Rand(0);
      v17 = kaldi::Rand(0);
      v18 = (v16 + 1.0) / 2147483650.0;
      v19 = sqrtf(logf(v18) * -2.0);
      v20 = (v17 + 1.0) / 2147483650.0;
      v21 = v20 * 6.28318531;
      v22 = (v19 * cosf(v21)) * *(this + 5);
      v24 = *(this + 9);
      v23 = *(this + 10);
      if (v24 >= v23)
      {
        v26 = *v15;
        v27 = v24 - *v15;
        v28 = v27 >> 2;
        v29 = (v27 >> 2) + 1;
        if (v29 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v30 = v23 - v26;
        if (v30 >> 1 > v29)
        {
          v29 = v30 >> 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v31 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 64, v31);
        }

        *(4 * v28) = v22;
        v25 = 4 * v28 + 4;
        memcpy(0, v26, v27);
        v32 = *(this + 8);
        *(this + 8) = 0;
        *(this + 9) = v25;
        *(this + 10) = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v24 = v22;
        v25 = (v24 + 1);
      }

      *(this + 9) = v25;
      v14 = *(this + 8);
    }

    while (a2 >= ((v25 - v14) >> 2));
  }

  if (a2 >= v6)
  {
    v33 = v6;
  }

  else
  {
    v33 = a2;
  }

  if (a3 == 1)
  {
    v34 = (*(v36[0] + 4 * v37 * v33 + 4) + *(v14 + 4 * a2)) * *(this + 3);
  }

  else
  {
    v34 = (*(v36[0] + 4 * v37 * v33 + 4 * a3) + *(v14 + 4 * a2) * 0.1) * *(this + 4);
  }

  kaldi::Matrix<float>::~Matrix(v36);
  kaldi::Matrix<float>::~Matrix(v38);
  return v34;
}

void sub_1B56E5D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::Matrix<float>::~Matrix(va1);
  _Unwind_Resume(a1);
}

float kaldi::OnlineProcessAudioAnalytics::GetSmoothedPov(kaldi::OnlineProcessAudioAnalytics *this, int a2)
{
  memset(v17, 0, sizeof(v17));
  kaldi::Vector<float>::Resize(v17, 4, 0);
  if (a2 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = a2;
  }

  v5 = (*(**(this + 6) + 8))(*(this + 6));
  v6 = (v4 - 4);
  if (v5 >= a2 + 1)
  {
    v7 = a2 + 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 - v6;
  memset(v16, 0, sizeof(v16));
  kaldi::Vector<float>::Resize(v16, (v7 - v6), 0);
  if (v7 > v6)
  {
    v9 = v4 - v6 - 4;
    do
    {
      memset(v15, 0, sizeof(v15));
      kaldi::Vector<float>::Resize(v15, 4, 0);
      v10 = (*(**(this + 6) + 24))(*(this + 6), v6, v15);
      v11 = kaldi::NccfToPov(v10, *v15[0]);
      *(v16[0] + v9) = v11;
      kaldi::Vector<float>::Destroy(v15);
      ++v9;
      v6 = (v6 + 1);
    }

    while (v7 != v6);
  }

  if (v8 <= 0)
  {
    v13 = 0.0;
  }

  else
  {
    v12 = kaldi::VectorBase<float>::Sum(v16);
    v13 = *&v12 / v8;
  }

  kaldi::Vector<float>::Destroy(v16);
  kaldi::Vector<float>::Destroy(v17);
  return v13;
}

void sub_1B56E5F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  kaldi::Vector<float>::Destroy(va);
  kaldi::Vector<float>::Destroy(va1);
  _Unwind_Resume(a1);
}

void kaldi::AudioAnalyticsHelper::ExtractDesiredAudioAnalytics(float **a1, int a2, uint64_t a3)
{
  if (kaldi::MatrixBase<float>::NumRows(a1) >= 1)
  {
    v6 = *a1;
    kaldi::MatrixBase<float>::NumCols(a1);
    v7 = 0;
    v8 = 0;
    v9 = *v6;
    v10 = 1;
    do
    {
      v11 = kaldi::AudioAnalyticsHelper::FeatsArray[v7];
      if ((v11 & v9) != 0)
      {
        if ((v11 & a2) != 0)
        {
          v12 = kaldi::MatrixBase<float>::NumRows(a1);
          kaldi::SubMatrix<float>::SubMatrix(v15, a1, 0, v12, v10, 1);
          v13 = kaldi::MatrixBase<float>::NumRows(a1);
          kaldi::SubMatrix<float>::SubMatrix(v14, a3, 0, v13, v8, 1);
          kaldi::MatrixBase<float>::CopyFromMat<float>(v14, v15, 111);
          ++v8;
          quasar::Bitmap::~Bitmap(v14);
          quasar::Bitmap::~Bitmap(v15);
        }

        ++v10;
      }

      ++v7;
    }

    while (v7 != 8);
  }
}

void sub_1B56E609C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  quasar::Bitmap::~Bitmap(&a9);
  quasar::Bitmap::~Bitmap(&a13);
  _Unwind_Resume(a1);
}

void kaldi::OnlineProcessAudioAnalytics::UpdateNormalizationStats(kaldi::OnlineProcessAudioAnalytics *this, unsigned int a2)
{
  v5 = *(this + 11);
  v6 = *(this + 12);
  v4 = (this + 88);
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) <= a2)
  {
    std::vector<kaldi::OnlineProcessPitch::NormalizationStats>::resize(v4, a2 + 1);
  }

  v8 = (*(**(this + 6) + 8))(*(this + 6));
  v9 = (*(**(this + 6) + 16))(*(this + 6), (v8 - 1));
  v10 = *(this + 11);
  v11 = v10 + 24 * a2;
  if (*v11 != v8 || *(v11 + 4) != v9)
  {
    v12 = (a2 - *(this + 6)) & ~((a2 - *(this + 6)) >> 31);
    v13 = a2 + *(this + 7);
    if ((v13 + 1) < v8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = v8;
    }

    if (a2 && (v15 = v10 + 24 * (a2 - 1), *v15 == v8) && *(v15 + 4) == v9)
    {
      *v11 = *v15;
      *(v11 + 16) = *(v15 + 16);
      v16 = (a2 - 1 - *(this + 6)) & ~((a2 - 1 - *(this + 6)) >> 31);
      v17 = *(this + 7) + a2;
      if (v17 >= v8)
      {
        v18 = v8;
      }

      else
      {
        v18 = v17;
      }

      if (v12 != v16)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        kaldi::Vector<float>::Resize(&v31, 4, 0);
        v19 = (*(**(this + 6) + 24))(*(this + 6), v16, &v31);
        v28 = kaldi::NccfToPov(v19, *v31);
        v20 = logf(v31[1]);
        v21.f32[0] = v28;
        v21.f32[1] = v28 * v20;
        *(v11 + 8) = vsubq_f64(*(v11 + 8), vcvtq_f64_f32(v21));
        kaldi::Vector<float>::Destroy(&v31);
      }

      if (v14 != v18)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        kaldi::Vector<float>::Resize(&v31, 4, 0);
        v22 = (*(**(this + 6) + 24))(*(this + 6), v18, &v31);
        v29 = kaldi::NccfToPov(v22, *v31);
        v23 = logf(v31[1]);
        v24.f32[0] = v29;
        v24.f32[1] = v29 * v23;
        *(v11 + 8) = vaddq_f64(*(v11 + 8), vcvtq_f64_f32(v24));
        kaldi::Vector<float>::Destroy(&v31);
      }
    }

    else
    {
      *v11 = v8;
      *(v11 + 4) = v9;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      kaldi::Vector<float>::Resize(&v31, 4, 0);
      if (v12 < v14)
      {
        do
        {
          v25 = (*(**(this + 6) + 24))(*(this + 6), v12, &v31);
          v30 = kaldi::NccfToPov(v25, *v31);
          v26 = logf(v31[1]);
          v27.f32[0] = v30;
          v27.f32[1] = v30 * v26;
          *(v11 + 8) = vaddq_f64(*(v11 + 8), vcvtq_f64_f32(v27));
          v12 = (v12 + 1);
        }

        while (v14 != v12);
      }

      kaldi::Vector<float>::Destroy(&v31);
    }
  }
}

void sub_1B56E63F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void *std::vector<kaldi::AudioAnalyticsFrameInfo::StateInfo>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B56E64A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<kaldi::AudioAnalyticsFrameInfo *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v10);
}

void sub_1B56E664C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,0>@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<kaldi::AudioAnalyticsFrameInfo **,std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,0>(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<kaldi::AudioAnalyticsFrameInfo **,std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,0>(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<kaldi::AudioAnalyticsFrameInfo **,std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,0>@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a1) >> 3;
      }

      v11 -= 8 * v13;
      a4 -= 8 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 8 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *--v6;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = v6[1];
      ++v6;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>>>(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo **,std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,0>(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo **,std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,0>(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo **,std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,0>(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo **,std::__deque_iterator<kaldi::AudioAnalyticsFrameInfo *,kaldi::AudioAnalyticsFrameInfo **,kaldi::AudioAnalyticsFrameInfo *&,kaldi::AudioAnalyticsFrameInfo ***,long,512l>,0>@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 3 >= v11 >> 3 ? v11 >> 3 : (a3 - v9) >> 3;
      if (v12)
      {
        __src = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

void sub_1B56E6ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  if (a2)
  {
    quasar::tennessee::nashville::CreateTextNormalizer();
  }

  quasar::tennessee::nashville::CreateTextNormalizer(va, va1);
  _Unwind_Resume(a1);
}

void sub_1B56E6BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    quasar::tennessee::nashville::CreateTextNormalizer();
  }

  std::make_unique[abi:ne200100]<quasar::tennessee::nashville::TextNormalizer<std::unique_ptr<quasar::tennessee::archive::ImmutableArchive>,std::unique_ptr<quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>>>,std::unique_ptr<quasar::tennessee::archive::ImmutableArchive>,std::unique_ptr<quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>>,quasar::tennessee::nashville::TextNormalizerOptions const&,0>(va);
  MEMORY[0x1B8C85350](v3, v2);
  _Unwind_Resume(a1);
}

void quasar::tennessee::nashville::TextNormalizer<std::unique_ptr<quasar::tennessee::archive::ImmutableArchive>,std::unique_ptr<quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>>>::TextNormalizer(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  *a1 = &unk_1F2D29928;
  std::map<std::string,std::string>::map[abi:ne200100]((a1 + 8), a4);
  v8 = *(a4 + 24);
  *(a1 + 48) = *(a4 + 40);
  *(a1 + 32) = v8;
  v9 = *a2;
  *a2 = 0;
  *(a1 + 56) = v9;
  v10 = *a3;
  *a3 = 0;
  *(a1 + 64) = v10;
  operator new();
}

void sub_1B56E71E0(_Unwind_Exception *a1)
{
  TTokenizer::~TTokenizer((v1 + 592));
  TLexicon::~TLexicon((v1 + 72));
  v3 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 56);
  *(v1 + 56) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 + 8, *(v1 + 16));
  _Unwind_Resume(a1);
}

void sub_1B56E71F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  TTokenizer::~TTokenizer((v20 + 592));
  TLexicon::~TLexicon((v20 + 72));
  v22 = *(v20 + 64);
  *(v20 + 64) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(v20 + 56);
  *(v20 + 56) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v20 + 8, *(v20 + 16));
  _Unwind_Resume(a1);
}

uint64_t TParamManager::nameToParam(uint64_t a1, const __int32 *a2)
{
  TParamManager::find(a1, a2, &v8);
  TParamManager::end(a1, &v7);
  if (v8 == v7)
  {
    return 0;
  }

  v3 = *(v8 + 40);
  if (!v3)
  {
    return 0;
  }

  v4 = v3 - 1;
  v5 = *(a1 + 16);
  if (v4 >= (*(a1 + 24) - v5) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v5 + 8 * v4);
  }
}

uint64_t quasar::tennessee::nashville::TextNormalizer<std::unique_ptr<quasar::tennessee::archive::ImmutableArchive>,std::unique_ptr<quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>>>::~TextNormalizer(uint64_t a1)
{
  *a1 = &unk_1F2D29928;
  TTokenizer::~TTokenizer((a1 + 592));
  TLexicon::~TLexicon((a1 + 72));
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 8, *(a1 + 16));
  return a1;
}

void quasar::tennessee::nashville::TextNormalizer<std::unique_ptr<quasar::tennessee::archive::ImmutableArchive>,std::unique_ptr<quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>>>::~TextNormalizer(uint64_t a1)
{
  *a1 = &unk_1F2D29928;
  TTokenizer::~TTokenizer((a1 + 592));
  TLexicon::~TLexicon((a1 + 72));
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 8, *(a1 + 16));

  JUMPOUT(0x1B8C85350);
}

void *quasar::tennessee::nashville::TextNormalizer<std::unique_ptr<quasar::tennessee::archive::ImmutableArchive>,std::unique_ptr<quasar::tennessee::nashville::GenericNashvilleLexicon<std::string_view,quasar::tennessee::nashville::flatbuf::TokenInfoToUTF8StringViewFunctor>>>::normalize(uint64_t a1, char *a2, void *a3)
{
  if (*a3 != a3[1])
  {
    memset(v15, 0, sizeof(v15));
    quasar::QuasarExceptionMessage::QuasarExceptionMessage(v15);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v15);
  }

  v6 = *(a1 + 3184);
  ValidConfig = TParam::getValidConfig((v6 + 13600), *(a1 + 3192));
  TWordBlockMaker::TWordBlockMaker(v15, *(v6 + 4 * ValidConfig + 13760), a1 + 296);
  if (a2[23] >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  TTokenizer::tokenize(a1 + 592, v8, 0, 0, *(a1 + 3192), v15);
  v14 = 0;
  v13 = 0;
  TWordBlockMaker::save(v15, &v14, &v13);
  v10 = v9;
  if (a2[23] >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  quasar::tennessee::nashville::ExtractResult(v11, v14, v10, *(a1 + 36), *(a1 + 40), *(a1 + 44), a3);
  free(v14);
  *&v15[0] = &unk_1F2D3E4C8;
  return TAllocator::clear((&v15[4] + 8));
}

void sub_1B56E75F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TWordBlockMaker::~TWordBlockMaker(va);
  _Unwind_Resume(a1);
}

std::string *quasar::tennessee::nashville::ArchiveDataManager::ArchiveDataManager(std::string *this, const quasar::tennessee::archive::ImmutableArchive *a2, const std::__fs::filesystem::path *a3)
{
  this->__r_.__value_.__r.__words[0] = &unk_1F2D24588;
  this->__r_.__value_.__l.__size_ = 1;
  std::string::basic_string[abi:ne200100]<0>(&this->__r_.__value_.__s.__data_[16], "");
  this->__r_.__value_.__r.__words[0] = &unk_1F2D29958;
  this[1].__r_.__value_.__r.__words[2] = a2;
  if (SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, a3->__pn_.__r_.__value_.__l.__data_, a3->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = *&a3->__pn_.__r_.__value_.__l.__data_;
    this[2].__r_.__value_.__r.__words[2] = a3->__pn_.__r_.__value_.__r.__words[2];
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1B56E76B4(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void quasar::tennessee::nashville::ArchiveDataManager::~ArchiveDataManager(void **this)
{
  *this = &unk_1F2D29958;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *this = &unk_1F2D24588;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F2D29958;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *this = &unk_1F2D24588;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1B8C85350);
}

unint64_t quasar::tennessee::nashville::ArchiveDataManager::getVar(quasar::tennessee::nashville::ArchiveDataManager *this, char *a2, char *a3, unint64_t a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v14, a2);
  v7 = std::string::append(&v14, ".dat");
  v8 = v7->__r_.__value_.__r.__words[0];
  v17[0] = v7->__r_.__value_.__l.__size_;
  *(v17 + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
  v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  *(&__p.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v17 + 7);
  __p.__pn_.__r_.__value_.__r.__words[0] = v8;
  __p.__pn_.__r_.__value_.__l.__size_ = v17[0];
  *(&__p.__pn_.__r_.__value_.__s + 23) = v9;
  std::__fs::filesystem::operator/[abi:ne200100](&__p, this + 48, &v16);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if ((*(**(this + 5) + 32))(*(this + 5), &v16))
  {
    v10 = (*(**(this + 5) + 40))(*(this + 5), &v16);
    v11 = v10;
    if (a4 && v10)
    {
      (*(**(this + 5) + 16))(&__p);
      std::istream::get();
      if (v11 < a4)
      {
        a3[v11] = 0;
      }

      v12 = __p.__pn_.__r_.__value_.__r.__words[0];
      __p.__pn_.__r_.__value_.__r.__words[0] = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (SHIBYTE(v16.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__pn_.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_1B56E79CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a15)
  {
    quasar::artifact::CreatePhraseCountsArtifact();
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::tennessee::nashville::ExtractResult(uint64_t a1, unsigned int *a2, std::vector<std::string>::size_type __n, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v68 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v58 = 0;
    std::vector<std::string>::reserve(__p, __n);
    if (__n)
    {
      v31 = 1;
      do
      {
        __s = v66;
        v65 = xmmword_1B5AE2110;
        v67 = 1;
        quasar::tennessee::nashville::FormatToken(&__s, "{wordname}{origin_start}", a2, a1, 0);
        if (*(&v65 + 1) >= v65)
        {
          if (v67)
          {
            LOBYTE(v46) = 0;
            TBuffer<char>::insert(&__s, *(&v65 + 1), &v46, 1uLL);
            --*(&v65 + 1);
          }

          else if (v65)
          {
            __s[v65 - 1] = 0;
          }
        }

        else
        {
          __s[*(&v65 + 1)] = 0;
        }

        std::string::basic_string[abi:ne200100]<0>(&v56, __s);
        quasar::tennessee::nashville::ConvertToken(&v56, a6, 1);
        v32 = __p[1];
        if (__p[1] >= v58)
        {
          v34 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(__p, &v56);
        }

        else
        {
          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(__p[1], v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
          }

          else
          {
            v33 = *&v56.__r_.__value_.__l.__data_;
            *(__p[1] + 2) = *(&v56.__r_.__value_.__l + 2);
            *v32 = v33;
          }

          v34 = (v32 + 24);
        }

        __p[1] = v34;
        v35 = *a2;
        if ((v35 & 3) != 0)
        {
          v51 = 0u;
          memset(v52, 0, 144);
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          memset(v48, 0, sizeof(v48));
          v46 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v46);
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        if (v67 == 1 && __s != v66 && __s)
        {
          MEMORY[0x1B8C85310]();
        }

        a2 = (a2 + v35);
        v36 = v31++;
      }

      while (v36 < __n);
    }

    if (*(a7 + 8) < *(a7 + 16))
    {
      quasar::tennessee::ImmutableVector<std::string>::ImmutableVector<std::__wrap_iter<std::string const*>,true>(*(a7 + 8), __p[0], __p[1]);
    }

    std::vector<quasar::tennessee::ImmutableVector<std::string>>::__emplace_back_slow_path<std::vector<std::string> &>(a7, __p);
  }

  memset(&v56, 0, sizeof(v56));
  v54 = 0;
  v55 = 0;
  v53 = &v54;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v46);
  if (__n)
  {
    v11 = 0;
    v12 = 0;
    v40 = *(MEMORY[0x1E69E54D8] + 64);
    v41 = *MEMORY[0x1E69E54D8];
    v39 = *(MEMORY[0x1E69E54D8] + 72);
    v13 = 1;
    do
    {
      __s = v66;
      v65 = xmmword_1B5AE2110;
      v67 = 1;
      quasar::tennessee::nashville::FormatToken(&__s, "{wordname}{origin_start}", a2, a1, 0);
      v14 = a2[1];
      if (*(&v65 + 1) >= v65)
      {
        if (v67)
        {
          LOBYTE(__p[0]) = 0;
          TBuffer<char>::insert(&__s, *(&v65 + 1), __p, 1uLL);
          --*(&v65 + 1);
        }

        else if (v65)
        {
          __s[v65 - 1] = 0;
        }
      }

      else
      {
        __s[*(&v65 + 1)] = 0;
      }

      std::string::basic_string[abi:ne200100]<0>(&v45, __s);
      quasar::tennessee::nashville::ConvertToken(&v45, a6, 1);
      v15 = &v48[-1] + *(v47 - 24);
      if ((v15[32] & 5) == 0)
      {
        (*(**(v15 + 5) + 32))(__p);
        if (v63[0] >= 1)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, " ", 1);
        }
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v45;
      }

      else
      {
        v16 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v45.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, v16, size);
      v12 = ((v14 & 8) == 0) & (v12 | ((v14 & 4) >> 2));
      v11 = ((v14 & 2) == 0) & (v11 | v14);
      if (v11 != 1 || (v12 & 1) != 0)
      {
        if ((v11 & 1) == 0)
        {
          std::stringbuf::str();
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v53, __p);
          if (SBYTE7(v58) < 0)
          {
            operator delete(__p[0]);
          }

          v18 = v56.__r_.__value_.__l.__size_;
          if (v56.__r_.__value_.__l.__size_ >= v56.__r_.__value_.__r.__words[2])
          {
            v19 = std::vector<std::set<std::string>>::__emplace_back_slow_path<std::set<std::string> const&>(&v56, &v53);
          }

          else
          {
            std::set<std::string>::set[abi:ne200100](v56.__r_.__value_.__l.__size_, &v53);
            v19 = v18 + 24;
          }

          v56.__r_.__value_.__l.__size_ = v19;
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::swap[abi:ne200100](__p, &v46);
          __p[0] = v41;
          *(__p + *(v41 - 3)) = v40;
          *&v58 = v39;
          *(&v58 + 1) = MEMORY[0x1E69E5548] + 16;
          if (SHIBYTE(v61) < 0)
          {
            operator delete(*(&v60 + 1));
          }

          *(&v58 + 1) = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v59);
          std::iostream::~basic_iostream();
          MEMORY[0x1B8C85200](v63);
          std::__tree<std::string>::destroy(&v53, v54);
          v54 = 0;
          v55 = 0;
          v53 = &v54;
        }
      }

      else
      {
        std::stringbuf::str();
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v53, __p);
        if (SBYTE7(v58) < 0)
        {
          operator delete(__p[0]);
        }

        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::swap[abi:ne200100](__p, &v46);
        __p[0] = v41;
        *(__p + *(v41 - 3)) = v40;
        *&v58 = v39;
        *(&v58 + 1) = MEMORY[0x1E69E5548] + 16;
        if (SHIBYTE(v61) < 0)
        {
          operator delete(*(&v60 + 1));
        }

        *(&v58 + 1) = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v59);
        std::iostream::~basic_iostream();
        MEMORY[0x1B8C85200](v63);
      }

      v20 = *a2;
      if ((v20 & 3) != 0)
      {
        v62 = 0u;
        memset(v63, 0, 144);
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        memset(v59, 0, sizeof(v59));
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (v67 == 1 && __s != v66 && __s)
      {
        MEMORY[0x1B8C85310]();
      }

      a2 = (a2 + v20);
      v21 = v13++;
    }

    while (v21 < __n);
  }

  if (a4 == 1)
  {
    operator new();
  }

  if (a4 == 2 && v56.__r_.__value_.__l.__size_ != v56.__r_.__value_.__r.__words[0])
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = (v56.__r_.__value_.__r.__words[0] + 24 * v22);
      v25 = *v24;
      if (*v24 != v24 + 1)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__s);
        v26 = MEMORY[0x1B8C84C10](&v65 + 8, v23);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " ", 1);
        v28 = *(v25 + 55);
        if (v28 >= 0)
        {
          v29 = (v25 + 4);
        }

        else
        {
          v29 = v25[4];
        }

        if (v28 >= 0)
        {
          v30 = *(v25 + 55);
        }

        else
        {
          v30 = v25[5];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
        std::stringbuf::str();
        v45.__r_.__value_.__r.__words[0] = __p;
        v45.__r_.__value_.__l.__size_ = 1;
        if (*(a7 + 8) < *(a7 + 16))
        {
          quasar::tennessee::ImmutableVector<std::string>::ImmutableVector(*(a7 + 8), __p, &v58 + 8);
        }

        std::vector<quasar::tennessee::ImmutableVector<std::string>>::__emplace_back_slow_path<std::initializer_list<std::string>>(a7, &v45);
      }

      v22 = (v23 + 1);
      v23 = v22;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v56.__r_.__value_.__l.__size_ - v56.__r_.__value_.__r.__words[0]) >> 3) > v22);
  }

  *&v46 = *MEMORY[0x1E69E54D8];
  v37 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v46 + *(v46 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v47 = v37;
  *(&v47 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v50) < 0)
  {
    operator delete(*(&v49 + 1));
  }

  *(&v47 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v48);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](v52);
  std::__tree<std::string>::destroy(&v53, v54);
  __s = &v56;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&__s);
}

void sub_1B56E891C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  std::unique_ptr<std::vector<quasar::tennessee::ImmutableVector<std::string>>>::reset[abi:ne200100](&a24, 0);
  std::unique_ptr<std::vector<quasar::tennessee::ImmutableVector<std::string>>>::reset[abi:ne200100](&a69, 0);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a27);
  std::__tree<std::string>::destroy(&a63, a64);
  STACK[0x300] = &__p;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x300]);
  _Unwind_Resume(a1);
}

void TWordBlockMaker::~TWordBlockMaker(TWordBlockMaker *this)
{
  *this = &unk_1F2D3E4C8;
  TAllocator::clear((this + 72));
}

{
  *this = &unk_1F2D3E4C8;
  TAllocator::clear((this + 72));

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::tennessee::nashville::FormatToken(uint64_t result, char *__s, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  LODWORD(v8) = 0;
  v36 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69E9830];
  while (1)
  {
    while (1)
    {
      v10 = *__s;
      if (v10 != 58)
      {
        break;
      }

      result = atoi(__s + 1);
      if (__s[1] < 0)
      {
        ++__s;
      }

      else
      {
        v13 = *++__s;
        do
        {
          if ((*(v9 + 4 * v13 + 60) & 0x400) == 0)
          {
            break;
          }

          v14 = *++__s;
          v13 = v14;
        }

        while ((v14 & 0x80000000) == 0);
      }

      v8 = (result + v8);
      v15 = *(v7 + 16);
      if (v15 < v8)
      {
        do
        {
          __str[0] = 32;
          result = TBuffer<char>::insert(v7, v15, __str, 1uLL);
          v15 = *(v7 + 16);
        }

        while (v15 < v8);
      }
    }

    if (v10 != 123)
    {
      break;
    }

    v11 = strchr(__s, 125);
    if (v11)
    {
      v12 = v11 - __s + 1;
      if (!strncmp(__s, "{wordname}", v12))
      {
        result = tildeEscape((a3 + 5), v7);
        goto LABEL_69;
      }

      if (!strncmp(__s, "{text}", v12))
      {
        *__str = v34;
        v32 = 256;
        v35 = 1;
        v16 = a3[2];
        v17 = (a3[3] - v16);
        v33 = 0;
        TBuffer<char>::insert(__str, 0, (a4 + v16), v17);
        if (v33 >= v32)
        {
          if (v35)
          {
            v30 = 0;
            TBuffer<char>::insert(__str, v33--, &v30, 1uLL);
          }

          else if (v32)
          {
            *(*__str + v32 - 1) = 0;
          }
        }

        else
        {
          *(*__str + v33) = 0;
        }

        result = slashEscape(*__str, v7);
        if (v35 == 1)
        {
          result = *__str;
          if (*__str != v34)
          {
            if (*__str)
            {
              result = MEMORY[0x1B8C85310]();
            }
          }
        }
      }

      else
      {
        if (!strncmp(__s, "{text_start_index}", v12))
        {
          v18 = a3[2];
          if (v18 == -1)
          {
            v19 = -1;
          }

          else
          {
            v19 = v18 + a5;
          }

          snprintf(__str, 0x40uLL, "%lli", v19);
          v20 = 0;
          v21 = *(v7 + 16);
            ;
          }

          goto LABEL_37;
        }

        if (!strncmp(__s, "{text_end_index}", v12))
        {
          v25 = a3[3];
          if (v25 == -1)
          {
            v26 = -1;
          }

          else
          {
            v26 = v25 + a5;
          }

          snprintf(__str, 0x40uLL, "%lli", v26);
          v20 = 0;
          v21 = *(v7 + 16);
            ;
          }

LABEL_37:
          result = TBuffer<char>::insert(v7, v21, __str, v20 - 1);
          goto LABEL_69;
        }

        if (!strncmp(__s, "{origin_start}", v12) || !strncmp(__s, "{origin_end}", v12))
        {
          __str[0] = 60;
          TBuffer<char>::insert(v7, *(v7 + 16), __str, 1uLL);
          if (!strncmp(__s, "{origin_end}", v12))
          {
            __str[0] = 47;
            TBuffer<char>::insert(v7, *(v7 + 16), __str, 1uLL);
          }

          v23 = a3[1];
          if ((v23 & 0x40) != 0)
          {
            result = TBuffer<char>::insert(v7, *(v7 + 16), "voc>", 4uLL);
          }

          else if ((v23 & 0x10) != 0)
          {
            result = TBuffer<char>::insert(v7, *(v7 + 16), "junk>", 5uLL);
          }

          else
          {
            v24 = *(v7 + 16);
            if ((v23 & 0x20) != 0)
            {
              result = TBuffer<char>::insert(v7, v24, "debug>", 6uLL);
            }

            else
            {
              result = TBuffer<char>::insert(v7, v24, "oov>", 4uLL);
            }
          }
        }

        else
        {
          result = strncmp(__s, "{alt_start}", v12);
          if (result)
          {
            result = strncmp(__s, "{alt_end}", v12);
            if (result)
            {
              result = strncmp(__s, "{seq_start}", v12);
              if (result)
              {
                result = strncmp(__s, "{seq_end}", v12);
                if (result)
                {
                  __str[0] = 123;
                  result = TBuffer<char>::insert(v7, *(v7 + 16), __str, 1uLL);
                  v12 = 1;
                }

                else if ((a3[1] & 8) != 0)
                {
                  result = TBuffer<char>::insert(v7, *(v7 + 16), "</seq>", 6uLL);
                }
              }

              else if ((a3[1] & 4) != 0)
              {
                result = TBuffer<char>::insert(v7, *(v7 + 16), "<seq>", 5uLL);
              }
            }

            else if ((a3[1] & 2) != 0)
            {
              result = TBuffer<char>::insert(v7, *(v7 + 16), "</alt>", 6uLL);
            }
          }

          else if (a3[1])
          {
            result = TBuffer<char>::insert(v7, *(v7 + 16), "<alt>", 5uLL);
          }
        }
      }

LABEL_69:
      __s += v12;
    }

    else
    {
      __str[0] = 123;
      result = TBuffer<char>::insert(v7, *(v7 + 16), __str, 1uLL);
LABEL_24:
      ++__s;
    }
  }

  if (*__s)
  {
    __str[0] = *__s;
    result = TBuffer<char>::insert(v7, *(v7 + 16), __str, 1uLL);
    goto LABEL_24;
  }

  return result;
}

void sub_1B56E90E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a48 == 1)
  {
    quasar::tennessee::nashville::FormatToken(&a13, v48);
  }

  _Unwind_Resume(exception_object);
}

std::string *quasar::tennessee::nashville::ConvertToken(std::string *result, int a2, int a3)
{
  v5 = result;
  v6 = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = result->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = result->__r_.__value_.__l.__size_;
  }

  v9 = (v7 + size);
  if (size > 5)
  {
    v10 = size;
    result = v7;
    do
    {
      result = memchr(result, 60, v10 - 5);
      if (!result)
      {
        break;
      }

      if (LODWORD(result->__r_.__value_.__l.__data_) == 1853188668 && WORD2(result->__r_.__value_.__r.__words[0]) == 15979)
      {
        if (result == v9 || result - v7 == -1)
        {
          break;
        }

        v12 = "<JUNK>";
LABEL_19:
        result = MEMORY[0x1B8C84820](v5, v12);
        goto LABEL_62;
      }

      result = (result + 1);
      v10 = v9 - result;
    }

    while (v9 - result > 5);
  }

  if (size >= 5)
  {
    v13 = size;
    v14 = v7;
    do
    {
      v15 = memchr(v14, 60, v13 - 4);
      if (!v15)
      {
        break;
      }

      if (LODWORD(v15->__r_.__value_.__l.__data_) == 1668249148 && v15->__r_.__value_.__s.__data_[4] == 62)
      {
        if (v15 != v9 && v15 - v7 != -1)
        {
          result = std::string::erase(v5, v15 - v7, 5uLL);
          goto LABEL_62;
        }

        break;
      }

      v14 = (&v15->__r_.__value_.__l.__data_ + 1);
      v13 = v9 - v14;
    }

    while (v9 - v14 >= 5);
    result = v7;
    do
    {
      result = memchr(result, 60, size - 4);
      if (!result)
      {
        break;
      }

      if (LODWORD(result->__r_.__value_.__l.__data_) == 1987014460 && result->__r_.__value_.__s.__data_[4] == 62)
      {
        if (result != v9 && result - v7 != -1)
        {
          result = std::string::erase(v5, result - v7, 5uLL);
          if (a2)
          {
            v18 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
            if (v18 >= 0)
            {
              v19 = v5;
            }

            else
            {
              v19 = v5->__r_.__value_.__r.__words[0];
            }

            if (v18 < 0)
            {
              v18 = v5->__r_.__value_.__l.__size_;
            }

            if (v18 >= 9)
            {
              v20 = (v19 + v18);
              v21 = v19;
              do
              {
                result = memchr(v21, 70, v18 - 8);
                if (!result)
                {
                  break;
                }

                if (result->__r_.__value_.__r.__words[0] == 0x4D414E5453524946 && result->__r_.__value_.__s.__data_[8] == 69)
                {
                  if (result != v20 && result - v19 != -1)
                  {
                    goto LABEL_62;
                  }

                  break;
                }

                v21 = (&result->__r_.__value_.__l.__data_ + 1);
                v18 = v20 - v21;
              }

              while (v20 - v21 >= 9);
            }

            result = std::string::find[abi:ne200100](v5, "MIDDLENAME", 0);
            if (result == -1)
            {
              result = std::string::find[abi:ne200100](v5, "LASTNAME", 0);
              if (result == -1)
              {
                result = std::string::find[abi:ne200100](v5, "LME", 0);
                if (result == -1)
                {
                  v12 = "<UNK>";
                  goto LABEL_19;
                }
              }
            }
          }
        }

        break;
      }

      result = (result + 1);
      size = v9 - result;
    }

    while (v9 - result >= 5);
  }

LABEL_62:
  if (a3)
  {
    v23 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
    v24 = v5->__r_.__value_.__l.__size_;
    if (v23 >= 0)
    {
      v25 = v5;
    }

    else
    {
      v25 = v5->__r_.__value_.__r.__words[0];
    }

    if (v23 >= 0)
    {
      v26 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v5->__r_.__value_.__l.__size_;
    }

    v27 = (v25 + v26);
    if (v26 >= 1)
    {
      v28 = v26;
      v29 = v25;
      do
      {
        result = memchr(v29, 92, v28);
        if (!result)
        {
          break;
        }

        if (result->__r_.__value_.__s.__data_[0] == 92)
        {
          goto LABEL_75;
        }

        v29 = (&result->__r_.__value_.__l.__data_ + 1);
        v28 = v27 - v29;
      }

      while (v27 - v29 > 0);
    }

    result = (v25 + v26);
LABEL_75:
    if (result == v27)
    {
      v30 = -1;
    }

    else
    {
      v30 = result - v25;
    }

    v31 = v26 - (v30 + 1);
    if (v26 >= v30 + 1 && v31 >= 1)
    {
      result = (&v25->__r_.__value_.__l.__data_ + v30 + 1);
      do
      {
        result = memchr(result, 92, v31);
        if (!result)
        {
          break;
        }

        if (result->__r_.__value_.__s.__data_[0] == 92)
        {
          if (result != v27 && result - v25 != -1)
          {
            result = std::string::erase(v5, result - v25, 0xFFFFFFFFFFFFFFFFLL);
            v23 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
            v24 = v5->__r_.__value_.__l.__size_;
          }

          break;
        }

        result = (result + 1);
        v31 = v27 - result;
      }

      while (v27 - result >= 1);
    }

    if ((v23 & 0x80u) == 0)
    {
      v32 = v23;
    }

    else
    {
      v32 = v24;
    }

    if (v30 == v32 - 1)
    {

      return std::string::erase(v5, v30, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::swap[abi:ne200100](uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  a1[1] = a2[1];
  a2[1] = v2;
  v4 = (a1 + *(v3 - 24));
  v5 = (a2 + *(*a2 - 24));
  std::ios_base::swap(v4, v5);
  v6 = v4[1].__vftable;
  v4[1].__vftable = v5[1].__vftable;
  v5[1].__vftable = v6;
  LODWORD(v6) = v4[1].__fmtflags_;
  v4[1].__fmtflags_ = v5[1].__fmtflags_;
  v5[1].__fmtflags_ = v6;

  return std::stringbuf::swap();
}

void std::vector<quasar::tennessee::ImmutableVector<std::string>>::__emplace_back_slow_path<std::vector<std::string> &>(void *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v5 = v3;
    }

    v8 = a1;
    if (v5)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::tennessee::ImmutableVector<std::string>>>(a1, v5);
    }

    v6 = 24 * v2;
    v7 = 24 * v2;
    quasar::tennessee::ImmutableVector<std::string>::ImmutableVector<std::__wrap_iter<std::string const*>,true>((24 * v2), *a2, a2[1]);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_1B56E96A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::tennessee::ImmutableVector<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void quasar::tennessee::ImmutableVector<std::string>::ImmutableVector<std::__wrap_iter<std::string const*>,true>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
  *a1 = &unk_1F2D299B0;
  a1[1] = v3;
  a1[2] = 0;
  is_mul_ok(v3, 0x18uLL);
  operator new[]();
}

void quasar::tennessee::ImmutableVector<std::string>::~ImmutableVector(void *a1)
{
  quasar::tennessee::ImmutableVector<std::string>::~ImmutableVector(a1);

  JUMPOUT(0x1B8C85350);
}

void *quasar::tennessee::ImmutableVector<std::string>::~ImmutableVector(void *a1)
{
  *a1 = &unk_1F2D299B0;
  v2 = a1[2];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 24 * v4 - 1;
      v6 = -24 * v4;
      v7 = v5;
      do
      {
        v8 = *v7;
        v7 -= 24;
        if (v8 < 0)
        {
          operator delete(*(v5 - 23));
        }

        v5 = v7;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x1B8C85310](v3, 0x1012C80EC159624);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::tennessee::ImmutableVector<std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::tennessee::ImmutableVector<std::string>>,quasar::tennessee::ImmutableVector<std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    quasar::tennessee::ImmutableVector<std::string>::ImmutableVector(a4, a2);
  }
}

void sub_1B56E99A0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::tennessee::ImmutableVector<std::string>>,quasar::tennessee::ImmutableVector<std::string>*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::tennessee::ImmutableVector<std::string>::ImmutableVector(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = &unk_1F2D299B0;
  a1[1] = v2;
  is_mul_ok(v2, 0x18uLL);
  operator new[]();
}

uint64_t std::__split_buffer<quasar::tennessee::ImmutableVector<std::string>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::set<std::string>>::__emplace_back_slow_path<std::set<std::string> const&>(uint64_t *a1, const void ***a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  std::set<std::string>::set[abi:ne200100]((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = a1[1];
  v8 = 24 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<std::string>>,std::set<std::string>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::set<std::string>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B56E9C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::set<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<quasar::tennessee::ImmutableVector<std::string>>::__emplace_back_slow_path<std::initializer_list<std::string>>(void *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v5 = v3;
    }

    v8 = a1;
    if (v5)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::tennessee::ImmutableVector<std::string>>>(a1, v5);
    }

    v6 = 24 * v2;
    v7 = 24 * v2;
    quasar::tennessee::ImmutableVector<std::string>::ImmutableVector((24 * v2), *a2, *a2 + 24 * a2[1]);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_1B56E9D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::tennessee::ImmutableVector<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void quasar::tennessee::ImmutableVector<std::string>::ImmutableVector(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
  *a1 = &unk_1F2D299B0;
  a1[1] = v3;
  a1[2] = 0;
  is_mul_ok(v3, 0x18uLL);
  operator new[]();
}

void *std::vector<quasar::tennessee::ImmutableVector<std::string>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<quasar::tennessee::ImmutableVector<std::string>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<quasar::tennessee::ImmutableVector<std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::tennessee::ImmutableVector<std::string>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void ***std::unique_ptr<std::vector<quasar::tennessee::ImmutableVector<std::string>>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<quasar::tennessee::ImmutableVector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x1B8C85350](v2, 0x20C40960023A9);
  }

  return result;
}

void std::vector<quasar::tennessee::ImmutableVector<std::string>>::__emplace_back_slow_path<quasar::tennessee::ImmutableVector<std::string> const&,std::string const&>(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v5 = v3;
    }

    v7 = a1;
    if (v5)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::tennessee::ImmutableVector<std::string>>>(a1, v5);
    }

    v6 = 24 * v2;
    quasar::tennessee::ImmutableVector<std::string>::ImmutableVector(24 * v2, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_1B56EA0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::tennessee::ImmutableVector<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::tennessee::ImmutableVector<std::string>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::tennessee::ImmutableVector<std::string>>::__emplace_back_slow_path<quasar::tennessee::ImmutableVector<std::string>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    *v3 = &unk_1F2D299B0;
    v3[1] = v4;
    v3[2] = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = (v3 + 3);
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<quasar::tennessee::ImmutableVector<std::string>>::__emplace_back_slow_path<quasar::tennessee::ImmutableVector<std::string>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::tennessee::ImmutableVector<std::string>>>(a1, v6);
  }

  v7 = 24 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  *v7 = &unk_1F2D299B0;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *&v18 = 24 * v2 + 24;
  v10 = a1[1];
  v11 = (24 * v2 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::tennessee::ImmutableVector<std::string>>,quasar::tennessee::ImmutableVector<std::string>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::tennessee::ImmutableVector<std::string>>::~__split_buffer(&v16);
  return v15;
}

void sub_1B56EA3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::tennessee::ImmutableVector<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void quasar::SymbolMap::ReadFstBinary<std::shared_ptr<fst::SymbolTable>>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = fst::SymbolTable::Read(a1);

  std::shared_ptr<fst::SymbolTable>::shared_ptr[abi:ne200100]<fst::SymbolTable,0>(a2, v3);
}

uint64_t fst::SymbolTable::Read(uint64_t a1)
{
  v15[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v13);
  if (*&v14[*(v13[0] - 24) + 16])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v2 = fst::LogMessage::LogMessage(&v12, __p);
    v3 = fst::cerr(v2);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "SymbolTable::Read: Can't open file ", 35);
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    fst::LogMessage::~LogMessage(&v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = 0;
  }

  else
  {
    v8 = fst::SymbolTable::Read(v13, a1);
  }

  v13[0] = *MEMORY[0x1E69E54C8];
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v14);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v15);
  return v8;
}

uint64_t quasar::SymbolMap::ReadQuasarBinary<std::shared_ptr<fst::SymbolTable>>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40[19] = *MEMORY[0x1E69E9840];
  v40[6] = 0;
  v4 = MEMORY[0x1E69E5528] + 64;
  v40[0] = MEMORY[0x1E69E5528] + 64;
  v5 = MEMORY[0x1E69E54C8];
  v6 = *(MEMORY[0x1E69E54C8] + 16);
  v38[0] = *(MEMORY[0x1E69E54C8] + 8);
  *(v38 + *(v38[0] - 24)) = v6;
  v38[1] = 0;
  v7 = (v38 + *(v38[0] - 24));
  std::ios_base::init(v7, v39);
  v8 = MEMORY[0x1E69E5528] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v38[0] = v8;
  v40[0] = v4;
  MEMORY[0x1B8C849F0](v39);
  std::ifstream::open();
  v9 = std::istream::read();
  if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
  {
    if (quasar::gLogLevel >= 1)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Could not read magic header", 27);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v19);
    }
  }

  else if (v36 == 0x5F4D59535F525351 && v37 == 808464470)
  {
    v17 = 0;
    v11 = std::istream::read();
    if ((*(v11 + *(*v11 - 24) + 32) & 5) == 0)
    {
      fst::FstReadOptions::FstReadOptions(__p, a1, 0, 0, 0);
      v16 = 2;
      std::istream::tellg();
      std::istream::seekg();
      std::istream::tellg();
      v13 = v27;
      v14 = v18;
      std::istream::seekg();
      fst::MappedFile::Map(v38, __p, (v13 - v14));
    }

    if (quasar::gLogLevel >= 1)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Could not read number of words", 30);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v19);
    }
  }

  else if (quasar::gLogLevel >= 1)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Magic header was wrong", 22);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v19);
  }

  *a2 = 0;
  a2[1] = 0;
  v38[0] = *v5;
  *(v38 + *(v38[0] - 24)) = v5[3];
  MEMORY[0x1B8C84A00](v39);
  std::istream::~istream();
  return MEMORY[0x1B8C85200](v40);
}

{
  return quasar::SymbolMap::ReadQuasarBinary<std::shared_ptr<fst::SymbolTable>>(a1, a2);
}

void sub_1B56EAC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::locale a44)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a44);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&STACK[0x228]);
  _Unwind_Resume(a1);
}

void quasar::SymbolMap::ReadMarisa<std::shared_ptr<fst::SymbolTable>>(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  v12 = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v10[0] = *(MEMORY[0x1E69E54C8] + 8);
  *(v10 + *(v10[0] - 24)) = v3;
  v10[1] = 0;
  v4 = (v10 + *(v10[0] - 24));
  std::ios_base::init(v4, v11);
  v5 = MEMORY[0x1E69E5528] + 24;
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  v10[0] = v5;
  v12 = v2;
  MEMORY[0x1B8C849F0](v11);
  std::ifstream::open();
  fst::FstReadOptions::FstReadOptions(__p, a1, 0, 0, 0);
  v8 = 2;
  std::istream::seekg();
  std::istream::tellg();
  v6 = v9;
  std::istream::seekg();
  fst::MappedFile::Map(v10, __p, v6);
}

void sub_1B56EB118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::locale a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a24);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a59);
  _Unwind_Resume(a1);
}

void quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(fst::SymbolTable *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  quasar::SymbolMap::SymbolMapQuasarImpl::SymbolMapQuasarImpl(a1);
}

void sub_1B56EB414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 8) = v12;
    operator delete(v12);
  }

  quasar::SymbolMap::SymbolMapQuasarImpl::~SymbolMapQuasarImpl(v9);
  _Unwind_Resume(a1);
}

void sub_1B56EB600(_Unwind_Exception *a1)
{
  v3 = *(v1 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  fst::SymbolTable::~SymbolTable(v1);
  _Unwind_Resume(a1);
}

void *std::vector<std::pair<char const*,int>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<wchar_t const*,wchar_t>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void quasar::SymbolMap::SymbolMapQuasarImpl::~SymbolMapQuasarImpl(quasar::SymbolMap::SymbolMapQuasarImpl *this)
{
  *this = &unk_1F2D29AC8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  fst::SymbolTable::~SymbolTable(this);
}

{
  quasar::SymbolMap::SymbolMapQuasarImpl::~SymbolMapQuasarImpl(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::SymbolMap::SortedSymbolMapQuasarImpl::~SortedSymbolMapQuasarImpl(quasar::SymbolMap::SortedSymbolMapQuasarImpl *this)
{
  *this = &unk_1F2D299F0;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  quasar::SymbolMap::SymbolMapQuasarImpl::~SymbolMapQuasarImpl(this);
}

{
  *this = &unk_1F2D299F0;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  quasar::SymbolMap::SymbolMapQuasarImpl::~SymbolMapQuasarImpl(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::SymbolMap::SymbolMapQuasarImpl::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 96))(a1);
  if (result == -1)
  {
    v7 = a3 - *(a1 + 16);
    fst::SymbolTable::MutateCheck(a1);
    return fst::SymbolTableImpl::AddSymbol(*(a1 + 8), a2, v7) + *(a1 + 16);
  }

  return result;
}

uint64_t quasar::SymbolMap::SymbolMapQuasarImpl::AddSymbol(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 96))(a1);
  if (result == -1)
  {
    fst::SymbolTable::MutateCheck(a1);
    return fst::SymbolTableImpl::AddSymbol(*(a1 + 8), a2, *(*(a1 + 8) + 24)) + *(a1 + 16);
  }

  return result;
}

void quasar::SymbolMap::SymbolMapQuasarImpl::AddTable(quasar::SymbolMap::SymbolMapQuasarImpl *this, const fst::SymbolTable *a2)
{
  v4 = (*(*a2 + 120))(a2);
  v5 = (*(*a2 + 128))(a2, 0);
  if (v4)
  {
    v6 = v5;
    v7 = 1;
    v8 = v4;
    do
    {
      (*(*a2 + 88))(__p, a2, v6);
      v9 = (*(*this + 96))(this, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v9 == -1)
      {
        (*(*a2 + 88))(__p, a2, v6);
        (*(*this + 32))(this, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v7 < v4)
      {
        v6 = (*(*a2 + 128))(a2, v7);
      }

      ++v7;
      --v8;
    }

    while (v8);
  }
}

void sub_1B56EBB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *quasar::SymbolMap::SymbolMapQuasarImpl::Find@<X0>(quasar::SymbolMap::SymbolMapQuasarImpl *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(this + 4);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v5 < 0 != v4)
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, (*(this + 6) + *(*(this + 5) + 4 * a2)));
  }

  else
  {
    return fst::SymbolTableImpl::Find(*(this + 1), v5, a3);
  }
}

uint64_t quasar::SymbolMap::SortedSymbolMapQuasarImpl::Find(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  return (*(*a1 + 104))(a1, a2);
}

uint64_t quasar::SymbolMap::SortedSymbolMapQuasarImpl::Find(quasar::SymbolMap::SortedSymbolMapQuasarImpl *this, char *__s2)
{
  v4 = 0;
  v5 = (*(this + 4) - 1);
  v6 = *(this + 7);
  do
  {
    v7 = v4 + (v5 - v4) / 2;
    v8 = strcmp(*(v6 + 16 * v7), __s2);
    if (!v8)
    {
      return *(v6 + 16 * v7 + 8);
    }

    if (v8 < 0)
    {
      v4 = v7 + 1;
    }

    else
    {
      v5 = v7 - 1;
    }
  }

  while (v4 <= v5);
  result = fst::SymbolTableImpl::Find(*(this + 1), __s2);
  if (result != -1)
  {
    result += *(this + 4);
  }

  return result;
}

uint64_t quasar::SymbolMap::SymbolMapQuasarImpl::Find(quasar::SymbolMap::SymbolMapQuasarImpl *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v3 = (*(*this + 96))(this, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1B56EBDAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 quasar::SymbolMap::SymbolMapQuasarImpl::SymbolMapQuasarImpl(quasar::SymbolMap::SymbolMapQuasarImpl *this, const quasar::SymbolMap::SymbolMapQuasarImpl *a2)
{
  v2 = *(a2 + 1);
  *(this + 1) = v2;
  ++*(v2 + 168);
  *this = &unk_1F2D29AC8;
  *(this + 4) = *(a2 + 4);
  v3 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 40);
  *(this + 40) = result;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,false>(uint64_t result, const char **a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v19 = *(a2 - 2);
        v20 = *v9;
        result = strcmp(v19, *v9);
        if ((result & 0x80000000) != 0)
        {
          *v9 = v19;
          *(a2 - 2) = v20;
          v21 = *(v9 + 8);
          *(v9 + 8) = *(a2 - 2);
          *(a2 - 2) = v21;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(v9, v9 + 16, v9 + 32);
      v22 = *(a2 - 2);
      v23 = *(v9 + 32);
      result = strcmp(v22, v23);
      if ((result & 0x80000000) != 0)
      {
        *(v9 + 32) = v22;
        *(a2 - 2) = v23;
        v24 = *(v9 + 40);
        *(v9 + 40) = *(a2 - 2);
        *(a2 - 2) = v24;
        v25 = *(v9 + 32);
        v26 = *(v9 + 16);
        result = strcmp(v25, v26);
        if ((result & 0x80000000) != 0)
        {
          *(v9 + 16) = v25;
          *(v9 + 32) = v26;
          v27 = *(v9 + 24);
          v28 = *(v9 + 40);
          *(v9 + 24) = v28;
          *(v9 + 40) = v27;
          v29 = *v9;
          result = strcmp(v25, *v9);
          if ((result & 0x80000000) != 0)
          {
            *v9 = v25;
            *(v9 + 16) = v29;
            v30 = *(v9 + 8);
            *(v9 + 8) = v28;
            *(v9 + 24) = v30;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(v9, v9 + 16, v9 + 32, v9 + 48, (a2 - 2));
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,std::pair<char const*,int>*>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(v9 + 16 * (v12 >> 1), v9, (a2 - 2));
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(v9, v9 + 16 * (v12 >> 1), (a2 - 2));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(v9 + 16, v14 - 16, (a2 - 4));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(v9 + 32, v9 + 16 + 16 * v13, (a2 - 6));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(v14 - 16, v14, v9 + 16 + 16 * v13);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      LODWORD(v15) = *(v9 + 8);
      *(v9 + 8) = *(v14 + 8);
      *(v14 + 8) = v15;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    if ((strcmp(*(v9 - 16), *v9) & 0x80000000) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<char const*,int> *,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &>(v9, a2);
      v9 = result;
      goto LABEL_23;
    }

LABEL_18:
    v16 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<char const*,int> *,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &>(v9, a2);
    if ((v17 & 1) == 0)
    {
      goto LABEL_21;
    }

    v18 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(v9, v16);
    v9 = v16 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*>(v16 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v16;
      if (v18)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v18)
    {
LABEL_21:
      result = std::__introsort<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,false>(v8, v16, a3, -v11, a5 & 1);
      v9 = v16 + 16;
LABEL_23:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::SymbolMap::SortedSymbolMapQuasarImpl::SortedSymbolMapQuasarImpl(unsigned int,std::shared_ptr<fst::MappedFile>)::{lambda(std::pair<char const*,int> const&,std::pair<char const*,int> const&)#1} &,std::pair<char const*,int>*,0>(v9, v9 + 16, (a2 - 2));
}