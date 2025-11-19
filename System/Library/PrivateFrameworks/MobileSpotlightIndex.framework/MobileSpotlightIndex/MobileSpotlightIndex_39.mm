unint64_t v2_readVInt64_2873(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1)
  {
    return 0;
  }

  v3 = v2 + 1;
  v5 = (a1 + v2);
  v6 = *(a1 + v2);
  result = *(a1 + v2);
  if ((v6 & 0x80000000) == 0)
  {
    *a2 = v3;
    return result;
  }

  if (v6 <= 0xBFu)
  {
    if (v2 != -2)
    {
      result = *(a1 + v3) | ((result & 0x3F) << 8);
      *a2 = v2 + 2;
      return result;
    }

    return 0;
  }

  if (v6 <= 0xDFu)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFFCLL)
    {
      result = ((result & 0x1F) << 16) | (*(a1 + v3) << 8) | v5[2];
      *a2 = v2 + 3;
      return result;
    }

    return 0;
  }

  if (v6 <= 0xEFu)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFFBLL)
    {
      result = ((result & 0xF) << 24) | (*(a1 + v3) << 16) | (v5[2] << 8) | v5[3];
      *a2 = v2 + 4;
      return result;
    }

    return 0;
  }

  if (v6 <= 0xF7u)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFFALL)
    {
      result = ((result & 7) << 32) | (*(a1 + v3) << 24) | (v5[2] << 16) | (v5[3] << 8) | v5[4];
      *a2 = v2 + 5;
      return result;
    }

    return 0;
  }

  if (v6 <= 0xFBu)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFF9)
    {
      result = ((result & 3) << 40) | (*(a1 + v3) << 32) | (v5[2] << 24) | (v5[3] << 16) | (v5[4] << 8) | v5[5];
      *a2 = v2 + 6;
      return result;
    }

    return 0;
  }

  if (v6 <= 0xFDu)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFF8)
    {
      result = ((result & 1) << 48) | (*(a1 + v3) << 40) | (v5[2] << 32) | (v5[3] << 24) | (v5[4] << 16) | (v5[5] << 8) | v5[6];
      *a2 = v2 + 7;
      return result;
    }

    return 0;
  }

  if (v6 == 255)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFF6)
    {
      result = *(a1 + v3);
      *a2 = v2 + 9;
      return result;
    }

    return 0;
  }

  if (v2 > 0xFFFFFFFFFFFFFFF7)
  {
    return 0;
  }

  result = (*(a1 + v3) << 48) | (v5[2] << 40) | (v5[3] << 32) | (v5[4] << 24) | (v5[5] << 16) | (v5[6] << 8) | v5[7];
  *a2 = v2 + 8;
  return result;
}

uint64_t termPropertyID(unsigned __int8 *a1, unsigned int a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  if (*a1 > 3u)
  {
    v6 = &a1[a2];
    v7 = v6 - 6;
    if (a2 < 6)
    {
      v7 = a1 + 1;
    }

    v8 = *(v6 - 1);
    if (v8 < 0)
    {
      return 0;
    }

    v10 = *(v6 - 2);
    v9 = v6 - 2;
    if (v10 == 1 && v8 == 3)
    {
      --v9;
    }

    if (v9 <= v7)
    {
LABEL_20:
      if (*v9 != 1)
      {
        return 0;
      }
    }

    else
    {
      while (*v9 < 0)
      {
        if (--v9 <= v7)
        {
          v9 = v7;
          goto LABEL_20;
        }
      }

      if (*v9 != 1)
      {
        return 0;
      }
    }

    result = v9[1];
    if (v9[1] < 0)
    {
      v12 = v9[2];
      if ((v9[2] & 0x80000000) == 0)
      {
        return result & 0x7F | (v12 << 7);
      }

      v13 = v9[3];
      if ((v9[3] & 0x80000000) == 0)
      {
        v14 = (v12 & 0x7F) << 7;
        goto LABEL_32;
      }

      v19 = v9[4];
      if ((v9[4] & 0x80000000) == 0)
      {
        v17 = ((v13 & 0x7F) << 14) | (v19 << 21) | ((v12 & 0x7F) << 7);
        return v17 & 0xFFFFFF80 | result & 0x7F;
      }

      v20 = v9[5];
      if ((v20 & 0x80000000) == 0)
      {
        v17 = ((v19 & 0x7F) << 21) | (v20 << 28) | ((v13 & 0x7F) << 14) | ((v12 & 0x7F) << 7);
        return v17 & 0xFFFFFF80 | result & 0x7F;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v4 = a1[1];
    result = a1[1];
    if (v4 < 0)
    {
      v5 = a1[2];
      if ((a1[2] & 0x80000000) == 0)
      {
        return result & 0x7F | (v5 << 7);
      }

      v13 = a1[3];
      if ((a1[3] & 0x80000000) == 0)
      {
        v14 = (v5 & 0x7F) << 7;
LABEL_32:
        v17 = v14 | (v13 << 14);
        return v17 & 0xFFFFFF80 | result & 0x7F;
      }

      v15 = a1[4];
      if ((a1[4] & 0x80000000) == 0)
      {
        v16 = ((v13 & 0x7F) << 14) | (v15 << 21);
        return v16 & 0xFFFFC000 | ((v5 & 0x7F) << 7) | result & 0x7F;
      }

      v18 = a1[5];
      if ((v18 & 0x80000000) == 0)
      {
        v16 = ((v15 & 0x7F) << 21) | (v18 << 28) | ((v13 & 0x7F) << 14);
        return v16 & 0xFFFFC000 | ((v5 & 0x7F) << 7) | result & 0x7F;
      }

LABEL_41:
      v21 = __si_assert_copy_extra_2708(0);
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v23);
      free(v22);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  return result;
}

void findMatchTermExpansion(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  v4 = 0;
  v5 = a3 + 1;
  v6 = *a3;
  v29 = *(a1 + 52);
  v7 = a1 + 88;
  while (1)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 52);
    v10 = *(&tcm + v6);
    if (HIDWORD(v9) == 1)
    {
      v17 = mgetBase(v8, v9);
      v18 = (v17 + 4);
      if (((*(v17 + 4 + 4 * (v10 >> 5)) >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      v19 = 0;
      v20 = v10 >> 6;
      if (v10 >> 6 > 1)
      {
        if (v20 != 2)
        {
          v22 = vcnt_s8(*(v17 + 20));
          v22.i16[0] = vaddlv_u8(v22);
          v19 = v22.u32[0];
        }

        v23 = vcnt_s8(*(v17 + 12));
        v23.i16[0] = vaddlv_u8(v23);
        v19 += v23.u32[0];
      }

      else
      {
        v21 = v10 >> 6;
        if (!v20)
        {
LABEL_22:
          v25 = vcnt_s8((*&v18[v20] & ~(-1 << v10)));
          v25.i16[0] = vaddlv_u8(v25);
          v26 = *(v17 + 38 + 4 * (v25.u32[0] + v21));
          if (v26)
          {
            if ((*(v17 + 38 + 4 * (v25.u32[0] + v21)) & 3) == 1)
            {
              v15 = v26 >> 2;
              v16 = 0x100000000;
              if (!v15)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v16 = (v26 & 7) << 32;
              v15 = v26 >> 3;
              if (!v15)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
            v16 = 0;
            v15 = v26 >> 1;
            if (!v15)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_29;
        }
      }

      v24 = vcnt_s8(*v18);
      v24.i16[0] = vaddlv_u8(v24);
      v21 = v24.u32[0] + v19;
      goto LABEL_22;
    }

    if (HIDWORD(v9) != 3)
    {
      goto LABEL_33;
    }

    v11 = *(*(v8 + 8) + 1028 * v9 + 4 * v10 + 4);
    v12 = v11 >> 3;
    v13 = (v11 & 7) << 32;
    if ((v11 & 3) == 1)
    {
      v12 = v11 >> 2;
      v13 = 0x100000000;
    }

    v14 = (v11 & 1) == 0;
    v15 = (v11 & 1) != 0 ? v12 : v11 >> 1;
    v16 = v14 ? 0 : v13;
    if (!v15)
    {
      goto LABEL_33;
    }

LABEL_29:
    *(a1 + 52) = v15;
    *(a1 + 56) = HIDWORD(v16);
    v27 = *(a1 + 1140);
    *(a1 + 1140) = v27 + 1;
    *(v7 + v27) = v6;
    *(v7 + *(a1 + 1140)) = 0;
    if (!v16)
    {
      break;
    }

    v6 = v5[v4++];
    if (!v6)
    {
      *(a1 + 1224) += a2;
      findMatchTerm(a1, 0);
      *(a1 + 1224) -= a2;
      goto LABEL_33;
    }
  }

  LODWORD(v4) = v4 + 1;
  findAddFlatBucket(a1, v15, 0, 0, 0, 0);
LABEL_33:
  *(a1 + 1140) -= v4;
  *(a1 + 52) = v29;
}

void findMatchIgnoringDiacritics(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = HIDWORD(a2);
  if (HIDWORD(a2) == 1)
  {
    v7 = a2;
    v8 = mgetBase(v4, a2);
    if ((*(v8 + 8) & 2) == 0)
    {
      v9 = *(a1 + 8);
      goto LABEL_26;
    }

    v10 = vcnt_s8((*(v8 + 4) & 0x1FFFFFFFFLL));
    v10.i16[0] = vaddlv_u8(v10);
    v6 = *(v8 + 4 * v10.u32[0] + 38);
    goto LABEL_7;
  }

  if (HIDWORD(a2) == 3)
  {
    v6 = *(*(v4 + 8) + 1028 * a2 + 136);
LABEL_7:
    v11 = v6 >> 1;
    v12 = v6 >> 3;
    v13 = (v6 & 7) << 32;
    if ((v6 & 3) == 1)
    {
      v12 = v6 >> 2;
      v13 = 0x100000000;
    }

    if (v6)
    {
      v11 = v12;
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v11)
    {
      v15 = v11;
      v16 = *(a1 + 1140);
      *(a1 + 1140) = v16 + 1;
      *(a1 + 88 + v16) = -52;
      if (v14)
      {
        v17 = HIDWORD(v14);
        if (HIDWORD(v14) == 1)
        {
          if (*(a1 + 72) <= v15)
          {
            v185 = __si_assert_copy_extra_2708(*(*(a1 + 8) + 112));
            v186 = v185;
            v187 = "";
            if (v185)
            {
              v187 = v185;
            }

            __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 4457, "child.next < ctx->trie_max", v187, v15, *(a1 + 64));
            free(v186);
            if (__valid_fsp(*(*(a1 + 8) + 112)))
            {
              v188 = 2989;
            }

            else
            {
              v188 = 3072;
            }

            *v188 = -559038737;
            abort();
          }
        }

        else if (HIDWORD(v14) == 3 && *(a1 + 64) <= v15)
        {
          v18 = __si_assert_copy_extra_2708(*(*(a1 + 8) + 4576));
          v19 = v18;
          v20 = "";
          if (v18)
          {
            v20 = v18;
          }

          __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 4455, "child.next < ctx->trie_fat_max", v20, v15, *(a1 + 64));
          free(v19);
          if (__valid_fsp(*(*(a1 + 8) + 4576)))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v72 = 0x80u;
        while (1)
        {
          v73 = *(a1 + 8);
          v74 = *(&tcm + v72);
          if (v17 != 1)
          {
            if (v17 != 3)
            {
              goto LABEL_110;
            }

            v75 = *(*(v73 + 8) + 1028 * v15 + 4 * v74 + 4);
            v76 = v75 >> 3;
            v77 = (v75 & 7) << 32;
            if ((v75 & 3) == 1)
            {
              v76 = v75 >> 2;
              v77 = 0x100000000;
            }

            v38 = (*(*(v73 + 8) + 1028 * v15 + 4 * v74 + 4) & 1) == 0;
            v78 = (v75 & 1) != 0 ? v76 : v75 >> 1;
            v79 = (*(*(v73 + 8) + 1028 * v15 + 4 * v74 + 4) & 1) != 0 ? v77 : 0;
            if (!v78)
            {
              goto LABEL_110;
            }

LABEL_138:
            v90 = *(a1 + 1140);
            *(a1 + 1140) = v90 + 1;
            *(a1 + 88 + v90) = v72;
            if (v79)
            {
              *(a1 + 52) = v78;
              *(a1 + 56) = HIDWORD(v79);
              findMatchTerm(a1, 0);
              *(a1 + 52) = a2;
            }

            else
            {
              findAddFlatBucket(a1, v78, 0, 0, 0, 0);
            }

            --*(a1 + 1140);
            goto LABEL_110;
          }

          v80 = mgetBase(v73, v15);
          v81 = (v80 + 4);
          if ((*(v80 + 4 + 4 * (v74 >> 5)) >> v74))
          {
            break;
          }

LABEL_110:
          if (++v72 == 192)
          {
            goto LABEL_22;
          }
        }

        v82 = 0;
        v83 = v74 >> 6;
        if (v74 >> 6 > 1)
        {
          if (v83 != 2)
          {
            v85 = vcnt_s8(*(v80 + 20));
            v85.i16[0] = vaddlv_u8(v85);
            v82 = v85.u32[0];
          }

          v86 = vcnt_s8(*(v80 + 12));
          v86.i16[0] = vaddlv_u8(v86);
          v82 += v86.u32[0];
        }

        else
        {
          v84 = v74 >> 6;
          if (!v83)
          {
LABEL_131:
            v88 = vcnt_s8((*&v81[v83] & ~(-1 << v74)));
            v88.i16[0] = vaddlv_u8(v88);
            v89 = *(v80 + 38 + 4 * (v88.u32[0] + v84));
            if (v89)
            {
              if ((v89 & 3) == 1)
              {
                v78 = v89 >> 2;
                v79 = 0x100000000;
                if (v89 >> 2)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                v78 = v89 >> 3;
                v79 = (v89 & 7) << 32;
                if (v89 >> 3)
                {
                  goto LABEL_138;
                }
              }
            }

            else
            {
              v79 = 0;
              v78 = v89 >> 1;
              if (v89 >> 1)
              {
                goto LABEL_138;
              }
            }

            goto LABEL_110;
          }
        }

        v87 = vcnt_s8(*v81);
        v87.i16[0] = vaddlv_u8(v87);
        v84 = v87.u32[0] + v82;
        goto LABEL_131;
      }

      findAddFlatBucket(a1, v15, 0, 0, 0, 0);
LABEL_22:
      --*(a1 + 1140);
    }
  }

  v9 = *(a1 + 8);
  if (v5 == 3)
  {
    v23 = *(*(v9 + 8) + 1028 * a2 + 140);
    goto LABEL_30;
  }

  if (v5 != 1)
  {
    goto LABEL_72;
  }

  v7 = a2;
LABEL_26:
  v21 = mgetBase(v9, v7);
  if ((*(v21 + 8) & 4) == 0)
  {
    v22 = *(a1 + 8);
LABEL_75:
    v52 = mgetBase(v22, v7);
    if ((*(v52 + 8) & 8) == 0)
    {
      v53 = *(a1 + 8);
      goto LABEL_91;
    }

    v55 = vcnt_s8((*(v52 + 4) & 0x7FFFFFFFFLL));
    v55.i16[0] = vaddlv_u8(v55);
    v54 = *(v52 + 4 * v55.u32[0] + 38);
    goto LABEL_79;
  }

  v24 = vcnt_s8((*(v21 + 4) & 0x3FFFFFFFFLL));
  v24.i16[0] = vaddlv_u8(v24);
  v23 = *(v21 + 4 * v24.u32[0] + 38);
LABEL_30:
  v25 = v23 >> 1;
  v26 = v23 >> 3;
  v27 = (v23 & 7) << 32;
  if ((v23 & 3) == 1)
  {
    v26 = v23 >> 2;
    v27 = 0x100000000;
  }

  if (v23)
  {
    v25 = v26;
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = v25;
    v30 = *(a1 + 1140);
    *(a1 + 1140) = v30 + 1;
    *(a1 + 88 + v30) = -51;
    if (v28)
    {
      v31 = HIDWORD(v28);
      v32 = 0x80u;
      while (1)
      {
        v33 = *(a1 + 8);
        v34 = *(&tcm + v32);
        if (v31 != 1)
        {
          if (v31 != 3)
          {
            goto LABEL_40;
          }

          v35 = *(*(v33 + 8) + 1028 * v29 + 4 * v34 + 4);
          v36 = v35 >> 3;
          v37 = (v35 & 7) << 32;
          if ((v35 & 3) == 1)
          {
            v36 = v35 >> 2;
            v37 = 0x100000000;
          }

          v38 = (*(*(v33 + 8) + 1028 * v29 + 4 * v34 + 4) & 1) == 0;
          v39 = (v35 & 1) != 0 ? v36 : v35 >> 1;
          v40 = (*(*(v33 + 8) + 1028 * v29 + 4 * v34 + 4) & 1) != 0 ? v37 : 0;
          if (!v39)
          {
            goto LABEL_40;
          }

LABEL_68:
          v51 = *(a1 + 1140);
          *(a1 + 1140) = v51 + 1;
          *(a1 + 88 + v51) = v32;
          if (v40)
          {
            *(a1 + 52) = v39;
            *(a1 + 56) = HIDWORD(v40);
            findMatchTerm(a1, 0);
            *(a1 + 52) = a2;
          }

          else
          {
            findAddFlatBucket(a1, v39, 0, 0, 0, 0);
          }

          --*(a1 + 1140);
          goto LABEL_40;
        }

        v41 = mgetBase(v33, v29);
        v42 = (v41 + 4);
        if ((*(v41 + 4 + 4 * (v34 >> 5)) >> v34))
        {
          break;
        }

LABEL_40:
        if (++v32 == 224)
        {
          goto LABEL_71;
        }
      }

      v43 = 0;
      v44 = v34 >> 6;
      if (v34 >> 6 > 1)
      {
        if (v44 != 2)
        {
          v46 = vcnt_s8(*(v41 + 20));
          v46.i16[0] = vaddlv_u8(v46);
          v43 = v46.u32[0];
        }

        v47 = vcnt_s8(*(v41 + 12));
        v47.i16[0] = vaddlv_u8(v47);
        v43 += v47.u32[0];
      }

      else
      {
        v45 = v34 >> 6;
        if (!v44)
        {
LABEL_61:
          v49 = vcnt_s8((*&v42[v44] & ~(-1 << v34)));
          v49.i16[0] = vaddlv_u8(v49);
          v50 = *(v41 + 38 + 4 * (v49.u32[0] + v45));
          if (v50)
          {
            if ((v50 & 3) == 1)
            {
              v39 = v50 >> 2;
              v40 = 0x100000000;
              if (v50 >> 2)
              {
                goto LABEL_68;
              }
            }

            else
            {
              v39 = v50 >> 3;
              v40 = (v50 & 7) << 32;
              if (v50 >> 3)
              {
                goto LABEL_68;
              }
            }
          }

          else
          {
            v40 = 0;
            v39 = v50 >> 1;
            if (v50 >> 1)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_40;
        }
      }

      v48 = vcnt_s8(*v42);
      v48.i16[0] = vaddlv_u8(v48);
      v45 = v48.u32[0] + v43;
      goto LABEL_61;
    }

    findAddFlatBucket(a1, v29, 0, 0, 0, 0);
LABEL_71:
    --*(a1 + 1140);
  }

LABEL_72:
  v22 = *(a1 + 8);
  if (v5 == 3)
  {
    v54 = *(*(v22 + 8) + 1028 * a2 + 144);
LABEL_79:
    v56 = v54 >> 1;
    v57 = v54 >> 3;
    v58 = (v54 & 7) << 32;
    if ((v54 & 3) == 1)
    {
      v57 = v54 >> 2;
      v58 = 0x100000000;
    }

    if (v54)
    {
      v56 = v57;
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    if (v56)
    {
      if (v59)
      {
        v60 = *(a1 + 1140);
        *(a1 + 1140) = v60 + 1;
        *(a1 + v60 + 88) = 45;
        findMatchTerm(a1, 0);
        --*(a1 + 1140);
      }

      else
      {
        findAddFlatBucket(a1, v56, 0, 0, 0, 0);
      }
    }

    goto LABEL_88;
  }

  if (v5 == 1)
  {
    v7 = a2;
    goto LABEL_75;
  }

LABEL_88:
  v53 = *(a1 + 8);
  if (v5 == 3)
  {
    v63 = *(*(v53 + 8) + 1028 * a2 + 908);
    v64 = v63 >> 1;
    v65 = v63 >> 3;
    v66 = (v63 & 7) << 32;
    if ((v63 & 3) == 1)
    {
      v65 = v63 >> 2;
      v66 = 0x100000000;
    }

    if (v63)
    {
      v64 = v65;
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    if (v64)
    {
      goto LABEL_141;
    }

    goto LABEL_176;
  }

  if (v5 != 1)
  {
    goto LABEL_176;
  }

  v7 = a2;
LABEL_91:
  v61 = mgetBase(v53, v7);
  if ((*(v61 + 32) & 4) == 0)
  {
    v62 = *(a1 + 8);
    goto LABEL_179;
  }

  v68 = vcnt_s8(*(v61 + 4));
  v68.i16[0] = vaddlv_u8(v68);
  v69 = v68.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v61 + 12))))));
  v70 = vcnt_s8((*(v61 + 28) & 0x3FFFFFFFFLL));
  v70.i16[0] = vaddlv_u8(v70);
  v71 = *(v61 + 4 * (v70.u32[0] + v69) + 38);
  if ((v71 & 1) == 0)
  {
    v67 = 0;
    v64 = v71 >> 1;
    if (!v64)
    {
      goto LABEL_176;
    }

LABEL_141:
    v91 = v64;
    v92 = a1 + 88;
    v93 = *(a1 + 1140);
    *(a1 + 1140) = v93 + 1;
    *(a1 + 88 + v93) = -30;
    if (!v67)
    {
      findAddFlatBucket(a1, v91, 0, 0, 0, 0);
      goto LABEL_175;
    }

    v94 = *(a1 + 8);
    v95 = HIDWORD(v67);
    if (v95 == 1)
    {
      v111 = mgetBase(v94, v91);
      if ((*(v111 + 20) & 1) == 0)
      {
        goto LABEL_175;
      }

      v112 = *(v111 + 4 * vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v111 + 4)))))) + 38);
      if (v112)
      {
        if ((v112 & 3) == 1)
        {
          v97 = v112 >> 2;
          v100 = 0x100000000;
        }

        else
        {
          v100 = (v112 & 7) << 32;
          v97 = v112 >> 3;
        }
      }

      else
      {
        v100 = 0;
        v97 = v112 >> 1;
      }
    }

    else
    {
      if (v95 != 3)
      {
        goto LABEL_175;
      }

      v96 = *(*(v94 + 8) + 1028 * v91 + 516);
      v97 = v96 >> 1;
      v98 = v96 >> 3;
      v99 = (v96 & 7) << 32;
      if ((v96 & 3) == 1)
      {
        v98 = v96 >> 2;
        v99 = 0x100000000;
      }

      if (v96)
      {
        v97 = v98;
        v100 = v99;
      }

      else
      {
        v100 = 0;
      }
    }

    if (v97)
    {
      v101 = v97;
      v102 = *(a1 + 1140);
      *(a1 + 1140) = v102 + 1;
      *(v92 + v102) = 0x80;
      if (v100)
      {
        v103 = *(a1 + 8);
        v104 = HIDWORD(v100);
        if (v104 == 1)
        {
          v113 = mgetBase(v103, v101);
          if (*(v113 + 22))
          {
            v114 = vcnt_s8(*(v113 + 20));
            v114.i16[0] = vaddlv_u8(v114);
            v115 = *(v113 + 4 * (v114.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v113 + 4))))))) + 38);
            if (v115)
            {
              if ((v115 & 3) == 1)
              {
                v106 = v115 >> 2;
                v109 = 0x100000000;
              }

              else
              {
                v109 = (v115 & 7) << 32;
                v106 = v115 >> 3;
              }
            }

            else
            {
              v109 = 0;
              v106 = v115 >> 1;
            }

LABEL_158:
            if (v106)
            {
              v110 = *(a1 + 1140);
              *(a1 + 1140) = v110 + 1;
              *(v92 + v110) = -112;
              if (v109)
              {
                *(a1 + 52) = v106;
                *(a1 + 56) = HIDWORD(v109);
                findMatchTerm(a1, 0);
                *(a1 + 52) = a2;
              }

              else
              {
                findAddFlatBucket(a1, v106, 0, 0, 0, 0);
              }

              --*(a1 + 1140);
            }
          }
        }

        else if (v104 == 3)
        {
          v105 = *(*(v103 + 8) + 1028 * v101 + 580);
          v106 = v105 >> 1;
          v107 = v105 >> 3;
          v108 = (v105 & 7) << 32;
          if ((v105 & 3) == 1)
          {
            v107 = v105 >> 2;
            v108 = 0x100000000;
          }

          if (v105)
          {
            v106 = v107;
            v109 = v108;
          }

          else
          {
            v109 = 0;
          }

          goto LABEL_158;
        }
      }

      else
      {
        findAddFlatBucket(a1, v101, 0, 0, 0, 0);
      }

      --*(a1 + 1140);
    }

LABEL_175:
    --*(a1 + 1140);
    goto LABEL_176;
  }

  if ((*(v61 + 4 * (v70.u32[0] + v69) + 38) & 3) != 1)
  {
    v67 = (v71 & 7) << 32;
    v64 = v71 >> 3;
    if (!v64)
    {
      goto LABEL_176;
    }

    goto LABEL_141;
  }

  v64 = v71 >> 2;
  v67 = 0x100000000;
  if (v64)
  {
    goto LABEL_141;
  }

