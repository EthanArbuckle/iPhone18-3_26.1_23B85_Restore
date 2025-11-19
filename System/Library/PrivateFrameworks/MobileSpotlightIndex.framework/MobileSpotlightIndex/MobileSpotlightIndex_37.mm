__n128 __Block_byref_object_copy__2118(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void *___ZL24handleCrossFieldPatternsP23si_completion_pattern_sP26StringTokenizerPhrasesInfotjbbjxP16os_unfair_lock_s_block_invoke(void *result, uint64_t a2, uint64_t a3, int a4, double a5)
{
  if (a3 >= 2)
  {
    v5 = *(result[4] + 8);
    if (*(v5 + 24) < a5)
    {
      *(v5 + 24) = a5;
      *(*(result[5] + 8) + 40) = result[7] + a2;
      *(*(result[5] + 8) + 48) = a3;
      *(*(result[6] + 8) + 24) = a4;
    }
  }

  return result;
}

BOOL GetSentenceCallback(const unsigned __int16 *a1, CFRange *a2, unint64_t *a3, uint64_t a4, void *a5)
{
  if (a4 < 1)
  {
LABEL_24:
    if ((*(a5 + 66) & 1) == 0)
    {
      v35 = *(a5 + 22);
      if (*(a5 + 22))
      {
        v36 = *(a5 + 32);
        v37 = (a5[7] + 16 * v36);
        *v37 = a5[6];
        v37[1] = v35;
        *(a5 + 32) = v36 + 1;
        a5[6] = *(a5 + 21);
        *(a5 + 22) = 0;
      }
    }

    if (*(a5 + 21) < *(a5 + 20))
    {
      return *(a5 + 32) > 0x12Bu;
    }
  }

  else
  {
    v10 = 0;
    while (1)
    {
      v11 = &a2[v10];
      location = v11->location;
      length = v11->length;
      if ((a3[v10] & 0x10) != 0)
      {
        if (length >= 1)
        {
          v17 = 0;
          v14 = v11->location;
          do
          {
            v18 = 0;
            v19 = v17;
            while (a1[v19] != 45)
            {
              ++v18;
              if (length == ++v19)
              {
                v16 = 0;
                v15 = length - v17;
                goto LABEL_15;
              }
            }

            v20 = *(a5 + 21);
            v22 = a5[3];
            v21 = a5[4];
            v23 = *(a5 + 22);
            if (v18)
            {
              v24 = (v22 + 16 * v20);
              *v24 = v14;
              v24[1] = v18;
              *(v21 + 8 * v20) = 0;
              LOWORD(v20) = v20 + 1;
              ++v23;
            }

            v25 = v18 + v14;
            v26 = (v22 + 16 * v20);
            *v26 = v25;
            v26[1] = 1;
            *(v21 + 8 * v20) = 32;
            *(a5 + 21) = v20 + 1;
            *(a5 + 22) = v23 + 1;
            v14 = v25 + 1;
            v17 = v19 + 1;
          }

          while (v19 + 1 != length);
        }
      }

      else
      {
        v14 = v11->location;
        v15 = length;
        v16 = a3[v10];
LABEL_15:
        v27 = *(a5 + 21);
        v28 = a5[4];
        v29 = (a5[3] + 16 * v27);
        *v29 = v14;
        v29[1] = v15;
        *(v28 + 8 * v27) = v16;
        *(a5 + 21) = v27 + 1;
        ++*(a5 + 22);
      }

      if (*(a5 + 66) == 1)
      {
        LODWORD(v30) = *(a5 + 21);
      }

      else
      {
        IsValidPhraseToken = SILanguageModelIsValidPhraseToken();
        v32 = *(a5 + 22);
        v30 = *(a5 + 21);
        if (!IsValidPhraseToken || v32 >= 0x7D)
        {
          v33 = *(a5 + 32);
          v34 = (a5[7] + 16 * v33);
          *v34 = a5[6];
          v34[1] = v32;
          *(a5 + 32) = v33 + 1;
          a5[6] = v30;
          *(a5 + 22) = 0;
        }
      }

      if (v30 >= *(a5 + 20) || *(a5 + 32) >= 0x12Cu)
      {
        break;
      }

      if (++v10 == a4)
      {
        goto LABEL_24;
      }
    }
  }

  return 1;
}

BOOL GetTokenCallback(const unsigned __int16 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4[1];
  if (v5 <= a1 && &a1[a2] <= a4[2])
  {
    v6 = (a1 - v5) >> 1;
    if ((a3 & 0x10) != 0)
    {
      if (a2 >= 1)
      {
        for (i = 0; i != a2; i = v16 + 1)
        {
          v10 = 0;
          while (a1[i + v10] != 45)
          {
            ++v10;
            if (!(i - a2 + v10))
            {
              v8 = 0;
              v7 = a2 - i;
              goto LABEL_15;
            }
          }

          v11 = *(a4 + 21);
          v13 = a4[3];
          v12 = a4[4];
          v14 = *(a4 + 22);
          if (v10)
          {
            v15 = (v13 + 16 * v11);
            *v15 = v6;
            v15[1] = v10;
            *(v12 + 8 * v11) = 0;
            LOWORD(v11) = v11 + 1;
            ++v14;
          }

          v16 = i + v10;
          v17 = v6 + v10;
          v18 = (v13 + 16 * v11);
          *v18 = v17;
          v18[1] = 1;
          *(v12 + 8 * v11) = 32;
          *(a4 + 21) = v11 + 1;
          *(a4 + 22) = v14 + 1;
          v6 = v17 + 1;
        }
      }
    }

    else
    {
      v7 = a2;
      v8 = a3;
LABEL_15:
      v19 = *(a4 + 21);
      v20 = a4[4];
      v21 = (a4[3] + 16 * v19);
      *v21 = v6;
      v21[1] = v7;
      *(v20 + 8 * v19) = v8;
      *(a4 + 21) = v19 + 1;
      ++*(a4 + 22);
    }

    if ((*(a4 + 66) & 1) == 0)
    {
      IsValidPhraseToken = SILanguageModelIsValidPhraseToken();
      v23 = *(a4 + 22);
      if (IsValidPhraseToken)
      {
        if (v23 <= 0x7C)
        {
          return *(a4 + 21) >= *(a4 + 20) || *(a4 + 32) > 0x12Bu;
        }
      }

      else if (!*(a4 + 22))
      {
LABEL_22:
        a4[6] = *(a4 + 21);
        *(a4 + 22) = 0;
        return *(a4 + 21) >= *(a4 + 20) || *(a4 + 32) > 0x12Bu;
      }

      v24 = *(a4 + 32);
      v25 = (a4[7] + 16 * v24);
      *v25 = a4[6];
      v25[1] = v23;
      *(a4 + 32) = v24 + 1;
      goto LABEL_22;
    }
  }

  return *(a4 + 21) >= *(a4 + 20) || *(a4 + 32) > 0x12Bu;
}

uint64_t ___ZL21normalizeSourceStringP26StringTokenizerPhrasesInfoPhmmb_block_invoke()
{
  result = unorm2_getNFCInstance();
  normalizeSourceString(StringTokenizerPhrasesInfo *,unsigned char *,unsigned long,unsigned long,BOOL)::norm2 = result;
  return result;
}

uint64_t handlePatterns(__n128 *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, os_unfair_lock_s *a8)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a3 && (v9 = a1[7].n128_u64[0]) != 0 && (v10 = *(v9 + 16)) != 0)
  {
    v47 = v10;
    v55 = 0;
    v56 = 0;
    v13 = 0;
    v14 = 0;
    v50 = &a1[9];
    v15 = &a1[403].n128_u8[14];
    v16 = &a1[347].n128_i64[1] + a1[403].n128_u16[7];
    v54 = a3;
    v51 = a2 - a1->n128_u8[0];
    v61 = a2;
    v58 = v16;
    v59 = &a1[403].n128_u8[14];
    v52 = &a1[310];
    while (2)
    {
      v57 = v14;
      v17 = 0;
      while (2)
      {
        v18 = v13;
        while (1)
        {
          v19 = *&v15[2 * v18];
          if (*(a4 + 8 * v17) && !*(a5 + 8 * v17))
          {
            v20 = a1[8].n128_u64[0];
            os_unfair_lock_lock(&s_search_context_unfair_lock);
            if (!*(a5 + 8 * v17))
            {
              v21 = icu_search_context_create();
              __dmb(0xBu);
              *(a5 + 8 * v17) = v21;
            }

            os_unfair_lock_unlock(&s_search_context_unfair_lock);
            v16 = v58;
            v15 = v59;
          }

          v65 = 0;
          v66 = 0;
          if (icu_search_match())
          {
            break;
          }

          if (!a6 && !v17 && ++v18 < v61)
          {
            continue;
          }

          goto LABEL_50;
        }

        v22 = v66 + v19;
        v66 += v19;
        v23 = a2;
        while (1)
        {
          v24 = *&v15[2 * v18];
          if (v22 <= v24)
          {
            break;
          }

          if (++v18 >= v61)
          {
            LODWORD(v18) = a2;
            goto LABEL_22;
          }
        }

        v55 |= v22 < v24;
LABEL_22:
        if (v17)
        {
          v25 = v56;
        }

        else
        {
          v25 = v18;
        }

        if (v17 + 1 < v54)
        {
          v56 = v25;
          v13 = v18 + 1;
          ++v17;
          if (a2 > (v18 + 1))
          {
            continue;
          }

          goto LABEL_50;
        }

        break;
      }

      v26 = v16;
      v27 = v25;
      v28 = v25 - (v55 & 1);
      memset(v67, 0, sizeof(v67));
      if (v51 > v28)
      {
        v29 = 0;
        v30 = v28;
        v31 = v28;
        do
        {
          if (v28 == v30)
          {
            v32 = v31;
            v33 = *&v50[16 * v31];
          }

          else
          {
            if (v29 - 13 < 0xFFFFFFFFFFFFFFF1)
            {
              goto LABEL_44;
            }

            v32 = v31;
            v34 = &v50[16 * v31];
            v35 = *(v34 - 2);
            v36 = *(v34 - 1);
            v37 = &v67[v29];
            *v37 = &v52[2 * v35 + 2 * v36];
            v33 = *v34;
            *(v37 + 2) = v33 - (v36 + v35);
            ++v29;
            *(v37 + 12) = 1;
          }

          v38 = &v67[v29];
          *v38 = &v52[2 * v33];
          v39 = *&v50[16 * v32 + 8];
          *(v38 + 2) = v39;
          *(v38 + 12) = 0;
          if (v29)
          {
            v40 = v39 <= 20;
          }

          else
          {
            v40 = 1;
          }

          v41 = !v40;
          if (v39 > 40 || (v41 & 1) != 0)
          {
            goto LABEL_45;
          }

          ++v29;
          v30 = ++v31;
        }

        while (v51 > v31);
        if (!v29)
        {
          goto LABEL_45;
        }

LABEL_44:
        v64 = 0;
        v63 = 0;
        v42 = (*(a1[6].n128_u64[1] + 16))();
        os_unfair_lock_lock(a8);
        v43 = a1[4];
        v62[2] = a1[3];
        v62[3] = v43;
        v62[4] = a1[5];
        v44 = a1[2];
        v62[0] = a1[1];
        v62[1] = v44;
        v44.n128_f64[0] = v42;
        SIWordTrieInsert(v47, v67, v29, v62, a7, a1[6].n128_i32[0], v64, v63, v44, HIBYTE(v63), a6);
        v23 = a2;
        os_unfair_lock_unlock(a8);
        v57 = 1;
      }

LABEL_45:
      if (v17 + 2 < v54 || v23 <= (v27 + 1))
      {
LABEL_50:
        LOBYTE(v14) = v57;
        break;
      }

      v13 = v27 + 2;
      v40 = v23 > (v27 + 2);
      v56 = v27 + 1;
      v16 = v26;
      v14 = v57;
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

uint64_t tokenrangescallback(unsigned __int16 *a1, uint64_t a2, char a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a4[9];
  if (a3)
  {
    if (v7)
    {
      if (*(a4 + 33) < *(a4 + 32))
      {
        MEMORY[0x1EEE9AC00](a1);
        v9 = &v30.i8[-((v8 + 16) & 0xFFFFFFFFFFFFFFF0)];
        bzero(v9, (6 * a2) | 1);
        v10 = _utf16_to_utf8(a1, a2, v9, (6 * a2) | 1, *(a4 + 80));
        if (v10)
        {
          v11 = v10;
          v9[v10] = 0;
          v12 = *(*a4 + 88);
          v29 = *(*a4 + 96);
          v30 = *(*a4 + 88);
          printf("[%d,%d] %s\n", v30.i32[0], v29, v9);
          v13 = a4[6];
          if (v13)
          {
            if (v13 + v11 < a4[5])
            {
              v14 = *(a4[1] + 2 * v12);
              if (v14 >> 8 >= 0x11 && ((v14 & 0xFF00) == 0x1100 || (v14 - 11904) >> 7 < 0x197 || v14 - 65376 <= 0x4F))
              {
                v15.i64[0] = 0xFFFFFFFFLL;
                v15.i64[1] = 0xFFFFFFFFLL;
                v16 = vandq_s8(v30, v15);
                v17 = a4[4];
                v18 = *(a4 + 13);
                *(a4 + 13) = v18 + 1;
                *(v17 + 16 * v18) = v16;
                memcpy(v13, v9, v11);
                v19 = a4[6];
                v20 = v19 - *(a4 + 14);
                v21 = a4[9];
                v22 = *(a4 + 33);
                *(a4 + 33) = v22 + 1;
                *(v21 + 2 * v22) = v20;
                a4[6] = v19 + v11;
              }
            }
          }
        }
      }
    }
  }

  else if (!v7)
  {
    v25 = *(a4 + 13);
    v26 = *(a4 + 12);
    if (v25 >= v26)
    {
      goto LABEL_21;
    }

    v27 = a4[1];
    if (v27 <= a1 && &a1[a2] <= a4[2])
    {
      v28 = (a4[4] + 16 * v25);
      LODWORD(v25) = v25 + 1;
      *(a4 + 13) = v25;
      *v28 = (a1 - v27) >> 1;
      v28[1] = a2;
    }

    if (v25 >= v26)
    {
LABEL_21:
      result = 1;
      goto LABEL_15;
    }
  }

  result = 0;
LABEL_15:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

double pqinit_CompletionItem_s(uint64_t a1)
{
  *(a1 + 8) = xmmword_1C2BFA370;
  v2 = malloc_type_zone_malloc(queryZone, 0x1DC0uLL, 0xA4971684uLL);
  if (!v2)
  {
    _log_fault_for_malloc_failure();
  }

  *a1 = v2;
  result = 0.0;
  v2[12] = 0u;
  v2[13] = 0u;
  v2[10] = 0u;
  v2[11] = 0u;
  v2[8] = 0u;
  v2[9] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

void pqdispose_CompletionItem_s(void **a1)
{
  if (a1[2] >= 2)
  {
    v2 = 1;
    v3 = 368;
    do
    {
      CFRelease(*(*a1 + v3));
      ++v2;
      v3 += 224;
    }

    while (a1[2] > v2);
  }

  v4 = *a1;

  free(v4);
}

double GetCompletionItemWeight(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  v4 = *(a1 + 16);
  if (*(a1 + 32) + 1 == *(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a1 + 32) + 1 - *(a1 + 8);
  }

  v6 = *(a1 + 152);
  v7 = *(a1 + 156);
  v8 = *(a1 + 160);
  v9 = (v6 + v4) / v4 * *&ranking_factor_weights + 0.0;
  v10 = 0.0;
  if (v2)
  {
    v10 = log(v2) * 18.9648897;
  }

  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v4;
  v15 = v10 + v3;
  v16 = log(v3);
  if (v15 == 0.0)
  {
    v16 = 0.0;
  }

  v17 = v9 + v16 * *(&ranking_factor_weights + 1);
  v18 = *(a1 + 24);
  v19 = *&qword_1EDD783F0;
  if (*&qword_1EDD783F0 >= v18)
  {
    v22 = log(*(a1 + 24)) * (*&xmmword_1EDD783F8 * *&qword_1EDD783E8);
  }

  else
  {
    v20 = log(*&qword_1EDD783F0);
    v21 = *&qword_1EDD783E8;
    v22 = log(v18 - v19) * unk_1EDD78408 * *(&xmmword_1EDD783F8 + 1) + v20 * v21;
    v14 = v4;
  }

  v24 = v11 / v12;
  v25 = v11 / v13;
  v26 = v17 + v22;
  v27 = *&xmmword_1EDD78418;
  v28 = v11 / v14;
  if (*&xmmword_1EDD78418 >= v5)
  {
    v32 = log((v5 / 2 + 1)) * (*(&xmmword_1EDD78418 + 1) * *&qword_1EDD78410);
  }

  else
  {
    v29 = v25;
    v30 = log(*&xmmword_1EDD78418 * 0.5 + 1.0);
    v31 = *(&xmmword_1EDD78418 + 1) * *&qword_1EDD78410;
    v32 = log((v5 - v27) * 0.5 + 1.0) * unk_1EDD78430 * *&qword_1EDD78428 + v30 * v31;
    v25 = v29;
  }

  v33 = v26 + v32;
  v34 = 0.0;
  if (*(&xmmword_1EDD78438 + 1) >= v24)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = *&xmmword_1EDD78438;
  }

  v36 = v33 + v35;
  if (unk_1EDD78450 >= v25)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = *&qword_1EDD78448;
  }

  v38 = v36 + v37;
  if (*(&xmmword_1EDD78458 + 1) <= v28)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = *&xmmword_1EDD78458;
  }

  v40 = v38 + v39 + *(a1 + 208) * *&qword_1EDD78468;
  if (*(a1 + 217))
  {
    v41 = unk_1EDD78470;
  }

  else
  {
    v41 = 0.0;
  }

  v42 = v40 + v41;
  v43 = *&xmmword_1EDD78478;
  if (!*(a1 + 219))
  {
    v43 = 0.0;
  }

  v44 = v42 + v43;
  if (*(a1 + 218))
  {
    v45 = *(&xmmword_1EDD78478 + 1);
  }

  else
  {
    v45 = 0.0;
  }

  v46 = v44 + v45 + *(a1 + 48) * v6 * *&qword_1EDD78490;
  if (*(a1 + 220))
  {
    v34 = *(&xmmword_1EDD78498 + 1);
  }

  v47 = v46 + v34;
  v48 = 157680000.0;
  if (*(a1 + 40) > 0.0)
  {
    v48 = *(a1 + 40);
  }

  result = v47 - log(v48) * *&qword_1EDD78488;
  v49 = *(a1 + 212);
  switch(v49)
  {
    case 4:
      v50 = *&xmmword_1EDD784B8;
      break;
    case 3:
      v50 = qword_1EDD784B0;
      break;
    case 2:
      v50 = qword_1EDD784A8;
      break;
    default:
      return result;
  }

  return result - *&v50;
}

void SICompletionModelEnumerateCompletions(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v321 = *MEMORY[0x1E69E9840];
  if (!v1 || !v6)
  {
    goto LABEL_180;
  }

  v7 = v5;
  v8 = v2;
  v9 = v1;
  v250 = v4;
  v251 = v3;
  if (v5 >= 0xC8)
  {
    v10 = 200;
  }

  else
  {
    v10 = v5;
  }

  v11 = *(v1 + 4);
  v249 = v6;
  if (v11)
  {
    v263 = 0uLL;
    v264 = 0;
    pqinit_CompletionItem_s(&v263);
    v22 = *(v9 + 16);
    v23 = strdup(v8);
    v24 = v23;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v23;
    while (1)
    {
      v29 = v27;
      v31 = *v28++;
      v30 = v31;
      if (v31 == 92)
      {
        v27 = 1;
        if (v29)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!v30)
        {
          if (!((v25 == 0) | v26 & 1) && v23[v25 - 1] == 42)
          {
            v23[v25 - 1] = 0;
          }

          v23[v25] = 0;
          v56 = *__error();
          v57 = _SILogForLogForCategory(1);
          v58 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v57, v58))
          {
            LODWORD(v308[0]) = 134217984;
            *(v308 + 4) = v7;
            _os_log_impl(&dword_1C278D000, v57, v58, "Completion v1 count:%llu", v308, 0xCu);
          }

          *__error() = v56;
          if (dword_1EBF46AD0 >= 5)
          {
            v232 = *__error();
            v233 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v308[0]) = 136315394;
              *(v308 + 4) = v24;
              WORD6(v308[0]) = 2080;
              *(v308 + 14) = v8;
              _os_log_impl(&dword_1C278D000, v233, OS_LOG_TYPE_DEFAULT, "Creating unescaped string %s with from %s", v308, 0x16u);
            }

            *__error() = v232;
          }

          v59 = *MEMORY[0x1E695E480];
          v60 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v24, 0x8000100u);
          MutableCopy = CFStringCreateMutableCopy(v59, 0, v60);
          CFRelease(v60);
          CFStringLowercase(MutableCopy, 0);
          Length = CFStringGetLength(MutableCopy);
          CharactersPtr = CFStringGetCharactersPtr(MutableCopy);
          if (v22)
          {
            v64 = CharactersPtr;
            bzero(&v282, 0x1180uLL);
            v65 = -4480;
            do
            {
              v66 = &v282 + v65;
              *(v66 + 584) = 0;
              *(v66 + 291) = 0uLL;
              *(v66 + 290) = 0uLL;
              *(v66 + 289) = 0uLL;
              *(v66 + 288) = 0uLL;
              *(v66 + 287) = 0uLL;
              *(v66 + 286) = 0uLL;
              *(v66 + 285) = 0uLL;
              *(v66 + 284) = 0uLL;
              *(v66 + 283) = 0uLL;
              *(v66 + 282) = 0uLL;
              *(v66 + 281) = 0uLL;
              *(v66 + 280) = 0uLL;
              *(v66 + 585) = 0xFFEFFFFFFFFFFFFFLL;
              *(v66 + 293) = 0uLL;
              v65 += 224;
            }

            while (v65);
            v272 = 0u;
            v273 = 0u;
            v270 = 0u;
            v271 = 0u;
            v269 = 0u;
            v253 = 0u;
            v254 = 0u;
            v252 = 0x3FF0000000000000uLL;
            *(&v253 + 7) = 0;
            *&v254 = &v269;
            *&v255 = v251;
            *&v295 = MEMORY[0x1E69E9820];
            *(&v295 + 1) = 0x40000000;
            *&v296 = ___ZL24update_completions_queueP16_CompletionModelP13si_wordtrie_sPKcS4_myP23PQueue_CompletionItem_s_block_invoke;
            *(&v296 + 1) = &__block_descriptor_tmp_14_2137;
            *&v297 = Length;
            *(&v297 + 1) = v9;
            *&v298 = v251;
            *(&v298 + 1) = v250;
            *&v299 = v7;
            *(&v299 + 1) = &v282;
            *&v300 = v64;
            *(&v300 + 1) = &v263;
            *&v301 = v24;
            *(&v301 + 1) = MutableCopy;
            bzero(v308, 0x1400uLL);
            word_trie_s::iterateFragments(v22 + 16, v308, 0, 0, &v252, &v295, 0, 0);
          }

          CFRelease(MutableCopy);
          free(v24);
          LOBYTE(v257) = 0;
