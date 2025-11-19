uint64_t r_step5i(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  result = find_among_b(a1, &a_62, 3);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v4 = *(a1 + 8);
      v3 = *(a1 + 12);
      *(a1 + 20) = v4;
      *(a1 + 24) = v4;
      if (eq_s_b(a1, 8, &s_98))
      {
        LODWORD(result) = slice_from_s(a1, 4, &s_99);
        if (result >= 0)
        {
          return 1;
        }

        else
        {
          return result;
        }
      }

      else
      {
        v5 = v4 - v3;
        v6 = *(a1 + 16);
        v7 = *(a1 + 12) + v5;
        *(a1 + 8) = v7;
        *(a1 + 24) = v7;
        if (v7 - 5 > v6 && (*(*a1 + v7 - 1) & 0xFE) == 0x86)
        {
          if (find_among_b(a1, &a_59, 2))
          {
            result = 0;
            *(a1 + 20) = *(a1 + 8);
            return result;
          }

          v7 = *(a1 + 12) + v5;
        }

        *(a1 + 8) = v7;
        *(a1 + 20) = v7;
        *(a1 + 24) = v7;
        if (find_among_b(a1, &a_60, 10))
        {
          v8 = &s_100;
        }

        else
        {
          v9 = *(a1 + 12) + v5;
          *(a1 + 8) = v9;
          *(a1 + 20) = v9;
          *(a1 + 24) = v9;
          result = find_among_b(a1, &a_61, 44);
          if (!result)
          {
            return result;
          }

          if (*(a1 + 8) > *(a1 + 16))
          {
            return 0;
          }

          v8 = &s_101;
        }

        result = slice_from_s(a1, 4, v8);
        if ((result & 0x80000000) == 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t r_step5k(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 7 <= *(a1 + 16))
  {
    return 0;
  }

  if (*(*a1 + v1 - 1) != 181)
  {
    return 0;
  }

  result = find_among_b(a1, &a_65, 1);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v4 = *(a1 + 8);
      *(a1 + 20) = v4;
      *(a1 + 24) = v4;
      result = find_among_b(a1, &a_66, 10);
      if (result)
      {
        if (*(a1 + 8) > *(a1 + 16))
        {
          return 0;
        }

        LODWORD(result) = slice_from_s(a1, 6, &s_103);
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
  }

  return result;
}

uint64_t r_step5l(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 7 <= *(a1 + 16))
  {
    return 0;
  }

  if (*(*a1 + v1 - 1) != 181)
  {
    return 0;
  }

  result = find_among_b(a1, &a_67, 3);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v4 = *(a1 + 8);
      *(a1 + 20) = v4;
      *(a1 + 24) = v4;
      result = find_among_b(a1, &a_68, 6);
      if (result)
      {
        if (*(a1 + 8) > *(a1 + 16))
        {
          return 0;
        }

        LODWORD(result) = slice_from_s(a1, 6, &s_104);
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
  }

  return result;
}

uint64_t r_step5m(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 7 <= *(a1 + 16))
  {
    return 0;
  }

  if (*(*a1 + v1 - 1) != 181)
  {
    return 0;
  }

  result = find_among_b(a1, &a_69, 3);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      **(a1 + 48) = 0;
      v4 = *(a1 + 8);
      *(a1 + 20) = v4;
      *(a1 + 24) = v4;
      result = find_among_b(a1, &a_70, 7);
      if (result)
      {
        if (*(a1 + 8) > *(a1 + 16))
        {
          return 0;
        }

        LODWORD(result) = slice_from_s(a1, 6, &s_105);
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
  }

  return result;
}