LABEL_176:
  v62 = *(a1 + 8);
  if (v5 == 3)
  {
    v118 = *(*(v62 + 8) + 1028 * a2 + 860);
    v119 = v118 >> 1;
    v120 = v118 >> 3;
    v121 = (v118 & 7) << 32;
    if ((v118 & 3) == 1)
    {
      v120 = v118 >> 2;
      v121 = 0x100000000;
    }

    if (v118)
    {
      v119 = v120;
      v122 = v121;
    }

    else
    {
      v122 = 0;
    }

    if (!v119)
    {
      goto LABEL_231;
    }

    goto LABEL_195;
  }

  if (v5 == 1)
  {
    v7 = a2;
LABEL_179:
    v116 = mgetBase(v62, v7);
    if ((*(v116 + 30) & 0x40) == 0)
    {
      v117 = *(a1 + 8);
      goto LABEL_234;
    }

    v123 = vcnt_s8(*(v116 + 4));
    v123.i16[0] = vaddlv_u8(v123);
    v124 = v123.u32[0];
    v125 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v116 + 12))))));
    v126 = v124 + *&v125;
    v125.i32[0] = *(v116 + 28) & 0x3FFFFF;
    v127 = vcnt_s8(v125);
    v127.i16[0] = vaddlv_u8(v127);
    v128 = *(v116 + 4 * (v127.u32[0] + v126) + 38);
    if ((v128 & 1) == 0)
    {
      v122 = 0;
      v119 = v128 >> 1;
      if (!v119)
      {
        goto LABEL_231;
      }

      goto LABEL_195;
    }

    if ((*(v116 + 4 * (v127.u32[0] + v126) + 38) & 3) == 1)
    {
      v119 = v128 >> 2;
      v122 = 0x100000000;
      if (!v119)
      {
        goto LABEL_231;
      }

      goto LABEL_195;
    }

    v122 = (v128 & 7) << 32;
    v119 = v128 >> 3;
    if (v119)
    {
LABEL_195:
      v129 = v119;
      v130 = *(a1 + 1140);
      *(a1 + 1140) = v130 + 1;
      *(a1 + 88 + v130) = -42;
      if (!v122)
      {
        findAddFlatBucket(a1, v129, 0, 0, 0, 0);
LABEL_230:
        --*(a1 + 1140);
        goto LABEL_231;
      }

      v131 = HIDWORD(v122);
      v132 = 0x91u;
      while (1)
      {
        v133 = *(a1 + 8);
        v134 = *(&tcm + v132);
        if (v131 != 1)
        {
          if (v131 != 3)
          {
            goto LABEL_199;
          }

          v135 = *(*(v133 + 8) + 1028 * v129 + 4 * v134 + 4);
          v136 = v135 >> 3;
          v137 = (v135 & 7) << 32;
          if ((v135 & 3) == 1)
          {
            v136 = v135 >> 2;
            v137 = 0x100000000;
          }

          v38 = (*(*(v133 + 8) + 1028 * v129 + 4 * v134 + 4) & 1) == 0;
          v138 = (v135 & 1) != 0 ? v136 : v135 >> 1;
          v139 = (*(*(v133 + 8) + 1028 * v129 + 4 * v134 + 4) & 1) != 0 ? v137 : 0;
          if (!v138)
          {
            goto LABEL_199;
          }

LABEL_227:
          v150 = *(a1 + 1140);
          *(a1 + 1140) = v150 + 1;
          *(a1 + 88 + v150) = v132;
          if (v139)
          {
            *(a1 + 52) = v138;
            *(a1 + 56) = HIDWORD(v139);
            findMatchTerm(a1, 0);
            *(a1 + 52) = a2;
          }

          else
          {
            findAddFlatBucket(a1, v138, 0, 0, 0, 0);
          }

          --*(a1 + 1140);
          goto LABEL_199;
        }

        v140 = mgetBase(v133, v129);
        v141 = (v140 + 4);
        if ((*(v140 + 4 + 4 * (v134 >> 5)) >> v134))
        {
          break;
        }

LABEL_199:
        if (++v132 == 192)
        {
          goto LABEL_230;
        }
      }

      v142 = 0;
      v143 = v134 >> 6;
      if (v134 >> 6 > 1)
      {
        if (v143 != 2)
        {
          v145 = vcnt_s8(*(v140 + 20));
          v145.i16[0] = vaddlv_u8(v145);
          v142 = v145.u32[0];
        }

        v146 = vcnt_s8(*(v140 + 12));
        v146.i16[0] = vaddlv_u8(v146);
        v142 += v146.u32[0];
      }

      else
      {
        v144 = v134 >> 6;
        if (!v143)
        {
LABEL_220:
          v148 = vcnt_s8((*&v141[v143] & ~(-1 << v134)));
          v148.i16[0] = vaddlv_u8(v148);
          v149 = *(v140 + 38 + 4 * (v148.u32[0] + v144));
          if (v149)
          {
            if ((v149 & 3) == 1)
            {
              v138 = v149 >> 2;
              v139 = 0x100000000;
              if (v149 >> 2)
              {
                goto LABEL_227;
              }
            }

            else
            {
              v138 = v149 >> 3;
              v139 = (v149 & 7) << 32;
              if (v149 >> 3)
              {
                goto LABEL_227;
              }
            }
          }

          else
          {
            v139 = 0;
            v138 = v149 >> 1;
            if (v149 >> 1)
            {
              goto LABEL_227;
            }
          }

          goto LABEL_199;
        }
      }

      v147 = vcnt_s8(*v141);
      v147.i16[0] = vaddlv_u8(v147);
      v144 = v147.u32[0] + v142;
      goto LABEL_220;
    }
  }

LABEL_231:
  v117 = *(a1 + 8);
  if (v5 == 3)
  {
    v160 = *(*(v117 + 8) + 1028 * a2 + 864);
    v159 = v160 >> 1;
    v161 = v160 >> 3;
    v162 = (v160 & 7) << 32;
    if ((v160 & 3) == 1)
    {
      v161 = v160 >> 2;
      v162 = 0x100000000;
    }

    if (v160)
    {
      v159 = v161;
      v158 = v162;
    }

    else
    {
      v158 = 0;
    }

    goto LABEL_242;
  }

  if (v5 != 1)
  {
    return;
  }

  v7 = a2;
LABEL_234:
  v151 = mgetBase(v117, v7);
  if ((*(v151 + 30) & 0x80) == 0)
  {
    return;
  }

  v152 = vcnt_s8(*(v151 + 4));
  v152.i16[0] = vaddlv_u8(v152);
  v153 = v152.u32[0];
  v154 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v151 + 12))))));
  v155 = v153 + *&v154;
  v154.i32[0] = *(v151 + 28) & 0x7FFFFF;
  v156 = vcnt_s8(v154);
  v156.i16[0] = vaddlv_u8(v156);
  v157 = *(v151 + 4 * (v156.u32[0] + v155) + 38);
  if (v157)
  {
    if ((*(v151 + 4 * (v156.u32[0] + v155) + 38) & 3) == 1)
    {
      v159 = v157 >> 2;
      v158 = 0x100000000;
    }

    else
    {
      v158 = (v157 & 7) << 32;
      v159 = v157 >> 3;
    }
  }

  else
  {
    v158 = 0;
    v159 = v157 >> 1;
  }

LABEL_242:
  if (v159)
  {
    v163 = v159;
    v164 = *(a1 + 1140);
    *(a1 + 1140) = v164 + 1;
    *(a1 + 88 + v164) = -41;
    if (v158)
    {
      v165 = HIDWORD(v158);
      v166 = 0x80u;
      while (1)
      {
        v167 = *(a1 + 8);
        v168 = *(&tcm + v166);
        if (v165 != 1)
        {
          if (v165 != 3)
          {
            goto LABEL_247;
          }

          v169 = *(*(v167 + 8) + 1028 * v163 + 4 * v168 + 4);
          v170 = v169 >> 3;
          v171 = (v169 & 7) << 32;
          if ((v169 & 3) == 1)
          {
            v170 = v169 >> 2;
            v171 = 0x100000000;
          }

          v38 = (*(*(v167 + 8) + 1028 * v163 + 4 * v168 + 4) & 1) == 0;
          v172 = (v169 & 1) != 0 ? v170 : v169 >> 1;
          v173 = (*(*(v167 + 8) + 1028 * v163 + 4 * v168 + 4) & 1) != 0 ? v171 : 0;
          if (!v172)
          {
            goto LABEL_247;
          }

LABEL_275:
          v184 = *(a1 + 1140);
          *(a1 + 1140) = v184 + 1;
          *(a1 + 88 + v184) = v166;
          if (v173)
          {
            *(a1 + 52) = v172;
            *(a1 + 56) = HIDWORD(v173);
            findMatchTerm(a1, 0);
            *(a1 + 52) = a2;
          }

          else
          {
            findAddFlatBucket(a1, v172, 0, 0, 0, 0);
          }

          --*(a1 + 1140);
          goto LABEL_247;
        }

        v174 = mgetBase(v167, v163);
        v175 = (v174 + 4);
        if ((*(v174 + 4 + 4 * (v168 >> 5)) >> v168))
        {
          break;
        }

LABEL_247:
        if (++v166 == 133)
        {
          goto LABEL_280;
        }
      }

      v176 = 0;
      v177 = v168 >> 6;
      if (v168 >> 6 > 1)
      {
        if (v177 != 2)
        {
          v179 = vcnt_s8(*(v174 + 20));
          v179.i16[0] = vaddlv_u8(v179);
          v176 = v179.u32[0];
        }

        v180 = vcnt_s8(*(v174 + 12));
        v180.i16[0] = vaddlv_u8(v180);
        v176 += v180.u32[0];
      }

      else
      {
        v178 = v168 >> 6;
        if (!v177)
        {
LABEL_268:
          v182 = vcnt_s8((*&v175[v177] & ~(-1 << v168)));
          v182.i16[0] = vaddlv_u8(v182);
          v183 = *(v174 + 38 + 4 * (v182.u32[0] + v178));
          if (v183)
          {
            if ((v183 & 3) == 1)
            {
              v172 = v183 >> 2;
              v173 = 0x100000000;
              if (v183 >> 2)
              {
                goto LABEL_275;
              }
            }

            else
            {
              v172 = v183 >> 3;
              v173 = (v183 & 7) << 32;
              if (v183 >> 3)
              {
                goto LABEL_275;
              }
            }
          }

          else
          {
            v173 = 0;
            v172 = v183 >> 1;
            if (v183 >> 1)
            {
              goto LABEL_275;
            }
          }

          goto LABEL_247;
        }
      }

      v181 = vcnt_s8(*v175);
      v181.i16[0] = vaddlv_u8(v181);
      v178 = v181.u32[0] + v176;
      goto LABEL_268;
    }

    findAddFlatBucket(a1, v163, 0, 0, 0, 0);
LABEL_280:
    --*(a1 + 1140);
  }
}