LABEL_50:
          v67 = v264;
          if (v264 == 1)
          {
            goto LABEL_74;
          }

          v68 = v263;
          v69 = *(v263 + 400);
          v317 = *(v263 + 384);
          v318 = v69;
          v70 = *(v263 + 432);
          v319 = *(v263 + 416);
          v320 = v70;
          v71 = *(v263 + 336);
          v313 = *(v263 + 320);
          v314 = v71;
          v72 = *(v263 + 368);
          v315 = *(v263 + 352);
          v316 = v72;
          v73 = *(v263 + 272);
          v309 = *(v263 + 256);
          v310 = v73;
          v74 = *(v263 + 304);
          v311 = *(v263 + 288);
          v312 = v74;
          v75 = *(v263 + 240);
          v308[0] = *(v263 + 224);
          v308[1] = v75;
          v76 = v263 + 224 * v264;
          v278 = *(v76 - 80);
          v279 = *(v76 - 64);
          v280 = *(v76 - 48);
          v281 = *(v76 - 32);
          v274 = *(v76 - 144);
          v275 = *(v76 - 128);
          v276 = *(v76 - 112);
          v277 = *(v76 - 96);
          v270 = *(v76 - 208);
          v271 = *(v76 - 192);
          v272 = *(v76 - 176);
          v273 = *(v76 - 160);
          v269 = *(v76 - 224);
          v77 = *(v76 - 24);
          v262 = *(v76 - 16);
          memmove((v263 + 224), (v76 - 224), 0xC8uLL);
          *(v68 + 424) = v77;
          *(v68 + 432) = v262;
          v264 = v67 - 1;
          v78 = *(&v263 + 1) >> 1;
          v292 = v279;
          v293 = v280;
          v294 = v281;
          v288 = v275;
          v289 = v276;
          v290 = v277;
          v291 = v278;
          v284 = v271;
          v285 = v272;
          v286 = v273;
          v287 = v274;
          v79 = 3;
          v80 = 2;
          v81 = 1;
          v282 = v269;
          v283 = v270;
          while (1)
          {
            v82 = v263 + 224 * v80;
            v83 = *(v82 + 200);
            v252 = *(v82 + 208);
            v84 = v263 + 224 * v79;
            v304 = *(v84 + 144);
            v305 = *(v84 + 160);
            v306 = *(v84 + 176);
            v307 = *(v84 + 192);
            v300 = *(v84 + 80);
            v301 = *(v84 + 96);
            v302 = *(v84 + 112);
            v303 = *(v84 + 128);
            v296 = *(v84 + 16);
            v297 = *(v84 + 32);
            v298 = *(v84 + 48);
            v299 = *(v84 + 64);
            v295 = *v84;
            v85 = *(v84 + 200);
            v260 = *(v84 + 208);
            if (v79 >= v67)
            {
              v305 = xmmword_1C2BF6CF0;
              v306 = unk_1C2BF6D00;
              v307 = 0;
              v301 = xmmword_1C2BF6CB0;
              v302 = unk_1C2BF6CC0;
              v304 = unk_1C2BF6CE0;
              v303 = xmmword_1C2BF6CD0;
              v297 = xmmword_1C2BF6C70;
              v298 = unk_1C2BF6C80;
              v300 = unk_1C2BF6CA0;
              v299 = xmmword_1C2BF6C90;
              v296 = unk_1C2BF6C60;
              v295 = max_CompletionItem_s;
              v260 = xmmword_1C2BF6D20;
              if (v80 >= v67)
              {
                goto LABEL_71;
              }

              v85 = 1.79769313e308;
            }

            if (v83 >= v77)
            {
              if (v85 >= v77)
              {
                _X8 = v263 + 448 * v81;
                __asm { PRFM            #1, [X8] }

LABEL_71:
                (*(v249 + 16))(v249, v308, &v257);
                if (v316)
                {
                  CFRelease(v316);
                }

                if (v257 == 1)
                {
LABEL_74:
                  pqdispose_CompletionItem_s(&v263);
                  goto LABEL_180;
                }

                goto LABEL_50;
              }

              v88 = &v260;
              v87 = &v295;
              v89 = v79;
            }

            else
            {
              _NF = v85 < v83;
              if (v85 >= v83)
              {
                v87 = (v263 + 224 * v80);
              }

              else
              {
                v87 = &v295;
              }

              if (v85 < v83)
              {
                v88 = &v260;
              }

              else
              {
                v85 = v83;
                v88 = &v252;
              }

              if (_NF)
              {
                v89 = v79;
              }

              else
              {
                v89 = v80;
              }
            }

            v278 = v87[9];
            v279 = v87[10];
            v280 = v87[11];
            v281 = *(v87 + 24);
            v274 = v87[5];
            v275 = v87[6];
            v276 = v87[7];
            v277 = v87[8];
            v270 = v87[1];
            v271 = v87[2];
            v272 = v87[3];
            v273 = v87[4];
            v269 = *v87;
            _X9 = v263 + 448 * v89;
            __asm { PRFM            #1, [X9] }

            if (v89 != v81)
            {
              v80 = 2 * v89;
              v79 = (2 * v89) | 1;
              v95 = v263 + 224 * v89;
              *(v95 + 144) = v291;
              *(v95 + 160) = v292;
              *(v95 + 176) = v293;
              *(v95 + 192) = v294;
              *(v95 + 80) = v287;
              *(v95 + 96) = v288;
              *(v95 + 112) = v289;
              *(v95 + 128) = v290;
              *(v95 + 16) = v283;
              *(v95 + 32) = v284;
              *(v95 + 48) = v285;
              *(v95 + 64) = v286;
              *v95 = v282;
              *(v95 + 200) = v77;
              *(v95 + 208) = v262;
              v96 = v263 + 224 * v81;
              *v96 = v269;
              *(v96 + 144) = v278;
              *(v96 + 160) = v279;
              *(v96 + 176) = v280;
              *(v96 + 192) = v281;
              *(v96 + 80) = v274;
              *(v96 + 96) = v275;
              *(v96 + 112) = v276;
              *(v96 + 128) = v277;
              *(v96 + 16) = v270;
              *(v96 + 32) = v271;
              *(v96 + 48) = v272;
              *(v96 + 64) = v273;
              *(v96 + 200) = v85;
              *(v96 + 208) = *v88;
              v279 = v292;
              v280 = v293;
              v281 = v294;
              v275 = v288;
              v276 = v289;
              v277 = v290;
              v278 = v291;
              v271 = v284;
              v272 = v285;
              v273 = v286;
              v274 = v287;
              v269 = v282;
              v270 = v283;
              v81 = v89;
              if (v89 < v78)
              {
                continue;
              }
            }

            goto LABEL_71;
          }
        }

LABEL_18:
        v27 = 0;
        v23[v25++] = v30;
        v26 = v29;
      }
    }
  }

  v260 = 0uLL;
  v261 = 0;
  pqinit_CompletionItem_s(&v260);
  v257 = 0;
  v258 = 0;
  v259 = 0;
  pqinit_CompletionItem_s(&v257);
  v12 = *(v9 + 24);
  v13 = strdup(v8);
  v14 = v13;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v13;
  while (1)
  {
    v19 = v17;
    v21 = *v18++;
    v20 = v21;
    if (v21 != 92)
    {
      break;
    }

    v17 = 1;
    if (v19)
    {
LABEL_12:
      v17 = 0;
      v13[v15++] = v20;
      v16 = v19;
    }
  }

  if (v20)
  {
    goto LABEL_12;
  }

  if (!((v15 == 0) | v16 & 1) && v13[v15 - 1] == 42)
  {
    v13[v15 - 1] = 0;
  }

  v13[v15] = 0;
  v32 = *__error();
  v33 = _SILogForLogForCategory(1);
  v34 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v9 + 4);
    LODWORD(v308[0]) = 67109376;
    DWORD1(v308[0]) = v35;
    WORD4(v308[0]) = 2048;
    *(v308 + 10) = v10;
    _os_log_impl(&dword_1C278D000, v33, v34, "Completion v2 options: 0x%x count:%llu", v308, 0x12u);
  }

  *__error() = v32;
  if (dword_1EBF46AD0 >= 5)
  {
    v230 = *__error();
    v231 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v308[0]) = 136315394;
      *(v308 + 4) = v14;
      WORD6(v308[0]) = 2080;
      *(v308 + 14) = v8;
      _os_log_impl(&dword_1C278D000, v231, OS_LOG_TYPE_DEFAULT, "Creating unescaped string %s with from %s", v308, 0x16u);
    }

    *__error() = v230;
  }

  v243 = v10;
  v36 = *MEMORY[0x1E695E480];
  v37 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v14, 0x8000100u);
  v244 = v36;
  v38 = CFStringCreateMutableCopy(v36, 0, v37);
  CFRelease(v37);
  CFStringLowercase(v38, 0);
  v39 = CFStringGetLength(v38);
  v40 = CFStringGetCharactersPtr(v38);
  if (v12)
  {
    v41 = v40;
    bzero(&v282, 0x1180uLL);
    v42 = -4480;
    do
    {
      v43 = &v282 + v42;
      *(v43 + 584) = 0;
      *(v43 + 291) = 0uLL;
      *(v43 + 290) = 0uLL;
      *(v43 + 289) = 0uLL;
      *(v43 + 288) = 0uLL;
      *(v43 + 287) = 0uLL;
      *(v43 + 286) = 0uLL;
      *(v43 + 285) = 0uLL;
      *(v43 + 284) = 0uLL;
      *(v43 + 283) = 0uLL;
      *(v43 + 282) = 0uLL;
      *(v43 + 281) = 0uLL;
      *(v43 + 280) = 0uLL;
      *(v43 + 585) = 0xFFEFFFFFFFFFFFFFLL;
      *(v43 + 293) = 0uLL;
      v42 += 224;
    }

    while (v42);
    v272 = 0u;
    v273 = 0u;
    v270 = 0u;
    v271 = 0u;
    v269 = 0u;
    v253 = 0u;
    v254 = 0u;
    v252 = 0x3FF0000000000000uLL;
    *(&v253 + 7) = 0;
    *&v254 = &v269;
    *&v255 = v251;
    *&v263 = 0;
    *(&v263 + 1) = &v263;
    v264 = 0x2000000000;
    v265 = 0;
    if (v251)
    {
      v44 = *v251;
      if (v44 == 106)
      {
        if (v251[1] == 97)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v44 == 122)
        {
          v44 = *(v251 + 1);
          v229 = 104;
        }

        else
        {
          v229 = 122;
        }

        if (v229 == v44)
        {
LABEL_31:
          v265 = 1;
        }
      }
    }

    *&v295 = MEMORY[0x1E69E9820];
    *(&v295 + 1) = 0x40000000;
    *&v296 = ___ZL27update_completions_queue_v2P16_CompletionModelP13si_wordtrie_sPKcS4_myP23PQueue_CompletionItem_s_block_invoke;
    *(&v296 + 1) = &unk_1E81931E0;
    *(&v297 + 1) = v9;
    *&v297 = &v263;
    *&v298 = v250;
    *(&v298 + 1) = v39;
    *&v299 = v243;
    *(&v299 + 1) = &v282;
    *&v300 = v41;
    *(&v300 + 1) = &v260;
    *&v301 = v14;
    bzero(v308, 0x1400uLL);
    word_trie_s::iterateFragments(v12 + 16, v308, 0, 0, &v252, &v295, 0, 0);
    _Block_object_dispose(&v263, 8);
  }

  CFRelease(v38);
  free(v14);
  v45 = *(v9 + 32);
  v46 = strdup(v8);
  v47 = v46;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = v46;
  v52 = v243;
  while (2)
  {
    while (2)
    {
      v53 = v50;
      v55 = *v51++;
      v54 = v55;
      if (v55 == 92)
      {
        v50 = 1;
        if ((v53 & 1) == 0)
        {
          continue;
        }

        goto LABEL_38;
      }

      break;
    }

    if (v54)
    {
LABEL_38:
      v50 = 0;
      v46[v48++] = v54;
      v49 = v53;
      continue;
    }

    break;
  }

  if (!((v48 == 0) | v49 & 1) && v46[v48 - 1] == 42)
  {
    v46[v48 - 1] = 0;
  }

  v46[v48] = 0;
  v99 = *__error();
  v100 = _SILogForLogForCategory(1);
  v101 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v100, v101))
  {
    v102 = *(v9 + 4);
    LODWORD(v308[0]) = 67109376;
    DWORD1(v308[0]) = v102;
    WORD4(v308[0]) = 2048;
    *(v308 + 10) = v52;
    _os_log_impl(&dword_1C278D000, v100, v101, "Completion v3 options: 0x%x count:%llu", v308, 0x12u);
  }

  *__error() = v99;
  if (dword_1EBF46AD0 >= 5)
  {
    v234 = *__error();
    v235 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v308[0]) = 136315394;
      *(v308 + 4) = v47;
      WORD6(v308[0]) = 2080;
      *(v308 + 14) = v8;
      _os_log_impl(&dword_1C278D000, v235, OS_LOG_TYPE_DEFAULT, "Creating unescaped string %s with from %s", v308, 0x16u);
    }

    *__error() = v234;
  }

  v103 = CFStringCreateWithCString(v244, v47, 0x8000100u);
  v104 = CFStringCreateMutableCopy(v244, 0, v103);
  CFRelease(v103);
  CFStringLowercase(v104, 0);
  v105 = CFStringGetLength(v104);
  v106 = CFStringGetCharactersPtr(v104);
  if (v45)
  {
    v107 = v106;
    bzero(&v282, 0x1180uLL);
    v108 = -4480;
    do
    {
      v109 = &v282 + v108;
      *(v109 + 584) = 0;
      *(v109 + 291) = 0uLL;
      *(v109 + 290) = 0uLL;
      *(v109 + 289) = 0uLL;
      *(v109 + 288) = 0uLL;
      *(v109 + 287) = 0uLL;
      *(v109 + 286) = 0uLL;
      *(v109 + 285) = 0uLL;
      *(v109 + 284) = 0uLL;
      *(v109 + 283) = 0uLL;
      *(v109 + 282) = 0uLL;
      *(v109 + 281) = 0uLL;
      *(v109 + 280) = 0uLL;
      *(v109 + 585) = 0xFFEFFFFFFFFFFFFFLL;
      *(v109 + 293) = 0uLL;
      v108 += 224;
    }

    while (v108);
    v272 = 0u;
    v273 = 0u;
    v270 = 0u;
    v271 = 0u;
    v269 = 0u;
    v253 = 0u;
    v254 = 0u;
    v252 = 0x3FF0000000000000uLL;
    *(&v253 + 7) = 0;
    *&v254 = &v269;
    *&v255 = v251;
    *&v295 = MEMORY[0x1E69E9820];
    *(&v295 + 1) = 0x40000000;
    *&v296 = ___ZL27update_completions_queue_v3P16_CompletionModelP13si_wordtrie_sPKcS4_myP23PQueue_CompletionItem_s_block_invoke;
    *(&v296 + 1) = &__block_descriptor_tmp_32_2143;
    *&v297 = v105;
    *(&v297 + 1) = v250;
    *&v298 = v52;
    *(&v298 + 1) = &v282;
    *&v299 = v107;
    *(&v299 + 1) = &v257;
    *&v300 = v47;
    bzero(v308, 0x1400uLL);
    word_trie_s::iterateFragments(v45 + 16, v308, 0, 0, &v252, &v295, 0, 0);
  }

  CFRelease(v104);
  free(v47);
  v238 = v236;
  MEMORY[0x1EEE9AC00](v110);
  v240 = &v236[-224 * v52];
  bzero(v240, 224 * v52);
  MEMORY[0x1EEE9AC00](v111);
  v112 = (8 * v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v250 = &v236[-v112];
  bzero(&v236[-v112], 8 * v52);
  MEMORY[0x1EEE9AC00](v113);
  v241 = &v236[-224 * v52];
  bzero(v241, 224 * v52);
  MEMORY[0x1EEE9AC00](v114);
  v242 = &v236[-v112];
  bzero(&v236[-v112], 8 * v52);
  v115 = MEMORY[0x1E695E9F8];
  v116 = v244;
  Mutable = CFSetCreateMutable(v244, 0, MEMORY[0x1E695E9F8]);
  v247 = CFSetCreateMutable(v116, 0, v115);
  v239 = vcvtd_n_f64_u32(v52, 1uLL);
  v117 = v261;
  v118 = v261 - 1;
  if (v261 == 1)
  {
    v245 = 0;
    goto LABEL_115;
  }

  v245 = 0;
  while (2)
  {
    v119 = v260;
    v120 = *(v260 + 336);
    v275 = *(v260 + 320);
    v276 = v120;
    v277 = *(v260 + 352);
    v121 = *(v260 + 272);
    v271 = *(v260 + 256);
    v272 = v121;
    v122 = *(v260 + 304);
    v273 = *(v260 + 288);
    v274 = v122;
    v123 = *(v260 + 240);
    v269 = *(v260 + 224);
    v270 = v123;
    v124 = *(v260 + 368);
    v125 = *(v260 + 424);
    v254 = *(v260 + 408);
    v255 = v125;
    v256 = *(v260 + 440);
    v126 = *(v260 + 392);
    v252 = *(v260 + 376);
    v253 = v126;
    v127 = v260 + 224 * v117;
    v304 = *(v127 - 80);
    v305 = *(v127 - 64);
    v306 = *(v127 - 48);
    v307 = *(v127 - 32);
    v300 = *(v127 - 144);
    v301 = *(v127 - 128);
    v302 = *(v127 - 112);
    v303 = *(v127 - 96);
    v296 = *(v127 - 208);
    v297 = *(v127 - 192);
    v298 = *(v127 - 176);
    v299 = *(v127 - 160);
    v295 = *(v127 - 224);
    v128 = *(v127 - 24);
    v266 = *(v127 - 16);
    memmove((v260 + 224), (v127 - 224), 0xC8uLL);
    *(v119 + 424) = v128;
    *(v119 + 432) = v266;
    v261 = v118;
    v129 = *(&v260 + 1) >> 1;
    v317 = v305;
    v318 = v306;
    *&v319 = v307;
    v313 = v301;
    v314 = v302;
    v316 = v304;
    v315 = v303;
    v309 = v297;
    v310 = v298;
    v312 = v300;
    v311 = v299;
    v130 = 3;
    v131 = 2;
    v132 = 1;
    v308[1] = v296;
    v308[0] = v295;
    while (2)
    {
      v133 = v260 + 224 * v131;
      v134 = *(v133 + 200);
      v263 = *(v133 + 208);
      v135 = v260 + 224 * v130;
      v291 = *(v135 + 144);
      v292 = *(v135 + 160);
      v293 = *(v135 + 176);
      v294 = *(v135 + 192);
      v287 = *(v135 + 80);
      v288 = *(v135 + 96);
      v289 = *(v135 + 112);
      v290 = *(v135 + 128);
      v283 = *(v135 + 16);
      v284 = *(v135 + 32);
      v285 = *(v135 + 48);
      v286 = *(v135 + 64);
      v282 = *v135;
      v136 = *(v135 + 200);
      v268 = *(v135 + 208);
      if (v130 >= v117)
      {
        v292 = xmmword_1C2BF6CF0;
        v293 = unk_1C2BF6D00;
        v294 = 0;
        v288 = xmmword_1C2BF6CB0;
        v289 = unk_1C2BF6CC0;
        v290 = xmmword_1C2BF6CD0;
        v291 = unk_1C2BF6CE0;
        v284 = xmmword_1C2BF6C70;
        v285 = unk_1C2BF6C80;
        v286 = xmmword_1C2BF6C90;
        v287 = unk_1C2BF6CA0;
        v282 = max_CompletionItem_s;
        v283 = unk_1C2BF6C60;
        v268 = xmmword_1C2BF6D20;
        if (v131 >= v117)
        {
          goto LABEL_107;
        }

        v136 = 1.79769313e308;
      }

      if (v134 < v128)
      {
        v137 = v136 < v134;
        if (v136 >= v134)
        {
          v138 = (v260 + 224 * v131);
        }

        else
        {
          v138 = &v282;
        }

        if (v136 < v134)
        {
          v139 = &v268;
        }

        else
        {
          v136 = v134;
          v139 = &v263;
        }

        if (v137)
        {
          v140 = v130;
        }

        else
        {
          v140 = v131;
        }

LABEL_99:
        v304 = v138[9];
        v305 = v138[10];
        v306 = v138[11];
        v307 = *(v138 + 24);
        v300 = v138[5];
        v301 = v138[6];
        v302 = v138[7];
        v303 = v138[8];
        v296 = v138[1];
        v297 = v138[2];
        v298 = v138[3];
        v299 = v138[4];
        v295 = *v138;
        _X9 = v260 + 448 * v140;
        __asm { PRFM            #1, [X9] }

        if (v140 == v132)
        {
          goto LABEL_107;
        }

        v131 = 2 * v140;
        v130 = (2 * v140) | 1;
        v143 = v260 + 224 * v140;
        *(v143 + 144) = v316;
        *(v143 + 160) = v317;
        *(v143 + 176) = v318;
        *(v143 + 192) = v319;
        *(v143 + 80) = v312;
        *(v143 + 96) = v313;
        *(v143 + 112) = v314;
        *(v143 + 128) = v315;
        *(v143 + 16) = v308[1];
        *(v143 + 32) = v309;
        *(v143 + 48) = v310;
        *(v143 + 64) = v311;
        *v143 = v308[0];
        *(v143 + 200) = v128;
        *(v143 + 208) = v266;
        v144 = v260 + 224 * v132;
        *v144 = v295;
        *(v144 + 144) = v304;
        *(v144 + 160) = v305;
        *(v144 + 176) = v306;
        *(v144 + 192) = v307;
        *(v144 + 80) = v300;
        *(v144 + 96) = v301;
        *(v144 + 112) = v302;
        *(v144 + 128) = v303;
        *(v144 + 16) = v296;
        *(v144 + 32) = v297;
        *(v144 + 48) = v298;
        *(v144 + 64) = v299;
        *(v144 + 200) = v136;
        *(v144 + 208) = *v139;
        v305 = v317;
        v306 = v318;
        v307 = v319;
        v301 = v313;
        v302 = v314;
        v304 = v316;
        v303 = v315;
        v297 = v309;
        v298 = v310;
        v300 = v312;
        v299 = v311;
        v296 = v308[1];
        v295 = v308[0];
        v132 = v140;
        if (v140 >= v129)
        {
          goto LABEL_107;
        }

        continue;
      }

      break;
    }

    if (v136 < v128)
    {
      v139 = &v268;
      v138 = &v282;
      v140 = v130;
      goto LABEL_99;
    }

    _X8 = v260 + 448 * v132;
    __asm { PRFM            #1, [X8] }

LABEL_107:
    if (v124)
    {
      v147 = Mutable;
      if (!contains_similar_string(v124, Mutable, v251) && !CFSetContainsValue(v147, v124))
      {
        v148 = v276;
        v149 = v245;
        v150 = &v240[224 * v245];
        *(v150 + 6) = v275;
        *(v150 + 7) = v148;
        *(v150 + 8) = v277;
        v151 = v272;
        *(v150 + 2) = v271;
        *(v150 + 3) = v151;
        v152 = v274;
        *(v150 + 4) = v273;
        *(v150 + 5) = v152;
        v153 = v270;
        *v150 = v269;
        *(v150 + 1) = v153;
        v154 = v252;
        *(v150 + 168) = v253;
        v155 = v255;
        *(v150 + 184) = v254;
        *(v150 + 200) = v155;
        *(v150 + 18) = v124;
        *(v150 + 27) = v256;
        *(v150 + 152) = v154;
        v156 = CFRetain(v124);
        *&v250[8 * v149] = v156;
        CFSetAddValue(v147, v124);
        v245 = v149 + 1;
      }

      CFRelease(v124);
    }

    v117 = v261;
    v118 = v261 - 1;
    if (v261 != 1)
    {
      continue;
    }

    break;
  }

LABEL_115:
  v237 = v243 - v239;
  v157 = v259;
  v158 = v259 - 1;
  if (v259 == 1)
  {
    v246 = 0;
    goto LABEL_145;
  }

  v246 = 0;
  while (2)
  {
    v159 = v257;
    v160 = v257[21];
    v275 = v257[20];
    v276 = v160;
    v277 = v257[22];
    v161 = v257[17];
    v271 = v257[16];
    v272 = v161;
    v162 = v257[19];
    v273 = v257[18];
    v274 = v162;
    v163 = v257[15];
    v269 = v257[14];
    v270 = v163;
    v164 = *(v257 + 46);
    v165 = *(v257 + 424);
    v254 = *(v257 + 408);
    v255 = v165;
    v256 = *(v257 + 55);
    v166 = *(v257 + 392);
    v252 = *(v257 + 376);
    v253 = v166;
    v167 = &v257[14 * v157];
    v304 = *(v167 - 5);
    v305 = *(v167 - 4);
    v306 = *(v167 - 3);
    v307 = *(v167 - 4);
    v300 = *(v167 - 9);
    v301 = *(v167 - 8);
    v302 = *(v167 - 7);
    v303 = *(v167 - 6);
    v296 = *(v167 - 13);
    v297 = *(v167 - 12);
    v298 = *(v167 - 11);
    v299 = *(v167 - 10);
    v295 = *(v167 - 14);
    v168 = *(v167 - 3);
    v267 = *(v167 - 1);
    memmove(v257 + 14, v167 - 224, 0xC8uLL);
    v159[53] = v168;
    *(v159 + 27) = v267;
    v259 = v158;
    v169 = v258 >> 1;
    v317 = v305;
    v318 = v306;
    *&v319 = v307;
    v313 = v301;
    v314 = v302;
    v316 = v304;
    v315 = v303;
    v309 = v297;
    v310 = v298;
    v312 = v300;
    v311 = v299;
    v170 = 3;
    v171 = 2;
    v172 = 1;
    v308[1] = v296;
    v308[0] = v295;
    while (2)
    {
      v173 = &v257[14 * v171];
      v174 = v173[25];
      v263 = *(v173 + 13);
      v175 = &v257[14 * v170];
      v291 = *(v175 + 9);
      v292 = *(v175 + 10);
      v293 = *(v175 + 11);
      v294 = *(v175 + 24);
      v287 = *(v175 + 5);
      v288 = *(v175 + 6);
      v289 = *(v175 + 7);
      v290 = *(v175 + 8);
      v283 = *(v175 + 1);
      v284 = *(v175 + 2);
      v285 = *(v175 + 3);
      v286 = *(v175 + 4);
      v282 = *v175;
      v176 = *(v175 + 25);
      v268 = *(v175 + 13);
      if (v170 >= v157)
      {
        v292 = xmmword_1C2BF6CF0;
        v293 = unk_1C2BF6D00;
        v294 = 0;
        v288 = xmmword_1C2BF6CB0;
        v289 = unk_1C2BF6CC0;
        v290 = xmmword_1C2BF6CD0;
        v291 = unk_1C2BF6CE0;
        v284 = xmmword_1C2BF6C70;
        v285 = unk_1C2BF6C80;
        v286 = xmmword_1C2BF6C90;
        v287 = unk_1C2BF6CA0;
        v282 = max_CompletionItem_s;
        v283 = unk_1C2BF6C60;
        v268 = xmmword_1C2BF6D20;
        if (v171 >= v157)
        {
          goto LABEL_137;
        }

        v176 = 1.79769313e308;
      }

      if (v174 < v168)
      {
        v177 = v176 < v174;
        if (v176 >= v174)
        {
          v178 = &v257[14 * v171];
        }

        else
        {
          v178 = &v282;
        }

        if (v176 < v174)
        {
          v179 = &v268;
        }

        else
        {
          v176 = v174;
          v179 = &v263;
        }

        if (v177)
        {
          v180 = v170;
        }

        else
        {
          v180 = v171;
        }

LABEL_129:
        v304 = v178[9];
        v305 = v178[10];
        v306 = v178[11];
        v307 = *(v178 + 24);
        v300 = v178[5];
        v301 = v178[6];
        v302 = v178[7];
        v303 = v178[8];
        v296 = v178[1];
        v297 = v178[2];
        v298 = v178[3];
        v299 = v178[4];
        v295 = *v178;
        _X9 = &v257[28 * v180];
        __asm { PRFM            #1, [X9] }

        if (v180 == v172)
        {
          goto LABEL_137;
        }

        v171 = 2 * v180;
        v170 = (2 * v180) | 1;
        v183 = &v257[14 * v180];
        *(v183 + 9) = v316;
        *(v183 + 10) = v317;
        *(v183 + 11) = v318;
        *(v183 + 24) = v319;
        *(v183 + 5) = v312;
        *(v183 + 6) = v313;
        *(v183 + 7) = v314;
        *(v183 + 8) = v315;
        *(v183 + 1) = v308[1];
        *(v183 + 2) = v309;
        *(v183 + 3) = v310;
        *(v183 + 4) = v311;
        *v183 = v308[0];
        *(v183 + 25) = v168;
        *(v183 + 13) = v267;
        v184 = &v257[14 * v172];
        *v184 = v295;
        *(v184 + 9) = v304;
        *(v184 + 10) = v305;
        *(v184 + 11) = v306;
        *(v184 + 24) = v307;
        *(v184 + 5) = v300;
        *(v184 + 6) = v301;
        *(v184 + 7) = v302;
        *(v184 + 8) = v303;
        *(v184 + 1) = v296;
        *(v184 + 2) = v297;
        *(v184 + 3) = v298;
        *(v184 + 4) = v299;
        *(v184 + 25) = v176;
        *(v184 + 13) = *v179;
        v305 = v317;
        v306 = v318;
        v307 = v319;
        v301 = v313;
        v302 = v314;
        v304 = v316;
        v303 = v315;
        v297 = v309;
        v298 = v310;
        v300 = v312;
        v299 = v311;
        v296 = v308[1];
        v295 = v308[0];
        v172 = v180;
        if (v180 >= v169)
        {
          goto LABEL_137;
        }

        continue;
      }

      break;
    }

    if (v176 < v168)
    {
      v179 = &v268;
      v178 = &v282;
      v180 = v170;
      goto LABEL_129;
    }

    _X8 = &v257[28 * v172];
    __asm { PRFM            #1, [X8] }

LABEL_137:
    if (v164)
    {
      v187 = v247;
      if (!contains_similar_string(v164, v247, v251) && !CFSetContainsValue(v187, v164))
      {
        v188 = v276;
        v189 = v246;
        v190 = &v241[224 * v246];
        *(v190 + 6) = v275;
        *(v190 + 7) = v188;
        *(v190 + 8) = v277;
        v191 = v272;
        *(v190 + 2) = v271;
        *(v190 + 3) = v191;
        v192 = v274;
        *(v190 + 4) = v273;
        *(v190 + 5) = v192;
        v193 = v270;
        *v190 = v269;
        *(v190 + 1) = v193;
        v194 = v252;
        *(v190 + 168) = v253;
        v195 = v255;
        *(v190 + 184) = v254;
        *(v190 + 200) = v195;
        *(v190 + 18) = v164;
        *(v190 + 27) = v256;
        *(v190 + 152) = v194;
        Copy = CFStringCreateCopy(v244, v164);
        *&v242[8 * v189] = Copy;
        CFSetAddValue(v187, v164);
        v246 = v189 + 1;
      }

      CFRelease(v164);
    }

    v157 = v259;
    v158 = v259 - 1;
    if (v259 != 1)
    {
      continue;
    }

    break;
  }

LABEL_145:
  if (v245 >= v239)
  {
    v197 = v239;
  }

  else
  {
    v197 = v245;
  }

  if (v246 >= v237)
  {
    v198 = v237;
  }

  else
  {
    v198 = v246;
  }

  if (v198 + v197 >= v243)
  {
    v201 = Mutable;
    v200 = v249;
    v202 = v242;
  }

  else
  {
    v199 = v246 - v237;
    if (v246 < v237)
    {
      v199 = 0;
    }

    v201 = Mutable;
    v200 = v249;
    v202 = v242;
    if (v245 <= v239 || v246 > v237)
    {
      if (v246 > v237 && v245 <= v239)
      {
        v228 = v198 + v199;
        if (v228 >= v243)
        {
          v198 = v243;
        }

        else
        {
          v198 = v228;
        }
      }
    }

    else
    {
      v203 = v245 - v239;
      if (v245 < v239)
      {
        v203 = 0;
      }

      v197 += v203;
      if (v197 >= v243)
      {
        v197 = v243;
      }
    }
  }

  LOBYTE(v282) = 0;
  v204 = v245 - 1;
  if ((v245 - 1) >= 0)
  {
    v205 = v197;
    v206 = &v240[224 * v204];
    do
    {
      v207 = *(v206 + 11);
      v317 = *(v206 + 10);
      v318 = v207;
      v208 = *(v206 + 13);
      v319 = *(v206 + 12);
      v320 = v208;
      v209 = *(v206 + 7);
      v313 = *(v206 + 6);
      v314 = v209;
      v210 = *(v206 + 9);
      v315 = *(v206 + 8);
      v316 = v210;
      v211 = *(v206 + 3);
      v309 = *(v206 + 2);
      v310 = v211;
      v212 = *(v206 + 5);
      v311 = *(v206 + 4);
      v312 = v212;
      v213 = *(v206 + 1);
      v308[0] = *v206;
      v308[1] = v213;
      v214 = *&v250[8 * v204];
      *&v316 = v214;
      if ((v282 & 1) == 0 && v205 != v204)
      {
        (*(v200 + 16))(v200, v308, &v282);
      }

      if (v214)
      {
        CFRelease(v214);
      }

      v206 -= 224;
      v215 = v204-- <= 0;
    }

    while (!v215);
  }

  v216 = v246 - 1;
  v217 = v247;
  if ((v246 - 1) >= 0)
  {
    v218 = &v241[224 * v216];
    do
    {
      v219 = *(v218 + 11);
      v317 = *(v218 + 10);
      v318 = v219;
      v220 = *(v218 + 13);
      v319 = *(v218 + 12);
      v320 = v220;
      v221 = *(v218 + 7);
      v313 = *(v218 + 6);
      v314 = v221;
      v222 = *(v218 + 9);
      v315 = *(v218 + 8);
      v316 = v222;
      v223 = *(v218 + 3);
      v309 = *(v218 + 2);
      v310 = v223;
      v224 = *(v218 + 5);
      v311 = *(v218 + 4);
      v312 = v224;
      v225 = *(v218 + 1);
      v308[0] = *v218;
      v308[1] = v225;
      v226 = *&v202[8 * v216];
      *&v316 = v226;
      if ((v282 & 1) == 0 && v198 != v216)
      {
        (*(v200 + 16))(v200, v308, &v282);
      }

      if (v226)
      {
        CFRelease(v226);
      }

      v218 -= 224;
      v215 = v216-- <= 0;
    }

    while (!v215);
  }

  CFRelease(v201);
  CFRelease(v217);
  pqdispose_CompletionItem_s(&v260);
  pqdispose_CompletionItem_s(&v257);
LABEL_180:
  v227 = *MEMORY[0x1E69E9840];
}

void ___ZL24update_completions_queueP16_CompletionModelP13si_wordtrie_sPKcS4_myP23PQueue_CompletionItem_s_block_invoke(void *a1, uint64_t *a2, unint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6, int a7, int a8, double a9, double a10, double a11, int a12, int a13, int a14, __int16 a15, char a16, unsigned int a17, unsigned __int8 a18, uint64_t a19, uint64_t a20)
{
  v205 = *MEMORY[0x1E69E9840];
  v27 = 0;
  if (a3)
  {
    v28 = a2 + 1;
    v29 = a3;
    do
    {
      v30 = *v28;
      v28 += 2;
      v27 += v30;
      --v29;
    }

    while (v29);
  }

  if (a17 && v27 <= a1[4])
  {
    goto LABEL_11;
  }

  v31 = a18;
  if (a17 == 2)
  {
    if (v27 < a18)
    {
      goto LABEL_11;
    }

    v31 = 0;
  }

  v32 = *(a20 + 16);
  v34 = _hasPunctuation(a2, a3, a20, 1);
  v35 = v34;
  if (a3 <= 1 && v34 != 0.0)
  {
    goto LABEL_11;
  }

  v37 = a1[5];
  if (v37)
  {
    LODWORD(v37) = (*(v37 + 4) >> 1) & 1;
  }

  if ((a6 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    LOBYTE(v37) = 0;
  }

  if ((v37 & 1) != 0 || v34 == 0.0)
  {
    goto LABEL_11;
  }

  v184 = a1;
  v38 = a12;
  v177 = a11;
  if (v32 == a3)
  {
    v39 = *(a20 + 8);
    v40 = a1;
  }

  else
  {
    v40 = a1;
    v41 = a1[6];
    SIModelManager::getInstance(v33);
    SIModelManager::getPhraseScore(a2, v41, a3, (a20 + 40));
    v38 = a12;
    *(a20 + 8) = v39;
  }

  v42 = v40[7];
  v43 = v40[8];
  v44 = a3 + 1 - v42;
  if (a3 + 1 == v42)
  {
    v44 = 1;
  }

  v182 = v44;
  v45 = *&qword_1EBF46C60;
  v46 = *a5;
  v47 = *(a5 + 1);
  *&v198 = 0;
  v199 = 0u;
  *&v196 = 0;
  *&v189 = 0;
  *(&v189 + 1) = v27;
  *&v190 = a3;
  v183 = a9;
  *(&v190 + 1) = a9;
  v194 = a5[3];
  v195 = a5[4];
  v192 = a5[1];
  v193 = a5[2];
  v191 = *a5;
  *(&v196 + 1) = __PAIR64__(a8, a7);
  *v197 = v38;
  memset(&v197[4], 0, 20);
  v181 = v39;
  *&v197[24] = v39;
  v48 = 0.0;
  v49 = *&s_completion_weights;
  if (v47)
  {
    v50 = v31;
    v51 = v38;
    v52 = log(v47);
    v38 = v51;
    v31 = v50;
    v48 = v52 * 18.9648897;
  }

  v53 = a7;
  v54 = v38;
  v179 = a13 + 1.0;
  v55 = v45;
  v176 = v46;
  v56 = v48 + v46;
  v57 = log(v46);
  v173 = v57;
  v174 = v46;
  if (v56 == 0.0)
  {
    v57 = 0.0;
  }

  v58 = *&qword_1EBF46C28;
  v59 = *&qword_1EBF46C20 * v57 + (a7 + v43) / v43 * v49;
  v60 = *&qword_1EBF46C90;
  if (v27 <= *&qword_1EBF46C90)
  {
    v63 = log(v27) * (v58 + v58);
  }

  else
  {
    v61 = v60;
    v62 = log(v60);
    v63 = log(v27 - v61) * *&qword_1EBF46C68 + v62 * v58;
  }

  v64 = v53 / a8;
  v65 = v53 / v54;
  v66 = v53 / v43;
  v67 = v55;
  v68 = v59 + v63;
  v69 = *&qword_1EBF46C30 * 1.5;
  v70 = 1.0 / v179;
  v71 = v182 - *&qword_1EBF46C98;
  if (v182 <= *&qword_1EBF46C98)
  {
    v75 = log((v182 / 2 + 1)) * v69;
  }

  else
  {
    v72 = v66;
    v73 = v65;
    v74 = log(vcvtd_n_f64_s64(*&qword_1EBF46C98, 1uLL) + 1.0);
    v75 = log(vcvtd_n_f64_s64(v71, 1uLL) + 1.0) * *&qword_1EBF46C80 + v74 * v69;
    v65 = v73;
    v66 = v72;
    v70 = 1.0 / v179;
  }

  v76 = v184;
  v77 = v68 + v75;
  v178 = v64;
  v180 = v65;
  v78 = *&qword_1EBF46C38;
  if (v64 <= 0.25)
  {
    v78 = 0.0;
  }

  v79 = v77 + v78;
  if (v65 <= 0.25)
  {
    v80 = 0.0;
  }

  else
  {
    v80 = dbl_1EBF46C40;
  }

  v81 = v79 + v80;
  v82 = v66;
  v83 = *&qword_1EBF46C48;
  if (v82 >= 0.1)
  {
    v83 = 0.0;
  }

  v84 = v70;
  v85 = v81 + v83 + v181 * unk_1EBF46C50 + v70 * *&qword_1EBF46C58;
  if (a15)
  {
    v86 = v67;
  }

  else
  {
    v86 = 0.0;
  }

  v87 = v86 + v85;
  v88 = *&qword_1EBF46C70;
  if (!a16)
  {
    v88 = 0.0;
  }

  v89 = v88 + v87;
  if (HIBYTE(a15))
  {
    v90 = dbl_1EBF46C78;
  }

  else
  {
    v90 = 0.0;
  }

  v91 = v90 + v89 + 0.0;
  v92 = *&qword_1EBF46C88;
  v93 = 157680000.0;
  if (v183 > 0.0)
  {
    v93 = v183;
  }

  v94 = log(v93);
  *&v199 = __PAIR64__(a17, LODWORD(v70));
  BYTE8(v199) = v31;
  *(&v199 + 9) = a15;
  BYTE11(v199) = a16;
  v95 = v91 - v92 * v94 + -1.0 / v35;
  *(&v198 + 1) = v95;
  switch(a17)
  {
    case 2u:
      v96 = -1000000.0;
      break;
    case 3u:
      v96 = -100000000.0;
      break;
    case 4u:
      v96 = -1.0e10;
      break;
    default:
      v97 = HIBYTE(a15);
      goto LABEL_57;
  }

  v97 = HIBYTE(a15);
  v95 = v95 + v96;
  *(&v198 + 1) = v95;
LABEL_57:
  v98 = *__error();
  v99 = _SILogForLogForCategory(1);
  v100 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v99, v100))
  {
    v171 = v82;
    v101 = v184[8];
    v102 = *&s_completion_weights;
    if (v47)
    {
      v103 = log(v47) * 18.9648897;
    }

    else
    {
      v103 = 0.0;
    }

    v104 = (a7 + v101) / v101;
    v105 = v173;
    if (v103 + v174 == 0.0)
    {
      v105 = 0.0;
    }

    v175 = v105;
    v106 = *&qword_1EBF46C90;
    v107 = v184[4];
    v108 = *&qword_1EBF46C28;
    v172 = v86;
    if (v27 <= *&qword_1EBF46C90)
    {
      v111 = (v108 + v108) * log(v27 - v107);
    }

    else
    {
      v109 = v106;
      v110 = log(v106 - v107);
      v111 = log(v27 - v109) * *&qword_1EBF46C68 + v110 * v108;
    }

    v112 = v102 * v104;
    v113 = *&qword_1EBF46C30 * 1.5;
    v114 = v182 - *&qword_1EBF46C98;
    if (v182 <= *&qword_1EBF46C98)
    {
      v116 = log((v182 / 2 + 1)) * v113;
    }

    else
    {
      v115 = log(vcvtd_n_f64_s64(*&qword_1EBF46C98, 1uLL) + 1.0);
      v116 = log(vcvtd_n_f64_s64(v114, 1uLL) + 1.0) * *&qword_1EBF46C80 + v115 * v113;
    }

    v76 = v184;
    v117 = qword_1EBF46C38;
    v118 = dbl_1EBF46C40;
    if (v178 <= 0.25)
    {
      v117 = 0;
    }

    if (v180 <= 0.25)
    {
      v118 = 0.0;
    }

    v119 = *&qword_1EBF46C48;
    if (v171 >= 0.1)
    {
      v119 = 0.0;
    }

    v120 = qword_1EBF46C70;
    v121 = dbl_1EBF46C78;
    if (!a16)
    {
      v120 = 0;
    }

    if (!v97)
    {
      v121 = 0.0;
    }

    *buf = 134223104;
    *&buf[4] = v112;
    *&buf[12] = 2048;
    *&buf[14] = v175;
    *&buf[22] = 2048;
    *&buf[24] = v111;
    *&buf[32] = 2048;
    *&buf[34] = v116;
    *&buf[42] = 2048;
    *&buf[44] = v117;
    *&buf[52] = 2048;
    *&buf[54] = v118;
    *&buf[62] = 2048;
    *&buf[64] = v119;
    *&buf[72] = 2048;
    *&buf[74] = v181 * unk_1EBF46C50;
    *&buf[82] = 2048;
    *&buf[84] = *&qword_1EBF46C58 * v84;
    *&buf[92] = 2048;
    *&buf[94] = v172;
    *&buf[102] = 2048;
    *&buf[104] = v120;
    *v201 = 2048;
    *&v201[2] = v121;
    *&v201[10] = 2048;
    *&v201[12] = v94 * *&qword_1EBF46C88;
    *&v201[20] = 2048;
    *&v201[22] = v27;
    *&v201[30] = 2048;
    *v202 = v182;
    *&v202[8] = 2048;
    *&v202[10] = a3;
    *&v202[18] = 2048;
    *&v202[20] = v183;
    *&v202[28] = 2048;
    *&v202[30] = v47;
    *&v202[38] = 2048;
    *&v202[40] = v176;
    LOWORD(v203) = 1024;
    *(&v203 + 2) = a7;
    WORD3(v203) = 2048;
    *(&v203 + 1) = v95;
    _os_log_impl(&dword_1C278D000, v99, v100, " weight_F:%g score_F:%g len_F:%g fragment_F:%g wf1_F:%g wf2_F:%g wf3_F:%g phrase_F:%g field_F:%g thread_F:%g shortcut_F:%g used_F:%g age_F:%g\nlen:%ld scoringFragmentCount:%ld fragmentCount:%ld age:%f score:(%llu, %llu) weight:%d computed score:(%g)", buf, 0xD0u);
  }

  *__error() = v98;
  v122 = a4;
  if (a4 >= 0x14)
  {
    v162 = __si_assert_copy_extra_332();
    __message_assert_336(v162, v163, v164, v165, v166, v167, v168, v169, "SICompletions.cpp");
    free(v162);
    if (__valid_fs(-1))
    {
      v170 = 2989;
    }

    else
    {
      v170 = 3072;
    }

    *v170 = -559038737;
    abort();
  }

  v123 = (v76[9] + 224 * a4);
  *v123 = 0u;
  v123[1] = v189;
  v123[4] = v191;
  v123[5] = v192;
  v123[2] = v190;
  v123[3] = 0u;
  v123[8] = v195;
  v123[9] = v196;
  v123[6] = v193;
  v123[7] = v194;
  v124 = v199;
  v123[12] = v198;
  v123[13] = v124;
  v123[10] = *v197;
  v123[11] = *&v197[16];
  if (v177 == 1.79769313e308)
  {
    if (a3 == 1)
    {
      v125 = v76[10];
      if (v125)
      {
        v126 = v76[4];
        if (v126 == a2[1] && !memcmp(v125, *a2, v126))
        {
          *(v76[9] + 224 * a4 + 200) = 0xFFEFFFFFFFFFFFFFLL;
        }
      }
    }

    goto LABEL_11;
  }

  if (v177 == -1.79769313e308)
  {
    v127 = v76[9] + 224 * a4;
    *(v127 + 384) = 0u;
    *(v127 + 400) = 0u;
    *(v127 + 352) = 0u;
    *(v127 + 368) = 0u;
    *(v127 + 320) = 0u;
    *(v127 + 336) = 0u;
    *(v127 + 288) = 0u;
    *(v127 + 304) = 0u;
    *(v127 + 256) = 0u;
    *(v127 + 272) = 0u;
    *(v127 + 224) = 0u;
    *(v127 + 240) = 0u;
    *(v127 + 416) = 0;
    *(v127 + 424) = 0xFFEFFFFFFFFFFFFFLL;
    *(v127 + 432) = 0;
    *(v127 + 440) = 0;
  }

  v128 = v76[11];
  v129 = a2;
  if (v128[2] >= 22)
  {
    v130 = *v128;
    if (v130)
    {
      v131 = (v130 + 224);
    }

    else
    {
      v131 = &empty_CompletionItem_s;
    }

    v132 = v131[25];
    if (v132 > *(&v198 + 1))
    {
      goto LABEL_11;
    }

    v133 = *(v131 + 3);
    v134 = *(v131 + 4);
    v135 = *(v131 + 5);
    v136 = *(v131 + 8);
    v137 = *(v131 + 9);
    v187 = *(v131 + 38);
    v138 = *__error();
    v139 = _SILogForLogForCategory(1);
    v140 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v139, v140))
    {
      *buf = 134219520;
      *&buf[4] = v133;
      *&buf[12] = 2048;
      *&buf[14] = v134;
      *&buf[22] = 2048;
      *&buf[24] = v135;
      *&buf[32] = 2048;
      *&buf[34] = v137;
      *&buf[42] = 2048;
      *&buf[44] = v136;
      *&buf[52] = 1024;
      *&buf[54] = v187;
      *&buf[58] = 2048;
      *&buf[60] = v132;
      _os_log_impl(&dword_1C278D000, v139, v140, "Pop: %ld %ld %f (%llu,%llu) %d (%g)", buf, 0x44u);
    }

    *__error() = v138;
    v76 = v184;
    v129 = a2;
    v122 = a4;
  }

  if (v122 <= 1)
  {
    v141 = 0;
    v148 = *(&v198 + 1);
  }

  else
  {
    v141 = 1;
    v142 = 424;
    v143 = 1;
    while (1)
    {
      v144 = *__error();
      v145 = _SILogForLogForCategory(1);
      v146 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v145, v146))
      {
        v147 = *(v76[9] + v142);
        *&buf[24] = *(&v198 + 1);
        v148 = *(&v198 + 1);
        *buf = 134218496;
        *&buf[4] = v143;
        *&buf[12] = 2048;
        *&buf[14] = v147;
        *&buf[22] = 2048;
        _os_log_impl(&dword_1C278D000, v145, v146, "Comparing to parent at %ld (%g) %g", buf, 0x20u);
      }

      else
      {
        v148 = *(&v198 + 1);
      }

      *__error() = v144;
      if (*(v76[9] + v142) > v148)
      {
        break;
      }

      v141 = ++v143 < a4;
      v142 += 224;
      if (a4 == v143)
      {
        v141 = 0;
        goto LABEL_110;
      }
    }

    v149 = *__error();
    v150 = _SILogForLogForCategory(1);
    v151 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v150, v151))
    {
      v152 = *(v76[9] + 224 * v143 + 200);
      *buf = 134218496;
      *&buf[4] = v143;
      *&buf[12] = 2048;
      *&buf[14] = v152;
      *&buf[22] = 2048;
      *&buf[24] = v148;
      _os_log_impl(&dword_1C278D000, v150, v151, "Dropping weak child %ld (%g) %g", buf, 0x20u);
    }

    *__error() = v149;