uint64_t r_step6(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  *(a1 + 24) = v3;
  if (!find_among_b(a1, &a_71, 3) || (*(a1 + 20) = *(a1 + 8), result = slice_from_s(a1, 4, &s_106), (result & 0x80000000) == 0))
  {
    v5 = v3 - v2 + *(a1 + 12);
    *(a1 + 8) = v5;
    if (**(a1 + 48))
    {
      *(a1 + 24) = v5;
      result = find_among_b(a1, &a_72, 84);
      if (result)
      {
        *(a1 + 20) = *(a1 + 8);
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

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t r_step7(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 - 7 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if (v3 != 132 && v3 != 129)
  {
    return 0;
  }

  result = find_among_b(a1, &a_73, 8);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
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

uint64_t spanish_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 40);
  *v3 = v2;
  v3[1] = v2;
  v3[2] = *(a1 + 12);
  v4 = *(a1 + 8);
  if (!in_grouping_U(a1, &g_v_0, 97, 252, 0))
  {
    v5 = *(a1 + 8);
    if (!out_grouping_U(a1, &g_v_0, 97, 252, 0))
    {
      v8 = out_grouping_U(a1, &g_v_0, 97, 252, 1);
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    *(a1 + 8) = v5;
    if (!in_grouping_U(a1, &g_v_0, 97, 252, 0))
    {
      v8 = in_grouping_U(a1, &g_v_0, 97, 252, 1);
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  *(a1 + 8) = v4;
  if (!out_grouping_U(a1, &g_v_0, 97, 252, 0))
  {
    v6 = *(a1 + 8);
    if (!out_grouping_U(a1, &g_v_0, 97, 252, 0))
    {
      v8 = out_grouping_U(a1, &g_v_0, 97, 252, 1);
      if ((v8 & 0x80000000) == 0)
      {
LABEL_14:
        v7 = *(a1 + 8) + v8;
LABEL_15:
        **(a1 + 40) = v7;
        goto LABEL_16;
      }
    }

    *(a1 + 8) = v6;
    if (!in_grouping_U(a1, &g_v_0, 97, 252, 0))
    {
      v7 = skip_utf8(*a1, *(a1 + 8), 0, *(a1 + 12), 1);
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  *(a1 + 8) = v4;
  v9 = out_grouping_U(a1, &g_v_0, 97, 252, 1);
  if ((v9 & 0x80000000) == 0)
  {
    *(a1 + 8) += v9;
    v10 = in_grouping_U(a1, &g_v_0, 97, 252, 1);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = *(a1 + 8) + v10;
      *(a1 + 8) = v11;
      *(*(a1 + 40) + 4) = v11;
      v12 = out_grouping_U(a1, &g_v_0, 97, 252, 1);
      if ((v12 & 0x80000000) == 0)
      {
        *(a1 + 8) += v12;
        v13 = in_grouping_U(a1, &g_v_0, 97, 252, 1);
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
  if (v15 <= v4)
  {
    goto LABEL_50;
  }

  v16 = *(*a1 + v15);
  if ((v16 & 0xE0) != 0x60)
  {
    goto LABEL_50;
  }

  if (((0x88022u >> v16) & 1) == 0)
  {
    goto LABEL_50;
  }

  if (!find_among_b(a1, &a_1_0, 13))
  {
    goto LABEL_50;
  }

  v17 = *(a1 + 8);
  *(a1 + 20) = v17;
  v18 = v17 - 1;
  if (v18 <= *(a1 + 16))
  {
    goto LABEL_50;
  }

  v19 = *(*a1 + v18);
  if (v19 != 114 && v19 != 111)
  {
    goto LABEL_50;
  }

  among_b = find_among_b(a1, &a_2_0, 11);
  if (!among_b)
  {
    goto LABEL_50;
  }

  v21 = *(a1 + 8);
  if (**(a1 + 40) > v21)
  {
    goto LABEL_50;
  }

  if (among_b <= 3)
  {
    if (among_b == 1)
    {
      *(a1 + 20) = v21;
      v22 = &s_5_8;
      v24 = a1;
      v25 = 5;
      goto LABEL_49;
    }

    if (among_b == 2)
    {
      *(a1 + 20) = v21;
      v22 = &s_6_7;
      v24 = a1;
      v25 = 4;
LABEL_49:
      result = slice_from_s(v24, v25, v22);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_50;
    }

    if (among_b != 3)
    {
      goto LABEL_50;
    }

    *(a1 + 20) = v21;
    v22 = &s_7_19;
LABEL_47:
    v24 = a1;
    v25 = 2;
    goto LABEL_49;
  }

  if (among_b <= 5)
  {
    *(a1 + 20) = v21;
    if (among_b == 4)
    {
      v22 = &s_8_13;
    }

    else
    {
      v22 = &s_9_7;
    }

    goto LABEL_47;
  }

  if (among_b != 6)
  {
    if (among_b != 7 || v21 <= *(a1 + 16) || *(*a1 + v21 - 1) != 117)
    {
      goto LABEL_50;
    }

    *(a1 + 8) = v21 - 1;
  }

  result = slice_del(a1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

LABEL_50:
  v26 = *(a1 + 16);
  v27 = *(a1 + 12);
  *(a1 + 8) = v27;
  *(a1 + 24) = v27;
  if (v27 - 2 <= v26)
  {
    goto LABEL_99;
  }

  v28 = *(*a1 + v27 - 1);
  if ((v28 & 0xE0) != 0x60)
  {
    goto LABEL_99;
  }

  if (((0xCC032u >> v28) & 1) == 0)
  {
    goto LABEL_99;
  }

  v29 = find_among_b(a1, &a_6_0, 46);
  if (!v29)
  {
    goto LABEL_99;
  }

  v30 = *(a1 + 8);
  *(a1 + 20) = v30;
  if (v29 > 4)
  {
    if (v29 > 6)
    {
      if (v29 != 7)
      {
        if (v29 != 8)
        {
          if (v29 != 9)
          {
            goto LABEL_128;
          }

          if (*(*(a1 + 40) + 8) <= v30)
          {
            result = slice_del(a1);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            *(a1 + 24) = *(a1 + 8);
            v31 = &s_15_5;
            goto LABEL_68;
          }

          goto LABEL_99;
        }

        if (*(*(a1 + 40) + 8) > v30)
        {
          goto LABEL_99;
        }

        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v72 = *(a1 + 8);
        *(a1 + 24) = v72;
        v73 = v72 - 1;
        if (v73 <= *(a1 + 16))
        {
          goto LABEL_128;
        }

        v74 = *(*a1 + v73);
        if ((v74 & 0xE0) != 0x60 || ((0x401008u >> v74) & 1) == 0)
        {
          goto LABEL_128;
        }

        v43 = &a_5_0;
LABEL_172:
        if (!find_among_b(a1, v43, 3))
        {
          goto LABEL_128;
        }

        goto LABEL_69;
      }

      if (*(*(a1 + 40) + 8) > v30)
      {
        goto LABEL_99;
      }

      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v42 = *(a1 + 8);
      *(a1 + 24) = v42;
      if (v42 - 3 > *(a1 + 16) && *(*a1 + v42 - 1) == 101)
      {
        v43 = &a_4_0;
        goto LABEL_172;
      }

LABEL_128:
      v57 = *(a1 + 12);
      *(a1 + 8) = v57;
      *(a1 + 24) = v57;
      v58 = find_among_b(a1, &a_9_0, 8);
      if (v58)
      {
        v59 = *(a1 + 8);
        *(a1 + 20) = v59;
        if (v58 == 2)
        {
          if (**(a1 + 40) > v59)
          {
            goto LABEL_141;
          }

          result = slice_del(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v60 = *(a1 + 8);
          *(a1 + 24) = v60;
          v61 = *(a1 + 16);
          if (v60 <= v61)
          {
            goto LABEL_141;
          }

          v62 = *a1 + v60;
          if (*(v62 - 1) != 117)
          {
            goto LABEL_141;
          }

          *(a1 + 8) = v60 - 1;
          *(a1 + 20) = v60 - 1;
          if (v60 - 1 <= v61 || *(v62 - 2) != 103 || **(a1 + 40) >= v60)
          {
            goto LABEL_141;
          }

          goto LABEL_132;
        }

        if (v58 == 1 && **(a1 + 40) <= v59)
        {
LABEL_132:
          result = slice_del(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

LABEL_141:
      v63 = *(a1 + 12);
      v64 = *(a1 + 16);
      *(a1 + 8) = v64;
      v65 = v64;
      while (1)
      {
        *(a1 + 20) = v65;
        v66 = v65 + 1;
        if (v66 < v63 && (v67 = *(*a1 + v66), (v67 & 0xE0) == 0xA0) && ((0x4082202u >> v67) & 1) != 0)
        {
          among = find_among(a1, &a_0_0, 6);
          if (!among)
          {
LABEL_165:
            *(a1 + 8) = v64;
            return 1;
          }

          v65 = *(a1 + 8);
          *(a1 + 24) = v65;
          if (among <= 3)
          {
            switch(among)
            {
              case 1:
                v70 = a1;
                v71 = &s_0_0;
                break;
              case 2:
                v70 = a1;
                v71 = &s_1_40;
                break;
              case 3:
                v70 = a1;
                v71 = &s_2_11;
                break;
              default:
                goto LABEL_148;
            }

            goto LABEL_163;
          }

          if (among == 4)
          {
            v70 = a1;
            v71 = &s_3_22;
            goto LABEL_163;
          }

          if (among == 5)
          {
            v70 = a1;
            v71 = &s_4_14;
LABEL_163:
            result = slice_from_s(v70, 1, v71);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            goto LABEL_148;
          }

          if (among != 6)
          {
            goto LABEL_148;
          }

          v63 = *(a1 + 12);
        }

        else
        {
          *(a1 + 24) = v65;
        }

        v68 = skip_utf8(*a1, v65, 0, v63, 1);
        if (v68 < 0)
        {
          goto LABEL_165;
        }

        *(a1 + 8) = v68;
LABEL_148:
        v65 = *(a1 + 8);
        v63 = *(a1 + 12);
      }
    }

    if (v29 != 5)
    {
      if (*(*(a1 + 40) + 4) > v30)
      {
        goto LABEL_99;
      }

      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v36 = *(a1 + 8);
      *(a1 + 24) = v36;
      v37 = v36 - 1;
      if (v37 > *(a1 + 16))
      {
        v38 = *(*a1 + v37);
        if (v38 & 0xE0) == 0x60 && ((0x480018u >> v38))
        {
          v39 = find_among_b(a1, &a_3_0, 4);
          if (v39)
          {
            v40 = *(a1 + 8);
            *(a1 + 20) = v40;
            if (*(*(a1 + 40) + 8) <= v40)
            {
              v41 = v39;
              result = slice_del(a1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v41 == 1)
              {
                *(a1 + 24) = *(a1 + 8);
                v31 = &s_14_11;
                goto LABEL_68;
              }
            }
          }
        }
      }

      goto LABEL_128;
    }

    if (*(*(a1 + 40) + 8) > v30)
    {
      goto LABEL_99;
    }

    v33 = &s_13_33;
    v34 = a1;
    v35 = 4;
LABEL_96:
    result = slice_from_s(v34, v35, v33);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_128;
  }

  if (v29 > 2)
  {
    if (v29 == 3)
    {
      if (*(*(a1 + 40) + 8) > v30)
      {
        goto LABEL_99;
      }

      v33 = &s_11_7;
      v34 = a1;
      v35 = 3;
    }

    else
    {
      if (*(*(a1 + 40) + 8) > v30)
      {
        goto LABEL_99;
      }

      v33 = &s_12_7;
      v34 = a1;
      v35 = 1;
    }

    goto LABEL_96;
  }

  if (v29 == 1)
  {
    if (*(*(a1 + 40) + 8) <= v30)
    {
LABEL_125:
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_128;
    }
  }

  else
  {
    if (v29 != 2)
    {
      goto LABEL_128;
    }

    if (*(*(a1 + 40) + 8) <= v30)
    {
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      *(a1 + 24) = *(a1 + 8);
      v31 = &s_10_19;
LABEL_68:
      if (!eq_s_b(a1, 2, v31))
      {
        goto LABEL_128;
      }

LABEL_69:
      v32 = *(a1 + 8);
      *(a1 + 20) = v32;
      if (*(*(a1 + 40) + 8) > v32)
      {
        goto LABEL_128;
      }

      goto LABEL_125;
    }
  }

LABEL_99:
  v44 = *(a1 + 12);
  *(a1 + 8) = v44;
  v45 = **(a1 + 40);
  if (v44 < v45)
  {
LABEL_115:
    v51 = *(a1 + 12);
    *(a1 + 8) = v51;
    v52 = **(a1 + 40);
    if (v51 < v52)
    {
      goto LABEL_128;
    }

    v53 = *(a1 + 16);
    *(a1 + 16) = v52;
    *(a1 + 24) = v51;
    v54 = find_among_b(a1, &a_8_0, 96);
    if (!v54)
    {
      *(a1 + 16) = v53;
      goto LABEL_128;
    }

    v55 = *(a1 + 8);
    *(a1 + 16) = v53;
    *(a1 + 20) = v55;
    if (v54 != 2)
    {
      if (v54 != 1)
      {
        goto LABEL_128;
      }

      if (v55 > v53)
      {
        v56 = *a1 + v55;
        if (*(v56 - 1) == 117)
        {
          *(a1 + 8) = v55 - 1;
          if (v55 - 1 > v53 && *(v56 - 2) == 103)
          {
            --v55;
          }
        }
      }

      *(a1 + 8) = v55;
      *(a1 + 20) = v55;
    }

    goto LABEL_125;
  }

  v46 = *(a1 + 16);
  *(a1 + 16) = v45;
  *(a1 + 24) = v44;
  if (!find_among_b(a1, &a_7_0, 12))
  {
    *(a1 + 16) = v46;
    goto LABEL_115;
  }

  v47 = *(a1 + 8);
  *(a1 + 16) = v46;
  *(a1 + 20) = v47;
  if (v47 <= v46 || *(*a1 + v47 - 1) != 117)
  {
    goto LABEL_115;
  }

  *(a1 + 8) = v47 - 1;
  v48 = slice_del(a1);
  v49 = v48 & (v48 >> 31);
  if (v48 >= 0)
  {
    v49 = 1;
  }

  v50 = v49 >> 31;
  if (!v49)
  {
    v50 = 4;
  }

  if (!v50)
  {
    goto LABEL_128;
  }

  if (v50 == 4)
  {
    goto LABEL_115;
  }

  if (v49 >= 0)
  {
    result = 1;
  }

  else
  {
    result = v49;
  }

  if ((v49 & 0x80000000) == 0)
  {
    goto LABEL_128;
  }

  return result;
}

void *sb_stemmer_new(char *__s2, const char *a2)
{
  if (a2 && strcmp("UTF_8", a2))
  {
    return 0;
  }

  v3 = "ar";
  for (i = &off_1F24C5BD8; strcmp(v3, __s2) || *(i - 6) != 1; i += 5)
  {
    v3 = i[1];
    if (!v3)
    {
      return 0;
    }
  }

  v7 = malloc_type_malloc(0x20uLL, 0xA00400770BE9BuLL);
  v5 = v7;
  if (v7)
  {
    v8 = *(i - 1);
    *v7 = v8;
    v7[2] = *i;
    v9 = (v8)();
    v5[3] = v9;
    if (!v9)
    {
      v10 = v5[1];
      if (v10)
      {
        v10(0);
      }

      free(v5);
      return 0;
    }
  }

  return v5;
}

void sb_stemmer_delete(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      v2(a1[3]);
    }

    free(a1);
  }
}

uint64_t sb_stemmer_stem(uint64_t a1, void *__src, int a3)
{
  if (SN_set_current(*(a1 + 24), a3, __src))
  {
    result = 0;
    *(*(a1 + 24) + 12) = 0;
  }

  else if (((*(a1 + 16))(*(a1 + 24)) & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    *(**(a1 + 24) + *(*(a1 + 24) + 12)) = 0;
    return **(a1 + 24);
  }

  return result;
}

uint64_t dutch_UTF_8_stem(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = v3; ; i = *(a1 + 8))
  {
    *(a1 + 20) = i;
    v5 = i + 1;
    v6 = *(a1 + 12);
    if (v5 >= v6 || (v7 = *(*a1 + v5), (v7 & 0xE0) != 0xA0) || ((0x1448AA12u >> v7) & 1) == 0)
    {
      *(a1 + 24) = i;
      goto LABEL_6;
    }

    among = find_among(a1, &a_0_1, 11);
    if (!among)
    {
      break;
    }

    i = *(a1 + 8);
    *(a1 + 24) = i;
    if (among <= 3)
    {
      switch(among)
      {
        case 1:
          v10 = a1;
          v11 = &s_0_46;
          break;
        case 2:
          v10 = a1;
          v11 = &s_1_41;
          break;
        case 3:
          v10 = a1;
          v11 = &s_2_12;
          break;
        default:
          continue;
      }

      goto LABEL_23;
    }

    if (among == 4)
    {
      v10 = a1;
      v11 = &s_3_23;
      goto LABEL_23;
    }

    if (among == 5)
    {
      v10 = a1;
      v11 = &s_4_15;
LABEL_23:
      v12 = slice_from_s(v10, 1, v11);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      continue;
    }

    if (among != 6)
    {
      continue;
    }

    v6 = *(a1 + 12);
LABEL_6:
    v8 = skip_utf8(*a1, i, 0, v6, 1);
    if (v8 < 0)
    {
      break;
    }

    *(a1 + 8) = v8;
  }

  *(a1 + 8) = v3;
  *(a1 + 20) = v3;
  v13 = v3;
  if (v3 != *(a1 + 12))
  {
    v13 = v3;
    if (*(*a1 + v3) == 121)
    {
      *(a1 + 8) = v3 + 1;
      *(a1 + 24) = v3 + 1;
      v12 = slice_from_s(a1, 1, &s_5_9);
      if ((v12 & 0x80000000) == 0)
      {
        v13 = *(a1 + 8);
        goto LABEL_29;
      }

      return v12;
    }
  }

LABEL_29:
  while (2)
  {
    if (in_grouping_U(a1, &g_v_1, 97, 232, 0))
    {
      v15 = *a1;
      v14 = *(a1 + 12);
    }

    else
    {
      v1 = *(a1 + 8);
      v14 = *(a1 + 12);
      *(a1 + 20) = v1;
      v15 = *a1;
      if (v1 == v14)
      {
        goto LABEL_40;
      }

      if (*(v15 + v1) != 105)
      {
        goto LABEL_34;
      }

      *(a1 + 8) = v1 + 1;
      *(a1 + 24) = v1 + 1;
      if (!in_grouping_U(a1, &g_v_1, 97, 232, 0))
      {
        v16 = a1;
        v17 = &s_6_46;
        goto LABEL_37;
      }

      v14 = *(a1 + 12);
      v15 = *a1;
LABEL_34:
      *(a1 + 8) = v1;
      if (v1 == v14)
      {
LABEL_40:
        v14 = v1;
      }

      else if (*(v15 + v1) == 121)
      {
        *(a1 + 8) = v1 + 1;
        *(a1 + 24) = v1 + 1;
        v16 = a1;
        v17 = &s_7_20;
LABEL_37:
        v12 = slice_from_s(v16, 1, v17);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

LABEL_38:
        *(a1 + 8) = v13;
        continue;
      }
    }

    break;
  }

  *(a1 + 8) = v13;
  v18 = skip_utf8(v15, v13, 0, v14, 1);
  if ((v18 & 0x80000000) == 0)
  {
    v13 = v18;
    goto LABEL_38;
  }

  *(a1 + 8) = v3;
  v19 = *(a1 + 12);
  v20 = *(a1 + 40);
  *v20 = v19;
  v20[1] = v19;
  v21 = out_grouping_U(a1, &g_v_1, 97, 232, 1);
  if ((v21 & 0x80000000) == 0)
  {
    *(a1 + 8) += v21;
    v22 = in_grouping_U(a1, &g_v_1, 97, 232, 1);
    if ((v22 & 0x80000000) == 0)
    {
      v23 = *(a1 + 8) + v22;
      *(a1 + 8) = v23;
      if (v23 <= 3)
      {
        v23 = 3;
      }

      **(a1 + 40) = v23;
      v24 = out_grouping_U(a1, &g_v_1, 97, 232, 1);
      if ((v24 & 0x80000000) == 0)
      {
        *(a1 + 8) += v24;
        v25 = in_grouping_U(a1, &g_v_1, 97, 232, 1);
        if ((v25 & 0x80000000) == 0)
        {
          *(*(a1 + 40) + 4) = *(a1 + 8) + v25;
        }
      }
    }
  }

  *(a1 + 16) = v3;
  v26 = *(a1 + 12);
  *(a1 + 8) = v26;
  *(a1 + 24) = v26;
  if (v26 <= v3)
  {
    goto LABEL_72;
  }

  v27 = *(*a1 + v26 - 1);
  if ((v27 & 0xE0) != 0x60)
  {
    goto LABEL_72;
  }

  if (((0x84020u >> v27) & 1) == 0)
  {
    goto LABEL_72;
  }

  among_b = find_among_b(a1, &a_3_1, 5);
  if (!among_b)
  {
    goto LABEL_72;
  }

  v29 = *(a1 + 8);
  *(a1 + 20) = v29;
  if (among_b == 3)
  {
    if (**(a1 + 40) <= v29)
    {
      if (out_grouping_b_U(a1, &g_v_j, 97, 232, 0))
      {
        goto LABEL_71;
      }

      v12 = slice_del(a1);
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_71;
      }

      return v12;
    }

    goto LABEL_68;
  }

  if (among_b == 2)
  {
    v30 = r_en_ending(a1);
    v1 = v30;
    v31 = v30 >> 31;
    if (!v30)
    {
      v31 = 2;
    }

    if ((v31 | 2) == 2)
    {
      goto LABEL_72;
    }

    if ((v30 & 0x80000000) == 0)
    {
      v32 = *(a1 + 8);
      v33 = *(a1 + 12);
      goto LABEL_73;
    }

    return v1;
  }

  if (among_b != 1)
  {
    goto LABEL_72;
  }

  if (**(a1 + 40) > v29)
  {
LABEL_68:
    LODWORD(v1) = 0;
    goto LABEL_72;
  }

  v12 = slice_from_s(a1, 4, &s_11_8);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

LABEL_71:
  LODWORD(v1) = 1;
LABEL_72:
  v32 = *(a1 + 12);
  *(a1 + 8) = v32;
  v33 = v32;
LABEL_73:
  v12 = r_e_ending(a1);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v34 = v32 - v33;
  v35 = *(a1 + 12) + v34;
  *(a1 + 8) = v35;
  *(a1 + 24) = v35;
  if (eq_s_b(a1, 4, &s_12_8))
  {
    v36 = *(a1 + 8);
    *(a1 + 20) = v36;
    if (*(*(a1 + 40) + 4) <= v36 && (v36 <= *(a1 + 16) || *(*a1 + v36 - 1) != 99))
    {
      v12 = slice_del(a1);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      *(a1 + 24) = *(a1 + 8);
      if (eq_s_b(a1, 2, &s_13_34))
      {
        *(a1 + 20) = *(a1 + 8);
        v43 = r_en_ending(a1);
        v44 = v43 >> 31;
        v45 = v43 >= 0 ? v1 : v43;
        if (v43)
        {
          v1 = v45;
        }

        else
        {
          v44 = 4;
          v1 = v1;
        }

        if ((v44 | 4) != 4)
        {
          if ((v43 & 0x80000000) == 0)
          {
            v38 = *(a1 + 8);
            v37 = *(a1 + 12);
            goto LABEL_77;
          }

LABEL_120:
          if ((v1 & 0x80000000) != 0)
          {
            return v1;
          }

LABEL_137:
          v55 = *(a1 + 16);
          *(a1 + 8) = v55;
          v56 = v55;
          while (2)
          {
            *(a1 + 20) = v56;
            v57 = *(a1 + 12);
            if (v56 < v57 && (*(*a1 + v56) | 0x10) == 0x59)
            {
              v58 = find_among(a1, &a_1_1, 3);
              if (!v58)
              {
                goto LABEL_154;
              }

              v56 = *(a1 + 8);
              *(a1 + 24) = v56;
              switch(v58)
              {
                case 1:
                  v60 = a1;
                  v61 = &s_8_96;
                  break;
                case 2:
                  v60 = a1;
                  v61 = &s_9_8;
                  break;
                case 3:
                  v57 = *(a1 + 12);
                  goto LABEL_146;
                default:
                  goto LABEL_148;
              }

              v12 = slice_from_s(v60, 1, v61);
              if ((v12 & 0x80000000) != 0)
              {
                return v12;
              }

              goto LABEL_148;
            }

            *(a1 + 24) = v56;
LABEL_146:
            v59 = skip_utf8(*a1, v56, 0, v57, 1);
            if (v59 < 0)
            {
LABEL_154:
              *(a1 + 8) = v55;
              return 1;
            }

            *(a1 + 8) = v59;
LABEL_148:
            v56 = *(a1 + 8);
            continue;
          }
        }
      }
    }
  }

  v37 = *(a1 + 12);
  v38 = v37 + v34;
  *(a1 + 8) = v38;
LABEL_77:
  *(a1 + 24) = v38;
  v39 = v38 - 1;
  if (v39 <= *(a1 + 16))
  {
    goto LABEL_130;
  }

  v40 = *(*a1 + v39);
  if ((v40 & 0xE0) != 0x60)
  {
    goto LABEL_130;
  }

  if (((0x40890u >> v40) & 1) == 0)
  {
    goto LABEL_130;
  }

  v41 = find_among_b(a1, &a_4_1, 6);
  if (!v41)
  {
    goto LABEL_130;
  }

  v42 = *(a1 + 8);
  *(a1 + 20) = v42;
  if (v41 <= 2)
  {
    if (v41 == 1)
    {
      if (*(*(a1 + 40) + 4) > v42)
      {
        goto LABEL_130;
      }

      v12 = slice_del(a1);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v50 = *(a1 + 8);
      v49 = *(a1 + 12);
      *(a1 + 24) = v50;
      if (eq_s_b(a1, 2, &s_14_12))
      {
        v51 = *(a1 + 8);
        *(a1 + 20) = v51;
        if (*(*(a1 + 40) + 4) <= v51 && (v51 <= *(a1 + 16) || *(*a1 + v51 - 1) != 101))
        {
          goto LABEL_123;
        }
      }

      *(a1 + 8) = v50 - v49 + *(a1 + 12);
      v12 = r_undouble(a1);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }
    }

    else if (v41 == 2 && *(*(a1 + 40) + 4) <= v42 && (v42 <= *(a1 + 16) || *(*a1 + v42 - 1) != 101))
    {
      goto LABEL_123;
    }

    goto LABEL_130;
  }

  if (v41 == 3)
  {
    if (*(*(a1 + 40) + 4) <= v42)
    {
      v12 = slice_del(a1);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v46 = r_e_ending(a1);
      v47 = v46 >> 31;
      if (!v46)
      {
        v47 = 6;
      }

      if (v47 && v47 != 6)
      {
        if (v46 >= 0)
        {
          v48 = v1;
        }

        else
        {
          v48 = v46;
        }

        if (v46)
        {
          v1 = v48;
        }

        else
        {
          v1 = v1;
        }

        if (v46 < 0)
        {
          goto LABEL_120;
        }

LABEL_131:
        if (out_grouping_b_U(a1, &g_v_I, 73, 232, 0))
        {
          goto LABEL_137;
        }

        v52 = *(a1 + 8);
        if (v52 - 1 <= *(a1 + 16))
        {
          goto LABEL_137;
        }

        v53 = *(*a1 + v52 - 1);
        if ((v53 & 0xE0) != 0x60)
        {
          goto LABEL_137;
        }

        if (((0x208022u >> v53) & 1) == 0)
        {
          goto LABEL_137;
        }

        v54 = *(a1 + 12);
        if (!find_among_b(a1, &a_5_1, 4))
        {
          goto LABEL_137;
        }

        if (out_grouping_b_U(a1, &g_v_1, 97, 232, 0))
        {
          goto LABEL_137;
        }

        v63 = *(a1 + 16);
        v64 = (*(a1 + 12) + v52 - v54);
        *(a1 + 8) = v64;
        *(a1 + 24) = v64;
        v65 = skip_utf8(*a1, v64, v63, 0, -1);
        if (v65 < 0)
        {
          goto LABEL_137;
        }

        *(a1 + 8) = v65;
        *(a1 + 20) = v65;
        v12 = slice_del(a1);
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_137;
        }

        return v12;
      }
    }

LABEL_130:
    *(a1 + 8) = *(a1 + 12) + v38 - v37;
    goto LABEL_131;
  }

  if (v41 == 4)
  {
    if (*(*(a1 + 40) + 4) > v42)
    {
      goto LABEL_130;
    }
  }

  else if (v41 != 5 || *(*(a1 + 40) + 4) > v42 || !**(a1 + 48))
  {
    goto LABEL_130;
  }

LABEL_123:
  v12 = slice_del(a1);
  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_130;
  }

  return v12;
}

uint64_t r_en_ending(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (**(a1 + 40) > v1)
  {
    return 0;
  }

  v3 = *(a1 + 12);
  if (out_grouping_b_U(a1, &g_v_1, 97, 232, 0))
  {
    return 0;
  }

  v4 = v1 - v3;
  *(a1 + 8) = *(a1 + 12) + v4;
  if (eq_s_b(a1, 3, &s_10_20))
  {
    return 0;
  }

  *(a1 + 8) = *(a1 + 12) + v4;
  result = slice_del(a1);
  if ((result & 0x80000000) == 0)
  {

    return r_undouble(a1);
  }

  return result;
}

uint64_t r_e_ending(uint64_t a1)
{
  **(a1 + 48) = 0;
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 <= *(a1 + 16))
  {
    return 0;
  }

  if (*(*a1 + v1 - 1) != 101)
  {
    return 0;
  }

  v3 = v1 - 1;
  *(a1 + 8) = v1 - 1;
  *(a1 + 20) = v1 - 1;
  if (**(a1 + 40) >= v1)
  {
    return 0;
  }

  v4 = *(a1 + 12);
  if (out_grouping_b_U(a1, &g_v_1, 97, 232, 0))
  {
    return 0;
  }

  *(a1 + 8) = v3 - v4 + *(a1 + 12);
  result = slice_del(a1);
  if ((result & 0x80000000) == 0)
  {
    **(a1 + 48) = 1;

    return r_undouble(a1);
  }

  return result;
}

uint64_t r_undouble(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if ((v3 & 0xE0) != 0x60 || ((0x100810u >> v3) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 12);
  result = find_among_b(a1, &a_2_1, 3);
  if (result)
  {
    v6 = *(a1 + 16);
    v7 = (*(a1 + 12) + v1 - v5);
    *(a1 + 8) = v7;
    *(a1 + 24) = v7;
    v8 = skip_utf8(*a1, v7, v6, 0, -1);
    if (v8 < 0)
    {
      return 0;
    }

    *(a1 + 8) = v8;
    *(a1 + 20) = v8;
    v9 = slice_del(a1);
    if (v9 >= 0)
    {
      return 1;
    }

    else
    {
      return v9 & (v9 >> 31);
    }
  }

  return result;
}

uint64_t finnish_UTF_8_stem(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  v4 = *(a1 + 40);
  *v4 = v2;
  v4[1] = v2;
  if ((out_grouping_U(a1, &g_V1, 97, 246, 1) & 0x80000000) == 0)
  {
    v5 = in_grouping_U(a1, &g_V1, 97, 246, 1);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = *(a1 + 8) + v5;
      *(a1 + 8) = v6;
      **(a1 + 40) = v6;
      if ((out_grouping_U(a1, &g_V1, 97, 246, 1) & 0x80000000) == 0)
      {
        v7 = in_grouping_U(a1, &g_V1, 97, 246, 1);
        if ((v7 & 0x80000000) == 0)
        {
          *(*(a1 + 40) + 4) = *(a1 + 8) + v7;
        }
      }
    }
  }

  *(a1 + 8) = v3;
  **(a1 + 48) = 0;
  v9 = *(a1 + 8);
  v8 = *(a1 + 12);
  *(a1 + 16) = v9;
  *(a1 + 8) = v8;
  v10 = **(a1 + 40);
  if (v8 >= v10)
  {
    *(a1 + 16) = v10;
    *(a1 + 24) = v8;
    among_b = find_among_b(a1, &a_0_2, 10);
    if (!among_b)
    {
      *(a1 + 16) = v9;
      goto LABEL_15;
    }

    v12 = *(a1 + 8);
    *(a1 + 16) = v9;
    *(a1 + 20) = v12;
    if (among_b == 2)
    {
      if (*(*(a1 + 40) + 4) > v12)
      {
        goto LABEL_15;
      }
    }

    else if (among_b == 1 && in_grouping_b_U(a1, &g_particle_end, 97, 246, 0))
    {
      goto LABEL_15;
    }

    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

LABEL_15:
  v14 = *(a1 + 12);
  *(a1 + 8) = v14;
  v15 = **(a1 + 40);
  if (v14 < v15)
  {
    goto LABEL_45;
  }

  v16 = *(a1 + 16);
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  v17 = find_among_b(a1, &a_4_2, 9);
  if (!v17)
  {
    *(a1 + 16) = v16;
    goto LABEL_45;
  }

  v18 = *(a1 + 8);
  *(a1 + 16) = v16;
  *(a1 + 20) = v18;
  if (v17 > 3)
  {
    if (v17 == 4)
    {
      v22 = v18 - 1;
      if (v22 <= v16 || *(*a1 + v22) != 97)
      {
        goto LABEL_45;
      }

      v19 = &a_1_2;
    }

    else
    {
      if (v17 != 5)
      {
        if (v17 != 6 || v18 - 2 <= v16 || *(*a1 + v18 - 1) != 101)
        {
          goto LABEL_45;
        }

        v19 = &a_3_2;
        v20 = a1;
        v21 = 2;
        goto LABEL_43;
      }

      if (v18 - 2 <= v16 || *(*a1 + v18 - 1) != 164)
      {
        goto LABEL_45;
      }

      v19 = &a_2_2;
    }

    v20 = a1;
    v21 = 6;
LABEL_43:
    if (!find_among_b(v20, v19, v21))
    {
      goto LABEL_45;
    }

LABEL_44:
    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (v17 == 1)
  {
    if (v18 > v16 && *(*a1 + v18 - 1) == 107)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v17 != 2)
  {
    if (v17 != 3)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  result = slice_del(a1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  *(a1 + 24) = *(a1 + 8);
  if (eq_s_b(a1, 3, &s_0_47))
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_from_s(a1, 3, &s_1_42);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

LABEL_45:
  v23 = *(a1 + 12);
  *(a1 + 8) = v23;
  v24 = **(a1 + 40);
  if (v23 < v24)
  {
    goto LABEL_84;
  }

  v25 = *(a1 + 16);
  *(a1 + 16) = v24;
  *(a1 + 24) = v23;
  v26 = find_among_b(a1, &a_6_10, 30);
  if (!v26)
  {
    *(a1 + 16) = v25;
    goto LABEL_84;
  }

  v27 = *(a1 + 8);
  *(a1 + 16) = v25;
  *(a1 + 20) = v27;
  if (v26 > 4)
  {
    if (v26 <= 6)
    {
      if (v26 == 5)
      {
        v28 = &s_2_13;
      }

      else
      {
        v28 = &s_3_24;
      }

      if (!eq_s_b(a1, 2, v28))
      {
        goto LABEL_84;
      }

      goto LABEL_82;
    }

    if (v26 != 7)
    {
      if (v26 == 8 && (in_grouping_b_U(a1, &g_V1, 97, 246, 0) || in_grouping_b_U(a1, &g_C, 98, 122, 0)))
      {
        goto LABEL_84;
      }

      goto LABEL_82;
    }

    v30 = *(a1 + 12) - v27;
    if (!find_among_b(a1, &a_5_2, 7) && (*(a1 + 8) = *(a1 + 12) - v30, !eq_s_b(a1, 2, &s_4_16)) || (v31 = *(a1 + 16), v32 = (*(a1 + 12) - v30), *(a1 + 8) = v32, v33 = skip_utf8(*a1, v32, v31, 0, -1), v33 < 0))
    {
      v29 = *(a1 + 12) - v30;
      goto LABEL_81;
    }

    *(a1 + 8) = v33;
    *(a1 + 20) = v33;
  }

  else
  {
    if (v26 > 2)
    {
      if (v26 == 3)
      {
        if (v27 <= v25 || *(*a1 + v27 - 1) != 105)
        {
          goto LABEL_84;
        }
      }

      else if (v27 <= v25 || *(*a1 + v27 - 1) != 111)
      {
        goto LABEL_84;
      }

      goto LABEL_75;
    }

    if (v26 == 1)
    {
      if (v27 <= v25 || *(*a1 + v27 - 1) != 97)
      {
        goto LABEL_84;
      }

      goto LABEL_75;
    }

    if (v26 == 2)
    {
      if (v27 <= v25 || *(*a1 + v27 - 1) != 101)
      {
        goto LABEL_84;
      }

LABEL_75:
      v29 = v27 - 1;
LABEL_81:
      *(a1 + 8) = v29;
    }
  }

LABEL_82:
  result = slice_del(a1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  **(a1 + 48) = 1;
LABEL_84:
  v34 = *(a1 + 12);
  *(a1 + 8) = v34;
  v35 = *(*(a1 + 40) + 4);
  if (v34 < v35)
  {
    goto LABEL_92;
  }

  v36 = *(a1 + 16);
  *(a1 + 16) = v35;
  *(a1 + 24) = v34;
  v37 = find_among_b(a1, &a_7_1, 14);
  if (v37)
  {
    v38 = *(a1 + 8);
    *(a1 + 16) = v36;
    *(a1 + 20) = v38;
    if (v37 == 1)
    {
      v39 = *(a1 + 12);
      if (eq_s_b(a1, 2, &s_5_10))
      {
        goto LABEL_92;
      }

      *(a1 + 8) = v38 - v39 + *(a1 + 12);
    }

    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 16) = v36;
  }

LABEL_92:
  v40 = *(a1 + 12);
  *(a1 + 8) = v40;
  v41 = **(a1 + 40);
  if (**(a1 + 48))
  {
    if (v40 >= v41)
    {
      v42 = *(a1 + 16);
      *(a1 + 16) = v41;
      *(a1 + 24) = v40;
      if (v40 > v41 && *(*a1 + v40 - 1) - 105 <= 1 && find_among_b(a1, &a_8_1, 2))
      {
        v43 = *(a1 + 8);
        *(a1 + 16) = v42;
        *(a1 + 20) = v43;
        goto LABEL_98;
      }

LABEL_104:
      *(a1 + 16) = v42;
    }
  }

  else if (v40 >= v41)
  {
    v42 = *(a1 + 16);
    *(a1 + 16) = v41;
    *(a1 + 24) = v40;
    if (v40 > v41 && *(*a1 + v40 - 1) == 116)
    {
      v44 = v40 - 1;
      *(a1 + 8) = v44;
      *(a1 + 20) = v44;
      if (!in_grouping_b_U(a1, &g_V1, 97, 246, 0))
      {
        *(a1 + 8) = *(a1 + 12) - 1;
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        *(a1 + 16) = v42;
        v58 = *(a1 + 8);
        v59 = *(*(a1 + 40) + 4);
        if (v58 < v59)
        {
          goto LABEL_105;
        }

        *(a1 + 16) = v59;
        *(a1 + 24) = v58;
        if (v58 - 2 > v59 && *(*a1 + v58 - 1) == 97)
        {
          v60 = find_among_b(a1, &a_9_1, 2);
          if (v60)
          {
            v61 = *(a1 + 8);
            *(a1 + 16) = v42;
            *(a1 + 20) = v61;
            if (v60 == 1)
            {
              v62 = *(a1 + 12);
              if (eq_s_b(a1, 2, &s_6_47))
              {
                goto LABEL_105;
              }

              *(a1 + 8) = v61 - v62 + *(a1 + 12);
            }

LABEL_98:
            result = slice_del(a1);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            goto LABEL_105;
          }
        }
      }
    }

    goto LABEL_104;
  }

LABEL_105:
  v45 = *(a1 + 12);
  *(a1 + 8) = v45;
  v46 = **(a1 + 40);
  if (v45 < v46)
  {
    goto LABEL_127;
  }

  v47 = *(a1 + 16);
  *(a1 + 16) = v46;
  if (!find_among_b(a1, &a_5_2, 7) || (v48 = *(a1 + 12), v49 = *(a1 + 16), *(a1 + 8) = v48, *(a1 + 24) = v48, v50 = skip_utf8(*a1, v48, v49, 0, -1), v50 < 0) || (*(a1 + 8) = v50, *(a1 + 20) = v50, result = slice_del(a1), (result & 0x80000000) == 0))
  {
    v51 = *(a1 + 12);
    *(a1 + 8) = v51;
    *(a1 + 24) = v51;
    if (in_grouping_b_U(a1, &g_AEI, 97, 228, 0) || (*(a1 + 20) = *(a1 + 8), in_grouping_b_U(a1, &g_C, 98, 122, 0)) || (result = slice_del(a1), (result & 0x80000000) == 0))
    {
      v52 = *(a1 + 12);
      v53 = *(a1 + 16);
      *(a1 + 8) = v52;
      *(a1 + 24) = v52;
      if (v52 > v53)
      {
        v54 = *a1 + v52;
        if (*(v54 - 1) == 106)
        {
          *(a1 + 8) = v52 - 1;
          *(a1 + 20) = v52 - 1;
          if (v52 - 1 > v53)
          {
            v55 = *(v54 - 2);
            if (v55 == 117 || v55 == 111)
            {
              *(a1 + 8) = v52 - 2;
              result = slice_del(a1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v52 = *(a1 + 12);
              v53 = *(a1 + 16);
            }
          }
        }
      }

      *(a1 + 8) = v52;
      *(a1 + 24) = v52;
      if (v52 > v53)
      {
        v56 = *a1 + v52;
        if (*(v56 - 1) == 111)
        {
          *(a1 + 8) = v52 - 1;
          *(a1 + 20) = v52 - 1;
          if (v52 - 1 > v53 && *(v56 - 2) == 106)
          {
            *(a1 + 8) = v52 - 2;
            result = slice_del(a1);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v52 = *(a1 + 12);
          }
        }
      }

      *(a1 + 8) = v52;
      *(a1 + 16) = v47;
      if ((in_grouping_b_U(a1, &g_V1, 97, 246, 1) & 0x80000000) != 0)
      {
        goto LABEL_127;
      }

      *(a1 + 24) = *(a1 + 8);
      if (in_grouping_b_U(a1, &g_C, 98, 122, 0))
      {
        goto LABEL_127;
      }

      *(a1 + 20) = *(a1 + 8);
      **(a1 + 32) = slice_to(a1, **(a1 + 32));
      v57 = **(a1 + 32);
      if (!v57)
      {
        return 0xFFFFFFFFLL;
      }

      if (!eq_v_b(a1, v57) || (result = slice_del(a1), (result & 0x80000000) == 0))
      {
LABEL_127:
        *(a1 + 8) = *(a1 + 16);
        return 1;
      }
    }
  }

  return result;
}

BOOL r_VI(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= *(a1 + 16) || *(*a1 + v1 - 1) != 105)
  {
    return 0;
  }

  *(a1 + 8) = v1 - 1;
  return in_grouping_b_U(a1, &g_V2, 97, 246, 0) == 0;
}

uint64_t portuguese_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = v2; ; i = *(a1 + 8))
  {
    *(a1 + 20) = i;
    v4 = i + 1;
    v5 = *(a1 + 12);
    if (v4 >= v5 || (v6 = *(*a1 + v4), v6 != 163) && v6 != 181)
    {
      *(a1 + 24) = i;
      goto LABEL_11;
    }

    among = find_among(a1, &a_0_3, 3);
    if (!among)
    {
      goto LABEL_18;
    }

    i = *(a1 + 8);
    *(a1 + 24) = i;
    if (among != 1)
    {
      break;
    }

    v9 = a1;
    v10 = &s_0_48;
LABEL_16:
    result = slice_from_s(v9, 2, v10);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

LABEL_13:
    ;
  }

  if (among == 2)
  {
    v9 = a1;
    v10 = &s_1_43;
    goto LABEL_16;
  }

  if (among != 3)
  {
    goto LABEL_13;
  }

  v5 = *(a1 + 12);
LABEL_11:
  v8 = skip_utf8(*a1, i, 0, v5, 1);
  if ((v8 & 0x80000000) == 0)
  {
    *(a1 + 8) = v8;
    goto LABEL_13;
  }

LABEL_18:
  *(a1 + 8) = v2;
  v12 = *(a1 + 12);
  v13 = *(a1 + 40);
  *v13 = v12;
  v13[1] = v12;
  v13[2] = *(a1 + 12);
  v14 = *(a1 + 8);
  if (!in_grouping_U(a1, &g_v_2, 97, 250, 0))
  {
    if ((v15 = *(a1 + 8), !out_grouping_U(a1, &g_v_2, 97, 250, 0)) && (v18 = out_grouping_U(a1, &g_v_2, 97, 250, 1), (v18 & 0x80000000) == 0) || (*(a1 + 8) = v15, !in_grouping_U(a1, &g_v_2, 97, 250, 0)) && (v18 = in_grouping_U(a1, &g_v_2, 97, 250, 1), (v18 & 0x80000000) == 0))
    {
LABEL_31:
      v17 = *(a1 + 8) + v18;
      goto LABEL_32;
    }
  }

  *(a1 + 8) = v14;
  if (!out_grouping_U(a1, &g_v_2, 97, 250, 0))
  {
    v16 = *(a1 + 8);
    if (!out_grouping_U(a1, &g_v_2, 97, 250, 0))
    {
      v18 = out_grouping_U(a1, &g_v_2, 97, 250, 1);
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    *(a1 + 8) = v16;
    if (!in_grouping_U(a1, &g_v_2, 97, 250, 0))
    {
      v17 = skip_utf8(*a1, *(a1 + 8), 0, *(a1 + 12), 1);
      if ((v17 & 0x80000000) == 0)
      {
LABEL_32:
        **(a1 + 40) = v17;
      }
    }
  }

  *(a1 + 8) = v14;
  v19 = out_grouping_U(a1, &g_v_2, 97, 250, 1);
  if ((v19 & 0x80000000) == 0)
  {
    *(a1 + 8) += v19;
    v20 = in_grouping_U(a1, &g_v_2, 97, 250, 1);
    if ((v20 & 0x80000000) == 0)
    {
      v21 = *(a1 + 8) + v20;
      *(a1 + 8) = v21;
      *(*(a1 + 40) + 4) = v21;
      v22 = out_grouping_U(a1, &g_v_2, 97, 250, 1);
      if ((v22 & 0x80000000) == 0)
      {
        *(a1 + 8) += v22;
        v23 = in_grouping_U(a1, &g_v_2, 97, 250, 1);
        if ((v23 & 0x80000000) == 0)
        {
          *(*(a1 + 40) + 8) = *(a1 + 8) + v23;
        }
      }
    }
  }

  *(a1 + 16) = v14;
  v24 = *(a1 + 12);
  *(a1 + 8) = v24;
  *(a1 + 24) = v24;
  if (v24 - 2 <= v14)
  {
    goto LABEL_91;
  }

  v25 = *(*a1 + v24 - 1);
  if ((v25 & 0xE0) != 0x60)
  {
    goto LABEL_91;
  }

  if (((0xC9022u >> v25) & 1) == 0)
  {
    goto LABEL_91;
  }

  among_b = find_among_b(a1, &a_5_3, 45);
  if (!among_b)
  {
    goto LABEL_91;
  }

  v27 = *(a1 + 8);
  *(a1 + 20) = v27;
  if (among_b <= 4)
  {
    if (among_b > 2)
    {
      if (among_b == 3)
      {
        if (*(*(a1 + 40) + 8) <= v27)
        {
          v28 = &s_5_11;
          v29 = a1;
          v30 = 1;
          goto LABEL_70;
        }
      }

      else if (*(*(a1 + 40) + 8) <= v27)
      {
        v28 = &s_6_48;
        v29 = a1;
        v30 = 4;
        goto LABEL_70;
      }

      goto LABEL_91;
    }

    if (among_b != 1)
    {
      if (among_b != 2)
      {
        goto LABEL_95;
      }

      if (*(*(a1 + 40) + 8) <= v27)
      {
        v28 = &s_4_17;
        v29 = a1;
        v30 = 3;
        goto LABEL_70;
      }

      goto LABEL_91;
    }

    if (*(*(a1 + 40) + 8) > v27)
    {
      goto LABEL_91;
    }

LABEL_143:
    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_95;
  }

  if (among_b <= 6)
  {
    if (among_b == 5)
    {
      if (*(*(a1 + 40) + 4) > v27)
      {
        goto LABEL_91;
      }

      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v37 = *(a1 + 8);
      *(a1 + 24) = v37;
      v38 = v37 - 1;
      if (v38 <= *(a1 + 16))
      {
        goto LABEL_95;
      }

      v39 = *(*a1 + v38);
      if ((v39 & 0xE0) != 0x60)
      {
        goto LABEL_95;
      }

      if (((0x480018u >> v39) & 1) == 0)
      {
        goto LABEL_95;
      }

      v40 = find_among_b(a1, &a_2_3, 4);
      if (!v40)
      {
        goto LABEL_95;
      }

      v41 = *(a1 + 8);
      *(a1 + 20) = v41;
      if (*(*(a1 + 40) + 8) > v41)
      {
        goto LABEL_95;
      }

      v42 = v40;
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v42 != 1)
      {
        goto LABEL_95;
      }

      *(a1 + 24) = *(a1 + 8);
      v43 = &s_7_21;
LABEL_141:
      if (!eq_s_b(a1, 2, v43))
      {
        goto LABEL_95;
      }

      goto LABEL_142;
    }

    if (*(*(a1 + 40) + 8) > v27)
    {
      goto LABEL_91;
    }

    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v31 = *(a1 + 8);
    *(a1 + 24) = v31;
    if (v31 - 3 <= *(a1 + 16))
    {
      goto LABEL_95;
    }

    v32 = *(*a1 + v31 - 1);
    if (v32 != 108 && v32 != 101)
    {
      goto LABEL_95;
    }

    v33 = &a_3_3;
LABEL_78:
    if (!find_among_b(a1, v33, 3))
    {
      goto LABEL_95;
    }

LABEL_142:
    v66 = *(a1 + 8);
    *(a1 + 20) = v66;
    if (*(*(a1 + 40) + 8) > v66)
    {
      goto LABEL_95;
    }

    goto LABEL_143;
  }

  if (among_b == 7)
  {
    if (*(*(a1 + 40) + 8) > v27)
    {
      goto LABEL_91;
    }

    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v34 = *(a1 + 8);
    *(a1 + 24) = v34;
    v35 = v34 - 1;
    if (v35 <= *(a1 + 16))
    {
      goto LABEL_95;
    }

    v36 = *(*a1 + v35);
    if ((v36 & 0xE0) != 0x60 || ((0x401008u >> v36) & 1) == 0)
    {
      goto LABEL_95;
    }

    v33 = &a_4_3;
    goto LABEL_78;
  }

  if (among_b != 8)
  {
    if (among_b != 9)
    {
      goto LABEL_95;
    }

    if (**(a1 + 40) <= v27 && v27 > *(a1 + 16) && *(*a1 + v27 - 1) == 101)
    {
      *(a1 + 8) = v27 - 1;
      v28 = &s_9_9;
      v29 = a1;
      v30 = 2;
LABEL_70:
      result = slice_from_s(v29, v30, v28);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_95:
      v47 = *(a1 + 16);
      v48 = *(a1 + 12);
      *(a1 + 8) = v48;
      *(a1 + 24) = v48;
      if (v48 <= v47)
      {
        goto LABEL_105;
      }

      v49 = *a1 + v48;
      if (*(v49 - 1) != 105)
      {
        goto LABEL_105;
      }

      *(a1 + 8) = v48 - 1;
      *(a1 + 20) = v48 - 1;
      if (v48 - 1 <= v47 || *(v49 - 2) != 99 || **(a1 + 40) >= v48)
      {
        goto LABEL_105;
      }

LABEL_104:
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_105;
    }

LABEL_91:
    v44 = *(a1 + 12);
    *(a1 + 8) = v44;
    v45 = **(a1 + 40);
    if (v44 >= v45)
    {
      v46 = *(a1 + 16);
      *(a1 + 16) = v45;
      *(a1 + 24) = v44;
      if (find_among_b(a1, &a_6_1, 120))
      {
        *(a1 + 20) = *(a1 + 8);
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        *(a1 + 16) = v46;
        goto LABEL_95;
      }

      *(a1 + 16) = v46;
      v44 = *(a1 + 12);
    }

    *(a1 + 8) = v44;
    *(a1 + 24) = v44;
    if (find_among_b(a1, &a_7_2, 7))
    {
      v50 = *(a1 + 8);
      *(a1 + 20) = v50;
      if (**(a1 + 40) <= v50)
      {
        goto LABEL_104;
      }
    }

LABEL_105:
    v51 = *(a1 + 12);
    *(a1 + 8) = v51;
    *(a1 + 24) = v51;
    v52 = find_among_b(a1, &a_8_2, 4);
    if (v52)
    {
      v53 = *(a1 + 8);
      *(a1 + 20) = v53;
      if (v52 == 2)
      {
        result = slice_from_s(a1, 1, &s_10_21);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else if (v52 == 1 && **(a1 + 40) <= v53)
      {
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v54 = *(a1 + 8);
        *(a1 + 24) = v54;
        v55 = *(a1 + 16);
        if (v54 > v55)
        {
          if ((v56 = *a1 + v54, *(v56 - 1) == 117) && (v57 = v54 - 1, *(a1 + 8) = v54 - 1, *(a1 + 20) = v54 - 1, v54 - 1 > v55) && *(v56 - 2) == 103 || (*(a1 + 8) = v54, *(v56 - 1) == 105) && (v57 = v54 - 1, *(a1 + 8) = v54 - 1, *(a1 + 20) = v54 - 1, v54 - 1 > v55) && *(v56 - 2) == 99)
          {
            *(a1 + 8) = v57;
            if (**(a1 + 40) <= v57)
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
    }

    v58 = *(a1 + 12);
    v59 = *(a1 + 16);
    *(a1 + 8) = v59;
    v60 = v59;
    while (2)
    {
      *(a1 + 20) = v60;
      v61 = v60 + 1;
      if (v61 < v58 && *(*a1 + v61) == 126)
      {
        v62 = find_among(a1, &a_1_3, 3);
        if (!v62)
        {
          goto LABEL_137;
        }

        v60 = *(a1 + 8);
        *(a1 + 24) = v60;
        switch(v62)
        {
          case 1:
            v64 = a1;
            v65 = &s_2_14;
            break;
          case 2:
            v64 = a1;
            v65 = &s_3_25;
            break;
          case 3:
            v58 = *(a1 + 12);
            goto LABEL_130;
          default:
            goto LABEL_132;
        }

        result = slice_from_s(v64, 2, v65);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_132;
      }

      *(a1 + 24) = v60;
LABEL_130:
      v63 = skip_utf8(*a1, v60, 0, v58, 1);
      if (v63 < 0)
      {
LABEL_137:
        *(a1 + 8) = v59;
        return 1;
      }

      *(a1 + 8) = v63;
LABEL_132:
      v60 = *(a1 + 8);
      v58 = *(a1 + 12);
      continue;
    }
  }

  if (*(*(a1 + 40) + 8) > v27)
  {
    goto LABEL_91;
  }

  result = slice_del(a1);
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 24) = *(a1 + 8);
    v43 = &s_8_97;
    goto LABEL_141;
  }

  return result;
}

uint64_t nepali_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 12);
  *(a1 + 16) = *(a1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 24) = v2;
  among_b = find_among_b(a1, &a_0_4, 17);
  if (!among_b)
  {
    LODWORD(v6) = 0;
LABEL_10:
    *(a1 + 8) = *(a1 + 12);
    while (1)
    {
      v9 = *(a1 + 8);
      v10 = *(a1 + 12) - v9;
      *(a1 + 24) = v9;
      if (v9 - 2 <= *(a1 + 16))
      {
        goto LABEL_28;
      }

      v11 = *(*a1 + v9 - 1);
      if ((v11 & 0xE0) != 0x80)
      {
        goto LABEL_28;
      }

      if (((0x106u >> v11) & 1) == 0)
      {
        goto LABEL_28;
      }

      if (!find_among_b(a1, &a_1_4, 3))
      {
        goto LABEL_28;
      }

      v12 = *(a1 + 8);
      v13 = *(a1 + 12) - v10;
      *(a1 + 8) = v13;
      *(a1 + 20) = v12;
      *(a1 + 24) = v13;
      if (v13 - 2 <= *(a1 + 16))
      {
        goto LABEL_28;
      }

      v14 = *(*a1 + v13 - 1);
      if ((v14 & 0xE0) != 0x80)
      {
        goto LABEL_28;
      }

      if (((0x106u >> v14) & 1) == 0)
      {
        goto LABEL_28;
      }

      v15 = find_among_b(a1, &a_2_4, 3);
      if (!v15)
      {
        goto LABEL_28;
      }

      v16 = *(a1 + 8);
      *(a1 + 20) = v16;
      if (v15 == 2)
      {
        break;
      }

      if (v15 != 1)
      {
        goto LABEL_28;
      }

      v24 = *(a1 + 12);
      if (!eq_s_b(a1, 6, &s_2_15))
      {
        v17 = v24 - v16;
        *(a1 + 8) = *(a1 + 12) - v17;
        if (!eq_s_b(a1, 6, &s_3_26))
        {
          *(a1 + 8) = *(a1 + 12) - v17;
          if (!eq_s_b(a1, 6, &s_4_18))
          {
            *(a1 + 8) = *(a1 + 12) - v17;
            v18 = a1;
            v19 = 6;
            v20 = &s_5_45;
            goto LABEL_26;
          }
        }
      }

LABEL_27:
      v5 = slice_del(a1);
      if ((v5 & 0x80000000) != 0)
      {
        return v5;
      }

LABEL_28:
      v21 = *(a1 + 12) - v10;
      *(a1 + 8) = v21;
      *(a1 + 24) = v21;
      if (!find_among_b(a1, &a_3_4, 91))
      {
        *(a1 + 8) = *(a1 + 16);
        return 1;
      }

      *(a1 + 20) = *(a1 + 8);
      v22 = slice_del(a1);
      if (v22 >= 0)
      {
        v6 = v6;
      }

      else
      {
        v6 = v22;
      }

      if (v22 < 0)
      {
        return v6;
      }
    }

    v18 = a1;
    v19 = 9;
    v20 = &s_6_120;
LABEL_26:
    if (!eq_s_b(v18, v19, v20))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v4 = *(a1 + 8);
  *(a1 + 20) = v4;
  if (among_b == 2)
  {
    v7 = *(a1 + 12);
    if (eq_s_b(a1, 3, &s_0_49))
    {
      goto LABEL_9;
    }

    v8 = v7 - v4;
    *(a1 + 8) = *(a1 + 12) - v8;
    if (eq_s_b(a1, 3, &s_1_44))
    {
      goto LABEL_9;
    }

    *(a1 + 8) = *(a1 + 12) - v8;
  }

  else if (among_b != 1)
  {
LABEL_9:
    LODWORD(v6) = 1;
    goto LABEL_10;
  }

  v5 = slice_del(a1);
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  return v5;
}

uint64_t hungarian_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 8);
  **(a1 + 40) = *(a1 + 12);
  v3 = *(a1 + 8);
  if (!in_grouping_U(a1, &g_v_3, 97, 369, 0) && (in_grouping_U(a1, &g_v_3, 97, 369, 1) & 0x80000000) == 0)
  {
    v6 = *(a1 + 12);
    v7 = *(a1 + 8);
    v8 = *a1;
    if (v7 + 1 < v6)
    {
      v9 = *(v8 + v7 + 1);
      if (v9 & 0xE0) == 0x60 && ((0x6080000u >> v9))
      {
        if (find_among(a1, &a_0_5, 8))
        {
          v5 = *(a1 + 8);
          goto LABEL_13;
        }

        v8 = *a1;
        v6 = *(a1 + 12);
      }
    }

    *(a1 + 8) = v7;
    v5 = skip_utf8(v8, v7, 0, v6, 1);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  *(a1 + 8) = v3;
  if (!out_grouping_U(a1, &g_v_3, 97, 369, 0))
  {
    v4 = out_grouping_U(a1, &g_v_3, 97, 369, 1);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = *(a1 + 8) + v4;
LABEL_13:
      **(a1 + 40) = v5;
    }
  }

  *(a1 + 16) = v2;
  v10 = *(a1 + 12);
  *(a1 + 8) = v10;
  *(a1 + 24) = v10;
  v11 = v10 - 1;
  if (v11 > v2 && *(*a1 + v11) == 108)
  {
    if (find_among_b(a1, &a_3_5, 2))
    {
      v12 = *(a1 + 8);
      *(a1 + 20) = v12;
      if (**(a1 + 40) <= v12)
      {
        if (r_double(a1))
        {
          result = slice_del(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = r_undouble_0(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }
    }
  }

  v14 = *(a1 + 12);
  *(a1 + 8) = v14;
  *(a1 + 24) = v14;
  if (find_among_b(a1, &a_4_4, 44))
  {
    v15 = *(a1 + 8);
    *(a1 + 20) = v15;
    if (**(a1 + 40) <= v15)
    {
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v16 = *(a1 + 8);
      *(a1 + 24) = v16;
      v17 = v16 - 1;
      if (v17 > *(a1 + 16) && (*(*a1 + v17) | 8) == 0xA9)
      {
        among_b = find_among_b(a1, &a_1_5, 2);
        if (among_b)
        {
          v19 = *(a1 + 8);
          *(a1 + 20) = v19;
          if (**(a1 + 40) <= v19)
          {
            if (among_b == 2)
            {
              v20 = &s_1_45;
            }

            else
            {
              if (among_b != 1)
              {
                goto LABEL_33;
              }

              v20 = &s_0_50;
            }

            result = slice_from_s(a1, 1, v20);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }
      }
    }
  }

LABEL_33:
  v21 = *(a1 + 16);
  v22 = *(a1 + 12);
  *(a1 + 8) = v22;
  *(a1 + 24) = v22;
  if (v22 - 2 > v21)
  {
    v23 = *(*a1 + v22 - 1);
    if (v23 == 116 || v23 == 110)
    {
      v24 = find_among_b(a1, &a_5_4, 3);
      if (v24)
      {
        v25 = *(a1 + 8);
        *(a1 + 20) = v25;
        if (**(a1 + 40) <= v25)
        {
          if (v24 == 2)
          {
            v26 = &s_3_91;
          }

          else
          {
            if (v24 != 1)
            {
              goto LABEL_43;
            }

            v26 = &s_2_23;
          }

          result = slice_from_s(a1, 1, v26);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }
    }
  }

LABEL_43:
  v27 = *(a1 + 16);
  v28 = *(a1 + 12);
  *(a1 + 8) = v28;
  *(a1 + 24) = v28;
  if (v28 - 3 <= v27)
  {
    goto LABEL_55;
  }

  if (*(*a1 + v28 - 1) != 108)
  {
    goto LABEL_55;
  }

  v29 = find_among_b(a1, &a_6_2, 6);
  if (!v29)
  {
    goto LABEL_55;
  }

  v30 = *(a1 + 8);
  *(a1 + 20) = v30;
  if (**(a1 + 40) > v30)
  {
    goto LABEL_55;
  }

  switch(v29)
  {
    case 3:
      v31 = &s_5_46;
LABEL_54:
      result = slice_from_s(a1, 1, v31);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      break;
    case 2:
      v31 = &s_4_44;
      goto LABEL_54;
    case 1:
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      break;
  }

LABEL_55:
  v32 = *(a1 + 16);
  v33 = *(a1 + 12);
  *(a1 + 8) = v33;
  *(a1 + 24) = v33;
  v34 = v33 - 1;
  if (v34 > v32 && (*(*a1 + v34) | 8) == 0xA9)
  {
    if (find_among_b(a1, &a_7_3, 2))
    {
      v35 = *(a1 + 8);
      *(a1 + 20) = v35;
      if (**(a1 + 40) <= v35)
      {
        if (r_double(a1))
        {
          result = slice_del(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = r_undouble_0(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }
    }
  }

  v36 = *(a1 + 16);
  v37 = *(a1 + 12);
  *(a1 + 8) = v37;
  *(a1 + 24) = v37;
  v38 = v37 - 1;
  if (v38 <= v36)
  {
    goto LABEL_75;
  }

  v39 = *(*a1 + v38);
  if (v39 != 169 && v39 != 105)
  {
    goto LABEL_75;
  }

  v40 = find_among_b(a1, &a_9_2, 12);
  if (!v40)
  {
    goto LABEL_75;
  }

  v41 = *(a1 + 8);
  *(a1 + 20) = v41;
  if (**(a1 + 40) > v41)
  {
    goto LABEL_75;
  }

  if (v40 == 3)
  {
    v42 = &s_9_10;
  }

  else
  {
    if (v40 != 2)
    {
      if (v40 == 1)
      {
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      goto LABEL_75;
    }

    v42 = &s_8_98;
  }

  result = slice_from_s(a1, 1, v42);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

LABEL_75:
  *(a1 + 8) = *(a1 + 12);
  result = r_sing_owner(a1);
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 8) = *(a1 + 12);
    result = r_plur_owner(a1);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 8) = *(a1 + 12);
      result = r_plural(a1);
      if ((result & 0x80000000) == 0)
      {
        *(a1 + 8) = *(a1 + 16);
        return 1;
      }
    }
  }

  return result;
}

uint64_t r_sing_owner(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 8);
  result = find_among_b(a1, &a_10_0, 31);
  if (result)
  {
    v3 = *(a1 + 8);
    *(a1 + 20) = v3;
    if (**(a1 + 40) > v3)
    {
      return 0;
    }

    if (result == 3)
    {
      v4 = &s_11_9;
    }

    else
    {
      if (result != 2)
      {
        if (result == 1)
        {
          result = slice_del(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        return 1;
      }

      v4 = &s_10_22;
    }

    result = slice_from_s(a1, 1, v4);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    return 1;
  }

  return result;
}

uint64_t r_plur_owner(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if ((v3 & 0xE0) != 0x60 || ((0x2A10u >> v3) & 1) == 0)
  {
    return 0;
  }

  result = find_among_b(a1, &a_11_0, 42);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 8);
  *(a1 + 20) = v5;
  if (**(a1 + 40) > v5)
  {
    return 0;
  }

  if (result == 3)
  {
    v6 = &s_13_35;
LABEL_16:
    result = slice_from_s(a1, 1, v6);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    return 1;
  }

  if (result == 2)
  {
    v6 = &s_12_9;
    goto LABEL_16;
  }

  if (result != 1)
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

uint64_t r_plural(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 <= *(a1 + 16))
  {
    return 0;
  }

  if (*(*a1 + v1 - 1) != 107)
  {
    return 0;
  }

  result = find_among_b(a1, &a_8_3, 7);
  if (!result)
  {
    return result;
  }

  v4 = *(a1 + 8);
  *(a1 + 20) = v4;
  if (**(a1 + 40) > v4)
  {
    return 0;
  }

  if (result == 3)
  {
    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    return 1;
  }

  if (result != 2)
  {
    if (result == 1)
    {
      v5 = &s_6_121;
      goto LABEL_13;
    }

    return 1;
  }

  v5 = &s_7_22;
LABEL_13:
  result = slice_from_s(a1, 1, v5);
  if ((result & 0x80000000) == 0)
  {
    return 1;
  }

  return result;
}

uint64_t r_double(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if ((v3 & 0xE0) != 0x60 || ((0x65D7CDCu >> v3) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 12);
  result = find_among_b(a1, &a_2_5, 23);
  if (result)
  {
    *(a1 + 8) = v1 - v5 + *(a1 + 12);
    return 1;
  }

  return result;
}

uint64_t r_undouble_0(uint64_t a1)
{
  v2 = skip_utf8(*a1, *(a1 + 8), *(a1 + 16), 0, -1);
  if ((v2 & 0x80000000) != 0)
  {
    return 0;
  }

  *(a1 + 8) = v2;
  *(a1 + 24) = v2;
  v3 = skip_utf8(*a1, v2, *(a1 + 16), *(a1 + 12), -1);
  if (v3 < 0)
  {
    return 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 20) = v3;
  v4 = slice_del(a1);
  if (v4 >= 0)
  {
    return 1;
  }

  else
  {
    return v4 & (v4 >> 31);
  }
}

uint64_t romanian_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = v2; ; *(a1 + 8) = i)
  {
    v4 = in_grouping_U(a1, &g_v_4, 97, 259, 0);
    v5 = *(a1 + 12);
    if (v4)
    {
      v7 = *(a1 + 12);
      goto LABEL_16;
    }

    v6 = *(a1 + 8);
    *(a1 + 20) = v6;
    if (v6 == v5 || *(*a1 + v6) != 117)
    {
      break;
    }

    *(a1 + 8) = v6 + 1;
    *(a1 + 24) = v6 + 1;
    if (in_grouping_U(a1, &g_v_4, 97, 259, 0))
    {
      v5 = *(a1 + 12);
      break;
    }

    v8 = a1;
    v9 = &s_0_51;
LABEL_11:
    result = slice_from_s(v8, 1, v9);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

LABEL_12:
    ;
  }

  *(a1 + 8) = v6;
  v7 = v6;
  if (v6 == v5)
  {
    goto LABEL_16;
  }

  v7 = v5;
  if (*(*a1 + v6) != 105)
  {
    goto LABEL_16;
  }

  *(a1 + 8) = v6 + 1;
  *(a1 + 24) = v6 + 1;
  if (!in_grouping_U(a1, &g_v_4, 97, 259, 0))
  {
    v8 = a1;
    v9 = &s_1_46;
    goto LABEL_11;
  }

  v7 = *(a1 + 12);
LABEL_16:
  *(a1 + 8) = i;
  v11 = skip_utf8(*a1, i, 0, v7, 1);
  if ((v11 & 0x80000000) == 0)
  {
    i = v11;
    goto LABEL_12;
  }

  *(a1 + 8) = v2;
  v12 = *(a1 + 12);
  v13 = *(a1 + 40);
  *v13 = v12;
  v13[1] = v12;
  v13[2] = *(a1 + 12);
  v14 = *(a1 + 8);
  if (!in_grouping_U(a1, &g_v_4, 97, 259, 0))
  {
    if ((v15 = *(a1 + 8), !out_grouping_U(a1, &g_v_4, 97, 259, 0)) && (v18 = out_grouping_U(a1, &g_v_4, 97, 259, 1), (v18 & 0x80000000) == 0) || (*(a1 + 8) = v15, !in_grouping_U(a1, &g_v_4, 97, 259, 0)) && (v18 = in_grouping_U(a1, &g_v_4, 97, 259, 1), (v18 & 0x80000000) == 0))
    {
LABEL_31:
      v17 = *(a1 + 8) + v18;
      goto LABEL_32;
    }
  }

  *(a1 + 8) = v14;
  if (!out_grouping_U(a1, &g_v_4, 97, 259, 0))
  {
    v16 = *(a1 + 8);
    if (!out_grouping_U(a1, &g_v_4, 97, 259, 0))
    {
      v18 = out_grouping_U(a1, &g_v_4, 97, 259, 1);
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    *(a1 + 8) = v16;
    if (!in_grouping_U(a1, &g_v_4, 97, 259, 0))
    {
      v17 = skip_utf8(*a1, *(a1 + 8), 0, *(a1 + 12), 1);
      if ((v17 & 0x80000000) == 0)
      {
LABEL_32:
        **(a1 + 40) = v17;
      }
    }
  }

  *(a1 + 8) = v14;
  v19 = out_grouping_U(a1, &g_v_4, 97, 259, 1);
  if ((v19 & 0x80000000) == 0)
  {
    *(a1 + 8) += v19;
    v20 = in_grouping_U(a1, &g_v_4, 97, 259, 1);
    if ((v20 & 0x80000000) == 0)
    {
      v21 = *(a1 + 8) + v20;
      *(a1 + 8) = v21;
      *(*(a1 + 40) + 4) = v21;
      v22 = out_grouping_U(a1, &g_v_4, 97, 259, 1);
      if ((v22 & 0x80000000) == 0)
      {
        *(a1 + 8) += v22;
        v23 = in_grouping_U(a1, &g_v_4, 97, 259, 1);
        if ((v23 & 0x80000000) == 0)
        {
          *(*(a1 + 40) + 8) = *(a1 + 8) + v23;
        }
      }
    }
  }

  *(a1 + 16) = v14;
  v24 = *(a1 + 12);
  *(a1 + 8) = v24;
  *(a1 + 24) = v24;
  v25 = v24 - 1;
  if (v25 <= v14)
  {
    goto LABEL_62;
  }

  v26 = *(*a1 + v25);
  if ((v26 & 0xE0) != 0x60)
  {
    goto LABEL_62;
  }

  if (((0x41222u >> v26) & 1) == 0)
  {
    goto LABEL_62;
  }

  among_b = find_among_b(a1, &a_1_6, 16);
  if (!among_b)
  {
    goto LABEL_62;
  }

  v28 = *(a1 + 8);
  *(a1 + 20) = v28;
  if (*(*(a1 + 40) + 4) > v28)
  {
    goto LABEL_62;
  }

  if (among_b > 3)
  {
    if (among_b > 5)
    {
      if (among_b == 6)
      {
        v30 = &s_9_12;
        v31 = a1;
        v32 = 2;
      }

      else
      {
        if (among_b != 7)
        {
          goto LABEL_62;
        }

        v30 = &s_10_31;
        v31 = a1;
        v32 = 4;
      }
    }

    else
    {
      if (among_b != 4)
      {
        v29 = *(a1 + 12);
        if (!eq_s_b(a1, 2, &s_7_23))
        {
          *(a1 + 8) = v28 - v29 + *(a1 + 12);
          v30 = &s_8_99;
          goto LABEL_60;
        }

LABEL_62:
        *(a1 + 8) = *(a1 + 12);
        **(a1 + 48) = 0;
        v33 = *(a1 + 8);
        v34 = v33 - *(a1 + 12);
        *(a1 + 24) = v33;
        v35 = find_among_b(a1, &a_2_6, 46);
        if (v35)
        {
          while (2)
          {
            v36 = *(a1 + 8);
            *(a1 + 20) = v36;
            if (*(*(a1 + 40) + 4) > v36)
            {
              break;
            }

            if (v35 > 3)
            {
              switch(v35)
              {
                case 4:
                  v37 = a1;
                  v38 = 2;
                  v39 = &s_14_13;
                  goto LABEL_77;
                case 5:
                  v37 = a1;
                  v38 = 2;
                  v39 = &s_15_6;
                  goto LABEL_77;
                case 6:
                  v37 = a1;
                  v38 = 2;
                  v39 = &s_16_2;
                  goto LABEL_77;
              }
            }

            else
            {
              switch(v35)
              {
                case 1:
                  v37 = a1;
                  v38 = 4;
                  v39 = &s_11_42;
                  goto LABEL_77;
                case 2:
                  v37 = a1;
                  v38 = 4;
                  v39 = &s_12_10;
                  goto LABEL_77;
                case 3:
                  v37 = a1;
                  v38 = 2;
                  v39 = &s_13_36;
LABEL_77:
                  result = slice_from_s(v37, v38, v39);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  break;
              }
            }

            **(a1 + 48) = 1;
            v40 = *(a1 + 12) + v34;
            *(a1 + 8) = v40;
            *(a1 + 24) = v40;
            v35 = find_among_b(a1, &a_2_6, 46);
            if (!v35)
            {
              break;
            }

            continue;
          }
        }

        v41 = *(a1 + 12) + v34;
        *(a1 + 8) = v41;
        *(a1 + 24) = v41;
        v42 = find_among_b(a1, &a_3_6, 62);
        if (!v42)
        {
          goto LABEL_91;
        }

        v43 = *(a1 + 8);
        *(a1 + 20) = v43;
        if (*(*(a1 + 40) + 8) > v43)
        {
          goto LABEL_91;
        }

        if (v42 == 3)
        {
          v44 = &s_19_2;
          v45 = a1;
          v46 = 3;
        }

        else
        {
          if (v42 != 2)
          {
            if (v42 == 1)
            {
              result = slice_del(a1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

LABEL_90:
            **(a1 + 48) = 1;
LABEL_91:
            v47 = *(a1 + 12);
            *(a1 + 8) = v47;
            if (!**(a1 + 48))
            {
              v48 = **(a1 + 40);
              if (v47 >= v48)
              {
                v49 = *(a1 + 16);
                *(a1 + 16) = v48;
                *(a1 + 24) = v47;
                v50 = find_among_b(a1, &a_4_5, 94);
                if (!v50)
                {
                  goto LABEL_101;
                }

                v51 = *(a1 + 8);
                *(a1 + 20) = v51;
                if (v50 == 2)
                {
                  goto LABEL_100;
                }

                if (v50 != 1)
                {
                  goto LABEL_101;
                }

                v52 = *(a1 + 12);
                if (!out_grouping_b_U(a1, &g_v_4, 97, 259, 0))
                {
LABEL_100:
                  result = slice_del(a1);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }

                else
                {
                  v53 = *(a1 + 16);
                  v54 = *(a1 + 12) + v51 - v52;
                  *(a1 + 8) = v54;
                  if (v54 > v53 && *(*a1 + v54 - 1) == 117)
                  {
                    *(a1 + 8) = v54 - 1;
                    goto LABEL_100;
                  }
                }

LABEL_101:
                *(a1 + 16) = v49;
              }
            }

            v55 = *(a1 + 12);
            *(a1 + 8) = v55;
            *(a1 + 24) = v55;
            if (find_among_b(a1, &a_5_5, 5))
            {
              v56 = *(a1 + 8);
              *(a1 + 20) = v56;
              if (**(a1 + 40) <= v56)
              {
                result = slice_del(a1);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }
            }

            v57 = *(a1 + 12);
            v58 = *(a1 + 16);
            *(a1 + 8) = v58;
            v59 = v58;
            while (2)
            {
              *(a1 + 20) = v59;
              if (v59 < v57)
              {
                v60 = *(*a1 + v59);
                if (v60 == 73 || v60 == 85)
                {
                  among = find_among(a1, &a_0_6, 3);
                  if (!among)
                  {
                    goto LABEL_122;
                  }

                  v59 = *(a1 + 8);
                  *(a1 + 24) = v59;
                  switch(among)
                  {
                    case 1:
                      v63 = a1;
                      v64 = &s_2_46;
                      break;
                    case 2:
                      v63 = a1;
                      v64 = &s_3_92;
                      break;
                    case 3:
                      v57 = *(a1 + 12);
                      goto LABEL_115;
                    default:
                      goto LABEL_117;
                  }

                  result = slice_from_s(v63, 1, v64);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  goto LABEL_117;
                }
              }

              *(a1 + 24) = v59;
LABEL_115:
              v62 = skip_utf8(*a1, v59, 0, v57, 1);
              if (v62 < 0)
              {
LABEL_122:
                *(a1 + 8) = v58;
                return 1;
              }

              *(a1 + 8) = v62;
LABEL_117:
              v59 = *(a1 + 8);
              v57 = *(a1 + 12);
              continue;
            }
          }

          if (!eq_s_b(a1, 2, &s_17_10))
          {
            goto LABEL_91;
          }

          *(a1 + 20) = *(a1 + 8);
          v44 = &s_18_6;
          v45 = a1;
          v46 = 1;
        }

        result = slice_from_s(v45, v46, v44);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_90;
      }

      v30 = &s_6_122;
LABEL_60:
      v31 = a1;
      v32 = 1;
    }

    result = slice_from_s(v31, v32, v30);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_62;
  }

  if (among_b != 1)
  {
    if (among_b == 2)
    {
      v30 = &s_4_45;
    }

    else
    {
      if (among_b != 3)
      {
        goto LABEL_62;
      }

      v30 = &s_5_47;
    }

    goto LABEL_60;
  }

  result = slice_del(a1);
  if ((result & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  return result;
}

uint64_t tamil_UTF_8_stem(uint64_t a1)
{
  *(*(a1 + 48) + 1) = 0;
  v2 = *(a1 + 8);
  result = r_fix_ending(a1);
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 8) = v2;
    if (len_utf8(*a1) < 5)
    {
      return 0;
    }

    else
    {
      v4 = *(a1 + 8);
      *(a1 + 20) = v4;
      if (!eq_s(a1, 3, &s_12_11) || !find_among(a1, &a_0_7, 10) || !eq_s(a1, 3, &s_13_37) || (*(a1 + 24) = *(a1 + 8), result = slice_del(a1), (result & 0x80000000) == 0) && (result = r_fix_va_start(a1), (result & 0x80000000) == 0))
      {
        *(a1 + 8) = v4;
        **(a1 + 48) = 0;
        v5 = *(a1 + 12);
        v6 = *(a1 + 8);
        *(a1 + 20) = v6;
        v7 = v6 + 2;
        if (v7 >= v5 || (v8 = *(*a1 + v7), (v8 & 0xE0) != 0x80) || ((0x2A0u >> v8) & 1) == 0 || !find_among(a1, &a_11_1, 3) || !find_among(a1, &a_12_0, 10) || !eq_s(a1, 3, &s_45_1) || (*(a1 + 24) = *(a1 + 8), result = slice_del(a1), (result & 0x80000000) == 0) && (**(a1 + 48) = 1, result = r_fix_va_start(a1), (result & 0x80000000) == 0))
        {
          *(a1 + 8) = v4;
          if (len_utf8(*a1) < 5)
          {
            goto LABEL_21;
          }

          **(a1 + 48) = 0;
          v9 = *(a1 + 12);
          *(a1 + 16) = *(a1 + 8);
          *(a1 + 8) = v9;
          *(a1 + 24) = v9;
          if (find_among_b(a1, &a_14_0, 3))
          {
            *(a1 + 20) = *(a1 + 8);
            result = slice_from_s(a1, 3, &s_53_6);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            **(a1 + 48) = 1;
          }

          *(a1 + 8) = *(a1 + 16);
          result = r_fix_endings(a1);
          if ((result & 0x80000000) == 0)
          {
LABEL_21:
            *(a1 + 8) = v4;
            **(a1 + 48) = 0;
            if (len_utf8(*a1) < 5 || (v10 = *(a1 + 12), *(a1 + 16) = *(a1 + 8), *(a1 + 8) = v10, *(a1 + 24) = v10, !eq_s_b(a1, 9, &s_54_5)) || (*(a1 + 20) = *(a1 + 8), result = slice_from_s(a1, 3, &s_55_3), (result & 0x80000000) == 0) && (**(a1 + 48) = 1, *(a1 + 8) = *(a1 + 16), result = r_fix_ending(a1), (result & 0x80000000) == 0))
            {
              *(a1 + 8) = v4;
              result = r_remove_common_word_endings(a1);
              if ((result & 0x80000000) == 0)
              {
                *(a1 + 8) = v4;
                result = r_remove_vetrumai_urupukal(a1);
                if ((result & 0x80000000) == 0)
                {
                  *(a1 + 8) = v4;
                  result = r_remove_plural_suffix(a1);
                  if ((result & 0x80000000) == 0)
                  {
                    *(a1 + 8) = v4;
                    result = r_remove_command_suffixes(a1);
                    if ((result & 0x80000000) == 0)
                    {
                      *(a1 + 8) = v4;
                      result = r_remove_tense_suffixes(a1);
                      if ((result & 0x80000000) == 0)
                      {
                        *(a1 + 8) = v4;
                        return 1;
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

  return result;
}

uint64_t r_fix_ending(uint64_t a1)
{
  if (len_utf8(*a1) < 4)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  *(a1 + 16) = v3;
  *(a1 + 8) = v2;
  *(a1 + 24) = v2;
  if (v2 - 5 > v3)
  {
    v4 = *(*a1 + v2 - 1);
    if (v4 == 164 || v4 == 141)
    {
      if (find_among_b(a1, &a_1_7, 3))
      {
LABEL_6:
        v5 = *(a1 + 8);
        goto LABEL_12;
      }

      v2 = *(a1 + 12);
    }
  }

  *(a1 + 8) = v2;
  *(a1 + 24) = v2;
  if (eq_s_b(a1, 6, &s_14_14))
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 12);
    if (find_among_b(a1, &a_2_7, 3))
    {
LABEL_11:
      v5 = *(a1 + 12) + v8 - v7;
      *(a1 + 8) = v5;
LABEL_12:
      *(a1 + 20) = v5;
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  v9 = *(a1 + 12);
  *(a1 + 8) = v9;
  *(a1 + 24) = v9;
  if (eq_s_b(a1, 12, &s_15_7) || (*(a1 + 8) = *(a1 + 12), eq_s_b(a1, 12, &s_16_3)))
  {
    *(a1 + 20) = *(a1 + 8);
    v10 = &s_17_11;
LABEL_17:
    v11 = a1;
    v12 = 6;
    goto LABEL_18;
  }

  v13 = *(a1 + 12);
  *(a1 + 8) = v13;
  *(a1 + 24) = v13;
  if (eq_s_b(a1, 12, &s_18_7))
  {
    *(a1 + 20) = *(a1 + 8);
    v10 = &s_19_3;
    goto LABEL_17;
  }

  v14 = *(a1 + 12);
  *(a1 + 8) = v14;
  *(a1 + 24) = v14;
  if (eq_s_b(a1, 12, &s_20_4))
  {
    *(a1 + 20) = *(a1 + 8);
    v10 = &s_21_33;
    goto LABEL_17;
  }

  v15 = *(a1 + 12);
  *(a1 + 8) = v15;
  *(a1 + 24) = v15;
  if (eq_s_b(a1, 12, &s_22_15))
  {
    *(a1 + 20) = *(a1 + 8);
    v10 = &s_23_8;
    goto LABEL_17;
  }

  v16 = *(a1 + 12);
  *(a1 + 8) = v16;
  if (*(*(a1 + 48) + 1))
  {
    *(a1 + 24) = v16;
    v17 = eq_s_b(a1, 12, &s_24_4);
    v18 = *(a1 + 12);
    if (v17)
    {
      v19 = *(a1 + 8);
      v20 = eq_s_b(a1, 3, &s_25_2);
      v16 = *(a1 + 12);
      if (!v20)
      {
        v21 = v16 + v19 - v18;
        *(a1 + 8) = v21;
        *(a1 + 20) = v21;
        result = slice_from_s(a1, 6, &s_26_3);
        if ((result & 0x80000000) == 0)
        {
          *(a1 + 20) = *(a1 + 8);
LABEL_19:
          *(a1 + 8) = *(a1 + 16);
          return 1;
        }

        return result;
      }
    }

    else
    {
      v16 = *(a1 + 12);
    }
  }

  *(a1 + 8) = v16;
  *(a1 + 24) = v16;
  if (eq_s_b(a1, 9, &s_27_7) || (*(a1 + 8) = *(a1 + 12), eq_s_b(a1, 15, &s_28_4)))
  {
    *(a1 + 20) = *(a1 + 8);
    v10 = &s_29_2;
LABEL_36:
    v11 = a1;
    v12 = 3;
LABEL_18:
    result = slice_from_s(v11, v12, v10);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  v22 = *(a1 + 12);
  *(a1 + 8) = v22;
  *(a1 + 24) = v22;
  if (eq_s_b(a1, 3, &s_30_10) && find_among_b(a1, &a_3_7, 6) && eq_s_b(a1, 3, &s_31_2) && find_among_b(a1, &a_4_6, 6))
  {
    goto LABEL_6;
  }

  v23 = *(a1 + 12);
  *(a1 + 8) = v23;
  *(a1 + 24) = v23;
  if (eq_s_b(a1, 9, &s_32_8))
  {
    *(a1 + 20) = *(a1 + 8);
    v10 = &s_33_2;
    goto LABEL_36;
  }

  v24 = *(a1 + 12);
  *(a1 + 8) = v24;
  *(a1 + 24) = v24;
  if (eq_s_b(a1, 3, &s_34_15) && find_among_b(a1, &a_5_6, 6))
  {
    goto LABEL_6;
  }

  v25 = *(a1 + 12);
  *(a1 + 8) = v25;
  *(a1 + 24) = v25;
  if (eq_s_b(a1, 3, &s_35_2))
  {
    v26 = *(a1 + 12);
    v27 = *(a1 + 8);
    if (v27 - 2 > *(a1 + 16) && (v28 = *(*a1 + v27 - 1), (v28 & 0xE0) == 0xA0))
    {
      v29 = 0x3D8000u >> v28;
      v30 = *(a1 + 12);
      if (v29)
      {
        if (find_among_b(a1, &a_6_3, 6))
        {
LABEL_53:
          if (eq_s_b(a1, 3, &s_36_8))
          {
            *(a1 + 20) = *(a1 + 8);
            v10 = &s_37_3;
            goto LABEL_36;
          }

          goto LABEL_55;
        }

        v30 = *(a1 + 12);
      }
    }

    else
    {
      v30 = *(a1 + 12);
    }

    *(a1 + 8) = v27 - v26 + v30;
    if (!find_among_b(a1, &a_7_4, 6))
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

LABEL_55:
  v31 = *(a1 + 12);
  *(a1 + 8) = v31;
  *(a1 + 24) = v31;
  if (find_among_b(a1, &a_8_4, 3))
  {
    goto LABEL_6;
  }

  v32 = *(a1 + 12);
  *(a1 + 8) = v32;
  *(a1 + 24) = v32;
  if (eq_s_b(a1, 6, &s_38_4))
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 12);
    if (!find_among_b(a1, &a_9_3, 8))
    {
      goto LABEL_11;
    }
  }

  v33 = *(a1 + 12);
  *(a1 + 8) = v33;
  *(a1 + 24) = v33;
  if (eq_s_b(a1, 6, &s_39_36))
  {
    v35 = *(a1 + 8);
    v34 = *(a1 + 12);
    if (!eq_s_b(a1, 3, &s_40_5))
    {
      v41 = *(a1 + 12) + v35 - v34;
      *(a1 + 8) = v41;
      *(a1 + 20) = v41;
      v10 = &s_41_12;
      goto LABEL_17;
    }
  }

  v36 = *(a1 + 12);
  *(a1 + 8) = v36;
  *(a1 + 24) = v36;
  if (eq_s_b(a1, 6, &s_42_2))
  {
    goto LABEL_6;
  }

  v37 = *(a1 + 12);
  *(a1 + 8) = v37;
  *(a1 + 24) = v37;
  result = eq_s_b(a1, 3, &s_43_11);
  if (result)
  {
    v38 = *(a1 + 12) - *(a1 + 8);
    if (find_among_b(a1, &a_10_1, 8) || (*(a1 + 8) = *(a1 + 12) - v38, result = eq_s_b(a1, 3, &s_44_95), result))
    {
      v39 = *(a1 + 12) - v38;
      *(a1 + 8) = v39;
      *(a1 + 20) = v39;
      v40 = slice_del(a1);
      if (v40 < 0)
      {
        return v40 & (v40 >> 31);
      }

      goto LABEL_19;
    }
  }

  return result;
}

uint64_t r_remove_common_word_endings(uint64_t a1)
{
  **(a1 + 48) = 0;
  if (len_utf8(*a1) < 5)
  {
    return 0;
  }

  v2 = *(a1 + 12);
  *(a1 + 16) = *(a1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 24) = v2;
  if (eq_s_b(a1, 12, &s_56_12))
  {
    goto LABEL_22;
  }

  *(a1 + 8) = *(a1 + 12);
  if (eq_s_b(a1, 15, &s_57_25))
  {
    goto LABEL_22;
  }

  *(a1 + 8) = *(a1 + 12);
  if (eq_s_b(a1, 12, &s_58_3))
  {
    goto LABEL_22;
  }

  *(a1 + 8) = *(a1 + 12);
  if (eq_s_b(a1, 15, &s_59_2))
  {
    goto LABEL_22;
  }

  *(a1 + 8) = *(a1 + 12);
  if (eq_s_b(a1, 9, &s_60_10))
  {
    goto LABEL_22;
  }

  *(a1 + 8) = *(a1 + 12);
  if (eq_s_b(a1, 12, &s_61_44))
  {
    goto LABEL_22;
  }

  *(a1 + 8) = *(a1 + 12);
  if (eq_s_b(a1, 15, &s_62_3))
  {
    goto LABEL_22;
  }

  *(a1 + 8) = *(a1 + 12);
  if (eq_s_b(a1, 12, &s_63_3))
  {
    goto LABEL_22;
  }

  *(a1 + 8) = *(a1 + 12);
  if (eq_s_b(a1, 12, &s_64_6))
  {
    goto LABEL_22;
  }

  *(a1 + 8) = *(a1 + 12);
  if (eq_s_b(a1, 9, &s_65_1))
  {
    goto LABEL_22;
  }

  *(a1 + 8) = *(a1 + 12);
  if (eq_s_b(a1, 15, &s_66_10))
  {
    goto LABEL_22;
  }

  *(a1 + 8) = *(a1 + 12);
  if (eq_s_b(a1, 9, &s_67_3))
  {
    v4 = *(a1 + 8);
    v3 = *(a1 + 12);
    if (!find_among_b(a1, &a_16_0, 8))
    {
      *(a1 + 8) = v4 - v3 + *(a1 + 12);
      goto LABEL_22;
    }
  }

  *(a1 + 8) = *(a1 + 12);
  if (eq_s_b(a1, 6, &s_68_6) || (*(a1 + 8) = *(a1 + 12), eq_s_b(a1, 9, &s_69_3)))
  {
LABEL_22:
    *(a1 + 20) = *(a1 + 8);
    result = slice_from_s(a1, 3, &s_70_7);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_23;
  }

  v5 = *(a1 + 12);
  *(a1 + 8) = v5;
  *(a1 + 24) = v5;
  result = find_among_b(a1, &a_17_0, 13);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
LABEL_23:
      **(a1 + 48) = 1;
      *(a1 + 8) = *(a1 + 16);
      LODWORD(result) = r_fix_endings(a1);
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

uint64_t r_remove_vetrumai_urupukal(uint64_t a1)
{
  **(a1 + 48) = 0;
  *(*(a1 + 48) + 1) = 0;
  if (len_utf8(*a1) < 5)
  {
    return 0;
  }

  v2 = *(a1 + 12);
  *(a1 + 16) = *(a1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 24) = v2;
  if (!eq_s_b(a1, 6, &s_71_3))
  {
    v4 = *(a1 + 12);
    *(a1 + 8) = v4;
    *(a1 + 24) = v4;
    if ((eq_s_b(a1, 9, &s_72_84) || (*(a1 + 8) = *(a1 + 12), eq_s_b(a1, 3, &s_73_8))) && (v6 = *(a1 + 8), v5 = *(a1 + 12), !find_among_b(a1, &a_18_0, 6)) || (*(a1 + 8) = *(a1 + 12), eq_s_b(a1, 3, &s_74_0)) && (v6 = *(a1 + 8), v5 = *(a1 + 12), find_among_b(a1, &a_19_0, 6)) && eq_s_b(a1, 3, &s_75_0))
    {
      v7 = v6 - v5 + *(a1 + 12);
      *(a1 + 8) = v7;
      *(a1 + 20) = v7;
      v8 = &s_76_0;
      goto LABEL_42;
    }

    v9 = *(a1 + 12);
    *(a1 + 8) = v9;
    *(a1 + 24) = v9;
    if (eq_s_b(a1, 9, &s_77_0))
    {
      goto LABEL_41;
    }

    *(a1 + 8) = *(a1 + 12);
    if (eq_s_b(a1, 9, &s_78_0))
    {
      goto LABEL_41;
    }

    *(a1 + 8) = *(a1 + 12);
    if (eq_s_b(a1, 9, &s_79_0))
    {
      goto LABEL_41;
    }

    *(a1 + 8) = *(a1 + 12);
    if (eq_s_b(a1, 9, &s_80_0))
    {
      goto LABEL_41;
    }

    *(a1 + 8) = *(a1 + 12);
    if (eq_s_b(a1, 9, &s_81_0))
    {
      v11 = *(a1 + 8);
      v10 = *(a1 + 12);
      if (!eq_s_b(a1, 3, &s_82_0))
      {
        goto LABEL_40;
      }
    }

    *(a1 + 8) = *(a1 + 12);
    if (eq_s_b(a1, 15, &s_83_0))
    {
      goto LABEL_41;
    }

    *(a1 + 8) = *(a1 + 12);
    if (eq_s_b(a1, 21, &s_84_0))
    {
      goto LABEL_41;
    }

    *(a1 + 8) = *(a1 + 12);
    if (eq_s_b(a1, 9, &s_85_0))
    {
      goto LABEL_41;
    }

    *(a1 + 8) = *(a1 + 12);
    if (len_utf8(*a1) >= 7)
    {
      if (eq_s_b(a1, 12, &s_86_0))
      {
        goto LABEL_41;
      }
    }

    *(a1 + 8) = *(a1 + 12);
    if (eq_s_b(a1, 9, &s_87_0))
    {
      goto LABEL_41;
    }

    *(a1 + 8) = *(a1 + 12);
    if (eq_s_b(a1, 9, &s_88_0))
    {
      goto LABEL_41;
    }

    *(a1 + 8) = *(a1 + 12);
    if (eq_s_b(a1, 12, &s_89_0))
    {
      goto LABEL_41;
    }

    *(a1 + 8) = *(a1 + 12);
    if (eq_s_b(a1, 6, &s_90_0) && (v11 = *(a1 + 8), v10 = *(a1 + 12), !find_among_b(a1, &a_20_0, 8)))
    {
LABEL_40:
      *(a1 + 8) = v11 - v10 + *(a1 + 12);
    }

    else
    {
      *(a1 + 8) = *(a1 + 12);
      if (!eq_s_b(a1, 9, &s_91_0))
      {
        v12 = *(a1 + 12);
        *(a1 + 8) = v12;
        *(a1 + 24) = v12;
        if (eq_s_b(a1, 9, &s_93_0))
        {
          goto LABEL_3;
        }

        *(a1 + 8) = *(a1 + 12);
        if (eq_s_b(a1, 12, &s_94_0))
        {
          goto LABEL_3;
        }

        *(a1 + 8) = *(a1 + 12);
        if (eq_s_b(a1, 12, &s_95_0))
        {
          goto LABEL_3;
        }

        *(a1 + 8) = *(a1 + 12);
        if (eq_s_b(a1, 12, &s_96_0))
        {
          goto LABEL_3;
        }

        *(a1 + 8) = *(a1 + 12);
        if (eq_s_b(a1, 12, &s_97_0))
        {
          goto LABEL_3;
        }

        *(a1 + 8) = *(a1 + 12);
        if (eq_s_b(a1, 12, &s_98_0))
        {
          goto LABEL_3;
        }

        *(a1 + 8) = *(a1 + 12);
        if (eq_s_b(a1, 6, &s_99_0))
        {
          v14 = *(a1 + 8);
          v13 = *(a1 + 12);
          if (!find_among_b(a1, &a_21_0, 8))
          {
            *(a1 + 8) = v14 - v13 + *(a1 + 12);
            goto LABEL_3;
          }
        }

        v15 = *(a1 + 12);
        *(a1 + 8) = v15;
        *(a1 + 24) = v15;
        result = eq_s_b(a1, 3, &s_100_0);
        if (!result)
        {
          return result;
        }

        *(a1 + 20) = *(a1 + 8);
        v8 = &s_101_0;
LABEL_42:
        result = slice_from_s(a1, 3, v8);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_43;
      }
    }

LABEL_41:
    *(a1 + 20) = *(a1 + 8);
    v8 = &s_92_0;
    goto LABEL_42;
  }

LABEL_3:
  *(a1 + 20) = *(a1 + 8);
  result = slice_del(a1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

LABEL_43:
  *(a1 + 8) = *(a1 + 12);
  **(a1 + 48) = 1;
  *(*(a1 + 48) + 1) = 1;
  *(a1 + 24) = *(a1 + 8);
  if (!eq_s_b(a1, 9, &s_102_0) || (*(a1 + 20) = *(a1 + 8), result = slice_from_s(a1, 3, &s_103_0), (result & 0x80000000) == 0))
  {
    *(a1 + 8) = *(a1 + 16);
    LODWORD(result) = r_fix_endings(a1);
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

uint64_t r_remove_plural_suffix(uint64_t a1)
{
  **(a1 + 48) = 0;
  v2 = *(a1 + 12);
  *(a1 + 16) = *(a1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 24) = v2;
  if (eq_s_b(a1, 18, &s_46_31))
  {
    v4 = *(a1 + 8);
    v3 = *(a1 + 12);
    if (!find_among_b(a1, &a_13_0, 6))
    {
      v10 = *(a1 + 12) + v4 - v3;
      *(a1 + 8) = v10;
      *(a1 + 20) = v10;
      v6 = &s_47_25;
      v8 = a1;
      v9 = 3;
LABEL_9:
      result = slice_from_s(v8, v9, v6);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  v5 = *(a1 + 12);
  *(a1 + 8) = v5;
  *(a1 + 24) = v5;
  if (eq_s_b(a1, 15, &s_48_2))
  {
    *(a1 + 20) = *(a1 + 8);
    v6 = &s_49_2;
LABEL_7:
    v8 = a1;
    v9 = 6;
    goto LABEL_9;
  }

  v7 = *(a1 + 12);
  *(a1 + 8) = v7;
  *(a1 + 24) = v7;
  if (eq_s_b(a1, 15, &s_50_6))
  {
    *(a1 + 20) = *(a1 + 8);
    v6 = &s_51_9;
    goto LABEL_7;
  }

  v12 = *(a1 + 12);
  *(a1 + 8) = v12;
  *(a1 + 24) = v12;
  result = eq_s_b(a1, 9, &s_52_3);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
LABEL_10:
      result = 1;
      **(a1 + 48) = 1;
      *(a1 + 8) = *(a1 + 16);
    }
  }

  return result;
}

uint64_t r_remove_command_suffixes(uint64_t a1)
{
  if (len_utf8(*a1) < 5)
  {
    return 0;
  }

  **(a1 + 48) = 0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a1 + 16) = v2;
  *(a1 + 8) = v3;
  *(a1 + 24) = v3;
  if (v3 - 5 <= v2 || *(*a1 + v3 - 1) != 191)
  {
    return 0;
  }

  result = find_among_b(a1, &a_15_0, 2);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      result = 1;
      **(a1 + 48) = 1;
      *(a1 + 8) = *(a1 + 16);
    }
  }

  return result;
}

uint64_t r_remove_tense_suffixes(uint64_t a1)
{
  v1 = 1;
  **(a1 + 48) = 1;
  v2 = *(a1 + 48);
  if (*v2)
  {
    v4 = *(a1 + 8);
    while (1)
    {
      *v2 = 0;
      if (len_utf8(*a1) < 5)
      {
        goto LABEL_80;
      }

      v6 = *(a1 + 8);
      v5 = *(a1 + 12);
      *(a1 + 16) = v6;
      *(a1 + 8) = v5;
      *(a1 + 24) = v5;
      if (v5 - 8 > v6)
      {
        v7 = *(*a1 + v5 - 1);
        if (v7 == 141 || v7 == 129)
        {
          if (find_among_b(a1, &a_22_0, 2))
          {
            goto LABEL_69;
          }

          v5 = *(a1 + 12);
        }
      }

      *(a1 + 8) = v5;
      *(a1 + 24) = v5;
      if (eq_s_b(a1, 12, &s_104_0))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_105_0))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_106_0))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_107))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_108))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_109))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_110))
      {
        v8 = *(a1 + 12);
        v9 = *(a1 + 8);
        if (v9 - 2 <= *(a1 + 16) || (v10 = *(*a1 + v9 - 1), (v10 & 0xE0) != 0x80))
        {
          v12 = *(a1 + 12);
LABEL_67:
          v18 = v9 - v8 + v12;
LABEL_68:
          *(a1 + 8) = v18;
LABEL_69:
          v17 = *(a1 + 8);
          goto LABEL_70;
        }

        v11 = 0x1DC7E0u >> v10;
        v12 = *(a1 + 12);
        if ((v11 & 1) == 0)
        {
          goto LABEL_67;
        }

        v22 = *(a1 + 8);
        v26 = *(a1 + 12);
        if (!find_among_b(a1, &a_23_0, 12))
        {
          v12 = *(a1 + 12);
          v8 = v26;
          LODWORD(v9) = v22;
          goto LABEL_67;
        }
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_111))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_112))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_113))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_114))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 3, &s_115))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 3, &s_116))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 3, &s_117))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 3, &s_118))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 3, &s_119))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_120))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_121))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_122))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 6, &s_123))
      {
        v27 = *(a1 + 12);
        v23 = *(a1 + 8);
        if (!find_among_b(a1, &a_24_0, 8))
        {
          v18 = v23 - v27 + *(a1 + 12);
          goto LABEL_68;
        }
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 15, &s_124))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_125))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_126))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_127))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_128))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_129))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_130))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 6, &s_131))
      {
        goto LABEL_69;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 6, &s_132))
      {
        goto LABEL_69;
      }

      v13 = *(a1 + 12);
      *(a1 + 8) = v13;
      *(a1 + 24) = v13;
      if (eq_s_b(a1, 9, &s_133))
      {
        v28 = *(a1 + 12);
        v24 = *(a1 + 8);
        if (!eq_s_b(a1, 3, &s_134))
        {
          *(a1 + 8) = v24 - v28 + *(a1 + 12);
LABEL_85:
          *(a1 + 20) = *(a1 + 8);
          fixed = slice_from_s(a1, 3, &s_152);
          if ((fixed & 0x80000000) != 0)
          {
            return fixed;
          }

          goto LABEL_71;
        }
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_135))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_136))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_137))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 3, &s_138))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_139))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_140))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_141))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_142))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_143))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_144))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_145))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_146))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_147))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_148))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_149))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 9, &s_150))
      {
        goto LABEL_85;
      }

      *(a1 + 8) = *(a1 + 12);
      if (eq_s_b(a1, 12, &s_151))
      {
        goto LABEL_85;
      }

      v14 = *(a1 + 12);
      *(a1 + 8) = v14;
      *(a1 + 24) = v14;
      if (!eq_s_b(a1, 6, &s_153))
      {
        *(a1 + 8) = *(a1 + 12);
        if (!eq_s_b(a1, 6, &s_154))
        {
          goto LABEL_72;
        }
      }

      v29 = *(a1 + 12);
      v25 = *(a1 + 8);
      v15 = eq_s_b(a1, 3, &s_155);
      v16 = *(a1 + 12);
      if (!v15)
      {
        goto LABEL_73;
      }

      v17 = v16 + v25 - v29;
      *(a1 + 8) = v17;