uint64_t get_follows_pos(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = (a1 + 4);
  v4 = a2 >> 6;
  if (a2 >> 6 > 1)
  {
    if (v4 != 2)
    {
      v6 = vcnt_s8(*(a1 + 20));
      v6.i16[0] = vaddlv_u8(v6);
      v2 = v6.i32[0];
    }

    v7 = vcnt_s8(*(a1 + 12));
    v7.i16[0] = vaddlv_u8(v7);
    v2 += v7.i32[0];
  }

  else
  {
    v5 = a2 >> 6;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  v8 = vcnt_s8(*v3);
  v8.i16[0] = vaddlv_u8(v8);
  v5 = v2 + v8.i32[0];
LABEL_8:
  v9 = vcnt_s8((*&v3[v4] & ~(-1 << a2)));
  v9.i16[0] = vaddlv_u8(v9);
  return (v5 + v9.i32[0]);
}

void findMatchTermChar(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 8);
  v6 = *(&tcm + a3);
  if (HIDWORD(a2) != 1)
  {
    if (HIDWORD(a2) != 3)
    {
      return;
    }

    v7 = *(*(v5 + 8) + 1028 * a2 + 4 * v6 + 4);
    v8 = v7 >> 1;
    v9 = v7 >> 3;
    v10 = (v7 & 7) << 32;
    if ((v7 & 3) == 1)
    {
      v9 = v7 >> 2;
      v10 = 0x100000000;
    }

    if (v7)
    {
      v8 = v9;
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

  v12 = a3;
  v13 = mgetBase(v5, a2);
  v14 = (v13 + 4);
  if (((*(v13 + 4 + 4 * (v6 >> 5)) >> v6) & 1) == 0)
  {
    return;
  }

  LOBYTE(a3) = v12;
  v15 = 0;
  v16 = v6 >> 6;
  if (v6 >> 6 > 1)
  {
    if (v16 != 2)
    {
      v18 = vcnt_s8(*(v13 + 20));
      v18.i16[0] = vaddlv_u8(v18);
      v15 = v18.u32[0];
    }

    v19 = vcnt_s8(*(v13 + 12));
    v19.i16[0] = vaddlv_u8(v19);
    v15 += v19.u32[0];
    goto LABEL_15;
  }

  v17 = v6 >> 6;
  if (v16)
  {
LABEL_15:
    v20 = vcnt_s8(*v14);
    v20.i16[0] = vaddlv_u8(v20);
    v17 = v20.u32[0] + v15;
  }

  v21 = vcnt_s8((*&v14[v16] & ~(-1 << v6)));
  v21.i16[0] = vaddlv_u8(v21);
  v22 = *(v13 + 38 + 4 * (v21.u32[0] + v17));
  if (v22)
  {
    if ((*(v13 + 38 + 4 * (v21.u32[0] + v17)) & 3) == 1)
    {
      v8 = v22 >> 2;
      v11 = 0x100000000;
    }

    else
    {
      v11 = (v22 & 7) << 32;
      v8 = v22 >> 3;
    }
  }

  else
  {
    v11 = 0;
    v8 = v22 >> 1;
  }

LABEL_21:
  if (v8)
  {
    v23 = a1 + 88;
    v24 = *(a1 + 1140);
    *(a1 + 1140) = v24 + 1;
    *(v23 + v24) = a3;
    *(v23 + *(a1 + 1140)) = 0;
    ++*(a1 + 1224);
    if (v11)
    {
      *(a1 + 52) = v8;
      *(a1 + 56) = HIDWORD(v11);
      findMatchTerm(a1, 0);
      *(a1 + 52) = a2;
    }

    else
    {
      findAddFlatBucket(a1, v8, 0, 0, 0, 0);
    }

    --*(a1 + 1224);
    --*(a1 + 1140);
  }
}

unsigned __int8 *localizedFieldTermMatch(uint64_t a1, int a2, unsigned __int8 *a3, int a4, int a5)
{
  result = termFieldMatch(a2, a3, a4, a5);
  if (result)
  {
    return icu_search_match();
  }

  return result;
}

uint64_t termMatch(unsigned __int8 *a1, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a1;
  v5 = *a3;
  if (v5 > 4)
  {
    if (v5 == 42)
    {
      v11 = a4;
      v12 = a3;
      v13 = termPropertyID(a1, a2);
      a3 = v12;
      a4 = v11;
      if (v13 == 2)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v5 != *a1)
    {
      return 0;
    }

    v6 = a3 + 1;
    v7 = a3[1];
    if (v7 != a1[1])
    {
      return 0;
    }

    if (v7 == 2)
    {
      v10 = a3[2];
      v8 = a3 + 2;
      v9 = v10;
      if (v10 != a1[2])
      {
        return 0;
      }

      v4 = a1 + 3;
      v6 = v8;
      a3 = v8 + 1;
      if (v9 < 0)
      {
LABEL_12:
        v15 = *a3;
        if (v15 == *v4)
        {
          a3 = v6 + 2;
          if ((v15 & 0x80000000) == 0)
          {
            ++v4;
            goto LABEL_15;
          }

          v16 = *a3;
          if (v16 == v4[1])
          {
            if ((v16 & 0x80000000) == 0)
            {
              v4 += 2;
              a3 = v6 + 3;
              goto LABEL_15;
            }

            v17 = v6[3];
            if ((v17 & 0x80000000) == 0 && v4[2] == v17)
            {
              v4 += 3;
              a3 = v6 + 4;
              goto LABEL_15;
            }
          }
        }

        return 0;
      }
    }

    else
    {
      v4 = a1 + 2;
      a3 += 2;
      if ((v7 & 0x80) != 0)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_15:

  return matche(a3, v4, a4, 0, 0);
}

uint64_t termNumberCompare(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a1 == 0;
  v4 = *a2;
  if (*a1)
  {
    v5 = v2 == v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = a2 + 1;
    v7 = a1 + 1;
    do
    {
      v8 = *v7++;
      v2 = v8;
      v3 = v8 == 0;
      v9 = *v6++;
      v4 = v9;
      if (v2)
      {
        v10 = v2 == v4;
      }

      else
      {
        v10 = 0;
      }
    }

    while (v10);
  }

  if (v4)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  if (v2 < v4)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v3)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

void _findMatchTermWildcard(uint64_t a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  v6 = *(a1 + 1140);
  if (v6 >= 0x414)
  {
    v9 = __si_assert_copy_extra_2708(*(*(a1 + 8) + 4576));
    v10 = v9;
    v11 = "";
    if (v9)
    {
      v11 = v9;
    }

    __message_assert("%s:%u: failed assertion '%s' %s max depth exceeded: %d", "BurstTrie.c", 4340, "ctx->stringLen<CI_UTF8CHARS_BUFFER_SIZE", v11, *(a1 + 1140));
    free(v10);
    if (__valid_fsp(*(*(a1 + 8) + 4576)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v7 = a1 + 88;
  *(a1 + 1140) = v6 + 1;
  *(v7 + v6) = a4;
  *(v7 + *(a1 + 1140)) = 0;
  if (HIDWORD(a3))
  {
    *(a1 + 52) = a3;
    if (a5)
    {
      findMatchTermWildcard(a1, *(a1 + 52), 0, 1);
    }

    else
    {
      findMatchTerm(a1, 0);
    }

    *(a1 + 52) = a2;
  }

  else
  {
    findAddFlatBucket(a1, a3, 0, 0, 0, 0);
  }

  --*(a1 + 1140);
}

uint64_t _bt_dumpTrie(unint64_t a1, int a2, _DWORD *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (__THREAD_SLOT_KEY)
  {
    v12 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    makeThreadId();
    v12 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v12)
    {
LABEL_3:
      v13 = v12;
      if (v12 < 0x801)
      {
        goto LABEL_4;
      }
    }
  }

  makeThreadId();
  v13 = pthread_getspecific(__THREAD_SLOT_KEY);
LABEL_4:
  v14 = v13 - 1;
  v15 = v13 - 1;
  v16 = LODWORD(threadData[9 * v13 - 5]);
  db_read_lock(a1 + 4600);
  CIOnThreadCleanUpPush(v14, si_dglock_rdunlock, a1 + 4600);
  v17 = a4;
  if (!a4)
  {
    v17 = malloc_type_malloc(0x5160uLL, 0x10A00408BF7D057uLL);
    CICleanUpPush(v15, MEMORY[0x1E69E9B38], v17);
  }

  v18 = v16;
  v19 = malloc_type_malloc(0x18uLL, 0x1020040F21E5318uLL);
  storage_reader_init(a1 + 160, v19);
  CICleanUpPush(v15, storage_reader_free, v19);
  *v17 = v19;
  v17[1] = a5;
  v17[2] = a6;
  *(v17 + 6) = 0;
  v22 = *(a1 + 4584);
  v51 = 0;
  if (!*(v19 + 1))
  {
    if (a2)
    {
      v38 = &v51;
    }

    else
    {
      v38 = *(v19 + 1);
    }

    bt_dumpTrieFatData(a1, v22 == 1, 1u, 0, (v17 + 2092), v38, a3, v17, v20, v21);
    goto LABEL_32;
  }

  if (*(v19 + 16) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v23 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, v19, 0, add_explicit + 1);
    v49 = HIDWORD(v23);
    *buf = v23;
    v48 = __PAIR64__(v24, v25);
    v26 = threadData[9 * v23 + 1] + 320 * HIDWORD(v23);
    v27 = *(v26 + 312);
    v28 = *(v26 + 224);
    if (v28)
    {
      v28(*(v26 + 288));
    }

    v47 = *buf;
    v46 = v49;
    v45 = v48;
    if (_setjmp(v26))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v44, 2u);
      }

      *(v26 + 312) = v27;
      v31 = v45;
      if (__THREAD_SLOT_KEY)
      {
        v32 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v32)
        {
          goto LABEL_36;
        }
      }

      else
      {
        makeThreadId();
        v32 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v32)
        {
          goto LABEL_36;
        }
      }

      v33 = v32;
      if (v32 < 0x801)
      {
LABEL_16:
        v34 = &threadData[9 * v33];
        v36 = *(v34 - 4);
        v35 = (v34 - 2);
        if (v36 > v31)
        {
          v37 = v33 - 1;
          do
          {
            CIOnThreadCleanUpPop(v37);
          }

          while (*v35 > v31);
        }

        dropThreadId(v47, 1, add_explicit + 1);
        CICleanUpReset(v47, HIDWORD(v45));
        goto LABEL_32;
      }

LABEL_36:
      makeThreadId();
      v33 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_16;
    }

    if (a2)
    {
      v39 = &v51;
    }

    else
    {
      v39 = 0;
    }

    bt_dumpTrieFatData(a1, v22 == 1, 1u, 0, (v17 + 2092), v39, a3, v17, v29, v30);
    v40 = threadData[9 * v47 + 1] + 320 * v46;
    *(v40 + 312) = v27;
    v41 = *(v40 + 232);
    if (v41)
    {
      v41(*(v40 + 288));
    }

    dropThreadId(v47, 0, add_explicit + 1);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

LABEL_32:
  CIOnThreadCleanUpPop(v15);
  return CICleanUpReset(v15, v18);
}

unint64_t bt_dumpTrieFatData(unint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unint64_t *a6, _DWORD *a7, uint64_t a8, __n128 a9, __n128 a10)
{
  v11 = result;
  if (*(result + 144) < a3)
  {
    v47 = __si_assert_copy_extra_2708(*(result + 4576));
    v48 = v47;
    v49 = "";
    if (v47)
    {
      v49 = v47;
    }

    __message_assert("%s:%u: failed assertion '%s' %s s: %d, c: %d", "BurstTrie.c", 3237, "s<=getNum(t->baseFatCount)", v49, a3, *(v11 + 144));
    free(v48);
    if (__valid_fsp(*(v11 + 4576)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v12 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a2;
  v18 = *(*(result + 8) + 1028 * a3);
  if (a2)
  {
    v19 = a3;
    if ((v18 & 1) == 0 && v18)
    {
      result = dumpFlatData(result, 1, *a8, v18 >> 1, a4, a9, a10, a5, a7, *(a8 + 8), *(a8 + 16));
    }
  }

  else
  {
    v19 = a3;
    if (v18)
    {
      *(a5 + a4) = 0;
      result = (*(a8 + 8))(a4, a5, *(*(result + 8) + 1028 * a3), 0, *(a8 + 16));
    }
  }

  if (!*a7)
  {
    v20 = 0;
    v55 = a6;
    v56 = v12;
    v54 = v15;
    v53 = v17;
    do
    {
      v21 = *(*(v11 + 8) + 1028 * v19 + 4 * v20 + 4);
      v22 = (v21 & 7) << 32;
      v23 = v21 >> 2;
      if ((v21 & 3) == 1)
      {
        v22 = 0x100000000;
      }

      else
      {
        v23 = v21 >> 3;
      }

      if (v21)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0;
      }

      if (v21)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21 >> 1;
      }

      if (v25)
      {
        *(v15 + v16) = v20;
        if (HIDWORD(v24) == 1)
        {
          result = bt_dumpTrieData(v11, v17, v25, v16 + 1, v15, a6, a7, v12);
        }

        else if (HIDWORD(v24) == 3)
        {
          result = bt_dumpTrieFatData(v11, v17, v25, v16 + 1, v15, a6, a7, v12);
        }

        else
        {
          if (v24)
          {
            v50 = __si_assert_copy_extra_2708(0);
            v51 = v50;
            if (v50)
            {
              v52 = v50;
            }

            else
            {
              v52 = "";
            }

            __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 3274, v52);
            free(v51);
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          result = dumpFlatData(v11, v17, *v12, v25, v16 + 1, a9, a10, v15, a7, *(v12 + 8), *(v12 + 16));
          if (a6)
          {
            v26 = *a6;
            if (result > *a6 && result - *a6 > 0x10000)
            {
              v57 = *v12;
              v58 = result;
              v27 = result & ~*MEMORY[0x1E69E9AB8];
              v28 = *(*v12 + 8);
              if (v28)
              {
                v29 = *(v28 + 560);
                if (v29 >= 1)
                {
                  for (i = 0; i < v29; ++i)
                  {
                    v31 = *(v28 + 584 + 8 * i);
                    if (v31)
                    {
                      v32 = v31[2];
                      v33 = v26 >= v32;
                      v34 = v26 - v32;
                      if (v33)
                      {
                        v35 = v31[3];
                        v36 = v31[1];
                        if (v35 <= v27)
                        {
                          v37 = 0;
                        }

                        else
                        {
                          v37 = v34;
                        }

                        result = sync_invalidate_mapping((v36 + v37), v27 - v26);
                        v29 = *(v28 + 560);
                      }
                    }
                  }
                }
              }

              v38 = *v57;
              if (*v57)
              {
                v39 = *(v38 + 248);
                if (v39 >= 1)
                {
                  for (j = 0; j < v39; ++j)
                  {
                    v41 = *(v38 + 272 + 8 * j);
                    if (v41)
                    {
                      v42 = v41[2];
                      v33 = v26 >= v42;
                      v43 = v26 - v42;
                      if (v33)
                      {
                        v44 = v41[3];
                        v45 = v41[1];
                        if (v44 <= v27)
                        {
                          v46 = 0;
                        }

                        else
                        {
                          v46 = v43;
                        }

                        result = sync_invalidate_mapping((v45 + v46), v27 - v26);
                        v39 = *(v38 + 248);
                      }
                    }
                  }
                }
              }

              a6 = v55;
              v12 = v56;
              *v55 = v58 & ~*MEMORY[0x1E69E9AB8];
              v15 = v54;
              v17 = v53;
              v19 = a3;
            }
          }
        }
      }

      if (*a7)
      {
        break;
      }

      v33 = v20++ >= 0xFF;
    }

    while (!v33);
  }

  return result;
}

unint64_t bt_dumpTrieData(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, unint64_t *a6, _DWORD *a7, uint64_t a8)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a2;
  v66 = 0;
  v59 = a8 + 16 * *(a8 + 24) + 32;
  v60 = a2;
  for (result = mgetBase(a1, a3); ; result = mgetBase(a1, v16))
  {
    v68 = result;
    v18 = *result;
    if (v12)
    {
      if ((v18 & 1) == 0 && v18)
      {
        result = dumpFlatData(a1, 1, *a8, v18 >> 1, v66 + a4, v14, v15, v11, v9, *(a8 + 8), *(a8 + 16));
      }
    }

    else if (v18)
    {
      result = (*(a8 + 8))((v66 + a4), v11, v18, 0, *(a8 + 16));
    }

    v19 = 0;
    v65 = v66;
    if (*v9)
    {
      break;
    }

LABEL_11:
    if (v19 > 255)
    {
      break;
    }

    v20 = (v68 + 4);
    v69 = v65 + a4;
    v66 = v65 + 1;
    while (1)
    {
      if (((v20->i32[v19 >> 5] >> v19) & 1) == 0)
      {
        goto LABEL_39;
      }

      v21 = 0;
      v22 = v19 >> 6;
      if (v19 >> 6 > 1u)
      {
        if (v22 != 2)
        {
          v24 = vcnt_s8(*(v68 + 20));
          v24.i16[0] = vaddlv_u8(v24);
          v21 = v24.u32[0];
        }

        v25 = vcnt_s8(*(v68 + 12));
        v25.i16[0] = vaddlv_u8(v25);
        v21 += v25.u32[0];
LABEL_20:
        v26 = vcnt_s8(*v20);
        v26.i16[0] = vaddlv_u8(v26);
        v23 = v26.u32[0] + v21;
        goto LABEL_21;
      }

      v23 = v19 >> 6;
      if (v22)
      {
        goto LABEL_20;
      }

LABEL_21:
      v14.n128_u64[0] = vcnt_s8((*&v20[v22] & ~(-1 << v19)));
      v14.n128_u16[0] = vaddlv_u8(v14.n128_u64[0]);
      v27 = *(v68 + 38 + 4 * (v14.n128_u32[0] + v23));
      if (v27)
      {
        break;
      }

      *(v11 + v69) = v19;
      result = dumpFlatData(a1, v12, *a8, v27 >> 1, v69 + 1, v14, v15, v11, v9, *(a8 + 8), *(a8 + 16));
      if (!v10)
      {
        goto LABEL_39;
      }

      v28 = result;
      v29 = *v10;
      if (result <= *v10 || result - *v10 <= 0x10000)
      {
        goto LABEL_39;
      }

      v30 = result & ~*MEMORY[0x1E69E9AB8];
      v64 = *a8;
      v31 = *(*a8 + 8);
      if (v31)
      {
        v32 = *(v31 + 560);
        if (v32 >= 1)
        {
          for (i = 0; i < v32; ++i)
          {
            v34 = *(v31 + 584 + 8 * i);
            if (v34)
            {
              v35 = v34[2];
              v36 = v29 >= v35;
              v37 = v29 - v35;
              if (v36)
              {
                v38 = v34[3];
                v39 = v34[1];
                if (v38 <= v30)
                {
                  v40 = 0;
                }

                else
                {
                  v40 = v37;
                }

                result = sync_invalidate_mapping((v39 + v40), v30 - v29);
                v32 = *(v31 + 560);
              }
            }
          }
        }
      }

      v44 = *v64;
      if (*v64)
      {
        v45 = *(v44 + 248);
        if (v45 >= 1)
        {
          for (j = 0; j < v45; ++j)
          {
            v47 = *(v44 + 272 + 8 * j);
            if (v47)
            {
              v48 = v47[2];
              v36 = v29 >= v48;
              v49 = v29 - v48;
              if (v36)
              {
                v50 = v47[3];
                v51 = v47[1];
                if (v50 <= v30)
                {
                  v52 = 0;
                }

                else
                {
                  v52 = v49;
                }

                result = sync_invalidate_mapping((v51 + v52), v30 - v29);
                v45 = *(v44 + 248);
              }
            }
          }
        }
      }

      v10 = a6;
      v9 = a7;
      *a6 = v28 & ~*MEMORY[0x1E69E9AB8];
      v11 = a5;
      v12 = v60;
      if (*a7)
      {
        goto LABEL_54;
      }

LABEL_40:
      if (v19++ >= 255)
      {
        goto LABEL_54;
      }
    }

    if ((*(v68 + 38 + 4 * (v14.n128_u32[0] + v23)) & 3) == 1)
    {
      LODWORD(v16) = v27 >> 2;
      *(v11 + v69) = v19;
      goto LABEL_3;
    }

    v16 = v27 >> 3;
    v41 = *(v68 + 38 + 4 * (v14.n128_u32[0] + v23)) & 7;
    *(v11 + v69) = v19;
    if (v41 == 3)
    {
      v42 = *(a8 + 24);
      *(a8 + 24) = v66 + v42;
      result = bt_dumpTrieFatData(a1, v12, v16, v69 + 1, v11, v10, v9, a8);
      *(a8 + 24) = v42;
LABEL_39:
      if (*v9)
      {
        break;
      }

      goto LABEL_40;
    }

    if (v41 != 1)
    {
      v55 = __si_assert_copy_extra_2708(0);
      v56 = v55;
      if (v55)
      {
        v57 = v55;
      }

      else
      {
        v57 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 3376, v57);
      free(v56);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

LABEL_3:
    v17 = v59 + 16 * v65;
    *(v17 + 8) = v19;
    *v17 = v68;
  }

LABEL_54:
  while (1)
  {
    v53 = v65;
    if (!v65)
    {
      return result;
    }

    --v65;
    v54 = v59 + 16 * (v53 - 1);
    v19 = *(v54 + 8) + 1;
    v68 = *v54;
    if (!*v9)
    {
      goto LABEL_11;
    }
  }
}

uint64_t checkTrieFatData(uint64_t result, unsigned int a2, unint64_t a3, unint64_t a4, int *a5)
{
  v6 = result;
  if (*(result + 144) < a2)
  {
    v24 = __si_assert_copy_extra_2708(*(result + 4576));
    v25 = v24;
    v26 = "";
    if (v24)
    {
      v26 = v24;
    }

    __message_assert("%s:%u: failed assertion '%s' %s s: %d, c: %d", "BurstTrie.c", 3062, "s<=getNum(t->baseFatCount)", v26, a2, *(v6 + 144));
    free(v25);
    if (!__valid_fsp(*(v6 + 4576)))
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v10 = 1028 * a2 + 4;
  v11 = 256;
  do
  {
    v12 = *(*(v6 + 8) + v10);
    v13 = v12 >> 1;
    v14 = v12 >> 3;
    v15 = (v12 & 7) << 32;
    if ((v12 & 3) == 1)
    {
      v15 = 0x100000000;
      v14 = v12 >> 2;
    }

    v16 = (v12 & 1) == 0;
    if (v12)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v13;
    }

    else
    {
      v18 = v14;
    }

    if (v18)
    {
      if (HIDWORD(v17) == 1)
      {
        result = checkTrieData(v6, v18, a3, a4, a5);
      }

      else if (HIDWORD(v17) == 3)
      {
        result = checkTrieFatData(v6, v18, a3, a4, a5);
      }

      else
      {
        if (v17)
        {
          v27 = __si_assert_copy_extra_2708(0);
          v28 = v27;
          if (v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 3079, v29);
          free(v28);
LABEL_25:
          v23 = 2989;
          goto LABEL_31;
        }

        if (v18 << 6 > a3 && v18 << 6 < a4)
        {
          v20 = __si_assert_copy_extra_2708(0);
          v21 = v20;
          v22 = "";
          if (v20)
          {
            v22 = v20;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 3077, "!(offset>flatPagePtr && offset<flatPageEnd)", v22);
          free(v21);
          if (__valid_fs(-1))
          {
            goto LABEL_25;
          }

LABEL_30:
          v23 = 3072;
LABEL_31:
          *v23 = -559038737;
          abort();
        }
      }
    }

    v10 += 4;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t checkTrieData(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4, int *a5)
{
  v8 = 0;
  v35 = &a5[4 * *a5 + 2];
  result = mgetBase(a1, a2);
LABEL_4:
  v12 = result;
  v13 = 0;
  v14 = v8;
LABEL_5:
  v15 = (v12 + 4);
  do
  {
    if (((v15->i32[v13 >> 5] >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }

    v18 = 0;
    v19 = v13 >> 6;
    if (v13 >> 6 > 1u)
    {
      if (v19 != 2)
      {
        v21 = vcnt_s8(*(v12 + 20));
        v21.i16[0] = vaddlv_u8(v21);
        v18 = v21.u32[0];
      }

      v22 = vcnt_s8(*(v12 + 12));
      v22.i16[0] = vaddlv_u8(v22);
      v18 += v22.u32[0];
LABEL_19:
      v23 = vcnt_s8(*v15);
      v23.i16[0] = vaddlv_u8(v23);
      v20 = v23.u32[0] + v18;
      goto LABEL_20;
    }

    v20 = v13 >> 6;
    if (v19)
    {
      goto LABEL_19;
    }

LABEL_20:
    v24 = vcnt_s8((*&v15[v19] & ~(-1 << v13)));
    v24.i16[0] = vaddlv_u8(v24);
    v25 = *(v12 + 38 + 4 * (v24.u32[0] + v20));
    if (v25)
    {
      if ((*(v12 + 38 + 4 * (v24.u32[0] + v20)) & 3) == 1)
      {
        LODWORD(v10) = v25 >> 2;
LABEL_3:
        v11 = v35 + 16 * v14;
        *(v11 + 8) = v13;
        *v11 = v12;
        v8 = v14 + 1;
        result = mgetBase(a1, v10);
        goto LABEL_4;
      }

      v10 = v25 >> 3;
      v26 = *(v12 + 38 + 4 * (v24.u32[0] + v20)) & 7;
      if (v26 != 3)
      {
        if (v26 != 1)
        {
          v29 = __si_assert_copy_extra_2708(0);
          v30 = v29;
          if (v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 3043, v31);
          free(v30);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        goto LABEL_3;
      }

      v27 = *a5;
      *a5 += v14 + 1;
      result = checkTrieFatData(a1, v10, a3, a4, a5);
      *a5 = v27;
    }

    else
    {
      v16 = 32 * v25;
      if (v16 > a3 && v16 < a4)
      {
        v32 = __si_assert_copy_extra_2708(0);
        v33 = v32;
        v34 = "";
        if (v32)
        {
          v34 = v32;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 3041, "!(offset>flatPagePtr && offset<flatPageEnd)", v34);
        free(v33);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

LABEL_11:
    ++v13;
  }

  while (v13 != 256);
  while (v14)
  {
    --v14;
    v28 = v35 + 16 * v14;
    v13 = *(v28 + 8) + 1;
    v12 = *v28;
    if (v13 <= 255)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t bt_lastCompactTermOffset(uint64_t a1)
{
  if (*(a1 + 4584) != 1)
  {
    return 0;
  }

  v1 = 0;
  v2 = 1;
  while (1)
  {
LABEL_3:
    if (v2 > *(a1 + 144))
    {
      return 0;
    }

    v3 = *(a1 + 8);
    v4 = *(v3 + 1028 * v2);
    v5 = v4 >> 1;
    v6 = v4 >> 3;
    v7 = (v4 & 7) << 32;
    if ((v4 & 3) == 1)
    {
      v7 = 0x100000000;
      v6 = v4 >> 2;
    }

    v59 = (*(v3 + 1028 * v2) & 1) == 0;
    if (v4)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (*(v3 + 1028 * v2))
    {
      v5 = v6;
    }

    v9 = v3 + 1028 * v2;
    v10 = 1024;
    while (1)
    {
      v11 = *(v9 + v10);
      v12 = v11 >> 1;
      v13 = v11 >> 3;
      v14 = (v11 & 7) << 32;
      if ((v11 & 3) == 1)
      {
        v14 = 0x100000000;
        v13 = v11 >> 2;
      }

      v59 = (*(v9 + v10) & 1) == 0;
      v15 = (v11 & 1) != 0 ? v14 : 0;
      v2 = (*(v9 + v10) & 1) != 0 ? v13 : v12;
      if (v2)
      {
        break;
      }

      v10 -= 4;
      if (!v10)
      {
        v15 = v8;
        v2 = v5;
        goto LABEL_48;
      }
    }

    if (v15 != 0x300000000)
    {
      break;
    }

    if (++v1 == 1045)
    {
      return 0;
    }
  }

  if (!v15)
  {
LABEL_48:
    v61 = v15 | v2;
LABEL_49:

    return flatLastCompactTermOffset(a1, v61);
  }

  if (v15 != 0x100000000)
  {
    return 0;
  }

  do
  {
    if (v1 > 0x413)
    {
      return 0;
    }

    v16 = a1;
    v17 = mgetBase(a1, v2);
    v19 = *v17;
    if (*v17)
    {
      if ((*v17 & 3) == 1)
      {
        v21 = v19 >> 2;
        v20 = 0x100000000;
      }

      else
      {
        v20 = (v19 & 7) << 32;
        v21 = v19 >> 3;
      }
    }

    else
    {
      v20 = 0;
      v21 = v19 >> 1;
    }

    a1 = v16;
    v22 = v17[1];
    v23 = v17[2];
    v24 = v23 & v22;
    v25 = v23 ^ v22;
    v26 = v17[3];
    v27 = v17[4];
    v28 = v25 ^ v26;
    v29 = v25 & v26;
    v30 = v28 & v27;
    v31 = v28 & v27 | v29;
    v32 = v28 ^ v27;
    v33 = v30 & v24;
    v34 = v31 ^ v24;
    v35 = v17[5];
    v36 = v17[6];
    v37 = v32 ^ v35;
    v38 = (v32 ^ v35) & v36 | v32 & v35;
    v39 = v37 ^ v36;
    v40 = v17[7];
    v41 = v17[8];
    v42 = v39 ^ v40;
    v43 = (v39 ^ v40) & v41 | v39 & v40;
    v44 = v42 ^ v41;
    v45 = v38 ^ v34;
    v46 = (v43 & (v38 ^ v34) | v38 & v34) ^ v33;
    v18.i32[0] = v43 & v45 & v33;
    v47 = vcnt_s8(v18);
    v47.i16[0] = vaddlv_u8(v47);
    v48 = v47.i32[0];
    v47.i32[0] = v46;
    v49 = vcnt_s8(v47);
    v49.i16[0] = vaddlv_u8(v49);
    v50 = v49.i32[0];
    v49.i32[0] = v43 ^ v45;
    v51 = vcnt_s8(v49);
    v51.i16[0] = vaddlv_u8(v51);
    v52 = v51.i32[0];
    v51.i32[0] = v44;
    v53 = vcnt_s8(v51);
    v53.i16[0] = vaddlv_u8(v53);
    v54 = v53.i32[0] + 2 * v52 + 8 * v48 + 4 * v50;
    if (!v54)
    {
      goto LABEL_52;
    }

    v55 = *(&v17[v54 - 1 + 9] + 2);
    v56 = v55 >> 1;
    v57 = v55 >> 3;
    v58 = (v55 & 7) << 32;
    if ((v55 & 3) == 1)
    {
      v58 = 0x100000000;
      v57 = v55 >> 2;
    }

    v59 = (v55 & 1) == 0;
    v60 = (v55 & 1) != 0 ? v58 : 0;
    v2 = v59 ? v56 : v57;
    if (!v2)
    {
LABEL_52:
      v63 = v20 | v21;
      goto LABEL_53;
    }

    ++v1;
  }

  while (HIDWORD(v60) == 1);
  if (HIDWORD(v60) != 3)
  {
    if (v60)
    {
      return 0;
    }

    v20 = 0;
    v63 = v2;
LABEL_53:
    v61 = v20 | v63;
    goto LABEL_49;
  }

  if (++v1 <= 0x414)
  {
    goto LABEL_3;
  }

  return 0;
}

uint64_t ___bt_findTokens_block_invoke(void *a1, _DWORD *a2, unsigned int a3)
{
  v6 = *a2 - a2[2];
  v7 = *(*(a1[5] + 8) + 24);
  if (*(*(a1[4] + 8) + 24) + 1 >= v7)
  {
    v8 = 2 * v7;
    if (((v7 >> 10) & 0x7FFFFFFFFFFFLL) == 0 && v7 << 7 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal;
    }

    v10 = malloc_type_zone_calloc(queryZone, v8, 0x40uLL, 0x5BAF1CEAuLL);
    if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v13, 2u);
    }

    memcpy(v10, *(*(a1[6] + 8) + 24), *(*(a1[5] + 8) + 24) << 6);
    if (*(*(a1[5] + 8) + 24) >= 0x21uLL)
    {
      free(*(*(a1[6] + 8) + 24));
    }

    *(*(a1[6] + 8) + 24) = v10;
    *(*(a1[5] + 8) + 24) = v8;
  }

  result = TokenDataAddRange(a1[7], v6 | (a3 << 16));
  if (result)
  {
    if (v6 + a3 < *(a1[7] + 20))
    {
      *(*(*(a1[6] + 8) + 24) + (*(*(a1[4] + 8) + 24) << 6)) = *a2 + a3;
      *(*(*(a1[6] + 8) + 24) + (*(*(a1[4] + 8) + 24) << 6) + 56) = a2[14] - a3;
      *(*(*(a1[6] + 8) + 24) + (*(*(a1[4] + 8) + 24) << 6) + 8) = *(a2 + 1);
      v12 = a2[5];
      *(*(*(a1[6] + 8) + 24) + (*(*(a1[4] + 8) + 24) << 6) + 16) = a2[4];
      *(*(*(a1[6] + 8) + 24) + ((*(*(a1[4] + 8) + 24))++ << 6) + 20) = v12;
    }
  }

  return result;
}

void ___bt_resolveTokens_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1152))
  {
    for (i = 0; i < *(a2 + 1152); ++i)
    {
      if (**a2 == 1)
      {
        return;
      }

      v4 = (*(a2 + 1144) + (i << 6));
      *(a2 + 1240) = v4;
      v5 = *v4;
      *(a2 + 1224) = *v4;
      *(a2 + 1232) = v5;
      *(a2 + 1140) = 0;
      *(a2 + 88) = 0;
      v6 = *(a2 + 8);
      v7 = *v6;
      v8 = v7 >> 1;
      v9 = v7 >> 3;
      v10 = (v7 & 7) << 32;
      if ((v7 & 3) == 1)
      {
        v10 = 0x100000000;
        v9 = v7 >> 2;
      }

      v11 = (*v6 & 1) == 0;
      if (v7)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      if (*v6)
      {
        v13 = v9;
      }

      else
      {
        v13 = v8;
      }

      *(a2 + 52) = v12 | v13;
      v14 = *v4;
      if (!*v4 || *v14 > 3u)
      {
        goto LABEL_31;
      }

      v15 = v14[1];
      if (v14[1] < 0)
      {
        v17 = v14[2];
        if (v14[2] < 0)
        {
          v18 = v14[3];
          if (v14[3] < 0)
          {
            v20 = v14[4];
            if (v14[4] < 0)
            {
              v22 = v14[5];
              if (v22 < 0)
              {
                goto LABEL_141;
              }

              v23 = ((v20 & 0x7F) << 21) | (v22 << 28) | ((v18 & 0x7F) << 14) | ((v17 & 0x7F) << 7) | v15 & 0x7F;
              v16 = 6;
              v15 = v23;
            }

            else
            {
              v21 = ((v18 & 0x7F) << 14) | (v20 << 21) | ((v17 & 0x7F) << 7) | v15 & 0x7F;
              v16 = 5;
              v15 = v21;
            }
          }

          else
          {
            v19 = ((v17 & 0x7F) << 7) | (v18 << 14) | v15 & 0x7F;
            v16 = 4;
            v15 = v19;
          }
        }

        else
        {
          v15 = v15 & 0x7F | (v17 << 7);
          v16 = 3;
        }
      }

      else
      {
        v16 = 2;
      }

      if ((v15 - 1) <= 5)
      {
        v24 = v16 + 1;
        if (v14[v16] < 0)
        {
          v25 = v16 + 2;
          if ((v14[v24] & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          v24 = v16 + 3;
          if (v14[v25] < 0)
          {
            v25 = v16 + 4;
            if (v14[v24] < 0)
            {
              if (v14[v25] < 0)
              {
                v78 = __si_assert_copy_extra_2708(0);
                v79 = v78;
                v80 = "";
                if (v78)
                {
                  v80 = v78;
                }

                __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v80);
                free(v79);
                if (__valid_fs(-1))
                {
                  MEMORY[0xBAD] = -559038737;
                  abort();
                }

                MEMORY[0xC00] = -559038737;
                abort();
              }

              v16 += 5;
              goto LABEL_30;
            }

LABEL_29:
            v16 = v25;
            goto LABEL_30;
          }
        }

        v16 = v24;
      }

LABEL_30:
      *(a2 + 1232) = &v5[v16];
LABEL_31:
      v82 = *(a1 + 32);
      v26 = *(v4 + 14);
      v27 = v14;
      if (*(v4 + 5) < 7)
      {
        goto LABEL_88;
      }

      v27 = v14;
      if (*v14 != 1)
      {
        goto LABEL_88;
      }

      v28 = v14[1];
      if (v14[1] < 0)
      {
        v30 = v14[2];
        if (v14[2] < 0)
        {
          v31 = v14[3];
          if (v14[3] < 0)
          {
            v32 = v14[4];
            if (v14[4] < 0)
            {
              v33 = v14[5];
              if (v33 < 0)
              {
                goto LABEL_141;
              }

              v29 = 6;
              if ((((v32 & 0x7F) << 21) | (v33 << 28) | ((v31 & 0x7F) << 14) | ((v30 & 0x7F) << 7) | v28 & 0x7F) != 2)
              {
                goto LABEL_55;
              }
            }

            else
            {
              v29 = 5;
              if ((((v31 & 0x7F) << 14) | (v32 << 21) | ((v30 & 0x7F) << 7) | v28 & 0x7F) != 2)
              {
                goto LABEL_55;
              }
            }
          }

          else
          {
            v29 = 4;
            if ((((v30 & 0x7F) << 7) | (v31 << 14) | v28 & 0x7F) != 2)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
          v29 = 3;
          if ((v28 & 0x7F | (v30 << 7)) != 2)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
        v29 = 2;
        if (v28 != 2)
        {
          goto LABEL_55;
        }
      }

      v34 = v29 + 1;
      if (v14[v29] < 0)
      {
        v35 = v29 + 2;
        if ((v14[v34] & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

        v34 = v29 + 3;
        if (v14[v35] < 0)
        {
          v35 = v29 + 4;
          if (v14[v34] < 0)
          {
            if (v14[v35] < 0)
            {
LABEL_141:
              v74 = __si_assert_copy_extra_2708(0);
              v75 = v74;
              v76 = "";
              if (v74)
              {
                v76 = v74;
              }

              __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v76);
              free(v75);
              if (__valid_fs(-1))
              {
                v77 = 2989;
              }

              else
              {
                v77 = 3072;
              }

              *v77 = -559038737;
              abort();
            }

            v29 += 5;
            goto LABEL_55;
          }

LABEL_54:
          v29 = v35;
          goto LABEL_55;
        }
      }

      v29 = v34;
LABEL_55:
      v27 = v14;
      if (v29 > v26)
      {
        goto LABEL_88;
      }

      v36 = 0;
      v37 = HIDWORD(v12);
      while (1)
      {
        if (v37 == 3)
        {
          v44 = *(*(v6 + 1) + 1028 * v13 + 4 * *(&tcm + v14[v36]) + 4);
          if (v44)
          {
            goto LABEL_75;
          }

          v13 = v44 >> 1;
          if (!(v44 >> 1))
          {
            goto LABEL_80;
          }

          goto LABEL_58;
        }

        if (v37 != 1)
        {
          break;
        }

        v38 = mgetBase(v6, v13);
        v39 = *(&tcm + v14[v36]);
        v40 = (v38 + 4);
        if (((*(v38 + 4 + ((v39 >> 3) & 0x1C)) >> v39) & 1) == 0)
        {
          goto LABEL_80;
        }

        v41 = 0;
        v42 = v39 >> 6;
        if ((v39 >> 6) > 1)
        {
          if (v42 != 2)
          {
            v45 = vcnt_s8(*(v38 + 20));
            v45.i16[0] = vaddlv_u8(v45);
            v41 = v45.u32[0];
          }

          v46 = vcnt_s8(*(v38 + 12));
          v46.i16[0] = vaddlv_u8(v46);
          v41 += v46.u32[0];
        }

        else
        {
          v43 = v39 >> 6;
          if (!v42)
          {
            goto LABEL_72;
          }
        }

        v47 = vcnt_s8(*v40);
        v47.i16[0] = vaddlv_u8(v47);
        v43 = v47.u32[0] + v41;
LABEL_72:
        v48 = vcnt_s8((*&v40[v42] & ~(-1 << v39)));
        v48.i16[0] = vaddlv_u8(v48);
        v44 = *(v38 + 38 + 4 * (v48.u32[0] + v43));
        if (v44)
        {
LABEL_75:
          if ((v44 & 3) == 1)
          {
            v13 = v44 >> 2;
            if (!(v44 >> 2))
            {
              goto LABEL_80;
            }

            v37 = 1;
          }

          else
          {
            v13 = v44 >> 3;
            if (!(v44 >> 3))
            {
LABEL_80:
              v27 = v14;
              goto LABEL_88;
            }

            v37 = v44 & 7;
          }

          goto LABEL_59;
        }

        v13 = v44 >> 1;
        if (!(v44 >> 1))
        {
          goto LABEL_80;
        }

LABEL_58:
        v37 = 0;
LABEL_59:
        if (v29 == ++v36)
        {
          v27 = &v14[v29];
          if (v37)
          {
            *(a2 + 52) = v13 | (v37 << 32);
            goto LABEL_88;
          }

          goto LABEL_87;
        }
      }

      v27 = v14;
      if (v36)
      {
        v27 = v14;
        if (!v37)
        {
          v27 = v14;
          if (v13)
          {
            v29 = v36;
            v27 = &v14[v36];
LABEL_87:
            findAddFlatBucket(a2, v13, v14, v29, 0, 0);
          }
        }
      }

LABEL_88:
      if (!v14)
      {
        continue;
      }

      v49 = &v14[v26];
      if (v27 >= v49)
      {
        continue;
      }

LABEL_90:
      v50 = 0;
      v51 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v27 >> 4];
      v52 = *(a2 + 8);
      v53 = *(a2 + 52);
      v54 = HIDWORD(v53);
      v55 = v53;
LABEL_92:
      if (v54 == 3)
      {
        v62 = *(*(v52 + 8) + 1028 * v55 + 4 * *(&tcm + v27[v50]) + 4);
        if ((v62 & 1) == 0)
        {
          goto LABEL_99;
        }

LABEL_106:
        if ((v62 & 3) == 1)
        {
          v55 = v62 >> 2;
          if (!(v62 >> 2))
          {
            continue;
          }

          v54 = 1;
        }

        else
        {
          v55 = v62 >> 3;
          if (!(v62 >> 3))
          {
            continue;
          }

          v54 = v62 & 7;
        }

LABEL_91:
        if (v51 == ++v50)
        {
          goto LABEL_114;
        }

        goto LABEL_92;
      }

      if (v54 == 1)
      {
        v56 = mgetBase(v52, v55);
        v57 = *(&tcm + v27[v50]);
        v58 = (v56 + 4);
        if (((*(v56 + 4 + ((v57 >> 3) & 0x1C)) >> v57) & 1) == 0)
        {
          continue;
        }

        v59 = 0;
        v60 = v57 >> 6;
        if ((v57 >> 6) > 1)
        {
          if (v60 != 2)
          {
            v63 = vcnt_s8(*(v56 + 20));
            v63.i16[0] = vaddlv_u8(v63);
            v59 = v63.u32[0];
          }

          v64 = vcnt_s8(*(v56 + 12));
          v64.i16[0] = vaddlv_u8(v64);
          v59 += v64.u32[0];
        }

        else
        {
          v61 = v57 >> 6;
          if (!v60)
          {
LABEL_105:
            v66 = vcnt_s8((*&v58[v60] & ~(-1 << v57)));
            v66.i16[0] = vaddlv_u8(v66);
            v62 = *(v56 + 38 + 4 * (v66.u32[0] + v61));
            if (v62)
            {
              goto LABEL_106;
            }

LABEL_99:
            v55 = v62 >> 1;
            if (!(v62 >> 1))
            {
              continue;
            }

            v54 = 0;
            goto LABEL_91;
          }
        }

        v65 = vcnt_s8(*v58);
        v65.i16[0] = vaddlv_u8(v65);
        v61 = v65.u32[0] + v59;
        goto LABEL_105;
      }

      if (v54 || !v55)
      {
        continue;
      }

      v54 = 0;
      LODWORD(v51) = v50;
LABEL_114:
      if (!v51)
      {
        continue;
      }

      v27 += v51;
      v67 = v55 | (v54 << 32);
      *(a2 + 52) = v67;
      switch(v54)
      {
        case 1:
          v68 = mgetBase(*(a2 + 8), v55);
LABEL_119:
          v69 = *v68;
          if (*(a2 + 48) == 1)
          {
            v70 = v69 >> 1;
            v71 = v69 >> 3;
            v72 = (v69 & 7) << 32;
            if ((v69 & 3) == 1)
            {
              v72 = 0x100000000;
              v71 = v69 >> 2;
            }

            v11 = (*v68 & 1) == 0;
            if (v69)
            {
              v73 = v72;
            }

            else
            {
              v73 = 0;
            }

            if (*v68)
            {
              v70 = v71;
            }

            if (v70)
            {
              findAddFlatBucket(a2, v73 | v70, v14, v27 - v14, 0, 0);
            }
          }

          else if (v82 && *v68)
          {
            (*(v82 + 16))(v82, *(a2 + 1240), (v27 - v14));
          }

          if (v27 >= v49)
          {
            break;
          }

          goto LABEL_90;
        case 3:
          v68 = *(*(a2 + 8) + 8);
          goto LABEL_119;
        case 0:
          findAddFlatBucket(a2, v67, v14, v27 - v14, 0, 0);
          break;
      }
    }
  }
}

BOOL ___bt_resolveTokens_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v127 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 1152))
  {
    result = 0;
    goto LABEL_143;
  }

  v3 = a3;
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v8 = (a2 + 88);
  v107 = (a2 + 89);
  v108 = (a2 + 88);
  while (2)
  {
    if (((*(v3 + (v6 >> 3)) >> (v6 & 7)) & 1) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 1144);
    *(a2 + 1240) = v9 + (v6 << 6);
    ++*(a2 + 1280);
    v10 = *(a2 + 1140);
    if (v10 < 3)
    {
      goto LABEL_3;
    }

    v11 = *(v9 + (v6 << 6));
    v112 = *(a2 + 1140);
    v12 = termPropertyID(v8, v10);
    v13 = *(a2 + 1240);
    v14 = *(v13 + 20);
    if ((*(v13 + 19) & 4) == 0)
    {
      if (!v14)
      {
        v15 = v112;
        if (v12 == 2)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }

      goto LABEL_12;
    }

    if (v14)
    {
LABEL_12:
      v15 = v112;
      if (v12 != 1)
      {
        goto LABEL_3;
      }

      v16 = v8[v112 - 1];
      v17 = v16 == 3;
      if (v16 > 3)
      {
        goto LABEL_3;
      }

      v18 = -2;
      if (!v17)
      {
        v18 = -1;
      }

      if (v8[v112 + v18] == 2)
      {
        goto LABEL_3;
      }

      goto LABEL_19;
    }

    v15 = v112;
    if (v12 != 2)
    {
LABEL_3:
      ++v7;
      goto LABEL_4;
    }

LABEL_19:
    v105 = v7;
    v106 = v7 + 1;
    v19 = 0;
    v20 = 0;
    v111 = v15 & 0xFFFFFFFFFFFFFFFELL;
    v115 = v15;
    v110 = &v120 + v15;
    for (i = v8; ; i += v38)
    {
      v22 = *v11;
      v23 = *v11 >> 4;
      if ((v22 & 0x80000000) != 0)
      {
        v24 = utf8_byte_length(unsigned char)::utf8_len_table[v23];
        v25 = v22 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v24];
        if ((~v23 & 0xC) != 0)
        {
          v22 &= utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v24];
        }

        else
        {
          if (v24 <= 2)
          {
            v26 = 2;
          }

          else
          {
            v26 = utf8_byte_length(unsigned char)::utf8_len_table[v23];
          }

          v27 = v26 - 1;
          v28 = v11 + 1;
          do
          {
            v29 = *v28++;
            v22 = v29 & 0x3F | (v25 << 6);
            v25 = v22;
            --v27;
          }

          while (v27);
        }
      }

      v30 = *i;
      v31 = v30 >> 4;
      if ((v30 & 0x80) != 0)
      {
        v32 = utf8_byte_length(unsigned char)::utf8_len_table[v31];
        v33 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v32] & v30;
        if ((~(v30 >> 4) & 0xC) != 0)
        {
          LODWORD(v30) = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v32] & v30;
        }

        else
        {
          if (v32 <= 2)
          {
            v34 = 2;
          }

          else
          {
            v34 = utf8_byte_length(unsigned char)::utf8_len_table[v31];
          }

          v35 = v34 - 1;
          v36 = (i + 1);
          do
          {
            v37 = *v36++;
            LODWORD(v30) = v37 & 0x3F | (v33 << 6);
            v33 = v30;
            --v35;
          }

          while (v35);
        }
      }

      v38 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v31];
      v39 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v23];
      if (v30 < 2)
      {
        if (v19 && v22 - 12448 < 0x60 || v20 && v22 - 12352 < 0x60)
        {
          v7 = v106;
          goto LABEL_140;
        }

LABEL_44:
        v113 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v23];
        v114 = v38;
        if (v115 > 1043)
        {
LABEL_116:
          v79 = (v11 - **(a2 + 1240));
          (*(*(v5 + 32) + 16))();
          v39 = v113;
          v38 = v114;
          goto LABEL_117;
        }

        bzero(&v121, 0x415uLL);
        __memcpy_chk();
        v40 = v112;
        if (!v112)
        {
          v55 = 0;
          v54 = 0;
          v53 = 0;
          v52 = 0;
          *(&v121 + v115) = 0;
          goto LABEL_69;
        }

        v41 = v107;
        v42 = &v122;
        v43 = v111;
        if (v112 == 1)
        {
          v44 = 0;
        }

        else
        {
          do
          {
            v45 = *(v41 - 1);
            v46 = *v41;
            v41 += 2;
            v47 = tcmn[v46];
            *(v42 - 1) = tcmn[v45];
            *v42 = v47;
            v42 += 2;
            v43 -= 2;
          }

          while (v43);
          v44 = v111;
          if (v111 == v115)
          {
            goto LABEL_52;
          }
        }

        v48 = v115 - v44;
        v49 = (&v121 + v44);
        v50 = &v8[v44];
        do
        {
          v51 = *v50++;
          *v49++ = tcmn[v51];
          --v48;
        }

        while (v48);
LABEL_52:
        *(&v121 + v115) = 0;
        if (v115 < 2)
        {
          goto LABEL_67;
        }

        v52 = v121;
        if (v121 - 2 < 3)
        {
          v53 = v122;
          if (v122 < 0)
          {
            if (v123 < 0)
            {
              if (v124 < 0)
              {
                if (v125 < 0)
                {
                  if (v126 < 0)
                  {
                    v90 = __si_assert_copy_extra_332();
                    v91 = v90;
                    v92 = "";
                    if (v90)
                    {
                      v92 = v90;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v92);
                    free(v91);
                    if (__valid_fs(-1))
                    {
                      v93 = 2989;
                    }

                    else
                    {
                      v93 = 3072;
                    }

                    *v93 = -559038737;
                    abort();
                  }

                  v54 = 0;
                  v55 = 6;
                  v53 = ((v125 & 0x7F) << 21) | (v126 << 28) | ((v124 & 0x7F) << 14) | ((v123 & 0x7F) << 7) | v122 & 0x7F;
                }

                else
                {
                  v54 = 0;
                  v55 = 5;
                  v53 = ((v124 & 0x7F) << 14) | (v125 << 21) | ((v123 & 0x7F) << 7) | v122 & 0x7F;
                }
              }

              else
              {
                v54 = 0;
                v55 = 4;
                v53 = ((v123 & 0x7F) << 7) | (v124 << 14) | v122 & 0x7F;
              }
            }

            else
            {
              v54 = 0;
              v53 = v122 & 0x7F | (v123 << 7);
              v55 = 3;
            }
          }

          else
          {
            v54 = 0;
            v55 = 2;
          }

          goto LABEL_69;
        }

        if (v121 == 1)
        {
          v54 = v122 == 2;
          if (v122 == 2)
          {
            v56 = 2;
          }

          else
          {
            v56 = 1;
          }

          v55 = v56 + 1;
          if (v122 == 2)
          {
            v53 = v123;
          }

          else
          {
            v53 = v122;
          }

          if ((v53 & 0x80) != 0)
          {
            v57 = v56 + 2;
            v58 = *(&v121 + v55);
            v59 = v58;
            if (v58 < 0)
            {
              v80 = v56 + 3;
              v81 = *(&v121 + v57);
              v82 = *(&v121 + v57);
              if (v81 < 0)
              {
                v55 = v56 | 4;
                v83 = *(&v121 + v80);
                v84 = *(&v121 + v80);
                if (v83 < 0)
                {
                  v86 = *(&v121 + v55);
                  if (v86 < 0)
                  {
                    v94 = __si_assert_copy_extra_332();
                    v95 = v94;
                    v96 = "";
                    if (v94)
                    {
                      v96 = v94;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v96);
                    free(v95);
                    if (__valid_fs(-1))
                    {
                      MEMORY[0xBAD] = -559038737;
                      abort();
                    }

                    MEMORY[0xC00] = -559038737;
                    abort();
                  }

                  v52 = 0;
                  v55 = v56 + 5;
                  v85 = ((v84 & 0x7F) << 21) | (v86 << 28) | ((v82 & 0x7F) << 14);
                }

                else
                {
                  v52 = 0;
                  v85 = ((v82 & 0x7F) << 14) | (v84 << 21);
                }

                v53 = v85 & 0xFFFFC000 | ((v59 & 0x7F) << 7) | v53 & 0x7F;
                v40 = v112;
              }

              else
              {
                v52 = 0;
                v55 = v56 + 3;
                v53 = ((v59 & 0x7F) << 7) | (v82 << 14) | v53 & 0x7F;
                v40 = v112;
              }
            }

            else
            {
              v52 = 0;
              v53 = v53 & 0x7F | (v58 << 7);
              v55 = v56 + 2;
            }

LABEL_69:
            v60 = (&v121 + v55);
            v61 = *v110;
            if (v61 <= 5)
            {
              if (v110 <= v60)
              {
                v64 = v110;
                v69 = "";
                v67 = "";
                v68 = "[*] ";
                if (v61 != 1)
                {
                  if (!v53)
                  {
LABEL_114:
                    if (dword_1EBF46AD0 < 5)
                    {
                      goto LABEL_115;
                    }

                    v103 = *__error();
                    logb = _SILogForLogForCategory(1);
                    if (os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      v117 = "match ";
                      v118 = 2080;
                      *v119 = v67;
                      *&v119[8] = 2080;
                      *&v119[10] = v69;
                      *&v119[18] = 2080;
                      *&v119[20] = v60;
                      _os_log_impl(&dword_1C278D000, logb, OS_LOG_TYPE_DEFAULT, "%s%s%s%s", buf, 0x2Au);
                    }

                    v71 = v103;
LABEL_134:
                    *__error() = v71;
                    goto LABEL_115;
                  }

LABEL_82:
                  if (v52)
                  {
                    if (dword_1EBF46AD0 >= 5)
                    {
                      v100 = v52;
                      v70 = v53;
                      v71 = *__error();
                      log = _SILogForLogForCategory(1);
                      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315906;
                        v117 = "match ";
                        v118 = 1024;
                        *v119 = v70;
                        *&v119[4] = 1024;
                        *&v119[6] = v100;
                        *&v119[10] = 2080;
                        *&v119[12] = v60;
                        _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "%s(%d) [%d] %s", buf, 0x22u);
                      }

                      goto LABEL_134;
                    }
                  }

                  else
                  {
                    v17 = v61 == 3;
                    v72 = v61 == 3;
                    v73 = "";
                    if (v17)
                    {
                      v73 = "[f] ";
                      v74 = 1;
                    }

                    else
                    {
                      v74 = v54;
                    }

                    v17 = !v54 || !v72;
                    v75 = "[l] ";
                    if (!v17)
                    {
                      v75 = "[fl] ";
                    }

                    if (v54)
                    {
                      v76 = v75;
                    }

                    else
                    {
                      v76 = v73;
                    }

                    if (v74 == 1)
                    {
                      if (dword_1EBF46AD0 >= 5)
                      {
                        v101 = v53;
                        v71 = *__error();
                        loga = _SILogForLogForCategory(1);
                        if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136315906;
                          v117 = "match ";
                          v118 = 1024;
                          *v119 = v101;
                          *&v119[4] = 2080;
                          *&v119[6] = v76;
                          *&v119[14] = 2080;
                          *&v119[16] = v60;
                          _os_log_impl(&dword_1C278D000, loga, OS_LOG_TYPE_DEFAULT, "%s(%d) %s%s", buf, 0x26u);
                        }

                        goto LABEL_134;
                      }
                    }

                    else if (dword_1EBF46AD0 >= 5)
                    {
                      v102 = v53;
                      v71 = *__error();
                      v77 = _SILogForLogForCategory(1);
                      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315650;
                        v117 = "match ";
                        v118 = 1024;
                        *v119 = v102;
                        *&v119[4] = 2080;
                        *&v119[6] = v60;
                        _os_log_impl(&dword_1C278D000, v77, OS_LOG_TYPE_DEFAULT, "%s(%d) %s", buf, 0x1Cu);
                      }

                      goto LABEL_134;
                    }
                  }

LABEL_115:
                  v8 = v108;
                  v5 = a1;
                  goto LABEL_116;
                }

LABEL_113:
                *v64 = 0;
                v69 = v68;
                if (!v53)
                {
                  goto LABEL_114;
                }

                goto LABEL_82;
              }

              v62 = v40 - v55;
              v63 = 1;
              v64 = v110;
              v65 = v110;
              while (1)
              {
                v66 = *--v65;
                if (v66 > 5)
                {
                  break;
                }

                ++v63;
                v64 = v65;
                if (v65 <= v60)
                {
                  v63 = v62;
                  v64 = v60;
                  break;
                }
              }

              if (*v64 == 1)
              {
                if (v63 == 1)
                {
                  v67 = "";
                  v68 = "[*] ";
                  goto LABEL_113;
                }

                v78 = v64[1];
                if ((v78 - 4) < 2)
                {
                  v68 = "[*] ";
                }

                else
                {
                  if (v78 != 1)
                  {
                    if (v78 == 2)
                    {
                      v67 = "(0) ";
                      v68 = "";
                    }

                    else
                    {
                      v68 = "";
                      v67 = "";
                    }

                    goto LABEL_113;
                  }

                  v68 = "";
                }

                v67 = "(2) ";
                goto LABEL_113;
              }
            }

            v69 = "";
            v67 = "";
            if (!v53)
            {
              goto LABEL_114;
            }

            goto LABEL_82;
          }
        }

        else
        {
LABEL_67:
          v55 = 0;
          v54 = 0;
          v53 = 0;
        }

        v52 = 0;
        goto LABEL_69;
      }

      if (!v22)
      {
        break;
      }