LABEL_110:
    v129 = a2;
  }

  if (v148 <= v177)
  {
    v158 = *__error();
    v159 = _SILogForLogForCategory(1);
    v160 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v159, v160))
    {
      *buf = 134218240;
      *&buf[4] = v177;
      *&buf[12] = 2048;
      *&buf[14] = v148;
      _os_log_impl(&dword_1C278D000, v159, v160, "Dropping weak parent (%g) %g", buf, 0x16u);
    }

    *__error() = v158;
  }

  else if (!v141)
  {
    CFStringFromFragments = _CreateCFStringFromFragments(v76[12], &v199 + 8, v129, a3, v27);
    v154 = *__error();
    v155 = _SILogForLogForCategory(1);
    v156 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v155, v156))
    {
      v157 = v76[12];
      *buf = 138413570;
      *&buf[4] = CFStringFromFragments;
      *&buf[12] = 1024;
      *&buf[14] = a17;
      *&buf[18] = 2080;
      *&buf[20] = v157;
      *&buf[28] = 1024;
      *&buf[30] = BYTE8(v199);
      *&buf[34] = 1024;
      *&buf[36] = DWORD2(v196);
      *&buf[40] = 2048;
      *&buf[42] = *(&v198 + 1);
      _os_log_impl(&dword_1C278D000, v155, v156, "Creating suggestion string %@, type %d, with completion %s length:%d weight:%d score:%g", buf, 0x32u);
    }

    *__error() = v154;
    if (CFStringFromFragments)
    {
      if (CFEqual(CFStringFromFragments, v76[13]))
      {
        CFRelease(CFStringFromFragments);
      }

      else
      {
        *&v196 = CFStringFromFragments;
        v161 = v76[11];
        *&v202[16] = *v197;
        *&v202[32] = *&v197[16];
        v203 = v198;
        v204 = v199;
        *&buf[96] = v193;
        *v201 = v194;
        *&v201[16] = v195;
        *v202 = v196;
        *&buf[32] = v190;
        *&buf[48] = 0u;
        *&buf[64] = v191;
        *&buf[80] = v192;
        *buf = 0u;
        *&buf[16] = v189;
        pqpush_CompletionItem_s(v161, buf);
      }
    }
  }

LABEL_11:
  v36 = *MEMORY[0x1E69E9840];
}