LABEL_70:
      *(a1 + 20) = v17;
      fixed = slice_del(a1);
      if ((fixed & 0x80000000) != 0)
      {
        return fixed;
      }

LABEL_71:
      **(a1 + 48) = 1;
LABEL_72:
      v16 = *(a1 + 12);
LABEL_73:
      *(a1 + 8) = v16;
      *(a1 + 24) = v16;
      if (v16 - 8 > *(a1 + 16))
      {
        v20 = *(*a1 + v16 - 1);
        if (v20 == 177 || v20 == 141)
        {
          if (find_among_b(a1, &a_25_0, 6))
          {
            *(a1 + 20) = *(a1 + 8);
            fixed = slice_del(a1);
            if ((fixed & 0x80000000) != 0)
            {
              return fixed;
            }

            **(a1 + 48) = 1;
          }
        }
      }

      *(a1 + 8) = *(a1 + 16);
      fixed = r_fix_endings(a1);
      if ((fixed & 0x80000000) != 0)
      {
        return fixed;
      }

LABEL_80:
      *(a1 + 8) = v4;
      v2 = *(a1 + 48);
      if (!*v2)
      {
        return 1;
      }
    }
  }

  return v1;
}

uint64_t r_fix_va_start(_DWORD *a1)
{
  v2 = a1[2];
  eq_s(a1, 6, &s_0_52);
  a1[2] = v2;
  a1[5] = v2;
  if (eq_s(a1, 6, &s_1_47))
  {
    a1[6] = a1[2];
    v3 = &s_2_47;
  }

  else
  {
    a1[2] = v2;
    eq_s(a1, 6, &s_3_93);
    a1[2] = v2;
    a1[5] = v2;
    if (eq_s(a1, 6, &s_4_94))
    {
      a1[6] = a1[2];
      v3 = &s_5_48;
    }

    else
    {
      a1[2] = v2;
      eq_s(a1, 6, &s_6_123);
      a1[2] = v2;
      a1[5] = v2;
      if (eq_s(a1, 6, &s_7_24))
      {
        a1[6] = a1[2];
        v3 = &s_8_100;
      }

      else
      {
        a1[2] = v2;
        eq_s(a1, 6, &s_9_13);
        a1[2] = v2;
        a1[5] = v2;
        result = eq_s(a1, 6, &s_10_32);
        if (!result)
        {
          return result;
        }

        a1[6] = a1[2];
        v3 = &s_11_43;
      }
    }
  }

  result = slice_from_s(a1, 3, v3);
  if ((result & 0x80000000) == 0)
  {
    return 1;
  }

  return result;
}