LABEL_117:
      if (!v22 || v22 != v30)
      {
        goto LABEL_137;
      }

      v19 = v22 - 12448 < 0x60;
      v20 = v22 - 12352 < 0x60;
      v11 += v39;
    }

    if ((*(*(a2 + 1240) + 17) & 8) != 0)
    {
      goto LABEL_44;
    }

    v22 = 0;
LABEL_137:
    v87 = v22 >= v30;
    v7 = v105;
    if (v87)
    {
      v7 = v106;
    }

LABEL_140:
    v3 = a3;
LABEL_4:
    if (++v6 < *(a2 + 1152))
    {
      continue;
    }

    break;
  }

  result = v7 > 0;
LABEL_143:
  v89 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_fileProvidersPsid_oid_to_oid_path(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, int *a6, const __CFString *a7, const __CFString *a8, uint64_t a9, uint64_t a10)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a7 || !a9)
  {
    goto LABEL_8;
  }

  v17 = (*(copyFPItemAllParentsBlock + 16))(copyFPItemAllParentsBlock, a7, a8, a9, a10);
  if (!v17)
  {
    if (*__error() == 60)
    {
LABEL_9:
      v22 = 0xFFFFFFFFLL;
      goto LABEL_10;
    }

LABEL_8:
    *__error() = 2;
    goto LABEL_9;
  }

  v18 = v17;
  Count = CFArrayGetCount(v17);
  if (Count < 0)
  {
    goto LABEL_8;
  }

  v20 = Count;
  if (a4)
  {
    *a3 = a2;
    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  bzero(buffer, 0x400uLL);
  v28 = *(a1 + 16);
  v29 = -1;
  if (v20)
  {
    v25 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v18, v25);
      if (!CFStringGetCString(ValueAtIndex, buffer, 1024, 0x8000100u))
      {
        break;
      }

      if (strstr(buffer, "NSFileProviderRootContainerItemIdentifier"))
      {
        v27 = 2;
      }

      else
      {
        si_get_object_for_identifier_createParentDBO(*v28, a7, ValueAtIndex, a8, 1, &v29, 0, 1u);
        v27 = v29;
      }

      a3[(v21 + v25++)] = v27;
      if (v20 == v25)
      {
        v22 = 0;
        v21 += v25;
        goto LABEL_22;
      }
    }

    *__error() = 2;
    v22 = 0xFFFFFFFFLL;
    v21 += v25;
  }

  else
  {
    v22 = 0;
  }

LABEL_22:
  *a6 = v21;
  CFRelease(v18);
LABEL_10:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t si_fileProvidersPsid_oid_to_parent(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4, const __CFString *a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a1 + 16);
  v12 = __error();
  if (a4 && a6)
  {
    *v12 = 0;
    v13 = (*(copyFPItemParentBlock + 16))(copyFPItemParentBlock, a4, a5, a6, a7);
    v16 = -1;
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = v13;
    if (CFStringHasSuffix(v13, @"NSFileProviderRootContainerItemIdentifier"))
    {
      v16 = 2;
    }

    else
    {
      si_get_object_for_identifier_createParentDBO(*v11, a4, v14, a5, 1, &v16, 0, 1u);
    }

    CFRelease(v14);
    if (v16 == -1)
    {
LABEL_9:
      if (*__error() != 60)
      {
        *__error() = 2;
      }
    }

    return v16;
  }

  else
  {
    *v12 = 22;
    return -1;
  }
}

uint64_t si_fileProvidersPsid_close(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = *(v1 + 8);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(v1 + 8) = -1;
  }

  return result;
}