double ___ZL27update_completions_queue_v2P16_CompletionModelP13si_wordtrie_sPKcS4_myP23PQueue_CompletionItem_s_block_invoke(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6, unsigned int a7, unsigned int a8, double a9, double a10, double a11, int a12, int a13, int a14, __int16 a15, char a16, int a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20, uint64_t a21)
{
  v29 = a18;
  v123 = *MEMORY[0x1E69E9840];
  v30 = 0;
  if (a3)
  {
    v31 = a2 + 1;
    v32 = a3;
    do
    {
      v33 = *v31;
      v31 += 2;
      v30 += v33;
      --v32;
    }

    while (v32);
  }

  v34 = *(a1 + 40);
  if (!v34)
  {
    if (a17 == 3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v35 = *(v34 + 4);
  if (a19 && (v35 & 4) != 0 && *(a1 + 48) != a19)
  {
    goto LABEL_16;
  }

  if (a17 != 3)
  {
LABEL_14:
    v36 = (a1 + 56);
    if (a17 && v30 < *(a1 + 56))
    {
      goto LABEL_16;
    }

    if (a17 == 2)
    {
      if (v30 < a18)
      {
        goto LABEL_16;
      }

      v96 = __PAIR64__(a8, a7);
      v99 = a4;
      v40 = 0;
      v29 = 0;
    }

    else
    {
      v96 = __PAIR64__(a8, a7);
      v99 = a4;
      v40 = 0;
    }

    goto LABEL_22;
  }

  if ((v35 & 8) == 0)
  {
    goto LABEL_16;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    if (a3 < 3)
    {
      goto LABEL_16;
    }
  }

  else if (a3 < 5)
  {
    goto LABEL_16;
  }

  v96 = __PAIR64__(a8, a7);
  v99 = a4;
  *&valuePtr = a6;
  if (!*(v34 + 40))
  {
    goto LABEL_16;
  }

  v43 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v43)
  {
    goto LABEL_16;
  }

  v44 = v43;
  v45 = CFSetContainsValue(*(v34 + 40), v43);
  CFRelease(v44);
  if (!v45)
  {
    goto LABEL_16;
  }

  v36 = (a1 + 56);
  if (v30 < *(a1 + 56))
  {
    goto LABEL_16;
  }

  v40 = 1;
LABEL_22:
  v41.n128_f64[0] = _hasPunctuation(a2, a3, a21, 0);
  if (a3 <= 1 && v41.n128_f64[0] != 0.0 && v30 == *v36)
  {
    goto LABEL_16;
  }

  if ((v40 & 1) == 0)
  {
    v42 = *(a1 + 40);
    if (v42)
    {
      if ((a6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && (*(v42 + 4) & 2) != 0)
      {
        goto LABEL_16;
      }
    }
  }

  if (a14 < 2)
  {
    a10 = 0.0;
    if (v41.n128_f64[0] != 0.0)
    {
      goto LABEL_40;
    }

LABEL_16:
    v37 = -1.79769313e308;
    goto LABEL_17;
  }

  v37 = -1.79769313e308;
  if (fabs(a10) <= fabs(*&xmmword_1EDD78498) && v41.n128_f64[0] != 0.0)
  {
LABEL_40:
    v111 = 0u;
    v112 = 0u;
    memset(v110, 0, sizeof(v110));
    v103 = 0u;
    v104 = 0u;
    v46 = *a5;
    v47 = a5[1];
    v105 = 0u;
    v106 = 0u;
    *(&v102 + 1) = a9;
    *&v103 = a10;
    v49 = a5[2];
    v48 = a5[3];
    v107 = 0u;
    v108 = 0u;
    v104 = v46;
    v108 = a5[4];
    v109 = 0u;
    v50 = *(a1 + 48);
    *&valuePtr = *(a1 + 56);
    *(&valuePtr + 1) = v50;
    *&v101 = *(a1 + 64);
    *(&v101 + 1) = v30;
    *&v102 = a3;
    v106 = v49;
    v107 = v48;
    v105 = v47;
    *(&v109 + 1) = v96;
    LODWORD(v110[0]) = a12;
    *(v110 + 4) = 0uLL;
    *&v111 = v41.n128_u64[0];
    v41.n128_f32[0] = 1.0 / (a13 + 1.0);
    *&v112 = v41.n128_f32[0];
    DWORD1(v112) = a17;
    BYTE8(v112) = v29;
    *(&v112 + 9) = a15;
    BYTE11(v112) = a16;
    BYTE12(v112) = (a6 - 1) < 0xFFFFFFFFFFFFFFFELL;
    update_item_bundle_ids(&valuePtr, a20, v41);
    *(&v111 + 1) = GetCompletionItemWeight(&valuePtr);
    v51 = v99;
    if (v99 >= 0x14)
    {
      v83 = __si_assert_copy_extra_332();
      __message_assert_336(v83, v84, v85, v86, v87, v88, v89, v90, "SICompletions.cpp");
      free(v83);
      if (__valid_fs(-1))
      {
        v91 = 2989;
      }

      else
      {
        v91 = 3072;
      }

      *v91 = -559038737;
      abort();
    }

    v52 = (*(a1 + 72) + 224 * v99);
    v53 = v101;
    *v52 = valuePtr;
    v52[1] = v53;
    v54 = v102;
    v55 = v103;
    v56 = v105;
    v52[4] = v104;
    v52[5] = v56;
    v52[2] = v54;
    v52[3] = v55;
    v57 = v106;
    v58 = v107;
    v59 = v109;
    v52[8] = v108;
    v52[9] = v59;
    v52[6] = v57;
    v52[7] = v58;
    v60 = v110[0];
    v61 = v110[1];
    v62 = v112;
    v52[12] = v111;
    v52[13] = v62;
    v52[10] = v60;
    v52[11] = v61;
    if (a11 == 1.79769313e308)
    {
      if (a3 == 1)
      {
        v63 = *(a1 + 80);
        if (v63)
        {
          if (*v36 == a2[1] && !memcmp(v63, *a2, *v36))
          {
            *(*(a1 + 72) + 224 * v99 + 200) = 0xFFEFFFFFFFFFFFFFLL;
            v37 = -1.79769313e308;
            goto LABEL_17;
          }
        }
      }

LABEL_72:
      v37 = *(&v111 + 1);
      goto LABEL_17;
    }

    if (a11 == -1.79769313e308)
    {
      v64 = *(a1 + 72) + 224 * v99;
      *(v64 + 384) = 0u;
      *(v64 + 400) = 0u;
      *(v64 + 352) = 0u;
      *(v64 + 368) = 0u;
      *(v64 + 320) = 0u;
      *(v64 + 336) = 0u;
      *(v64 + 288) = 0u;
      *(v64 + 304) = 0u;
      *(v64 + 256) = 0u;
      *(v64 + 272) = 0u;
      *(v64 + 224) = 0u;
      *(v64 + 240) = 0u;
      *(v64 + 416) = 0;
      *(v64 + 424) = 0xFFEFFFFFFFFFFFFFLL;
      *(v64 + 432) = 0;
      *(v64 + 440) = 0;
    }

    v65 = *(a1 + 88);
    if (v65[2] >= 22)
    {
      v66 = *v65;
      if (v66)
      {
        v67 = (v66 + 224);
      }

      else
      {
        v67 = &empty_CompletionItem_s;
      }

      v68 = v67[25];
      if (v68 > *(&v111 + 1))
      {
        goto LABEL_72;
      }

      v69 = *(v67 + 3);
      v92 = *(v67 + 4);
      v93 = *(v67 + 5);
      v94 = *(v67 + 9);
      v95 = *(v67 + 8);
      v97 = *(v67 + 38);
      v98 = *__error();
      v70 = _SILogForLogForCategory(1);
      v71 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v70, v71))
      {
        *buf = 134219520;
        *&buf[4] = v69;
        *&buf[12] = 2048;
        *&buf[14] = v92;
        *&buf[22] = 2048;
        *&buf[24] = v93;
        *&buf[32] = 2048;
        *&buf[34] = v94;
        *&buf[42] = 2048;
        *&buf[44] = v95;
        *&buf[52] = 1024;
        *&buf[54] = v97;
        *&buf[58] = 2048;
        *&buf[60] = v68;
        _os_log_impl(&dword_1C278D000, v70, v71, "Pop: %ld %ld %f (%llu,%llu) %d (%g)", buf, 0x44u);
      }

      *__error() = v98;
      v51 = v99;
    }

    if (a14 < 2 || v51 == 19 || a11 == -1.79769313e308 || (v72 = *(a1 + 72) + 224 * v51, *(v72 + 424) == -1.79769313e308) || *(v72 + 272) != *&v103)
    {
      if (v40)
      {
        CFStringFromCrossFieldFragments = _CreateCFStringFromCrossFieldFragments(SBYTE8(v112), a2, a3, v30);
      }

      else
      {
        CFStringFromCrossFieldFragments = _CreateCFStringFromFragments(*(a1 + 96), &v112 + 8, a2, a3, v30);
      }

      v77 = CFStringFromCrossFieldFragments;
      v78 = *__error();
      v79 = _SILogForLogForCategory(1);
      v80 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v79, v80))
      {
        v81 = *(a1 + 96);
        *buf = 138413570;
        *&buf[4] = v77;
        *&buf[12] = 1024;
        *&buf[14] = DWORD1(v112);
        *&buf[18] = 2080;
        *&buf[20] = v81;
        *&buf[28] = 1024;
        *&buf[30] = BYTE8(v112);
        *&buf[34] = 1024;
        *&buf[36] = DWORD2(v109);
        *&buf[40] = 2048;
        *&buf[42] = *(&v111 + 1);
        _os_log_impl(&dword_1C278D000, v79, v80, "Creating suggestion string %@, type %d, with completion %s length:%d weight:%d score:%g", buf, 0x32u);
      }

      *__error() = v78;
      if (v77)
      {
        *&v109 = v77;
        v82 = *(a1 + 88);
        v119 = v110[0];
        v120 = v110[1];
        v121 = v111;
        v122 = v112;
        v115 = v106;
        v116 = v107;
        v117 = v108;
        v118 = v109;
        *&buf[32] = v102;
        *&buf[48] = v103;
        *&buf[64] = v104;
        v114 = v105;
        *buf = valuePtr;
        *&buf[16] = v101;
        pqpush_CompletionItem_s(v82, buf);
      }
    }

    else
    {
      v73 = *__error();
      v74 = _SILogForLogForCategory(1);
      v75 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v74, v75))
      {
        *buf = 134218240;
        *&buf[4] = a11;
        *&buf[12] = 2048;
        *&buf[14] = *(&v111 + 1);
        _os_log_impl(&dword_1C278D000, v74, v75, "Dropping dangling parent (%g) %g", buf, 0x16u);
      }

      *__error() = v73;
    }

    goto LABEL_72;
  }

LABEL_17:
  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

void ___ZL27update_completions_queue_v3P16_CompletionModelP13si_wordtrie_sPKcS4_myP23PQueue_CompletionItem_s_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6, unsigned int a7, unsigned int a8, double a9, double a10, double a11, int a12, int a13, int a14, __int16 a15, char a16, int a17, char a18, uint64_t a19)
{
  v142 = *MEMORY[0x1E69E9840];
  v24 = 0;
  if (a3)
  {
    v25 = (a2 + 8);
    v26 = a3;
    do
    {
      v27 = *v25;
      v25 += 2;
      v24 += v27;
      --v26;
    }

    while (v26);
  }

  v130 = 0u;
  v131 = 0u;
  memset(v129, 0, sizeof(v129));
  v122 = 0u;
  v123 = 0u;
  v119 = *(a1 + 32);
  v28 = *a5;
  v29 = a5[1];
  v124 = 0u;
  v125 = 0u;
  *(&v121 + 1) = a9;
  v30 = 0.0;
  if (a14 > 1)
  {
    v30 = a10;
  }

  *&v122 = v30;
  v32 = a5[2];
  v31 = a5[3];
  v126 = 0uLL;
  v127 = 0uLL;
  v123 = v28;
  v124 = v29;
  v127 = a5[4];
  v128 = 0uLL;
  *&v120 = *(a1 + 48);
  *(&v120 + 1) = v24;
  *&v121 = a3;
  v125 = v32;
  v126 = v31;
  *(&v128 + 1) = __PAIR64__(a8, a7);
  LODWORD(v129[0]) = a12;
  *(v129 + 4) = 0uLL;
  *&v130 = 0x3FF0000000000000;
  v31.n128_f32[0] = 1.0 / (a13 + 1.0);
  *&v131 = v31.n128_f32[0];
  DWORD1(v131) = a17;
  BYTE8(v131) = a18;
  *(&v131 + 9) = a15;
  BYTE11(v131) = a16;
  BYTE12(v131) = (a6 - 1) < 0xFFFFFFFFFFFFFFFELL;
  update_item_bundle_ids(&v119, a19, v31);
  *(&v130 + 1) = GetCompletionItemWeight(&v119);
  if (a4 > 0x13)
  {
    v90 = __si_assert_copy_extra_332();
    __message_assert_336(v90, v91, v92, v93, v94, v95, v96, v97, "SICompletions.cpp");
    free(v90);
    if (__valid_fs(-1))
    {
      v98 = 2989;
    }

    else
    {
      v98 = 3072;
    }

    *v98 = -559038737;
    abort();
  }

  v33 = (*(a1 + 56) + 224 * a4);
  v34 = v120;
  *v33 = v119;
  v33[1] = v34;
  v35 = v121;
  v36 = v122;
  v37 = v124;
  v33[4] = v123;
  v33[5] = v37;
  v33[2] = v35;
  v33[3] = v36;
  v38 = v125;
  v39 = v126;
  v40 = v128;
  v33[8] = v127;
  v33[9] = v40;
  v33[6] = v38;
  v33[7] = v39;
  v41 = v129[0];
  v42 = v129[1];
  v43 = v131;
  v33[12] = v130;
  v33[13] = v43;
  v33[10] = v41;
  v33[11] = v42;
  if (a11 == 1.79769313e308)
  {
    if (a3 == 1)
    {
      v44 = *(a1 + 64);
      if (v44)
      {
        v45 = *(a1 + 32);
        if (v45 == *(a2 + 8) && !memcmp(v44, *a2, v45))
        {
          *(*(a1 + 56) + 224 * a4 + 200) = 0xFFEFFFFFFFFFFFFFLL;
        }
      }
    }

    goto LABEL_45;
  }

  if (a11 == -1.79769313e308)
  {
    v46 = *(a1 + 56) + 224 * a4;
    *(v46 + 384) = 0u;
    *(v46 + 400) = 0u;
    *(v46 + 352) = 0u;
    *(v46 + 368) = 0u;
    *(v46 + 320) = 0u;
    *(v46 + 336) = 0u;
    *(v46 + 288) = 0u;
    *(v46 + 304) = 0u;
    *(v46 + 256) = 0u;
    *(v46 + 272) = 0u;
    *(v46 + 224) = 0u;
    *(v46 + 240) = 0u;
    *(v46 + 416) = 0;
    *(v46 + 424) = 0xFFEFFFFFFFFFFFFFLL;
    *(v46 + 432) = 0;
    *(v46 + 440) = 0;
  }

  v47 = *(a1 + 72);
  if (v47[2] >= 22)
  {
    v48 = *v47;
    if (v48)
    {
      v49 = (v48 + 224);
    }

    else
    {
      v49 = &empty_CompletionItem_s;
    }

    v50 = v49[25];
    if (v50 > *(&v130 + 1))
    {
      goto LABEL_45;
    }

    v51 = *(v49 + 3);
    v99 = *(v49 + 4);
    v100 = *(v49 + 5);
    v101 = *(v49 + 9);
    v102 = *(v49 + 8);
    v103 = *(v49 + 38);
    v104 = *__error();
    v52 = _SILogForLogForCategory(1);
    v53 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v52, v53))
    {
      *buf = 134219520;
      *&buf[4] = v51;
      *&buf[12] = 2048;
      *&buf[14] = v99;
      *&buf[22] = 2048;
      *&buf[24] = v100;
      *&buf[32] = 2048;
      *&buf[34] = v101;
      *&buf[42] = 2048;
      *&buf[44] = v102;
      *&buf[52] = 1024;
      *&buf[54] = v103;
      *&buf[58] = 2048;
      *&buf[60] = v50;
      _os_log_impl(&dword_1C278D000, v52, v53, "Pop: %ld %ld %f (%llu,%llu) %d (%g)", buf, 0x44u);
    }

    *__error() = v104;
  }

  if (a4 == 19 || a11 == -1.79769313e308 || (v54 = *(a1 + 56) + 224 * a4, *(v54 + 424) == -1.79769313e308) || *(v54 + 272) != *&v122)
  {
    CFStringFromFragments = _CreateCFStringFromFragments(*(a1 + 80), &v131 + 8, a2, a3, v24);
    v59 = *__error();
    v60 = _SILogForLogForCategory(1);
    v61 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v60, v61))
    {
      v62 = *(a1 + 80);
      *buf = 138413570;
      *&buf[4] = CFStringFromFragments;
      *&buf[12] = 1024;
      *&buf[14] = DWORD1(v131);
      *&buf[18] = 2080;
      *&buf[20] = v62;
      *&buf[28] = 1024;
      *&buf[30] = BYTE8(v131);
      *&buf[34] = 1024;
      *&buf[36] = DWORD2(v128);
      *&buf[40] = 2048;
      *&buf[42] = *(&v130 + 1);
      _os_log_impl(&dword_1C278D000, v60, v61, "Creating suggestion string %@, type %d, with completion %s length:%d weight:%d score:%g", buf, 0x32u);
    }

    *__error() = v59;
    if (CFStringFromFragments)
    {
      *&v128 = CFStringFromFragments;
      v63 = *(a1 + 72);
      v115 = v129[0];
      v116 = v129[1];
      v117 = v130;
      v118 = v131;
      v111 = v125;
      v112 = v126;
      v113 = v127;
      v114 = v128;
      v107 = v121;
      v108 = v122;
      v109 = v123;
      v110 = v124;
      v64 = v63[1];
      v65 = v63[2];
      v66 = v65;
      v105 = v119;
      v106 = v120;
      if ((v65 + 2) >= v64)
      {
        v67 = 2 * v64;
        v68 = v64 < 4;
        v69 = 4;
        if (!v68)
        {
          v69 = v67;
        }

        v63[1] = v69;
        v70 = 224 * v69 + 448;
        if (*v63)
        {
          v71 = malloc_type_zone_realloc(queryZone, *v63, v70, 0xA1A7ADA0uLL);
        }

        else
        {
          v71 = malloc_type_zone_malloc(queryZone, v70, 0x566E289CuLL);
        }

        v72 = v71;
        if (!v71)
        {
          _log_fault_for_malloc_failure();
        }

        *v63 = v72;
        v72[12] = 0u;
        v72[13] = 0u;
        v72[10] = 0u;
        v72[11] = 0u;
        v72[8] = 0u;
        v72[9] = 0u;
        v72[6] = 0u;
        v72[7] = 0u;
        v72[4] = 0u;
        v72[5] = 0u;
        v72[2] = 0u;
        v72[3] = 0u;
        *v72 = 0u;
        v72[1] = 0u;
        v66 = v63[2];
      }

      v63[2] = (v66 + 1);
      v73 = *v63 + 224 * v65;
      *(v73 + 10) = v115;
      *(v73 + 11) = v116;
      *(v73 + 12) = v117;
      *(v73 + 13) = v118;
      *(v73 + 6) = v111;
      *(v73 + 7) = v112;
      *(v73 + 8) = v113;
      *(v73 + 9) = v114;
      *(v73 + 2) = v107;
      *(v73 + 3) = v108;
      *(v73 + 4) = v109;
      *(v73 + 5) = v110;
      *v73 = v105;
      *(v73 + 1) = v106;
      if (v65 >= 2)
      {
        do
        {
          v74 = *v63;
          v75 = v65 >> 1;
          if (*(*v63 + 28 * v65 + 25) > *(*v63 + 28 * (v65 >> 1) + 25))
          {
            break;
          }

          v76 = &v74[224 * v65];
          v138 = *(v76 + 10);
          v139 = *(v76 + 11);
          v140 = *(v76 + 12);
          v141 = *(v76 + 13);
          v134 = *(v76 + 6);
          v135 = *(v76 + 7);
          v136 = *(v76 + 8);
          v137 = *(v76 + 9);
          *&buf[32] = *(v76 + 2);
          *&buf[48] = *(v76 + 3);
          *&buf[64] = *(v76 + 4);
          v133 = *(v76 + 5);
          *buf = *v76;
          *&buf[16] = *(v76 + 1);
          v77 = &v74[224 * v75];
          v78 = *(v77 + 1);
          *v76 = *v77;
          *(v76 + 1) = v78;
          v79 = *(v77 + 2);
          v80 = *(v77 + 3);
          v81 = *(v77 + 5);
          *(v76 + 4) = *(v77 + 4);
          *(v76 + 5) = v81;
          *(v76 + 2) = v79;
          *(v76 + 3) = v80;
          v82 = *(v77 + 6);
          v83 = *(v77 + 7);
          v84 = *(v77 + 9);
          *(v76 + 8) = *(v77 + 8);
          *(v76 + 9) = v84;
          *(v76 + 6) = v82;
          *(v76 + 7) = v83;
          v85 = *(v77 + 10);
          v86 = *(v77 + 11);
          v87 = *(v77 + 13);
          *(v76 + 12) = *(v77 + 12);
          *(v76 + 13) = v87;
          *(v76 + 10) = v85;
          *(v76 + 11) = v86;
          v88 = *v63 + 224 * v75;
          *(v88 + 10) = v138;
          *(v88 + 11) = v139;
          *(v88 + 12) = v140;
          *(v88 + 13) = v141;
          *(v88 + 6) = v134;
          *(v88 + 7) = v135;
          *(v88 + 8) = v136;
          *(v88 + 9) = v137;
          *(v88 + 2) = *&buf[32];
          *(v88 + 3) = *&buf[48];
          *(v88 + 4) = *&buf[64];
          *(v88 + 5) = v133;
          *v88 = *buf;
          *(v88 + 1) = *&buf[16];
          v68 = v65 > 3;
          v65 >>= 1;
        }

        while (v68);
      }
    }
  }

  else
  {
    v55 = *__error();
    v56 = _SILogForLogForCategory(1);
    v57 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v56, v57))
    {
      *buf = 134218240;
      *&buf[4] = a11;
      *&buf[12] = 2048;
      *&buf[14] = *(&v130 + 1);
      _os_log_impl(&dword_1C278D000, v56, v57, "Dropping dangling parent (%g) %g", buf, 0x16u);
    }

    *__error() = v55;
  }

LABEL_45:
  v89 = *MEMORY[0x1E69E9840];
}

BOOL contains_similar_string(const __CFString *a1, CFSetRef theSet, const char *a3)
{
  buf[3] = *MEMORY[0x1E69E9840];
  if (!theSet || (Count = CFSetGetCount(theSet)) == 0)
  {
    v15 = 0;
    goto LABEL_20;
  }

  v6 = Count;
  Length = CFStringGetLength(a1);
  v30[0] = Length;
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v27[1] = v27;
  MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
  v10 = v27 - v9;
  bzero(v27 - v9, MaximumSizeForEncoding);
  v32.location = 0;
  v32.length = Length;
  CFStringGetBytes(a1, v32, 0x8000100u, 0x2Du, 0, v10, MaximumSizeForEncoding, v30);
  v10[v30[0]] = 0;
  v28 = icu_search_context_create();
  MEMORY[0x1EEE9AC00](v28);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v12, v11);
  CFSetGetValues(theSet, v12);
  if (v6 < 1)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v13 = 1;
  v14 = v6;
  v15 = 1;
  while (1)
  {
    v16 = *v12;
    v17 = CFStringGetLength(*v12);
    v29 = v17;
    v18 = v17 - v30[0];
    if (v17 - v30[0] < 0)
    {
      v18 = v30[0] - v17;
    }

    if (v18 > 3)
    {
      goto LABEL_12;
    }

    if (v17 != v30[0])
    {
      break;
    }

    if (CFStringCompare(v16, a1, 0))
    {
      v17 = v29;
      break;
    }

LABEL_12:
    v15 = v13++ < v6;
    ++v12;
    if (!--v14)
    {
      goto LABEL_19;
    }
  }

  v19 = CFStringGetMaximumSizeForEncoding(v17, 0x8000100u);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v27 - v20;
  bzero(v27 - v20, v19);
  v33.length = v29;
  v33.location = 0;
  CFStringGetBytes(v16, v33, 0x8000100u, 0x2Du, 0, v21, v19, &v29);
  v21[v29] = 0;
  v30[1] = 0;
  buf[0] = 0;
  if (!icu_search_match())
  {
    goto LABEL_12;
  }

  v22 = *__error();
  v23 = _SILogForLogForCategory(1);
  v24 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v23, v24))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = v29;
    _os_log_impl(&dword_1C278D000, v23, v24, "Dropping similar completion of length %ld", buf, 0xCu);
  }

  *__error() = v22;
LABEL_19:
  icu_ctx_release();
LABEL_20:
  v25 = *MEMORY[0x1E69E9840];
  return v15;
}