uint64_t r_fix_endings(uint64_t a1)
{
  v3 = *(a1 + 8);
  do
  {
    fixed = r_fix_ending(a1);
    if (fixed >= 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = fixed;
    }

    v6 = fixed >> 31;
    if (fixed)
    {
      v1 = v5;
      v7 = fixed >> 31;
    }

    else
    {
      v7 = 4;
    }

    if (v7)
    {
      if (v7 == 4)
      {
        *(a1 + 8) = v3;
        return 1;
      }
    }

    else
    {
      v6 = 2;
    }
  }

  while (v6 == 2);
  if (v6)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t indonesian_UTF_8_stem(uint64_t a1)
{
  **(a1 + 40) = 0;
  v2 = *(a1 + 8);
  for (i = out_grouping_U(a1, &g_vowel, 97, 117, 1); (i & 0x80000000) == 0; i = out_grouping_U(a1, &g_vowel, 97, 117, 1))
  {
    *(a1 + 8) += i;
    ++**(a1 + 40);
  }

  *(a1 + 8) = v2;
  v4 = *(a1 + 40);
  if (*v4 < 3)
  {
    return 0;
  }

  v4[1] = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  *(a1 + 16) = v5;
  *(a1 + 8) = v6;
  *(a1 + 24) = v6;
  if (v6 - 2 > v5 && ((v7 = *(*a1 + v6 - 1), v7 == 110) || v7 == 104))
  {
    if (find_among_b(a1, &a_0_8, 3))
    {
      *(a1 + 20) = *(a1 + 8);
      result = slice_del(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v4 = *(a1 + 40);
      --*v4;
      v9 = 1;
    }

    else
    {
      v9 = 0;
      v4 = *(a1 + 40);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 12);
  *(a1 + 8) = v10;
  if (*v4 < 3)
  {
    return 0;
  }

  *(a1 + 24) = v10;
  v11 = v10 - 1;
  if (v11 > *(a1 + 16))
  {
    v12 = *(*a1 + v11);
    if (v12 == 117 || v12 == 97)
    {
      if (find_among_b(a1, &a_1_8, 3))
      {
        *(a1 + 20) = *(a1 + 8);
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v4 = *(a1 + 40);
        --*v4;
      }

      else
      {
        v4 = *(a1 + 40);
      }
    }
  }

  v13 = *(a1 + 12);
  v14 = *(a1 + 16);
  *(a1 + 8) = v14;
  if (*v4 < 3)
  {
    return 0;
  }

  *(a1 + 20) = v14;
  v15 = v14 + 1;
  if (v15 < v13)
  {
    v16 = *(*a1 + v15);
    if (v16 == 105 || v16 == 101)
    {
      among = find_among(a1, &a_3_19, 12);
      if (among)
      {
        *(a1 + 24) = *(a1 + 8);
        if (among <= 3)
        {
          switch(among)
          {
            case 1:
              result = slice_del(a1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v27 = *(a1 + 40);
              v28 = 1;
              break;
            case 2:
              result = slice_del(a1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v27 = *(a1 + 40);
              v28 = 3;
              break;
            case 3:
              *(*(a1 + 40) + 4) = 1;
              v18 = &s_1_48;
              goto LABEL_53;
            default:
              goto LABEL_64;
          }

          v27[1] = v28;
LABEL_58:
          --*v27;
LABEL_64:
          if (**(a1 + 40) < 3)
          {
            goto LABEL_79;
          }

          v33 = *(a1 + 8);
          v32 = *(a1 + 12);
          *(a1 + 16) = v33;
          *(a1 + 8) = v32;
          result = r_remove_suffix(a1);
          if (!result)
          {
            goto LABEL_79;
          }

          if ((result & 0x80000000) == 0)
          {
            *(a1 + 8) = v33;
            if (**(a1 + 40) < 3)
            {
              goto LABEL_79;
            }

            v34 = r_remove_second_order_prefix(a1);
            v35 = v34 >> 31;
            if (!v34)
            {
              v35 = 6;
            }

            if (!v35 || v35 == 6 || ((v36 = v34, v34 >= 0) ? (v37 = v9) : (v37 = v34), v34 ? (result = v37) : (result = v9), (v36 & 0x80000000) == 0))
            {
LABEL_79:
              *(a1 + 8) = v14;
              return 1;
            }
          }

          return result;
        }

        switch(among)
        {
          case 4:
            *(*(a1 + 40) + 4) = 3;
            v18 = &s_2_48;
LABEL_53:
            result = slice_from_s(a1, 1, v18);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v27 = *(a1 + 40);
            goto LABEL_58;
          case 5:
            v29 = *(a1 + 40);
            --*v29;
            v29[1] = 1;
            v30 = *(a1 + 8);
            v31 = in_grouping_U(a1, &g_vowel, 97, 117, 0);
            *(a1 + 8) = v30;
            if (!v31)
            {
              v26 = &s_3_94;
LABEL_63:
              result = slice_from_s(a1, 1, v26);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              goto LABEL_64;
            }

            break;
          case 6:
            v23 = *(a1 + 40);
            --*v23;
            v23[1] = 3;
            v24 = *(a1 + 8);
            v25 = in_grouping_U(a1, &g_vowel, 97, 117, 0);
            *(a1 + 8) = v24;
            if (!v25)
            {
              v26 = &s_4_95;
              goto LABEL_63;
            }

            break;
          default:
            goto LABEL_64;
        }

        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_64;
      }
    }
  }

  *(a1 + 8) = v14;
  result = r_remove_second_order_prefix(a1);
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 8) = v14;
    if (**(a1 + 40) < 3)
    {
      goto LABEL_79;
    }

    *(a1 + 16) = v14;
    *(a1 + 8) = *(a1 + 12);
    v19 = r_remove_suffix(a1);
    v20 = v19 >> 31;
    if (!v19)
    {
      v20 = 8;
    }

    if ((v20 | 8) == 8)
    {
      goto LABEL_79;
    }

    v21 = v19;
    if (v19 >= 0)
    {
      v22 = v9;
    }

    else
    {
      v22 = v19;
    }

    if (v19)
    {
      result = v22;
    }

    else
    {
      result = v9;
    }

    if ((v21 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t r_remove_suffix(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 <= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*a1 + v1 - 1);
  if (v3 != 110 && v3 != 105)
  {
    return 0;
  }

  result = find_among_b(a1, &a_2_23, 3);
  if (result)
  {
    *(a1 + 20) = *(a1 + 8);
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      --**(a1 + 40);
      return 1;
    }
  }

  return result;
}

uint64_t r_remove_second_order_prefix(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = *(a1 + 8);
  *(a1 + 20) = v2;
  v3 = v2 + 1;
  if (v3 >= v1)
  {
    return 0;
  }

  if (*(*a1 + v3) != 101)
  {
    return 0;
  }

  result = find_among(a1, &a_4_17, 6);
  if (!result)
  {
    return result;
  }

  v6 = result;
  *(a1 + 24) = *(a1 + 8);
  result = 1;
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        result = slice_from_s(a1, 4, &s_5_49);
        if ((result & 0x80000000) == 0)
        {
          v7 = *(a1 + 40);
LABEL_20:
          --*v7;
          return 1;
        }
      }

      return result;
    }

    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = *(a1 + 40);
    v8 = 2;
LABEL_19:
    v7[1] = v8;
    goto LABEL_20;
  }

  if (v6 == 3)
  {
    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = *(a1 + 40);
    v8 = 4;
    goto LABEL_19;
  }

  if (v6 == 4)
  {
    result = slice_from_s(a1, 4, &s_6_124);
    if ((result & 0x80000000) == 0)
    {
      v7 = *(a1 + 40);
      v7[1] = 4;
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t r_SUFFIX_I_OK(uint64_t a1)
{
  if (*(*(a1 + 40) + 4) > 2)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if (v1 <= *(a1 + 16) || *(*a1 + v1 - 1) != 115)
  {
    return 1;
  }

  v2 = 0;
  *(a1 + 8) = v1 - 1;
  return v2;
}

BOOL r_KER(uint64_t a1)
{
  v2 = out_grouping_U(a1, &g_vowel, 97, 117, 0);
  result = 0;
  if (!v2)
  {
    return eq_s(a1, 2, &s_0_53) != 0;
  }

  return result;
}

uint64_t italian_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 20) = v2;
  among = find_among(a1, &a_0_9, 7);
  if (among)
  {
    while (1)
    {
      v4 = *(a1 + 8);
      *(a1 + 24) = v4;
      if (among > 3)
      {
        if (among > 5)
        {
          if (among != 6)
          {
            if (among == 7)
            {
              v7 = skip_utf8(*a1, v4, 0, *(a1 + 12), 1);
              if (v7 < 0)
              {
                goto LABEL_20;
              }

              *(a1 + 8) = v7;
            }

            goto LABEL_19;
          }

          v5 = a1;
          v6 = &s_5_50;
        }

        else if (among == 4)
        {
          v5 = a1;
          v6 = &s_3_95;
        }

        else
        {
          v5 = a1;
          v6 = &s_4_96;
        }

        goto LABEL_18;
      }

      if (among == 1)
      {
        break;
      }

      if (among == 2)
      {
        v5 = a1;
        v6 = &s_1_49;
LABEL_18:
        result = slice_from_s(v5, 2, v6);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_19;
      }

      if (among == 3)
      {
        v5 = a1;
        v6 = &s_2_49;
        goto LABEL_18;
      }

LABEL_19:
      *(a1 + 20) = *(a1 + 8);
      among = find_among(a1, &a_0_9, 7);
      if (!among)
      {
        goto LABEL_20;
      }
    }

    v5 = a1;
    v6 = &s_0_54;
    goto LABEL_18;
  }

LABEL_20:
  v9 = v2;
  do
  {
    while (1)
    {
      *(a1 + 8) = v9;
      v10 = in_grouping_U(a1, &g_v_5, 97, 249, 0);
      v11 = *(a1 + 12);
      if (v10)
      {
        v13 = *(a1 + 12);
        break;
      }

      v12 = *(a1 + 8);
      *(a1 + 20) = v12;
      if (v12 != v11 && *(*a1 + v12) == 117)
      {
        *(a1 + 8) = v12 + 1;
        *(a1 + 24) = v12 + 1;
        if (!in_grouping_U(a1, &g_v_5, 97, 249, 0))
        {
          v14 = a1;
          v15 = &s_6_125;
          goto LABEL_30;
        }

        v11 = *(a1 + 12);
      }

      *(a1 + 8) = v12;
      v13 = v12;
      if (v12 == v11)
      {
        break;
      }

      v13 = v11;
      if (*(*a1 + v12) != 105)
      {
        break;
      }

      *(a1 + 8) = v12 + 1;
      *(a1 + 24) = v12 + 1;
      if (in_grouping_U(a1, &g_v_5, 97, 249, 0))
      {
        v13 = *(a1 + 12);
        break;
      }

      v14 = a1;
      v15 = &s_7_25;
LABEL_30:
      result = slice_from_s(v14, 1, v15);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    *(a1 + 8) = v9;
    v9 = skip_utf8(*a1, v9, 0, v13, 1);
  }

  while ((v9 & 0x80000000) == 0);
  *(a1 + 8) = v2;
  v16 = *(a1 + 12);
  v17 = *(a1 + 40);
  *v17 = v16;
  v17[1] = v16;
  v17[2] = *(a1 + 12);
  v18 = *(a1 + 8);
  if (!in_grouping_U(a1, &g_v_5, 97, 249, 0))
  {
    if ((v19 = *(a1 + 8), !out_grouping_U(a1, &g_v_5, 97, 249, 0)) && (v22 = out_grouping_U(a1, &g_v_5, 97, 249, 1), (v22 & 0x80000000) == 0) || (*(a1 + 8) = v19, !in_grouping_U(a1, &g_v_5, 97, 249, 0)) && (v22 = in_grouping_U(a1, &g_v_5, 97, 249, 1), (v22 & 0x80000000) == 0))
    {
LABEL_49:
      v21 = *(a1 + 8) + v22;
      goto LABEL_50;
    }
  }

  *(a1 + 8) = v18;
  if (!out_grouping_U(a1, &g_v_5, 97, 249, 0))
  {
    v20 = *(a1 + 8);
    if (!out_grouping_U(a1, &g_v_5, 97, 249, 0))
    {
      v22 = out_grouping_U(a1, &g_v_5, 97, 249, 1);
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }
    }

    *(a1 + 8) = v20;
    if (!in_grouping_U(a1, &g_v_5, 97, 249, 0))
    {
      v21 = skip_utf8(*a1, *(a1 + 8), 0, *(a1 + 12), 1);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_50:
        **(a1 + 40) = v21;
      }
    }
  }

  *(a1 + 8) = v18;
  v23 = out_grouping_U(a1, &g_v_5, 97, 249, 1);
  if ((v23 & 0x80000000) == 0)
  {
    *(a1 + 8) += v23;
    v24 = in_grouping_U(a1, &g_v_5, 97, 249, 1);
    if ((v24 & 0x80000000) == 0)
    {
      v25 = *(a1 + 8) + v24;
      *(a1 + 8) = v25;
      *(*(a1 + 40) + 4) = v25;
      v26 = out_grouping_U(a1, &g_v_5, 97, 249, 1);
      if ((v26 & 0x80000000) == 0)
      {
        *(a1 + 8) += v26;
        v27 = in_grouping_U(a1, &g_v_5, 97, 249, 1);
        if ((v27 & 0x80000000) == 0)
        {
          *(*(a1 + 40) + 8) = *(a1 + 8) + v27;
        }
      }
    }
  }

  *(a1 + 16) = v18;
  v28 = *(a1 + 12);
  *(a1 + 8) = v28;
  *(a1 + 24) = v28;
  v29 = v28 - 1;
  if (v29 <= v18 || (v30 = *(*a1 + v29), (v30 & 0xE0) != 0x60) || ((0x8222u >> v30) & 1) == 0 || !find_among_b(a1, &a_2_8, 37) || (v31 = *(a1 + 8), *(a1 + 20) = v31, v32 = v31 - 1, v32 <= *(a1 + 16)) || (v33 = *(*a1 + v32), v33 != 114) && v33 != 111 || (v34 = find_among_b(a1, &a_3_8, 5)) == 0 || **(a1 + 40) > *(a1 + 8))
  {
LABEL_70:
    v35 = *(a1 + 12);
    *(a1 + 8) = v35;
    *(a1 + 24) = v35;
    among_b = find_among_b(a1, &a_6_4, 51);
    if (!among_b)
    {
      v38 = *(a1 + 40);
      goto LABEL_83;
    }

    v37 = *(a1 + 8);
    *(a1 + 20) = v37;
    if (among_b <= 4)
    {
      if (among_b <= 2)
      {
        if (among_b != 1)
        {
          if (among_b != 2)
          {
            goto LABEL_87;
          }

          v38 = *(a1 + 40);
          if (v38[2] > v37)
          {
            goto LABEL_83;
          }

          result = slice_del(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          *(a1 + 24) = *(a1 + 8);
          v40 = &s_11_44;
          goto LABEL_127;
        }

        v38 = *(a1 + 40);
        v61 = v38[2];
LABEL_136:
        if (v61 <= v37)
        {
          goto LABEL_137;
        }

        goto LABEL_83;
      }

      if (among_b == 3)
      {
        v38 = *(a1 + 40);
        if (v38[2] > v37)
        {
          goto LABEL_83;
        }

        v58 = &s_12_12;
        v59 = a1;
        v60 = 3;
      }

      else
      {
        v38 = *(a1 + 40);
        if (v38[2] > v37)
        {
          goto LABEL_83;
        }

        v58 = &s_13_38;
        v59 = a1;
        v60 = 1;
      }
    }

    else
    {
      if (among_b > 6)
      {
        if (among_b != 7)
        {
          if (among_b == 8)
          {
            v38 = *(a1 + 40);
            if (v38[2] <= v37)
            {
              result = slice_del(a1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v68 = *(a1 + 8);
              *(a1 + 24) = v68;
              v69 = v68 - 1;
              if (v69 <= *(a1 + 16))
              {
                goto LABEL_87;
              }

              v70 = *(*a1 + v69);
              if ((v70 & 0xE0) != 0x60 || ((0x401008u >> v70) & 1) == 0 || !find_among_b(a1, &a_5_7, 3))
              {
                goto LABEL_87;
              }

LABEL_128:
              v57 = *(a1 + 8);
              *(a1 + 20) = v57;
              if (*(*(a1 + 40) + 8) <= v57)
              {
LABEL_137:
                result = slice_del(a1);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

LABEL_87:
              v44 = *(a1 + 12);
              *(a1 + 8) = v44;
              *(a1 + 24) = v44;
              if (in_grouping_b_U(a1, &g_AEIO, 97, 242, 0))
              {
                goto LABEL_95;
              }

              v45 = *(a1 + 8);
              *(a1 + 20) = v45;
              if (**(a1 + 40) > v45)
              {
                goto LABEL_95;
              }

              result = slice_del(a1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v46 = *(a1 + 8);
              *(a1 + 24) = v46;
              if (v46 <= *(a1 + 16) || *(*a1 + v46 - 1) != 105 || (*(a1 + 8) = v46 - 1, *(a1 + 20) = v46 - 1, **(a1 + 40) >= v46))
              {
LABEL_95:
                v48 = *(a1 + 12);
                *(a1 + 8) = v48;
                v47 = v48;
              }

              else
              {
                result = slice_del(a1);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                LODWORD(v48) = *(a1 + 8);
                v47 = *(a1 + 12);
              }

              *(a1 + 24) = v48;
              if (v48 > *(a1 + 16) && *(*a1 + v48 - 1) == 104)
              {
                v49 = v48 - 1;
                *(a1 + 8) = v49;
                *(a1 + 20) = v49;
                if (!in_grouping_b_U(a1, &g_CG, 99, 103, 0) && **(a1 + 40) <= *(a1 + 8))
                {
                  result = slice_del(a1);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }

                v47 = *(a1 + 12);
              }

              v50 = *(a1 + 16);
              *(a1 + 8) = v50;
              v51 = v50;
              while (1)
              {
                *(a1 + 20) = v51;
                if (v51 < v47 && ((v52 = *(*a1 + v51), v52 == 73) || v52 == 85))
                {
                  v53 = find_among(a1, &a_1_9, 3);
                  if (!v53)
                  {
                    goto LABEL_119;
                  }

                  v51 = *(a1 + 8);
                  *(a1 + 24) = v51;
                  if (v53 == 1)
                  {
                    v55 = a1;
                    v56 = &s_8_101;
LABEL_117:
                    result = slice_from_s(v55, 1, v56);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    goto LABEL_114;
                  }

                  if (v53 == 2)
                  {
                    v55 = a1;
                    v56 = &s_9_14;
                    goto LABEL_117;
                  }

                  if (v53 != 3)
                  {
                    goto LABEL_114;
                  }

                  v47 = *(a1 + 12);
                }

                else
                {
                  *(a1 + 24) = v51;
                }

                v54 = skip_utf8(*a1, v51, 0, v47, 1);
                if (v54 < 0)
                {
LABEL_119:
                  *(a1 + 8) = v50;
                  return 1;
                }

                *(a1 + 8) = v54;
LABEL_114:
                v51 = *(a1 + 8);
                v47 = *(a1 + 12);
              }
            }
          }

          else
          {
            if (among_b != 9)
            {
              goto LABEL_87;
            }

            v38 = *(a1 + 40);
            if (v38[2] <= v37)
            {
              result = slice_del(a1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              *(a1 + 24) = *(a1 + 8);
              if (!eq_s_b(a1, 2, &s_16_8))
              {
                goto LABEL_87;
              }

              v39 = *(a1 + 8);
              *(a1 + 20) = v39;
              if (*(*(a1 + 40) + 8) > v39)
              {
                goto LABEL_87;
              }

              result = slice_del(a1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              *(a1 + 24) = *(a1 + 8);
              v40 = &s_17_13;
              goto LABEL_127;
            }
          }

LABEL_83:
          v41 = *(a1 + 12);
          *(a1 + 8) = v41;
          v42 = *v38;
          if (v41 >= v42)
          {
            v43 = *(a1 + 16);
            *(a1 + 16) = v42;
            *(a1 + 24) = v41;
            if (find_among_b(a1, &a_7_5, 87))
            {
              *(a1 + 20) = *(a1 + 8);
              result = slice_del(a1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            *(a1 + 16) = v43;
          }

          goto LABEL_87;
        }

        v38 = *(a1 + 40);
        if (v38[1] > v37)
        {
          goto LABEL_83;
        }

        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v62 = *(a1 + 8);
        *(a1 + 24) = v62;
        v63 = v62 - 1;
        if (v63 <= *(a1 + 16))
        {
          goto LABEL_87;
        }

        v64 = *(*a1 + v63);
        if ((v64 & 0xE0) != 0x60)
        {
          goto LABEL_87;
        }

        if (((0x481008u >> v64) & 1) == 0)
        {
          goto LABEL_87;
        }

        v65 = find_among_b(a1, &a_4_7, 4);
        if (!v65)
        {
          goto LABEL_87;
        }

        v66 = *(a1 + 8);
        *(a1 + 20) = v66;
        if (*(*(a1 + 40) + 8) > v66)
        {
          goto LABEL_87;
        }

        v67 = v65;
        result = slice_del(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v67 != 1)
        {
          goto LABEL_87;
        }

        *(a1 + 24) = *(a1 + 8);
        v40 = &s_15_8;
LABEL_127:
        if (!eq_s_b(a1, 2, v40))
        {
          goto LABEL_87;
        }

        goto LABEL_128;
      }

      if (among_b != 5)
      {
        v38 = *(a1 + 40);
        v61 = *v38;
        goto LABEL_136;
      }

      v38 = *(a1 + 40);
      if (v38[2] > v37)
      {
        goto LABEL_83;
      }

      v58 = &s_14_15;
      v59 = a1;
      v60 = 4;
    }

    result = slice_from_s(v59, v60, v58);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_87;
  }

  if (v34 == 2)
  {
    result = slice_from_s(a1, 1, &s_10_33);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_70;
  }

  if (v34 != 1)
  {
    goto LABEL_70;
  }

  result = slice_del(a1);
  if ((result & 0x80000000) == 0)
  {
    goto LABEL_70;
  }

  return result;
}

uint64_t porter_UTF_8_stem(uint64_t a1)
{
  **(a1 + 48) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  *(a1 + 20) = v3;
  if (v3 != v2 && *(*a1 + v3) == 121)
  {
    *(a1 + 8) = v3 + 1;
    *(a1 + 24) = v3 + 1;
    result = slice_from_s(a1, 1, &s_21_34);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    **(a1 + 48) = 1;
  }

  *(a1 + 8) = v3;
  v5 = v3;
  while (1)
  {
    while (1)
    {
      if (in_grouping_U(a1, &g_v_6, 97, 121, 0))
      {
        v6 = *a1;
        v7 = *(a1 + 12);
        break;
      }

      v8 = *(a1 + 8);
      v7 = *(a1 + 12);
      *(a1 + 20) = v8;
      v6 = *a1;
      if (v8 == v7)
      {
        v7 = v8;
        break;
      }

      if (*(v6 + v8) != 121)
      {
        break;
      }

      *(a1 + 24) = v8 + 1;
      *(a1 + 8) = v5;
      result = slice_from_s(a1, 1, &s_22_16);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      **(a1 + 48) = 1;
      v5 = *(a1 + 8);
    }

    *(a1 + 8) = v5;
    v9 = skip_utf8(v6, v5, 0, v7, 1);
    if ((v9 & 0x80000000) != 0)
    {
      break;
    }

    v5 = v9;
    *(a1 + 8) = v9;
  }

  *(a1 + 8) = v3;
  v10 = *(a1 + 12);
  v11 = *(a1 + 40);
  *v11 = v10;
  v11[1] = v10;
  v12 = *(a1 + 8);
  v13 = out_grouping_U(a1, &g_v_6, 97, 121, 1);
  if ((v13 & 0x80000000) == 0)
  {
    *(a1 + 8) += v13;
    v14 = in_grouping_U(a1, &g_v_6, 97, 121, 1);
    if ((v14 & 0x80000000) == 0)
    {
      v15 = *(a1 + 8) + v14;
      *(a1 + 8) = v15;
      **(a1 + 40) = v15;
      v16 = out_grouping_U(a1, &g_v_6, 97, 121, 1);
      if ((v16 & 0x80000000) == 0)
      {
        *(a1 + 8) += v16;
        v17 = in_grouping_U(a1, &g_v_6, 97, 121, 1);
        if ((v17 & 0x80000000) == 0)
        {
          *(*(a1 + 40) + 4) = *(a1 + 8) + v17;
        }
      }
    }
  }

  *(a1 + 16) = v12;
  v18 = *(a1 + 12);
  *(a1 + 8) = v18;
  *(a1 + 24) = v18;
  if (v18 <= v12)
  {
    goto LABEL_31;
  }

  if (*(*a1 + v18 - 1) != 115)
  {
    goto LABEL_31;
  }

  among_b = find_among_b(a1, &a_0_10, 4);
  if (!among_b)
  {
    goto LABEL_31;
  }

  *(a1 + 20) = *(a1 + 8);
  if (among_b == 3)
  {
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    return result;
  }

  if (among_b != 2)
  {
    if (among_b == 1)
    {
      v20 = &s_0_55;
      v21 = a1;
      v22 = 2;
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v20 = &s_1_50;
  v21 = a1;
  v22 = 1;
LABEL_28:
  result = slice_from_s(v21, v22, v20);
  if ((result & 0x80000000) == 0)
  {
LABEL_31:
    v23 = *(a1 + 16);
    v24 = *(a1 + 12);
    *(a1 + 8) = v24;
    *(a1 + 24) = v24;
    v25 = v24 - 1;
    if (v25 > v23)
    {
      v26 = *(*a1 + v25);
      if (v26 == 103 || v26 == 100)
      {
        v27 = find_among_b(a1, &a_2_9, 3);
        if (v27)
        {
          v28 = *(a1 + 8);
          *(a1 + 20) = v28;
          if (v27 != 2)
          {
            if (v27 == 1 && **(a1 + 40) <= v28)
            {
              result = slice_from_s(a1, 2, &s_2_50);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            goto LABEL_57;
          }

          v29 = *(a1 + 12);
          if ((out_grouping_b_U(a1, &g_v_6, 97, 121, 1) & 0x80000000) == 0)
          {
            *(a1 + 8) = v28 - v29 + *(a1 + 12);
            result = slice_del(a1);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v30 = *(a1 + 12);
            v31 = *(a1 + 8);
            if (v31 - 1 <= *(a1 + 16) || (v32 = *(*a1 + v31 - 1), (v32 & 0xE0) != 0x60) || ((0x41570D4u >> v32) & 1) == 0)
            {
LABEL_45:
              if (v31 == **(a1 + 40) && r_shortv(a1))
              {
                v33 = v31 - v30;
                v34 = *(a1 + 12);
                v35 = v34 + v31 - v30;
                *(a1 + 8) = v35;
                result = insert_s(a1, v34 + v33, v34 + v33, 1, &s_4_97);
                *(a1 + 8) = v35;
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              goto LABEL_57;
            }

            v36 = find_among_b(a1, &a_1_10, 13);
            if (v36)
            {
              v37 = v31 - v30;
              v30 = *(a1 + 12);
              LODWORD(v31) = v30 + v37;
              *(a1 + 8) = v30 + v37;
              if (v36 != 3)
              {
                if (v36 == 2)
                {
                  *(a1 + 24) = v31;
                  v38 = skip_utf8(*a1, (v30 + v37), *(a1 + 16), 0, -1);
                  if ((v38 & 0x80000000) == 0)
                  {
                    *(a1 + 8) = v38;
                    *(a1 + 20) = v38;
                    result = slice_del(a1);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }
                  }
                }

                else if (v36 == 1)
                {
                  result = insert_s(a1, v30 + v37, v30 + v37, 1, &s_3_96);
                  *(a1 + 8) = v31;
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }

                goto LABEL_57;
              }

              goto LABEL_45;
            }
          }
        }
      }
    }

LABEL_57:
    v39 = *(a1 + 16);
    v40 = *(a1 + 12);
    *(a1 + 8) = v40;
    *(a1 + 24) = v40;
    if (v40 <= v39 || (*(*a1 + v40 - 1) | 0x20) != 0x79 || (v41 = v40 - 1, *(a1 + 8) = v41, *(a1 + 20) = v41, v42 = out_grouping_b_U(a1, &g_v_6, 97, 121, 1), v42 < 0) || (*(a1 + 8) -= v42, result = slice_from_s(a1, 1, &s_5_51), (result & 0x80000000) == 0))
    {
      v43 = *(a1 + 16);
      v44 = *(a1 + 12);
      *(a1 + 8) = v44;
      *(a1 + 24) = v44;
      if (v44 - 2 > v43)
      {
        v45 = *(*a1 + v44 - 1);
        if (v45 & 0xE0) == 0x60 && ((0xC7200u >> v45))
        {
          v46 = find_among_b(a1, &a_3_9, 20);
          if (v46)
          {
            v47 = *(a1 + 8);
            *(a1 + 20) = v47;
            if (**(a1 + 40) <= v47)
            {
              switch(v46)
              {
                case 1:
                  v48 = &s_6_126;
                  goto LABEL_76;
                case 2:
                  v48 = &s_7_87;
                  goto LABEL_76;
                case 3:
                  v48 = &s_8_102;
                  goto LABEL_76;
                case 4:
                  v48 = &s_9_15;
LABEL_76:
                  v49 = a1;
                  v50 = 4;
                  goto LABEL_81;
                case 5:
                  v48 = &s_10_34;
                  goto LABEL_80;
                case 6:
                  v48 = &s_11_45;
                  v49 = a1;
                  v50 = 1;
                  goto LABEL_81;
                case 7:
                  v48 = &s_12_13;
                  goto LABEL_80;
                case 8:
                  v48 = &s_13_39;
                  goto LABEL_80;
                case 9:
                  v48 = &s_14_16;
                  v49 = a1;
                  v50 = 2;
                  goto LABEL_81;
                case 10:
                  v48 = &s_15_9;
                  goto LABEL_80;
                case 11:
                  v48 = &s_16_9;
                  goto LABEL_80;
                case 12:
                  v48 = &s_17_14;
                  goto LABEL_80;
                case 13:
                  v48 = &s_18_8;
LABEL_80:
                  v49 = a1;
                  v50 = 3;
LABEL_81:
                  result = slice_from_s(v49, v50, v48);
                  if ((result & 0x80000000) == 0)
                  {
                    break;
                  }

                  return result;
                default:
                  break;
              }
            }
          }
        }
      }

      *(a1 + 8) = *(a1 + 12);
      result = r_Step_3(a1);
      if ((result & 0x80000000) == 0)
      {
        *(a1 + 8) = *(a1 + 12);
        result = r_Step_4(a1);
        if ((result & 0x80000000) == 0)
        {
          *(a1 + 8) = *(a1 + 12);
          result = r_Step_5a(a1);
          if ((result & 0x80000000) == 0)
          {
            *(a1 + 8) = *(a1 + 12);
            result = r_Step_5b(a1);
            if ((result & 0x80000000) == 0)
            {
              v51 = *(a1 + 16);
              *(a1 + 8) = v51;
              if (**(a1 + 48))
              {
                do
                {
                  v52 = *(a1 + 8);
                  while (1)
                  {
                    *(a1 + 20) = v52;
                    v53 = *(a1 + 12);
                    v54 = *a1;
                    if (v52 != v53 && *(v54 + v52) == 89)
                    {
                      break;
                    }

                    v55 = skip_utf8(v54, v52, 0, v53, 1);
                    if ((v55 & 0x80000000) != 0)
                    {
                      goto LABEL_94;
                    }

                    v52 = v55;
                    *(a1 + 8) = v55;
                  }

                  *(a1 + 24) = v52 + 1;
                  *(a1 + 8) = v52;
                  result = slice_from_s(a1, 1, &s_23_12);
                }

                while ((result & 0x80000000) == 0);
              }

              else
              {
LABEL_94:
                *(a1 + 8) = v51;
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t r_Step_3(uint64_t a1)
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

  result = find_among_b(a1, &a_4_8, 7);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 8);
  *(a1 + 20) = v5;
  if (**(a1 + 40) > v5)
  {
    return 0;
  }

  if (result == 3)
  {
    result = slice_del(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    return 1;
  }

  if (result != 2)
  {
    if (result == 1)
    {
      v6 = &s_19_6;
      goto LABEL_14;
    }

    return 1;
  }

  v6 = &s_20_8;
LABEL_14:
  result = slice_from_s(a1, 2, v6);
  if ((result & 0x80000000) == 0)
  {
    return 1;
  }

  return result;
}

uint64_t r_Step_4(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  v2 = v1 - 1;
  if (v2 <= *(a1 + 16))
  {
    return 0;
  }

  v4 = *(*a1 + v2);
  if ((v4 & 0xE0) != 0x60 || ((0x3C7228u >> v4) & 1) == 0)
  {
    return 0;
  }

  result = find_among_b(a1, &a_5_8, 19);
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

uint64_t r_Step_5a(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  if (v1 <= *(a1 + 16))
  {
    return 0;
  }

  if (*(*a1 + v1 - 1) != 101)
  {
    return 0;
  }

  v3 = v1 - 1;
  *(a1 + 8) = v1 - 1;
  *(a1 + 20) = v1 - 1;
  v4 = *(a1 + 40);
  if (v4[1] < v1)
  {
    goto LABEL_4;
  }

  if (*v4 >= v1)
  {
    return 0;
  }

  v6 = *(a1 + 12);
  if (r_shortv(a1))
  {
    return 0;
  }

  *(a1 + 8) = v3 - v6 + *(a1 + 12);
LABEL_4:
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

uint64_t r_Step_5b(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 24) = v1;
  v2 = *(a1 + 16);
  if (v1 <= v2)
  {
    return 0;
  }

  v3 = *a1;
  if (*(*a1 + v1 - 1) != 108)
  {
    return 0;
  }

  v4 = v1 - 1;
  *(a1 + 8) = v1 - 1;
  *(a1 + 20) = v1 - 1;
  v5 = *(*(a1 + 40) + 4) >= v1 || v4 <= v2;
  if (v5 || *(v3 + v4 - 1) != 108)
  {
    return 0;
  }

  *(a1 + 8) = v1 - 2;
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

uint64_t danish_UTF_8_stem(uint64_t a1)
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
    if ((out_grouping_U(a1, &g_v_7, 97, 248, 1) & 0x80000000) == 0)
    {
      v6 = in_grouping_U(a1, &g_v_7, 97, 248, 1);
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
    if (v9 > v10 && (v11 = *(*a1 + v9 - 1), (v11 & 0xE0) == 0x60) && ((0x1C4030u >> v11) & 1) != 0 && (among_b = find_among_b(a1, &a_0_11, 32)) != 0)
    {
      v13 = *(a1 + 8);
      *(a1 + 16) = v3;
      *(a1 + 20) = v13;
      if (among_b == 2)
      {
        if (in_grouping_b_U(a1, &g_s_ending, 97, 229, 0))
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

    else
    {
      *(a1 + 16) = v3;
    }
  }

LABEL_16:
  *(a1 + 8) = *(a1 + 12);
  result = r_consonant_pair(a1);
  if ((result & 0x80000000) == 0)
  {
    v15 = *(a1 + 12);
    *(a1 + 8) = v15;
    *(a1 + 24) = v15;
    if (!eq_s_b(a1, 2, &s_0_56) || (*(a1 + 20) = *(a1 + 8), !eq_s_b(a1, 2, &s_1_51)) || (result = slice_del(a1), (result & 0x80000000) == 0))
    {
      v16 = *(a1 + 12);
      *(a1 + 8) = v16;
      v17 = **(a1 + 40);
      if (v16 >= v17)
      {
        v18 = *(a1 + 16);
        *(a1 + 16) = v17;
        *(a1 + 24) = v16;
        v19 = v16 - 1;
        if (v19 > v17 && (v20 = *(*a1 + v19), (v20 & 0xE0) == 0x60) && ((0x180080u >> v20) & 1) != 0 && (v21 = find_among_b(a1, &a_2_10, 5)) != 0)
        {
          v22 = *(a1 + 8);
          *(a1 + 16) = v18;
          *(a1 + 20) = v22;
          if (v21 == 2)
          {
            result = slice_from_s(a1, 4, &s_2_51);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          else if (v21 == 1)
          {
            result = slice_del(a1);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = r_consonant_pair(a1);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }

        else
        {
          *(a1 + 16) = v18;
        }
      }

      v23 = *(a1 + 12);
      *(a1 + 8) = v23;
      v24 = **(a1 + 40);
      if (v23 < v24)
      {
LABEL_34:
        *(a1 + 8) = *(a1 + 16);
        return 1;
      }

      v25 = *(a1 + 16);
      *(a1 + 16) = v24;
      *(a1 + 24) = v23;
      if (in_grouping_b_U(a1, &g_c, 98, 122, 0))
      {
        *(a1 + 16) = v25;
        goto LABEL_34;
      }

      *(a1 + 20) = *(a1 + 8);
      **(a1 + 32) = slice_to(a1, **(a1 + 32));
      v26 = **(a1 + 32);
      if (!v26)
      {
        return 0xFFFFFFFFLL;
      }

      *(a1 + 16) = v25;
      if (!eq_v_b(a1, v26))
      {
        goto LABEL_34;
      }

      result = slice_del(a1);
      if ((result & 0x80000000) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  return result;
}

uint64_t r_consonant_pair(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = **(a1 + 40);
  if (v1 < v2)
  {
    return 0;
  }

  v6 = *(a1 + 12);
  v5 = *(a1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  v7 = v1 - 1;
  if (v7 <= v2 || (*(*a1 + v7) | 0x10) != 0x74)
  {
    result = 0;
    goto LABEL_11;
  }

  result = find_among_b(a1, &a_1_11, 4);
  if (!result)
  {
LABEL_11:
    *(a1 + 16) = v5;
    return result;
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  *(a1 + 16) = v5;
  *(a1 + 20) = v8;
  v10 = (v9 + v1 - v6);
  *(a1 + 8) = v10;
  v11 = skip_utf8(*a1, v10, v5, 0, -1);
  if (v11 < 0)
  {
    return 0;
  }

  *(a1 + 8) = v11;
  *(a1 + 20) = v11;
  v12 = slice_del(a1);
  if (v12 >= 0)
  {
    return 1;
  }

  else
  {
    return v12 & (v12 >> 31);
  }
}

uint64_t hindi_UTF_8_stem(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = skip_utf8(*a1, *(a1 + 8), 0, *(a1 + 12), 1);
  if (v3 < 0)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  *v4 = v3;
  *(a1 + 16) = v2;
  v5 = *(a1 + 12);
  *(a1 + 8) = v5;
  v6 = *v4;
  if (v5 < v6)
  {
    return 0;
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  result = find_among_b(a1, &a_0_24, 132);
  if (result)
  {
    v8 = *(a1 + 8);
    *(a1 + 16) = v2;
    *(a1 + 20) = v8;
    result = slice_del(a1);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 8) = *(a1 + 16);
      return 1;
    }
  }

  else
  {
    *(a1 + 16) = v2;
  }

  return result;
}

uint64_t french_UTF_8_stem(uint64_t a1)
{
  v94 = *(a1 + 8);
  v2 = v94;
  while (2)
  {
    v95 = v2 + 1;
    v3 = v2 + 1;
    v4 = v2 + 2;
    while (1)
    {
      if (!in_grouping_U(a1, &g_v_8, 97, 251, 0))
      {
        v6 = *(a1 + 8);
        v5 = *(a1 + 12);
        *(a1 + 20) = v6;
        if (v6 != v5)
        {
          if (*(*a1 + v6) == 117)
          {
            *(a1 + 8) = v6 + 1;
            *(a1 + 24) = v6 + 1;
            if (!in_grouping_U(a1, &g_v_8, 97, 251, 0))
            {
              v7 = a1;
              v8 = 1;
              v9 = &s_0_132;
              goto LABEL_32;
            }

            v5 = *(a1 + 12);
          }

          *(a1 + 8) = v6;
          if (v6 != v5)
          {
            if (*(*a1 + v6) == 105)
            {
              *(a1 + 8) = v6 + 1;
              *(a1 + 24) = v6 + 1;
              if (!in_grouping_U(a1, &g_v_8, 97, 251, 0))
              {
                v7 = a1;
                v8 = 1;
                v9 = &s_1_52;
                goto LABEL_32;
              }

              v5 = *(a1 + 12);
            }

            *(a1 + 8) = v6;
            if (v6 != v5 && *(*a1 + v6) == 121)
            {
              *(a1 + 8) = v6 + 1;
              *(a1 + 24) = v6 + 1;
              v7 = a1;
              v8 = 1;
              v9 = &s_2_52;
              goto LABEL_32;
            }
          }
        }
      }

      *(a1 + 8) = v2;
      *(a1 + 20) = v2;
      if (eq_s(a1, 2, &s_3_97))
      {
        *(a1 + 24) = *(a1 + 8);
        v7 = a1;
        v8 = 2;
        v9 = &s_4_98;
        goto LABEL_32;
      }

      *(a1 + 8) = v2;
      *(a1 + 20) = v2;
      if (eq_s(a1, 2, &s_5_52))
      {
        *(a1 + 24) = *(a1 + 8);
        v7 = a1;
        v8 = 2;
        v9 = &s_6_127;
        goto LABEL_32;
      }

      *(a1 + 8) = v2;
      *(a1 + 20) = v2;
      v10 = *(a1 + 12);
      v11 = *a1;
      if (v2 == v10)
      {
        v10 = v2;
        goto LABEL_24;
      }

      if (*(v11 + v2) != 121)
      {
        goto LABEL_24;
      }

      *(a1 + 8) = v95;
      *(a1 + 24) = v95;
      if (in_grouping_U(a1, &g_v_8, 97, 251, 0))
      {
        break;
      }

      v7 = a1;
      v8 = 1;
      v9 = &s_7_88;
LABEL_32:
      v12 = slice_from_s(v7, v8, v9);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      *(a1 + 8) = v2;
    }

    v10 = *(a1 + 12);
    v11 = *a1;
LABEL_24:
    *(a1 + 8) = v2;
    if (v2 != v10 && *(v11 + v2) == 113)
    {
      *(a1 + 8) = v3;
      *(a1 + 20) = v3;
      if (v3 != v10 && *(v11 + v3) == 117)
      {
        *(a1 + 8) = v4;
        *(a1 + 24) = v4;
        v7 = a1;
        v8 = 1;
        v9 = &s_8_103;
        goto LABEL_32;
      }
    }

    *(a1 + 8) = v2;
    v13 = skip_utf8(v11, v2, 0, v10, 1);
    if ((v13 & 0x80000000) == 0)
    {
      v2 = v13;
      *(a1 + 8) = v13;
      continue;
    }

    break;
  }

  *(a1 + 8) = v94;
  v14 = *(a1 + 12);
  v15 = *(a1 + 40);
  *v15 = v14;
  v15[1] = v14;
  v15[2] = *(a1 + 12);
  v16 = *(a1 + 8);
  if (in_grouping_U(a1, &g_v_8, 97, 251, 0) || in_grouping_U(a1, &g_v_8, 97, 251, 0) || (v21 = skip_utf8(*a1, *(a1 + 8), 0, *(a1 + 12), 1), v21 < 0))
  {
    *(a1 + 8) = v16;
    v17 = v16 + 2;
    v18 = *(a1 + 12);
    v19 = *a1;
    if (v17 < v18)
    {
      v20 = *(v19 + v17);
      if (v20 & 0xE0) == 0x60 && ((0x51000u >> v20))
      {
        if (find_among(a1, &a_0_12, 3))
        {
          v21 = *(a1 + 8);
          goto LABEL_49;
        }

        v19 = *a1;
        v18 = *(a1 + 12);
      }
    }

    *(a1 + 8) = v16;
    v22 = skip_utf8(v19, v16, 0, v18, 1);
    if ((v22 & 0x80000000) == 0)
    {
      *(a1 + 8) = v22;
      v23 = out_grouping_U(a1, &g_v_8, 97, 251, 1);
      if ((v23 & 0x80000000) == 0)
      {
        v21 = *(a1 + 8) + v23;
        goto LABEL_49;
      }
    }
  }

  else
  {
LABEL_49:
    **(a1 + 40) = v21;
  }

  *(a1 + 8) = v16;
  v24 = out_grouping_U(a1, &g_v_8, 97, 251, 1);
  if ((v24 & 0x80000000) == 0)
  {
    *(a1 + 8) += v24;
    v25 = in_grouping_U(a1, &g_v_8, 97, 251, 1);
    if ((v25 & 0x80000000) == 0)
    {
      v26 = *(a1 + 8) + v25;
      *(a1 + 8) = v26;
      *(*(a1 + 40) + 4) = v26;
      v27 = out_grouping_U(a1, &g_v_8, 97, 251, 1);
      if ((v27 & 0x80000000) == 0)
      {
        *(a1 + 8) += v27;
        v28 = in_grouping_U(a1, &g_v_8, 97, 251, 1);
        if ((v28 & 0x80000000) == 0)
        {
          *(*(a1 + 40) + 8) = *(a1 + 8) + v28;
        }
      }
    }
  }

  *(a1 + 16) = v16;
  v29 = *(a1 + 12);
  *(a1 + 8) = v29;
  *(a1 + 24) = v29;
  among_b = find_among_b(a1, &a_4_9, 43);
  if (among_b)
  {
    v31 = *(a1 + 8);
    *(a1 + 20) = v31;
    switch(among_b)
    {
      case 1:
        if (*(*(a1 + 40) + 8) > v31)
        {
          break;
        }

        goto LABEL_197;
      case 2:
        if (*(*(a1 + 40) + 8) > v31)
        {
          break;
        }

        v12 = slice_del(a1);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        *(a1 + 24) = *(a1 + 8);
        if (!eq_s_b(a1, 2, &s_14_17))
        {
          goto LABEL_198;
        }

        v40 = *(a1 + 8);
        *(a1 + 20) = v40;
        if (*(*(a1 + 40) + 8) <= v40)
        {
          goto LABEL_197;
        }

        v34 = &s_15_10;
        goto LABEL_129;
      case 3:
        if (*(*(a1 + 40) + 8) > v31)
        {
          break;
        }

        v34 = &s_16_10;
        goto LABEL_129;
      case 4:
        if (*(*(a1 + 40) + 8) > v31)
        {
          break;
        }

        v34 = &s_17_15;
        goto LABEL_75;
      case 5:
        if (*(*(a1 + 40) + 8) > v31)
        {
          break;
        }

        v34 = &s_18_9;
        goto LABEL_129;
      case 6:
        if (**(a1 + 40) > v31)
        {
          break;
        }

        v12 = slice_del(a1);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        *(a1 + 24) = *(a1 + 8);
        v41 = find_among_b(a1, &a_2_11, 6);
        if (!v41)
        {
          goto LABEL_198;
        }

        v42 = *(a1 + 8);
        *(a1 + 20) = v42;
        if (v41 > 2)
        {
          if (v41 != 3)
          {
            if (v41 != 4 || **(a1 + 40) > v42)
            {
              goto LABEL_198;
            }

            v34 = &s_21_35;
LABEL_75:
            v36 = a1;
            v37 = 1;
            goto LABEL_130;
          }
        }

        else
        {
          if (v41 != 1)
          {
            if (v41 != 2)
            {
              goto LABEL_198;
            }

            v43 = *(a1 + 40);
            if (*(v43 + 8) <= v42)
            {
              goto LABEL_197;
            }

            if (*(v43 + 4) > v42)
            {
              goto LABEL_198;
            }

            v34 = &s_20_9;
LABEL_129:
            v36 = a1;
            v37 = 3;
LABEL_130:
            v12 = slice_from_s(v36, v37, v34);
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            goto LABEL_198;
          }

          if (*(*(a1 + 40) + 8) > v42)
          {
            goto LABEL_198;
          }

          v12 = slice_del(a1);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          *(a1 + 24) = *(a1 + 8);
          if (!eq_s_b(a1, 2, &s_19_7))
          {
            goto LABEL_198;
          }

          v42 = *(a1 + 8);
          *(a1 + 20) = v42;
        }

LABEL_196:
        if (*(*(a1 + 40) + 8) > v42)
        {
          goto LABEL_198;
        }

        goto LABEL_197;
      case 7:
        if (*(*(a1 + 40) + 8) > v31)
        {
          break;
        }

        v12 = slice_del(a1);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v46 = *(a1 + 8);
        *(a1 + 24) = v46;
        v47 = v46 - 1;
        if (v47 <= *(a1 + 16))
        {
          goto LABEL_198;
        }

        v48 = *(*a1 + v47);
        if ((v48 & 0xE0) != 0x60)
        {
          goto LABEL_198;
        }

        if (((0x401008u >> v48) & 1) == 0)
        {
          goto LABEL_198;
        }

        v49 = find_among_b(a1, &a_3_10, 3);
        if (!v49)
        {
          goto LABEL_198;
        }

        v42 = *(a1 + 8);
        *(a1 + 20) = v42;
        switch(v49)
        {
          case 3:
            goto LABEL_196;
          case 2:
            if (*(*(a1 + 40) + 8) > v42)
            {
              v34 = &s_23_13;
              goto LABEL_129;
            }

            break;
          case 1:
            if (*(*(a1 + 40) + 8) > v42)
            {
              v34 = &s_22_17;
              goto LABEL_129;
            }

            break;
          default:
            goto LABEL_198;
        }

LABEL_197:
        v12 = slice_del(a1);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        goto LABEL_198;
      case 8:
        if (*(*(a1 + 40) + 8) > v31)
        {
          break;
        }

        v12 = slice_del(a1);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        *(a1 + 24) = *(a1 + 8);
        if (!eq_s_b(a1, 2, &s_24_8))
        {
          goto LABEL_198;
        }

        v38 = *(a1 + 8);
        *(a1 + 20) = v38;
        if (*(*(a1 + 40) + 8) > v38)
        {
          goto LABEL_198;
        }

        v12 = slice_del(a1);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        *(a1 + 24) = *(a1 + 8);
        if (!eq_s_b(a1, 2, &s_25_6))
        {
          goto LABEL_198;
        }

        v39 = *(a1 + 8);
        *(a1 + 20) = v39;
        if (*(*(a1 + 40) + 8) <= v39)
        {
          goto LABEL_197;
        }

        v34 = &s_26_4;
        goto LABEL_129;
      case 9:
        v34 = &s_27_8;
        goto LABEL_129;
      case 10:
        if (*(*(a1 + 40) + 4) > v31)
        {
          break;
        }

        v34 = &s_28_5;
        v36 = a1;
        v37 = 2;
        goto LABEL_130;
      case 11:
        v50 = *(a1 + 40);
        if (*(v50 + 8) <= v31)
        {
          goto LABEL_197;
        }

        if (*(v50 + 4) > v31)
        {
          break;
        }

        v34 = &s_29_3;
        goto LABEL_129;
      case 12:
        if (*(*(a1 + 40) + 4) > v31 || out_grouping_b_U(a1, &g_v_8, 97, 251, 0))
        {
          break;
        }

        goto LABEL_197;
      case 13:
        if (**(a1 + 40) > v31)
        {
          break;
        }

        v35 = &s_30_11;
        goto LABEL_100;
      case 14:
        if (**(a1 + 40) > v31)
        {
          break;
        }

        v35 = &s_31_3;
LABEL_100:
        v33 = slice_from_s(a1, 3, v35);
        goto LABEL_101;
      case 15:
        v32 = *(a1 + 12);
        if (in_grouping_b_U(a1, &g_v_8, 97, 251, 0) || **(a1 + 40) > *(a1 + 8))
        {
          break;
        }

        *(a1 + 8) = v31 - v32 + *(a1 + 12);
        v33 = slice_del(a1);
LABEL_101:
        if (v33 >= 0)
        {
          v44 = 1;
        }

        else
        {
          v44 = v33 & (v33 >> 31);
        }

        if ((v33 & 0x80000000) == 0)
        {
          goto LABEL_120;
        }

        v45 = 1;
        goto LABEL_159;
      default:
        goto LABEL_198;
    }
  }

  LODWORD(v44) = 1;
LABEL_120:
  v51 = *(a1 + 12);
  v52 = *(a1 + 16);
  *(a1 + 8) = v51;
  v53 = *(a1 + 40);
  v54 = *v53;
  if (v51 < *v53)
  {
LABEL_147:
    *(a1 + 8) = v51;
    v60 = *v53;
    if (v51 < v60)
    {
LABEL_154:
      *(a1 + 8) = v51;
      *(a1 + 24) = v51;
      if (v51 > v52 && *(*a1 + v51 - 1) == 115)
      {
        v63 = v51 - 1;
        *(a1 + 8) = v63;
        *(a1 + 20) = v63;
        if (eq_s_b(a1, 2, &s_32_9) || (*(a1 + 8) = *(a1 + 12) - 1, !out_grouping_b_U(a1, &g_keep_with_s, 97, 232, 0)))
        {
          *(a1 + 8) = *(a1 + 12) - 1;
          v12 = slice_del(a1);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          v51 = *(a1 + 8);
        }

        else
        {
          v51 = *(a1 + 12);
          *(a1 + 8) = v51;
        }
      }

      v66 = **(a1 + 40);
      if (v51 < v66)
      {
        goto LABEL_204;
      }

      v67 = *(a1 + 16);
      *(a1 + 16) = v66;
      *(a1 + 24) = v51;
      if (v51 > v66)
      {
        v68 = *(*a1 + v51 - 1);
        if (v68 & 0xE0) == 0x60 && ((0x44020u >> v68))
        {
          v69 = find_among_b(a1, &a_7_6, 6);
          if (v69)
          {
            v70 = *(a1 + 8);
            *(a1 + 20) = v70;
            if (v69 == 3)
            {
              goto LABEL_181;
            }

            if (v69 == 2)
            {
              v12 = slice_from_s(a1, 1, &s_33_3);
              if ((v12 & 0x80000000) != 0)
              {
                return v12;
              }

              goto LABEL_191;
            }

            if (v69 == 1 && *(*(a1 + 40) + 8) <= v70 && v70 > *(a1 + 16) && *(*a1 + v70 - 1) - 115 <= 1)
            {
              *(a1 + 8) = v70 - 1;
LABEL_181:
              v12 = slice_del(a1);
              if ((v12 & 0x80000000) != 0)
              {
                return v12;
              }
            }
          }
        }
      }

LABEL_191:
      *(a1 + 16) = v67;
      goto LABEL_204;
    }

    *(a1 + 16) = v60;
    *(a1 + 24) = v51;
    v61 = find_among_b(a1, &a_6_5, 38);
    if (!v61)
    {
LABEL_153:
      *(a1 + 16) = v52;
      v51 = *(a1 + 12);
      goto LABEL_154;
    }

    v62 = *(a1 + 8);
    *(a1 + 20) = v62;
    if (v61 == 3)
    {
      v12 = slice_del(a1);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v64 = *(a1 + 8);
      *(a1 + 24) = v64;
      if (v64 <= *(a1 + 16) || *(*a1 + v64 - 1) != 101)
      {
        goto LABEL_166;
      }

      v65 = v64 - 1;
      *(a1 + 8) = v65;
      *(a1 + 20) = v65;
    }

    else if (v61 != 2)
    {
      if (v61 != 1)
      {
LABEL_166:
        *(a1 + 16) = v52;
        goto LABEL_198;
      }

      if (*(*(a1 + 40) + 8) > v62)
      {
        goto LABEL_153;
      }
    }

    v12 = slice_del(a1);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    goto LABEL_166;
  }

  *(a1 + 16) = v54;
  *(a1 + 24) = v51;
  if (v51 <= v54)
  {
    goto LABEL_133;
  }

  v55 = *(*a1 + v51 - 1);
  if ((v55 & 0xE0) != 0x60 || ((0x41C0222u >> v55) & 1) == 0)
  {
    goto LABEL_133;
  }

  v56 = find_among_b(a1, &a_5_9, 35);
  if (!v56)
  {
    goto LABEL_134;
  }

  v57 = *(a1 + 8);
  *(a1 + 20) = v57;
  if (v57 > *(a1 + 16) && *(*a1 + v57 - 1) == 72)
  {
    v56 = 0;
    *(a1 + 8) = v57 - 1;
    goto LABEL_134;
  }

  if (out_grouping_b_U(a1, &g_v_8, 97, 251, 0))
  {
LABEL_133:
    v56 = 0;
    goto LABEL_134;
  }

  v56 = slice_del(a1);
  if ((v56 & 0x80000000) == 0)
  {
    v56 = 1;
LABEL_134:
    *(a1 + 16) = v52;
  }

  v45 = v56 >> 31;
  if (v56 >= 0)
  {
    v58 = v44;
  }

  else
  {
    v58 = v56;
  }

  if (v56)
  {
    v59 = v56 >> 31;
  }

  else
  {
    v59 = 4;
  }

  if (v56)
  {
    v44 = v58;
  }

  else
  {
    v44 = v44;
  }

  if (!v59)
  {
    goto LABEL_198;
  }

  if (v59 == 4)
  {
    v53 = *(a1 + 40);
    v51 = *(a1 + 12);
    v52 = *(a1 + 16);
    goto LABEL_147;
  }

LABEL_159:
  if (!v45)
  {
LABEL_198:
    v71 = *(a1 + 16);
    v72 = *(a1 + 12);
    *(a1 + 8) = v72;
    *(a1 + 24) = v72;
    if (v72 > v71 && *(*a1 + v72 - 1) == 89)
    {
      v73 = v72 - 1;
      *(a1 + 8) = v73;
      *(a1 + 20) = v73;
      v74 = &s_37_4;
      goto LABEL_203;
    }

    if (eq_s_b(a1, 2, &s_38_5))
    {
      *(a1 + 20) = *(a1 + 8);
      v74 = &s_39_37;
LABEL_203:
      v12 = slice_from_s(a1, 1, v74);
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_204;
      }

      return v12;
    }

LABEL_204:
    v75 = *(a1 + 16);
    v76 = *(a1 + 12);
    *(a1 + 8) = v76;
    if (v76 - 2 > v75)
    {
      v77 = *(*a1 + v76 - 1);
      if (v77 & 0xE0) == 0x60 && ((0x105000u >> v77))
      {
        if (find_among_b(a1, &a_8_5, 5))
        {
          v78 = *(a1 + 12);
          v79 = *(a1 + 16);
          *(a1 + 8) = v78;
          *(a1 + 24) = v78;
          v80 = skip_utf8(*a1, v78, v79, 0, -1);
          if ((v80 & 0x80000000) == 0)
          {
            *(a1 + 8) = v80;
            *(a1 + 20) = v80;
            v12 = slice_del(a1);
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }
          }
        }
      }
    }

    *(a1 + 8) = *(a1 + 12);
    v81 = 2;
    do
    {
      --v81;
    }

    while (!out_grouping_b_U(a1, &g_v_8, 97, 251, 0));
    if (v81 <= 0)
    {
      v82 = *(a1 + 8);
      v83 = *(a1 + 12);
      *(a1 + 24) = v82;
      if (eq_s_b(a1, 2, &s_34_16) || (*(a1 + 8) = v82 - v83 + *(a1 + 12), eq_s_b(a1, 2, &s_35_3)))
      {
        *(a1 + 20) = *(a1 + 8);
        v12 = slice_from_s(a1, 1, &s_36_9);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }
      }
    }

    v84 = *(a1 + 12);
    v85 = *(a1 + 16);
    *(a1 + 8) = v85;
    v86 = v85;
    while (1)
    {
      *(a1 + 20) = v86;
      if (v86 < v84 && (v87 = *(*a1 + v86), (v87 & 0xE0) == 0x40) && ((0x2200300u >> v87) & 1) != 0)
      {
        among = find_among(a1, &a_1_12, 7);
        if (!among)
        {
LABEL_244:
          *(a1 + 8) = v85;
          return 1;
        }

        v86 = *(a1 + 8);
        *(a1 + 24) = v86;
        if (among <= 3)
        {
          switch(among)
          {
            case 1:
              v90 = a1;
              v91 = 1;
              v92 = &s_9_16;
              break;
            case 2:
              v90 = a1;
              v91 = 1;
              v92 = &s_10_35;
              break;
            case 3:
              v90 = a1;
              v91 = 1;
              v92 = &s_11_46;
              break;
            default:
              goto LABEL_223;
          }

          goto LABEL_241;
        }

        if (among <= 5)
        {
          if (among == 4)
          {
            v90 = a1;
            v91 = 2;
            v92 = &s_12_14;
          }

          else
          {
            v90 = a1;
            v91 = 2;
            v92 = &s_13_40;
          }

LABEL_241:
          v12 = slice_from_s(v90, v91, v92);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          goto LABEL_223;
        }

        if (among == 6)
        {
          v12 = slice_del(a1);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          goto LABEL_223;
        }

        if (among != 7)
        {
          goto LABEL_223;
        }

        v84 = *(a1 + 12);
      }

      else
      {
        *(a1 + 24) = v86;
      }

      v88 = skip_utf8(*a1, v86, 0, v84, 1);
      if (v88 < 0)
      {
        goto LABEL_244;
      }

      *(a1 + 8) = v88;
LABEL_223:
      v86 = *(a1 + 8);
      v84 = *(a1 + 12);
    }
  }

  return v44;
}

uint64_t arabic_UTF_8_stem(uint64_t a1)
{
  **(a1 + 48) = 1;
  *(*(a1 + 48) + 1) = 1;
  *(*(a1 + 48) + 2) = 0;
  v2 = *(a1 + 12);
  v3 = *(a1 + 8);
  *(a1 + 20) = v3;
  if (v3 + 3 >= v2)
  {
    goto LABEL_10;
  }

  v4 = *(*a1 + v3 + 3);
  if (v4 != 167 && v4 != 132)
  {
    goto LABEL_10;
  }

  among = find_among(a1, &a_3_11, 4);
  if (!among)
  {
    goto LABEL_10;
  }

  *(a1 + 24) = *(a1 + 8);
  if (among != 2)
  {
    if (among != 1)
    {
      LODWORD(v6) = 1;
      goto LABEL_11;
    }

    if (len_utf8(*a1) > 4)
    {
      goto LABEL_8;
    }

LABEL_10:
    LODWORD(v6) = 0;
    goto LABEL_11;
  }

  if (len_utf8(*a1) < 4)
  {
    goto LABEL_10;
  }

LABEL_8:
  LODWORD(v6) = 1;
  **(a1 + 48) = 1;
  *(*(a1 + 48) + 1) = 0;
  *(*(a1 + 48) + 2) = 1;
LABEL_11:
  *(a1 + 8) = v3;
  for (i = v3; ; i = *(a1 + 8))
  {
    *(a1 + 20) = i;
    v8 = find_among(a1, &a_0_13, 144);
    if (v8)
    {
      *(a1 + 24) = *(a1 + 8);
      switch(v8)
      {
        case 1:
          v9 = slice_del(a1);
          if ((v9 & 0x80000000) != 0)
          {
            return v9;
          }

          continue;
        case 2:
          v11 = &s_0_133;
          goto LABEL_56;
        case 3:
          v11 = &s_1_53;
          goto LABEL_56;
        case 4:
          v11 = &s_2_53;
          goto LABEL_56;
        case 5:
          v11 = &s_3_98;
          goto LABEL_56;
        case 6:
          v11 = &s_4_99;
          goto LABEL_56;
        case 7:
          v11 = &s_5_53;
          goto LABEL_56;
        case 8:
          v11 = &s_6_128;
          goto LABEL_56;
        case 9:
          v11 = &s_7_89;
          goto LABEL_56;
        case 10:
          v11 = &s_8_104;
          goto LABEL_56;
        case 11:
          v11 = &s_9_17;
LABEL_56:
          v12 = a1;
          v13 = 1;
          goto LABEL_71;
        case 12:
          v11 = &s_10_36;
          goto LABEL_70;
        case 13:
          v11 = &s_11_47;
          goto LABEL_70;
        case 14:
          v11 = &s_12_15;
          goto LABEL_70;
        case 15:
          v11 = &s_13_41;
          goto LABEL_70;
        case 16:
          v11 = &s_14_18;
          goto LABEL_70;
        case 17:
          v11 = &s_15_11;
          goto LABEL_70;
        case 18:
          v11 = &s_16_11;
          goto LABEL_70;
        case 19:
          v11 = &s_17_16;
          goto LABEL_70;
        case 20:
          v11 = &s_18_10;
          goto LABEL_70;
        case 21:
          v11 = &s_19_8;
          goto LABEL_70;
        case 22:
          v11 = &s_20_10;
          goto LABEL_70;
        case 23:
          v11 = &s_21_36;
          goto LABEL_70;
        case 24:
          v11 = &s_22_18;
          goto LABEL_70;
        case 25:
          v11 = &s_23_14;
          goto LABEL_70;
        case 26:
          v11 = &s_24_9;
          goto LABEL_70;
        case 27:
          v11 = &s_25_7;
          goto LABEL_70;
        case 28:
          v11 = &s_26_5;
          goto LABEL_70;
        case 29:
          v11 = &s_27_9;
          goto LABEL_70;
        case 30:
          v11 = &s_28_6;
          goto LABEL_70;
        case 31:
          v11 = &s_29_4;
          goto LABEL_70;
        case 32:
          v11 = &s_30_12;
          goto LABEL_70;
        case 33:
          v11 = &s_31_4;
          goto LABEL_70;
        case 34:
          v11 = &s_32_10;
          goto LABEL_70;
        case 35:
          v11 = &s_33_4;
          goto LABEL_70;
        case 36:
          v11 = &s_34_17;
          goto LABEL_70;
        case 37:
          v11 = &s_35_4;
          goto LABEL_70;
        case 38:
          v11 = &s_36_10;
          goto LABEL_70;
        case 39:
          v11 = &s_37_5;
          goto LABEL_70;
        case 40:
          v11 = &s_38_6;
          goto LABEL_70;
        case 41:
          v11 = &s_39_38;
          goto LABEL_70;
        case 42:
          v11 = &s_40_6;
          goto LABEL_70;
        case 43:
          v11 = &s_41_13;
          goto LABEL_70;
        case 44:
          v11 = &s_42_3;
          goto LABEL_70;
        case 45:
          v11 = &s_43_12;
          goto LABEL_70;
        case 46:
          v11 = &s_44_96;
          goto LABEL_70;
        case 47:
          v11 = &s_45_2;
LABEL_70:
          v12 = a1;
          v13 = 2;
          goto LABEL_71;
        case 48:
          v11 = &s_46_32;
          goto LABEL_33;
        case 49:
          v11 = &s_47_26;
          goto LABEL_33;
        case 50:
          v11 = &s_48_3;
          goto LABEL_33;
        case 51:
          v11 = &s_49_3;
LABEL_33:
          v12 = a1;
          v13 = 4;
LABEL_71:
          v9 = slice_from_s(v12, v13, v11);
          if ((v9 & 0x80000000) == 0)
          {
            continue;
          }

          return v9;
        default:
          continue;
      }
    }

    *(a1 + 8) = i;
    v10 = skip_utf8(*a1, i, 0, *(a1 + 12), 1);
    if (v10 < 0)
    {
      break;
    }

    *(a1 + 8) = v10;
  }

  *(a1 + 16) = v3;
  *(a1 + 8) = *(a1 + 12);
  if (!*(*(a1 + 48) + 1))
  {
    goto LABEL_118;
  }

  v15 = *(a1 + 8);
  v14 = *(a1 + 12);
  *(a1 + 24) = v15;
  among_b = find_among_b(a1, &a_17_1, 12);
  if (among_b)
  {
    v17 = 1;
    while (1)
    {
      *(a1 + 20) = *(a1 + 8);
      if (among_b == 3)
      {
        break;
      }

      if (among_b == 2)
      {
        if (len_utf8(*a1) < 5)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }

      if (among_b == 1)
      {
        if (len_utf8(*a1) < 4)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }

LABEL_85:
      --v17;
      v15 = *(a1 + 8);
      v14 = *(a1 + 12);
      *(a1 + 24) = v15;
      among_b = find_among_b(a1, &a_17_1, 12);
      if (!among_b)
      {
LABEL_86:
        v18 = v17 > 0;
        goto LABEL_88;
      }
    }

    if (len_utf8(*a1) < 6)
    {
      goto LABEL_86;
    }

LABEL_84:
    v9 = slice_del(a1);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    goto LABEL_85;
  }

  v18 = 1;
LABEL_88:
  v19 = v15 - v14;
  v20 = *(a1 + 12);
  *(a1 + 8) = v15 - v14 + v20;
  if (v18)
  {
LABEL_89:
    *(a1 + 8) = v20;
    *(a1 + 24) = v20;
    if (v20 - 3 > *(a1 + 16))
    {
      v21 = *(*a1 + v20 - 1);
      if (v21 == 167 || v21 == 133)
      {
        if (find_among_b(a1, &a_19_1, 2))
        {
          *(a1 + 20) = *(a1 + 8);
          if (len_utf8(*a1) >= 5)
          {
            LODWORD(v22) = slice_del(a1);
            v23 = v22;
            if (v22 >= 0)
            {
              v22 = v6;
            }

            else
            {
              v22 = v22;
            }

            if (v23 < 0)
            {
              goto LABEL_231;
            }

LABEL_243:
            LODWORD(v6) = v22;
            goto LABEL_252;
          }
        }
      }
    }

    *(a1 + 8) = *(a1 + 12);
    v22 = r_Suffix_Verb_Step2a(a1);
    if (v22)
    {
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_252;
      }

      goto LABEL_231;
    }

LABEL_118:
    v31 = *(a1 + 12);
    *(a1 + 8) = v31;
    if (!**(a1 + 48))
    {
      goto LABEL_244;
    }

    *(a1 + 24) = v31;
    v32 = v31 - 1;
    if (v32 > *(a1 + 16) && *(*a1 + v32) == 169)
    {
      if (find_among_b(a1, &a_15_1, 1))
      {
        *(a1 + 20) = *(a1 + 8);
        if (len_utf8(*a1) >= 4)
        {
          LODWORD(v22) = slice_del(a1);
          v33 = v22;
          if (v22 >= 0)
          {
            v22 = v6;
          }

          else
          {
            v22 = v22;
          }

          if ((v33 & 0x80000000) == 0)
          {
LABEL_234:
            LODWORD(v6) = v22;
            goto LABEL_235;
          }

          goto LABEL_229;
        }
      }
    }

    v34 = *(a1 + 12);
    *(a1 + 8) = v34;
    if (*(*(a1 + 48) + 2))
    {
      goto LABEL_129;
    }

    *(a1 + 24) = v34;
    v52 = find_among_b(a1, &a_10_2, 10);
    if (!v52)
    {
      goto LABEL_129;
    }

    *(a1 + 20) = *(a1 + 8);
    switch(v52)
    {
      case 3:
        if (len_utf8(*a1) < 6)
        {
          goto LABEL_129;
        }

        break;
      case 2:
        if (len_utf8(*a1) < 5)
        {
          goto LABEL_129;
        }

        break;
      case 1:
        if (len_utf8(*a1) < 4)
        {
          goto LABEL_129;
        }

        break;
      default:
        goto LABEL_194;
    }

    v9 = slice_del(a1);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

LABEL_194:
    v58 = *(a1 + 8);
    v57 = *(a1 + 12);
    v59 = r_Suffix_Noun_Step2a(a1);
    v41 = v59 >> 31;
    if (v59 >= 0)
    {
      v60 = v6;
    }

    else
    {
      v60 = v59;
    }

    if (v59)
    {
      v61 = v59 >> 31;
    }

    else
    {
      v61 = 18;
    }

    if (v59)
    {
      v6 = v60;
    }

    else
    {
      v6 = v6;
    }

    if (!v61)
    {
      goto LABEL_235;
    }

    if (v61 != 18)
    {
      goto LABEL_341;
    }

    v62 = v57 - v58;
    *(a1 + 8) = *(a1 + 12) - v62;
    v63 = r_Suffix_Noun_Step2b(a1);
    v41 = v63 >> 31;
    if (v63 >= 0)
    {
      v64 = v6;
    }

    else
    {
      v64 = v63;
    }

    if (v63)
    {
      v65 = v63 >> 31;
    }

    else
    {
      v65 = 20;
    }

    if (v63)
    {
      v6 = v64;
    }

    else
    {
      v6 = v6;
    }

    if (!v65)
    {
      goto LABEL_235;
    }

    if (v65 != 20)
    {
      goto LABEL_341;
    }

    *(a1 + 8) = *(a1 + 12) - v62;
    v66 = r_Suffix_Noun_Step2c1(a1);
    v41 = v66 >> 31;
    if (v66 >= 0)
    {
      v67 = v6;
    }

    else
    {
      v67 = v66;
    }

    if (v66)
    {
      v68 = v66 >> 31;
    }

    else
    {
      v68 = 21;
    }

    if (v66)
    {
      v6 = v67;
    }

    else
    {
      v6 = v6;
    }

    if (!v68)
    {
      goto LABEL_235;
    }

    if (v68 != 21)
    {
      goto LABEL_341;
    }

    v69 = *(a1 + 16);
    v70 = (*(a1 + 12) - v62);
    *(a1 + 8) = v70;
    v56 = skip_utf8(*a1, v70, v69, 0, -1);
    if ((v56 & 0x80000000) == 0)
    {
LABEL_188:
      *(a1 + 8) = v56;
      goto LABEL_235;
    }

LABEL_129:
    v35 = *(a1 + 16);
    v36 = *(a1 + 12);
    *(a1 + 8) = v36;
    *(a1 + 24) = v36;
    v37 = v36 - 1;
    if (v37 > v35 && *(*a1 + v37) == 134)
    {
      if (find_among_b(a1, &a_11_2, 1))
      {
        *(a1 + 20) = *(a1 + 8);
        if (len_utf8(*a1) >= 6)
        {
          LODWORD(v22) = slice_del(a1);
          v33 = v22;
          if (v22 >= 0)
          {
            v22 = v6;
          }

          else
          {
            v22 = v22;
          }

          if ((v33 & 0x80000000) != 0)
          {
LABEL_229:
            v51 = v33 >> 31;
LABEL_230:
            if (v51)
            {
LABEL_231:
              v71 = 1;
              goto LABEL_232;
            }

            goto LABEL_234;
          }

          v39 = *(a1 + 8);
          v38 = *(a1 + 12);
          v40 = r_Suffix_Noun_Step2a(a1);
          v41 = v40 >> 31;
          if (v40 >= 0)
          {
            v42 = v6;
          }

          else
          {
            v42 = v40;
          }

          if (v40)
          {
            v43 = v40 >> 31;
          }

          else
          {
            v43 = 23;
          }

          if (v40)
          {
            v44 = v42;
          }

          else
          {
            v44 = v6;
          }

          if (!v43)
          {
            LODWORD(v6) = v44;
            goto LABEL_235;
          }

          if (v43 == 23)
          {
            v45 = v38 - v39;
            *(a1 + 8) = *(a1 + 12) - v45;
            v46 = r_Suffix_Noun_Step2b(a1);
            v41 = v46 >> 31;
            if (v46 >= 0)
            {
              v47 = v44;
            }

            else
            {
              v47 = v46;
            }

            if (v46)
            {
              v48 = v46 >> 31;
            }

            else
            {
              v48 = 25;
            }

            if (v46)
            {
              v6 = v47;
            }

            else
            {
              v6 = v44;
            }

            if (!v48)
            {
              goto LABEL_235;
            }

            if (v48 == 25)
            {
              *(a1 + 8) = *(a1 + 12) - v45;
              v49 = r_Suffix_Noun_Step2c1(a1);
              if (v49)
              {
                v44 = v49;
                if ((v49 & 0x80000000) == 0)
                {
                  goto LABEL_235;
                }

                v41 = v49 >> 31;
                goto LABEL_340;
              }

              goto LABEL_162;
            }

            v44 = v6;
          }

LABEL_340:
          v6 = v44;
LABEL_341:
          if (v41)
          {
            return v6;
          }

          goto LABEL_235;
        }
      }
    }

LABEL_162:
    v50 = *(a1 + 12);
    *(a1 + 8) = v50;
    if (!*(*(a1 + 48) + 2))
    {
      v53 = r_Suffix_Noun_Step2a(a1);
      v51 = v53 >> 31;
      if (v53 >= 0)
      {
        v54 = v6;
      }

      else
      {
        v54 = v53;
      }

      if (v53)
      {
        v55 = v53 >> 31;
      }

      else
      {
        v55 = 27;
      }

      if (v53)
      {
        v6 = v54;
      }

      else
      {
        v6 = v6;
      }

      if (!v55)
      {
        goto LABEL_235;
      }

      if (v55 != 27)
      {
        v22 = v6;
        goto LABEL_230;
      }

      v50 = *(a1 + 12);
    }

    *(a1 + 8) = v50;
    v22 = r_Suffix_Noun_Step2b(a1);
    if (v22)
    {
      if ((v22 & 0x80000000) != 0)
      {
        v51 = v22 >> 31;
        goto LABEL_230;
      }

LABEL_235:
      v72 = *(a1 + 8);
      *(a1 + 24) = v72;
      v73 = v72 - 1;
      if (v73 > *(a1 + 16) && *(*a1 + v73) == 138)
      {
        if (find_among_b(a1, &a_16_1, 1))
        {
          *(a1 + 20) = *(a1 + 8);
          if (len_utf8(*a1) >= 3)
          {
            LODWORD(v22) = slice_del(a1);
            v74 = v22;
            if (v22 >= 0)
            {
              v22 = v6;
            }

            else
            {
              v22 = v22;
            }

            if ((v74 & 0x80000000) != 0)
            {
              v71 = v74 >> 31;
LABEL_232:
              v6 = v22;
              if (v71)
              {
                return v6;
              }

              goto LABEL_252;
            }

            goto LABEL_243;
          }
        }
      }

LABEL_244:
      v75 = *(a1 + 16);
      v76 = *(a1 + 12);
      *(a1 + 8) = v76;
      *(a1 + 24) = v76;
      v77 = v76 - 1;
      if (v77 > v75 && *(*a1 + v77) == 137)
      {
        if (find_among_b(a1, &a_21_1, 1))
        {
          *(a1 + 20) = *(a1 + 8);
          v9 = slice_from_s(a1, 2, &s_68_7);
          if ((v9 & 0x80000000) != 0)
          {
            return v9;
          }
        }
      }

      goto LABEL_252;
    }

    v56 = *(a1 + 12);
    goto LABEL_188;
  }

  v24 = r_Suffix_Verb_Step2a(a1);
  v25 = v24 >> 31;
  if (v24 >= 0)
  {
    v26 = v6;
  }

  else
  {
    v26 = v24;
  }

  if (v24)
  {
    v6 = v26;
  }

  else
  {
    v25 = 7;
    v6 = v6;
  }

  if (!v25)
  {
    goto LABEL_252;
  }

  if (v25 != 7)
  {
    if (v24 < 0)
    {
      return v6;
    }

    goto LABEL_252;
  }

  v27 = *(a1 + 16);
  v28 = *(a1 + 12) + v19;
  *(a1 + 8) = v28;
  *(a1 + 24) = v28;
  v29 = v28 - 1;
  if (v29 <= v27)
  {
    goto LABEL_251;
  }

  if (*(*a1 + v29) != 136)
  {
    goto LABEL_251;
  }

  v30 = find_among_b(a1, &a_20_1, 2);
  if (!v30)
  {
    goto LABEL_251;
  }

  *(a1 + 20) = *(a1 + 8);
  if (v30 != 2)
  {
    if (v30 != 1)
    {
      goto LABEL_252;
    }

    if (len_utf8(*a1) >= 4)
    {
      goto LABEL_113;
    }

LABEL_251:
    v78 = *(a1 + 16);
    v79 = (*(a1 + 12) + v19);
    *(a1 + 8) = v79;
    if ((skip_utf8(*a1, v79, v78, 0, -1) & 0x80000000) == 0)
    {
      goto LABEL_252;
    }

    v20 = *(a1 + 12);
    goto LABEL_89;
  }

  if (len_utf8(*a1) < 6)
  {
    goto LABEL_251;
  }

LABEL_113:
  v9 = slice_del(a1);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

LABEL_252:
  v80 = *(a1 + 12);
  v81 = *(a1 + 16);
  *(a1 + 8) = v81;
  *(a1 + 20) = v81;
  if (v81 + 3 >= v80)
  {
    goto LABEL_272;
  }

  v82 = *(*a1 + v81 + 3);
  if ((v82 & 0xE0) != 0xA0)
  {
    goto LABEL_272;
  }

  if (((0xBCu >> v82) & 1) == 0)
  {
    goto LABEL_272;
  }

  v83 = find_among(a1, &a_4_10, 5);
  if (!v83)
  {
    goto LABEL_272;
  }

  *(a1 + 24) = *(a1 + 8);
  if (v83 > 2)
  {
    if (v83 == 3)
    {
      if (len_utf8(*a1) < 4)
      {
        goto LABEL_272;
      }

      v84 = &s_56_13;
    }

    else
    {
      if (v83 != 4)
      {
        goto LABEL_273;
      }

      if (len_utf8(*a1) < 4)
      {
        goto LABEL_272;
      }

      v84 = &s_57_26;
    }
  }

  else
  {
    if (v83 != 1)
    {
      if (v83 != 2)
      {
        goto LABEL_273;
      }

      if (len_utf8(*a1) >= 4)
      {
        v84 = &s_55_4;
        goto LABEL_270;
      }

LABEL_272:
      *(a1 + 8) = v81;
      goto LABEL_273;
    }

    if (len_utf8(*a1) < 4)
    {
      goto LABEL_272;
    }

    v84 = &s_54_6;
  }

LABEL_270:
  v9 = slice_from_s(a1, 2, v84);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

LABEL_273:
  v85 = *(a1 + 8);
  if (!eq_s(a1, 4, &s_58_4))
  {
    *(a1 + 8) = v85;
    if (!eq_s(a1, 4, &s_59_3))
    {
      *(a1 + 8) = v85;
      *(a1 + 20) = v85;
      v86 = v85 + 1;
      if (v86 < *(a1 + 12))
      {
        v87 = *(*a1 + v86);
        if (v87 == 136 || v87 == 129)
        {
          if (find_among(a1, &a_5_10, 2))
          {
            *(a1 + 24) = *(a1 + 8);
            if (len_utf8(*a1) >= 4)
            {
              v9 = slice_del(a1);
              if ((v9 & 0x80000000) == 0)
              {
                v85 = *(a1 + 8);
                goto LABEL_283;
              }

              return v9;
            }
          }
        }
      }
    }
  }

  *(a1 + 8) = v85;
LABEL_283:
  *(a1 + 20) = v85;
  v88 = v85 + 3;
  if (v88 < *(a1 + 12))
  {
    v89 = *(*a1 + v88);
    if (v89 == 167 || v89 == 132)
    {
      v90 = find_among(a1, &a_6_6, 4);
      if (v90)
      {
        *(a1 + 24) = *(a1 + 8);
        if (v90 == 2)
        {
          if (len_utf8(*a1) >= 5)
          {
LABEL_290:
            v9 = slice_del(a1);
            if ((v9 & 0x80000000) != 0)
            {
              return v9;
            }

            goto LABEL_314;
          }
        }

        else
        {
          if (v90 != 1)
          {
            goto LABEL_314;
          }

          if (len_utf8(*a1) >= 6)
          {
            goto LABEL_290;
          }
        }
      }
    }
  }

  *(a1 + 8) = v85;
  v91 = *(a1 + 48);
  if (!*v91)
  {
    goto LABEL_306;
  }

  v92 = r_Prefix_Step3b_Noun(a1);
  v93 = v92 >> 31;
  if (v92 >= 0)
  {
    v94 = v6;
  }

  else
  {
    v94 = v92;
  }

  if (v92)
  {
    v95 = v92 >> 31;
  }

  else
  {
    v95 = 34;
  }

  if (v92)
  {
    v6 = v94;
  }

  else
  {
    v6 = v6;
  }

  if (!v95)
  {
    goto LABEL_314;
  }

  if (v95 == 34)
  {
    v91 = *(a1 + 48);
LABEL_306:
    *(a1 + 8) = v85;
    if (!v91[1])
    {
      goto LABEL_314;
    }

    v96 = r_Prefix_Step3_Verb(a1);
    if (v96)
    {
      v6 = v96;
      if ((v96 & 0x80000000) != 0)
      {
        return v6;
      }
    }

    else
    {
      *(a1 + 8) = v85;
    }

    v97 = r_Prefix_Step4_Verb(a1);
    if ((v97 & 0x80000000) == 0)
    {
      goto LABEL_314;
    }

    v6 = v97;
    v93 = v97 >> 31;
  }

  if (!v93)
  {
LABEL_314:
    *(a1 + 16) = v81;
    v98 = *(a1 + 12);
    *(a1 + 8) = v98;
    *(a1 + 24) = v98;
    v99 = v98 - 1;
    if (v99 > v81)
    {
      v100 = *(*a1 + v99);
      if (v100 & 0xE0) == 0xA0 && ((0x7Cu >> v100))
      {
        if (find_among_b(a1, &a_1_13, 5))
        {
          *(a1 + 20) = *(a1 + 8);
          v9 = slice_from_s(a1, 2, &s_50_7);
          if ((v9 & 0x80000000) != 0)
          {
            return v9;
          }
        }
      }
    }

    *(a1 + 8) = v81;
    for (j = v81; ; j = *(a1 + 8))
    {
      *(a1 + 20) = j;
      v102 = j + 1;
      v103 = *(a1 + 12);
      v104 = *a1;
      if (v102 >= v103)
      {
        goto LABEL_329;
      }

      v105 = v104[v102];
      if ((v105 & 0xE0) != 0xA0 || ((0x7Cu >> v105) & 1) == 0)
      {
        goto LABEL_329;
      }

      v106 = find_among(a1, &a_2_12, 5);
      if (!v106)
      {
        break;
      }

      *(a1 + 24) = *(a1 + 8);
      switch(v106)
      {
        case 3:
          v107 = a1;
          v108 = &s_53_7;
          break;
        case 2:
          v107 = a1;
          v108 = &s_52_4;
          break;
        case 1:
          v107 = a1;
          v108 = &s_51_10;
          break;
        default:
          continue;
      }

      v9 = slice_from_s(v107, 2, v108);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }

LABEL_331:
      ;
    }

    v104 = *a1;
    v103 = *(a1 + 12);
LABEL_329:
    *(a1 + 8) = j;
    v109 = skip_utf8(v104, j, 0, v103, 1);
    if (v109 < 0)
    {
      *(a1 + 8) = v81;
      return 1;
    }

    *(a1 + 8) = v109;
    goto LABEL_331;
  }

  return v6;
}