uint64_t si_fileProvidersPsid_path_to_oid_path(uint64_t a1, char *__s)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    goto LABEL_14;
  }

  if (*__s == 47)
  {
    v4 = strlen(__s);
    v5 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], __s, v4, 0);
    if (!v5 || (v6 = v5, v7 = (*(copyFPItemBlock + 16))(copyFPItemBlock, v5), CFRelease(v6), !v7))
    {
      v10 = 0;
      goto LABEL_16;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
    v9 = CFArrayGetValueAtIndex(v7, 1);
    if (gSILogLevels[0] >= 5)
    {
      theString = v9;
      v19 = *__error();
      v20 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *cStr = 136315394;
        CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
        v29 = 2080;
        v30 = CFStringGetCStringPtr(theString, 0x8000100u);
        _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "path_to_oid_path, bundleID: %s, uniqueID: %s", cStr, 0x16u);
      }

      *__error() = v19;
    }

    v10 = oidPathDepthFromBundleIDUniqueID(*(a1 + 16));
    v11 = v7;
    goto LABEL_13;
  }

  if (!strchr(__s, 58))
  {
LABEL_14:
    *__error() = 22;
    v10 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  bzero(cStr, 0x400uLL);
  bzero(v26, 0x400uLL);
  __strncpy_chk();
  strlen(__s);
  __strncpy_chk();
  if (gSILogLevels[0] >= 5)
  {
    v17 = *__error();
    v18 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = cStr;
      v24 = 2080;
      v25 = v26;
      _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "specialPath_to_oid_path, bundleIDStr: %s, identifierStr: %s", buf, 0x16u);
    }

    *__error() = v17;
  }

  v12 = *MEMORY[0x1E695E480];
  v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  v14 = CFStringCreateWithCString(v12, v26, 0x8000100u);
  v10 = oidPathDepthFromBundleIDUniqueID(*(a1 + 16));
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    v11 = v14;
LABEL_13:
    CFRelease(v11);
  }

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t oidPathDepthFromBundleIDUniqueID(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  result = 0;
  v54 = *MEMORY[0x1E69E9840];
  if (!v1)
  {
    goto LABEL_20;
  }

  v7 = v2;
  if (!v2)
  {
    goto LABEL_20;
  }

  v8 = v3;
  v9 = v1;
  v40 = -1;
  if (CFStringHasSuffix(v2, @"NSFileProviderRootContainerItemIdentifier"))
  {
    v10 = 2;
    v40 = 2;
  }

  else
  {
    si_get_object_for_identifier_createParentDBO(*v5, v9, v7, 0, 0, &v40, 0, 1u);
    si_indexDeleteDeferredItemsIfItemIncluded(*v5, v40);
    v10 = v40;
  }

  v11 = *v5;
  v12 = *(*v5 + 6624);
  if (v12)
  {
    v13 = v10 == -1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    result = 0;
    goto LABEL_20;
  }

  bzero(__src, 0x1000uLL);
  *v8 = v10;
  Path = directoryStoreGetPath(v12, v10, __src);
  LODWORD(v15) = Path;
  if (!Path)
  {
    v42 = 0;
    if (db_get_obj(*(v11 + 1192), v40, &v42, 0))
    {
      goto LABEL_18;
    }

    v17 = 0;
    v18 = 0;
    LODWORD(v15) = 0;
    v19 = v42;
    v20 = v42[3];
    while (1)
    {
      v41 = 0;
      if (db_get_obj(*(v11 + 1192), v20, &v41, 0))
      {
        free(v19);
        v19 = 0;
        if (!v17)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v17 = v41[3];
        if (v20 != 2 && v17 <= 0)
        {
          v23 = *__error();
          v24 = _SILogForLogForCategory(4);
          v25 = 2 * (dword_1EBF46ADC < 4);
          if (os_log_type_enabled(v24, v25))
          {
            v26 = *__error();
            v27 = *v42;
            *buf = 67110144;
            v45 = v26;
            v46 = 1024;
            v47 = 250;
            v48 = 2048;
            v49 = v27;
            v50 = 2048;
            v51 = v20;
            v52 = 2048;
            v53 = v17;
            _os_log_impl(&dword_1C278D000, v24, v25, "lookupPathByDBO error:%d at:%d in_oid:%lld oid:%lld parent:%lld", buf, 0x2Cu);
          }

          *__error() = v23;
        }

        free(v19);
        v19 = v41;
        if (!v17)
        {
LABEL_33:
          v22 = 0;
          LODWORD(v15) = v18;
          if (v18)
          {
            goto LABEL_38;
          }

          goto LABEL_41;
        }
      }

      v21 = v18 + 1;
      __src[v18] = v17;
      if (v17 != 2)
      {
        v28 = directoryStoreWriterGetPath(*(v11 + 6624), v17, &__src[v21]);
        v22 = v28 == 0;
        if (v28)
        {
          LODWORD(v15) = v28 + v21;
        }

        ++v18;
        if (!v15)
        {
          goto LABEL_41;
        }

LABEL_38:
        v29 = 0;
        do
        {
          if (__src[v29] <= 0)
          {
            v31 = __si_assert_copy_extra_332();
            __message_assert_2932(v31, v32, v33, v34, v35, v36, v37, v38, "SIFileProvidersPSIDSupport.c");
            free(v31);
            if (__valid_fs(-1))
            {
              v39 = 2989;
            }

            else
            {
              v39 = 3072;
            }

            *v39 = -559038737;
            abort();
          }

          ++v29;
        }

        while (v15 != v29);
        goto LABEL_41;
      }

      v22 = 1;
      ++v18;
      LODWORD(v15) = v21;
      if (v21)
      {
        goto LABEL_38;
      }

LABEL_41:
      v30 = v17 != 2 && v22;
      if (v30)
      {
        v20 = v17;
        if (v18 < 512)
        {
          continue;
        }
      }

      if (v19)
      {
        free(v19);
      }

      if (!v30)
      {
        if (!v15)
        {
          goto LABEL_19;
        }

        break;
      }

LABEL_18:
      LODWORD(v15) = 0;
      goto LABEL_19;
    }
  }

  if (v15 >= 1)
  {
    memcpy(v8 + 1, __src, 8 * v15);
  }

  if (v8[v15] != 2)
  {
    v15 = v15 + 1;
    v8[v15] = 2;
  }

LABEL_19:
  result = (v15 + 1);
LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __message_assert_2932(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v15 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  string[1] = &a9;
  vasprintf(string, "%s:%u: failed assertion '%s' %s Got parent[%d] with id %lld depth: %d", &a9);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v9 = xpc_string_create(string[0]);
  values = v9;
  v10 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v10);
  xpc_release(v9);
  free(string[0]);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t pushMove(void *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = (a1 + 1);
    v6 = a1[1];
    v7 = a1 + 2;
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[3];
      if (*v6 == -1)
      {
        if (v8 + 8 <= v9)
        {
          v15 = v6[1];
          v6[v15 + 2] = a2;
          v6[1] = v15 + 1;
          v14 = 8;
          goto LABEL_13;
        }
      }

      else if (v8 + 24 <= v9)
      {
        if (&v4[v8] != &v6[v6[1] + 2])
        {
          __assert_rtn("pushMove", "MoveHolder.c", 26, "holder->count==0 || holder->count + holder->data == ((char*)current) + sizeof(PossibleFileMoves_t)+sizeof(oid_t)*current->count");
        }

        goto LABEL_12;
      }

      return 0;
    }

    v11 = a1[3];
  }

  else
  {
    v10 = MEMORY[0x1E69E9AC8];
    v4 = mmap(0, 16 * *MEMORY[0x1E69E9AC8], 3, 4098, 0, 0);
    *a1 = v4;
    v11 = 16 * *v10;
    a1[3] = v11;
    a1[2] = 0;
    v7 = a1 + 2;
    a1[1] = v4;
    v5 = (a1 + 1);
  }

  if (v11 < 0x18)
  {
    return 0;
  }

  v8 = 0;
LABEL_12:
  v13 = &v4[v8];
  *v5 = v13;
  *(v13 + 2) = a2;
  *v13 = xmmword_1C2BFA3D0;
  v14 = 24;
LABEL_13:
  *v7 += v14;
  return 1;
}

uint64_t _CICreateNew(uint64_t a1, const __CFString *a2, uint64_t a3, int a4, unsigned int a5, int a6, int a7, uint64_t a8, uint64_t a9, const void *a10, int a11)
{
  *&v35[1023] = *MEMORY[0x1E69E9840];
  bzero(v35, 0x3FFuLL);
  v33 = 0;
  buffer = 0;
  v19 = copyVolumeInfoStr(a1);
  if (CFStringGetFileSystemRepresentation(a2, &buffer, 1024))
  {
    v20 = createIndex(a1, &buffer, a3, v19, a5, 0, a6, &v33, a7, a8, a9, a10, a11);
    v21 = v20;
    if (v20)
    {
      *(v20 + 40) = a4;
      if (a3 && *(v20 + 80) != a3)
      {
        v24 = __si_assert_copy_extra_332();
        __message_assert_336(v24, v25, v26, v27, v28, v29, v30, v31, "ContentIndex.c");
        free(v24);
        if (__valid_fs(-1))
        {
          v32 = 2989;
        }

        else
        {
          v32 = 3072;
        }

        *v32 = -559038737;
        abort();
      }

      if (g_fd_list)
      {
        _fd_close_inactive(*(v20 + 64), (v20 + 15208), 0, 0);
      }
    }
  }

  else
  {
    v21 = 0;
  }

  free(v19);
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t indexUpdateHeader(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v22 = *MEMORY[0x1E69E9840];
  bzero(v21, 0x400uLL);
  bzero(&v19, 0x1000uLL);
  snprintf(v21, 0x400uLL, "%sindexHead", v10);
  v13 = fd_create_protected(v12, v21, 536870914, 3u);
  v14 = v13;
  if (!v13 || fd_pread(v13, &v19, 0x1000uLL, 0) != 4096)
  {
LABEL_9:
    v16 = *__error();
    if (v16)
    {
      v15 = v16;
    }

    else
    {
      v15 = 0xFFFFFFFFLL;
    }

    goto LABEL_12;
  }

  if (v19 == v8 || (v15 = 22, v19 >= v6) && v19 <= v4)
  {
    if (v20 == v2 || (v19 = v8, v20 = v2, fd_pwrite(v14, &v19, 0x1000uLL, 0) == 4096))
    {
      v15 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_12:
  fd_release(v14);
  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

void _CIIndexSetRemoveAllValues(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      v2 = 0;
      do
      {
        freeIndex(*(*a1 + 8 * v2));
        *(*a1 + 8 * v2++) = 0;
      }

      while (v2 < *(a1 + 8));
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }
}

uint64_t _ContentIndexSyncIndexBulk(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v101 = *MEMORY[0x1E69E9840];
  v9 = *(a6 + 48);
  *&buf[32] = *(a6 + 32);
  v97 = v9;
  *&v98 = *(a6 + 64);
  v10 = *(a6 + 16);
  *buf = *a6;
  *&buf[16] = v10;
  v11 = _CISyncContextCreate(a1, a2, a3, a4, a5, buf, a7, a8, a9);
  v12 = *(v11 + 42);
  v13 = v12 != 0;
  if (v12)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v51 = *(v11 + 42);
      *buf = 136315650;
      *&buf[4] = "_ContentIndexSyncIndexBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1613;
      *&buf[18] = 1024;
      *&buf[20] = v51;
      _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: Sync context init error: %d", buf, 0x18u);
    }

    *__error() = v14;
  }

  _CISyncContextSync(v11, 0);
  if (!v12 && *(v11 + 42))
  {
    v16 = *__error();
    v17 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v60 = *(v11 + 42);
      *buf = 136315650;
      *&buf[4] = "_ContentIndexSyncIndexBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1621;
      *&buf[18] = 1024;
      *&buf[20] = v60;
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Sync sync error: %d", buf, 0x18u);
    }

    *__error() = v16;
    v13 = 1;
  }

  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  _CISyncContextCommitData(v11, 0, &v75);
  if (!v13 && *(v11 + 42))
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v61 = *(v11 + 42);
      *buf = 136315650;
      *&buf[4] = "_ContentIndexSyncIndexBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1632;
      *&buf[18] = 1024;
      *&buf[20] = v61;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: Sync commit error: %d", buf, 0x18u);
    }

    *__error() = v18;
    v13 = 1;
  }

  _CISyncContextCommitHeader(v11);
  v20 = *(v11 + 42);
  if (!v13 && v20)
  {
    v21 = *__error();
    v22 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v62 = *(v11 + 42);
      *buf = 136315650;
      *&buf[4] = "_ContentIndexSyncIndexBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1640;
      *&buf[18] = 1024;
      *&buf[20] = v62;
      _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: Sync commit error: %d", buf, 0x18u);
    }

    *__error() = v21;
    v20 = *(v11 + 42);
    v13 = 1;
  }

  if (v20)
  {
LABEL_21:
    if (v20)
    {
      v23 = v13;
    }

    else
    {
      v23 = 1;
    }

    if ((v23 & 1) == 0)
    {
      v24 = *__error();
      v25 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v63 = *(v11 + 42);
        *buf = 136315650;
        *&buf[4] = "_ContentIndexSyncIndexBulk";
        *&buf[12] = 1024;
        *&buf[14] = 1654;
        *&buf[18] = 1024;
        *&buf[20] = v63;
        _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: Sync retire error: %d", buf, 0x18u);
      }

      *__error() = v24;
      v20 = *(v11 + 42);
      v13 = 1;
    }

    if (v20)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

  v28 = v11[9];
  if (v28 && CIDocCountsNonEmpty(&v75))
  {
    v29 = v11[10];
    v98 = v79;
    v99 = v80;
    v100 = v81;
    *buf = v75;
    *&buf[16] = v76;
    *&buf[32] = v77;
    v97 = v78;
    v30 = v28(v29, buf);
    if (v30)
    {
      v20 = v30;
      v31 = *__error();
      v32 = _SILogForLogForCategory(11);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "_ContentIndexSyncIndexBulk";
        *&buf[12] = 1024;
        *&buf[14] = 1648;
        *&buf[18] = 1024;
        *&buf[20] = v20;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: Got error %d passing sync counts to journals", buf, 0x18u);
      }

      *__error() = v31;
      *(v11 + 42) = v20;
    }

    else
    {
      v20 = *(v11 + 42);
    }

    goto LABEL_21;
  }

LABEL_40:
  if (*(v11 + 100) != 1)
  {
    v20 = 0;
    goto LABEL_46;
  }

  v33 = *(v11 + 34);
  v34 = v11[6];
  v71 = v11[8];
  v72 = v11[9];
  v35 = v11[19];
  v36 = v11[20];
  v37 = v11[10];
  v38 = v11[11];
  v39 = *(v11 + 2);
  v40 = v11[18];
  v41 = *v11;
  v73 = *v11;
  v74 = v11[7];
  v42 = v11[16];
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  if (v34)
  {
    v43 = v34(v37);
    if (v43)
    {
      v20 = v43;
      if (v43 == 89)
      {
LABEL_44:
        v20 = 89;
        *(v11 + 42) = 89;
        goto LABEL_29;
      }

      v47 = *__error();
      v48 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      v69 = *__error();
      *buf = 136315906;
      *&buf[4] = "indexShadowAndCommitBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1290;
      *&buf[18] = 1024;
      *&buf[20] = v20;
      *&buf[24] = 1024;
      *&buf[26] = v69;
      v50 = "%s:%d: preShadow error:%d %d";
LABEL_82:
      v66 = v48;
      v67 = 30;
      goto LABEL_83;
    }
  }

  v70 = v37;
  v20 = _indexShadowBulk(v33);
  if (v20)
  {
    goto LABEL_73;
  }

  if (v74)
  {
    v46 = v74(v37);
    if (v46)
    {
      v20 = v46;
      if (v46 == 89)
      {
        goto LABEL_44;
      }

      v47 = *__error();
      v48 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      v49 = *__error();
      *buf = 136315906;
      *&buf[4] = "indexShadowAndCommitBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1307;
      *&buf[18] = 1024;
      *&buf[20] = v20;
      *&buf[24] = 1024;
      *&buf[26] = v49;
      v50 = "%s:%d: postShadow error:%d %d";
      goto LABEL_82;
    }
  }

  v86 = v93;
  v87 = v94;
  v88 = v95;
  v82 = v89;
  v83 = v90;
  v84 = v91;
  v85 = v92;
  if (!v33)
  {
LABEL_64:
    if (v71)
    {
      v71(v70);
    }

    if (v72 && CIDocCountsNonEmpty(&v82))
    {
      v98 = v86;
      v99 = v87;
      v100 = v88;
      *buf = v82;
      *&buf[16] = v83;
      *&buf[32] = v84;
      v97 = v85;
      v72(v70, buf);
    }

    if (v73 && *(v73 + 8) && (*(v73 + 88) & 1) == 0)
    {
      ++*(v73 + 36);
      *(v73 + 48) = v42;
      v20 = _CIMetaInfoSync(v73, gTerminating == 0);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_73;
  }

  v52 = 0;
  v53 = 0;
  v54 = v33 << 12;
  while (1)
  {
    v55 = *v40;
    v56 = atomic_load((*v40 + 32));
    if (v56 != -1073623027)
    {
      break;
    }

LABEL_61:
    v52 += 4096;
    ++v40;
    if (v54 == v52)
    {
      if (v53)
      {
        fd_sync(v53, 1);
      }

      goto LABEL_64;
    }
  }

  v57 = indexCommitShadow(*v40, (v35 + (v52 & 0xFFFFF000)));
  if (!v57)
  {
    v53 = *(v55 + 14472);
    goto LABEL_61;
  }

  v20 = v57;
  v47 = *__error();
  v65 = _SILogForLogForCategory(0);
  if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_54;
  }

  *buf = 136315906;
  *&buf[4] = "_indexCommitShadowBulk";
  *&buf[12] = 1024;
  *&buf[14] = 1251;
  *&buf[18] = 1024;
  *&buf[20] = v20;
  *&buf[24] = 2080;
  *&buf[26] = v55 + 15208;
  v50 = "%s:%d: indexCommitShadow error: %d, %s";
  v66 = v65;
  v67 = 34;
LABEL_83:
  _os_log_error_impl(&dword_1C278D000, v66, OS_LOG_TYPE_ERROR, v50, buf, v67);
LABEL_54:
  *__error() = v47;
LABEL_73:
  *(v11 + 42) = v20;
  if (v20 && v20 != 89)
  {
    v58 = *__error();
    v59 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v68 = *(v11 + 42);
      *buf = 136315650;
      *&buf[4] = "_CISyncContextShadow";
      *&buf[12] = 1024;
      *&buf[14] = 1597;
      *&buf[18] = 1024;
      *&buf[20] = v68;
      _os_log_error_impl(&dword_1C278D000, v59, OS_LOG_TYPE_ERROR, "%s:%d: indexShadowAndCommitBulk error:%d", buf, 0x18u);
    }

    *__error() = v58;
    v20 = *(v11 + 42);
  }

LABEL_29:
  if (!v13 && v20)
  {
    v26 = *__error();
    v27 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v64 = *(v11 + 42);
      *buf = 136315650;
      *&buf[4] = "_ContentIndexSyncIndexBulk";
      *&buf[12] = 1024;
      *&buf[14] = 1664;
      *&buf[18] = 1024;
      *&buf[20] = v64;
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: Sync shadow error: %d", buf, 0x18u);
    }

    *__error() = v26;
  }

LABEL_46:
  _CISyncContextDestroy(v11);
  v44 = *MEMORY[0x1E69E9840];
  return v20;
}

void *_CISyncContextCreate(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v14 = *(a2 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (a3)
  {
    v15 = *(a3 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10B004080226B0FuLL);
  v17 = malloc_type_calloc((v15 + v14), 8uLL, 0x2004093837F09uLL);
  v16[18] = v17;
  *v16 = a1;
  *(v16 + 2) = a4;
  *(v16 + 100) = a5;
  v18 = *(a6 + 64);
  v20 = *(a6 + 32);
  v19 = *(a6 + 48);
  *(v16 + 2) = *(a6 + 16);
  *(v16 + 3) = v20;
  *(v16 + 4) = v19;
  v16[10] = v18;
  *(v16 + 1) = *a6;
  v16[11] = a7;
  v16[14] = a8;
  v16[15] = a9;
  *(v16 + 32) = v14;
  *(v16 + 33) = v15;
  v21 = GatherAndLockIndexes(a2, a3, v17, v16 + 34);
  *(v16 + 42) = v21;
  if (!v21)
  {
    v16[20] = malloc_type_calloc(*(v16 + 34), 1uLL, 0x100004077774924uLL);
    v16[19] = malloc_type_calloc(*(v16 + 34), 0x1000uLL, 0x31084C0EuLL);
  }

  return v16;
}

uint64_t _CISyncContextSync(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168))
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      *__error() = v3;
      goto LABEL_4;
    }

    v43 = *(a1 + 168);
    *buf = 136315650;
    *&buf[4] = "_CISyncContextSync";
    *&buf[12] = 1024;
    *&buf[14] = 1420;
    *&buf[18] = 1024;
    *&buf[20] = v43;
    v37 = "%s:%d: pre-error:%d";
    goto LABEL_49;
  }

  v7 = *(a1 + 136);
  v48 = *(a1 + 16);
  v8 = *(a1 + 80);
  v49 = v8;
  v50 = *(a1 + 32);
  v9 = *(a1 + 144);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v11 = v9[i];
      pthread_mutex_lock((v11 + 14504));
      HIDWORD(v13) = qos_class_self() - 9;
      LODWORD(v13) = HIDWORD(v13);
      v12 = v13 >> 2;
      if (v12 > 6)
      {
        v14 = 0;
      }

      else
      {
        v14 = dword_1C2BFF8F0[v12];
      }

      if (*(v11 + 14688))
      {
        goto LABEL_11;
      }

      if (!*(v11 + 14700) && *(v11 + 14716) != 1)
      {
        goto LABEL_25;
      }

      v15 = v14 <= 5 ? 5 : v14;
      v16 = (v11 + 16 * v14 + 14584);
      v17 = v15 - v14 + 1;
      while (--v17)
      {
        v18 = *v16;
        v16 += 2;
        if (v18)
        {
          goto LABEL_11;
        }
      }

      if (*(v11 + 14568 + 16 * v14) && !*(v11 + 14704))
      {
LABEL_11:
        db_rwlock_wait(v11 + 14504, v14, 5);
      }

      else
      {
LABEL_25:
        *(v11 + 14700) = vadd_s32(*(v11 + 14700), 0x100000001);
      }

      pthread_mutex_unlock((v11 + 14504));
    }
  }

  *(a1 + 99) = 1;
  v19 = indexPrepareForSyncBulk(v7, v9, *(a1 + 88), *(a1 + 8), *(a1 + 112), *(a1 + 120));
  *(a1 + 168) = v19;
  if (v19 != 89)
  {
    if (v19)
    {
      v3 = *__error();
      v4 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v40 = *(a1 + 168);
      *buf = 136315650;
      *&buf[4] = "_CISyncContextSync";
      *&buf[12] = 1024;
      *&buf[14] = 1438;
      *&buf[18] = 1024;
      *&buf[20] = v40;
      v37 = "%s:%d: indexPrepareForSyncBulk error:%d";
      goto LABEL_49;
    }

    if (v7)
    {
      v20 = v9;
      v21 = v7;
      do
      {
        v22 = *v20++;
        db_read_lock(v22 + 4696);
        --v21;
      }

      while (v21);
    }

    *(a1 + 98) = 1;
    if (v48)
    {
      v48(v49);
    }

    *(a1 + 97) = 1;
    if (v50)
    {
      v23 = 0;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      if ((*(a1 + 8) & 6) == 0 && v7)
      {
        v23 = 0;
        v30 = v9;
        v31 = v7;
        do
        {
          v32 = *v30++;
          v27 = vaddq_s64(*(v32 + 14984), v27);
          v24 = vaddq_s64(*(v32 + 14936), v24);
          v26 = vaddq_s64(*(v32 + 14968), v26);
          v25 = vaddq_s64(*(v32 + 14952), v25);
          v28 = vaddq_s64(*(v32 + 15000), v28);
          v29 = vaddq_s64(*(v32 + 15016), v29);
          v23 += *(v32 + 15032);
          --v31;
        }

        while (v31);
      }

      *buf = v24;
      *&buf[16] = v25;
      v53 = v26;
      v54 = v27;
      v55 = v28;
      v56 = v29;
      v57 = v23;
      v33 = v50(v49, a1 + 104, buf);
      *(a1 + 168) = v33;
      if (v33)
      {
        if (v33 == 89)
        {
          goto LABEL_4;
        }

        v3 = *__error();
        v34 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_3;
        }

        v35 = *(a1 + 168);
        v36 = *__error();
        *buf = 136315906;
        *&buf[4] = "_CISyncContextSync";
        *&buf[12] = 1024;
        *&buf[14] = 1467;
        *&buf[18] = 1024;
        *&buf[20] = v35;
        *&buf[24] = 1024;
        *&buf[26] = v36;
        v37 = "%s:%d: preSync error:%d %d";
        v38 = v34;
        v39 = 30;
        goto LABEL_50;
      }
    }

    v51 = 0;
    v41 = indexPerformSyncBulk(v7, v9, *(a1 + 88), *(a1 + 8), &v51);
    *(a1 + 168) = v41;
    if (v41)
    {
      if (v41 == 89)
      {
        goto LABEL_4;
      }

      v3 = *__error();
      v4 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v42 = *(a1 + 168);
      *buf = 136315650;
      *&buf[4] = "_CISyncContextSync";
      *&buf[12] = 1024;
      *&buf[14] = 1478;
      *&buf[18] = 1024;
      *&buf[20] = v42;
      v37 = "%s:%d: indexPerformSyncBulk error:%d";
LABEL_49:
      v38 = v4;
      v39 = 24;
LABEL_50:
      _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
      goto LABEL_3;
    }

    if (a2)
    {
      *a2 = v51;
    }

    else if (v51)
    {
      fd_sync(v51, 1);
    }

    v44 = *(a1 + 8);
    if ((v44 & 4) == 0)
    {
      if ((v44 & 2) != 0 || !v7)
      {
LABEL_61:
        if ((v44 & 2) == 0)
        {
          if (!gTerminating && !*(a1 + 168))
          {
            *(a1 + 100) = 1;
          }

          goto LABEL_4;
        }
      }

      else
      {
        v45 = v7;
        v46 = v9;
        while (!*(*v46 + 15196))
        {
          ++v46;
          if (!--v45)
          {
            goto LABEL_61;
          }
        }
      }

      if (v7)
      {
        do
        {
          if (!*(*v9 + 15196))
          {
            *(*v9 + 15196) = 1;
          }

          ++v9;
          --v7;
        }

        while (v7);
      }

      *(a1 + 168) = 0;
    }
  }

LABEL_4:
  result = *(a1 + 168);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CISyncContextCommitData(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(a1 + 42))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      *__error() = v4;
      goto LABEL_4;
    }

    v43 = *(a1 + 42);
    *buf = 136315650;
    *&buf[4] = "_CISyncContextCommitData";
    v65 = 1024;
    *v66 = 1527;
    *&v66[4] = 1024;
    *&v66[6] = v43;
    v15 = "%s:%d: pre-error:%d";
LABEL_62:
    v16 = v5;
    v17 = 24;