void update_item_bundle_ids(uint64_t a1, uint64_t a2, __n128 a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_38;
  }

  v3 = *(a2 + 24);
  if (v3 >= 3)
  {
    v3 = 3;
  }

  v24 = v3;
  *(a1 + 164) = v3;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v27 = v4[3];
      v28 = v4[4];
      v29 = v4[5];
      v30 = v4[6];
      v26 = v4[2];
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 5) + 1;
      if (v7 > 0x2AAAAAAAAAAAAAALL)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      if (0x5555555555555556 * (-v5 >> 5) > v7)
      {
        v7 = 0x5555555555555556 * (-v5 >> 5);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v5 >> 5) >= 0x155555555555555)
      {
        v8 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      if (v8)
      {
        if (v8 <= 0x2AAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v9 = 32 * ((v6 - v5) >> 5);
      *v9 = v4[1].n128_u32[0];
      a3 = v27;
      *(v9 + 48) = v28;
      *(v9 + 64) = v29;
      *(v9 + 80) = v30;
      *(v9 + 16) = v26;
      *(v9 + 32) = v27;
      v10 = (v9 + 96 * ((v6 - v5) / -96));
      if (v5 != v6)
      {
        v11 = v5;
        v12 = 32 * ((v6 - v5) >> 5) + 96 * ((v6 - v5) / -96);
        do
        {
          *v12 = *v11;
          *(v12 + 16) = *(v11 + 1);
          a3 = *(v11 + 2);
          v13 = *(v11 + 3);
          v14 = *(v11 + 5);
          *(v12 + 64) = *(v11 + 4);
          *(v12 + 80) = v14;
          *(v12 + 32) = a3;
          *(v12 + 48) = v13;
          v11 += 24;
          v12 += 96;
        }

        while (v11 != v6);
      }

      v6 = (v9 + 96);
      if (v5)
      {
        operator delete(v5);
      }

      v5 = v10;
      v4 = v4->n128_u64[0];
    }

    while (v4);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v15 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 5));
  if (v6 == v5)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  std::__introsort<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,false>(v5, v6, v16, 1, a3);
  if (v6 != v5)
  {
    v17 = (a1 + 168);
    if (v24 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v24;
    }

    v19 = v18 - 1;
    v20 = (v5 + 96);
    do
    {
      *v17++ = *(v20 - 24);
      if (!v19)
      {
        break;
      }

      --v19;
      v21 = v20 == v6;
      v20 += 24;
    }

    while (!v21);
  }

  if (v5)
  {
    v22 = *MEMORY[0x1E69E9840];

    operator delete(v5);
  }

  else
  {
LABEL_38:
    v23 = *MEMORY[0x1E69E9840];
  }
}

__CFString *_CreateCFStringFromFragments(const char *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = *a2;
  }

  else
  {
    v9 = 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], a5 + v9 + 1);
  v11 = Mutable;
  if (v9)
  {
    v12 = a1[v9];
    a1[v9] = 0;
    CFStringAppendCString(Mutable, a1, 0x8000100u);
    a1[v9] = v12;
    *a2 = CFStringGetLength(v11);
  }

  if (a4)
  {
    v13 = (a3 + 8);
    do
    {
      CFStringAppendCharacters(v11, *(v13 - 1), *v13);
      v13 += 2;
      --a4;
    }

    while (a4);
  }

  return v11;
}

double _hasPunctuation(SIModelManager *IsCharacterMember, uint64_t a2, uint64_t a3, int a4)
{
  v4 = 0.0;
  if (!a2)
  {
    return v4;
  }

  v8 = IsCharacterMember;
  if (_hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::onceToken != -1)
  {
    dispatch_once(&_hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::onceToken, &__block_literal_global_17_2162);
  }

  v9 = *(a3 + 24);
  if ((v9 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*(a3 + 16) == a2)
  {
    if (!v9)
    {
      return *a3;
    }

    return v4;
  }

  *(a3 + 16) = a2;
  if (*(a3 + 30))
  {
LABEL_14:
    *(a3 + 30) = 1;
    *a3 = 0;
    return v4;
  }

  v10 = v8 + 16 * a2;
  v11 = *(v10 - 16);
  v12 = *(v10 - 8);
  if (!v12)
  {
    v18 = 0;
    v19 = *(a3 + 28);
    v20 = *(a3 + 29);
    goto LABEL_16;
  }

  v13 = _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::newLineAndTabs;
  v14 = 1;
  v15 = *(v10 - 8);
  v16 = 1;
  do
  {
    v17 = *v11;
    v11 = (v11 + 2);
    IsCharacterMember = CFCharacterSetIsCharacterMember(v13, v17);
    if (IsCharacterMember)
    {
      break;
    }

    v16 = v14++ < v12;
    --v15;
  }

  while (v15);
  if (v16)
  {
    goto LABEL_14;
  }

  v11 = *(v10 - 16);
  v18 = *(v10 - 8);
  v9 = *(a3 + 24);
  if ((v9 & 0x80000000) != 0)
  {
    v22 = 0;
    goto LABEL_19;
  }

  v19 = *(a3 + 28);
  v20 = *(a3 + 29);
  if (!v18)
  {
LABEL_16:
    *(a3 + 29) = v20 & 1;
    *(a3 + 28) = v19 & 1;
    *(a3 + 24) = v9;
    v21 = (v20 | v19) ^ 1;
    if (v9)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    goto LABEL_19;
  }

  v31 = 0;
  while (1)
  {
    v32 = v31 == (v18 - 1) || v31 == 0;
    v33 = *(v11 + v31);
    if (!v32 || v33 != 39)
    {
      break;
    }

    v20 ^= 1u;
LABEL_58:
    v31 = (v31 + 1);
    if (v31 == v18)
    {
      goto LABEL_16;
    }
  }

  if (v33 == 34)
  {
    v19 ^= 1u;
    goto LABEL_58;
  }

  for (i = 0; i != 11; ++i)
  {
    if (asc_1C2BFEEE0[i] == v33)
    {
      *(*(a3 + 32) + 2 * v9++) = word_1C2BFEEF6[i];
      goto LABEL_58;
    }
  }

  if (v9 && *(*(a3 + 32) + 2 * v9 - 2) == v33)
  {
    --v9;
    goto LABEL_58;
  }

  v35 = 0;
  while (word_1C2BFEEF6[v35] != v33)
  {
    if (++v35 == 11)
    {
      goto LABEL_58;
    }
  }

  v22 = 0;
  *(a3 + 29) = v20 & 1;
  *(a3 + 28) = v19 & 1;
  *(a3 + 24) = -1;
LABEL_19:
  v4 = *a3;
  if (v18)
  {
    v23 = _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::characterSet;
    v24 = 1.0;
    v25 = v11;
    v26 = v18;
    do
    {
      v27 = *v25++;
      if (CFCharacterSetIsCharacterMember(v23, v27))
      {
        v24 = v24 * 0.1;
      }

      v26 = (v26 - 1);
    }

    while (v26);
    v4 = v4 * v24;
    IsCharacterMember = CFCharacterSetIsCharacterMember(_hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::whiteSpaceAndPunctuation, *(v11 + v18 - 1));
    if (IsCharacterMember)
    {
      v4 = v4 * 0.01;
    }
  }

  if (a2 != 1)
  {
    *a3 = v4;
  }

  if (a4)
  {
    v28 = *(a3 + 48);
    SIModelManager::getInstance(IsCharacterMember);
    if (SIModelManager::isStopword(v11, v18, v28, v29))
    {
      v4 = v4 * 0.01;
    }
  }

  if (a2 == 1)
  {
    *a3 = v4;
  }

  if ((v22 & 1) == 0)
  {
    return 0.0;
  }

  return v4;
}

__CFString *_CreateCFStringFromCrossFieldFragments(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], a4 + 1);
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  if (a3)
  {
    v9 = Predefined;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = a2 + 16 * v10;
      if (a1)
      {
        a1 -= *(v12 + 8);
      }

      else
      {
        if ((v11 & 1) != 0 && *(v12 + 8))
        {
          v13 = 0;
          do
          {
            if (!CFCharacterSetIsCharacterMember(v9, *(*v12 + 2 * v13)))
            {
              break;
            }

            ++v13;
          }

          while (v13 != *(v12 + 8));
        }

        else
        {
          v13 = 0;
        }

        CFStringAppendCharacters(Mutable, (*v12 + 2 * v13), *(v12 + 8) - v13);
        v11 = 0;
        a1 = 0;
      }

      ++v10;
    }

    while (v10 != a3);
  }

  return Mutable;
}

__n128 pqpush_CompletionItem_s(void **a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5;
  if ((v5 + 2) >= v4)
  {
    v7 = 2 * v4;
    v8 = v4 < 4;
    v9 = 4;
    if (!v8)
    {
      v9 = v7;
    }

    a1[1] = v9;
    v10 = 224 * v9 + 448;
    if (*a1)
    {
      v11 = malloc_type_zone_realloc(queryZone, *a1, v10, 0xA1A7ADA0uLL);
    }

    else
    {
      v11 = malloc_type_zone_malloc(queryZone, v10, 0x566E289CuLL);
    }

    v12 = v11;
    if (!v11)
    {
      _log_fault_for_malloc_failure();
    }

    *a1 = v12;
    v12[12] = 0u;
    v12[13] = 0u;
    v12[10] = 0u;
    v12[11] = 0u;
    v12[8] = 0u;
    v12[9] = 0u;
    v12[6] = 0u;
    v12[7] = 0u;
    v12[4] = 0u;
    v12[5] = 0u;
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v6 = a1[2];
  }

  a1[2] = (v6 + 1);
  v13 = *a1 + 224 * v5;
  result = *(a2 + 16);
  *v13 = *a2;
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  v17 = *(a2 + 80);
  *(v13 + 64) = *(a2 + 64);
  *(v13 + 80) = v17;
  *(v13 + 32) = v15;
  *(v13 + 48) = v16;
  v18 = *(a2 + 96);
  v19 = *(a2 + 112);
  v20 = *(a2 + 144);
  *(v13 + 128) = *(a2 + 128);
  *(v13 + 144) = v20;
  *(v13 + 96) = v18;
  *(v13 + 112) = v19;
  v21 = *(a2 + 160);
  v22 = *(a2 + 176);
  v23 = *(a2 + 208);
  *(v13 + 192) = *(a2 + 192);
  *(v13 + 208) = v23;
  *(v13 + 160) = v21;
  *(v13 + 176) = v22;
  *(v13 + 16) = result;
  if (v5 >= 2)
  {
    do
    {
      v24 = *a1;
      result.n128_u64[0] = *(*a1 + 28 * v5 + 25);
      v25 = v5 >> 1;
      if (result.n128_f64[0] > *(*a1 + 28 * (v5 >> 1) + 25))
      {
        break;
      }

      v26 = &v24[224 * v5];
      v49 = v26[10];
      v50 = v26[11];
      v51 = v26[12];
      v52 = v26[13];
      v45 = v26[6];
      v46 = v26[7];
      v47 = v26[8];
      v48 = v26[9];
      v41 = v26[2];
      v42 = v26[3];
      v43 = v26[4];
      v44 = v26[5];
      v39 = *v26;
      v40 = v26[1];
      v27 = &v24[224 * v25];
      v28 = v27[1];
      *v26 = *v27;
      v26[1] = v28;
      v29 = v27[2];
      v30 = v27[3];
      v31 = v27[5];
      v26[4] = v27[4];
      v26[5] = v31;
      v26[2] = v29;
      v26[3] = v30;
      v32 = v27[6];
      v33 = v27[7];
      v34 = v27[9];
      v26[8] = v27[8];
      v26[9] = v34;
      v26[6] = v32;
      v26[7] = v33;
      v35 = v27[10];
      v36 = v27[11];
      v37 = v27[13];
      v26[12] = v27[12];
      v26[13] = v37;
      v26[10] = v35;
      v26[11] = v36;
      v38 = (*a1 + 224 * v25);
      v38[10] = v49;
      v38[11] = v50;
      v38[12] = v51;
      v38[13] = v52;
      v38[6] = v45;
      v38[7] = v46;
      v38[8] = v47;
      v38[9] = v48;
      v38[2] = v41;
      v38[3] = v42;
      v38[4] = v43;
      v38[5] = v44;
      result = v39;
      *v38 = v39;
      v38[1] = v40;
      v8 = v5 > 3;
      v5 >>= 1;
    }

    while (v8);
  }

  return result;
}

void ___ZL15_hasPunctuationP18SIWordTrieFragmentmP10cachedInfob_block_invoke()
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
  v1 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  v2 = *MEMORY[0x1E695E480];
  _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::openParen = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x1E695E480], @"[(<“‘");
  _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::closeParen = CFCharacterSetCreateWithCharactersInString(v2, @"]>”’"));
  MutableCopy = CFCharacterSetCreateMutableCopy(v2, Predefined);
  CFCharacterSetUnion(MutableCopy, v1);
  CFCharacterSetInvert(MutableCopy);
  CFCharacterSetUnion(MutableCopy, _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::openParen);
  CFCharacterSetUnion(MutableCopy, _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::closeParen);
  _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::characterSet = CFCharacterSetCreateCopy(v2, MutableCopy);
  CFRelease(MutableCopy);
  v4 = CFCharacterSetCreateWithCharactersInString(v2, @"\t");
  v5 = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  v6 = CFCharacterSetCreateMutableCopy(v2, v5);
  CFCharacterSetUnion(v6, v4);
  _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::newLineAndTabs = CFCharacterSetCreateCopy(v2, v6);
  CFRelease(v4);
  CFRelease(v6);
  v7 = CFCharacterSetCreateWithCharactersInString(v2, @"-");
  v8 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  v9 = CFCharacterSetCreateMutableCopy(v2, v8);
  CFCharacterSetUnion(v9, v7);
  v10 = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  CFCharacterSetUnion(v9, v10);
  _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::whiteSpaceAndPunctuation = v9;

  CFRelease(v7);
}

uint64_t anonymous namespace::stokencallback(_anonymous_namespace_ *this, const unsigned __int16 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 24);
  if (v8)
  {
    v9 = *(a4 + 8);
    if (v9 != *a4)
    {
      goto LABEL_8;
    }

    v10 = 2 * v9;
  }

  else
  {
    v10 = 4;
  }

  *a4 = v10;
  v11 = malloc_type_realloc(v8, 8 * v10, 0x50040EE9192B6uLL);
  v8 = v11;
  if (!*(a4 + 24))
  {
    *(a4 + 8) = 0;
  }

  *(a4 + 24) = v11;
LABEL_8:
  bzero(__src, 0x400uLL);
  v18 = 0;
  if (!utf8_encodestr(this, 2 * a2, __src, &v18, 1024))
  {
    v12 = v18 + 1;
    v13 = malloc_type_malloc(v18 + 1, 0x100004077774924uLL);
    memcpy(v13, __src, v12);
    v14.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v14.i64[1] = v12;
    v15 = vaddq_s64(*(a4 + 8), v14);
    *(v8 + *(a4 + 8)) = v13;
    *(a4 + 8) = v15;
  }

  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t SISetCompletionRankingWeights(uint64_t result)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_35;
  }

  v1 = result;
  result = CFArrayGetCount(result);
  if (result == 32)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    __src = 0u;
    v31 = 0u;
    p_src = &__src;
    TypeID = CFNumberGetTypeID();
    v4 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
      if (CFGetTypeID(ValueAtIndex) != TypeID)
      {
        v10 = *__error();
        v11 = _SILogForLogForCategory(1);
        v12 = dword_1EBF46AD0 < 3;
        if (!os_log_type_enabled(v11, (dword_1EBF46AD0 < 3)))
        {
          goto LABEL_34;
        }

        v26 = 134218242;
        v27 = v4;
        v28 = 2112;
        v29 = ValueAtIndex;
        v13 = "*warn* Non-numeric in factor array at index %ld: %@";
        goto LABEL_19;
      }

      result = CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, p_src);
      if (!result)
      {
        break;
      }

      ++v4;
      p_src = (p_src + 8);
      if (v4 == 32)
      {
        xmmword_1EDD78498 = v42;
        *&qword_1EDD784A8 = v43;
        xmmword_1EDD784B8 = v44;
        unk_1EDD784C8 = v45;
        xmmword_1EDD78458 = v38;
        *&qword_1EDD78468 = v39;
        xmmword_1EDD78478 = v40;
        *&qword_1EDD78488 = v41;
        xmmword_1EDD78418 = v34;
        *&qword_1EDD78428 = v35;
        xmmword_1EDD78438 = v36;
        *&qword_1EDD78448 = v37;
        ranking_factor_weights = __src;
        *&qword_1EDD783E8 = v31;
        xmmword_1EDD783F8 = v32;
        unk_1EDD78408 = v33;
        goto LABEL_35;
      }
    }

    v10 = *__error();
    v11 = _SILogForLogForCategory(1);
    v12 = dword_1EBF46AD0 < 3;
    if (!os_log_type_enabled(v11, (dword_1EBF46AD0 < 3)))
    {
      goto LABEL_34;
    }

    v26 = 134218242;
    v27 = v4;
    v28 = 2112;
    v29 = ValueAtIndex;
    v13 = "*warn* Bad value in factor array at index %ld: %@";
LABEL_19:
    v14 = v11;
    v15 = v12;
  }

  else
  {
    v6 = result;
    *&v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    __src = 0u;
    v31 = 0u;
    if (result >= 18)
    {
      if (dword_1EBF46B00 >= 5)
      {
        v7 = *__error();
        v8 = _SILogForLogForCategory(13);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 134218242;
          v27 = v6;
          v28 = 2112;
          v29 = v1;
          _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "completion weight array too large (%ld): %@", &v26, 0x16u);
        }

        result = __error();
        *result = v7;
      }

      goto LABEL_35;
    }

    if (result == 17)
    {
      v9 = CFNumberGetTypeID();
    }

    else
    {
      v16 = *__error();
      v17 = _SILogForLogForCategory(1);
      v18 = dword_1EBF46AD0 < 3;
      if (os_log_type_enabled(v17, (dword_1EBF46AD0 < 3)))
      {
        v26 = 134218242;
        v27 = v6;
        v28 = 2112;
        v29 = v1;
        _os_log_impl(&dword_1C278D000, v17, v18, "*warn* completion weight array incomplete (%ld): %@", &v26, 0x16u);
      }

      *__error() = v16;
      v9 = CFNumberGetTypeID();
      if (v6 < 1)
      {
LABEL_27:
        result = memcpy(&s_completion_weights, &__src, 8 * v6);
        goto LABEL_35;
      }
    }

    v19 = v9;
    v20 = 0;
    v21 = &__src;
    while (1)
    {
      v22 = CFArrayGetValueAtIndex(v1, v20);
      if (CFGetTypeID(v22) != v19)
      {
        v10 = *__error();
        v23 = _SILogForLogForCategory(1);
        v24 = dword_1EBF46AD0 < 3;
        if (!os_log_type_enabled(v23, (dword_1EBF46AD0 < 3)))
        {
          goto LABEL_34;
        }

        v26 = 134218242;
        v27 = v20;
        v28 = 2112;
        v29 = v22;
        v13 = "*warn* Non-numeric in weight array at index %ld: %@";
        goto LABEL_32;
      }

      if (!CFNumberGetValue(v22, kCFNumberDoubleType, v21))
      {
        break;
      }

      ++v20;
      v21 = (v21 + 8);
      if (v6 == v20)
      {
        goto LABEL_27;
      }
    }

    v10 = *__error();
    v23 = _SILogForLogForCategory(1);
    v24 = dword_1EBF46AD0 < 3;
    if (!os_log_type_enabled(v23, (dword_1EBF46AD0 < 3)))
    {
      goto LABEL_34;
    }

    v26 = 134218242;
    v27 = v20;
    v28 = 2112;
    v29 = v22;
    v13 = "*warn* Bad value in weight array at index %ld: %@";
LABEL_32:
    v14 = v23;
    v15 = v24;
  }

  _os_log_impl(&dword_1C278D000, v14, v15, v13, &v26, 0x16u);
LABEL_34:
  result = __error();
  *result = v10;
LABEL_35:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SIGetCompletionOptionsFromRankingWeights()
{
  if (unk_1EDD784C8 == 1.0)
  {
    v0 = (2 * (*(&xmmword_1EDD784B8 + 1) == 1.0)) | 4;
  }

  else
  {
    v0 = 2 * (*(&xmmword_1EDD784B8 + 1) == 1.0);
  }

  if (*&qword_1EDD784D0 == 1.0)
  {
    return v0 | 8;
  }

  else
  {
    return v0;
  }
}

uint64_t si_enqueue_barrier_routine(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, unsigned int a5)
{
  pthread_mutex_lock((a2 + 48));
  if (*(a2 + 36))
  {
    pthread_mutex_unlock((a2 + 48));

    return (a3)(a4, 1);
  }

  else
  {
    si_enqueue_barrier_for_job(*(a1 + 8 * a5 + 1008), a3, a4, a2);

    return pthread_mutex_unlock((a2 + 48));
  }
}

uint64_t preadvall(uint64_t __fd, uint64_t a2, off_t a3)
{
  while (1)
  {
    v6 = *(a2 + 8);
    if (!v6)
    {
      break;
    }

    v7 = pread(__fd, *a2, v6, a3);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = *__error();
      if (v8 != 4 && (!g_prot_error_callback || ((*(g_prot_error_callback + 16))(g_prot_error_callback, __fd, v8, 16) & 1) == 0))
      {
        return -v8;
      }
    }

    else
    {
      if (!v7)
      {
        return 4294967274;
      }

      v9 = *(a2 + 8);
      v10 = v7 - v9;
      if (v7 >= v9)
      {
        if (v7 != v9)
        {
          result = 0;
          v12 = *(a2 + 16) + v10;
          v13 = *(a2 + 24) - v10;
          *(a2 + 16) = v12;
          *(a2 + 24) = v13;
          return result;
        }

        return 0;
      }

      a3 += v7;
      *a2 += v7;
      *(a2 + 8) = v9 - v7;
    }
  }

  return 0;
}

uint64_t pwritevall(uint64_t __fd, void *a2, int a3, off_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v8 = pwrite(__fd, *a2, a2[1], a4);
    if ((v8 & 0x8000000000000000) == 0)
    {
      a4 += v8;
      v9 = &a2[2 * (v5 - 1) + 2];
      while (1)
      {
        v10 = a2[1];
        v11 = v8 >= v10;
        v12 = v8 - v10;
        if (!v11)
        {
          break;
        }

        a2 += 2;
        v8 = v12;
        if (!--v5)
        {
          if (!v12)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      v9 = a2;
      v12 = v8;
      if (v8)
      {
LABEL_9:
        v13 = *v9 + v12;
        v14 = v9[1] - v12;
        *v9 = v13;
        v9[1] = v14;
      }

LABEL_10:
      a2 = v9;
      goto LABEL_14;
    }

    v15 = *__error();
    if (v15 != 4 && (!g_prot_error_callback || ((*(g_prot_error_callback + 16))(g_prot_error_callback, __fd, v15, 17) & 1) == 0))
    {
      return -v15;
    }

LABEL_14:
    if (!v5)
    {
      return 0;
    }
  }
}

uint64_t writevall(uint64_t a1, iovec *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  do
  {
    while (1)
    {
      v6 = writev(a1, a2, v3);
      if ((v6 & 0x8000000000000000) != 0)
      {
        break;
      }

      v7 = &a2[(v3 - 1) + 1];
      while (1)
      {
        iov_len = a2->iov_len;
        v9 = v6 >= iov_len;
        v10 = v6 - iov_len;
        if (!v9)
        {
          break;
        }

        ++a2;
        v6 = v10;
        v11 = v3 == 1;
        v3 = 1;
        if (v11)
        {
          v3 = 0;
          if (!v10)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      v7 = a2;
      v10 = v6;
      if (!v6)
      {
        goto LABEL_17;
      }

LABEL_16:
      v13 = v7->iov_base + v10;
      v14 = v7->iov_len - v10;
      v7->iov_base = v13;
      v7->iov_len = v14;
LABEL_17:
      a2 = v7;
      if (!v3)
      {
        return 0;
      }
    }

    v12 = *__error();
  }

  while (v12 == 4 || g_prot_error_callback && ((*(g_prot_error_callback + 16))(g_prot_error_callback, a1, v12, 18) & 1) != 0);
  return -v12;
}

off_t get_file_size(int a1)
{
  memset(&v2, 0, sizeof(v2));
  if (fstat(a1, &v2))
  {
    return -*__error();
  }

  else
  {
    return v2.st_size;
  }
}

void SIModelManager::loadDictionaryForLanguage(SIModelManager *this, const char *a2)
{
  v2 = a2;
  v42 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  v4 = CFPreferencesCopyAppValue(@"RootDirectory", @"com.apple.spotlight");
  if (v4)
  {
    v5 = v4;
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    if (MaximumSizeForEncoding >= 1024)
    {
      v8 = 1024;
    }

    else
    {
      v8 = MaximumSizeForEncoding;
    }

    CFStringGetCString(v5, buffer, v8, 0x8000100u);
    CFRelease(v5);
  }

  else
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v33 = *__error();
      v34 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "No RootDirectory set for Suggestions", __p, 2u);
      }

      *__error() = v33;
    }

    strcpy(buffer, "/var/mobile/Library/Caches/com.apple.parsecd");
  }

  memset(v40, 0, sizeof(v40));
  if (v2)
  {
    strcpy(v40, "spotlight_stopword");
  }

  else
  {
    strcpy(v40, "spotlight_phrase_dictionary");
  }

  v9 = open(buffer, 0);
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  __p[0] = v9;
  __p[1] = v40;
  v36 = 0xA00000004uLL;
  v10 = data_map32_init_with_ctx(__p);
  if (v10)
  {
    v11 = v10;
    if (v2)
    {
      std::string::basic_string[abi:nn200100]<0>(__p, this);
      v12 = &SIModelManager::getInstance(void)::instance;
    }

    else
    {
      v13 = *&xmmword_1EBF61C30;
      LOBYTE(__p[0]) = 0;
      extra_with_key = data_map_get_extra_with_key(v10, kPhraseDefaultScore, 0x12uLL, __p);
      v16 = HIDWORD(extra_with_key) == 4 && extra_with_key != 0;
      v17 = extra_with_key;
      if ((__p[0] & v16) == 0)
      {
        v17 = v13;
      }

      *&xmmword_1EBF61C30 = v17;
      LOBYTE(__p[0]) = 0;
      v18 = data_map_get_extra_with_key(v11, kPhraseStopwordScore, 0xCuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v18 & 0xFFFFFFFF00000000) == 0x400000000 && v18)
      {
        *(&xmmword_1EBF61C30 + 1) = 1.0 / v18;
      }

      LOBYTE(__p[0]) = 0;
      v19 = data_map_get_extra_with_key(v11, kPhraseIncompleteScore, 0x18uLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v19 & 0xFFFFFFFF00000000) == 0x400000000 && v19)
      {
        *&qword_1EBF61C40 = 1.0 / v19;
      }

      LOBYTE(__p[0]) = 0;
      v20 = data_map_get_extra_with_key(v11, kPhraseDiscountedScore, 0x14uLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v20 & 0xFFFFFFFF00000000) == 0x400000000 && v20)
      {
        *&qword_1EBF61C48 = 1.0 / v20;
      }

      v21 = qword_1EBF61C50;
      LOBYTE(__p[0]) = 0;
      v22 = data_map_get_extra_with_key(v11, kTotal, 0xEuLL, __p);
      v24 = HIDWORD(v22) == 4 && v22 != 0;
      v25 = v22;
      if ((__p[0] & v24) == 0)
      {
        v25 = *&v21;
      }

      qword_1EBF61C50 = *&v25;
      LOBYTE(__p[0]) = 0;
      v26 = data_map_get_extra_with_key(v11, k1gramSize, 0xEuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v26 & 0xFFFFFFFF00000000) == 0x400000000 && v26)
      {
        *&xmmword_1EBF61C60 = 1.0 / v26;
      }

      LOBYTE(__p[0]) = 0;
      v27 = data_map_get_extra_with_key(v11, k2gramSize, 0xEuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v27 & 0xFFFFFFFF00000000) == 0x400000000 && v27)
      {
        *(&xmmword_1EBF61C60 + 1) = 1.0 / v27;
      }

      LOBYTE(__p[0]) = 0;
      v28 = data_map_get_extra_with_key(v11, k3gramSize, 0xEuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v28 & 0xFFFFFFFF00000000) == 0x400000000 && v28)
      {
        *&qword_1EBF61C70 = 1.0 / v28;
      }

      LOBYTE(__p[0]) = 0;
      v29 = data_map_get_extra_with_key(v11, k4gramSize, 0xEuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v29 & 0xFFFFFFFF00000000) == 0x400000000 && v29)
      {
        *&qword_1EBF61C78 = 1.0 / v29;
      }

      LOBYTE(__p[0]) = 0;
      v30 = data_map_get_extra_with_key(v11, kNgramSize, 0xEuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v30 & 0xFFFFFFFF00000000) == 0x400000000 && v30)
      {
        *&qword_1EBF61C80 = 1.0 / v30;
      }

      LOBYTE(__p[0]) = 0;
      v31 = data_map_get_extra_with_key(v11, kNotUseLog, 0xCuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v31 & 0xFFFFFFFF00000000) == 0x400000000 && v31)
      {
        byte_1EBF61C58 = 0;
      }

      std::string::basic_string[abi:nn200100]<0>(__p, this);
      v12 = &unk_1EBF61C18;
    }

    std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12, __p)[7] = v11;
    if (SBYTE7(v36) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void *std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_26:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_26;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_26;
    }
  }
}

