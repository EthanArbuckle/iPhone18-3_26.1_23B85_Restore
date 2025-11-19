uint64_t r_Suffix_Verb_Step2a(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  result = find_among_b(a1, &a_18_1, 11);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        if (len_utf8(*a1) < 6)
        {
          return 0;
        }

        goto LABEL_10;
      }
    }

    else
    {
      if (result == 1)
      {
        if (len_utf8(*a1) < 4)
        {
          return 0;
        }

        goto LABEL_10;
      }

      if (result == 2)
      {
        if (len_utf8(*a1) < 5)
        {
          return 0;
        }

LABEL_10:
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t r_Suffix_Noun_Step2a(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  result = find_among_b(a1, &a_12_1, 3);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    if (len_utf8(*a1) < 5)
    {
      return 0;
    }

    else
    {
      LODWORD(result) = slice_del(a1);
      if (result >= 0)
      {
        return 1;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t r_Suffix_Noun_Step2b(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 3 <= *(a1 + 16))
  {
    return 0;
  }

  if (*(*a1 + v1 - 1) != 170)
  {
    return 0;
  }

  result = find_among_b(a1, &a_13_1, 1);
  if (!result)
  {
    return result;
  }

  *(a1 + 20) = *(a1 + 8);
  if (len_utf8(*a1) < 5)
  {
    return 0;
  }

  LODWORD(result) = slice_del(a1);
  if (result >= 0)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t r_Suffix_Noun_Step2c1(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  v2 = v1 - 1;
  if (v2 <= *(a1 + 16))
  {
    return 0;
  }

  if (*(*a1 + v2) != 170)
  {
    return 0;
  }

  result = find_among_b(a1, &a_14_1, 1);
  if (!result)
  {
    return result;
  }

  *(a1 + 20) = *(a1 + 8);
  if (len_utf8(*a1) < 4)
  {
    return 0;
  }

  LODWORD(result) = slice_del(a1);
  if (result >= 0)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t r_Prefix_Step3b_Noun(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (eq_s(a1, 4, &s_60_11))
  {
    return 0;
  }

  *(a1 + 8) = v2;
  *(a1 + 20) = v2;
  v3 = v2 + 1;
  if (v3 >= *(a1 + 12))
  {
    return 0;
  }

  v4 = *(*a1 + v3);
  if (v4 != 168 && v4 != 131)
  {
    return 0;
  }

  result = find_among(a1, &a_7_7, 3);
  if (!result)
  {
    return result;
  }

  *(a1 + 24) = *(a1 + 8);
  if (result == 3)
  {
    if (len_utf8(*a1) < 4)
    {
      return 0;
    }

    v6 = &s_62_4;
    goto LABEL_16;
  }

  if (result == 2)
  {
    if (len_utf8(*a1) < 4)
    {
      return 0;
    }

    v6 = &s_61_45;
LABEL_16:
    result = slice_from_s(a1, 2, v6);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    return 1;
  }

  if (result != 1)
  {
    return 1;
  }

  if (len_utf8(*a1) < 4)
  {
    return 0;
  }

  result = slice_del(a1);
  if ((result & 0x80000000) == 0)
  {
    return 1;
  }

  return result;
}

uint64_t r_Prefix_Step3_Verb(uint64_t a1)
{
  *(a1 + 20) = *(a1 + 8);
  result = find_among(a1, &a_8_6, 4);
  if (result)
  {
    *(a1 + 24) = *(a1 + 8);
    if (result > 2)
    {
      if (result == 3)
      {
        if (len_utf8(*a1) >= 5)
        {
          v3 = &s_65_2;
LABEL_15:
          result = slice_from_s(a1, 2, v3);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          return 1;
        }
      }

      else
      {
        if (result != 4)
        {
          return 1;
        }

        if (len_utf8(*a1) >= 5)
        {
          v3 = &s_66_11;
          goto LABEL_15;
        }
      }
    }

    else
    {
      if (result != 1)
      {
        if (result == 2)
        {
          if (len_utf8(*a1) >= 5)
          {
            v3 = &s_64_7;
            goto LABEL_15;
          }

          return 0;
        }

        return 1;
      }

      if (len_utf8(*a1) >= 5)
      {
        v3 = &s_63_4;
        goto LABEL_15;
      }
    }

    return 0;
  }

  return result;
}

uint64_t r_Prefix_Step4_Verb(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = *(a1 + 8);
  *(a1 + 20) = v2;
  v3 = v2 + 5;
  if (v3 >= v1)
  {
    return 0;
  }

  if (*(*a1 + v3) != 170)
  {
    return 0;
  }

  result = find_among(a1, &a_9_4, 3);
  if (!result)
  {
    return result;
  }

  *(a1 + 24) = *(a1 + 8);
  if (len_utf8(*a1) < 5)
  {
    return 0;
  }

  *(*(a1 + 48) + 1) = 1;
  **(a1 + 48) = 0;
  LODWORD(result) = slice_from_s(a1, 6, &s_67_4);
  if (result >= 0)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t irish_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 20) = v2;
  among = find_among(a1, &a_0_14, 24);
  if (!among)
  {
    goto LABEL_25;
  }

  *(a1 + 24) = *(a1 + 8);
  if (among > 5)
  {
    if (among <= 7)
    {
      if (among == 6)
      {
        v4 = &s_4_100;
      }

      else
      {
        v4 = &s_5_54;
      }
    }

    else
    {
      switch(among)
      {
        case 8:
          v4 = &s_6_129;
          break;
        case 9:
          v4 = &s_7_90;
          break;
        case 10:
          v4 = &s_8_105;
          break;
        default:
          goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

  if (among > 2)
  {
    if (among == 3)
    {
      v4 = &s_1_54;
    }

    else if (among == 4)
    {
      v4 = &s_2_54;
    }

    else
    {
      v4 = &s_3_99;
    }

LABEL_24:
    result = slice_from_s(a1, 1, v4);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (among != 1)
  {
    if (among != 2)
    {
      goto LABEL_25;
    }

    v4 = &s_0_144;
    goto LABEL_24;
  }

  result = slice_del(a1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

LABEL_25:
  *(a1 + 8) = v2;
  v6 = *(a1 + 12);
  v7 = *(a1 + 40);
  *v7 = v6;
  v7[1] = v6;
  v7[2] = *(a1 + 12);
  v8 = *(a1 + 8);
  v9 = out_grouping_U(a1, &g_v_9, 97, 250, 1);
  if ((v9 & 0x80000000) == 0)
  {
    **(a1 + 40) = *(a1 + 8) + v9;
  }

  *(a1 + 8) = v8;
  v10 = out_grouping_U(a1, &g_v_9, 97, 250, 1);
  if ((v10 & 0x80000000) == 0)
  {
    *(a1 + 8) += v10;
    v11 = in_grouping_U(a1, &g_v_9, 97, 250, 1);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = *(a1 + 8) + v11;
      *(a1 + 8) = v12;
      *(*(a1 + 40) + 4) = v12;
      v13 = out_grouping_U(a1, &g_v_9, 97, 250, 1);
      if ((v13 & 0x80000000) == 0)
      {
        *(a1 + 8) += v13;
        v14 = in_grouping_U(a1, &g_v_9, 97, 250, 1);
        if ((v14 & 0x80000000) == 0)
        {
          *(*(a1 + 40) + 8) = *(a1 + 8) + v14;
        }
      }
    }
  }

  *(a1 + 16) = v8;
  v15 = *(a1 + 12);
  *(a1 + 8) = v15;
  *(a1 + 24) = v15;
  among_b = find_among_b(a1, &a_1_14, 16);
  if (among_b)
  {
    v17 = *(a1 + 8);
    *(a1 + 20) = v17;
    if (among_b == 2)
    {
      v18 = *(*(a1 + 40) + 8);
    }

    else
    {
      if (among_b != 1)
      {
        goto LABEL_39;
      }

      v18 = *(*(a1 + 40) + 4);
    }

    if (v18 <= v17)
    {
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }
  }

LABEL_39:
  v19 = *(a1 + 12);
  *(a1 + 8) = v19;
  *(a1 + 24) = v19;
  v20 = find_among_b(a1, &a_2_13, 25);
  if (!v20)
  {
    goto LABEL_58;
  }

  v21 = *(a1 + 8);
  *(a1 + 20) = v21;
  if (v20 > 3)
  {
    switch(v20)
    {
      case 4:
        v22 = &s_11_48;
        break;
      case 5:
        v22 = &s_12_16;
        v23 = a1;
        v24 = 5;
LABEL_57:
        result = slice_from_s(v23, v24, v22);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_58;
      case 6:
        v22 = &s_13_42;
        break;
      default:
        goto LABEL_58;
    }

    v23 = a1;
    v24 = 4;
    goto LABEL_57;
  }

  switch(v20)
  {
    case 1:
      if (*(*(a1 + 40) + 8) <= v21)
      {
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      break;
    case 2:
      v22 = &s_9_18;
      goto LABEL_55;
    case 3:
      v22 = &s_10_37;
LABEL_55:
      v23 = a1;
      v24 = 3;
      goto LABEL_57;
  }

LABEL_58:
  v25 = *(a1 + 16);
  v26 = *(a1 + 12);
  *(a1 + 8) = v26;
  *(a1 + 24) = v26;
  if (v26 - 2 <= v25)
  {
    goto LABEL_68;
  }

  v27 = *(*a1 + v26 - 1);
  if ((v27 & 0xE0) != 0x60)
  {
    goto LABEL_68;
  }

  if (((0x45110u >> v27) & 1) == 0)
  {
    goto LABEL_68;
  }

  v28 = find_among_b(a1, &a_3_12, 12);
  if (!v28)
  {
    goto LABEL_68;
  }

  v29 = *(a1 + 8);
  *(a1 + 20) = v29;
  if (v28 == 2)
  {
    v30 = *(*(a1 + 40) + 4);
  }

  else
  {
    if (v28 != 1)
    {
LABEL_68:
      *(a1 + 8) = *(a1 + 16);
      return 1;
    }

    v30 = **(a1 + 40);
  }

  if (v30 > v29)
  {
    goto LABEL_68;
  }

  result = slice_del(a1);
  if ((result & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

  return result;
}

void *create_s()
{
  result = malloc_type_malloc(0xAuLL, 0x100004052888210uLL);
  if (result)
  {
    *result++ = 1;
  }

  return result;
}

void lose_s(uint64_t a1)
{
  if (a1)
  {
    free((a1 - 8));
  }
}

uint64_t skip_utf8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 < 0)
  {
    while (a2 > a3)
    {
      v5 = a2 - 1;
      if (*(a1 + v5) < 0 && v5 > a3)
      {
        v5 = a2 - 1;
        while (*(a1 + v5) <= 0xBFu)
        {
          if (--v5 <= a3)
          {
            v5 = a3;
            break;
          }
        }
      }

      LODWORD(a2) = v5;
      if (__CFADD__(a5++, 1))
      {
        return v5;
      }
    }
  }

  else
  {
    if (!a5)
    {
      return a2;
    }

    while (a2 < a4)
    {
      v5 = (a2 + 1);
      if (*(a1 + a2) >= 0xC0u && v5 < a4)
      {
        v5 = a2 + 1;
        while (*(a1 + v5) <= -65)
        {
          if (++v5 >= a4)
          {
            v5 = a4;
            break;
          }
        }
      }

      LODWORD(a2) = v5;
      v7 = __OFSUB__(a5--, 1);
      if ((a5 < 0) ^ v7 | (a5 == 0))
      {
        return v5;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t in_grouping_U(uint64_t a1, uint64_t a2, int a3, signed int a4, int a5)
{
  v10 = *a1;
  v12 = *(a1 + 8);
  v11 = *(a1 + 12);
  while (1)
  {
    v14 = 0;
    result = get_utf8(v10, v12, v11, &v14);
    if (!result)
    {
      break;
    }

    if (v14 > a4 || v14 - a3 < 0 || ((*(a2 + ((v14 - a3) >> 3)) >> ((v14 - a3) & 7)) & 1) == 0)
    {
      return result;
    }

    v12 += result;
    *(a1 + 8) = v12;
    if (!a5)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t get_utf8(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v4 = a2 + 1;
  v5 = *(a1 + a2);
  if (v5 < 0xC0 || v4 == a3)
  {
    result = 1;
  }

  else
  {
    v8 = a2 + 2;
    v9 = *(a1 + v4) & 0x3F;
    if (v5 < 0xE0 || v8 == a3)
    {
      result = 2;
      v5 = v9 & 0xFFFFF83F | ((v5 & 0x1F) << 6);
    }

    else
    {
      v11 = *(a1 + v8) & 0x3F;
      if (v5 < 0xF0 || (v12 = a2 + 3, v12 == a3))
      {
        v5 = ((v5 & 0xF) << 12) | (v9 << 6) | v11;
        result = 3;
      }

      else
      {
        v5 = (v5 << 18) & 0x380000 | (v9 << 12) | (v11 << 6) | *(a1 + v12) & 0x3F;
        result = 4;
      }
    }
  }

  *a4 = v5;
  return result;
}

uint64_t in_grouping_b_U(uint64_t a1, uint64_t a2, int a3, signed int a4, int a5)
{
  v10 = *a1;
  v11 = *(a1 + 16);
  v12 = *(a1 + 8);
  while (1)
  {
    v14 = 0;
    result = get_b_utf8(v10, v12, v11, &v14);
    if (!result)
    {
      break;
    }

    if (v14 > a4 || v14 - a3 < 0 || ((*(a2 + ((v14 - a3) >> 3)) >> ((v14 - a3) & 7)) & 1) == 0)
    {
      return result;
    }

    v12 -= result;
    *(a1 + 8) = v12;
    if (!a5)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t get_b_utf8(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  if (a2 <= a3)
  {
    return 0;
  }

  v4 = a2 - 1;
  v5 = *(a1 + v4);
  v6 = 1;
  if (v4 != a3 && *(a1 + v4) < 0)
  {
    v7 = v5 & 0x3F;
    v8 = a2 - 2;
    v9 = *(a1 + v8);
    v10 = v9 << 6;
    if (v8 == a3 || v9 >= 0xC0)
    {
      v5 = v10 & 0x7C0 | v7;
      v6 = 2;
    }

    else
    {
      v11 = v10 & 0xFC0 | v7;
      v12 = *(a1 + a2 - 3);
      if (a2 - 3 == a3 || v12 >= 0xE0)
      {
        v5 = v11 & 0xFFFF0FFF | ((v12 & 0xF) << 12);
        v6 = 3;
      }

      else
      {
        v5 = ((*(a1 + a2 - 4) & 0xE) << 18) | ((v12 & 0x3F) << 12) | v11;
        v6 = 4;
      }
    }
  }

  *a4 = v5;
  return v6;
}

uint64_t out_grouping_U(uint64_t a1, uint64_t a2, int a3, signed int a4, int a5)
{
  v10 = *a1;
  v12 = *(a1 + 8);
  v11 = *(a1 + 12);
  while (1)
  {
    v14 = 0;
    result = get_utf8(v10, v12, v11, &v14);
    if (!result)
    {
      break;
    }

    if (v14 <= a4 && v14 - a3 >= 0 && ((*(a2 + ((v14 - a3) >> 3)) >> ((v14 - a3) & 7)) & 1) != 0)
    {
      return result;
    }

    v12 += result;
    *(a1 + 8) = v12;
    if (!a5)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t out_grouping_b_U(uint64_t a1, uint64_t a2, int a3, signed int a4, int a5)
{
  v10 = *a1;
  v11 = *(a1 + 16);
  v12 = *(a1 + 8);
  while (1)
  {
    v14 = 0;
    result = get_b_utf8(v10, v12, v11, &v14);
    if (!result)
    {
      break;
    }

    if (v14 <= a4 && v14 - a3 >= 0 && ((*(a2 + ((v14 - a3) >> 3)) >> ((v14 - a3) & 7)) & 1) != 0)
    {
      return result;
    }

    v12 -= result;
    *(a1 + 8) = v12;
    if (!a5)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t in_grouping(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 12);
  v6 = *(a1 + 8);
  if (v6 > v5)
  {
    v5 = *(a1 + 8);
  }

  v7 = v6 + 1;
  while (v5 != v6)
  {
    v8 = *(*a1 + v6);
    if (v8 > a4)
    {
      return 1;
    }

    v9 = (v8 - a3);
    if ((v9 & 0x80000000) != 0 || ((*(a2 + (v9 >> 3)) >> (v9 & 7)) & 1) == 0)
    {
      return 1;
    }

    ++v6;
    *(a1 + 8) = v7++;
    if (!a5)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t in_grouping_b(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = v6 - 1;
  while (v6 > v5)
  {
    v8 = *(*a1 + v6 - 1);
    if (v8 > a4)
    {
      return 1;
    }

    v9 = (v8 - a3);
    if ((v9 & 0x80000000) != 0 || ((*(a2 + (v9 >> 3)) >> (v9 & 7)) & 1) == 0)
    {
      return 1;
    }

    --v6;
    *(a1 + 8) = v7--;
    if (!a5)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t out_grouping(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 12);
  v6 = *(a1 + 8);
  if (v6 > v5)
  {
    v5 = *(a1 + 8);
  }

  v7 = v6 + 1;
  while (1)
  {
    if (v5 == v6)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = *(*a1 + v6);
    if (v8 <= a4)
    {
      v9 = (v8 - a3);
      if (v9 & 0x80000000) == 0 && ((*(a2 + (v9 >> 3)) >> (v9 & 7)))
      {
        break;
      }
    }

    ++v6;
    *(a1 + 8) = v7++;
    if (!a5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t out_grouping_b(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = v6 - 1;
  while (1)
  {
    if (v6 <= v5)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = *(*a1 + v6 - 1);
    if (v8 <= a4)
    {
      v9 = (v8 - a3);
      if (v9 & 0x80000000) == 0 && ((*(a2 + (v9 >> 3)) >> (v9 & 7)))
      {
        break;
      }
    }

    --v6;
    *(a1 + 8) = v7--;
    if (!a5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t eq_s(uint64_t a1, int a2, void *__s2)
{
  v3 = *(a1 + 8);
  if (*(a1 + 12) - v3 < a2 || memcmp((*a1 + v3), __s2, a2))
  {
    return 0;
  }

  *(a1 + 8) = v3 + a2;
  return 1;
}

uint64_t eq_s_b(uint64_t a1, int a2, void *__s2)
{
  v3 = *(a1 + 8);
  if (v3 - *(a1 + 16) < a2 || memcmp((*a1 + v3 - a2), __s2, a2))
  {
    return 0;
  }

  *(a1 + 8) = v3 - a2;
  return 1;
}

uint64_t find_among(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 8);
  v9 = *a1 + v8;
  v10 = *(a1 + 12) - v8;
  v11 = 1;
  while (1)
  {
    v12 = v7;
    v7 = (v7 + ((a3 - v7) >> 1));
    if (v5 >= v6)
    {
      LODWORD(v13) = v6;
    }

    else
    {
      LODWORD(v13) = v5;
    }

    v14 = (a2 + 32 * v7);
    if (v13 >= *v14)
    {
      v5 = v13;
    }

    else
    {
      v13 = v13;
      while (1)
      {
        if (v10 == v13)
        {
          v6 = v13;
          a3 = v7;
LABEL_17:
          v7 = v12;
          goto LABEL_18;
        }

        v15 = *(v9 + v13) - *(*(v14 + 1) + v13);
        if (v15)
        {
          break;
        }

        if (++v13 >= *v14)
        {
          v5 = *v14;
          goto LABEL_18;
        }
      }

      if (v15 >= 0)
      {
        v5 = v13;
      }

      else
      {
        a3 = v7;
        v6 = v13;
      }

      if (v15 < 0)
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    if (a3 - v7 <= 1)
    {
      v16 = v7 >= 1 || a3 == v7;
      v17 = !v16;
      v18 = v17 & v11;
      v11 = 0;
      if ((v18 & 1) == 0)
      {
        break;
      }
    }
  }

  while (1)
  {
    v19 = a2 + 32 * v7;
    if (v5 >= *v19)
    {
      *(a1 + 8) = *v19 + v8;
      v20 = *(v19 + 24);
      if (!v20)
      {
        break;
      }

      v21 = v20(a1);
      *(a1 + 8) = *v19 + v8;
      if (v21)
      {
        break;
      }
    }

    LODWORD(v7) = *(v19 + 16);
    if ((v7 & 0x80000000) != 0)
    {
      return 0;
    }
  }

  return *(v19 + 20);
}

uint64_t find_among_b(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 8);
  v9 = v8 - *(a1 + 16);
  v10 = v8 + *a1 - 1;
  v11 = 1;
  while (1)
  {
    v12 = v7;
    v7 = (v7 + ((a3 - v7) >> 1));
    if (v5 >= v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = v5;
    }

    v14 = (a2 + 32 * v7);
    v15 = (*v14 + ~v13);
    if (*v14 + ~v13 < 0)
    {
      v5 = v13;
    }

    else
    {
      v16 = (v10 - v13);
      v17 = *v14 - v13;
      while (1)
      {
        if (v9 == v13)
        {
          a3 = v7;
LABEL_17:
          v6 = v13;
          v7 = v12;
          goto LABEL_18;
        }

        v18 = *v16 - *(*(v14 + 1) + v15);
        if (v18)
        {
          break;
        }

        ++v13;
        --v16;
        --v17;
        --v15;
        if (v17 <= 0)
        {
          v5 = *v14;
          goto LABEL_18;
        }
      }

      if (v18 >= 0)
      {
        v5 = v13;
        v13 = v6;
      }

      else
      {
        a3 = v7;
      }

      v6 = v13;
      if (v18 < 0)
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    if (a3 - v7 <= 1)
    {
      v19 = v7 >= 1 || a3 == v7;
      v20 = !v19;
      v21 = v20 & v11;
      v11 = 0;
      if ((v21 & 1) == 0)
      {
        break;
      }
    }
  }

  while (1)
  {
    v22 = a2 + 32 * v7;
    if (v5 >= *v22)
    {
      *(a1 + 8) = v8 - *v22;
      v23 = *(v22 + 24);
      if (!v23)
      {
        break;
      }

      v24 = v23(a1);
      *(a1 + 8) = v8 - *v22;
      if (v24)
      {
        break;
      }
    }

    LODWORD(v7) = *(v22 + 16);
    if ((v7 & 0x80000000) != 0)
    {
      return 0;
    }
  }

  return *(v22 + 20);
}

uint64_t replace_s(uint64_t a1, int a2, int a3, int a4, void *__src, _DWORD *a6)
{
  v12 = *a1;
  if (!v12)
  {
    v13 = malloc_type_malloc(0xAuLL, 0x100004052888210uLL);
    if (!v13)
    {
      *a1 = 0;
      return 0xFFFFFFFFLL;
    }

    *v13 = 1;
    v12 = v13 + 1;
    *a1 = v12;
  }

  v14 = a2 - a3 + a4;
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = *(v12 - 1);
  if (v15 + v14 > *(v12 - 2))
  {
    v12 = increase_size(v12, v15 + v14);
    *a1 = v12;
    if (!v12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  memmove(v12 + a3 + v14, v12 + a3, v15 - a3);
  v12 = *a1;
  *(*a1 - 4) = v15 + v14;
  v16 = *(a1 + 8);
  *(a1 + 12) += v14;
  if (v16 >= a3)
  {
    v17 = v16 + v14;
  }

  else
  {
    v17 = a2;
    if (v16 <= a2)
    {
      goto LABEL_12;
    }
  }

  *(a1 + 8) = v17;
LABEL_12:
  if (a4)
  {
    memmove(v12 + a2, __src, a4);
  }

  result = 0;
  if (a6)
  {
    *a6 = v14;
  }

  return result;
}

_DWORD *increase_size(uint64_t a1, int a2)
{
  v4 = (a1 - 8);
  v5 = malloc_type_realloc((a1 - 8), a2 + 29, 0x100004052888210uLL);
  if (v5)
  {
    *v5 = a2 + 20;
    return v5 + 2;
  }

  else
  {
    if (a1)
    {
      free(v4);
    }

    return 0;
  }
}

uint64_t slice_from_s(uint64_t a1, int a2, void *__src)
{
  v4 = *(a1 + 20);
  if ((v4 & 0x80000000) == 0 && (v6 = *(a1 + 24), v4 <= v6) && (v7 = *(a1 + 12), v6 <= v7) && *a1 && v7 <= *(*a1 - 4))
  {
    return replace_s(a1, v4, v6, a2, __src, 0);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t insert_s(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  v10 = 0;
  if (replace_s(a1, a2, a3, a4, a5, &v10))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 20);
  if (v8 >= a2)
  {
    *(a1 + 20) = v10 + v8;
  }

  v9 = *(a1 + 24);
  result = 0;
  if (v9 >= a2)
  {
    *(a1 + 24) = v10 + v9;
  }

  return result;
}

_DWORD *slice_to(uint64_t *a1, _DWORD *__dst)
{
  v2 = __dst;
  v3 = *(a1 + 5);
  if ((v3 & 0x80000000) == 0)
  {
    v5 = *(a1 + 6);
    v6 = v5 - v3;
    if (v5 >= v3)
    {
      v7 = *(a1 + 3);
      if (v5 <= v7)
      {
        v8 = *a1;
        if (*a1)
        {
          if (v7 <= *(v8 - 4))
          {
            if (*(__dst - 2) < v6)
            {
              v2 = increase_size(__dst, v6);
              if (!v2)
              {
                return v2;
              }

              v8 = *a1;
              v3 = *(a1 + 5);
            }

            memmove(v2, (v8 + v3), v6);
            *(v2 - 1) = v6;
            return v2;
          }
        }
      }
    }
  }

  if (__dst)
  {
    free(__dst - 2);
    return 0;
  }

  return v2;
}

_DWORD *assign_to(uint64_t a1, _DWORD *__dst)
{
  v2 = __dst;
  v4 = *(a1 + 12);
  if (*(__dst - 2) >= v4 || (v2 = increase_size(__dst, v4)) != 0)
  {
    memmove(v2, *a1, v4);
    *(v2 - 1) = v4;
  }

  return v2;
}

uint64_t len_utf8(char *a1)
{
  v1 = *(a1 - 1);
  if (!v1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  do
  {
    v3 = *a1++;
    if (v3 <= -65)
    {
      v2 = v2;
    }

    else
    {
      v2 = (v2 + 1);
    }

    --v1;
  }

  while (v1);
  return v2;
}

uint64_t german_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v2;
  while (1)
  {
    while (1)
    {
      *(a1 + 20) = v3;
      if (!eq_s(a1, 2, &s_0_145))
      {
        break;
      }

      *(a1 + 24) = *(a1 + 8);
      result = slice_from_s(a1, 2, &s_1_55);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v3 = *(a1 + 8);
    }

    *(a1 + 8) = v3;
    v5 = skip_utf8(*a1, v3, 0, *(a1 + 12), 1);
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    v3 = v5;
    *(a1 + 8) = v5;
  }

  v6 = v2;
  do
  {
    while (1)
    {
      *(a1 + 8) = v6;
      v7 = in_grouping_U(a1, &g_v_10, 97, 252, 0);
      v8 = *(a1 + 12);
      if (v7)
      {
        v10 = *(a1 + 12);
        break;
      }

      v9 = *(a1 + 8);
      *(a1 + 20) = v9;
      if (v9 != v8 && *(*a1 + v9) == 117)
      {
        *(a1 + 8) = v9 + 1;
        *(a1 + 24) = v9 + 1;
        if (!in_grouping_U(a1, &g_v_10, 97, 252, 0))
        {
          v11 = a1;
          v12 = &s_2_55;
          goto LABEL_17;
        }

        v8 = *(a1 + 12);
      }

      *(a1 + 8) = v9;
      v10 = v9;
      if (v9 == v8)
      {
        break;
      }

      v10 = v8;
      if (*(*a1 + v9) != 121)
      {
        break;
      }

      *(a1 + 8) = v9 + 1;
      *(a1 + 24) = v9 + 1;
      if (in_grouping_U(a1, &g_v_10, 97, 252, 0))
      {
        v10 = *(a1 + 12);
        break;
      }

      v11 = a1;
      v12 = &s_3_100;
LABEL_17:
      result = slice_from_s(v11, 1, v12);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    *(a1 + 8) = v6;
    v6 = skip_utf8(*a1, v6, 0, v10, 1);
  }

  while ((v6 & 0x80000000) == 0);
  *(a1 + 8) = v2;
  v13 = *(a1 + 12);
  v14 = *(a1 + 40);
  *v14 = v13;
  v14[1] = v13;
  v15 = *(a1 + 8);
  v16 = skip_utf8(*a1, v15, 0, *(a1 + 12), 3);
  if ((v16 & 0x80000000) == 0)
  {
    *(*(a1 + 40) + 8) = v16;
    *(a1 + 8) = v15;
    v17 = out_grouping_U(a1, &g_v_10, 97, 252, 1);
    if ((v17 & 0x80000000) == 0)
    {
      *(a1 + 8) += v17;
      v18 = in_grouping_U(a1, &g_v_10, 97, 252, 1);
      if ((v18 & 0x80000000) == 0)
      {
        v19 = *(a1 + 8) + v18;
        *(a1 + 8) = v19;
        v20 = *(a1 + 40);
        if (v19 <= v20[2])
        {
          v19 = v20[2];
        }

        *v20 = v19;
        v21 = out_grouping_U(a1, &g_v_10, 97, 252, 1);
        if ((v21 & 0x80000000) == 0)
        {
          *(a1 + 8) += v21;
          v22 = in_grouping_U(a1, &g_v_10, 97, 252, 1);
          if ((v22 & 0x80000000) == 0)
          {
            *(*(a1 + 40) + 4) = *(a1 + 8) + v22;
          }
        }
      }
    }
  }

  *(a1 + 16) = v2;
  v23 = *(a1 + 12);
  *(a1 + 8) = v23;
  *(a1 + 24) = v23;
  if (v23 <= v2 || (v24 = *(*a1 + v23 - 1), (v24 & 0xE0) != 0x60) || ((0xC6020u >> v24) & 1) == 0 || (v25 = find_among_b(a1, &a_1_15, 7)) == 0 || (v26 = *(a1 + 8), *(a1 + 20) = v26, **(a1 + 40) > v26))
  {
LABEL_36:
    v27 = *(a1 + 16);
    v28 = *(a1 + 12);
    *(a1 + 8) = v28;
    *(a1 + 24) = v28;
    v29 = v28 - 1;
    if (v29 <= v27)
    {
      goto LABEL_50;
    }

    v30 = *(*a1 + v29);
    if ((v30 & 0xE0) != 0x60)
    {
      goto LABEL_50;
    }

    if (((0x144000u >> v30) & 1) == 0)
    {
      goto LABEL_50;
    }

    among_b = find_among_b(a1, &a_2_14, 4);
    if (!among_b)
    {
      goto LABEL_50;
    }

    v32 = *(a1 + 8);
    *(a1 + 20) = v32;
    if (**(a1 + 40) > v32)
    {
      goto LABEL_50;
    }

    if (among_b != 2)
    {
      if (among_b == 1)
      {
        goto LABEL_43;
      }

      goto LABEL_50;
    }

    if (!in_grouping_b_U(a1, &g_st_ending, 98, 116, 0))
    {
      v54 = skip_utf8(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 12), -3);
      if ((v54 & 0x80000000) == 0)
      {
        *(a1 + 8) = v54;
LABEL_43:
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

LABEL_50:
    v33 = *(a1 + 16);
    v34 = *(a1 + 12);
    *(a1 + 8) = v34;
    *(a1 + 24) = v34;
    v35 = v34 - 1;
    if (v35 > v33)
    {
      v36 = *(*a1 + v35);
      if (v36 & 0xE0) == 0x60 && ((0x100990u >> v36))
      {
        v37 = find_among_b(a1, &a_4_11, 8);
        if (v37)
        {
          v38 = *(a1 + 8);
          *(a1 + 20) = v38;
          if (*(*(a1 + 40) + 4) <= v38)
          {
            if (v37 > 2)
            {
              if (v37 == 3)
              {
                result = slice_del(a1);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v52 = *(a1 + 8);
                v51 = *(a1 + 12);
                *(a1 + 24) = v52;
                if (!eq_s_b(a1, 2, &s_10_38))
                {
                  *(a1 + 8) = v52 - v51 + *(a1 + 12);
                  if (!eq_s_b(a1, 2, &s_11_49))
                  {
                    goto LABEL_55;
                  }
                }

                v53 = *(a1 + 8);
                *(a1 + 20) = v53;
                if (**(a1 + 40) > v53)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                if (v37 != 4)
                {
                  goto LABEL_55;
                }

                result = slice_del(a1);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v45 = *(a1 + 12);
                v46 = *(a1 + 8);
                *(a1 + 24) = v46;
                if (v46 - 1 <= *(a1 + 16) || *(*a1 + v46 - 1) - 103 > 1 || !find_among_b(a1, &a_3_13, 2))
                {
                  goto LABEL_55;
                }

                v47 = *(a1 + 8);
                *(a1 + 20) = v47;
                if (*(*(a1 + 40) + 4) > v47)
                {
                  *(a1 + 8) = v46 - v45 + *(a1 + 12);
                  goto LABEL_55;
                }
              }
            }

            else if (v37 == 1)
            {
              result = slice_del(a1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              *(a1 + 24) = *(a1 + 8);
              if (!eq_s_b(a1, 2, &s_9_19))
              {
                goto LABEL_55;
              }

              v50 = *(a1 + 8);
              *(a1 + 20) = v50;
              if (v50 > *(a1 + 16) && *(*a1 + v50 - 1) == 101)
              {
                goto LABEL_55;
              }

              if (*(*(a1 + 40) + 4) > v50)
              {
                goto LABEL_55;
              }
            }

            else if (v37 != 2 || v38 > *(a1 + 16) && *(*a1 + v38 - 1) == 101)
            {
              goto LABEL_55;
            }

            result = slice_del(a1);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }
      }
    }

LABEL_55:
    v39 = *(a1 + 16);
    *(a1 + 8) = v39;
    *(a1 + 20) = v39;
    among = find_among(a1, &a_0_15, 6);
    if (!among)
    {
LABEL_70:
      *(a1 + 8) = v39;
      return 1;
    }

    while (2)
    {
      v41 = *(a1 + 8);
      *(a1 + 24) = v41;
      if (among <= 2)
      {
        if (among == 1)
        {
          v43 = a1;
          v44 = &s_4_101;
        }

        else
        {
          if (among != 2)
          {
            goto LABEL_69;
          }

          v43 = a1;
          v44 = &s_5_55;
        }
      }

      else if (among == 3)
      {
        v43 = a1;
        v44 = &s_6_130;
      }

      else
      {
        if (among != 4)
        {
          if (among == 5)
          {
            v42 = skip_utf8(*a1, v41, 0, *(a1 + 12), 1);
            if (v42 < 0)
            {
              goto LABEL_70;
            }

            *(a1 + 8) = v42;
          }

          goto LABEL_69;
        }

        v43 = a1;
        v44 = &s_7_91;
      }

      result = slice_from_s(v43, 1, v44);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_69:
      *(a1 + 20) = *(a1 + 8);
      among = find_among(a1, &a_0_15, 6);
      if (!among)
      {
        goto LABEL_70;
      }

      continue;
    }
  }

  switch(v25)
  {
    case 3:
      if (in_grouping_b_U(a1, &g_s_ending_0, 98, 116, 0))
      {
        goto LABEL_36;
      }

      break;
    case 2:
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v48 = *(a1 + 8);
      *(a1 + 24) = v48;
      if (v48 <= *(a1 + 16))
      {
        goto LABEL_36;
      }

      if (*(*a1 + v48 - 1) != 115)
      {
        goto LABEL_36;
      }

      v49 = v48 - 1;
      *(a1 + 8) = v49;
      *(a1 + 20) = v49;
      if (!eq_s_b(a1, 3, &s_8_106))
      {
        goto LABEL_36;
      }

      break;
    case 1:
      break;
    default:
      goto LABEL_36;
  }

  result = slice_del(a1);
  if ((result & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t basque_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 40);
  *v3 = v2;
  v3[1] = v2;
  v3[2] = *(a1 + 12);
  v4 = *(a1 + 8);
  if (!in_grouping_U(a1, &g_v_11, 97, 117, 0))
  {
    v5 = *(a1 + 8);
    if (!out_grouping_U(a1, &g_v_11, 97, 117, 0))
    {
      v8 = out_grouping_U(a1, &g_v_11, 97, 117, 1);
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    *(a1 + 8) = v5;
    if (!in_grouping_U(a1, &g_v_11, 97, 117, 0))
    {
      v8 = in_grouping_U(a1, &g_v_11, 97, 117, 1);
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  *(a1 + 8) = v4;
  if (out_grouping_U(a1, &g_v_11, 97, 117, 0))
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 8);
  if (out_grouping_U(a1, &g_v_11, 97, 117, 0) || (v8 = out_grouping_U(a1, &g_v_11, 97, 117, 1), v8 < 0))
  {
    *(a1 + 8) = v6;
    if (in_grouping_U(a1, &g_v_11, 97, 117, 0))
    {
      goto LABEL_16;
    }

    v7 = skip_utf8(*a1, *(a1 + 8), 0, *(a1 + 12), 1);
    if (v7 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_14:
    v7 = *(a1 + 8) + v8;
  }

  **(a1 + 40) = v7;
LABEL_16:
  *(a1 + 8) = v4;
  v9 = out_grouping_U(a1, &g_v_11, 97, 117, 1);
  if ((v9 & 0x80000000) == 0)
  {
    *(a1 + 8) += v9;
    v10 = in_grouping_U(a1, &g_v_11, 97, 117, 1);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = *(a1 + 8) + v10;
      *(a1 + 8) = v11;
      *(*(a1 + 40) + 4) = v11;
      v12 = out_grouping_U(a1, &g_v_11, 97, 117, 1);
      if ((v12 & 0x80000000) == 0)
      {
        *(a1 + 8) += v12;
        v13 = in_grouping_U(a1, &g_v_11, 97, 117, 1);
        if ((v13 & 0x80000000) == 0)
        {
          *(*(a1 + 40) + 8) = *(a1 + 8) + v13;
        }
      }
    }
  }

  *(a1 + 16) = v4;
  v14 = *(a1 + 12);
  *(a1 + 8) = v14;
  *(a1 + 24) = v14;
  v15 = v14 - 1;
  if (v14 - 1 > v4)
  {
    v16 = v14;
    while (1)
    {
      v17 = *(*a1 + v15);
      if ((v17 & 0xE0) != 0x60)
      {
        goto LABEL_44;
      }

      if (((0x434C222u >> v17) & 1) == 0)
      {
        goto LABEL_44;
      }

      among_b = find_among_b(a1, &a_0_16, 109);
      if (!among_b)
      {
        goto LABEL_44;
      }

      v19 = *(a1 + 8);
      *(a1 + 20) = v19;
      if (among_b <= 2)
      {
        if (among_b == 1)
        {
          v23 = **(a1 + 40);
        }

        else
        {
          if (among_b != 2)
          {
            goto LABEL_41;
          }

          v23 = *(*(a1 + 40) + 8);
        }

        if (v23 > v19)
        {
          goto LABEL_44;
        }

        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        switch(among_b)
        {
          case 3:
            v20 = a1;
            v21 = 7;
            v22 = &s_0_146;
            goto LABEL_36;
          case 4:
            v20 = a1;
            v21 = 7;
            v22 = &s_1_56;
LABEL_36:
            result = slice_from_s(v20, v21, v22);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            break;
          case 5:
            v20 = a1;
            v21 = 6;
            v22 = &s_2_56;
            goto LABEL_36;
        }
      }

LABEL_41:
      v14 = *(a1 + 8);
      v16 = *(a1 + 12);
      *(a1 + 24) = v14;
      v15 = v14 - 1;
      if (v14 - 1 <= *(a1 + 16))
      {
        goto LABEL_44;
      }
    }
  }

  v16 = v14;
LABEL_44:
  v26 = *(a1 + 12);
  v25 = *(a1 + 16);
  v27 = v14 - v16 + v26;
  *(a1 + 8) = v27;
  *(a1 + 24) = v27;
  if (v27 > v25)
  {
    do
    {
      v28 = *(*a1 + v27 - 1);
      if ((v28 & 0xE0) != 0x60)
      {
        break;
      }

      if (((0x43DDA22u >> v28) & 1) == 0)
      {
        break;
      }

      v29 = find_among_b(a1, &a_1_16, 295);
      if (!v29)
      {
        break;
      }

      v30 = *(a1 + 8);
      *(a1 + 20) = v30;
      if (v29 > 5)
      {
        if (v29 <= 7)
        {
          if (v29 == 6)
          {
            v31 = a1;
            v32 = 6;
            v33 = &s_5_56;
          }

          else
          {
            v31 = a1;
            v32 = 5;
            v33 = &s_6_131;
          }

LABEL_72:
          result = slice_from_s(v31, v32, v33);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_73;
        }

        switch(v29)
        {
          case 8:
            v31 = a1;
            v32 = 5;
            v33 = &s_7_92;
            goto LABEL_72;
          case 9:
            v31 = a1;
            v32 = 5;
            v33 = &s_8_107;
            goto LABEL_72;
          case 10:
            v31 = a1;
            v32 = 5;
            v33 = &s_9_20;
            goto LABEL_72;
        }
      }

      else
      {
        if (v29 <= 2)
        {
          if (v29 == 1)
          {
            v34 = **(a1 + 40);
          }

          else
          {
            if (v29 != 2)
            {
              goto LABEL_73;
            }

            v34 = *(*(a1 + 40) + 8);
          }
        }

        else
        {
          if (v29 == 3)
          {
            v31 = a1;
            v32 = 3;
            v33 = &s_3_101;
            goto LABEL_72;
          }

          if (v29 != 4)
          {
            v31 = a1;
            v32 = 3;
            v33 = &s_4_102;
            goto LABEL_72;
          }

          v34 = *(*(a1 + 40) + 4);
        }

        if (v34 > v30)
        {
          break;
        }

        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

LABEL_73:
      v27 = *(a1 + 8);
      v26 = *(a1 + 12);
      *(a1 + 24) = v27;
    }

    while (v27 > *(a1 + 16));
  }

  v35 = *(a1 + 16);
  v36 = *(a1 + 12) + v27 - v26;
  *(a1 + 8) = v36;
  *(a1 + 24) = v36;
  v37 = v36 - 1;
  if (v37 <= v35)
  {
    goto LABEL_84;
  }

  v38 = *(*a1 + v37);
  if ((v38 & 0xE0) != 0x60)
  {
    goto LABEL_84;
  }

  if (((0x8A22u >> v38) & 1) == 0)
  {
    goto LABEL_84;
  }

  v39 = find_among_b(a1, &a_2_15, 19);
  if (!v39)
  {
    goto LABEL_84;
  }

  v40 = *(a1 + 8);
  *(a1 + 20) = v40;
  if (v39 == 2)
  {
    result = slice_from_s(a1, 1, &s_10_39);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_84;
  }

  if (v39 != 1 || **(a1 + 40) > v40 || (result = slice_del(a1), (result & 0x80000000) == 0))
  {
LABEL_84:
    *(a1 + 8) = *(a1 + 16);
    return 1;
  }

  return result;
}

void *SN_create_env(int a1, int a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x1090040893BA05AuLL);
  if (!v6)
  {
    return v6;
  }

  s = create_s();
  *v6 = s;
  if (!s)
  {
    goto LABEL_13;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  v8 = malloc_type_calloc(a1, 8uLL, 0x10040436913F5uLL);
  v6[4] = v8;
  if (!v8)
  {
LABEL_13:
    SN_close_env(v6, a1);
    return 0;
  }

  if (a1 >= 1)
  {
    v9 = 0;
    do
    {
      *(v6[4] + v9) = create_s();
      if (!*(v6[4] + v9))
      {
        goto LABEL_13;
      }

      v9 += 8;
    }

    while (8 * a1 != v9);
  }

LABEL_9:
  if (a2)
  {
    v10 = malloc_type_calloc(a2, 4uLL, 0x100004052888210uLL);
    v6[5] = v10;
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (a3)
  {
    v11 = malloc_type_calloc(a3, 1uLL, 0x100004077774924uLL);
    v6[6] = v11;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  return v6;
}

void SN_close_env(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      if (a2 >= 1)
      {
        v3 = 0;
        v4 = 8 * a2;
        do
        {
          lose_s(*(*(a1 + 32) + v3));
          v3 += 8;
        }

        while (v4 != v3);
      }

      free(*(a1 + 32));
    }

    free(*(a1 + 40));
    free(*(a1 + 48));
    if (*a1)
    {
      lose_s(*a1);
    }

    free(a1);
  }
}

uint64_t SN_set_current(uint64_t a1, int a2, void *__src)
{
  result = replace_s(a1, 0, *(a1 + 12), a2, __src, 0);
  *(a1 + 8) = 0;
  return result;
}

uint64_t norwegian_UTF_8_stem(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  **(a1 + 40) = v2;
  v4 = *(a1 + 8);
  v5 = skip_utf8(*a1, v4, 0, v2, 3);
  if ((v5 & 0x80000000) == 0)
  {
    *(*(a1 + 40) + 4) = v5;
    *(a1 + 8) = v4;
    if ((out_grouping_U(a1, &g_v_12, 97, 248, 1) & 0x80000000) == 0)
    {
      v6 = in_grouping_U(a1, &g_v_12, 97, 248, 1);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(a1 + 8) + v6;
        *(a1 + 8) = v7;
        v8 = *(a1 + 40);
        if (v7 <= v8[1])
        {
          v7 = v8[1];
        }

        *v8 = v7;
      }
    }
  }

  *(a1 + 16) = v3;
  v9 = *(a1 + 12);
  *(a1 + 8) = v9;
  v10 = **(a1 + 40);
  if (v9 >= v10)
  {
    *(a1 + 16) = v10;
    *(a1 + 24) = v9;
    if (v9 <= v10 || (v11 = *(*a1 + v9 - 1), (v11 & 0xE0) != 0x60) || ((0x1C4022u >> v11) & 1) == 0 || (among_b = find_among_b(a1, &a_0_17, 29)) == 0)
    {
      *(a1 + 16) = v3;
      goto LABEL_17;
    }

    v13 = *(a1 + 8);
    *(a1 + 16) = v3;
    *(a1 + 20) = v13;
    if (among_b == 3)
    {
      result = slice_from_s(a1, 2, &s_0_147);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      if (among_b == 2)
      {
        v28 = *(a1 + 12);
        if (in_grouping_b_U(a1, &g_s_ending_1, 98, 122, 0))
        {
          v29 = *(a1 + 16);
          v30 = *(a1 + 12) + v13 - v28;
          *(a1 + 8) = v30;
          if (v30 <= v29)
          {
            goto LABEL_17;
          }

          if (*(*a1 + v30 - 1) != 107)
          {
            goto LABEL_17;
          }

          *(a1 + 8) = v30 - 1;
          if (out_grouping_b_U(a1, &g_v_12, 97, 248, 0))
          {
            goto LABEL_17;
          }
        }
      }

      else if (among_b != 1)
      {
        goto LABEL_17;
      }

      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }
  }

LABEL_17:
  v14 = *(a1 + 12);
  *(a1 + 8) = v14;
  v15 = **(a1 + 40);
  if (v14 >= v15)
  {
    v16 = *(a1 + 16);
    *(a1 + 16) = v15;
    *(a1 + 24) = v14;
    v17 = v14 - 1;
    if (v17 > v15 && *(*a1 + v17) == 116 && find_among_b(a1, &a_1_17, 2))
    {
      v19 = *(a1 + 8);
      v18 = *(a1 + 12);
      *(a1 + 16) = v16;
      *(a1 + 20) = v19;
      *(a1 + 8) = v18;
      v20 = skip_utf8(*a1, v18, v16, 0, -1);
      if ((v20 & 0x80000000) == 0)
      {
        *(a1 + 8) = v20;
        *(a1 + 20) = v20;
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    else
    {
      *(a1 + 16) = v16;
    }
  }

  v22 = *(a1 + 12);
  v23 = *(a1 + 16);
  *(a1 + 8) = v22;
  v24 = **(a1 + 40);
  if (v22 >= v24)
  {
    *(a1 + 16) = v24;
    *(a1 + 24) = v22;
    v25 = v22 - 1;
    if (v25 > v24 && (v26 = *(*a1 + v25), (v26 & 0xE0) == 0x60) && ((0x480080u >> v26) & 1) != 0 && find_among_b(a1, &a_2_16, 11))
    {
      v27 = *(a1 + 8);
      *(a1 + 16) = v23;
      *(a1 + 20) = v27;
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v23 = *(a1 + 16);
    }

    else
    {
      *(a1 + 16) = v23;
    }
  }

  *(a1 + 8) = v23;
  return 1;
}

uint64_t russian_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 8);
LABEL_2:
  v3 = *(a1 + 8);
  while (1)
  {
    *(a1 + 20) = v3;
    if (eq_s(a1, 2, &s_9_21))
    {
      *(a1 + 24) = *(a1 + 8);
      *(a1 + 8) = v3;
      v5 = slice_from_s(a1, 2, &s_10_40);
      if ((v5 & 0x80000000) == 0)
      {
        goto LABEL_2;
      }

      return v5;
    }

    *(a1 + 8) = v3;
    v4 = skip_utf8(*a1, v3, 0, *(a1 + 12), 1);
    if ((v4 & 0x80000000) != 0)
    {
      break;
    }

    v3 = v4;
    *(a1 + 8) = v4;
  }

  *(a1 + 8) = v2;
  v6 = *(a1 + 12);
  v7 = *(a1 + 40);
  *v7 = v6;
  v7[1] = v6;
  v8 = *(a1 + 8);
  v9 = out_grouping_U(a1, &g_v_13, 1072, 1103, 1);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = *(a1 + 8) + v9;
    *(a1 + 8) = v10;
    **(a1 + 40) = v10;
    v11 = in_grouping_U(a1, &g_v_13, 1072, 1103, 1);
    if ((v11 & 0x80000000) == 0)
    {
      *(a1 + 8) += v11;
      v12 = out_grouping_U(a1, &g_v_13, 1072, 1103, 1);
      if ((v12 & 0x80000000) == 0)
      {
        *(a1 + 8) += v12;
        v13 = in_grouping_U(a1, &g_v_13, 1072, 1103, 1);
        if ((v13 & 0x80000000) == 0)
        {
          *(*(a1 + 40) + 4) = *(a1 + 8) + v13;
        }
      }
    }
  }

  *(a1 + 16) = v8;
  v14 = *(a1 + 12);
  *(a1 + 8) = v14;
  v15 = **(a1 + 40);
  if (v14 < v15)
  {
    return 0;
  }

  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  among_b = find_among_b(a1, &a_0_18, 9);
  if (!among_b)
  {
LABEL_20:
    v21 = *(a1 + 12);
    v20 = *(a1 + 16);
    *(a1 + 8) = v21;
    *(a1 + 24) = v21;
    if (v21 - 3 > v20)
    {
      v22 = *(*a1 + v21 - 1);
      if (v22 == 143 || v22 == 140)
      {
        if (find_among_b(a1, &a_3_14, 2))
        {
          *(a1 + 20) = *(a1 + 8);
          v5 = slice_del(a1);
          if ((v5 & 0x80000000) != 0)
          {
            return v5;
          }

          v21 = *(a1 + 8);
          v23 = *(a1 + 12);
LABEL_28:
          *(a1 + 24) = v21;
          if (find_among_b(a1, &a_1_18, 26))
          {
            *(a1 + 20) = *(a1 + 8);
            v5 = slice_del(a1);
            if ((v5 & 0x80000000) == 0)
            {
              *(a1 + 24) = *(a1 + 8);
              v24 = find_among_b(a1, &a_2_17, 8);
              if (v24)
              {
                v25 = *(a1 + 8);
                *(a1 + 20) = v25;
                if (v24 == 2)
                {
                  goto LABEL_35;
                }

                if (v24 == 1)
                {
                  v26 = *(a1 + 12);
                  if (eq_s_b(a1, 2, &s_2_57))
                  {
                    goto LABEL_35;
                  }

                  *(a1 + 8) = v25 - v26 + *(a1 + 12);
                  if (eq_s_b(a1, 2, &s_3_102))
                  {
                    goto LABEL_35;
                  }
                }
              }

              goto LABEL_36;
            }

            return v5;
          }

          v35 = v23 - v21;
          *(a1 + 8) = *(a1 + 12) - v35;
          v36 = r_verb(a1);
          v37 = v36 >> 31;
          if (v36)
          {
            v38 = v36 >> 31;
          }

          else
          {
            v38 = 13;
          }

          if (v38)
          {
            v16 = v36;
            if (v38 == 13)
            {
              *(a1 + 8) = *(a1 + 12) - v35;
              v39 = r_noun(a1);
              if (v39 >= 0)
              {
                v16 = v16;
              }

              else
              {
                v16 = v39;
              }

              if (!v39)
              {
                goto LABEL_36;
              }

              v37 = v39 >> 31;
            }

            if (v37)
            {
              return v16;
            }
          }

LABEL_36:
          v27 = *(a1 + 12);
          *(a1 + 8) = v27;
          *(a1 + 24) = v27;
          if (eq_s_b(a1, 2, &s_11_50))
          {
            *(a1 + 20) = *(a1 + 8);
            v5 = slice_del(a1);
            if ((v5 & 0x80000000) != 0)
            {
              return v5;
            }

            v28 = *(a1 + 8);
            v29 = *(a1 + 12);
          }

          else
          {
            v28 = *(a1 + 12);
            *(a1 + 8) = v28;
            v29 = v28;
          }

          *(a1 + 24) = v28;
          if (v28 - 5 > *(a1 + 16))
          {
            v30 = *(*a1 + v28 - 1);
            if (v30 == 140 || v30 == 130)
            {
              if (find_among_b(a1, &a_6_7, 2))
              {
                v31 = *(a1 + 8);
                *(a1 + 20) = v31;
                if (*(*(a1 + 40) + 4) <= v31)
                {
                  v5 = slice_del(a1);
                  if ((v5 & 0x80000000) != 0)
                  {
                    return v5;
                  }
                }
              }
            }
          }

          v32 = *(a1 + 12) + v28 - v29;
          *(a1 + 8) = v32;
          *(a1 + 24) = v32;
          v33 = find_among_b(a1, &a_7_8, 4);
          if (v33)
          {
            *(a1 + 20) = *(a1 + 8);
            switch(v33)
            {
              case 3:
LABEL_67:
                v5 = slice_del(a1);
                if ((v5 & 0x80000000) != 0)
                {
                  return v5;
                }

                break;
              case 2:
                v34 = &s_8_108;
LABEL_66:
                if (!eq_s_b(a1, 2, v34))
                {
                  break;
                }

                goto LABEL_67;
              case 1:
                v5 = slice_del(a1);
                if ((v5 & 0x80000000) != 0)
                {
                  return v5;
                }

                *(a1 + 24) = *(a1 + 8);
                if (eq_s_b(a1, 2, &s_6_132))
                {
                  *(a1 + 20) = *(a1 + 8);
                  v34 = &s_7_93;
                  goto LABEL_66;
                }

                break;
            }
          }

          *(a1 + 16) = v8;
          *(a1 + 8) = v8;
          return 1;
        }

        v21 = *(a1 + 12);
      }
    }

    *(a1 + 8) = v21;
    v23 = v21;
    goto LABEL_28;
  }

  v18 = *(a1 + 8);
  *(a1 + 20) = v18;
  if (among_b == 2)
  {
    goto LABEL_35;
  }

  if (among_b != 1)
  {
    goto LABEL_36;
  }

  v19 = *(a1 + 12);
  if (!eq_s_b(a1, 2, &s_0_148))
  {
    *(a1 + 8) = v18 - v19 + *(a1 + 12);
    if (!eq_s_b(a1, 2, &s_1_295))
    {
      goto LABEL_20;
    }
  }

LABEL_35:
  v5 = slice_del(a1);
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  return v5;
}

uint64_t r_verb(_DWORD *a1)
{
  a1[6] = a1[2];
  result = find_among_b(a1, &a_4_12, 46);
  if (result)
  {
    v3 = a1[2];
    a1[5] = v3;
    if (result == 2)
    {
      goto LABEL_6;
    }

    if (result != 1)
    {
      return 1;
    }

    v4 = a1[3];
    if (eq_s_b(a1, 2, &s_4_103) || (a1[2] = v3 - v4 + a1[3], result = eq_s_b(a1, 2, &s_5_57), result))
    {
LABEL_6:
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      return 1;
    }
  }

  return result;
}

uint64_t r_noun(_DWORD *a1)
{
  a1[6] = a1[2];
  result = find_among_b(a1, &a_5_11, 36);
  if (result)
  {
    a1[5] = a1[2];
    LODWORD(result) = slice_del(a1);
    if (result >= 0)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t turkish_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = out_grouping_U(a1, &g_vowel_0, 97, 305, 1);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = 3;
    do
    {
      v5 = *(a1 + 8) + v3;
      *(a1 + 8) = v5;
      v3 = out_grouping_U(a1, &g_vowel_0, 97, 305, 1);
      --v4;
    }

    while ((v3 & 0x80000000) == 0);
    if (v4 >= 2)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    *(a1 + 8) = v6;
    if (v4 > 1)
    {
      return 0;
    }

    *(a1 + 16) = v2;
    v7 = *(a1 + 12);
    *(a1 + 8) = v7;
    *(a1 + 24) = v7;
    **(a1 + 48) = 1;
    v9 = *(a1 + 8);
    v8 = *(a1 + 12);
    v10 = r_mark_ymUs_(a1);
    v11 = v10 >> 31;
    if (!v10)
    {
      v11 = 2;
    }

    if (!v11)
    {
      goto LABEL_57;
    }

    v12 = v10;
    if (v11 != 2)
    {
LABEL_56:
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      goto LABEL_57;
    }

    v13 = v8 - v9;
    *(a1 + 8) = *(a1 + 12) - v13;
    if (r_mark_yDU(a1))
    {
      goto LABEL_57;
    }

    *(a1 + 8) = *(a1 + 12) - v13;
    if (r_mark_ysA(a1))
    {
      goto LABEL_57;
    }

    *(a1 + 8) = *(a1 + 12) - v13;
    if (eq_s_b(a1, 3, &s_4_104))
    {
      if (r_mark_suffix_with_optional_y_consonant(a1))
      {
        goto LABEL_57;
      }
    }

    v15 = *(a1 + 12);
    v14 = *(a1 + 16);
    *(a1 + 8) = v15 - v13;
    if (v15 - v13 - 5 > v14 && (*(*a1 + v15 - v13 - 1) | 4) == 0x65)
    {
      among_b = find_among_b(a1, &a_19_2, 2);
      v15 = *(a1 + 12);
      if (among_b)
      {
        v17 = *(a1 + 8);
        if (!r_mark_sUnUz(a1))
        {
          v18 = v15 - v17;
          *(a1 + 8) = *(a1 + 12) - v18;
          if (!r_mark_lAr(a1))
          {
            *(a1 + 8) = *(a1 + 12) - v18;
            if (!r_mark_yUm(a1))
            {
              *(a1 + 8) = *(a1 + 12) - v18;
              if (!r_mark_sUn(a1))
              {
                *(a1 + 8) = *(a1 + 12) - v18;
                if (!r_mark_yUz(a1))
                {
                  *(a1 + 8) = *(a1 + 12) - v18;
                }
              }
            }
          }
        }

        v19 = r_mark_ymUs_(a1);
        v20 = v19 >> 31;
        if (v19 >= 0)
        {
          v21 = v12;
        }

        else
        {
          v21 = v19;
        }

        if (v19)
        {
          v12 = v21;
        }

        else
        {
          v20 = 8;
          v12 = v12;
        }

        if (!v20)
        {
          goto LABEL_57;
        }

        if (v20 != 8)
        {
          if (v19 < 0)
          {
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            goto LABEL_58;
          }

          goto LABEL_57;
        }

        v15 = *(a1 + 12);
      }
    }

    *(a1 + 8) = v15 - v13;
    if (r_mark_lAr(a1))
    {
      *(a1 + 20) = *(a1 + 8);
      inserted = slice_del(a1);
      if ((inserted & 0x80000000) != 0)
      {
        return inserted;
      }

      v24 = *(a1 + 8);
      v23 = *(a1 + 12);
      *(a1 + 24) = v24;
      if (!r_mark_DUr(a1))
      {
        v25 = v23 - v24;
        *(a1 + 8) = *(a1 + 12) - (v23 - v24);
        if (!r_mark_yDU(a1))
        {
          *(a1 + 8) = *(a1 + 12) - v25;
          if (!r_mark_ysA(a1))
          {
            *(a1 + 8) = *(a1 + 12) - v25;
            v110 = r_mark_ymUs_(a1);
            if (v110)
            {
              v12 = v110;
              if ((v110 & 0x80000000) != 0)
              {
                return v12;
              }
            }

            else
            {
              *(a1 + 8) = v24 - v23 + *(a1 + 12);
            }
          }
        }
      }

      **(a1 + 48) = 0;
      goto LABEL_57;
    }

    *(a1 + 8) = *(a1 + 12) - v13;
    if (!r_check_vowel_harmony(a1) || (v26 = *(a1 + 8), v26 - 2 <= *(a1 + 16)) || *(*a1 + v26 - 1) != 122 || !find_among_b(a1, &a_17_2, 4) || (v28 = *(a1 + 8), v27 = *(a1 + 12), !r_mark_yDU(a1)) && (*(a1 + 8) = v28 - v27 + *(a1 + 12), !r_mark_ysA(a1)))
    {
      *(a1 + 8) = *(a1 + 12) - v13;
      if (r_mark_sUnUz(a1) || (*(a1 + 8) = *(a1 + 12) - v13, r_mark_yUz(a1)) || (*(a1 + 8) = *(a1 + 12) - v13, r_mark_sUn(a1)) || (*(a1 + 8) = *(a1 + 12) - v13, r_mark_yUm(a1)))
      {
        *(a1 + 20) = *(a1 + 8);
        inserted = slice_del(a1);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        v30 = *(a1 + 8);
        v29 = *(a1 + 12);
        *(a1 + 24) = v30;
      }

      else
      {
        *(a1 + 8) = *(a1 + 12) - v13;
        if (!r_mark_DUr(a1))
        {
          goto LABEL_58;
        }

        *(a1 + 20) = *(a1 + 8);
        inserted = slice_del(a1);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        v30 = *(a1 + 8);
        v29 = *(a1 + 12);
        *(a1 + 24) = v30;
        if (!r_mark_sUnUz(a1))
        {
          v113 = v29 - v30;
          *(a1 + 8) = *(a1 + 12) - (v29 - v30);
          if (!r_mark_lAr(a1))
          {
            *(a1 + 8) = *(a1 + 12) - v113;
            if (!r_mark_yUm(a1))
            {
              *(a1 + 8) = *(a1 + 12) - v113;
              if (!r_mark_sUn(a1))
              {
                *(a1 + 8) = *(a1 + 12) - v113;
                if (!r_mark_yUz(a1))
                {
                  *(a1 + 8) = *(a1 + 12) - v113;
                }
              }
            }
          }
        }
      }

      v31 = r_mark_ymUs_(a1);
      if (!v31)
      {
        *(a1 + 8) = v30 - v29 + *(a1 + 12);
        goto LABEL_57;
      }

      v12 = v31;
      goto LABEL_56;
    }

LABEL_57:
    *(a1 + 20) = *(a1 + 8);
    inserted = slice_del(a1);
    if ((inserted & 0x80000000) != 0)
    {
      return inserted;
    }

LABEL_58:
    v32 = *(a1 + 12);
    *(a1 + 8) = v32;
    if (!**(a1 + 48))
    {
      return 0;
    }

    *(a1 + 24) = v32;
    if (r_mark_lAr(a1))
    {
      goto LABEL_60;
    }

    v36 = *(a1 + 12);
    *(a1 + 8) = v36;
    *(a1 + 24) = v36;
    if (r_check_vowel_harmony(a1))
    {
      v37 = *(a1 + 8) - 1;
      if (v37 > *(a1 + 16) && (*(*a1 + v37) | 4) == 0x65 && find_among_b(a1, &a_11_3, 2) && r_mark_suffix_with_optional_n_consonant(a1))
      {
        *(a1 + 20) = *(a1 + 8);
        inserted = slice_del(a1);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        v39 = *(a1 + 8);
        v38 = *(a1 + 12);
        *(a1 + 24) = v39;
        if (!r_mark_lArI(a1))
        {
          v40 = v38 - v39;
          v41 = *(a1 + 12) - v40;
          *(a1 + 8) = v41;
          *(a1 + 24) = v41;
          if (!r_mark_possessives(a1))
          {
            *(a1 + 8) = *(a1 + 12) - v40;
            v42 = r_mark_sU(a1);
            if (!v42)
            {
              v111 = *(a1 + 12) - v40;
              *(a1 + 8) = v111;
              *(a1 + 24) = v111;
              goto LABEL_167;
            }

            v12 = v42;
            if ((v42 & 0x80000000) != 0)
            {
              return v12;
            }
          }

LABEL_165:
          *(a1 + 20) = *(a1 + 8);
          inserted = slice_del(a1);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v89 = *(a1 + 8);
          v40 = *(a1 + 12) - v89;
          *(a1 + 24) = v89;
LABEL_167:
          if (!r_mark_lAr(a1))
          {
            goto LABEL_170;
          }

          *(a1 + 20) = *(a1 + 8);
          inserted = slice_del(a1);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v35 = r_stem_suffix_chain_before_ki(a1);
          if (!v35)
          {
LABEL_170:
            v46 = *(a1 + 12) - v40;
LABEL_81:
            *(a1 + 8) = v46;
            goto LABEL_82;
          }

LABEL_62:
          v12 = v35;
          goto LABEL_63;
        }

LABEL_78:
        *(a1 + 20) = *(a1 + 8);
        inserted = slice_del(a1);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        goto LABEL_82;
      }
    }

    v43 = *(a1 + 12);
    *(a1 + 8) = v43;
    *(a1 + 24) = v43;
    if (r_mark_ndA(a1) || (*(a1 + 8) = *(a1 + 12), r_check_vowel_harmony(a1)) && (v52 = *(a1 + 8) - 1, v52 > *(a1 + 16)) && (*(*a1 + v52) | 4) == 0x65 && find_among_b(a1, &a_5_12, 2))
    {
      v45 = *(a1 + 8);
      v44 = *(a1 + 12);
      if (r_mark_lArI(a1))
      {
        goto LABEL_78;
      }

      v65 = v44 - v45;
      *(a1 + 8) = *(a1 + 12) - v65;
      v66 = r_mark_sU(a1);
      v58 = v66 >> 31;
      v12 = v66 & (v66 >> 31);
      if (v66)
      {
        v67 = v66 >> 31;
      }

      else
      {
        v67 = 18;
      }

      if (v67 != 18)
      {
        if (!v67)
        {
          goto LABEL_165;
        }

        goto LABEL_126;
      }

      *(a1 + 8) = *(a1 + 12) - v65;
      v85 = r_stem_suffix_chain_before_ki(a1);
      if (v85)
      {
        if ((v85 & 0x80000000) == 0)
        {
          goto LABEL_82;
        }

        v58 = v85 >> 31;
        v12 = v85;
        goto LABEL_126;
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

    v53 = *(a1 + 12);
    *(a1 + 8) = v53;
    *(a1 + 24) = v53;
    if (r_check_vowel_harmony(a1) && (v54 = *(a1 + 8), v54 - 3 > *(a1 + 16)) && *(*a1 + v54 - 1) == 110 && find_among_b(a1, &a_9_5, 2) || (*(a1 + 8) = *(a1 + 12), r_mark_nU(a1)))
    {
      v56 = *(a1 + 8);
      v55 = *(a1 + 12);
      v57 = r_mark_sU(a1);
      v58 = v57 >> 31;
      if (v57 >= 0)
      {
        v59 = v12;
      }

      else
      {
        v59 = v57;
      }

      if (v57)
      {
        v60 = v57 >> 31;
      }

      else
      {
        v60 = 23;
      }

      if (v57)
      {
        v12 = v59;
      }

      else
      {
        v12 = v12;
      }

      if (v60 != 23)
      {
        if (!v60)
        {
          goto LABEL_165;
        }

        if ((v57 & 0x80000000) == 0)
        {
          goto LABEL_82;
        }

        goto LABEL_126;
      }

      *(a1 + 8) = v56 - v55 + *(a1 + 12);
      if (r_mark_lArI(a1))
      {
        goto LABEL_82;
      }
    }

    v86 = *(a1 + 12);
    *(a1 + 8) = v86;
    *(a1 + 24) = v86;
    if (r_mark_DAn(a1))
    {
      *(a1 + 20) = *(a1 + 8);
      inserted = slice_del(a1);
      if ((inserted & 0x80000000) != 0)
      {
        return inserted;
      }

      v88 = *(a1 + 8);
      v87 = *(a1 + 12);
      *(a1 + 24) = v88;
      if (r_mark_possessives(a1))
      {
        goto LABEL_165;
      }

      v98 = v87 - v88;
      *(a1 + 8) = *(a1 + 12) - v98;
      if (r_mark_lAr(a1))
      {
LABEL_60:
        *(a1 + 20) = *(a1 + 8);
        inserted = slice_del(a1);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        v34 = *(a1 + 8);
        v33 = *(a1 + 12);
        v35 = r_stem_suffix_chain_before_ki(a1);
        if (v35)
        {
          goto LABEL_62;
        }

        v46 = v34 - v33 + *(a1 + 12);
        goto LABEL_81;
      }

      *(a1 + 8) = *(a1 + 12) - v98;
LABEL_194:
      inserted = r_stem_suffix_chain_before_ki(a1);
      if ((inserted & 0x80000000) != 0)
      {
        return inserted;
      }

      goto LABEL_82;
    }

    v90 = *(a1 + 12);
    *(a1 + 8) = v90;
    *(a1 + 24) = v90;
    if (r_mark_nUn(a1) || (*(a1 + 8) = *(a1 + 12), r_mark_ylA(a1)))
    {
      *(a1 + 20) = *(a1 + 8);
      inserted = slice_del(a1);
      if ((inserted & 0x80000000) != 0)
      {
        return inserted;
      }

      v92 = *(a1 + 8);
      v91 = *(a1 + 12);
      *(a1 + 24) = v92;
      if (r_mark_lAr(a1))
      {
        *(a1 + 20) = *(a1 + 8);
        inserted = slice_del(a1);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        v93 = r_stem_suffix_chain_before_ki(a1);
        v58 = v93 >> 31;
        if (v93 >= 0)
        {
          v94 = v12;
        }

        else
        {
          v94 = v93;
        }

        if (v93)
        {
          v95 = v93 >> 31;
        }

        else
        {
          v95 = 36;
        }

        if (v93)
        {
          v12 = v94;
        }

        else
        {
          v12 = v12;
        }

        if (!v95)
        {
          goto LABEL_82;
        }

        if (v95 != 36)
        {
          goto LABEL_126;
        }
      }

      v96 = v91 - v92;
      v97 = *(a1 + 12) - v96;
      *(a1 + 8) = v97;
      *(a1 + 24) = v97;
      if (r_mark_possessives(a1))
      {
        goto LABEL_188;
      }

      *(a1 + 8) = *(a1 + 12) - v96;
      v109 = r_mark_sU(a1);
      if (!v109)
      {
        *(a1 + 8) = *(a1 + 12) - v96;
        v112 = r_stem_suffix_chain_before_ki(a1);
        if ((v112 & 0x80000000) == 0)
        {
          goto LABEL_82;
        }

        v12 = v112;
        goto LABEL_230;
      }

      v12 = v109;
      if ((v109 & 0x80000000) != 0)
      {
LABEL_230:
        v58 = v12 >> 31;
        goto LABEL_126;
      }
    }

    else
    {
      v100 = *(a1 + 12);
      *(a1 + 8) = v100;
      *(a1 + 24) = v100;
      if (r_mark_lArI(a1))
      {
        goto LABEL_78;
      }

      *(a1 + 8) = *(a1 + 12);
      v101 = r_stem_suffix_chain_before_ki(a1);
      v58 = v101 >> 31;
      if (v101 >= 0)
      {
        v102 = v12;
      }

      else
      {
        v102 = v101;
      }

      if (v101)
      {
        v103 = v101 >> 31;
      }

      else
      {
        v103 = 44;
      }

      if (v101)
      {
        v12 = v102;
      }

      else
      {
        v12 = v12;
      }

      if (!v103)
      {
        goto LABEL_82;
      }

      if (v103 != 44)
      {
LABEL_126:
        if (v58)
        {
LABEL_63:
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }
        }

LABEL_82:
        *(a1 + 8) = *(a1 + 12);
        v47 = eq_s_b(a1, 2, &s_16_12);
        v48 = *(a1 + 12);
        if (!v47)
        {
          v51 = *(a1 + 16);
LABEL_112:
          *(a1 + 8) = v48;
          if (v48 <= v51)
          {
            goto LABEL_145;
          }

          v61 = *(*a1 + v48 - 1);
          if (v61 != 103 && v61 != 100)
          {
            goto LABEL_145;
          }

          if ((out_grouping_b_U(a1, &g_vowel_0, 97, 305, 1) & 0x80000000) == 0)
          {
            if ((v62 = *(a1 + 8), v62 > *(a1 + 16)) && *(*a1 + v62 - 1) == 97 || eq_s_b(a1, 2, &s_9_22))
            {
              v63 = *(a1 + 12);
              *(a1 + 8) = v63;
              v64 = &s_10_41;
LABEL_143:
              v74 = a1;
              v75 = v63;
              v76 = v63;
              v77 = 2;
LABEL_144:
              inserted = insert_s(v74, v75, v76, v77, v64);
              *(a1 + 8) = v63;
              if ((inserted & 0x80000000) != 0)
              {
                return inserted;
              }

LABEL_145:
              v80 = *(a1 + 12);
              *(a1 + 8) = v80;
              *(a1 + 24) = v80;
              v81 = find_among_b(a1, &a_23_1, 4);
              if (!v81)
              {
                goto LABEL_157;
              }

              *(a1 + 20) = *(a1 + 8);
              if (v81 > 2)
              {
                if (v81 == 3)
                {
                  v82 = &s_7_94;
                }

                else
                {
                  if (v81 != 4)
                  {
                    goto LABEL_157;
                  }

                  v82 = &s_8_109;
                }
              }

              else
              {
                if (v81 != 1)
                {
                  if (v81 == 2)
                  {
                    v82 = &s_6_133;
                    v83 = a1;
                    v84 = 2;
                    goto LABEL_156;
                  }

LABEL_157:
                  v2 = *(a1 + 16);
                  v12 = 1;
                  goto LABEL_41;
                }

                v82 = &s_5_58;
              }

              v83 = a1;
              v84 = 1;
LABEL_156:
              inserted = slice_from_s(v83, v84, v82);
              if ((inserted & 0x80000000) == 0)
              {
                goto LABEL_157;
              }

              return inserted;
            }
          }

          *(a1 + 8) = *(a1 + 12);
          v68 = out_grouping_b_U(a1, &g_vowel_0, 97, 305, 1);
          v63 = *(a1 + 12);
          if ((v68 & 0x80000000) == 0 && (v69 = *(a1 + 8), v69 > *(a1 + 16)) && ((v70 = *(*a1 + v69 - 1), v70 == 105) || v70 == 101))
          {
            *(a1 + 8) = v63;
            v64 = &s_11_51;
          }

          else
          {
            *(a1 + 8) = v63;
            v71 = out_grouping_b_U(a1, &g_vowel_0, 97, 305, 1);
            v63 = *(a1 + 12);
            if (v71 < 0 || (v72 = *(a1 + 8), v72 <= *(a1 + 16)) || (v73 = *(*a1 + v72 - 1), v73 != 117) && v73 != 111)
            {
              *(a1 + 8) = v63;
              if ((out_grouping_b_U(a1, &g_vowel_0, 97, 305, 1) & 0x80000000) != 0)
              {
                goto LABEL_145;
              }

              v79 = *(a1 + 8);
              v78 = *(a1 + 12);
              if (!eq_s_b(a1, 2, &s_13_43))
              {
                *(a1 + 8) = v79 - v78 + *(a1 + 12);
                if (!eq_s_b(a1, 2, &s_14_19))
                {
                  goto LABEL_145;
                }
              }

              v63 = *(a1 + 12);
              *(a1 + 8) = v63;
              v64 = &s_15_12;
              goto LABEL_143;
            }

            *(a1 + 8) = v63;
            v64 = &s_12_17;
          }

          v74 = a1;
          v75 = v63;
          v76 = v63;
          v77 = 1;
          goto LABEL_144;
        }

        v49 = *(a1 + 8);
        if (eq_s_b(a1, 3, &s_17_17))
        {
          v50 = *(a1 + 8);
        }

        else
        {
          v50 = *(a1 + 12) + v49 - v48;
          *(a1 + 8) = v50;
        }

        v51 = *(a1 + 16);
        if (v50 > v51)
        {
          v48 = *(a1 + 12);
          goto LABEL_112;
        }

        return 0;
      }

      v104 = *(a1 + 12);
      *(a1 + 8) = v104;
      *(a1 + 24) = v104;
      if (r_mark_DA(a1) || (*(a1 + 8) = *(a1 + 12), r_mark_yU(a1)) || (*(a1 + 8) = *(a1 + 12), r_mark_yA(a1)))
      {
        *(a1 + 20) = *(a1 + 8);
        inserted = slice_del(a1);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        v106 = *(a1 + 8);
        v105 = *(a1 + 12);
        *(a1 + 24) = v106;
        if (r_mark_possessives(a1))
        {
          *(a1 + 20) = *(a1 + 8);
          inserted = slice_del(a1);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v108 = *(a1 + 8);
          v107 = *(a1 + 12);
          *(a1 + 24) = v108;
          if (!r_mark_lAr(a1))
          {
            *(a1 + 8) = v108 - v107 + *(a1 + 12);
          }
        }

        else
        {
          *(a1 + 8) = v106 - v105 + *(a1 + 12);
          if (!r_mark_lAr(a1))
          {
            goto LABEL_82;
          }
        }

        *(a1 + 20) = *(a1 + 8);
        inserted = slice_del(a1);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        *(a1 + 24) = *(a1 + 8);
        goto LABEL_194;
      }

      v114 = *(a1 + 12);
      *(a1 + 8) = v114;
      *(a1 + 24) = v114;
      if (!r_mark_possessives(a1))
      {
        *(a1 + 8) = *(a1 + 12);
        v35 = r_mark_sU(a1);
        if (v35 < 1)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_188:
    *(a1 + 20) = *(a1 + 8);
    inserted = slice_del(a1);
    if ((inserted & 0x80000000) != 0)
    {
      return inserted;
    }

    *(a1 + 24) = *(a1 + 8);
    if (!r_mark_lAr(a1))
    {
      goto LABEL_82;
    }

    *(a1 + 20) = *(a1 + 8);
    inserted = slice_del(a1);
    if ((inserted & 0x80000000) != 0)
    {
      return inserted;
    }

    goto LABEL_194;
  }

  v12 = 0;
LABEL_41:
  *(a1 + 8) = v2;
  return v12;
}

uint64_t r_mark_ymUs_(uint64_t a1)
{
  if (!r_check_vowel_harmony(a1))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 - 3 <= *(a1 + 16) || *(*a1 + v2 - 1) != 159 || !find_among_b(a1, &a_22_1, 4))
  {
    return 0;
  }

  return r_mark_suffix_with_optional_y_consonant(a1);
}

uint64_t r_mark_yDU(uint64_t a1)
{
  if (!r_check_vowel_harmony(a1) || !find_among_b(a1, &a_20_2, 32))
  {
    return 0;
  }

  return r_mark_suffix_with_optional_y_consonant(a1);
}

uint64_t r_mark_ysA(uint64_t a1)
{
  v1 = *(a1 + 8) - 1;
  if (v1 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1);
  if ((v3 & 0xE0) != 0x60 || ((0x6822u >> v3) & 1) == 0 || !find_among_b(a1, &a_21_2, 8))
  {
    return 0;
  }

  return r_mark_suffix_with_optional_y_consonant(a1);
}

uint64_t r_mark_lAr(uint64_t a1)
{
  result = r_check_vowel_harmony(a1);
  if (result)
  {
    v3 = *(a1 + 8);
    return v3 - 2 > *(a1 + 16) && *(*a1 + v3 - 1) == 114 && find_among_b(a1, &a_16_2, 2) != 0;
  }

  return result;
}

uint64_t r_mark_yUm(uint64_t a1)
{
  if (!r_check_vowel_harmony(a1))
  {
    return 0;
  }

  v2 = *(a1 + 8) - 1;
  if (v2 <= *(a1 + 16) || *(*a1 + v2) != 109 || !find_among_b(a1, &a_12_2, 4))
  {
    return 0;
  }

  return r_mark_suffix_with_optional_y_consonant(a1);
}

uint64_t r_mark_sUn(uint64_t a1)
{
  result = r_check_vowel_harmony(a1);
  if (result)
  {
    v3 = *(a1 + 8);
    return v3 - 2 > *(a1 + 16) && *(*a1 + v3 - 1) == 110 && find_among_b(a1, &a_13_2, 4) != 0;
  }

  return result;
}

uint64_t r_mark_yUz(uint64_t a1)
{
  if (!r_check_vowel_harmony(a1))
  {
    return 0;
  }

  v2 = *(a1 + 8) - 1;
  if (v2 <= *(a1 + 16) || *(*a1 + v2) != 122 || !find_among_b(a1, &a_14_2, 4))
  {
    return 0;
  }

  return r_mark_suffix_with_optional_y_consonant(a1);
}

uint64_t r_mark_DUr(uint64_t a1)
{
  result = r_check_vowel_harmony(a1);
  if (result)
  {
    v3 = *(a1 + 8);
    return v3 - 2 > *(a1 + 16) && *(*a1 + v3 - 1) == 114 && find_among_b(a1, &a_18_2, 8) != 0;
  }

  return result;
}

uint64_t r_check_vowel_harmony(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  if ((out_grouping_b_U(a1, &g_vowel_0, 97, 305, 1) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 12);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 <= v6)
  {
    v7 = *(a1 + 12);
  }

  else
  {
    v7 = *(a1 + 12);
    if (*(*a1 + v5 - 1) == 97)
    {
      *(a1 + 8) = v5 - 1;
      if ((out_grouping_b_U(a1, &g_vowel1, 97, 305, 1) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      v7 = *(a1 + 12);
      v6 = *(a1 + 16);
    }
  }

  v8 = v4 - v5;
  v9 = v7 - v8;
  *(a1 + 8) = v9;
  if (v9 > v6 && *(*a1 + v9 - 1) == 101)
  {
    *(a1 + 8) = v9 - 1;
    if ((out_grouping_b_U(a1, &g_vowel2, 101, 252, 1) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v9 = *(a1 + 12) - v8;
  }

  *(a1 + 8) = v9;
  if (eq_s_b(a1, 2, &s_0_149) && (out_grouping_b_U(a1, &g_vowel3, 97, 305, 1) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  v10 = *(a1 + 16);
  v11 = *(a1 + 12) - v8;
  *(a1 + 8) = v11;
  if (v11 > v10 && *(*a1 + v11 - 1) == 105)
  {
    *(a1 + 8) = v11 - 1;
    if ((out_grouping_b_U(a1, &g_vowel4, 101, 105, 1) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v10 = *(a1 + 16);
    LODWORD(v11) = *(a1 + 12) - v8;
  }

  *(a1 + 8) = v11;
  if (v11 > v10 && *(*a1 + v11 - 1) == 111)
  {
    *(a1 + 8) = v11 - 1;
    if ((out_grouping_b_U(a1, &g_vowel5, 111, 117, 1) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    LODWORD(v11) = *(a1 + 12) - v8;
  }

  *(a1 + 8) = v11;
  if (eq_s_b(a1, 2, &s_1_296) && (out_grouping_b_U(a1, &g_vowel6, 246, 252, 1) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 12) - v8;
  *(a1 + 8) = v13;
  if (v13 > v12 && *(*a1 + v13 - 1) == 117)
  {
    *(a1 + 8) = v13 - 1;
    if ((out_grouping_b_U(a1, &g_vowel5, 111, 117, 1) & 0x80000000) != 0)
    {
      LODWORD(v13) = *(a1 + 12) - v8;
      goto LABEL_27;
    }

LABEL_29:
    *(a1 + 8) = v3 - v2 + *(a1 + 12);
    return 1;
  }

LABEL_27:
  *(a1 + 8) = v13;
  result = eq_s_b(a1, 2, &s_2_58);
  if (!result)
  {
    return result;
  }

  if ((out_grouping_b_U(a1, &g_vowel6, 246, 252, 1) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t r_mark_suffix_with_optional_y_consonant(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 8);
  v4 = v2;
  v5 = *(a1 + 16);
  v6 = *a1;
  if (v3 > v5 && *(v6 + v3 - 1) == 121)
  {
    *(a1 + 8) = v3 - 1;
    v7 = in_grouping_b_U(a1, &g_vowel_0, 97, 305, 0);
    v4 = *(a1 + 12);
    if (!v7)
    {
      v12 = v3 - 1 - v2 + v4;
      goto LABEL_12;
    }

    v5 = *(a1 + 16);
    v6 = *a1;
  }

  v8 = v3 - v2;
  v9 = (v4 + v8);
  *(a1 + 8) = v9;
  if (v9 > v5 && *(v6 + v9 - 1) == 121)
  {
    return 0;
  }

  v10 = skip_utf8(v6, v9, v5, 0, -1);
  if (v10 < 0)
  {
    return 0;
  }

  *(a1 + 8) = v10;
  if (in_grouping_b_U(a1, &g_vowel_0, 97, 305, 0))
  {
    return 0;
  }

  v12 = *(a1 + 12) + v8;
LABEL_12:
  *(a1 + 8) = v12;
  return 1;
}

uint64_t r_stem_suffix_chain_before_ki(_DWORD *a1)
{
  a1[6] = a1[2];
  result = eq_s_b(a1, 2, &s_3_103);
  v3 = result != 0;
  if (result)
  {
    v5 = a1[2];
    v4 = a1[3];
    if (r_mark_DA(a1))
    {
      a1[5] = a1[2];
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v7 = a1[2];
      v6 = a1[3];
      a1[6] = v7;
      if (r_mark_lAr(a1))
      {
        a1[5] = a1[2];
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v9 = a1[2];
        v8 = a1[3];
LABEL_7:
        result = r_stem_suffix_chain_before_ki(a1);
        if (!result)
        {
          v10 = v9 - v8 + a1[3];
LABEL_28:
          a1[2] = v10;
          return 1;
        }

        goto LABEL_25;
      }

      v14 = v7 - v6;
      a1[2] = a1[3] + v14;
      if (!r_mark_possessives(a1))
      {
        v10 = a1[3] + v14;
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    v11 = v4 - v5;
    a1[2] = a1[3] - v11;
    if (r_mark_nUn(a1))
    {
      a1[5] = a1[2];
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v9 = a1[2];
      v8 = a1[3];
      a1[6] = v9;
      if (!r_mark_lArI(a1))
      {
        v12 = v8 - v9;
        v13 = a1[3] - (v8 - v9);
        a1[2] = v13;
        a1[6] = v13;
        if (!r_mark_possessives(a1))
        {
          a1[2] = a1[3] - v12;
          result = r_mark_sU(a1);
          if (!result)
          {
            a1[2] = a1[3] - v12;
            goto LABEL_7;
          }

          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

LABEL_17:
        a1[5] = a1[2];
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v15 = a1[2];
        v16 = a1[3] - v15;
        a1[6] = v15;
        if (!r_mark_lAr(a1))
        {
          goto LABEL_21;
        }

        a1[5] = a1[2];
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = r_stem_suffix_chain_before_ki(a1);
        if (!result)
        {
LABEL_21:
          v10 = a1[3] - v16;
          goto LABEL_28;
        }

LABEL_25:
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        return 1;
      }

LABEL_24:
      a1[5] = a1[2];
      result = slice_del(a1);
      goto LABEL_25;
    }

    a1[2] = a1[3] - v11;
    result = r_mark_ndA(a1);
    if (!result)
    {
      return result;
    }

    v18 = a1[2];
    v17 = a1[3];
    if (r_mark_lArI(a1))
    {
      goto LABEL_24;
    }

    v19 = v17 - v18;
    a1[2] = a1[3] - v19;
    v20 = r_mark_sU(a1);
    v21 = v20 >> 31;
    if (!v20)
    {
      v21 = 19;
    }

    if (v21 == 19)
    {
      a1[2] = a1[3] - v19;
      result = r_stem_suffix_chain_before_ki(a1);
      if (result > 0)
      {
        return 1;
      }
    }

    else
    {
      if (!v21)
      {
        goto LABEL_17;
      }

      v22 = v20;
      if (v20 >= 0)
      {
        v23 = v3;
      }

      else
      {
        v23 = v20;
      }

      if (v20)
      {
        result = v23;
      }

      else
      {
        result = v3;
      }

      if ((v22 & 0x80000000) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL r_mark_lArI(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 3 > *(a1 + 16) && ((v2 = *(*a1 + v1 - 1), v2 == 177) || v2 == 105))
  {
    return find_among_b(a1, &a_1_19, 2) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t r_mark_possessives(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if ((v3 & 0xE0) != 0x60 || ((0x4006000u >> v3) & 1) == 0)
  {
    return 0;
  }

  result = find_among_b(a1, &a_0_19, 10);
  if (result)
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 12);
    if (!in_grouping_b_U(a1, &g_U, 105, 305, 0))
    {
      v8 = *(a1 + 8);
      v7 = *(a1 + 12);
      if (!out_grouping_b_U(a1, &g_vowel_0, 97, 305, 0))
      {
        v12 = v8 - v7 + *(a1 + 12);
        goto LABEL_15;
      }
    }

    v9 = v6 - v5;
    *(a1 + 8) = *(a1 + 12) + v9;
    result = in_grouping_b_U(a1, &g_U, 105, 305, 0);
    v10 = (*(a1 + 12) + v9);
    *(a1 + 8) = v10;
    if (result)
    {
      v11 = skip_utf8(*a1, v10, *(a1 + 16), 0, -1);
      if (v11 < 0)
      {
        return 0;
      }

      *(a1 + 8) = v11;
      if (out_grouping_b_U(a1, &g_vowel_0, 97, 305, 0))
      {
        return 0;
      }

      v12 = *(a1 + 12) + v9;
LABEL_15:
      *(a1 + 8) = v12;
      return 1;
    }
  }

  return result;
}

uint64_t r_mark_sU(uint64_t a1)
{
  result = r_check_vowel_harmony(a1);
  if (result)
  {
    if (in_grouping_b_U(a1, &g_U, 105, 305, 0))
    {
      return 0;
    }

    v3 = *(a1 + 12);
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a1;
    if (v4 <= v5)
    {
      v7 = *(a1 + 12);
    }

    else
    {
      v7 = *(a1 + 12);
      if (*(v6 + v4 - 1) == 115)
      {
        *(a1 + 8) = v4 - 1;
        v8 = in_grouping_b_U(a1, &g_vowel_0, 97, 305, 0);
        v7 = *(a1 + 12);
        if (!v8)
        {
          v12 = v4 - 1 - v3 + v7;
          goto LABEL_16;
        }

        v5 = *(a1 + 16);
        v6 = *a1;
      }
    }

    v9 = v4 - v3;
    v10 = (v7 + v9);
    *(a1 + 8) = v10;
    if (v10 > v5 && *(v6 + v10 - 1) == 115)
    {
      return 0;
    }

    v11 = skip_utf8(v6, v10, v5, 0, -1);
    if (v11 < 0)
    {
      return 0;
    }

    *(a1 + 8) = v11;
    if (in_grouping_b_U(a1, &g_vowel_0, 97, 305, 0))
    {
      return 0;
    }

    v12 = *(a1 + 12) + v9;
LABEL_16:
    *(a1 + 8) = v12;
    return 1;
  }

  return result;
}

uint64_t r_mark_ndA(uint64_t a1)
{
  result = r_check_vowel_harmony(a1);
  if (result)
  {
    v3 = *(a1 + 8);
    return v3 - 2 > *(a1 + 16) && (*(*a1 + v3 - 1) | 4) == 0x65 && find_among_b(a1, &a_7_9, 2) != 0;
  }

  return result;
}

uint64_t r_mark_nU(uint64_t a1)
{
  result = r_check_vowel_harmony(a1);
  if (result)
  {
    return find_among_b(a1, &a_2_18, 4) != 0;
  }

  return result;
}

uint64_t r_mark_DAn(uint64_t a1)
{
  result = r_check_vowel_harmony(a1);
  if (result)
  {
    v3 = *(a1 + 8);
    return v3 - 2 > *(a1 + 16) && *(*a1 + v3 - 1) == 110 && find_among_b(a1, &a_8_7, 4) != 0;
  }

  return result;
}

uint64_t r_mark_nUn(uint64_t a1)
{
  if (!r_check_vowel_harmony(a1))
  {
    return 0;
  }

  v2 = *(a1 + 8) - 1;
  if (v2 <= *(a1 + 16) || *(*a1 + v2) != 110 || !find_among_b(a1, &a_3_15, 4))
  {
    return 0;
  }

  return r_mark_suffix_with_optional_n_consonant(a1);
}

uint64_t r_mark_ylA(uint64_t a1)
{
  if (!r_check_vowel_harmony(a1))
  {
    return 0;
  }

  v2 = *(a1 + 8) - 1;
  if (v2 <= *(a1 + 16) || (*(*a1 + v2) | 4) != 0x65 || !find_among_b(a1, &a_10_3, 2))
  {
    return 0;
  }

  return r_mark_suffix_with_optional_y_consonant(a1);
}

uint64_t r_mark_DA(uint64_t a1)
{
  result = r_check_vowel_harmony(a1);
  if (result)
  {
    v3 = *(a1 + 8) - 1;
    return v3 > *(a1 + 16) && (*(*a1 + v3) | 4) == 0x65 && find_among_b(a1, &a_6_8, 4) != 0;
  }

  return result;
}

uint64_t r_mark_yU(uint64_t a1)
{
  if (!r_check_vowel_harmony(a1) || in_grouping_b_U(a1, &g_U, 105, 305, 0))
  {
    return 0;
  }

  return r_mark_suffix_with_optional_y_consonant(a1);
}

uint64_t r_mark_yA(uint64_t a1)
{
  if (!r_check_vowel_harmony(a1))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 <= *(a1 + 16) || (*(*a1 + v2 - 1) | 4) != 0x65 || !find_among_b(a1, &a_4_13, 2))
  {
    return 0;
  }

  return r_mark_suffix_with_optional_y_consonant(a1);
}

uint64_t r_mark_suffix_with_optional_n_consonant(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 8);
  v4 = v2;
  v5 = *(a1 + 16);
  v6 = *a1;
  if (v3 > v5 && *(v6 + v3 - 1) == 110)
  {
    *(a1 + 8) = v3 - 1;
    v7 = in_grouping_b_U(a1, &g_vowel_0, 97, 305, 0);
    v4 = *(a1 + 12);
    if (!v7)
    {
      v12 = v3 - 1 - v2 + v4;
      goto LABEL_12;
    }

    v5 = *(a1 + 16);
    v6 = *a1;
  }

  v8 = v3 - v2;
  v9 = (v4 + v8);
  *(a1 + 8) = v9;
  if (v9 > v5 && *(v6 + v9 - 1) == 110)
  {
    return 0;
  }

  v10 = skip_utf8(v6, v9, v5, 0, -1);
  if (v10 < 0)
  {
    return 0;
  }

  *(a1 + 8) = v10;
  if (in_grouping_b_U(a1, &g_vowel_0, 97, 305, 0))
  {
    return 0;
  }

  v12 = *(a1 + 12) + v8;
LABEL_12:
  *(a1 + 8) = v12;
  return 1;
}

uint64_t english_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 8);
  *(a1 + 20) = v3;
  if (v3 + 2 < v2)
  {
    v4 = *(*a1 + v3 + 2);
    if (v4 & 0xE0) == 0x60 && ((0x28C5212u >> v4))
    {
      among = find_among(a1, &a_10_4, 18);
      v2 = *(a1 + 12);
      if (among)
      {
        v6 = *(a1 + 8);
        *(a1 + 24) = v6;
        if (v6 >= v2)
        {
          if (among <= 5)
          {
            if (among <= 2)
            {
              if (among == 1)
              {
                v32 = &s_27_10;
              }

              else
              {
                if (among != 2)
                {
                  return 1;
                }

                v32 = &s_28_7;
              }
            }

            else if (among == 3)
            {
              v32 = &s_29_5;
            }

            else if (among == 4)
            {
              v32 = &s_30_13;
            }

            else
            {
              v32 = &s_31_5;
            }
          }

          else
          {
            if (among > 8)
            {
              switch(among)
              {
                case 9:
                  v32 = &s_35_5;
                  break;
                case 10:
                  v32 = &s_36_11;
                  goto LABEL_106;
                case 11:
                  v32 = &s_37_6;
                  break;
                default:
                  return 1;
              }

              goto LABEL_111;
            }

            if (among != 6)
            {
              if (among != 7)
              {
                v32 = &s_34_18;
LABEL_106:
                v56 = a1;
                v57 = 4;
                goto LABEL_112;
              }

              v32 = &s_33_5;
LABEL_111:
              v56 = a1;
              v57 = 5;
LABEL_112:
              result = slice_from_s(v56, v57, v32);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              return 1;
            }

            v32 = &s_32_11;
          }

          v56 = a1;
          v57 = 3;
          goto LABEL_112;
        }
      }
    }
  }

  *(a1 + 8) = v3;
  v7 = skip_utf8(*a1, v3, 0, v2, 3);
  if (v7 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  *(a1 + 8) = v8;
  if (v7 < 0)
  {
    return 1;
  }

  *(a1 + 8) = v3;
  **(a1 + 48) = 0;
  v10 = *(a1 + 8);
  v9 = *(a1 + 12);
  *(a1 + 20) = v10;
  if (v10 != v9)
  {
    if (*(*a1 + v10) == 39)
    {
      *(a1 + 8) = v10 + 1;
      *(a1 + 24) = v10 + 1;
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v9 = *(a1 + 12);
    }

    *(a1 + 8) = v10;
    *(a1 + 20) = v10;
    if (v10 != v9 && *(*a1 + v10) == 121)
    {
      *(a1 + 8) = v10 + 1;
      *(a1 + 24) = v10 + 1;
      result = slice_from_s(a1, 1, &s_0_150);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      **(a1 + 48) = 1;
    }
  }

  *(a1 + 8) = v10;
  v12 = v10;
  while (1)
  {
    while (1)
    {
      if (in_grouping_U(a1, &g_v_14, 97, 121, 0))
      {
        v13 = *a1;
        v14 = *(a1 + 12);
        break;
      }

      v15 = *(a1 + 8);
      v14 = *(a1 + 12);
      *(a1 + 20) = v15;
      v13 = *a1;
      if (v15 == v14)
      {
        v14 = v15;
        break;
      }

      if (*(v13 + v15) != 121)
      {
        break;
      }

      *(a1 + 24) = v15 + 1;
      *(a1 + 8) = v12;
      result = slice_from_s(a1, 1, &s_1_297);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      **(a1 + 48) = 1;
      v12 = *(a1 + 8);
    }

    *(a1 + 8) = v12;
    v16 = skip_utf8(v13, v12, 0, v14, 1);
    if ((v16 & 0x80000000) != 0)
    {
      break;
    }

    v12 = v16;
    *(a1 + 8) = v16;
  }

  *(a1 + 8) = v10;
  v17 = *(a1 + 12);
  v18 = *(a1 + 40);
  *v18 = v17;
  v18[1] = v17;
  v19 = *(a1 + 8);
  if (v19 + 4 < *(a1 + 12))
  {
    v20 = *(*a1 + v19 + 4);
    if ((v20 & 0xE0) == 0x60 && ((0x244000u >> v20) & 1) != 0 && find_among(a1, &a_0_20, 3))
    {
      v21 = *(a1 + 8);
      goto LABEL_36;
    }
  }

  *(a1 + 8) = v19;
  v22 = out_grouping_U(a1, &g_v_14, 97, 121, 1);
  if ((v22 & 0x80000000) == 0)
  {
    *(a1 + 8) += v22;
    v23 = in_grouping_U(a1, &g_v_14, 97, 121, 1);
    if ((v23 & 0x80000000) == 0)
    {
      v21 = *(a1 + 8) + v23;
      *(a1 + 8) = v21;
LABEL_36:
      **(a1 + 40) = v21;
      v24 = out_grouping_U(a1, &g_v_14, 97, 121, 1);
      if ((v24 & 0x80000000) == 0)
      {
        *(a1 + 8) += v24;
        v25 = in_grouping_U(a1, &g_v_14, 97, 121, 1);
        if ((v25 & 0x80000000) == 0)
        {
          *(*(a1 + 40) + 4) = *(a1 + 8) + v25;
        }
      }
    }
  }

  *(a1 + 16) = v19;
  v26 = *(a1 + 12);
  *(a1 + 8) = v26;
  *(a1 + 24) = v26;
  if (v26 <= v19 || (v27 = *(*a1 + v26 - 1), v27 != 115) && v27 != 39)
  {
LABEL_46:
    *(a1 + 24) = v26;
    if (v26 > *(a1 + 16))
    {
      v28 = *(*a1 + v26 - 1);
      if (v28 == 115 || v28 == 100)
      {
        among_b = find_among_b(a1, &a_2_19, 6);
        if (among_b)
        {
          v30 = *(a1 + 8);
          *(a1 + 20) = v30;
          switch(among_b)
          {
            case 3:
              v37 = skip_utf8(*a1, v30, *(a1 + 16), 0, -1);
              if ((v37 & 0x80000000) == 0)
              {
                *(a1 + 8) = v37;
                v38 = out_grouping_b_U(a1, &g_v_14, 97, 121, 1);
                if ((v38 & 0x80000000) == 0)
                {
                  *(a1 + 8) -= v38;
                  result = slice_del(a1);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }
              }

              break;
            case 2:
              v33 = *(a1 + 12);
              v34 = skip_utf8(*a1, v30, *(a1 + 16), v33, -2);
              if ((v34 & 0x80000000) == 0)
              {
                *(a1 + 8) = v34;
                v31 = &s_3_104;
                v35 = a1;
                v36 = 1;
                goto LABEL_75;
              }

              *(a1 + 8) = v30 - v33 + *(a1 + 12);
              v31 = &s_4_105;
LABEL_74:
              v35 = a1;
              v36 = 2;
LABEL_75:
              result = slice_from_s(v35, v36, v31);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              break;
            case 1:
              v31 = &s_2_59;
              goto LABEL_74;
          }
        }
      }
    }

    v39 = *(a1 + 16);
    v40 = *(a1 + 12);
    *(a1 + 8) = v40;
    *(a1 + 24) = v40;
    if (v40 - 5 > v39)
    {
      v41 = *(*a1 + v40 - 1);
      if (v41 == 103 || v41 == 100)
      {
        v42 = find_among_b(a1, &a_9_6, 8);
        v39 = *(a1 + 16);
        if (v42)
        {
          v43 = *(a1 + 8);
          *(a1 + 20) = v43;
          if (v43 <= v39)
          {
LABEL_128:
            *(a1 + 8) = v39;
            if (**(a1 + 48))
            {
              do
              {
                v61 = *(a1 + 8);
                while (1)
                {
                  *(a1 + 20) = v61;
                  v62 = *(a1 + 12);
                  v63 = *a1;
                  if (v61 != v62 && *(v63 + v61) == 89)
                  {
                    break;
                  }

                  v64 = skip_utf8(v63, v61, 0, v62, 1);
                  if ((v64 & 0x80000000) != 0)
                  {
                    goto LABEL_136;
                  }

                  v61 = v64;
                  *(a1 + 8) = v64;
                }

                *(a1 + 24) = v61 + 1;
                *(a1 + 8) = v61;
                result = slice_from_s(a1, 1, &s_38_7);
              }

              while ((result & 0x80000000) == 0);
              return result;
            }

LABEL_136:
            *(a1 + 8) = v39;
            return 1;
          }
        }
      }
    }

    v44 = *(a1 + 12);
    *(a1 + 8) = v44;
    *(a1 + 24) = v44;
    v45 = v44 - 1;
    if (v45 > v39)
    {
      v46 = *(*a1 + v45);
      if (v46 & 0xE0) == 0x60 && ((0x2000090u >> v46))
      {
        v47 = find_among_b(a1, &a_4_14, 6);
        if (v47)
        {
          v48 = *(a1 + 8);
          *(a1 + 20) = v48;
          if (v47 != 2)
          {
            if (v47 == 1 && **(a1 + 40) <= v48)
            {
              result = slice_from_s(a1, 2, &s_5_59);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            goto LABEL_122;
          }

          v49 = *(a1 + 12);
          if ((out_grouping_b_U(a1, &g_v_14, 97, 121, 1) & 0x80000000) == 0)
          {
            *(a1 + 8) = v48 - v49 + *(a1 + 12);
            result = slice_del(a1);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v50 = *(a1 + 12);
            v51 = *(a1 + 8);
            if (v51 - 1 <= *(a1 + 16) || (v52 = *(*a1 + v51 - 1), (v52 & 0xE0) != 0x60) || ((0x41570D4u >> v52) & 1) == 0)
            {
LABEL_95:
              if (v51 == **(a1 + 40) && r_shortv_0(a1))
              {
                v53 = v51 - v50;
                v54 = *(a1 + 12);
                v55 = v54 + v51 - v50;
                *(a1 + 8) = v55;
                result = insert_s(a1, v54 + v53, v54 + v53, 1, &s_7_95);
                *(a1 + 8) = v55;
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              goto LABEL_122;
            }

            v58 = find_among_b(a1, &a_3_16, 13);
            if (v58)
            {
              v59 = v51 - v50;
              v50 = *(a1 + 12);
              LODWORD(v51) = v50 + v59;
              *(a1 + 8) = v50 + v59;
              if (v58 != 3)
              {
                if (v58 == 2)
                {
                  *(a1 + 24) = v51;
                  v60 = skip_utf8(*a1, (v50 + v59), *(a1 + 16), 0, -1);
                  if ((v60 & 0x80000000) == 0)
                  {
                    *(a1 + 8) = v60;
                    *(a1 + 20) = v60;
                    result = slice_del(a1);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }
                  }
                }

                else if (v58 == 1)
                {
                  result = insert_s(a1, v50 + v59, v50 + v59, 1, &s_6_134);
                  *(a1 + 8) = v51;
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }

                goto LABEL_122;
              }

              goto LABEL_95;
            }
          }
        }
      }
    }

LABEL_122:
    *(a1 + 8) = *(a1 + 12);
    result = r_Step_1c(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *(a1 + 8) = *(a1 + 12);
    result = r_Step_2(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *(a1 + 8) = *(a1 + 12);
    result = r_Step_3_0(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *(a1 + 8) = *(a1 + 12);
    result = r_Step_4_0(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *(a1 + 8) = *(a1 + 12);
    result = r_Step_5(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v39 = *(a1 + 16);
    goto LABEL_128;
  }

  if (!find_among_b(a1, &a_1_20, 3))
  {
    v26 = *(a1 + 12);
    *(a1 + 8) = v26;
    goto LABEL_46;
  }

  *(a1 + 20) = *(a1 + 8);
  result = slice_del(a1);
  if ((result & 0x80000000) == 0)
  {
    v26 = *(a1 + 8);
    goto LABEL_46;
  }

  return result;
}

uint64_t r_Step_1c(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 <= *(a1 + 16))
  {
    return 0;
  }

  if ((*(*a1 + v1 - 1) | 0x20) != 0x79)
  {
    return 0;
  }

  v3 = v1 - 1;
  *(a1 + 8) = v3;
  *(a1 + 20) = v3;
  if (out_grouping_b_U(a1, &g_v_14, 97, 121, 0) || *(a1 + 8) <= *(a1 + 16))
  {
    return 0;
  }

  v4 = slice_from_s(a1, 1, &s_8_110);
  if (v4 >= 0)
  {
    return 1;
  }

  else
  {
    return v4 & (v4 >> 31);
  }
}

uint64_t r_Step_2(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  v2 = v1 - 1;
  if (v2 <= *(a1 + 16))
  {
    return 0;
  }

  v4 = *(*a1 + v2);
  if ((v4 & 0xE0) != 0x60 || ((0xC7200u >> v4) & 1) == 0)
  {
    return 0;
  }

  result = find_among_b(a1, &a_5_13, 24);
  if (!result)
  {
    return result;
  }

  v6 = *(a1 + 8);
  *(a1 + 20) = v6;
  if (**(a1 + 40) > v6)
  {
    return 0;
  }

  switch(result)
  {
    case 1:
      v7 = &s_9_23;
      goto LABEL_27;
    case 2:
      v7 = &s_10_42;
      goto LABEL_27;
    case 3:
      v7 = &s_11_52;
      goto LABEL_27;
    case 4:
      v7 = &s_12_18;
      goto LABEL_27;
    case 5:
      v7 = &s_13_44;
      goto LABEL_31;
    case 6:
      v7 = &s_14_20;
      goto LABEL_31;
    case 7:
      v7 = &s_15_13;
      goto LABEL_31;
    case 8:
      v7 = &s_16_13;
      goto LABEL_23;
    case 9:
      v7 = &s_17_18;
      goto LABEL_31;
    case 10:
      v7 = &s_18_11;
      goto LABEL_31;
    case 11:
      v7 = &s_19_9;
      goto LABEL_31;
    case 12:
      v7 = &s_20_32;
LABEL_31:
      v8 = a1;
      v9 = 3;
      goto LABEL_32;
    case 13:
      if (v6 <= *(a1 + 16) || *(*a1 + v6 - 1) != 108)
      {
        return 0;
      }

      *(a1 + 8) = v6 - 1;
      v7 = &s_21_37;
LABEL_23:
      v8 = a1;
      v9 = 2;
      goto LABEL_32;
    case 14:
      v7 = &s_22_19;
LABEL_27:
      v8 = a1;
      v9 = 4;
LABEL_32:
      result = slice_from_s(v8, v9, v7);
      if ((result & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      return result;
    case 15:
      if (in_grouping_b_U(a1, &g_valid_LI, 99, 116, 0))
      {
        return 0;
      }

      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_33;
    default:
LABEL_33:
      result = 1;
      break;
  }

  return result;
}

uint64_t r_Step_3_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 2 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if ((v3 & 0xE0) != 0x60 || ((0x81220u >> v3) & 1) == 0)
  {
    return 0;
  }

  result = find_among_b(a1, &a_6_9, 9);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 8);
  *(a1 + 20) = v5;
  v6 = *(a1 + 40);
  if (*v6 > v5)
  {
    return 0;
  }

  if (result > 3)
  {
    if (result == 4)
    {
      v7 = &s_26_6;
      goto LABEL_22;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return 1;
      }

      if (v6[1] > v5)
      {
        return 0;
      }
    }

    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    return 1;
  }

  if (result == 1)
  {
    v7 = &s_23_15;
    v8 = a1;
    v9 = 4;
    goto LABEL_24;
  }

  if (result != 2)
  {
    if (result == 3)
    {
      v7 = &s_25_8;
LABEL_22:
      v8 = a1;
      v9 = 2;
      goto LABEL_24;
    }

    return 1;
  }

  v7 = &s_24_10;
  v8 = a1;
  v9 = 3;
LABEL_24:
  result = slice_from_s(v8, v9, v7);
  if ((result & 0x80000000) == 0)
  {
    return 1;
  }

  return result;
}

uint64_t r_Step_4_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  v2 = v1 - 1;
  if (v2 <= *(a1 + 16))
  {
    return 0;
  }

  v4 = *(*a1 + v2);
  if ((v4 & 0xE0) != 0x60 || ((0x1C7228u >> v4) & 1) == 0)
  {
    return 0;
  }

  result = find_among_b(a1, &a_7_10, 18);
  if (!result)
  {
    return result;
  }

  v6 = *(a1 + 8);
  *(a1 + 20) = v6;
  if (*(*(a1 + 40) + 4) > v6)
  {
    return 0;
  }

  if (result == 2)
  {
    if (v6 <= *(a1 + 16) || *(*a1 + v6 - 1) - 115 > 1)
    {
      return 0;
    }

    *(a1 + 8) = v6 - 1;
  }

  else if (result != 1)
  {
    return 1;
  }

  result = slice_del(a1);
  if ((result & 0x80000000) == 0)
  {
    return 1;
  }

  return result;
}

uint64_t r_Step_5(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if (v3 == 108 || v3 == 101)
  {
    result = find_among_b(a1, &a_8_8, 2);
    if (!result)
    {
      return result;
    }

    v5 = *(a1 + 8);
    *(a1 + 20) = v5;
    if (result == 2)
    {
      if (*(*(a1 + 40) + 4) <= v5 && v5 > *(a1 + 16) && *(*a1 + v5 - 1) == 108)
      {
        v8 = v5 - 1;
        goto LABEL_16;
      }
    }

    else
    {
      if (result != 1)
      {
        return 1;
      }

      v6 = *(a1 + 40);
      if (v6[1] <= v5)
      {
LABEL_17:
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        return 1;
      }

      if (*v6 <= v5)
      {
        v7 = *(a1 + 12);
        if (!r_shortv_0(a1))
        {
          v8 = v5 - v7 + *(a1 + 12);
LABEL_16:
          *(a1 + 8) = v8;
          goto LABEL_17;
        }
      }
    }
  }

  return 0;
}

BOOL r_shortv_0(_DWORD *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  if (!out_grouping_b_U(a1, &g_v_WXY_0, 89, 121, 0) && !in_grouping_b_U(a1, &g_v_14, 97, 121, 0) && !out_grouping_b_U(a1, &g_v_14, 97, 121, 0))
  {
    return 1;
  }

  a1[2] = v3 - v2 + a1[3];
  return !out_grouping_b_U(a1, &g_v_14, 97, 121, 0) && !in_grouping_b_U(a1, &g_v_14, 97, 121, 0) && a1[2] <= a1[4];
}

uint64_t catalan_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 40);
  *v3 = v2;
  v3[1] = v2;
  v4 = *(a1 + 8);
  v5 = out_grouping_U(a1, &g_v_15, 97, 252, 1);
  if ((v5 & 0x80000000) == 0)
  {
    *(a1 + 8) += v5;
    v6 = in_grouping_U(a1, &g_v_15, 97, 252, 1);
    if ((v6 & 0x80000000) == 0)
    {
      v7 = *(a1 + 8) + v6;
      *(a1 + 8) = v7;
      **(a1 + 40) = v7;
      v8 = out_grouping_U(a1, &g_v_15, 97, 252, 1);
      if ((v8 & 0x80000000) == 0)
      {
        *(a1 + 8) += v8;
        v9 = in_grouping_U(a1, &g_v_15, 97, 252, 1);
        if ((v9 & 0x80000000) == 0)
        {
          *(*(a1 + 40) + 4) = *(a1 + 8) + v9;
        }
      }
    }
  }

  *(a1 + 16) = v4;
  v10 = *(a1 + 12);
  *(a1 + 8) = v10;
  *(a1 + 24) = v10;
  v11 = v10 - 1;
  if (v11 > v4)
  {
    v12 = *(*a1 + v11);
    if (v12 & 0xE0) == 0x60 && ((0x18F222u >> v12))
    {
      if (find_among_b(a1, &a_1_21, 39))
      {
        v13 = *(a1 + 8);
        *(a1 + 20) = v13;
        if (**(a1 + 40) <= v13)
        {
          result = slice_del(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }
    }
  }

  v15 = *(a1 + 12);
  *(a1 + 8) = v15;
  *(a1 + 24) = v15;
  among_b = find_among_b(a1, &a_2_20, 200);
  if (!among_b)
  {
    goto LABEL_30;
  }

  v17 = *(a1 + 8);
  *(a1 + 20) = v17;
  if (among_b <= 2)
  {
    if (among_b == 1)
    {
      v21 = **(a1 + 40);
    }

    else
    {
      if (among_b != 2)
      {
        goto LABEL_37;
      }

      v21 = *(*(a1 + 40) + 4);
    }

    if (v21 <= v17)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (among_b == 3)
  {
    if (*(*(a1 + 40) + 4) > v17)
    {
      goto LABEL_30;
    }

    v18 = &s_6_135;
    v19 = a1;
    v20 = 3;
    goto LABEL_26;
  }

  if (among_b == 4)
  {
    if (*(*(a1 + 40) + 4) > v17)
    {
      goto LABEL_30;
    }

    v18 = &s_7_96;
    v19 = a1;
    v20 = 2;
LABEL_26:
    result = slice_from_s(v19, v20, v18);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (among_b != 5)
  {
    goto LABEL_37;
  }

  if (**(a1 + 40) <= v17)
  {
    v18 = &s_8_111;
    v19 = a1;
    v20 = 1;
    goto LABEL_26;
  }

LABEL_30:
  v22 = *(a1 + 12);
  *(a1 + 8) = v22;
  *(a1 + 24) = v22;
  v23 = find_among_b(a1, &a_3_17, 283);
  if (v23)
  {
    v24 = *(a1 + 8);
    *(a1 + 20) = v24;
    if (v23 == 2)
    {
      v25 = *(*(a1 + 40) + 4);
    }

    else
    {
      if (v23 != 1)
      {
        goto LABEL_37;
      }

      v25 = **(a1 + 40);
    }

    if (v25 <= v24)
    {
LABEL_36:
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }
  }

LABEL_37:
  v26 = *(a1 + 12);
  *(a1 + 8) = v26;
  *(a1 + 24) = v26;
  v27 = find_among_b(a1, &a_4_15, 22);
  if (!v27)
  {
    goto LABEL_45;
  }

  v28 = *(a1 + 8);
  *(a1 + 20) = v28;
  if (v27 != 2)
  {
    if (v27 == 1 && **(a1 + 40) <= v28)
    {
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    goto LABEL_45;
  }

  if (**(a1 + 40) > v28 || (result = slice_from_s(a1, 2, &s_9_24), (result & 0x80000000) == 0))
  {
LABEL_45:
    v29 = *(a1 + 12);
    v30 = *(a1 + 16);
    *(a1 + 8) = v30;
    v31 = v30;
    while (1)
    {
      *(a1 + 20) = v31;
      v32 = v31 + 1;
      if (v32 < v29 && (v33 = *(*a1 + v32), (v33 & 0xE0) == 0xA0) && ((0x148CB303u >> v33) & 1) != 0)
      {
        among = find_among(a1, &a_0_21, 13);
        if (!among)
        {
LABEL_71:
          *(a1 + 8) = v30;
          return 1;
        }

        v31 = *(a1 + 8);
        *(a1 + 24) = v31;
        if (among <= 3)
        {
          switch(among)
          {
            case 1:
              v36 = a1;
              v37 = &s_0_151;
              break;
            case 2:
              v36 = a1;
              v37 = &s_1_298;
              break;
            case 3:
              v36 = a1;
              v37 = &s_2_200;
              break;
            default:
              goto LABEL_52;
          }

          goto LABEL_69;
        }

        if (among <= 5)
        {
          if (among == 4)
          {
            v36 = a1;
            v37 = &s_3_283;
          }

          else
          {
            v36 = a1;
            v37 = &s_4_106;
          }

LABEL_69:
          result = slice_from_s(v36, 1, v37);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_52;
        }

        if (among == 6)
        {
          v36 = a1;
          v37 = &s_5_60;
          goto LABEL_69;
        }

        if (among != 7)
        {
          goto LABEL_52;
        }

        v29 = *(a1 + 12);
      }

      else
      {
        *(a1 + 24) = v31;
      }

      v34 = skip_utf8(*a1, v31, 0, v29, 1);
      if (v34 < 0)
      {
        goto LABEL_71;
      }

      *(a1 + 8) = v34;
LABEL_52:
      v31 = *(a1 + 8);
      v29 = *(a1 + 12);
    }
  }

  return result;
}

uint64_t lithuanian_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 12);
  **(a1 + 40) = v2;
  v3 = *(a1 + 8);
  if (v3 != v2)
  {
    v4 = *a1;
    if (*(*a1 + v3) == 97)
    {
      v5 = len_utf8(v4);
      v6 = v3;
      if (v5 >= 7)
      {
        v7 = skip_utf8(*a1, *(a1 + 8), 0, *(a1 + 12), 1);
        if (v7 >= 0)
        {
          v6 = v7;
        }

        else
        {
          v6 = v3;
        }
      }

      *(a1 + 8) = v6;
    }
  }

  v8 = out_grouping_U(a1, &g_v_16, 97, 371, 1);
  if ((v8 & 0x80000000) == 0)
  {
    *(a1 + 8) += v8;
    v9 = in_grouping_U(a1, &g_v_16, 97, 371, 1);
    if ((v9 & 0x80000000) == 0)
    {
      **(a1 + 40) = *(a1 + 8) + v9;
    }
  }

  *(a1 + 16) = v3;
  v10 = *(a1 + 12);
  *(a1 + 8) = v10;
  *(a1 + 24) = v10;
  if (v10 - 3 <= v3)
  {
    goto LABEL_36;
  }

  v11 = *(*a1 + v10 - 1);
  if ((v11 & 0xE0) != 0x60)
  {
    goto LABEL_36;
  }

  if (((0x280020u >> v11) & 1) == 0)
  {
    goto LABEL_36;
  }

  among_b = find_among_b(a1, &a_2_21, 11);
  if (!among_b)
  {
    goto LABEL_36;
  }

  *(a1 + 20) = *(a1 + 8);
  if (among_b > 4)
  {
    if (among_b > 6)
    {
      if (among_b == 7)
      {
        v13 = &s_6_136;
      }

      else
      {
        if (among_b != 8)
        {
          goto LABEL_36;
        }

        v13 = &s_7_97;
      }
    }

    else
    {
      if (among_b == 5)
      {
        v13 = &s_4_107;
        goto LABEL_31;
      }

      v13 = &s_5_61;
    }

    v14 = a1;
    v15 = 6;
  }

  else
  {
    if (among_b <= 2)
    {
      if (among_b == 1)
      {
        v13 = &s_0_152;
      }

      else
      {
        if (among_b != 2)
        {
          goto LABEL_36;
        }

        v13 = &s_1_299;
      }

      v14 = a1;
      v15 = 5;
      goto LABEL_35;
    }

    if (among_b != 3)
    {
      v13 = &s_3_284;
LABEL_31:
      v14 = a1;
      v15 = 4;
      goto LABEL_35;
    }

    v13 = &s_2_201;
    v14 = a1;
    v15 = 7;
  }

LABEL_35:
  result = slice_from_s(v14, v15, v13);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

LABEL_36:
  v17 = *(a1 + 12);
  *(a1 + 8) = v17;
  v18 = **(a1 + 40);
  if (v17 >= v18)
  {
    v19 = *(a1 + 16);
    *(a1 + 16) = v18;
    *(a1 + 24) = v17;
    if (find_among_b(a1, &a_0_22, 204))
    {
      v20 = *(a1 + 8);
      *(a1 + 16) = v19;
      *(a1 + 20) = v20;
      if (**(a1 + 40) <= v20)
      {
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    else
    {
      *(a1 + 16) = v19;
    }
  }

  *(a1 + 8) = *(a1 + 12);
  result = r_fix_chdz(a1);
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 8) = *(a1 + 12);
    while (1)
    {
      v21 = *(a1 + 8);
      v22 = **(a1 + 40);
      if (v21 < v22)
      {
        break;
      }

      v23 = *(a1 + 16);
      *(a1 + 16) = v22;
      *(a1 + 24) = v21;
      if (!find_among_b(a1, &a_1_22, 62))
      {
        *(a1 + 16) = v23;
        break;
      }

      v24 = *(a1 + 8);
      *(a1 + 16) = v23;
      *(a1 + 20) = v24;
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    *(a1 + 8) = *(a1 + 12);
    result = r_fix_chdz(a1);
    if ((result & 0x80000000) == 0)
    {
      v25 = *(a1 + 16);
      v26 = *(a1 + 12);
      *(a1 + 8) = v26;
      *(a1 + 24) = v26;
      v27 = v26 - 1;
      if (v27 <= v25 || *(*a1 + v27) != 100 || !find_among_b(a1, &a_4_16, 1) || (*(a1 + 20) = *(a1 + 8), result = slice_from_s(a1, 1, &s_10_43), (result & 0x80000000) == 0))
      {
        *(a1 + 8) = *(a1 + 16);
        return 1;
      }
    }
  }

  return result;
}

uint64_t r_fix_chdz(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  v2 = v1 - 1;
  if (v2 <= *(a1 + 16))
  {
    return 0;
  }

  v4 = *(*a1 + v2);
  if (v4 != 190 && v4 != 141)
  {
    return 0;
  }

  result = find_among_b(a1, &a_3_18, 2);
  if (!result)
  {
    return result;
  }

  *(a1 + 20) = *(a1 + 8);
  if (result == 2)
  {
    v6 = &s_9_25;
LABEL_11:
    result = slice_from_s(a1, 1, v6);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    return 1;
  }

  if (result == 1)
  {
    v6 = &s_8_112;
    goto LABEL_11;
  }

  return 1;
}

uint64_t swedish_UTF_8_stem(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  **(a1 + 40) = v2;
  v4 = *(a1 + 8);
  v5 = skip_utf8(*a1, v4, 0, v2, 3);
  if ((v5 & 0x80000000) == 0)
  {
    *(*(a1 + 40) + 4) = v5;
    *(a1 + 8) = v4;
    if ((out_grouping_U(a1, &g_v_17, 97, 246, 1) & 0x80000000) == 0)
    {
      v6 = in_grouping_U(a1, &g_v_17, 97, 246, 1);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(a1 + 8) + v6;
        *(a1 + 8) = v7;
        v8 = *(a1 + 40);
        if (v7 <= v8[1])
        {
          v7 = v8[1];
        }

        *v8 = v7;
      }
    }
  }

  *(a1 + 16) = v3;
  v9 = *(a1 + 12);
  *(a1 + 8) = v9;
  v10 = **(a1 + 40);
  if (v9 >= v10)
  {
    *(a1 + 16) = v10;
    *(a1 + 24) = v9;
    if (v9 <= v10 || (v11 = *(*a1 + v9 - 1), (v11 & 0xE0) != 0x60) || ((0x1C4032u >> v11) & 1) == 0 || (among_b = find_among_b(a1, &a_0_23, 37)) == 0)
    {
      *(a1 + 16) = v3;
      goto LABEL_16;
    }

    v13 = *(a1 + 8);
    *(a1 + 16) = v3;
    *(a1 + 20) = v13;
    if (among_b == 2)
    {
      if (in_grouping_b_U(a1, &g_s_ending_2, 98, 121, 0))
      {
        goto LABEL_16;
      }
    }

    else if (among_b != 1)
    {
      goto LABEL_16;
    }

    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

LABEL_16:
  v14 = *(a1 + 12);
  v15 = *(a1 + 16);
  *(a1 + 8) = v14;
  v16 = *(a1 + 40);
  v17 = *v16;
  if (v14 < *v16)
  {
    goto LABEL_24;
  }

  *(a1 + 16) = v17;
  v18 = v14 - 1;
  if (v18 <= v17 || (v19 = *(*a1 + v18), (v19 & 0xE0) != 0x60) || ((0x104010u >> v19) & 1) == 0 || !find_among_b(a1, &a_1_23, 7) || (v20 = *(a1 + 12), v21 = *(a1 + 16), *(a1 + 8) = v20, *(a1 + 24) = v20, v22 = skip_utf8(*a1, v20, v21, 0, -1), v22 < 0) || (*(a1 + 8) = v22, *(a1 + 20) = v22, result = slice_del(a1), (result & 0x80000000) == 0))
  {
    *(a1 + 16) = v15;
    v14 = *(a1 + 12);
    v16 = *(a1 + 40);
LABEL_24:
    *(a1 + 8) = v14;
    v24 = *v16;
    if (v14 < v24)
    {
LABEL_41:
      *(a1 + 8) = v15;
      return 1;
    }

    *(a1 + 16) = v24;
    *(a1 + 24) = v14;
    v25 = v14 - 1;
    if (v25 > v24)
    {
      v26 = *(*a1 + v25);
      if (v26 & 0xE0) == 0x60 && ((0x180080u >> v26))
      {
        v27 = find_among_b(a1, &a_2_22, 5);
        if (v27)
        {
          *(a1 + 20) = *(a1 + 8);
          if (v27 == 3)
          {
            v28 = &s_1_300;
          }

          else
          {
            if (v27 != 2)
            {
              if (v27 == 1)
              {
                result = slice_del(a1);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              goto LABEL_40;
            }

            v28 = &s_0_204;
          }

          result = slice_from_s(a1, 4, v28);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }
    }

LABEL_40:
    *(a1 + 16) = v15;
    goto LABEL_41;
  }

  return result;
}

void CEM::AdaptationDatabaseController::getSharedAdaptationDatabaseCache()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    unk_1ED6F39B0 = 0u;
    unk_1ED6F39A0 = 0u;
    dword_1ED6F39C0 = 1065353216;

    __cxa_guard_release(&_MergedGlobals);
  }
}

void std::__function::__func<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::operator()()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1AF04E000, v0, v1, "Could not extract uint32_t from std::variant<T> column value map. enumerateStringAndStringId(...);", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1AF04E000, v0, v1, "Could not extract std::string from std::variant<T> column value map. enumerateStringAndStringId(...);", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1();
}

{
  OUTLINED_FUNCTION_1();
}

void log_emoji_string_lookup_error_cold_1()
{
  CEMEmojiLocaleDataGetLocaleIdentifier();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1AF04E000, v0, v1, "Could not get an emoji string for document ID '%{public}d' and for locale: '%{public}@'", v2, v3, v4, v5, v6);
}

void log_emoji_token_creation_error_cold_1()
{
  CEMEmojiLocaleDataGetLocaleIdentifier();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1AF04E000, v0, v1, "Could not create an emoji using document ID '%{public}d' and for locale: '%{public}@'", v2, v3, v4, v5, v6);
}

void CEM::Statement::prepare(uint64_t a1, sqlite3 **a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v4 = *v4;
  }

  v5 = sqlite3_errmsg(*a2);
  v6 = 136315394;
  v7 = v4;
  v8 = 2082;
  v9 = v5;
  _os_log_error_impl(&dword_1AF04E000, a3, OS_LOG_TYPE_ERROR, "Could not prepare SQL statement: '%s'. Error: '%{public}s'", &v6, 0x16u);
}

void CEM::Statement::bindParameters(int a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 32);
  if (*(a2 + 55) < 0)
  {
    v5 = *v5;
  }

  v6 = sqlite3_errmsg(*(a2 + 96));
  v7[0] = 67109634;
  v7[1] = a1;
  v8 = 2082;
  v9 = v5;
  v10 = 2082;
  v11 = v6;
  _os_log_error_impl(&dword_1AF04E000, a3, OS_LOG_TYPE_ERROR, "Could not bind argument (%d) for query '%{public}s'. Error: '%{public}s'", v7, 0x1Cu);
}

void CEM::AdaptationDatabase::AdaptationDatabase(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = a1;
  *(buf + 6) = 2082;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1AF04E000, log, OS_LOG_TYPE_ERROR, "Could not open database: '%{public}s'; Error: '%{public}s'", buf, 0x16u);
}

void CEM::AdaptationDatabase::AdaptationDatabase(char *a1, void *a2, os_log_t log)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  _os_log_debug_impl(&dword_1AF04E000, log, OS_LOG_TYPE_DEBUG, "Opened database connection successfully: '%s'", &v3, 0xCu);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x1EEDBF300](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
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

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}