LABEL_63:
    _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    goto LABEL_3;
  }

  v58 = *(a1 + 34);
  v10 = a1[5];
  v61 = a1[18];
  if (v10)
  {
    v11 = v10(a1[10], (a1[1] & 6) != 0);
    *(a1 + 42) = v11;
    if (v11)
    {
      if (v11 == 89)
      {
        goto LABEL_4;
      }

      v4 = *__error();
      v12 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v13 = *(a1 + 42);
      v14 = *__error();
      *buf = 136315906;
      *&buf[4] = "_CISyncContextCommitData";
      v65 = 1024;
      *v66 = 1540;
      *&v66[4] = 1024;
      *&v66[6] = v13;
      *&v66[10] = 1024;
      *&v66[12] = v14;
      v15 = "%s:%d: postSync error:%d %d";
      v16 = v12;
      v17 = 30;
      goto LABEL_63;
    }
  }

  v18 = *a1;
  v19 = a1[16];
  v62 = *(a1 + 2);
  if (*(a1 + 26))
  {
    v20 = 1;
  }

  else
  {
    v20 = (a1[1] & 6) == 0;
  }

  if (!v58)
  {
    v22 = 0;
    if (v18)
    {
      goto LABEL_65;
    }

    goto LABEL_69;
  }

  v57 = v20;
  v55 = a2;
  v21 = 0;
  v22 = 0;
  v59 = a1[19];
  v60 = a1[20];
  v23 = v58;
  do
  {
    v24 = *(v61 + 8 * v21);
    if ((v62 & 1) == 0)
    {
      v25 = atomic_load((v24 + 32));
      if (v25 == -1073623027)
      {
        if (!CIDocCountsNonEmpty((v24 + 14936)))
        {
          v26 = atomic_load((v24 + 36));
          if ((v26 & 1) == 0 || (v27 = atomic_load((v24 + 36)), (v27 & 2) != 0))
          {
            if (*(v60 + v21))
            {
              v44 = __si_assert_copy_extra_332();
              v52 = v44;
              __message_assert_336(v44, v45, v46, v47, v48, v49, v50, v51, "ContentIndex.c");
              free(v52);
              if (__valid_fs(-1))
              {
                v53 = 2989;
              }

              else
              {
                v53 = 3072;
              }

              *v53 = -559038737;
              abort();
            }

            goto LABEL_46;
          }
        }
      }

      else
      {
        v28 = atomic_load((v24 + 32));
        if ((v62 & 6) != 0 && v28 == 2)
        {
          goto LABEL_46;
        }
      }
    }

    if (v18)
    {
      *(v24 + 48) = *(v18 + 32) + 1;
      v57 = 1;
    }

    if ((*(v24 + 15203) & 1) != 0 || *(v24 + 8) != 1 || (v29 = *(v24 + 15196), v29 == -1))
    {
      v38 = *__error();
      v39 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "indexCommitSync";
        v65 = 1024;
        *v66 = 3062;
        *&v66[4] = 2080;
        *&v66[6] = v24 + 15208;
        _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: can't commit %s", buf, 0x1Cu);
      }

      *__error() = v38;
LABEL_54:
      v36 = -1;
LABEL_55:
      v40 = *__error();
      v41 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "indexCommitSyncBulk";
        v65 = 1024;
        *v66 = 1169;
        *&v66[4] = 1024;
        *&v66[6] = v36;
        *&v66[10] = 2080;
        *&v66[12] = v24 + 15208;
        _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: indexCommitSync error %d %s", buf, 0x22u);
      }

      *__error() = v40;
      *(a1 + 42) = -1;
      v4 = *__error();
      v5 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v42 = *(a1 + 42);
        *buf = 136315650;
        *&buf[4] = "_CISyncContextCommitData";
        v65 = 1024;
        *v66 = 1551;
        *&v66[4] = 1024;
        *&v66[6] = v42;
        v15 = "%s:%d: indexCommitSyncBulk error:%d";
        goto LABEL_62;
      }

      goto LABEL_3;
    }

    v63 = (v59 + ((v21 & 0xFFFFF) << 12));
    if (dword_1EBF46AF4 >= 5)
    {
      v56 = *__error();
      log = _SILogForLogForCategory(10);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(v24 + 136);
        *buf = 134218242;
        *&buf[4] = v37;
        v65 = 2080;
        *v66 = v24 + 15208;
        _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "bases.size: %ld (%s)", buf, 0x16u);
      }

      *__error() = v56;
      v29 = *(v24 + 15196);
    }

    if ((v62 & 4) != 0 || v29 == 1)
    {
      atomic_store(2u, (v24 + 32));
    }

    else
    {
      atomic_store(0xD00D0DD0, (v24 + 32));
      if (a3)
      {
        v30 = *(a3 + 40);
        *(a3 + 48) += *(v24 + 14984);
        *(a3 + 24) = vaddq_s64(*(a3 + 24), *(v24 + 14960));
        *(a3 + 56) += *(v24 + 14992);
        *a3 = vaddq_s64(*a3, *(v24 + 14936));
        *(a3 + 40) = v30 + *(v24 + 14976);
        *(a3 + 16) += *(v24 + 14952);
        v31 = *(a3 + 80);
        *(a3 + 64) = vaddq_s64(*(a3 + 64), *(v24 + 15000));
        *(a3 + 80) = vaddq_s64(v31, *(v24 + 15016));
        *(a3 + 96) += *(v24 + 15032);
        *(v24 + 15032) = 0;
        *(v24 + 15000) = 0u;
        *(v24 + 15016) = 0u;
        *(v24 + 14968) = 0u;
        *(v24 + 14984) = 0u;
        *(v24 + 14936) = 0u;
        *(v24 + 14952) = 0u;
      }
    }

    indexStoreToBuffer(v24, &v63);
    v32 = *(v24 + 14480);
    if (v32)
    {
      v33 = fd_pwrite(*(v24 + 14480), v59 + ((v21 & 0xFFFFF) << 12), 0x1000uLL, 0);
      if (v33 == -1)
      {
        v36 = *__error();
        if (v36)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v33 != 4096)
        {
          goto LABEL_54;
        }

        if (_gSystemStatusBool == 1)
        {
          pthread_mutex_lock(&_gSystemStatusLock);
          if (_gSystemStatusBool == 1)
          {
            do
            {
              pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
            }

            while ((_gSystemStatusBool & 1) != 0);
          }

          pthread_mutex_unlock(&_gSystemStatusLock);
          v23 = v58;
        }

        *buf = 0;
        v34 = _fd_acquire_fd(v32, buf);
        if (v34 != -1)
        {
          v35 = v34;
          prot_fsync(v34, 0);
          _fd_release_fd(v32, v35, 0, *buf);
        }
      }
    }

    *(v60 + v21) |= 4u;
    v22 = *(v24 + 14472);
LABEL_46:
    ++v21;
  }

  while (v21 != v23);
  v20 = v57 != 0;
  a2 = v55;
  if (!v18)
  {
    goto LABEL_69;
  }

LABEL_65:
  if (v20 && *(v18 + 8) && (*(v18 + 88) & 1) == 0)
  {
    ++*(v18 + 32);
    *(v18 + 40) = v19;
    *(a1 + 101) = 1;
  }

LABEL_69:
  *(a1 + 42) = 0;
  if (a2)
  {
    *a2 = v22;
  }

  else if (v22)
  {
    fd_sync(v22, 1);
  }

LABEL_4:
  result = *(a1 + 42);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CISyncContextCommitHeader(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168))
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 168);
      v7 = 136315650;
      v8 = "_CISyncContextCommitHeader";
      v9 = 1024;
      v10 = 1568;
      v11 = 1024;
      v12 = v6;
      _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: pre-error %d", &v7, 0x18u);
    }

    *__error() = v2;
    result = *(a1 + 168);
  }

  else if (*(a1 + 101) == 1)
  {
    result = _CIMetaInfoSync(*a1, gTerminating == 0);
    *(a1 + 168) = result;
    *(a1 + 101) = 0;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void _CISyncContextDestroy(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 136);
    v3 = *(a1 + 144);
    if (*(a1 + 97) == 1)
    {
      v4 = *(a1 + 24);
      if (v4)
      {
        v4(*(a1 + 80));
      }
    }

    v5 = (v2 - 1);
    if (v2 - 1 >= 0)
    {
      v6 = v5 + 1;
      v7 = (v3 + 8 * v5);
      do
      {
        if (!*(a1 + 168) && (*(*v7 + 8) & 1) == 0)
        {
          v8 = *__error();
          v9 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v22 = "_CISyncContextDestroy";
            v23 = 1024;
            v24 = 1371;
            _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: index invalid", buf, 0x12u);
          }

          *__error() = v8;
          *(a1 + 168) = -1;
        }

        if (*(a1 + 98) == 1)
        {
          v10 = *v7;
          pthread_mutex_lock((*v7 + 4696));
          v11 = *(v10 + 4892) - 1;
          *(v10 + 4892) = v11;
          if (!v11)
          {
            db_rwlock_wakeup(v10 + 4696, 0, 0);
          }

          pthread_mutex_unlock((v10 + 4696));
        }

        --v7;
        v12 = v6-- <= 1;
      }

      while (!v12);
      if (*(a1 + 99) == 1)
      {
        v13 = 8 * v5;
        do
        {
          v14 = *(v3 + v13);
          pthread_mutex_lock((v14 + 14504));
          v15 = vadd_s32(*(v14 + 14700), -1);
          *(v14 + 14700) = v15;
          if (!v15.i32[0])
          {
            db_rwlock_wakeup(v14 + 14504, 0, 0);
          }

          pthread_mutex_unlock((v14 + 14504));
          v13 -= 8;
        }

        while (v13 != -8);
      }

      v16 = *(a1 + 168);
      v17 = v5 + 1;
      v18 = (v3 + 8 * v5);
      do
      {
        if (v16 && v16 != 89)
        {
          *(*v18 + 8) = 0;
        }

        v19 = *v18--;
        pthread_mutex_unlock((v19 + 15120));
        v12 = v17-- <= 1;
      }

      while (!v12);
    }

    free(*(a1 + 144));
    free(*(a1 + 152));
    free(*(a1 + 160));
    free(a1);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t _indexShadowBulk(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v50 = v7;
  v73 = *MEMORY[0x1E69E9840];
  if (!v1)
  {
    goto LABEL_44;
  }

  v8 = v6;
  v9 = v5;
  v10 = 0;
  v51 = v4;
  v11 = v4;
  v49 = v1 << 12;
  v12 = v2;
  v13 = v3;
  v14 = 0;
  while (1)
  {
    v15 = *v12;
    if (*v50 == 1)
    {
      v38 = 89;
      goto LABEL_45;
    }

    v16 = v14;
    if ((v11 & 1) == 0)
    {
      v17 = atomic_load((v15 + 32));
      if (v17 == -1073623027 && !*v13 && !CIDocCountsNonEmpty((v15 + 14936)))
      {
        v39 = v16;
        goto LABEL_24;
      }
    }

    if (*(v15 + 8) != 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      }

      goto LABEL_38;
    }

    v18 = v15;
    v47 = v13;
    v48 = v12;
    v52 = v16;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v20 = setThreadIdAndInfo(*(v15 + 64), sIndexExceptionCallbacks, v15, 0x20000000, add_explicit + 1);
    v55 = HIDWORD(v20);
    v56 = v20;
    v53 = v22;
    v54 = v21;
    v23 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
    *(v23 + 216) = 0;
    v46 = *(v23 + 312);
    v24 = *(v23 + 224);
    if (v24)
    {
      v24(*(v23 + 288));
    }

    if (_setjmp(v23))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v23 + 312) = v46;
      if ((~*(v23 + 212) & 0xA0000000) == 0)
      {
        v41 = *(v23 + 288);
        if (v41)
        {
          _CIMakeInvalid(v41);
        }
      }

      CIOnThreadCleanUpReset(v53);
      dropThreadId(v56, 1, add_explicit + 1);
      CICleanUpReset(v56, v54);
LABEL_38:
      v40 = 0xFFFFFFFFLL;
      goto LABEL_39;
    }

    v25 = (v9 + (v10 & 0xFFFFF000));
    if (v8)
    {
      v26 = *(v8 + 40);
      *(v8 + 48) += *(v15 + 14984);
      *(v8 + 24) = vaddq_s64(*(v8 + 24), *(v15 + 14960));
      *(v8 + 56) += *(v15 + 14992);
      *v8 = vaddq_s64(*v8, *(v15 + 14936));
      *(v8 + 40) = v26 + *(v15 + 14976);
      *(v8 + 16) += *(v15 + 14952);
      v27 = *(v8 + 80);
      *(v8 + 64) = vaddq_s64(*(v8 + 64), *(v15 + 15000));
      *(v8 + 80) = vaddq_s64(v27, *(v15 + 15016));
      *(v8 + 96) += *(v15 + 15032);
      *(v15 + 15032) = 0;
      *(v15 + 15000) = 0u;
      *(v15 + 15016) = 0u;
      *(v15 + 14968) = 0u;
      *(v15 + 14984) = 0u;
      *(v15 + 14936) = 0u;
      *(v15 + 14952) = 0u;
      v28 = v9;
      v29 = *(v15 + 45);
      v30 = v15;
      if (*(v15 + 45))
      {
        v31 = 111;
      }

      else
      {
        v31 = 95;
      }

      if (v29)
      {
        v32 = 114;
      }

      else
      {
        v32 = 102;
      }

      bzero(buf, 0x3D68uLL);
      v57 = v25;
      v33 = v31;
      v15 = v30;
      v34 = v29;
      v9 = v28;
      v11 = v51;
      indexRestoreFromBuffer(buf, &v57, *(v18 + 4), v33, v32, 0, v34);
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0;
      v57 = v25;
      indexStoreToBuffer(buf, &v57);
    }

    v35 = indexShadowFiles(v18, v11, v25, v50);
    v36 = threadData[9 * v56 + 1] + 320 * v55;
    *(v36 + 312) = v46;
    v37 = *(v36 + 232);
    if (v37)
    {
      v37(*(v36 + 288));
    }

    v38 = v35;
    dropThreadId(v56, 0, add_explicit + 1);
    if (v35)
    {
      break;
    }

    v39 = *(v18 + 14472);
    v13 = v47;
    v12 = v48;
LABEL_24:
    v10 += 4096;
    ++v13;
    ++v12;
    v14 = v39;
    if (v49 == v10)
    {
      v38 = 0;
      goto LABEL_42;
    }
  }

  if (v35 == 89)
  {
    goto LABEL_45;
  }

  v40 = v35;
  v16 = v52;
LABEL_39:
  v42 = *__error();
  v43 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v59 = "_indexShadowBulk";
    v61 = 1226;
    v60 = 1024;
    v62 = 1024;
    v63 = v40;
    v64 = 2080;
    v65 = v15 + 15208;
    _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, "%s:%d: indexShadowFiles error: %d, %s", buf, 0x22u);
  }

  *__error() = v42;
  v39 = v16;
  v38 = v40;
  if (v40)
  {
    goto LABEL_45;
  }

LABEL_42:
  if (!v39)
  {
    goto LABEL_45;
  }

  fd_sync(v39, 1);
LABEL_44:
  v38 = 0;
LABEL_45:
  v44 = *MEMORY[0x1E69E9840];
  return v38;
}

uint64_t indexPrepareForSyncBulk(uint64_t result, uint64_t *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_57;
  }

  v46 = a4 & 6;
  v6 = result;
  while (1)
  {
    v8 = *a2;
    v9 = atomic_load((*a2 + 36));
    if ((v9 & 2) != 0)
    {
      goto LABEL_22;
    }

    v10 = *a2;
    v11 = atomic_load((v8 + 32));
    if (v11 == -1073623027)
    {
      v12 = *(v8 + 14392);
      if (v12 && !(v12[21] + v12[18] + v12[15] + v12[19] + v12[22] + v12[16] + v12[20] + v12[23] + v12[17] + v12[24] + v12[25] + v12[26] + v12[27]))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v13 = atomic_load((v8 + 32));
      if (v13 == 2)
      {
        if (v46)
        {
          goto LABEL_22;
        }
      }

      else if (*a3 == 1)
      {
        result = 89;
        goto LABEL_57;
      }
    }

    if (*(v8 + 8) != 1)
    {
      break;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v15 = setThreadIdAndInfo(*(v8 + 64), sIndexExceptionCallbacks, v8, 0x20000000, add_explicit + 1);
    v53 = HIDWORD(v15);
    v54 = v15;
    v51 = v17;
    v52 = v16;
    v18 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
    *(v18 + 216) = 0;
    v19 = *(v18 + 312);
    v20 = *(v18 + 224);
    if (v20)
    {
      v20(*(v18 + 288));
    }

    if (_setjmp(v18))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v18 + 312) = v19;
      if ((~*(v18 + 212) & 0xA0000000) == 0)
      {
        v37 = *(v18 + 288);
        if (v37)
        {
          _CIMakeInvalid(v37);
        }
      }

      CIOnThreadCleanUpReset(v51);
      dropThreadId(v54, 1, add_explicit + 1);
      CICleanUpReset(v54, v52);
      goto LABEL_53;
    }

    if (!*(v8 + 14392) || (*(v8 + 15203) & 1) != 0)
    {
LABEL_18:
      v21 = 0;
      goto LABEL_19;
    }

    if (*(v8 + 8) != 1)
    {
      v21 = 4294967294;
      goto LABEL_19;
    }

    v25 = *(v8 + 15196);
    v21 = 4294967294;
    if (v25 == -1 || v25 == 1)
    {
      goto LABEL_19;
    }

    if (!a4)
    {
      atomic_load((v8 + 32));
LABEL_33:
      ++*(v8 + 15576);
      v21 = index_FlushCache(v8, 1, a5, a6, &__block_literal_global_3482);
      if (v21 >= 2)
      {
        v43 = *__error();
        log = _SILogForLogForCategory(0);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v56 = "indexPrepareForSync";
          v57 = 1024;
          v58 = 2929;
          v59 = 2080;
          *v60 = v8 + 15208;
          *&v60[8] = 1024;
          *&v60[10] = 2929;
          _os_log_error_impl(&dword_1C278D000, log, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
        }

        *__error() = v43;
        v26 = v21;
        if (*(v8 + 8))
        {
          goto LABEL_44;
        }
      }

      goto LABEL_19;
    }

    if ((a4 & 2) != 0)
    {
      *(v8 + 15196) = 1;
    }

    else if ((a4 & 4) == 0)
    {
      goto LABEL_33;
    }

    v27 = atomic_load((v8 + 36));
    if ((v27 & 2) != 0)
    {
      goto LABEL_18;
    }

    v28 = *(v8 + 14392);
    v29 = *(v28 + 120);
    v30 = *(v28 + 136);
    v31 = *(v28 + 152);
    v32 = *(v28 + 184);
    v33 = *(v28 + 200);
    v34 = *(v28 + 216);
    *(v8 + 14984) = vaddq_s64(*(v8 + 14984), *(v28 + 168));
    *(v8 + 14936) = vaddq_s64(*(v8 + 14936), v29);
    *(v8 + 14968) = vaddq_s64(*(v8 + 14968), v31);
    *(v8 + 14952) = vaddq_s64(*(v8 + 14952), v30);
    *(v8 + 15000) = vaddq_s64(*(v8 + 15000), v32);
    *(v8 + 15016) = vaddq_s64(*(v8 + 15016), v33);
    *(v8 + 15032) += v34;
    *(v28 + 216) = 0;
    *(v28 + 200) = 0u;
    *(v28 + 184) = 0u;
    *(v28 + 168) = 0u;
    *(v28 + 152) = 0u;
    *(v28 + 136) = 0u;
    *(v28 + 120) = 0u;
    v35 = indexFastFlush(v8, *(v8 + 14392));
    v21 = v35;
    if (v35)
    {
      v45 = v35;
      v44 = *__error();
      v36 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v56 = "indexPrepareForSync";
        v57 = 1024;
        v58 = 2958;
        v59 = 2080;
        *v60 = v8 + 15208;
        *&v60[8] = 1024;
        *&v60[10] = 2958;
        _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", buf, 0x22u);
      }

      v21 = v45;
      *__error() = v44;
      v26 = v45;
      if (*(v8 + 8) == 1)
      {
LABEL_44:
        v21 = v26;
        *(v8 + 8) = 0;
        *(v8 + 12) = v26;
      }
    }

LABEL_19:
    v22 = threadData[9 * v54 + 1] + 320 * v53;
    *(v22 + 312) = v19;
    v23 = *(v22 + 232);
    if (v23)
    {
      v23(*(v22 + 288));
    }

    dropThreadId(v54, 0, add_explicit + 1);
    v24 = v21;
    if (v21)
    {
      goto LABEL_54;
    }

LABEL_22:
    ++a2;
    if (!--v6)
    {
      result = 0;
      goto LABEL_57;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

LABEL_53:
  v24 = 0xFFFFFFFFLL;
LABEL_54:
  v38 = v24;
  v39 = *__error();
  v40 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v56 = "indexPrepareForSyncBulk";
    v57 = 1024;
    v58 = 1079;
    v59 = 1024;
    *v60 = v38;
    *&v60[4] = 2080;
    *&v60[6] = v8 + 15208;
    _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: indexPrepareForSync error: %d, %s", buf, 0x22u);
  }

  *__error() = v39;
  result = v38;
LABEL_57:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t indexPerformSyncBulk(unsigned int a1, uint64_t *a2, _DWORD *a3, char a4, uint64_t *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_40;
  }

  v6 = a4 & 6;
  v7 = a1;
  v9 = 0;
  while (1)
  {
    v10 = *a2;
    if (*a3 == 1)
    {
      v26 = 89;
      goto LABEL_41;
    }

    v11 = atomic_load((v10 + 32));
    if (v11 != -1073623027)
    {
      v12 = atomic_load((v10 + 32));
      if (!v6 || v12 != 2)
      {
        break;
      }
    }

    v13 = v9;
LABEL_18:
    ++a2;
    v9 = v13;
    if (!--v7)
    {
      v26 = 0;
      v27 = a5;
      goto LABEL_36;
    }
  }

  if (*(v10 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    v28 = 4294967293;
    goto LABEL_26;
  }

  v14 = *a2;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  *buf = 0;
  v40 = 0;
  v39 = 0;
  v16 = setThreadIdAndInfo(*(v10 + 64), sIndexExceptionCallbacks, v10, 0x20000000, add_explicit + 1);
  *buf = v16;
  v39 = v18;
  v40 = __PAIR64__(HIDWORD(v16), v17);
  v19 = threadData[9 * v16 + 1] + 320 * HIDWORD(v16);
  *(v19 + 216) = 0;
  v20 = *(v19 + 312);
  v21 = *(v19 + 224);
  v22 = v19;
  if (v21)
  {
    v21(*(v19 + 288));
  }

  v38 = *buf;
  v37 = HIDWORD(v40);
  v36 = __PAIR64__(v40, v39);
  if (!_setjmp(v22))
  {
    v23 = indexPerformSync(v10);
    v24 = threadData[9 * v38 + 1] + 320 * v37;
    *(v24 + 312) = v20;
    v25 = *(v24 + 232);
    if (v25)
    {
      v25(*(v24 + 288));
    }

    v26 = v23;
    dropThreadId(v38, 0, add_explicit + 1);
    if (!v23)
    {
      if (*(v10 + 14472))
      {
        v13 = *(v14 + 14472);
      }

      else
      {
        v13 = v9;
      }

      goto LABEL_18;
    }

    if (v23 == 89)
    {
      goto LABEL_41;
    }

    v28 = v23;
LABEL_26:
    v27 = a5;
    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v35 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v35, 2u);
  }

  *(v22 + 312) = v20;
  v27 = a5;
  if ((~*(v22 + 212) & 0xA0000000) == 0)
  {
    v29 = *(v22 + 288);
    if (v29)
    {
      _CIMakeInvalid(v29);
    }
  }

  CIOnThreadCleanUpReset(v36);
  dropThreadId(v38, 1, add_explicit + 1);
  CICleanUpReset(v38, HIDWORD(v36));
  v28 = 4294967293;
LABEL_33:
  v30 = *__error();
  v31 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v42 = "indexPerformSyncBulk";
    v44 = 1117;
    v43 = 1024;
    v45 = 1024;
    v46 = v28;
    v47 = 2080;
    v48 = v10 + 15208;
    _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: indexPerformSync error: %d, %s", buf, 0x22u);
  }

  *__error() = v30;
  v13 = v9;
  v26 = v28;
  if (v28)
  {
    goto LABEL_41;
  }

LABEL_36:
  if (!v13)
  {
    goto LABEL_41;
  }

  if (v27)
  {
    *v27 = v13;
  }

  else
  {
    fd_sync(v13, 1);
  }

LABEL_40:
  v26 = 0;
LABEL_41:
  v32 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t GatherAndLockIndexes(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v14 = a3;
  v15 = 0;
  *a4 = 0;
  if (!a1)
  {
    if (!a2)
    {
      v9 = 0;
      goto LABEL_19;
    }

LABEL_9:
    if (*(a2 + 8))
    {
      v8 = 0;
      do
      {
        if ((gatherAndLockIndexCallback(*(*a2 + 8 * v8), &v14) & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v8 < *(a2 + 8));
    }

    goto LABEL_13;
  }

  if (!*(a1 + 8))
  {
LABEL_6:
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v7 = 0;
  while ((gatherAndLockIndexCallback(*(*a1 + 8 * v7), &v14) & 1) != 0)
  {
    if (++v7 >= *(a1 + 8))
    {
      goto LABEL_6;
    }
  }

LABEL_13:
  v9 = v15;
  v10 = HIDWORD(v15);
  if (!HIDWORD(v15))
  {
LABEL_19:
    v10 = 0;
    *a4 = v9;
    return v10;
  }

  if (v15 - 1 >= 0)
  {
    v11 = v14;
    v12 = 8 * (v15 - 1);
    do
    {
      pthread_mutex_unlock((*(v11 + v12) + 15120));
      v12 -= 8;
    }

    while (v12 != -8);
  }

  return v10;
}

uint64_t gatherAndLockIndexCallback(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 8) & 1) == 0)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "gatherAndLockIndexCallback";
      v13 = 1024;
      v14 = 1007;
      v15 = 2080;
      v16 = a1 + 15208;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: index invalid %s", &v11, 0x1Cu);
    }

    v8 = __error();
    result = 0;
    *v8 = v6;
    v5 = -1;
    goto LABEL_7;
  }

  if (*(a1 + 15196) == 1)
  {
    result = 0;
    v5 = 22;
LABEL_7:
    *(a2 + 12) = v5;
    goto LABEL_11;
  }

  if ((*(a1 + 15203) & 1) == 0)
  {
    pthread_mutex_lock((a1 + 15120));
    v9 = *(a2 + 8);
    *(*a2 + 8 * v9) = a1;
    *(a2 + 8) = v9 + 1;
  }

  result = 1;
LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CIFlushCache(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  pthread_mutex_lock((a1 + 15120));
  v30 = 0;
  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v18 = 0;
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v11 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  *buf = v11;
  v12 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
  v28 = HIDWORD(v11);
  v27 = __PAIR64__(v13, v14);
  *(v12 + 216) = 0;
  v15 = *(v12 + 312);
  v16 = *(v12 + 224);
  if (v16)
  {
    v16(*(v12 + 288));
  }

  v26 = *buf;
  v25 = v28;
  v24 = v27;
  if (_setjmp(v12))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v23, 2u);
    }

    *(v12 + 312) = v15;
    if ((~*(v12 + 212) & 0xA0000000) == 0)
    {
      v17 = *(v12 + 288);
      if (v17)
      {
        _CIMakeInvalid(v17);
      }
    }

    CIOnThreadCleanUpReset(v24);
    dropThreadId(v26, 1, add_explicit + 1);
    CICleanUpReset(v26, HIDWORD(v24));