uint64_t SIModelManager::isStopword(SIModelManager *this, unsigned __int16 *a2, char *__s, const char *a4)
{
  if (!a2)
  {
    return 0;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v7 = std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::find<std::string>(&SIModelManager::getInstance(void)::instance, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 == &qword_1EBF61C08)
  {
    SIModelManager::loadDictionaryForLanguage(__s, 1);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v12 = __p;
  v8 = std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SIModelManager::getInstance(void)::instance, __p)[7];
  if ((v11 & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_8;
    }

    return 0;
  }

  operator delete(__p[0]);
  if (!v8)
  {
    return 0;
  }

LABEL_8:
  LOBYTE(__p[0]) = 0;
  if (data_map_get_extra_with_key(v8, this, 2 * a2, __p) == 0x400000001)
  {
    return LOBYTE(__p[0]);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void SIModelManager::getPhraseScore(uint64_t a1, char *__s, unint64_t a3, char *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a3 < 2)
  {
    if (a3 == 1)
    {
      *a4 = SIModelManager::isStopword(*a1, *(a1 + 8), __s, a4);
    }
  }

  else if (SIModelManager::isStopword(*(a1 + 16 * a3 - 16), *(a1 + 16 * a3 - 8), __s, a4))
  {
    v8 = *&qword_1EBF61C40;
    if (a3 != 2)
    {
      if (a3 - 3 >= 2)
      {
        if (a3 - 5 >= 2)
        {
          if (a3 - 7 > 1)
          {
            goto LABEL_59;
          }

          goto LABEL_57;
        }

        goto LABEL_52;
      }

      goto LABEL_48;
    }

LABEL_33:
    v28 = 0xCu;
LABEL_58:
    v37 = SIModelManager::getInstance(void)::instance[v28];
    goto LABEL_59;
  }

  if (*a4 == 1)
  {
    v8 = *&qword_1EBF61C48;
    if (a3 - 1 < 2)
    {
      goto LABEL_33;
    }

    if (a3 - 3 >= 2)
    {
      if (a3 - 5 >= 2)
      {
        if (a3 - 7 > 1)
        {
          goto LABEL_59;
        }

        goto LABEL_57;
      }

      goto LABEL_52;
    }

    goto LABEL_48;
  }

  std::string::basic_string[abi:nn200100]<0>(v39, __s);
  v9 = std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::find<std::string>(&unk_1EBF61C18, v39);
  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v9 == &qword_1EBF61C20)
  {
    SIModelManager::loadDictionaryForLanguage(__s, 0);
  }

  std::string::basic_string[abi:nn200100]<0>(v39, __s);
  v41 = v39;
  v10 = std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&unk_1EBF61C18, v39);
  v11 = v10[7];
  if (v40 < 0)
  {
    operator delete(v39[0]);
    if (v11)
    {
      goto LABEL_22;
    }

LABEL_32:
    v8 = *&qword_1EBF61C50 / *&xmmword_1EBF61C30;
    if (a3 - 1 < 2)
    {
      goto LABEL_33;
    }

    if (a3 - 3 >= 2)
    {
      if (a3 - 5 >= 2)
      {
        if (a3 - 7 > 1)
        {
          goto LABEL_59;
        }

LABEL_57:
        v28 = 0xFu;
        goto LABEL_58;
      }

LABEL_52:
      v28 = 0xEu;
      goto LABEL_58;
    }

LABEL_48:
    v28 = 0xDu;
    goto LABEL_58;
  }

  if (!v11)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (a3 <= 0)
  {
    v27 = 0;
    v17 = &v42;
  }

  else
  {
    v12 = 0;
    v13 = (a1 + 8);
    v14 = a3 & 0x7FFFFFFF;
    do
    {
      v15 = *v13;
      v13 += 4;
      v12 += v15;
      --v14;
    }

    while (v14);
    MEMORY[0x1EEE9AC00](v10);
    v17 = v39 - v16;
    bzero(v39 - v16, v18);
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = a1 + 16 * v19;
      v22 = *(v21 + 8);
      if (v22 >= 1)
      {
        v23 = *v21;
        v24 = v22 & 0x7FFFFFFF;
        v25 = &v17[2 * v20];
        do
        {
          v26 = *v23++;
          *v25 = v26;
          v25 += 2;
          --v24;
        }

        while (v24);
      }

      v20 += v22;
      ++v19;
    }

    while (v19 != (a3 & 0x7FFFFFFF));
    v27 = 2 * v12;
  }

  v29 = *&qword_1EBF61C50;
  v30 = *&xmmword_1EBF61C30;
  LOBYTE(v39[0]) = 0;
  extra_with_key = data_map_get_extra_with_key(v11, v17, v27, v39);
  v32 = HIDWORD(extra_with_key) != 4 || extra_with_key == 0;
  v33 = extra_with_key;
  v34 = !v32;
  if ((v39[0] & v34) == 0)
  {
    v33 = v30;
  }

  v8 = v29 / v33;
  if (a3 - 1 >= 2)
  {
    if (a3 - 3 >= 2)
    {
      if (a3 - 5 >= 2)
      {
        if (a3 - 7 > 1)
        {
          goto LABEL_59;
        }

        v35 = 0xFu;
      }

      else
      {
        v35 = 0xEu;
      }
    }

    else
    {
      v35 = 0xDu;
    }
  }

  else
  {
    v35 = 0xCu;
  }

  v36 = SIModelManager::getInstance(void)::instance[v35];
LABEL_59:
  log(v8);
  v38 = *MEMORY[0x1E69E9840];
}

void SIModelManager::getInstance(SIModelManager *this)
{
  {
    qword_1EBF61C08 = 0;
    SIModelManager::getInstance(void)::instance = &qword_1EBF61C08;
    qword_1EBF61C20 = 0;
    qword_1EBF61C28 = 0;
    qword_1EBF61C10 = 0;
    unk_1EBF61C18 = &qword_1EBF61C20;
    xmmword_1EBF61C30 = xmmword_1C2BFA380;
    *&qword_1EBF61C40 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
    qword_1EBF61C50 = 0x3FF0000000000000;
    byte_1EBF61C58 = 1;
    __asm { FMOV            V0.2D, #1.0 }

    xmmword_1EBF61C60 = _Q0;
    *&qword_1EBF61C70 = xmmword_1C2BFA390;
    qword_1EBF61C80 = 0x3FD0000000000000;
  }
}

void analytics::SampledLogger<analytics::GetEvent>::logEvent(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 88));
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = v5 - v4;
  v7 = (v5 - v4) >> 3;
  if (v7 >= *(a1 + 24))
  {
    ++*(a1 + 80);
    v11 = rand() % *(a1 + 80);
    v12 = *(a1 + 56);
    if (v11 < (*(a1 + 64) - v12) >> 3)
    {
      v13 = *a2;
      *a2 = 0;
      v14 = *(v12 + 8 * v11);
      *(v12 + 8 * v11) = v13;
      if (v14)
      {
        MEMORY[0x1C691FEF0](v14, 0x1000C4073594BB7);
      }
    }
  }

  else
  {
    v8 = *(a1 + 72);
    if (v5 >= v8)
    {
      v15 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v16 = v8 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v18 = *a2;
      *a2 = 0;
      *(8 * v7) = v18;
      v10 = 8 * v7 + 8;
      memcpy(0, v4, v6);
      *(a1 + 56) = 0;
      *(a1 + 64) = v10;
      *(a1 + 72) = 0;
      if (v4)
      {
        operator delete(v4);
      }
    }

    else
    {
      v9 = *a2;
      *a2 = 0;
      *v5 = v9;
      v10 = (v5 + 8);
    }

    *(a1 + 64) = v10;
  }

  std::mutex::unlock((a1 + 88));
}

void analytics::SampledLogger<analytics::GetEvent>::~SampledLogger(uint64_t a1)
{
  analytics::SampledLogger<analytics::GetEvent>::~SampledLogger(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t analytics::SampledLogger<analytics::GetEvent>::~SampledLogger(uint64_t a1)
{
  *a1 = &unk_1F427BEE0;
  std::mutex::~mutex((a1 + 88));
  v5 = (a1 + 56);
  std::vector<std::unique_ptr<analytics::GetEvent>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void std::vector<std::unique_ptr<analytics::GetEvent>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<analytics::GetEvent>>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<analytics::GetEvent>>::__base_destruct_at_end[abi:nn200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x1C691FEF0](result, 0x1000C4073594BB7);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void analytics::SampledLogger<analytics::PutEvent>::logEvent(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 88));
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = v5 - v4;
  v7 = (v5 - v4) >> 3;
  if (v7 >= *(a1 + 24))
  {
    ++*(a1 + 80);
    v11 = rand() % *(a1 + 80);
    v12 = *(a1 + 56);
    if (v11 < (*(a1 + 64) - v12) >> 3)
    {
      v13 = *a2;
      *a2 = 0;
      v14 = *(v12 + 8 * v11);
      *(v12 + 8 * v11) = v13;
      if (v14)
      {
        MEMORY[0x1C691FEF0](v14, 0x1000C4022EED179);
      }
    }
  }

  else
  {
    v8 = *(a1 + 72);
    if (v5 >= v8)
    {
      v15 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v16 = v8 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v18 = *a2;
      *a2 = 0;
      *(8 * v7) = v18;
      v10 = 8 * v7 + 8;
      memcpy(0, v4, v6);
      *(a1 + 56) = 0;
      *(a1 + 64) = v10;
      *(a1 + 72) = 0;
      if (v4)
      {
        operator delete(v4);
      }
    }

    else
    {
      v9 = *a2;
      *a2 = 0;
      *v5 = v9;
      v10 = (v5 + 8);
    }

    *(a1 + 64) = v10;
  }

  std::mutex::unlock((a1 + 88));
}

void analytics::SampledLogger<analytics::PutEvent>::~SampledLogger(uint64_t a1)
{
  analytics::SampledLogger<analytics::PutEvent>::~SampledLogger(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t analytics::SampledLogger<analytics::PutEvent>::~SampledLogger(uint64_t a1)
{
  *a1 = &unk_1F427BF08;
  std::mutex::~mutex((a1 + 88));
  v5 = (a1 + 56);
  std::vector<std::unique_ptr<analytics::PutEvent>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void std::vector<std::unique_ptr<analytics::PutEvent>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<analytics::PutEvent>>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<analytics::PutEvent>>::__base_destruct_at_end[abi:nn200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x1C691FEF0](result, 0x1000C4022EED179);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void analytics::SampledLogger<analytics::DeleteEvent>::logEvent(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 88));
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = v5 - v4;
  v7 = (v5 - v4) >> 3;
  if (v7 >= *(a1 + 24))
  {
    ++*(a1 + 80);
    v11 = rand() % *(a1 + 80);
    v12 = *(a1 + 56);
    if (v11 < (*(a1 + 64) - v12) >> 3)
    {
      v13 = *a2;
      *a2 = 0;
      v14 = *(v12 + 8 * v11);
      *(v12 + 8 * v11) = v13;
      if (v14)
      {
        MEMORY[0x1C691FEF0](v14, 0x1000C4073594BB7);
      }
    }
  }

  else
  {
    v8 = *(a1 + 72);
    if (v5 >= v8)
    {
      v15 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v16 = v8 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v18 = *a2;
      *a2 = 0;
      *(8 * v7) = v18;
      v10 = 8 * v7 + 8;
      memcpy(0, v4, v6);
      *(a1 + 56) = 0;
      *(a1 + 64) = v10;
      *(a1 + 72) = 0;
      if (v4)
      {
        operator delete(v4);
      }
    }

    else
    {
      v9 = *a2;
      *a2 = 0;
      *v5 = v9;
      v10 = (v5 + 8);
    }

    *(a1 + 64) = v10;
  }

  std::mutex::unlock((a1 + 88));
}

void analytics::SampledLogger<analytics::DeleteEvent>::~SampledLogger(uint64_t a1)
{
  analytics::SampledLogger<analytics::DeleteEvent>::~SampledLogger(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t analytics::SampledLogger<analytics::DeleteEvent>::~SampledLogger(uint64_t a1)
{
  *a1 = &unk_1F427BF30;
  std::mutex::~mutex((a1 + 88));
  v5 = (a1 + 56);
  std::vector<std::unique_ptr<analytics::GetEvent>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void analytics::XpcActivityScheduler::start(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  if (v4 >= v5)
  {
    v7 = *(a1 + 80);
    v8 = (v4 - v7) >> 5;
    if ((v8 + 1) >> 59)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v9 = v5 - v7;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (!(v11 >> 59))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v12 = 32 * v8;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v12, a2);
    v6 = v12 + 32;
    v13 = *(a1 + 80);
    v14 = *(a1 + 88);
    v15 = v12 + v13 - v14;
    if (v14 != v13)
    {
      v16 = *(a1 + 80);
      v17 = v15;
      do
      {
        v18 = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v17, v16);
        v16 += 32;
        v17 = v18 + 32;
      }

      while (v16 != v14);
      do
      {
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v13);
        v13 += 32;
      }

      while (v13 != v14);
    }

    v19 = *(a1 + 80);
    *(a1 + 80) = v15;
    *(a1 + 88) = v6;
    *(a1 + 96) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v6 = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v4, a2) + 32;
  }

  *(a1 + 88) = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN9analytics20XpcActivityScheduler23registerXpcActivityOnceEv_block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = a1;
  if (analytics::XpcActivityScheduler::registerXpcActivityOnce(void)::onceToken != -1)
  {
    dispatch_once(&analytics::XpcActivityScheduler::registerXpcActivityOnce(void)::onceToken, block);
  }

  std::mutex::unlock((a1 + 16));
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN9analytics20XpcActivityScheduler23registerXpcActivityOnceEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x1E69E9D88], 1);
  xpc_dictionary_set_int64(v2, *MEMORY[0x1E69E9C68], *MEMORY[0x1E69E9CC8]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x1E69E9C98], *MEMORY[0x1E69E9CE8]);
  v3 = *(v1 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN9analytics20XpcActivityScheduler23registerXpcActivityOnceEv_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_19_2517;
  v4[4] = v1;
  v3("com.apple.spotlight.textstore.Analytics", v2, v4);
  xpc_release(v2);
}

void ___ZN9analytics20XpcActivityScheduler23registerXpcActivityOnceEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock((v1 + 16));
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  while (v2 != v3)
  {
    v4 = *(v2 + 24);
    if (!v4)
    {
      v5 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
      return;
    }

    (*(*v4 + 48))(v4);
    v2 += 32;
  }

  std::mutex::unlock((v1 + 16));
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void analytics::XpcActivityScheduler::~XpcActivityScheduler(analytics::XpcActivityScheduler *this)
{
  *this = &unk_1F427BF78;
  v1 = (this + 16);
  v2 = (this + 80);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::mutex::~mutex(v1);

  JUMPOUT(0x1C691FEF0);
}

{
  *this = &unk_1F427BF78;
  v1 = (this + 16);
  v2 = (this + 80);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::mutex::~mutex(v1);
}

void std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__function::__func<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        std::mutex::lock((v5 + 88));
        v12 = *(v5 + 56);
        v10 = v12;
        v13 = *(v5 + 72);
        *(v5 + 72) = 0u;
        *(v5 + 56) = 0u;
        std::mutex::unlock((v5 + 88));
        for (i = v10; i != *(&v10 + 1); ++i)
        {
          v7 = *(v5 + 32);
          v8 = *i;
          *i = 0;
          v11 = v8;
          (*(*v7 + 16))(v7, &v11);
          v9 = v11;
          v11 = 0;
          if (v9)
          {
            MEMORY[0x1C691FEF0](v9, 0x1000C4073594BB7);
          }
        }

        v14 = &v12;
        std::vector<std::unique_ptr<analytics::GetEvent>>::__destroy_vector::operator()[abi:nn200100](&v14);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void std::__function::__func<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F427BFD8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F427BFD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1C691FEF0);
}

void *std::__function::__func<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F427BFD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void analytics::anonymous namespace::CoreAnalyticsLogger<analytics::GetEvent>::logEvent(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v2 = analytics_send_event_lazy();
  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = (2 * (dword_1EBF46AEC < 4));
  v6 = os_log_type_enabled(v4, v5);
  if (v2)
  {
    if (v6)
    {
      *buf = 136315138;
      v10 = "com.apple.spotlight.textstore.Get";
      v7 = "successfully logged event: %s";
LABEL_8:
      _os_log_impl(&dword_1C278D000, v4, v5, v7, buf, 0xCu);
    }
  }

  else if (v6)
  {
    *buf = 136315138;
    v10 = "com.apple.spotlight.textstore.Get";
    v7 = "event logging disabled: %s";
    goto LABEL_8;
  }

  *__error() = v3;
  v8 = *MEMORY[0x1E69E9840];
}

xpc_object_t ___ZN9analytics12_GLOBAL__N_119CoreAnalyticsLoggerINS_8GetEventEE8logEventENSt3__110unique_ptrIS2_NS4_14default_deleteIS2_EEEE_block_invoke(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 32);
  memset(v45, 0, sizeof(v45));
  __p = 0;
  v43 = 0;
  v44 = 0;
  if (*(v2 + 1) == 1)
  {
    v41 = "success";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    xpc_BOOL_create(*v2);
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 8) == 1)
  {
    v41 = "error_code";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    xpc_int64_create(*(v2 + 4));
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 24) == 1)
  {
    v41 = "requested_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v3 = xpc_int64_create(*(v2 + 16));
    v4 = v3;
    if (v44)
    {
      MEMORY[0] = v3;
      v1 = 8;
    }

    else
    {
      v5 = __p;
      v6 = -__p;
      v7 = -__p >> 3;
      v8 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v9 = v44 - __p;
      if ((v44 - __p) >> 2 > v8)
      {
        v8 = v9 >> 2;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v8;
      }

      if (v10)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v10);
      }

      v11 = (8 * v7);
      *v11 = v4;
      v1 = (v11 + 1);
      memcpy(0, v5, v6);
      __p = 0;
      v44 = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    v43 = v1;
  }

  if (*(v2 + 40) == 1)
  {
    v41 = "hot_shard_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v12 = xpc_int64_create(*(v2 + 32));
    v13 = v12;
    if (v1 >= v44)
    {
      v14 = __p;
      v15 = v1 - __p;
      v16 = (v1 - __p) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v18 = v44 - __p;
      if ((v44 - __p) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v19);
      }

      v20 = (8 * v16);
      *v20 = v13;
      v1 = (v20 + 1);
      memcpy(0, v14, v15);
      __p = 0;
      v44 = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v1 = v12;
      v1 += 8;
    }

    v43 = v1;
  }

  if (*(v2 + 56) == 1)
  {
    v41 = "cold_shard_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v21 = xpc_int64_create(*(v2 + 48));
    v22 = v21;
    if (v1 >= v44)
    {
      v23 = __p;
      v24 = v1 - __p;
      v25 = (v1 - __p) >> 3;
      v26 = v25 + 1;
      if ((v25 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v27 = v44 - __p;
      if ((v44 - __p) >> 2 > v26)
      {
        v26 = v27 >> 2;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v28);
      }

      v29 = (8 * v25);
      *v29 = v22;
      v1 = (v29 + 1);
      memcpy(0, v23, v24);
      __p = 0;
      v44 = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v1 = v21;
      v1 += 8;
    }

    v43 = v1;
  }

  if (*(v2 + 68) != 1)
  {
    goto LABEL_61;
  }

  v41 = "elapsed_ms";
  std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
  v30 = xpc_double_create(*(v2 + 64));
  v31 = v30;
  if (v1 >= v44)
  {
    v33 = __p;
    v34 = v1 - __p;
    v35 = (v1 - __p) >> 3;
    v36 = v35 + 1;
    if (!((v35 + 1) >> 61))
    {
      v37 = v44 - __p;
      if ((v44 - __p) >> 2 > v36)
      {
        v36 = v37 >> 2;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v38);
      }

      *(8 * v35) = v31;
      v32 = 8 * v35 + 8;
      memcpy(0, v33, v34);
      __p = 0;
      v44 = 0;
      if (v33)
      {
        operator delete(v33);
      }

      goto LABEL_60;
    }

LABEL_66:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  *v1 = v30;
  v32 = v1 + 8;
LABEL_60:
  v43 = v32;
LABEL_61:
  if (__p)
  {
    operator delete(__p);
  }

  if (v45[0])
  {
    operator delete(v45[0]);
  }

  return v39;
}

void __destroy_helper_block_8_32c47_ZTSNSt3__110shared_ptrIN9analytics8GetEventEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_8_32c47_ZTSNSt3__110shared_ptrIN9analytics8GetEventEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::vector<char const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

xpc_object_t analytics::anonymous namespace::to_dictionary(uint64_t a1, xpc_object_t **a2)
{
  v4 = *a1;
  v6 = *(a1 + 8) - v4;
  v7 = *a2;
  if (v6 != a2[1] - v7)
  {
    __assert_rtn("to_dictionary", "Analytics.cpp", 22, "keys.size() == values.size()");
  }

  v9 = xpc_dictionary_create(v4, v7, v6 >> 3);
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    do
    {
      v12 = *v10++;
      xpc_release(v12);
    }

    while (v10 != v11);
    v10 = *a2;
  }

  *(a1 + 8) = *a1;
  a2[1] = v10;
  return v9;
}