LABEL_13:
    v18 = 0;
    goto LABEL_20;
  }

  if (atomic_load((a1 + 15192)))
  {
    (*(a5 + 16))(a5);
    v18 = 0;
  }

  else
  {
    v18 = index_FlushCache(a1, a2, a3, a4, a5);
  }

  v30 = 1;
  v20 = threadData[9 * v26 + 1] + 320 * v25;
  *(v20 + 312) = v15;
  v21 = *(v20 + 232);
  if (v21)
  {
    v21(*(v20 + 288));
  }

  dropThreadId(v26, 0, add_explicit + 1);
LABEL_20:
  if ((v30 & 1) == 0)
  {
    (*(a5 + 16))(a5);
  }

  pthread_mutex_unlock((a1 + 15120));
  return v18;
}

_DWORD *_CIEnsureOpenFiles(uint64_t a1)
{
  fd_warmup(*(a1 + 4672));
  fd_warmup(*(a1 + 208));
  result = fd_warmup(*(a1 + 472));
  v3 = *(a1 + 4928);
  if (v3)
  {
    v4 = *(v3 + 224);

    return fd_warmup(v4);
  }

  return result;
}

uint64_t _CIListsClean(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 8);
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    v5 = *(a2 + 8);
  }

LABEL_5:
  v26 = 0;
  MEMORY[0x1EEE9AC00](a1);
  v7 = v24 - v6;
  bzero(v24 - v6, v8);
  v9 = GatherAndLockIndexes(a1, a2, v7, &v26);
  v10 = v26;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v26 == 0;
  }

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v13 = 0;
    while (1)
    {
      v14 = *&v7[8 * v13];
      v15 = CIDocCountsNonEmpty((v14 + 14936));
      if (v15)
      {
LABEL_16:
        v12 = !v15;
        goto LABEL_17;
      }

      v16 = atomic_load((v14 + 36));
      if ((v16 & 2) == 0)
      {
        v17 = *(v14 + 14392);
        if (v17)
        {
          v18 = *(v17 + 168);
          v19 = *(v17 + 200);
          v24[4] = *(v17 + 184);
          v24[5] = v19;
          v25 = *(v17 + 216);
          v20 = *(v17 + 136);
          v24[0] = *(v17 + 120);
          v24[1] = v20;
          v24[2] = *(v17 + 152);
          v24[3] = v18;
          if (CIDocCountsNonEmpty(v24))
          {
            break;
          }
        }
      }

      ++v13;
      v10 = v26;
      if (v13 >= v26)
      {
        goto LABEL_16;
      }
    }

    v12 = 0;
    v10 = v26;
  }

LABEL_17:
  if ((v10 - 1) >= 0)
  {
    v21 = 8 * (v10 - 1);
    do
    {
      pthread_mutex_unlock((*&v7[v21] + 15120));
      v21 -= 8;
    }

    while (v21 != -8);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _CICompact(uint64_t a1, _OWORD *a2, char a3, _BYTE *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  bzero(v29, 0x400uLL);
  if ((a3 & 1) == 0 || (*(a1 + 45) & 1) != 0 || confstr(65537, v29, 0x400uLL) - 1 > 0x3FF)
  {
    v7 = -1;
  }

  else
  {
    v7 = open(v29, 4);
  }

  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_20;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v9 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  v25 = HIDWORD(v9);
  v26 = v9;
  v23 = v11;
  v24 = v10;
  v12 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
  *(v12 + 216) = 1;
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  v15 = v12;
  if (v14)
  {
    v14(*(v12 + 288));
  }

  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v15 + 312) = v13;
    if ((~*(v15 + 212) & 0xA0000000) == 0)
    {
      v16 = *(v15 + 288);
      if (v16)
      {
        _CIMakeInvalid(v16);
      }
    }

    CIOnThreadCleanUpReset(v23);
    dropThreadId(v26, 1, add_explicit + 1);
    CICleanUpReset(v26, v24);
LABEL_20:
    v17 = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  v20 = a2[1];
  *buf = *a2;
  v28 = v20;
  v17 = index_compact(a1);
  v21 = threadData[9 * v26 + 1] + 320 * v25;
  *(v21 + 312) = v13;
  v22 = *(v21 + 232);
  if (v22)
  {
    v22(*(v21 + 288));
  }

  dropThreadId(v26, 0, add_explicit + 1);
LABEL_21:
  if (v7 != -1)
  {
    close(v7);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t _CIMakeInvalid(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  _db_write_lock(a1 + 14720);
  v2 = *__error();
  v3 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v8.st_dev = 136315906;
    *&v8.st_mode = "indexMakeInvalid";
    WORD2(v8.st_ino) = 1024;
    *(&v8.st_ino + 6) = 2723;
    HIWORD(v8.st_uid) = 2080;
    *&v8.st_gid = a1 + 15208;
    *(&v8.st_rdev + 2) = 1024;
    *(&v8.st_rdev + 6) = 2723;
    _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: %s marking invalid at %d", &v8, 0x22u);
  }

  *__error() = v2;
  *(a1 + 8) = 0;
  v4 = *(a1 + 64);
  memset(&v8, 0, sizeof(v8));
  if (!fstat(v4, &v8))
  {
    v5 = open(".", 4);
    if (!MEMORY[0x1C6921200](v4))
    {
      bzero(&v8, 0x400uLL);
      snprintf(&v8, 0x400uLL, "%s%s", (a1 + 15208), "indexHead");
      unlink(&v8);
      snprintf(&v8, 0x400uLL, "%s%s", (a1 + 15208), "shadowIndexHead");
      unlink(&v8);
      MEMORY[0x1C6921200](v5);
    }

    if ((v5 & 0x80000000) == 0)
    {
      close(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return db_write_unlock(a1 + 14720);
}

uint64_t ContentIndexVerifyIndex(uint64_t a1)
{
  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    return 0xFFFFFFFFLL;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  *buf = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v19 = HIDWORD(v3);
  v18 = __PAIR64__(v5, v6);
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v17 = *buf;
  v16 = v19;
  v15 = v18;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v14, 2u);
    }

    *(v4 + 312) = v7;
    if ((~*(v4 + 212) & 0xA0000000) == 0)
    {
      v9 = *(v4 + 288);
      if (v9)
      {
        _CIMakeInvalid(v9);
      }
    }

    CIOnThreadCleanUpReset(v15);
    dropThreadId(v17, 1, add_explicit + 1);
    CICleanUpReset(v17, HIDWORD(v15));
    return 0xFFFFFFFFLL;
  }

  v11 = index_verify(a1);
  v12 = threadData[9 * v17 + 1] + 320 * v16;
  *(v12 + 312) = v7;
  v13 = *(v12 + 232);
  if (v13)
  {
    v13(*(v12 + 288));
  }

  dropThreadId(v17, 0, add_explicit + 1);
  return v11;
}

uint64_t iterateTermsCallback(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 4))
  {
    v7 = *storageResolvePtr(*(a5 + 8), 8 * a3, 8, 1);
    v8 = *storageResolvePtr(*(a5 + 16), 8 * a3, 8, 1);
  }

  return (*(*(a5 + 24) + 16))();
}

void _CIDisableUpdates(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v57 = *MEMORY[0x1E69E9840];
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
    v4 = v1;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v6 = setThreadIdAndInfo(*(v1 + 64), sIndexExceptionCallbacks, v1, 0x20000000, add_explicit + 1);
    v46 = v6;
    v7 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
    v44 = v8;
    v45 = HIDWORD(v6);
    v43 = v9;
    *(v7 + 216) = 0;
    v10 = *(v7 + 312);
    v11 = *(v7 + 224);
    if (v11)
    {
      v11(*(v7 + 288));
    }

    if (_setjmp(v7))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v7 + 312) = v10;
      if ((~*(v7 + 212) & 0xA0000000) == 0)
      {
        v12 = *(v7 + 288);
        if (v12)
        {
          _CIMakeInvalid(v12);
        }
      }

      CIOnThreadCleanUpReset(v43);
      dropThreadId(v46, 1, add_explicit + 1);
      CICleanUpReset(v46, v44);
      goto LABEL_43;
    }

    HIDWORD(v14) = qos_class_self() - 9;
    LODWORD(v14) = HIDWORD(v14);
    v13 = v14 >> 2;
    if (v13 > 6)
    {
      v15 = 0;
    }

    else
    {
      v15 = dword_1C2BFF8F0[v13];
    }

    pthread_mutex_lock((v4 + 14720));
    if (!*(v4 + 14904) && !*(v4 + 14916) && (*(v4 + 14932) & 1) == 0)
    {
      if (v15 > 5)
      {
LABEL_49:
        *(v4 + 14904) = pthread_self();
        goto LABEL_20;
      }

      v36 = v15 - 6;
      v37 = (v4 + 16 * v15 + 14784);
      while (!*v37)
      {
        v37 += 2;
        if (__CFADD__(v36++, 1))
        {
          goto LABEL_49;
        }
      }
    }

    db_rwlock_wait(v4 + 14720, v15, 2);
LABEL_20:
    pthread_mutex_unlock((v4 + 14720));
    v16 = atomic_load((v4 + 36));
    if (v16)
    {
      if (dword_1EBF46AF4 >= 5)
      {
        v24 = *__error();
        v25 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(v4 + 56);
          v27 = atomic_load((v4 + 36));
          v28 = *(v4 + 15668);
          *buf = 134219008;
          v49 = v4;
          *v50 = 1024;
          *&v50[2] = v26;
          v51 = 1024;
          v52 = v3;
          v53 = 1024;
          v54 = v27;
          v55 = 1024;
          v56 = v28;
          _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "skip index updates disable for %p (%d) from %d; flags 0x%x, disabled at %d", buf, 0x24u);
        }

        *__error() = v24;
      }
    }

    else
    {
      if (dword_1EBF46AF4 >= 5)
      {
        v39 = *__error();
        v40 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(v4 + 56);
          *buf = 134218496;
          v49 = v4;
          *v50 = 1024;
          *&v50[2] = v42;
          v51 = 1024;
          v52 = v3;
          _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "index updates disabled for %p (%d) from %d", buf, 0x18u);
        }

        *__error() = v39;
      }

      atomic_fetch_or((v4 + 36), 1u);
      v17 = atomic_load((v4 + 32));
      bzero(buf, 0x1000uLL);
      atomic_store(v17, (v4 + 32));
      v18 = *(v4 + 4);
      v19 = atomic_load((v4 + 32));
      *buf = v18;
      LODWORD(v49) = v19;
      v20 = atomic_load((v4 + 36));
      v21 = *(v4 + 48);
      HIDWORD(v49) = v20;
      *v50 = v21;
      pthread_mutex_lock((v4 + 14720));
      *(v4 + 14932) = 1;
      db_rwlock_wakeup(v4 + 14720, 1, 1);
      pthread_mutex_unlock((v4 + 14720));
      v22 = *(v4 + 14480);
      if (v22)
      {
        v23 = fd_pwrite(*(v4 + 14480), buf, 0x10uLL, 0);
        if (v23 == 16)
        {
          if (_gSystemStatusBool == 1)
          {
            pthread_mutex_lock(&_gSystemStatusLock);
            if (_gSystemStatusBool == 1)
            {
              do
              {
                pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
              }

              while ((_gSystemStatusBool & 1) != 0);
            }

            pthread_mutex_unlock(&_gSystemStatusLock);
          }

          v47 = 0;
          v29 = _fd_acquire_fd(v22, &v47);
          if (v29 != -1)
          {
            v30 = v29;
            prot_fsync(v29, (*(v22 + 56) & 8) == 0);
            _fd_release_fd(v22, v30, 0, v47);
          }
        }

        else if (v23 == -1)
        {
          __error();
        }
      }

      *(v4 + 15668) = v3;
    }

    pthread_mutex_lock((v4 + 14720));
    *(v4 + 14924) = 0;
    v31 = *(v4 + 14896);
    *(v4 + 14896) = 0u;
    v32 = *(v4 + 14916) != 0;
    *(v4 + 14932) = 0;
    db_rwlock_wakeup(v4 + 14720, v32, 0);
    pthread_mutex_unlock((v4 + 14720));
    if (v31)
    {
      pthread_override_qos_class_end_np(v31);
    }

    v33 = threadData[9 * v46 + 1] + 320 * v45;
    *(v33 + 312) = v10;
    v34 = *(v33 + 232);
    if (v34)
    {
      v34(*(v33 + 288));
    }

    dropThreadId(v46, 0, add_explicit + 1);
    goto LABEL_43;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

LABEL_43:
  v35 = *MEMORY[0x1E69E9840];
}

uint64_t _ContentIndexMergeIndexes(uint64_t **a1, unsigned int a2, uint64_t a3, uint64_t *a4, __int128 *a5)
{
  v27 = a3;
  v28 = a1;
  v37[1] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = 8 * a2;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - v10;
  v12 = CICleanUpThreadLoc();
  v13 = LODWORD(threadData[9 * v12 + 4]);
  if (*a5)
  {
    v14 = (*a5)(*(a5 + 4));
  }

  else
  {
    v14 = 0;
  }

  bzero(v11, v9);
  if (a2)
  {
    v15 = v28;
    v16 = v11;
    v17 = v8;
    do
    {
      v18 = *v15++;
      *v16++ = v18;
      v19 = IndexFdInfoCreate(v18, 0);
      CICleanUpPush(v12, IndexFdInfoDispose, v19);
      --v17;
    }

    while (v17);
  }

  v36 = 0;
  v20 = *(a5 + 1);
  if (v20)
  {
    v20(*(a5 + 4), v14);
  }

  v21 = a5[3];
  v33 = a5[2];
  v34 = v21;
  v35 = a5[4];
  v22 = a5[1];
  v31 = *a5;
  v32 = v22;
  v23 = mergeIndexData(v11);
  CICleanUpReset(v12, v13);
  if (v23)
  {
    if (g_fd_list)
    {
      _fd_close_inactive(*(v23 + 64), (v23 + 15208), 0, 0);
    }

    if (a4)
    {
      *a4 = CIRemappingCreateWithContext(*MEMORY[0x1E695E480], *(v23 + 80), v36);
    }

    v30 = 0;
    memset(v29, 0, sizeof(v29));
    atomic_fetch_or((v23 + 36), 0x64u);
    _CIDisableUpdates(v23);
    v24 = *v28;
    v37[0] = v23;
    *&v32 = 0;
    *&v31 = v37;
    *(&v31 + 1) = 0x100000001;
    _ContentIndexSyncIndexBulk(0, &v31, 0, 1, 0, v29, (v24 + 1899), 0, 0);
    *(v23 + 15680) = *(v23 + 68);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

BOOL _CIMergeDeletes(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 68);
  if (v6 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v37 = 0;
  v36 = 0;
  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v12 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v12;
    v13 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
    v34 = HIDWORD(v12);
    v33 = __PAIR64__(v14, v15);
    *(v13 + 216) = 0;
    v16 = *(v13 + 312);
    v17 = *(v13 + 224);
    if (v17)
    {
      v17(*(v13 + 288));
    }

    v32 = *buf;
    v31 = v34;
    v30 = v33;
    if (_setjmp(v13))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v29 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v29, 2u);
      }

      *(v13 + 312) = v16;
      if ((~*(v13 + 212) & 0xA0000000) == 0)
      {
        v18 = *(v13 + 288);
        if (v18)
        {
          _CIMakeInvalid(v18);
        }
      }

      CIOnThreadCleanUpReset(v30);
      dropThreadId(v32, 1, add_explicit + 1);
      CICleanUpReset(v32, HIDWORD(v30));
      goto LABEL_16;
    }

    if (a4 < 1)
    {
      v19 = 0;
    }

    else
    {
      v28 = add_explicit;
      v20 = a3;
      v21 = 1;
      do
      {
        v22 = *v20++;
        v23 = _MergeDeletes(a1, v22, a2, v5, v5 + v7, &v36);
        if (v21 >= a4)
        {
          break;
        }

        ++v21;
      }

      while ((v23 & 1) != 0);
      v19 = v23 ^ 1;
      add_explicit = v28;
    }

    v37 = 1;
    v24 = threadData[9 * v32 + 1] + 320 * v31;
    *(v24 + 312) = v16;
    v25 = *(v24 + 232);
    if (v25)
    {
      v25(*(v24 + 288));
    }

    dropThreadId(v32, 0, add_explicit + 1);
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
LABEL_16:
      v19 = 0;
      goto LABEL_26;
    }

    v19 = 0;
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

LABEL_26:
  v26 = v37 ^ 1 | v19;
  if ((v26 & 1) == 0 && v36 == 1)
  {
    _indexShadowGroups(a1, 1);
  }

  return (v26 & 1) == 0;
}

uint64_t _MergeDeletes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, _BYTE *a6)
{
  v76 = 0;
  if (*(a2 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    return v76;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  *buf = 0;
  v74 = 0;
  v73 = 0;
  v13 = setThreadIdAndInfo(*(a2 + 64), sIndexExceptionCallbacks, a2, 0x20000000, add_explicit + 1);
  *buf = v13;
  v73 = v15;
  v74 = __PAIR64__(HIDWORD(v13), v14);
  v16 = threadData[9 * v13 + 1] + 320 * HIDWORD(v13);
  *(v16 + 216) = 0;
  v17 = *(v16 + 312);
  v18 = *(v16 + 224);
  v19 = v16;
  if (v18)
  {
    v18(*(v16 + 288));
  }

  v72 = *buf;
  v71 = HIDWORD(v74);
  v70 = __PAIR64__(v74, v73);
  if (_setjmp(v19))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v69 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v69, 2u);
    }

    *(v19 + 312) = v17;
    if ((~*(v19 + 212) & 0xA0000000) == 0)
    {
      v20 = *(v19 + 288);
      if (v20)
      {
        _CIMakeInvalid(v20);
      }
    }

    CIOnThreadCleanUpReset(v70);
    dropThreadId(v72, 1, add_explicit + 1);
    CICleanUpReset(v72, HIDWORD(v70));
    return v76;
  }

  v21 = *(a2 + 68);
  if (v21 < 2)
  {
    goto LABEL_51;
  }

  v22 = *(a2 + 80);
  v23 = MEMORY[0x1E69E9AC8];
  v24 = 1;
  v25 = 0;
  do
  {
    v26 = v25;
    if (*(a2 + 45) == 1)
    {
      v27 = *(*(a2 + 14432) + v24);
    }

    else
    {
      v27 = (*(*(a2 + 14432) + 4 * (v24 / 5uLL)) >> (6 * (v24 % 5))) & 0x3F;
    }

    if ((v27 & 0xFFFFFFDF) != 0)
    {
      goto LABEL_19;
    }

    v28 = v22 + v24;
    v29 = v22 + v24;
    if (!a3 || (v30 = *(a3 + 16), *v30 < 1))
    {
LABEL_27:
      if (!v29)
      {
        goto LABEL_19;
      }

LABEL_28:
      v33 = v29 - a4;
      if (v29 <= a4 || v29 > a5)
      {
LABEL_58:
        v60 = __si_assert_copy_extra_332();
        __message_assert_336(v60, v61, v62, v63, v64, v65, v66, v67, "ContentIndex.c");
        free(v60);
        if (__valid_fs(-1))
        {
          v68 = 2989;
        }

        else
        {
          v68 = 3072;
        }

        *v68 = -559038737;
        abort();
      }

      if (*(a1 + 45) == 1)
      {
        v34 = *(a1 + 14432);
        if ((*(v34 + v33) & 0xDF) != 0)
        {
          *(v34 + v33) = 0;
          v35 = *(a1 + 14440);
          if (v35)
          {
            *(v35 + v33 / (32 * *v23)) |= 1 << ((v33 / (4 * *v23)) & 7);
          }

          v26 = 1;
        }

        goto LABEL_19;
      }

      v36 = v33 / 5uLL;
      v37 = 6 * (v33 % 5);
      v38 = *(a1 + 14432);
      v39 = *(v38 + 4 * v36);
      if (((v39 >> (6 * (v33 % 5))) & 0x1F) == 0)
      {
        goto LABEL_19;
      }

      v40 = v39 & ~(63 << v37);
      if (*(a1 + 14440))
      {
        v41 = v36 / (8 * *v23);
        v42 = (v36 / *v23) & 7;
        *(*(a1 + 14440) + v41) |= 1 << v42;
        if (!*(*(a1 + 14440) + v41))
        {
          goto LABEL_58;
        }

        v43 = v42 | (8 * v41);
        if (*v23 * v43 > v36 || *v23 * (v43 + 1) <= v36)
        {
          goto LABEL_58;
        }

        v44 = *(a1 + 14432);
        v45 = *(a1 + 45);
        *(v44 + 4 * (v33 / 5uLL)) = v40;
        if (v45)
        {
          v46 = *(v44 + v33);
LABEL_47:
          if (v46)
          {
            v51 = __si_assert_copy_extra_332();
            __message_assert_336(v51, v52, v53, v54, v55, v56, v57, v58, "ContentIndex.c");
            free(v51);
            if (__valid_fs(-1))
            {
              v59 = 2989;
            }

            else
            {
              v59 = 3072;
            }

            *v59 = -559038737;
            abort();
          }

          v26 = 1;
          goto LABEL_19;
        }
      }

      else
      {
        *(v38 + 4 * v36) = v40;
      }

      v46 = (v40 >> v37) & 0x3F;
      goto LABEL_47;
    }

    v31 = v30[1];
    v32 = *v30;
    while (v28 <= *v31 || *v31 + *(v31 + 8) <= v28)
    {
      v31 += 32;
      if (!--v32)
      {
        goto LABEL_27;
      }
    }

    v47 = *(*(v31 + 16) + 4 * (v28 - *v31));
    if (v47)
    {
      v29 = *(a3 + 32) + v47;
      if (v29)
      {
        goto LABEL_28;
      }
    }

LABEL_19:
    ++v24;
    v25 = v26;
  }

  while (v24 != v21);
  if (((a6 != 0) & v26) != 0)
  {
    *a6 = 1;
  }

LABEL_51:
  v76 = 1;
  v48 = threadData[9 * v72 + 1] + 320 * v71;
  *(v48 + 312) = v17;
  v49 = *(v48 + 232);
  if (v49)
  {
    v49(*(v48 + 288));
  }

  dropThreadId(v72, 0, add_explicit + 1);
  return v76;
}

void _CIReassign(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v9 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    v54 = v9;
    v10 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
    v52 = v11;
    v53 = HIDWORD(v9);
    v51 = v12;
    *(v10 + 216) = 0;
    v13 = *(v10 + 312);
    v14 = *(v10 + 224);
    if (v14)
    {
      v14(*(v10 + 288));
    }

    if (_setjmp(v10))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v10 + 312) = v13;
      if ((~*(v10 + 212) & 0xA0000000) == 0)
      {
        v15 = *(v10 + 288);
        if (v15)
        {
          _CIMakeInvalid(v15);
        }
      }

      CIOnThreadCleanUpReset(v51);
      dropThreadId(v54, 1, add_explicit + 1);
      CICleanUpReset(v54, v52);
      goto LABEL_59;
    }

    if (dword_1EBF46AF4 >= 5)
    {
      v49 = *__error();
      v50 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v64) = a2;
        _os_log_impl(&dword_1C278D000, v50, OS_LOG_TYPE_DEFAULT, "reassign docId: %d", buf, 8u);
      }

      *__error() = v49;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      bzero(buf, 0x400uLL);
      if ((reassignDocument__COUNT_ & 1) == 0)
      {
        reassignDocument__COUNT_ = 1;
        v16 = *__error();
        v17 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v45 = fcntl(*(a1 + 64), 50, buf);
          if (buf[0])
          {
            v46 = v45 < 0;
          }

          else
          {
            v46 = 1;
          }

          *v55 = 136315906;
          v56 = "reassignDocument";
          v47 = "";
          if (!v46)
          {
            v47 = buf;
          }

          v57 = 1024;
          v58 = 4973;
          v59 = 2080;
          v60 = v47;
          v61 = 2080;
          v62 = a1 + 15208;
          v21 = "%s:%d: trying to delete from invalid index %s/%s";
          goto LABEL_72;
        }

LABEL_26:
        *__error() = v16;
      }