uint64_t std::__shared_ptr_pointer<analytics::GetEvent  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C691FEF0);
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::GetEvent  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__shared_ptr_emplace<analytics::anonymous namespace::CoreAnalyticsLogger<analytics::GetEvent>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427C020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__function::__func<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        std::mutex::lock((v5 + 88));
        v12 = *(v5 + 56);
        v10 = v12;
        v13 = *(v5 + 72);
        *(v5 + 72) = 0u;
        *(v5 + 56) = 0u;
        std::mutex::unlock((v5 + 88));
        for (i = v10; i != *(&v10 + 1); ++i)
        {
          v7 = *(v5 + 32);
          v8 = *i;
          *i = 0;
          v11 = v8;
          (*(*v7 + 16))(v7, &v11);
          v9 = v11;
          v11 = 0;
          if (v9)
          {
            MEMORY[0x1C691FEF0](v9, 0x1000C4022EED179);
          }
        }

        v14 = &v12;
        std::vector<std::unique_ptr<analytics::PutEvent>>::__destroy_vector::operator()[abi:nn200100](&v14);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void std::__function::__func<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F427C120;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F427C120;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1C691FEF0);
}

void *std::__function::__func<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F427C120;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void analytics::anonymous namespace::CoreAnalyticsLogger<analytics::PutEvent>::logEvent(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v2 = analytics_send_event_lazy();
  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = (2 * (dword_1EBF46AEC < 4));
  v6 = os_log_type_enabled(v4, v5);
  if (v2)
  {
    if (v6)
    {
      *buf = 136315138;
      v10 = "com.apple.spotlight.textstore.Put";
      v7 = "successfully logged event: %s";
LABEL_8:
      _os_log_impl(&dword_1C278D000, v4, v5, v7, buf, 0xCu);
    }
  }

  else if (v6)
  {
    *buf = 136315138;
    v10 = "com.apple.spotlight.textstore.Put";
    v7 = "event logging disabled: %s";
    goto LABEL_8;
  }

  *__error() = v3;
  v8 = *MEMORY[0x1E69E9840];
}

xpc_object_t ___ZN9analytics12_GLOBAL__N_119CoreAnalyticsLoggerINS_8PutEventEE8logEventENSt3__110unique_ptrIS2_NS4_14default_deleteIS2_EEEE_block_invoke(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 32);
  memset(v27, 0, sizeof(v27));
  __p = 0;
  v25 = 0;
  v26 = 0;
  if (*(v2 + 1) == 1)
  {
    v23 = "success";
    std::vector<char const*>::push_back[abi:nn200100](v27, &v23);
    xpc_BOOL_create(*v2);
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 8) == 1)
  {
    v23 = "error_code";
    std::vector<char const*>::push_back[abi:nn200100](v27, &v23);
    xpc_int64_create(*(v2 + 4));
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 24) == 1)
  {
    v23 = "doc_size";
    std::vector<char const*>::push_back[abi:nn200100](v27, &v23);
    v3 = xpc_int64_create(*(v2 + 16));
    v4 = v3;
    if (v26)
    {
      MEMORY[0] = v3;
      v1 = 8;
    }

    else
    {
      v5 = __p;
      v6 = -__p;
      v7 = -__p >> 3;
      v8 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        goto LABEL_38;
      }

      v9 = v26 - __p;
      if ((v26 - __p) >> 2 > v8)
      {
        v8 = v9 >> 2;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v8;
      }

      if (v10)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v10);
      }

      v11 = (8 * v7);
      *v11 = v4;
      v1 = (v11 + 1);
      memcpy(0, v5, v6);
      __p = 0;
      v26 = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    v25 = v1;
  }

  if (*(v2 + 36) != 1)
  {
    goto LABEL_33;
  }

  v23 = "elapsed_ms";
  std::vector<char const*>::push_back[abi:nn200100](v27, &v23);
  v12 = xpc_double_create(*(v2 + 32));
  v13 = v12;
  if (v1 >= v26)
  {
    v15 = __p;
    v16 = v1 - __p;
    v17 = (v1 - __p) >> 3;
    v18 = v17 + 1;
    if (!((v17 + 1) >> 61))
    {
      v19 = v26 - __p;
      if ((v26 - __p) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v20);
      }

      *(8 * v17) = v13;
      v14 = 8 * v17 + 8;
      memcpy(0, v15, v16);
      __p = 0;
      v26 = 0;
      if (v15)
      {
        operator delete(v15);
      }

      goto LABEL_32;
    }

LABEL_38:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  *v1 = v12;
  v14 = v1 + 8;
LABEL_32:
  v25 = v14;
LABEL_33:
  if (__p)
  {
    operator delete(__p);
  }

  if (v27[0])
  {
    operator delete(v27[0]);
  }

  return v21;
}

void __destroy_helper_block_8_32c47_ZTSNSt3__110shared_ptrIN9analytics8PutEventEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_8_32c47_ZTSNSt3__110shared_ptrIN9analytics8PutEventEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<analytics::PutEvent  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C691FEF0);
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::PutEvent  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__shared_ptr_emplace<analytics::anonymous namespace::CoreAnalyticsLogger<analytics::PutEvent>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427C168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__function::__func<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        std::mutex::lock((v5 + 88));
        v12 = *(v5 + 56);
        v10 = v12;
        v13 = *(v5 + 72);
        *(v5 + 72) = 0u;
        *(v5 + 56) = 0u;
        std::mutex::unlock((v5 + 88));
        for (i = v10; i != *(&v10 + 1); ++i)
        {
          v7 = *(v5 + 32);
          v8 = *i;
          *i = 0;
          v11 = v8;
          (*(*v7 + 16))(v7, &v11);
          v9 = v11;
          v11 = 0;
          if (v9)
          {
            MEMORY[0x1C691FEF0](v9, 0x1000C4073594BB7);
          }
        }

        v14 = &v12;
        std::vector<std::unique_ptr<analytics::GetEvent>>::__destroy_vector::operator()[abi:nn200100](&v14);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void std::__function::__func<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F427C268;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F427C268;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1C691FEF0);
}

void *std::__function::__func<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F427C268;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void analytics::anonymous namespace::CoreAnalyticsLogger<analytics::DeleteEvent>::logEvent(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v2 = analytics_send_event_lazy();
  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = (2 * (dword_1EBF46AEC < 4));
  v6 = os_log_type_enabled(v4, v5);
  if (v2)
  {
    if (v6)
    {
      *buf = 136315138;
      v10 = "com.apple.spotlight.textstore.Delete";
      v7 = "successfully logged event: %s";
LABEL_8:
      _os_log_impl(&dword_1C278D000, v4, v5, v7, buf, 0xCu);
    }
  }

  else if (v6)
  {
    *buf = 136315138;
    v10 = "com.apple.spotlight.textstore.Delete";
    v7 = "event logging disabled: %s";
    goto LABEL_8;
  }

  *__error() = v3;
  v8 = *MEMORY[0x1E69E9840];
}

xpc_object_t ___ZN9analytics12_GLOBAL__N_119CoreAnalyticsLoggerINS_11DeleteEventEE8logEventENSt3__110unique_ptrIS2_NS4_14default_deleteIS2_EEEE_block_invoke(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 32);
  memset(v45, 0, sizeof(v45));
  __p = 0;
  v43 = 0;
  v44 = 0;
  if (*(v2 + 1) == 1)
  {
    v41 = "success";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    xpc_BOOL_create(*v2);
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 8) == 1)
  {
    v41 = "error_code";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    xpc_int64_create(*(v2 + 4));
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 24) == 1)
  {
    v41 = "requested_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v3 = xpc_int64_create(*(v2 + 16));
    v4 = v3;
    if (v44)
    {
      MEMORY[0] = v3;
      v1 = 8;
    }

    else
    {
      v5 = __p;
      v6 = -__p;
      v7 = -__p >> 3;
      v8 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v9 = v44 - __p;
      if ((v44 - __p) >> 2 > v8)
      {
        v8 = v9 >> 2;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v8;
      }

      if (v10)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v10);
      }

      v11 = (8 * v7);
      *v11 = v4;
      v1 = (v11 + 1);
      memcpy(0, v5, v6);
      __p = 0;
      v44 = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    v43 = v1;
  }

  if (*(v2 + 40) == 1)
  {
    v41 = "hot_shard_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v12 = xpc_int64_create(*(v2 + 32));
    v13 = v12;
    if (v1 >= v44)
    {
      v14 = __p;
      v15 = v1 - __p;
      v16 = (v1 - __p) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v18 = v44 - __p;
      if ((v44 - __p) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v19);
      }

      v20 = (8 * v16);
      *v20 = v13;
      v1 = (v20 + 1);
      memcpy(0, v14, v15);
      __p = 0;
      v44 = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v1 = v12;
      v1 += 8;
    }

    v43 = v1;
  }

  if (*(v2 + 56) == 1)
  {
    v41 = "cold_shard_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v21 = xpc_int64_create(*(v2 + 48));
    v22 = v21;
    if (v1 >= v44)
    {
      v23 = __p;
      v24 = v1 - __p;
      v25 = (v1 - __p) >> 3;
      v26 = v25 + 1;
      if ((v25 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v27 = v44 - __p;
      if ((v44 - __p) >> 2 > v26)
      {
        v26 = v27 >> 2;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v28);
      }

      v29 = (8 * v25);
      *v29 = v22;
      v1 = (v29 + 1);
      memcpy(0, v23, v24);
      __p = 0;
      v44 = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v1 = v21;
      v1 += 8;
    }

    v43 = v1;
  }

  if (*(v2 + 68) != 1)
  {
    goto LABEL_61;
  }

  v41 = "elapsed_ms";
  std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
  v30 = xpc_double_create(*(v2 + 64));
  v31 = v30;
  if (v1 >= v44)
  {
    v33 = __p;
    v34 = v1 - __p;
    v35 = (v1 - __p) >> 3;
    v36 = v35 + 1;
    if (!((v35 + 1) >> 61))
    {
      v37 = v44 - __p;
      if ((v44 - __p) >> 2 > v36)
      {
        v36 = v37 >> 2;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v38);
      }

      *(8 * v35) = v31;
      v32 = 8 * v35 + 8;
      memcpy(0, v33, v34);
      __p = 0;
      v44 = 0;
      if (v33)
      {
        operator delete(v33);
      }

      goto LABEL_60;
    }

LABEL_66:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  *v1 = v30;
  v32 = v1 + 8;
LABEL_60:
  v43 = v32;
LABEL_61:
  if (__p)
  {
    operator delete(__p);
  }

  if (v45[0])
  {
    operator delete(v45[0]);
  }

  return v39;
}

void __destroy_helper_block_8_32c51_ZTSNSt3__110shared_ptrIN9analytics11DeleteEventEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_8_32c51_ZTSNSt3__110shared_ptrIN9analytics11DeleteEventEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<analytics::DeleteEvent  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C691FEF0);
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::DeleteEvent  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__shared_ptr_emplace<analytics::anonymous namespace::CoreAnalyticsLogger<analytics::DeleteEvent>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427C2B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void analytics::anonymous namespace::CoreAnalyticsLogger<analytics::OpenEvent>::logEvent(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v2 = analytics_send_event_lazy();
  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = (2 * (dword_1EBF46AEC < 4));
  v6 = os_log_type_enabled(v4, v5);
  if (v2)
  {
    if (v6)
    {
      *buf = 136315138;
      v10 = "com.apple.spotlight.textstore.Open";
      v7 = "successfully logged event: %s";
LABEL_8:
      _os_log_impl(&dword_1C278D000, v4, v5, v7, buf, 0xCu);
    }
  }

  else if (v6)
  {
    *buf = 136315138;
    v10 = "com.apple.spotlight.textstore.Open";
    v7 = "event logging disabled: %s";
    goto LABEL_8;
  }

  *__error() = v3;
  v8 = *MEMORY[0x1E69E9840];
}

xpc_object_t ___ZN9analytics12_GLOBAL__N_119CoreAnalyticsLoggerINS_9OpenEventEE8logEventENSt3__110unique_ptrIS2_NS4_14default_deleteIS2_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  memset(v91, 0, sizeof(v91));
  __p = 0;
  v89 = 0;
  v90 = 0;
  if (*(v1 + 4) == 1)
  {
    v87 = "open_type";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v2 = "load";
    if (*v1 != 1)
    {
      v2 = 0;
    }

    if (*v1)
    {
      v3 = v2;
    }

    else
    {
      v3 = "create";
    }

    v4 = xpc_string_create(v3);
    v5 = v4;
    v6 = v89;
    if (v89 >= v90)
    {
      v8 = (v89 - __p) >> 3;
      if ((v8 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v9 = (v90 - __p) >> 2;
      if (v9 <= v8 + 1)
      {
        v9 = v8 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v10);
      }

      *(8 * v8) = v5;
      v7 = 8 * v8 + 8;
      v11 = __p;
      v12 = (8 * v8 - (v89 - __p));
      memcpy(v12, __p, v89 - __p);
      __p = v12;
      v90 = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v89 = v4;
      v7 = (v6 + 8);
    }

    v89 = v7;
  }

  if (*(v1 + 9) == 1)
  {
    v87 = "success";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v13 = xpc_BOOL_create(*(v1 + 8));
    v14 = v13;
    v15 = v89;
    if (v89 >= v90)
    {
      v17 = (v89 - __p) >> 3;
      if ((v17 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v18 = (v90 - __p) >> 2;
      if (v18 <= v17 + 1)
      {
        v18 = v17 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v19);
      }

      *(8 * v17) = v14;
      v16 = 8 * v17 + 8;
      v20 = __p;
      v21 = (8 * v17 - (v89 - __p));
      memcpy(v21, __p, v89 - __p);
      __p = v21;
      v90 = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v89 = v13;
      v16 = (v15 + 8);
    }

    v89 = v16;
  }

  if (*(v1 + 16) == 1)
  {
    v87 = "error_code";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v22 = xpc_int64_create(*(v1 + 12));
    v23 = v22;
    v24 = v89;
    if (v89 >= v90)
    {
      v26 = (v89 - __p) >> 3;
      if ((v26 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v27 = (v90 - __p) >> 2;
      if (v27 <= v26 + 1)
      {
        v27 = v26 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v28);
      }

      *(8 * v26) = v23;
      v25 = 8 * v26 + 8;
      v29 = __p;
      v30 = (8 * v26 - (v89 - __p));
      memcpy(v30, __p, v89 - __p);
      __p = v30;
      v90 = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v89 = v22;
      v25 = (v24 + 8);
    }

    v89 = v25;
  }

  if (*(v1 + 32) == 1)
  {
    v87 = "hot_shard_size";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v31 = xpc_int64_create(*(v1 + 24));
    v32 = v31;
    v33 = v89;
    if (v89 >= v90)
    {
      v35 = (v89 - __p) >> 3;
      if ((v35 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v36 = (v90 - __p) >> 2;
      if (v36 <= v35 + 1)
      {
        v36 = v35 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (v37)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v37);
      }

      *(8 * v35) = v32;
      v34 = 8 * v35 + 8;
      v38 = __p;
      v39 = (8 * v35 - (v89 - __p));
      memcpy(v39, __p, v89 - __p);
      __p = v39;
      v90 = 0;
      if (v38)
      {
        operator delete(v38);
      }
    }

    else
    {
      *v89 = v31;
      v34 = (v33 + 8);
    }

    v89 = v34;
  }

  if (*(v1 + 48) == 1)
  {
    v87 = "cold_shard_file_count";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v40 = xpc_int64_create(*(v1 + 40));
    v41 = v40;
    v42 = v89;
    if (v89 >= v90)
    {
      v44 = (v89 - __p) >> 3;
      if ((v44 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v45 = (v90 - __p) >> 2;
      if (v45 <= v44 + 1)
      {
        v45 = v44 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v46 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v45;
      }

      if (v46)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v46);
      }

      *(8 * v44) = v41;
      v43 = 8 * v44 + 8;
      v47 = __p;
      v48 = (8 * v44 - (v89 - __p));
      memcpy(v48, __p, v89 - __p);
      __p = v48;
      v90 = 0;
      if (v47)
      {
        operator delete(v47);
      }
    }

    else
    {
      *v89 = v40;
      v43 = (v42 + 8);
    }

    v89 = v43;
  }

  if (*(v1 + 64) == 1)
  {
    v87 = "cold_shard_total_size";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v49 = xpc_int64_create(*(v1 + 56));
    v50 = v49;
    v51 = v89;
    if (v89 >= v90)
    {
      v53 = (v89 - __p) >> 3;
      if ((v53 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v54 = (v90 - __p) >> 2;
      if (v54 <= v53 + 1)
      {
        v54 = v53 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v55 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v54;
      }

      if (v55)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v55);
      }

      *(8 * v53) = v50;
      v52 = 8 * v53 + 8;
      v56 = __p;
      v57 = (8 * v53 - (v89 - __p));
      memcpy(v57, __p, v89 - __p);
      __p = v57;
      v90 = 0;
      if (v56)
      {
        operator delete(v56);
      }
    }

    else
    {
      *v89 = v49;
      v52 = (v51 + 8);
    }

    v89 = v52;
  }

  if (*(v1 + 76) == 1)
  {
    v87 = "elapsed_ms";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v58 = xpc_double_create(*(v1 + 72));
    v59 = v58;
    v60 = v89;
    if (v89 >= v90)
    {
      v62 = (v89 - __p) >> 3;
      if ((v62 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v63 = (v90 - __p) >> 2;
      if (v63 <= v62 + 1)
      {
        v63 = v62 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v64 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = v63;
      }

      if (v64)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v64);
      }

      *(8 * v62) = v59;
      v61 = 8 * v62 + 8;
      v65 = __p;
      v66 = (8 * v62 - (v89 - __p));
      memcpy(v66, __p, v89 - __p);
      __p = v66;
      v90 = 0;
      if (v65)
      {
        operator delete(v65);
      }
    }

    else
    {
      *v89 = v58;
      v61 = (v60 + 8);
    }

    v89 = v61;
  }

  if (*(v1 + 88) == 1)
  {
    v87 = "extra_hot_shard_corrupt_count";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v67 = xpc_int64_create(*(v1 + 80));
    v68 = v67;
    v69 = v89;
    if (v89 >= v90)
    {
      v71 = (v89 - __p) >> 3;
      if ((v71 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v72 = (v90 - __p) >> 2;
      if (v72 <= v71 + 1)
      {
        v72 = v71 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v73 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v72;
      }

      if (v73)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v73);
      }

      *(8 * v71) = v68;
      v70 = 8 * v71 + 8;
      v74 = __p;
      v75 = (8 * v71 - (v89 - __p));
      memcpy(v75, __p, v89 - __p);
      __p = v75;
      v90 = 0;
      if (v74)
      {
        operator delete(v74);
      }
    }

    else
    {
      *v89 = v67;
      v70 = (v69 + 8);
    }

    v89 = v70;
  }

  if (*(v1 + 104) != 1)
  {
    goto LABEL_132;
  }

  v87 = "extra_hot_shard_cooled_count";
  std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
  v76 = xpc_int64_create(*(v1 + 96));
  v77 = v76;
  v78 = v89;
  if (v89 >= v90)
  {
    v80 = (v89 - __p) >> 3;
    if (!((v80 + 1) >> 61))
    {
      v81 = (v90 - __p) >> 2;
      if (v81 <= v80 + 1)
      {
        v81 = v80 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v82 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v82 = v81;
      }

      if (v82)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v82);
      }

      *(8 * v80) = v77;
      v79 = 8 * v80 + 8;
      v83 = __p;
      v84 = (8 * v80 - (v89 - __p));
      memcpy(v84, __p, v89 - __p);
      __p = v84;
      v90 = 0;
      if (v83)
      {
        operator delete(v83);
      }

      goto LABEL_131;
    }

LABEL_137:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  *v89 = v76;
  v79 = (v78 + 8);
LABEL_131:
  v89 = v79;
LABEL_132:
  if (__p)
  {
    operator delete(__p);
  }

  if (v91[0])
  {
    operator delete(v91[0]);
  }

  return v85;
}

void __destroy_helper_block_8_32c48_ZTSNSt3__110shared_ptrIN9analytics9OpenEventEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_8_32c48_ZTSNSt3__110shared_ptrIN9analytics9OpenEventEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<analytics::OpenEvent  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C691FEF0);
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::OpenEvent  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__shared_ptr_emplace<analytics::anonymous namespace::CoreAnalyticsLogger<analytics::OpenEvent>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427C378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void *analytics::ScopedLogger<analytics::OpenEvent>::~ScopedLogger(void *a1)
{
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = *a1;
  v4 = (v2.__d_.__rep_ - a1[1]) * 0.00001;
  if ((*(*a1 + 76) & 1) == 0)
  {
    *(v3 + 76) = 1;
  }

  v5 = v4;
  *(v3 + 72) = v5;
  v6 = a1[2];
  *a1 = 0;
  v11 = v3;
  (*(*v6 + 16))(v6, &v11);
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    MEMORY[0x1C691FEF0](v7, 0x1000C4027064493);
  }

  v8 = a1[3];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    MEMORY[0x1C691FEF0](v9, 0x1000C4027064493);
  }

  return a1;
}

void analytics::anonymous namespace::CoreAnalyticsLogger<analytics::HotShardCoolDownEvent>::logEvent(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v2 = analytics_send_event_lazy();
  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = (2 * (dword_1EBF46AEC < 4));
  v6 = os_log_type_enabled(v4, v5);
  if (v2)
  {
    if (v6)
    {
      *buf = 136315138;
      v10 = "com.apple.spotlight.textstore.HotShardCoolDown";
      v7 = "successfully logged event: %s";
LABEL_8:
      _os_log_impl(&dword_1C278D000, v4, v5, v7, buf, 0xCu);
    }
  }

  else if (v6)
  {
    *buf = 136315138;
    v10 = "com.apple.spotlight.textstore.HotShardCoolDown";
    v7 = "event logging disabled: %s";
    goto LABEL_8;
  }

  *__error() = v3;
  v8 = *MEMORY[0x1E69E9840];
}

xpc_object_t ___ZN9analytics12_GLOBAL__N_119CoreAnalyticsLoggerINS_21HotShardCoolDownEventEE8logEventENSt3__110unique_ptrIS2_NS4_14default_deleteIS2_EEEE_block_invoke(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 32);
  memset(v45, 0, sizeof(v45));
  __p = 0;
  v43 = 0;
  v44 = 0;
  if (*(v2 + 1) == 1)
  {
    v41 = "success";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    xpc_BOOL_create(*v2);
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 8) == 1)
  {
    v41 = "error_code";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    xpc_int64_create(*(v2 + 4));
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 24) == 1)
  {
    v41 = "hot_shard_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v3 = xpc_int64_create(*(v2 + 16));
    v4 = v3;
    if (v44)
    {
      MEMORY[0] = v3;
      v1 = 8;
    }

    else
    {
      v5 = __p;
      v6 = -__p;
      v7 = -__p >> 3;
      v8 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v9 = v44 - __p;
      if ((v44 - __p) >> 2 > v8)
      {
        v8 = v9 >> 2;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v8;
      }

      if (v10)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v10);
      }

      v11 = (8 * v7);
      *v11 = v4;
      v1 = (v11 + 1);
      memcpy(0, v5, v6);
      __p = 0;
      v44 = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    v43 = v1;
  }

  if (*(v2 + 40) == 1)
  {
    v41 = "hot_shard_size";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v12 = xpc_int64_create(*(v2 + 32));
    v13 = v12;
    if (v1 >= v44)
    {
      v14 = __p;
      v15 = v1 - __p;
      v16 = (v1 - __p) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v18 = v44 - __p;
      if ((v44 - __p) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v19);
      }

      v20 = (8 * v16);
      *v20 = v13;
      v1 = (v20 + 1);
      memcpy(0, v14, v15);
      __p = 0;
      v44 = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v1 = v12;
      v1 += 8;
    }

    v43 = v1;
  }

  if (*(v2 + 56) == 1)
  {
    v41 = "cold_shard_size";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v21 = xpc_int64_create(*(v2 + 48));
    v22 = v21;
    if (v1 >= v44)
    {
      v23 = __p;
      v24 = v1 - __p;
      v25 = (v1 - __p) >> 3;
      v26 = v25 + 1;
      if ((v25 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v27 = v44 - __p;
      if ((v44 - __p) >> 2 > v26)
      {
        v26 = v27 >> 2;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v28);
      }

      v29 = (8 * v25);
      *v29 = v22;
      v1 = (v29 + 1);
      memcpy(0, v23, v24);
      __p = 0;
      v44 = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v1 = v21;
      v1 += 8;
    }

    v43 = v1;
  }

  if (*(v2 + 68) != 1)
  {
    goto LABEL_61;
  }

  v41 = "elapsed_ms";
  std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
  v30 = xpc_double_create(*(v2 + 64));
  v31 = v30;
  if (v1 >= v44)
  {
    v33 = __p;
    v34 = v1 - __p;
    v35 = (v1 - __p) >> 3;
    v36 = v35 + 1;
    if (!((v35 + 1) >> 61))
    {
      v37 = v44 - __p;
      if ((v44 - __p) >> 2 > v36)
      {
        v36 = v37 >> 2;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v38);
      }

      *(8 * v35) = v31;
      v32 = 8 * v35 + 8;
      memcpy(0, v33, v34);
      __p = 0;
      v44 = 0;
      if (v33)
      {
        operator delete(v33);
      }

      goto LABEL_60;
    }

LABEL_66:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  *v1 = v30;
  v32 = v1 + 8;
LABEL_60:
  v43 = v32;
LABEL_61:
  if (__p)
  {
    operator delete(__p);
  }

  if (v45[0])
  {
    operator delete(v45[0]);
  }

  return v39;
}

void __destroy_helper_block_8_32c61_ZTSNSt3__110shared_ptrIN9analytics21HotShardCoolDownEventEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_8_32c61_ZTSNSt3__110shared_ptrIN9analytics21HotShardCoolDownEventEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<analytics::HotShardCoolDownEvent  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C691FEF0);
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::HotShardCoolDownEvent  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__shared_ptr_emplace<analytics::anonymous namespace::CoreAnalyticsLogger<analytics::HotShardCoolDownEvent>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427C440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void *analytics::ScopedLogger<analytics::DeleteEvent>::~ScopedLogger(void *a1)
{
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = *a1;
  v4 = (v2.__d_.__rep_ - a1[1]) * 0.00001;
  if ((*(*a1 + 68) & 1) == 0)
  {
    *(v3 + 68) = 1;
  }

  v5 = v4;
  *(v3 + 64) = v5;
  v6 = a1[2];
  *a1 = 0;
  v11 = v3;
  (*(*v6 + 16))(v6, &v11);
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    MEMORY[0x1C691FEF0](v7, 0x1000C4073594BB7);
  }

  v8 = a1[3];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    MEMORY[0x1C691FEF0](v9, 0x1000C4073594BB7);
  }

  return a1;
}

uint64_t SISetLogging(uint64_t result, int a2)
{
  if (result <= 0x15)
  {
    gSILogLevels[result] = a2;
  }

  return result;
}

uint64_t __isDebugVerboseMode_block_invoke()
{
  result = _os_feature_enabled_impl();
  isDebugVerboseMode_debugEnabled = result;
  return result;
}

BOOL trie_level_info_eq(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *a1 == *a2 && *(a1 + 4) == *(a2 + 4) && (v2 = *(a1 + 16), v2 == *(a2 + 16)))
  {
    return memcmp(*(a1 + 8), *(a2 + 8), v2) == 0;
  }

  else
  {
    return 0;
  }
}

BOOL bt_changePrefix(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v27 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", a3, "indexDirectory");
  v8 = fd_rename(*(a1 + 4576), __str);
  snprintf(__str, 0x400uLL, "%s%s", a3, "indexCompactDirectory");
  if (v8)
  {
    snprintf(__str, 0x400uLL, "%s%s", a3, "indexArrays");
    result = 0;
    goto LABEL_9;
  }

  v10 = fd_rename(*(a1 + 112), __str);
  snprintf(__str, 0x400uLL, "%s%s", a3, "indexArrays");
  if (v10)
  {
    result = 0;
    goto LABEL_9;
  }

  v11 = fd_rename(*(a1 + 376), __str);
  result = v11 == 0;
  if (!v11 && a4)
  {
    bzero(&__from, 0x400uLL);
    v12 = *(a1 + 152);
    memset(&v24, 0, sizeof(v24));
    if (fstat(v12, &v24))
    {
LABEL_8:
      result = 1;
      goto LABEL_9;
    }

    v14 = open(".", 4);
    if (MEMORY[0x1C6921200](v12))
    {
      if ((v14 & 0x80000000) == 0)
      {
        close(v14);
      }

      goto LABEL_8;
    }

    snprintf(&__from, 0x400uLL, "%s%s", a2, "shadowIndexArrays");
    snprintf(__str, 0x400uLL, "%s%s", a3, "shadowIndexArrays");
    rename(&__from, __str, v15);
    v17 = v16;
    snprintf(&__from, 0x400uLL, "%s%s", a2, "shadowIndexDirectory");
    snprintf(__str, 0x400uLL, "%s%s", a3, "shadowIndexDirectory");
    if (v17)
    {
      snprintf(&__from, 0x400uLL, "%s%s", a2, "shadowIndexCompactDirectory");
      snprintf(__str, 0x400uLL, "%s%s", a3, "shadowIndexCompactDirectory");
    }

    else
    {
      rename(&__from, __str, v18);
      v20 = v19;
      snprintf(&__from, 0x400uLL, "%s%s", a2, "shadowIndexCompactDirectory");
      snprintf(__str, 0x400uLL, "%s%s", a3, "shadowIndexCompactDirectory");
      if (!v20)
      {
        rename(&__from, __str, v21);
        v22 = v23 == 0;
        goto LABEL_17;
      }
    }

    v22 = 0;
LABEL_17:
    MEMORY[0x1C6921200](v14);
    if ((v14 & 0x80000000) == 0)
    {
      close(v14);
    }

    result = v22;
  }

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bt_openTrie(uint64_t a1, int a2, const char *a3, int a4, int a5, int a6, int a7, void *a8)
{
  v127 = *MEMORY[0x1E69E9840];
  v15 = a1 + 4096;
  memset(&v116, 0, sizeof(v116));
  bzero(__str, 0x400uLL);
  *(a1 + 4584) = a4;
  *(a1 + 152) = a2;
  if (!*(a1 + 4544))
  {
    v16 = *MEMORY[0x1E695E480];
    *(v15 + 440) = xmmword_1C2BFA3A0;
    Mutable = CFBitVectorCreateMutable(v16, 0x2000);
    *(a1 + 4552) = Mutable;
    CFBitVectorSetCount(Mutable, 0x2000);
    if (!*(a1 + 4552))
    {
      v103 = __si_assert_copy_extra_2708(0);
      v104 = v103;
      v105 = "";
      if (v103)
      {
        v105 = v103;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 47, "bv->_cfbv", v105);
      free(v104);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  v114 = v15;
  v18 = 0;
  if (a5)
  {
    v19 = 0;
  }

  else
  {
    v19 = 514;
  }

  if (a6)
  {
    if ((a5 & 1) == 0)
    {
      v109 = __si_assert_copy_extra_2708(0);
      v110 = v109;
      v111 = "";
      if (v109)
      {
        v111 = v109;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 341, "0", v111);
      free(v110);
      if (__valid_fs(-1))
      {
        v112 = 2989;
      }

      else
      {
        v112 = 3072;
      }

      *v112 = -559038737;
      abort();
    }

    v18 = a4 == 0;
  }

  v115 = *(a1 + 148);
  if (v115)
  {
    v20 = "indexDirectory";
    if (v18)
    {
      v20 = "shadowIndexDirectory";
    }

    snprintf(__str, 0x400uLL, "%s%s", a3, v20);
    v21 = fd_create_protected(a2, __str, v19, 0);
    *(a1 + 4576) = v21;
    if (v21 || (a5 & 1) != 0)
    {
LABEL_18:
      if (v21)
      {
        goto LABEL_19;
      }

LABEL_45:
      v36 = *__error();
      v43 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v45 = *__error();
        *buf = 136315906;
        v118 = "bt_openTrie";
        v119 = 1024;
        v120 = 410;
        v121 = 2080;
        *v122 = __str;
        *&v122[8] = 1024;
        *&v122[10] = v45;
        v40 = "%s:%d: open %s err: %d";
        goto LABEL_90;
      }

      goto LABEL_92;
    }

    if (*__error() == 13)
    {
      v22 = *__error();
      v23 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v118 = "bt_openTrie";
        v119 = 1024;
        v120 = 403;
        v121 = 2080;
        *v122 = __str;
        _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: open rdwr error tyring readonly %s", buf, 0x1Cu);
      }

      *__error() = v22;
      v21 = fd_create_protected(a2, __str, 0, 0);
      v19 = 0;
      *(a1 + 4576) = v21;
      a5 = 1;
      goto LABEL_18;
    }

    a5 = 0;
    v21 = *(a1 + 4576);
    if (!v21)
    {
      goto LABEL_45;
    }

LABEL_19:
    while (1)
    {
      v24 = fstatat(*(v21 + 11), v21[9], &v116, 2048);
      v25 = g_prot_error_callback;
      if (v24 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v27 = *(v21 + 10);
      v28 = __error();
      if (((*(v25 + 16))(v25, v27, *v28, 8) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    if (v24 == -1)
    {
LABEL_42:
      v36 = *__error();
      v43 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = *__error();
        *buf = 136315906;
        v118 = "bt_openTrie";
        v119 = 1024;
        v120 = 415;
        v121 = 1024;
        *v122 = v44;
        *&v122[4] = 2080;
        *&v122[6] = __str;
        v40 = "%s:%d: fstat err:%d %s";
LABEL_90:
        v41 = v43;
        v42 = 34;
        goto LABEL_91;
      }

LABEL_92:
      v55 = 0;
LABEL_93:
      v60 = 0;
LABEL_94:
      *__error() = v36;
      goto LABEL_95;
    }

    v35 = 1028 * *(a1 + 148);
    if (v116.st_size > v35 || v116.st_size < 1028 * *(a1 + 144))
    {
      v36 = *__error();
      v37 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      v38 = *(a1 + 148);
      v39 = 1028 * *(a1 + 144);
      *buf = 136316418;
      v118 = "bt_openTrie";
      v119 = 1024;
      v120 = 423;
      v121 = 1024;
      *v122 = v116.st_size;
      *&v122[4] = 1024;
      *&v122[6] = v39;
      *&v122[10] = 1024;
      *&v122[12] = 1028 * v38;
      *&v122[16] = 2080;
      *&v122[18] = __str;
      v40 = "%s:%d: FAT: bad file size:%d (expected %d - %d) %s";
      v41 = v37;
      v42 = 46;
LABEL_91:
      _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, v40, buf, v42);
      goto LABEL_92;
    }

    if ((a5 & 1) != 0 || fd_truncate(*(a1 + 4576), v35) != -1)
    {
      if (!*(a1 + 8))
      {
        v85 = 1028 * *(a1 + 148);
        v86 = fd_mmap(*(a1 + 4576));
        *(a1 + 8) = v86;
        if (v86 == -1)
        {
          v36 = *__error();
          v43 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_92;
          }

          v90 = *__error();
          v91 = 1028 * *(a1 + 148);
          *buf = 136315906;
          v118 = "bt_openTrie";
          v119 = 1024;
          v120 = 436;
          v121 = 1024;
          *v122 = v90;
          *&v122[4] = 2048;
          *&v122[6] = v91;
          v40 = "%s:%d: fd_mmap err: %d, %ld";
          goto LABEL_90;
        }

        if (a5)
        {
          madvise(v86, 1028 * *(a1 + 148), 2);
          a5 = 1;
        }
      }

      goto LABEL_69;
    }

    v36 = *__error();
    v49 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_92;
    }

    v87 = *__error();
    *buf = 136315650;
    v118 = "bt_openTrie";
    v119 = 1024;
    v120 = 429;
    v121 = 1024;
    *v122 = v87;
    v40 = "%s:%d: ftruncate err: %d";
LABEL_61:
    v41 = v49;
    v42 = 24;
    goto LABEL_91;
  }

  *a1 = 11;
  if (a5)
  {
    v29 = 0;
  }

  else
  {
    v29 = 1538;
  }

  *(a1 + 144) = 0x800000001;
  v30 = "indexDirectory";
  if (v18)
  {
    v30 = "shadowIndexDirectory";
  }

  snprintf(__str, 0x400uLL, "%s%s", a3, v30);
  v31 = fd_create_protected(a2, __str, v29, 0);
  *(a1 + 4576) = v31;
  if (!v31 && (a5 & 1) == 0)
  {
    if (*__error() == 13)
    {
      v32 = *__error();
      v33 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v118 = "bt_openTrie";
        v119 = 1024;
        v120 = 366;
        v121 = 2080;
        *v122 = __str;
        _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: open rdwr error tyring readonly %s", buf, 0x1Cu);
      }

      *__error() = v32;
      v34 = fd_create_protected(a2, __str, 0, 0);
      *(a1 + 4576) = v34;
      if (!v34)
      {
LABEL_52:
        v36 = *__error();
        v43 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v46 = *__error();
          *buf = 136315906;
          v118 = "bt_openTrie";
          v119 = 1024;
          v120 = 373;
          v121 = 2080;
          *v122 = __str;
          *&v122[8] = 1024;
          *&v122[10] = v46;
          v40 = "%s:%d: open %s err: %d";
          goto LABEL_90;
        }

        goto LABEL_92;
      }

LABEL_50:
      v19 = 0;
      a5 = 1;
      if (*(a1 + 8))
      {
        goto LABEL_69;
      }

      goto LABEL_56;
    }

    v31 = *(a1 + 4576);
  }

  if (!v31)
  {
    goto LABEL_52;
  }

  if (a5)
  {
    goto LABEL_50;
  }

  if (fd_truncate(v31, 1028 * *(a1 + 148)) == -1)
  {
    v36 = *__error();
    v49 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_92;
    }

    v50 = *__error();
    *buf = 136315650;
    v118 = "bt_openTrie";
    v119 = 1024;
    v120 = 379;
    v121 = 1024;
    *v122 = v50;
    v40 = "%s:%d: ftruncate err: %d";
    goto LABEL_61;
  }

  a5 = 0;
  v19 = 1538;
  if (*(a1 + 8))
  {
    goto LABEL_69;
  }

LABEL_56:
  v47 = 1028 * *(a1 + 148);
  v48 = fd_mmap(*(a1 + 4576));
  *(a1 + 8) = v48;
  if (v48 == -1)
  {
    v36 = *__error();
    v43 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v51 = *__error();
      v52 = 1028 * *(a1 + 148);
      *buf = 136315906;
      v118 = "bt_openTrie";
      v119 = 1024;
      v120 = 388;
      v121 = 1024;
      *v122 = v51;
      *&v122[4] = 2048;
      *&v122[6] = v52;
      v40 = "%s:%d: fd_mmap err: %d, %ld";
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  if (a5)
  {
    madvise(v48, 1028 * *(a1 + 148), 2);
    a5 = 1;
  }

  else
  {
    bzero(v48, 0x808uLL);
    a5 = 0;
  }

LABEL_69:
  v53 = "indexCompactDirectory";
  if (v18)
  {
    v53 = "shadowIndexCompactDirectory";
  }

  snprintf(__str, 0x400uLL, "%s%s", a3, v53);
  v54 = fd_create_protected(a2, __str, v19, 0);
  v55 = v54;
  if ((a5 & 1) == 0 && !v54)
  {
    if (*__error() != 13)
    {
      goto LABEL_88;
    }

    v56 = *__error();
    v57 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v118 = "bt_openTrie";
      v119 = 1024;
      v120 = 449;
      v121 = 2080;
      *v122 = __str;
      _os_log_error_impl(&dword_1C278D000, v57, OS_LOG_TYPE_ERROR, "%s:%d: open rdwr error tyring readonly %s", buf, 0x1Cu);
    }

    *__error() = v56;
    v55 = fd_create_protected(a2, __str, 0, 0);
    v19 = 0;
    a5 = 1;
  }

  if (!v55)
  {
LABEL_88:
    v36 = *__error();
    v43 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v66 = *__error();
      *buf = 136315906;
      v118 = "bt_openTrie";
      v119 = 1024;
      v120 = 455;
      v121 = 2080;
      *v122 = __str;
      *&v122[8] = 1024;
      *&v122[10] = v66;
      v40 = "%s:%d: open %s err: %d";
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  v58 = "indexArrays";
  if (v18)
  {
    v58 = "shadowIndexArrays";
  }

  snprintf(__str, 0x400uLL, "%s%s", a3, v58);
  v59 = fd_create_protected(a2, __str, v19, 0);
  if (!v59)
  {
    v36 = *__error();
    v70 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = *__error();
      *buf = 136315906;
      v118 = "bt_openTrie";
      v119 = 1024;
      v120 = 465;
      v121 = 2080;
      *v122 = __str;
      *&v122[8] = 1024;
      *&v122[10] = v71;
      _os_log_error_impl(&dword_1C278D000, v70, OS_LOG_TYPE_ERROR, "%s:%d: open %s err: %d", buf, 0x22u);
    }

    goto LABEL_93;
  }

  v60 = v59;
  if (v115)
  {
    while (1)
    {
      v61 = fstatat(*(v55 + 11), v55[9], &v116, 2048);
      v62 = g_prot_error_callback;
      if (v61 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v64 = *(v55 + 10);
      v65 = __error();
      if (((*(v62 + 16))(v62, v64, *v65, 8) & 1) == 0)
      {
        goto LABEL_117;
      }
    }

    if (v61 == -1)
    {
LABEL_117:
      v36 = *__error();
      v82 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_94;
      }

      v83 = *__error();
      v84 = "indexCompactDirectory";
      if (v18)
      {
        v84 = "shadowIndexCompactDirectory";
      }

      *buf = 136316162;
      v118 = "bt_openTrie";
      v119 = 1024;
      v120 = 475;
      v121 = 1024;
      *v122 = v83;
      *&v122[4] = 2080;
      *&v122[6] = a3;
      *&v122[14] = 2080;
      *&v122[16] = v84;
      v79 = "%s:%d: fstat err:%d %s%s";
    }

    else
    {
      if (v116.st_size > *(a1 + 40) || (v75 = *(a1 + 32), v116.st_size < v75) && v75 >= 9)
      {
        v36 = *__error();
        v76 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_94;
        }

        v77 = *(a1 + 32);
        v78 = *(a1 + 40);
        *buf = 136316674;
        v118 = "bt_openTrie";
        v119 = 1024;
        v120 = 479;
        v121 = 1024;
        *v122 = v116.st_size;
        *&v122[4] = 1024;
        *&v122[6] = v77;
        *&v122[10] = 1024;
        *&v122[12] = v78;
        *&v122[16] = 2080;
        *&v122[18] = a3;
        *&v122[26] = 2080;
        *v123 = "indexCompactDirectory";
        v79 = "%s:%d: COMP: bad file size:%d (expected %d - %d) %s%s";
        v80 = v76;
        v81 = 56;
        goto LABEL_122;
      }

      if (fd_stat(v60, &v116) != -1)
      {
        v92 = *(a1 + 384);
        if (v116.st_size > v92 && !((v116.st_size - v92) >> 17))
        {
          v93 = *__error();
          v94 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            v107 = *(a1 + 384);
            v106 = *(a1 + 392);
            v108 = "indexArrays";
            if (v18)
            {
              v108 = "shadowIndexArrays";
            }

            *buf = 136316674;
            v118 = "bt_openTrie";
            v119 = 1024;
            v120 = 490;
            v121 = 2048;
            *v122 = v116.st_size;
            *&v122[8] = 2048;
            *&v122[10] = v106;
            *&v122[18] = 2048;
            *&v122[20] = v107;
            *v123 = 2080;
            *&v123[2] = a3;
            v124 = 2080;
            v125 = v108;
            _os_log_error_impl(&dword_1C278D000, v94, OS_LOG_TYPE_ERROR, "%s:%d: FLAT: file size:%lld (expected %lld - %lld) %s%s", buf, 0x44u);
          }

          *__error() = v93;
          goto LABEL_139;
        }

        if (v116.st_size <= v92)
        {
          v97 = *(a1 + 392);
          if (v116.st_size >= v97 || v97 < 65)
          {
LABEL_139:
            if (a5)
            {
              v72 = 2;
            }

            else
            {
              v72 = 0;
            }

            *(a1 + 112) = v55;
            goto LABEL_105;
          }
        }

        v36 = *__error();
        v98 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_94;
        }

        v100 = *(a1 + 384);
        v99 = *(a1 + 392);
        v101 = "indexArrays";
        if (v18)
        {
          v101 = "shadowIndexArrays";
        }

        *buf = 136316674;
        v118 = "bt_openTrie";
        v119 = 1024;
        v120 = 492;
        v121 = 2048;
        *v122 = v116.st_size;
        *&v122[8] = 2048;
        *&v122[10] = v99;
        *&v122[18] = 2048;
        *&v122[20] = v100;
        *v123 = 2080;
        *&v123[2] = a3;
        v124 = 2080;
        v125 = v101;
        v79 = "%s:%d: FLAT: bad file size:%lld (expected %lld - %lld) %s%s";
        v80 = v98;
        v81 = 68;
LABEL_122:
        _os_log_error_impl(&dword_1C278D000, v80, OS_LOG_TYPE_ERROR, v79, buf, v81);
        goto LABEL_94;
      }

      v36 = *__error();
      v82 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_94;
      }

      v95 = *__error();
      v96 = "indexArrays";
      if (v18)
      {
        v96 = "shadowIndexArrays";
      }

      *buf = 136316162;
      v118 = "bt_openTrie";
      v119 = 1024;
      v120 = 484;
      v121 = 1024;
      *v122 = v95;
      *&v122[4] = 2080;
      *&v122[6] = a3;
      *&v122[14] = 2080;
      *&v122[16] = v96;
      v79 = "%s:%d: fstat err:%d %s%s";
    }

    v80 = v82;
    v81 = 44;
    goto LABEL_122;
  }

  *(v114 + 492) = 1;
  if (a5)
  {
    v72 = 2;
  }

  else
  {
    v72 = 0;
  }

  *(a1 + 112) = v55;
  *(a1 + 24) = 38;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 32) = xmmword_1C2BFA3B0;
  *(a1 + 48) = 0u;
LABEL_105:
  *(a1 + 120) = v72;
  *(a1 + 124) = 0;
  if ((*(a1 + 16) + 1) <= 1)
  {
    v73 = *(a1 + 40);
    v74 = fd_mmap(v55);
    *(a1 + 16) = v74;
    madvise(v74, *(a1 + 40), *(a1 + 120));
  }

  if ((a5 & 1) == 0 && fd_truncate(*(a1 + 112), *(a1 + 40)) == -1)
  {
    v88 = *__error();
    v89 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      v102 = *__error();
      *buf = 136315650;
      v118 = "initMF";
      v119 = 1024;
      v120 = 151;
      v121 = 1024;
      *v122 = v102;
      _os_log_error_impl(&dword_1C278D000, v89, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate err: %d", buf, 0x18u);
    }

    v55 = 0;
    *__error() = v88;
  }

  else
  {
    if (storageInit(a1 + 160, 0x10000, 0x40uLL, v60, v115 == 0, 2, a5, a7, a8))
    {
      result = 1;
      goto LABEL_98;
    }

    v55 = 0;
    v60 = 0;
  }

LABEL_95:
  fd_release(v55);
  fd_release(v60);
  v67 = *(a1 + 8);
  if (v67 + 1 >= 2)
  {
    munmap(v67, 1028 * *(a1 + 148));
  }

  result = 0;
  *(a1 + 8) = 0;
LABEL_98:
  v69 = *MEMORY[0x1E69E9840];
  return result;
}

char *__si_assert_copy_extra_2708(_DWORD *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  bzero(v13, 0x400uLL);
  if (!a1 || (v12 = 0, v2 = _fd_acquire_fd(a1, &v12), v2 == -1) || (v3 = v13, v4 = v2, v5 = fcntl(v2, 50, v13), v6 = v13[0], _fd_release_fd(a1, v4, 0, v12), v5 < 0) || !v6)
  {
    v7 = getcwd(v13, 0x400uLL);
    if (v7)
    {
      v3 = v7;
    }

    else
    {
      v3 = "";
    }
  }

  v12 = 0;
  v8 = pthread_getspecific(__THREAD_STR_DATA_KEY);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = "";
  }

  asprintf(&v12, "%s %s", v3, v9);
  result = v12;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bt_recoverTrie(uint64_t a1, const char *a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  bzero(v12, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", a2, "indexDirectory");
  snprintf(v12, 0x400uLL, "%s%s", a2, "shadowIndexDirectory");
  memset(&v14, 0, sizeof(v14));
  if ((fstatat(a1, __str, &v14, 0) || v14.st_mode != 256) && (copyFileFallback(a1, v12, a1, __str, a3, 1, 1) & 1) == 0)
  {
    if (!*a3)
    {
      v8 = *__error();
      v9 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14.st_dev = 136315650;
        *&v14.st_mode = "bt_recoverTrie";
        WORD2(v14.st_ino) = 1024;
        *(&v14.st_ino + 6) = 531;
        HIWORD(v14.st_uid) = 2080;
        *&v14.st_gid = __str;
        goto LABEL_23;
      }

LABEL_20:
      v10 = __error();
      result = 0;
      *v10 = v8;
      goto LABEL_21;
    }

LABEL_18:
    result = 0;
    goto LABEL_21;
  }

  snprintf(__str, 0x400uLL, "%s%s", a2, "indexCompactDirectory");
  snprintf(v12, 0x400uLL, "%s%s", a2, "shadowIndexCompactDirectory");
  memset(&v14, 0, sizeof(v14));
  if ((fstatat(a1, __str, &v14, 0) || v14.st_mode != 256) && (copyFileFallback(a1, v12, a1, __str, a3, 1, 1) & 1) == 0)
  {
    if (!*a3)
    {
      v8 = *__error();
      v9 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14.st_dev = 136315650;
        *&v14.st_mode = "bt_recoverTrie";
        WORD2(v14.st_ino) = 1024;
        *(&v14.st_ino + 6) = 537;
        HIWORD(v14.st_uid) = 2080;
        *&v14.st_gid = __str;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  snprintf(__str, 0x400uLL, "%s%s", a2, "indexArrays");
  snprintf(v12, 0x400uLL, "%s%s", a2, "shadowIndexArrays");
  memset(&v14, 0, sizeof(v14));
  if (fstatat(a1, __str, &v14, 0) || v14.st_mode != 256)
  {
    v7 = copyFileFallback(a1, v12, a1, __str, a3, 1, 1);
    result = 1;
    if (v7)
    {
      goto LABEL_21;
    }

    if (!*a3)
    {
      v8 = *__error();
      v9 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14.st_dev = 136315650;
        *&v14.st_mode = "bt_recoverTrie";
        WORD2(v14.st_ino) = 1024;
        *(&v14.st_ino + 6) = 543;
        HIWORD(v14.st_uid) = 2080;
        *&v14.st_gid = __str;
LABEL_23:
        _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: Could not recover %s", &v14, 0x1Cu);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  result = 1;
LABEL_21:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}