LABEL_56:
      v39 = threadData[9 * v54 + 1] + 320 * v53;
      *(v39 + 312) = v13;
      v40 = *(v39 + 232);
      if (v40)
      {
        v40(*(v39 + 288));
      }

      dropThreadId(v54, 0, add_explicit + 1);
      goto LABEL_59;
    }

    if (*(a1 + 15203) == 1)
    {
      bzero(buf, 0x400uLL);
      if ((reassignDocument__COUNT__55 & 1) == 0)
      {
        reassignDocument__COUNT__55 = 1;
        v16 = *__error();
        v17 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = fcntl(*(a1 + 64), 50, buf);
          if (buf[0])
          {
            v19 = v18 < 0;
          }

          else
          {
            v19 = 1;
          }

          *v55 = 136315906;
          v56 = "reassignDocument";
          v20 = "";
          if (!v19)
          {
            v20 = buf;
          }

          v57 = 1024;
          v58 = 4979;
          v59 = 2080;
          v60 = v20;
          v61 = 2080;
          v62 = a1 + 15208;
          v21 = "%s:%d: trying to modify read only index %s/%s";
LABEL_72:
          _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, v21, v55, 0x26u);
          goto LABEL_26;
        }

        goto LABEL_26;
      }

      goto LABEL_56;
    }

    v22 = __THREAD_SLOT_KEY;
    if (!__THREAD_SLOT_KEY)
    {
      makeThreadId();
      v22 = __THREAD_SLOT_KEY;
    }

    v23 = pthread_getspecific(v22);
    if (!v23 || (v24 = v23, v23 >= 0x801))
    {
      makeThreadId();
      v24 = pthread_getspecific(__THREAD_SLOT_KEY);
    }

    v25 = v24 - 1;
    HIDWORD(v27) = qos_class_self() - 9;
    LODWORD(v27) = HIDWORD(v27);
    v26 = v27 >> 2;
    if (v26 > 6)
    {
      v28 = 0;
    }

    else
    {
      v28 = dword_1C2BFF8F0[v26];
    }

    pthread_mutex_lock((a1 + 14504));
    if (!*(a1 + 14688) && !*(a1 + 14700) && (*(a1 + 14716) & 1) == 0)
    {
      if (v28 > 5)
      {
LABEL_65:
        *(a1 + 14688) = pthread_self();
LABEL_38:
        pthread_mutex_unlock((a1 + 14504));
        v29 = v25;
        CIOnThreadCleanUpPush(v25, si_rwlock_wrunlock_3589, a1 + 14504);
        v30 = a2 - *(a1 + 80);
        v31 = v30;
        if (v30 && v30 >= *(a1 + 68))
        {
          v32 = *__error();
          v33 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v48 = *(a1 + 68);
            *buf = 136315906;
            v64 = "reassignDocument";
            v65 = 1024;
            *v66 = 4993;
            *&v66[4] = 2048;
            *&v66[6] = v31;
            *&v66[14] = 1024;
            *&v66[16] = v48;
            _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: reassignDocument error - docId (%lld) >= max (%d) ", buf, 0x22u);
          }

          *__error() = v32;
          v29 = v25;
        }

        if (v31 && *(a1 + 68) > v31)
        {
          v34 = *(*(a1 + 14408) + 8 * v31);
          if (v34 == a3)
          {
            if (indexMarkDirty(a1))
            {
              *(*(a1 + 14408) + 8 * v31) = a4;
            }
          }

          else if (v34 != a4 && v34 != 0)
          {
            v36 = *__error();
            v37 = _SILogForLogForCategory(0);
            v38 = gSILogLevels[0] < 3;
            if (os_log_type_enabled(v37, (gSILogLevels[0] < 3)))
            {
              *buf = 134218752;
              v64 = a3;
              v65 = 2048;
              *v66 = a4;
              *&v66[8] = 2048;
              *&v66[10] = v31;
              *&v66[18] = 2048;
              v67 = v34;
              _os_log_impl(&dword_1C278D000, v37, v38, "*warn* reassignDocument error: oid mismatch oldOid: %ld newOid: %ld docId: %ld idxOid: %ld", buf, 0x2Au);
            }

            *__error() = v36;
            v29 = v25;
          }
        }

        CIOnThreadCleanUpPop(v29);
        goto LABEL_56;
      }

      v42 = v28 - 6;
      v43 = (a1 + 16 * v28 + 14568);
      while (!*v43)
      {
        v43 += 2;
        if (__CFADD__(v42++, 1))
        {
          goto LABEL_65;
        }
      }
    }

    db_rwlock_wait(a1 + 14504, v28, 2);
    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

LABEL_59:
  v41 = *MEMORY[0x1E69E9840];
}

void _CIRebaseDocId(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v7 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v7;
    v8 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
    v32 = HIDWORD(v7);
    v31 = __PAIR64__(v9, v10);
    *(v8 + 216) = 0;
    v11 = *(v8 + 312);
    v12 = *(v8 + 224);
    if (v12)
    {
      v12(*(v8 + 288));
    }

    v30 = *buf;
    v29 = v32;
    v28 = v31;
    if (_setjmp(v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v27, 2u);
      }

      *(v8 + 312) = v11;
      if ((~*(v8 + 212) & 0xA0000000) == 0)
      {
        v13 = *(v8 + 288);
        if (v13)
        {
          _CIMakeInvalid(v13);
        }
      }

      CIOnThreadCleanUpReset(v28);
      dropThreadId(v30, 1, add_explicit + 1);
      CICleanUpReset(v30, HIDWORD(v28));
    }

    else
    {
      if (*(a1 + 68) >= 2u)
      {
        v18 = __si_assert_copy_extra_332();
        __message_assert_336(v18, v19, v20, v21, v22, v23, v24, v25, "ContentIndex.c");
        free(v18);
        if (__valid_fs(-1))
        {
          v26 = 2989;
        }

        else
        {
          v26 = 3072;
        }

        *v26 = -559038737;
        abort();
      }

      *(a1 + 80) = a2;
      *(a1 + 88) = a3;
      v14 = *(a1 + 14392);
      if (v14)
      {
        *(v14 + 8) = a2;
      }

      v15 = *(a1 + 14400);
      if (v15)
      {
        *(v15 + 8) = a2;
      }

      v16 = threadData[9 * v30 + 1] + 320 * v29;
      *(v16 + 312) = v11;
      v17 = *(v16 + 232);
      if (v17)
      {
        v17(*(v16 + 288));
      }

      dropThreadId(v30, 0, add_explicit + 1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }
}

uint64_t _CIDocIdForOID(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    return 0;
  }

  v6 = a1 + 64;
  v4 = *(a1 + 64);
  v5 = *(v6 + 4);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(v4, sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  *buf = v8;
  v9 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v27 = HIDWORD(v8);
  v26 = __PAIR64__(v10, v11);
  *(v9 + 216) = 0;
  v12 = *(v9 + 312);
  v13 = *(v9 + 224);
  if (v13)
  {
    v13(*(v9 + 288));
  }

  v25 = *buf;
  v24 = v27;
  v23 = v26;
  if (_setjmp(v9))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v22, 2u);
    }

    *(v9 + 312) = v12;
    if ((~*(v9 + 212) & 0xA0000000) == 0)
    {
      v14 = *(v9 + 288);
      if (v14)
      {
        _CIMakeInvalid(v14);
      }
    }

    CIOnThreadCleanUpReset(v23);
    dropThreadId(v25, 1, add_explicit + 1);
    CICleanUpReset(v25, HIDWORD(v23));
    return 0;
  }

  db_read_lock(a1 + 14504);
  if (v5 < 1)
  {
LABEL_22:
    v19 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *(a1 + 45) ? *(*(a1 + 14432) + v17) : (*(*(a1 + 14432) + (((3435973837u * v17) >> 32) & 0xFFFFFFFC)) >> (v16 - 30 * (v17 / 5))) & 0x3F;
      if ((v18 & 0xFFFFFFDF) != 0 && *(*(a1 + 14408) + 8 * v17) == a2)
      {
        break;
      }

      ++v17;
      v16 += 6;
      if (v5 == v17)
      {
        goto LABEL_22;
      }
    }

    v19 = *(a1 + 80) + v17;
  }

  db_read_unlock(a1 + 14504);
  v20 = threadData[9 * v25 + 1] + 320 * v24;
  *(v20 + 312) = v12;
  v21 = *(v20 + 232);
  if (v21)
  {
    v21(*(v20 + 288));
  }

  dropThreadId(v25, 0, add_explicit + 1);
  return v19;
}

uint64_t _CIDeleteDuplicates(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_13;
  }

  v66 = *(a1 + 15203);
  v6 = a1 + 64;
  v4 = *(a1 + 64);
  v5 = *(v6 + 4);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(v4, sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
  v76 = v8;
  v9 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v75 = HIDWORD(v8);
  v74 = __PAIR64__(v10, v11);
  *(v9 + 216) = 0;
  v12 = *(v9 + 312);
  v13 = *(v9 + 224);
  if (v13)
  {
    v13(*(v9 + 288));
  }

  v73 = v76;
  v72 = v75;
  v71 = v74;
  if (_setjmp(v9))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v9 + 312) = v12;
    if ((~*(v9 + 212) & 0xA0000000) == 0)
    {
      v14 = *(v9 + 288);
      if (v14)
      {
        _CIMakeInvalid(v14);
      }
    }

    CIOnThreadCleanUpReset(v71);
    dropThreadId(v73, 1, add_explicit + 1);
    CICleanUpReset(v73, HIDWORD(v71));
LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  v70 = 0;
  if (fd_setDir(*(a1 + 64), &v70))
  {
    v68 = v12;
    v69 = add_explicit;
    v17 = v5;
    if (v5 >= 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = v5 - 1;
      v21 = 6 * v5 - 6;
      v22 = v17 - 1;
      v67 = a2;
      while (1)
      {
        if (*(a1 + 45) == 1)
        {
          v23 = *(*(a1 + 14432) + v20);
        }

        else
        {
          v23 = (*(*(a1 + 14432) + (((3435973837u * v20) >> 32) & 0xFFFFFFFC)) >> (v21 - 30 * (v22 / 5))) & 0x3F;
        }

        if ((v23 & 0xFFFFFFDF) == 0)
        {
          goto LABEL_44;
        }

        v65 = v21 - 30 * (v22 / 5);
        v24 = *(*(a1 + 14408) + 8 * v20);
        if (SIUINT64SetContainsValue(a2, v24))
        {
          v25 = *__error();
          v26 = _SILogForLogForCategory(10);
          v27 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v26, v27))
          {
            *buf = 134217984;
            v78 = v24;
            _os_log_impl(&dword_1C278D000, v26, v27, "dup oid (%lld)", buf, 0xCu);
          }

          *__error() = v25;
          if ((v66 & 1) == 0)
          {
            a2 = v67;
            if ((v18 & 1) == 0)
            {
              indexMarkDirty(a1);
            }

            if (*(a1 + 45) == 1)
            {
              *(*(a1 + 14432) + v20) = 0;
              v28 = *(a1 + 14440);
              v18 = 1;
              if (v28)
              {
                *(v28 + v20 / (32 * *MEMORY[0x1E69E9AC8])) |= 1 << ((v20 / (4 * *MEMORY[0x1E69E9AC8])) & 7);
              }

LABEL_43:
              ++v19;
              goto LABEL_44;
            }

            v29 = v20 / 5uLL;
            v30 = *(a1 + 14432);
            v31 = v29;
            v32 = *(v30 + 4 * v29) & ~(63 << v65);
            if (*(a1 + 14440))
            {
              v33 = MEMORY[0x1E69E9AC8];
              v34 = v29 / (8 * *MEMORY[0x1E69E9AC8]);
              v35 = (v29 / *MEMORY[0x1E69E9AC8]) & 7;
              *(*(a1 + 14440) + v34) |= 1 << v35;
              if (!*(*(a1 + 14440) + v34))
              {
                v47 = __si_assert_copy_extra_332();
                __message_assert_336(v47, v48, v49, v50, v51, v52, v53, v54, "ContentIndex.c");
                free(v47);
                if (__valid_fs(-1))
                {
                  v55 = 2989;
                }

                else
                {
                  v55 = 3072;
                }

                *v55 = -559038737;
                abort();
              }

              v36 = v35 | (8 * v34);
              if (*v33 * v36 > v29 || *v33 * (v36 + 1) <= v29)
              {
LABEL_57:
                v56 = __si_assert_copy_extra_332();
                __message_assert_336(v56, v57, v58, v59, v60, v61, v62, v63, "ContentIndex.c");
                free(v56);
                if (__valid_fs(-1))
                {
                  v64 = 2989;
                }

                else
                {
                  v64 = 3072;
                }

                *v64 = -559038737;
                abort();
              }

              v37 = *(a1 + 14432);
              v38 = *(a1 + 45);
              *(v37 + 4 * v31) = v32;
              if (v38)
              {
                v39 = *(v37 + v20);
LABEL_41:
                if (v39)
                {
                  goto LABEL_57;
                }

                v18 = 1;
                goto LABEL_43;
              }
            }

            else
            {
              *(v30 + 4 * v29) = v32;
            }

            v39 = (v32 >> v65) & 0x3F;
            goto LABEL_41;
          }

          ++v19;
          a2 = v67;
        }

        else
        {
          SIValueSet<unsigned long long>::SIValueSetInsert((a2 + 16), v24);
        }

LABEL_44:
        v40 = v19;
        v41 = v20 + 1;
        v21 -= 6;
        --v22;
        --v20;
        if (v41 <= 1)
        {
          goto LABEL_48;
        }
      }
    }

    v40 = 0;
LABEL_48:
    v43 = v40;
    v44 = v70;
    MEMORY[0x1C6921200](v70);
    if ((v44 & 0x80000000) == 0)
    {
      close(v44);
    }

    v42 = v43;
    v12 = v68;
    add_explicit = v69;
  }

  else
  {
    v42 = 0;
  }

  v45 = threadData[9 * v73 + 1] + 320 * v72;
  *(v45 + 312) = v12;
  v46 = *(v45 + 232);
  if (v46)
  {
    v46(*(v45 + 288));
  }

  dropThreadId(v73, 0, add_explicit + 1);
  result = v42;
LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void _CIFindTokens(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v53 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v83[5] = *MEMORY[0x1E69E9840];
  db_read_lock(v12 + 14720);
  v14 = *(v13 + 14392);
  v15 = v14;
  v16 = *(v13 + 14400);
  if (v14)
  {
    atomic_fetch_add(v14, 1u);
  }

  if (v16)
  {
    atomic_fetch_add(v16, 1u);
  }

  db_read_unlock(v13 + 14720);
  if (v15)
  {
    _CITermUpdateSetFindTokens(v15);
  }

  if (v16)
  {
    _CITermUpdateSetFindTokens(v16);
  }

  if (*(v13 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    if (v15)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v51 = v11;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v18 = setThreadIdAndInfo(*(v13 + 64), sIndexExceptionCallbacks, v13, 0x20000000, add_explicit + 1);
  v59 = v18;
  v19 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
  v57 = v20;
  v58 = HIDWORD(v18);
  v56 = v21;
  *(v19 + 216) = 0;
  v22 = *(v19 + 312);
  v23 = *(v19 + 224);
  if (v23)
  {
    v23(*(v19 + 288));
  }

  if (_setjmp(v19))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v19 + 312) = v22;
    if ((~*(v19 + 212) & 0xA0000000) == 0)
    {
      v24 = *(v19 + 288);
      if (v24)
      {
        _CIMakeInvalid(v24);
      }
    }

    CIOnThreadCleanUpReset(v56);
    dropThreadId(v59, 1, add_explicit + 1);
    CICleanUpReset(v59, v57);
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_23:
    TermUpdateSetRelease(v15);
    goto LABEL_24;
  }

  v26 = TokenDataCreate(*v9, *v7);
  if (v26)
  {
    v54 = add_explicit;
    v55 = v16;
    v73 = 0;
    v74 = &v73;
    v50 = v3;
    v75 = 0x2000000000;
    v76 = v78;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2000000000;
    v27 = 32;
    v72 = 32;
    v65 = 0;
    v66 = &v65;
    v67 = 0x2000000000;
    v28 = v26;
    v68 = 0;
    bzero(v82, 0x7E8uLL);
    bzero(v78, 0x800uLL);
    v29 = v28[4];
    v30 = v28[5];
    v31 = v29 >> 1;
    if (v29)
    {
      v32 = 2056;
    }

    else
    {
      v32 = 8;
    }

    v52 = v28;
    buf[0] = *(v28 + 1);
    buf[1] = buf[0];
    v82[8] = v30;
    v80 = v32 & 0xFBFFFFFF | ((v31 & 1) << 26);
    v81 = v51;
    v33 = buf;
    LODWORD(v34) = 1;
    do
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v49 = *__error();
        log = _SILogForLogForCategory(1);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v83[0]) = 67109120;
          HIDWORD(v83[0]) = v34;
          _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "### trie processing - %d ###", v83, 8u);
        }

        *__error() = v49;
      }

      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 0x40000000;
      v64[2] = ___bt_findTokens_block_invoke;
      v64[3] = &unk_1E8193490;
      v64[4] = &v65;
      v64[5] = &v69;
      v64[6] = &v73;
      v64[7] = v52;
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 0x40000000;
      v83[2] = ___bt_resolveTokens_block_invoke;
      v83[3] = &unk_1E81934B8;
      v83[4] = v64;
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 0x40000000;
      v77[2] = ___bt_resolveTokens_block_invoke_2;
      v77[3] = &unk_1E81934E0;
      v77[4] = v64;
      _bt_findBulk(v13, v13 + 96, 0, 0, 0, v34, v33, 0, 0, v53, v83, v77, v50);
      v35 = v74[3];
      v74[3] = v33;
      v36 = v70;
      v37 = v70[3];
      v70[3] = v27;
      v34 = v66[3];
      v66[3] = 0;
      v33 = v35;
      v27 = v37;
    }

    while (v34);
    if (v37 >= 0x21)
    {
      free(v35);
      v36 = v70;
    }

    if (v36[3] >= 0x21)
    {
      free(v74[3]);
    }

    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v73, 8);
    if (v52[6])
    {
      v38 = *v5;
      if (!*v5)
      {
        *v5 = v52;
        goto LABEL_49;
      }

      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 0x40000000;
      v61 = __bt_findTokens_block_invoke;
      v62 = &__block_descriptor_tmp_2918;
      v63 = v38;
      v40 = v52[10];
      v39 = v52[11];
      if (v39 < v40)
      {
        v41 = *(v52 + 4);
        v42 = v41 + v40;
        v43 = (v41 + v39);
        do
        {
          v44 = v43 + 1;
          v45 = v39 & 0xFFFFFFFF00000000 | *v43;
          (v61)(v60);
          v39 = v45;
          v43 = v44;
        }

        while (v44 < v42);
      }
    }

    free(*(v52 + 1));
    free(*(v52 + 4));
    free(v52);
LABEL_49:
    v16 = v55;
    add_explicit = v54;
  }

  v46 = threadData[9 * v59 + 1] + 320 * v58;
  *(v46 + 312) = v22;
  v47 = *(v46 + 232);
  if (v47)
  {
    v47(*(v46 + 288));
  }

  dropThreadId(v59, 0, add_explicit + 1);
  if (v15)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v16)
  {
    TermUpdateSetRelease(v16);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void _CIPreHeatIndex(uint64_t a1, int a2)
{
  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v5 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v5;
    v6 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    v27 = HIDWORD(v5);
    v26 = __PAIR64__(v7, v8);
    *(v6 + 216) = 0;
    v9 = *(v6 + 312);
    v10 = *(v6 + 224);
    if (v10)
    {
      v10(*(v6 + 288));
    }

    v25 = *buf;
    v24 = v27;
    v23 = v26;
    if (_setjmp(v6))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v22, 2u);
      }

      *(v6 + 312) = v9;
      if ((~*(v6 + 212) & 0xA0000000) == 0)
      {
        v11 = *(v6 + 288);
        if (v11)
        {
          _CIMakeInvalid(v11);
        }
      }

      CIOnThreadCleanUpReset(v23);
      dropThreadId(v25, 1, add_explicit + 1);
      CICleanUpReset(v25, HIDWORD(v23));
    }

    else
    {
      if (a2)
      {
        nice_read_advise(*(a1 + 4672), 1028 * *(a1 + 240));
        nice_read_advise(*(a1 + 208), *(a1 + 128));
        v12 = atomic_load((a1 + 36));
        if ((v12 & 4) != 0)
        {
          v13 = *(a1 + 472);
          v14 = *(a1 + 488) / 50;
        }

        else
        {
          v13 = *(a1 + 5200);
          v14 = 4 * *(a1 + 9400);
        }

        nice_read_advise(v13, v14);
      }

      else
      {
        nice_madvise(*(a1 + 112), *(a1 + 128));
        nice_madvise(*(a1 + 104), (1028 * *(a1 + 240)));
        v15 = atomic_load((a1 + 36));
        if ((v15 & 4) != 0)
        {
          v16 = *(a1 + 528);
          if (v16)
          {
            v17 = *(v16 + 8);
            if (v17)
            {
              nice_madvise(v17, *(a1 + 488) / 0x32uLL);
            }
          }
        }
      }

      v18 = *(a1 + 4928);
      if (v18)
      {
        nice_read_advise(*(v18 + 224), *(v18 + 240));
      }

      v19 = atomic_load((a1 + 36));
      if ((v19 & 4) != 0)
      {
        nice_read_advise(*(a1 + 9432), *(a1 + 4968) / 50);
      }

      v20 = threadData[9 * v25 + 1] + 320 * v24;
      *(v20 + 312) = v9;
      v21 = *(v20 + 232);
      if (v21)
      {
        v21(*(v20 + 288));
      }

      dropThreadId(v25, 0, add_explicit + 1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }
}

uint64_t nice_read_advise(_DWORD *a1, int64_t a2)
{
  v4 = nice_read_advise_limit;
  if (!nice_read_advise_limit)
  {
    v17 = 0u;
    v18 = 0u;
    *host_info_out = 0u;
    host_info_outCnt[0] = 12;
    v5 = MEMORY[0x1C6920B70]();
    v6 = host_info(v5, 1, host_info_out, host_info_outCnt);
    v7 = *(&v18 + 1);
    if (*(&v18 + 1) >= 0x80000000uLL)
    {
      v7 = 0x80000000;
    }

    v4 = (3435973837 * v7) >> 36;
    if (v6)
    {
      v4 = 53687091;
    }

    else
    {
      v4 = v4;
    }

    nice_read_advise_limit = v4;
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v4;
  }

  *host_info_outCnt = 0;
  result = _fd_acquire_fd(a1, host_info_outCnt);
  if ((result & 0x80000000) == 0)
  {
    v10 = result;
    memset(host_info_out, 0, sizeof(host_info_out));
    if (v8 >= 1)
    {
      v11 = 0x20000;
      v12 = v8;
      do
      {
        *host_info_out = v11 - 0x20000;
        if (v11 >= v8)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0x20000;
        }

        host_info_out[2] = v13;
        v14 = fcntl(v10, 44, host_info_out);
        if (v11 >= v8)
        {
          break;
        }

        v12 -= 0x20000;
        v11 += 0x20000;
      }

      while (!v14);
    }

    return _fd_release_fd(a1, v10, 0, *host_info_outCnt);
  }

  return result;
}

char *nice_madvise(char *result, unint64_t a2)
{
  v3 = result;
  v4 = nice_madvise_limit;
  if (!nice_madvise_limit)
  {
    v11 = 0u;
    v12 = 0u;
    *host_info_out = 0u;
    host_info_outCnt = 12;
    v5 = MEMORY[0x1C6920B70]();
    result = host_info(v5, 1, host_info_out, &host_info_outCnt);
    v6 = *(&v12 + 1);
    if (*(&v12 + 1) >= 0x80000000uLL)
    {
      v6 = 0x80000000;
    }

    v4 = (3435973837 * v6) >> 36;
    if (result)
    {
      v4 = 53687091;
    }

    else
    {
      v4 = v4;
    }

    nice_madvise_limit = v4;
  }

  if (v4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v4;
  }

  do
  {
    if (!v7)
    {
      break;
    }

    v8 = v7 >= 0x20000 ? 0x20000 : v7;
    result = madvise(v3, v8, 3);
    v3 += v8;
    v7 -= v8;
  }

  while (!result);
  return result;
}

uint64_t _CIGetDocIDInfo(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4, unint64_t a5, unint64_t a6, int a7)
{
  v7 = a2 - *(a1 + 80);
  v40 = 0;
  if (v7 >= *(a1 + 68))
  {
    return v40;
  }

  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    *buf = 0;
    v38 = 0;
    v37 = 0;
    v15 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    *buf = v15;
    v37 = v17;
    v38 = __PAIR64__(HIDWORD(v15), v16);
    v18 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
    *(v18 + 216) = 0;
    v19 = *(v18 + 312);
    v20 = *(v18 + 224);
    v21 = v18;
    if (v20)
    {
      v20(*(v18 + 288));
    }

    v36 = *buf;
    v35 = HIDWORD(v38);
    v34 = __PAIR64__(v38, v37);
    if (_setjmp(v21))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v33 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v33, 2u);
      }

      *(v21 + 312) = v19;
      if ((~*(v21 + 212) & 0xA0000000) == 0)
      {
        v22 = *(v21 + 288);
        if (v22)
        {
          _CIMakeInvalid(v22);
        }
      }

      CIOnThreadCleanUpReset(v34);
      dropThreadId(v36, 1, add_explicit + 1);
      CICleanUpReset(v36, HIDWORD(v34));
      return v40;
    }

    if (a7)
    {
      v32 = CICleanUpThreadLoc();
      db_read_lock(a1 + 14504);
      CIOnThreadCleanUpPush(v32, si_rwlock_rdunlock, a1 + 14504);
      v23 = v32;
    }

    else
    {
      v23 = 0;
    }

    if (a3)
    {
      if (*(a1 + 45) == 1)
      {
        v24 = *(*(a1 + 14432) + v7);
      }

      else
      {
        v24 = (*(*(a1 + 14432) + 4 * (v7 / 5uLL)) >> (6 * (v7 % 5))) & 0x3F;
      }

      *a3 = v24 & 0xFFFFFFDF;
    }

    if (a4)
    {
      v25 = *(a1 + 14416);
      if (v25)
      {
        v26 = *(v25 + 4 * v7);
      }

      else
      {
        v26 = 0;
      }

      *a4 = v26;
    }

    if (!(a5 | a6))
    {
      goto LABEL_38;
    }

    v27 = *(a1 + 14424);
    if (v27)
    {
      if (a5)
      {
        *a5 = *(v27 + 8 * v7);
      }

      if (!a6)
      {
        goto LABEL_38;
      }

      v28 = *(v27 + 8 * v7 + 4);
    }

    else
    {
      if (a5)
      {
        *a5 = 0;
      }

      if (!a6)
      {
        goto LABEL_38;
      }

      v28 = 0;
    }

    *a6 = v28;
LABEL_38:
    if (a7)
    {
      CIOnThreadCleanUpPop(v23);
    }

    v40 = 1;
    v29 = threadData[9 * v36 + 1] + 320 * v35;
    *(v29 + 312) = v19;
    v30 = *(v29 + 232);
    if (v30)
    {
      v30(*(v29 + 288));
    }

    dropThreadId(v36, 0, add_explicit + 1);
    return v40;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

  return v40;
}